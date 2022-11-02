<html>
    <head>
        <title>QUIZ</title>
        <meta charset="utf-8">
    </head>
    <body>
        <div>
            <form  method="post" action="wynik.php">
                <?php
                    $con = new mysqli("127.0.0.1","root","","qiz");
                    $res = $con->query("SELECT id, description FROM questions");
                    $rows = $res->fetch_all(MYSQLI_ASSOC);
                    $a=1;
                    for($i=0;$i<count($rows);$i++){
                        echo 'Pytanie'.$a++." ";
                        echo $rows[$i]["description"].'<br>';   
                        $g = $i+1;
                            $res2 = $con->query("SELECT description, questions_id FROM answers WHERE questions_id='.$g.'");
                            $rows2 = $res2->fetch_all(MYSQLI_ASSOC);
                            for($j=0;$j<count($rows2);$j++){
                                $w = @j+1;
                                echo $rows2[$j]["description"].'<input type="checkbox" value="'.$w.'"/>'.'<br>';

                            };
                    }; 
                ?>
                <input type="submit">
            </form>
        </div>
        <footer>
            <p style="display: inline-block">Autor: SJ</p>
        </footer>
    </body>
</html>
