cls
$op = Read-Host "qual sua opcao
1 - Instalar Programas basicos
2 - Instalar Somente o Microsoft Office
5 - Sair
"
#while ($op -ne 5){
        switch ($op)
        {
            1 {invoke-expression -Command \\10.14.180.5\programas\scripts\WINDOWS\exemplo1.ps1; Break}
            2 {"It is two."; Break}
            3 {"It is three."; Break}
            4 {"It is four."; Break}
            5 {exit}
        }

#}
