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
        case "users_all":
            return makeQuery($conn, "SELECT * FROM `track_202290_users`", $params);
        case "animals_all":
            return makeQuery($conn, "SELECT * FROM `track_202290_colors`", $params);
        case "locations_all":
            return makeQuery($conn, "SELECT * FROM `track_202290_locations`", $params);
            
        case "user_by_id":
            return makeQuery($conn, "SELECT * FROM `track_202290_users` WHERE `id`=?", $params);
        case "color_by_id":
            return makeQuery($conn, "SELECT * FROM `track_202290_colors` WHERE `id`=?", $params);
        case "cat_by_id":
            return makeQuery($conn, "SELECT * FROM `track_202290_locations` WHERE `id`=?", $params);

        
        case "colors_by_user_id":
            return makeQuery($conn, "SELECT  * FROM `track_202290_colors` WHERE `user_id`=?", $params);
        case "cats_colorId_date_by_user_id":
            return makeQuery($conn, "SELECT `color_id`,`date_create` FROM `track_202290_locations` WHERE `user_id`=? ORDER BY `date_create`" ,$params);
        case "cats_by_color_id":
            return makeQuery($conn, "SELECT * FROM `track_202290_locations` WHERE `color_id`=?", $params);
            
        //join test
            
            
        case "count_colors_by_user_id":
            return makeQuery($conn, "SELECT COUNT(*) FROM `track_202290_colors` WHERE `user_id`=?", $params);  
        case "count_cats_by_user_id":
            return makeQuery($conn, "SELECT COUNT(*) FROM `track_202290_locations` WHERE `user_id`=?", $params);  

        

        case "check_signin":
            return makeQuery($conn, "SELECT `id` FROM `track_202290_users` WHERE `username`=? AND `password` = md5(?)", $params);


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