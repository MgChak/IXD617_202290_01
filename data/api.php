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
            
        // case "user_by_id":
        //     return makeQuery($conn, "SELECT * FROM `track_202290_users` WHERE `id`=?", $params);
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
            JOIN (
                SELECT * FROM `track_202290_locations`
            ) l
            ON a.id = l.color_id
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