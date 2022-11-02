<html>
    <head>
        <title>QUIZ</title>
        <meta charset="utf-8">
    </head>
    <body>
        <?php
            print_r($_POST);
            foreach($_POST as $key=>$value){
                echo "$key - $value";
            }
        ?>
    </body>
</html>