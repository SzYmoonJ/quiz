<html>
    <head>
        <title>QUIZ</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <header>
           <h1><a href="index.html">Strona główna</a></h1> 
        </header>
        <div class="mainpane">
            <form  method="post">
                <?php
                    $con = new mysqli("127.0.0.1","root","","qiz");
                    $res = $con->query("SELECT id, description FROM questions");
                    $rows = $res->fetch_all(MYSQLI_ASSOC);
                    $a=1;
                    for($i=0;$i<count($rows);$i++){
                        echo 'Pytanie'.$a++." ";
                        echo $rows[$i]["description"].'<br>';   
                            $res2 = $con->query("SELECT description, questions_id FROM answers");
                            $rows2 = $res2->fetch_all(MYSQLI_ASSOC);
                            for($j=0;$j<count($rows2);$j++){
                                echo $rows2[$j]["description"].'<br>';
                            };
                    }; 
                ?>
            </form>
        </div>
        <footer>
            <p style="display: inline-block">Autor: SJ</p>
        </footer>
    </body>
</html>
