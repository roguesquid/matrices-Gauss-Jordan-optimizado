program segunda;
uses crt;

type matriz = array [1..10,1..10] of integer;

var a:matriz;
    n:integer;

procedure crearmatriz (var x:matriz; var n:integer);
var i,j:integer;
begin
    gotoxy(13,5); write('TAMAÑO DEL LADO DE LA MATRIZ: ');
    readln(n);
    
    for i := 1 to n do begin
        gotoxy(10,7+i); write('FILA ',i,' ');
        for j := 1 to n do begin
            gotoxy(10,6); write('Indique valor (',i,j,') = ');
            readln(x[i,j]);
            gotoxy(17+j,7+i); write(x[i,j]);
        end;
    end;
    writeln();
end;

procedure submenu_unouno (a:matriz; n:integer);
begin
    clrscr;
    gotoxy(7,1); write('-------------------------------------------');
    gotoxy(15,2); write('SISTEMA DE MANEJO MATRICES');
    gotoxy(10,3); write('SUB MENÚ 1.1 LEER MATRIZ DESDE TECLADO');
    gotoxy(7,4); write('-------------------------------------------');

    gotoxy(10,15); write('Pulse <ENTER> para volver a la pantalla anterior ...');  

    crearmatriz(a,n);
end;

begin
    submenu_unouno(a,n);
end.