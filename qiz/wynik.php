<html>
    <head>
        <title>QUIZ</title>
        <meta charset="utf-8">
    </head>
    <body>
        <?php
            print_r($_POST);
            $wynik = 0;
            foreach($_POST as $key=>$value){
                echo "$key - $value";
                $wynik = $wynik+$value;
            };
            echo $wynik;
        ?>  
    </body>
</html>