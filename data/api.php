<?php

function makeConn() {
    include_once "auth.php";
    try {
        $conn = new PDO(...Auth());
        $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
        return $conn;
    } catch (PDOException $e) {
        die('{"error":"'.$e->getMessage().'"}');
    }
}


function fetchAll($result) {
    $a = [];
    while($row = $result->fetch(\PDO::FETCH_OBJ)) $a[] = $row;
    return $a;
}



function makeQuery($conn,$prep,$params,$makeResults=true) {
    try {
        if (count($params)) {
            $stmt = $conn->prepare($prep);
            $stmt->execute($params);
        } else {
            $stmt = $conn->query($prep);
        }

        $result = $makeResults ? fetchAll($stmt) : [];

        return [
            "result"=>$result
        ];
    } catch (PDOException $e) {
        return ["error"=>"Query Failed: ".$e->getMessage()];
    }
}

function makeStatement($data) {
    $conn = makeConn();
    $type = @$data->type;
    $params = @$data->params;

    switch($type) {
        // case "users_all":
        //     return makeQuery($conn, "SELECT * FROM `track_202290_users`", $params);
        // case "animals_all":
        //     return makeQuery($conn, "SELECT * FROM `track_202290_colors`", $params);
        // case "locations_all":
        //     return makeQuery($conn, "SELECT * FROM `track_202290_locations`", $params);
            
        case "user_by_id":
            return makeQuery($conn, "SELECT `id`,`name`,`email`,`username`,`img`,`date_create`  FROM `track_202290_users` WHERE `id`=?", $params);
        // case "color_by_id":
        //     return makeQuery($conn, "SELECT * FROM `track_202290_colors` WHERE `id`=?", $params);
        // case "cat_by_id":
        //     return makeQuery($conn, "SELECT * FROM `track_202290_locations` WHERE `id`=?", $params);

        
        // case "colors_by_user_id":
        //     return makeQuery($conn, "SELECT  * FROM `track_202290_colors` WHERE `user_id`=?", $params);
        // case "cats_by_color_id":
        //     return makeQuery($conn, "SELECT * FROM `track_202290_locations` WHERE `color_id`=?", $params);
            
        case "all_locations_by_user_id": 
            return makeQuery($conn, "SELECT *
            FROM `track_202290_colors` a
            LEFT JOIN  (
                SELECT * FROM `track_202290_locations`
            ) l
            ON a.cid = l.color_id
            WHERE `user_id`=?
            ORDER BY l.date_create
            ", $params);
        
        // case "locations_list_by_color_id_with_color_init": 
        //     return makeQuery($conn, "SELECT * , l.id
        //     FROM `track_202290_locations` l
        //     JOIN (
        //         SELECT * FROM `track_202290_colors`
        //     ) c
        //     ON l.color_id = c.id
        //     WHERE `color_id`=?
        //     ORDER BY l.date_create
        //     ", $params);

        // case "one_location_by_color_id_with_color_init": 
        //     return makeQuery($conn, "SELECT * , l.id
        //     FROM `track_202290_locations` l
        //     JOIN (
        //         SELECT * FROM `track_202290_colors`
        //     ) c
        //     ON l.color_id = c.id
        //     WHERE l.id=?
        //     ", $params);
    
            
        // case "count_colors_by_user_id":
        //     return makeQuery($conn, "SELECT COUNT(*) FROM `track_202290_colors` WHERE `user_id`=?", $params);  
        // case "count_cats_by_user_id":
        //     return makeQuery($conn, "SELECT COUNT(*) FROM `track_202290_locations` WHERE `user_id`=?", $params);  

        

        case "check_signin":
            return makeQuery($conn, "SELECT `id` FROM `track_202290_users` WHERE `username`=? AND `password` = md5(?)", $params);





        case "signup":
            return makeQuery($conn, "INSERT INTO `track_202290_users` (`name`, `username`, `password`, `email`, `img`, `date_create`) VALUES(?,?,md5(?),?,?,NOW())", $params);
        
        /* UPDATE */
        case "update_animal":
            $result = makeQuery($conn,"UPDATE
            `track_202290_locations`
            SET
                `photo` = ?,
                `color_id` = ?,
                `friendly` = ?,
                `description` = ?
            WHERE `id` = ?
            ",$params,false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];


        case "update_color":
            $result = makeQuery($conn,"UPDATE
            `track_202290_colors`
            SET
                `color` = ?
            WHERE `cid` = ?
            ",$params,false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        case "update_user":
            $result = makeQuery($conn,"UPDATE
            `track_202290_users`
            SET
                `name` = ?
            WHERE `id` = ?
            ",$params,false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        case "update_password":
            $result = makeQuery($conn,"UPDATE
            `track_202290_users`
            SET
                `password` = md5(?)
            WHERE `id` = ?
            ",$params,false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];
        
        /* INSERT */
        case "insert_color":
            $result = makeQuery($conn, "INSERT INTO
            `track_202290_colors`
            (
                `user_id`,
                `color`,
                `img`,
                `date_create`
            )
            VALUES
            (
                ?,
                ?,
                'https://via.placeholder.com/400/?text=ANIMAL',
                NOW()
            )
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];
        
        /* DELETE */
        case "delete_color":
            $result = makeQuery($conn, "DELETE FROM
            `track_202290_colors`
            WHERE `cid` = ?
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        case "delete_locations_by_color":
            $result = makeQuery($conn, "DELETE FROM
            `track_202290_locations`
            WHERE `color_id` = ?
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        case "delete_locations_by_id":
            $result = makeQuery($conn, "DELETE FROM
            `track_202290_locations`
            WHERE `id` = ?
            ", $params, false);

            if (isset($result['error'])) return $result;
            return ["result"=>"Success"];

        default:
            return ["error"=>"No Matched Type"];          
    }
} 

$data = json_decode(file_get_Contents("php://input"));

die(
    json_encode(
        makeStatement($data),
        JSON_NUMERIC_CHECK
    )
);