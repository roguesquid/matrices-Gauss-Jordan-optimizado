{ *************************  Primera entrega  *****************************

  Integrantes:      <Christopher Acosta>    cédula:  <30496179>

                    <Luis Martín>           cédula:  <30351273>

  ************************************************************************ }
Program proyecto;
uses crt;

//Variables
type matriz = array [2..8,2..8] of real;

var a:matriz;
    n:integer;

//Funciones y procedimientos de las matrices
//--submenu 1
{procedure crearmatriz (var x:matriz; var n:integer);
var i,j:integer;
begin
    for i := 1 to n do begin
        gotoxy(10,7+i); write('FILA ',i,' ');
        for j := 1 to n do begin
            gotoxy(4,6); write('Indique valor (',i,',',j,'):           ');
            gotoxy(17+j*8,7+i);readln(x[i,j]);
            gotoxy(17+j*8,7+i); write(x[i,j]:4:2);
        end;
    end;
    writeln();
end;}

procedure crearmatriz(var x:matriz; var n:integer);
var i,j:integer;
begin
  for i:=1 to N do begin
    for j:=1 to N do begin
      write('  x[',i:3,',',j:3,']=');
      readln(x[i,j]);
    end;
    writeln;
  end;
  write('La matriz fue asignada, pulse <ENTER> para volver a la pantalla anterior ...');
end;

procedure mostrarMatriz(var x:matriz;n:integer);
var i,j:integer;
begin
  for i:=1 to n do begin
    for j:=1 to N do begin
      write(x[i,j]:1:2,'  ');
    end;
    writeln;
  end;
end;

procedure modificarMatriz(var x:matriz;n:integer);
var e,k,i,j:integer;
begin
  Writeln;
  Write('Cuantos elementos deseas modificar?: ');
  read(e);
  WriteLn;

  for k:=1 to e do begin
    WriteLn('Modificacion #',k);
    Write('Indique el numero de la fila a modificar (1 a ',n,'): ');
    readln(i);
    Write('Indique el numero de la columna a modificar (1 a ',n,'): ');
    readln(j);
    Write('Indique el nuevo valor de X[',i,',',j,']: ');
    readln(x[i,j]);
    WriteLn;
  end;
end;
//--submenu2

//--submenu3


//Submenues
procedure submenu11 (var x:matriz;var n:integer);
var i,j:integer;
begin
  //repite esto hasta que el tamaño de la matriz sea mayor a 2 y menor a 8
  repeat
  clrscr;
  gotoxy(1,1); write('--------------------------------------------------------------------------------');
  gotoxy(27,2); write('SISTEMA DE MANEJO MATRICES');
  gotoxy(21,3); write('SUB MENU 1.1 LEER MATRIZ DESDE TECLADO');
  gotoxy(1,4); write('--------------------------------------------------------------------------------');
  
  gotoxy(1,6); write('TAMANO DE LA MATRIZ (2 a 8): ');
  readln(n);
  until (n>=2) and (n<=8);
  
  //Escribir Matriz;
  crearmatriz(x,n);
  readln;
end;

procedure submenu12 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('                     SUB MENU 1.2 LEER MATRIZ DESDE ARCHIVO                     ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu13 (var x:matriz;n:integer);
var i,j: integer;
begin
  clrscr;
  gotoxy(1,1); write('--------------------------------------------------------------------------------');
  gotoxy(27,2); write('SISTEMA DE MANEJO MATRICES');
  gotoxy(27,3); write('SUB MENU 1.3 MOSTRAR MATRIZ');
  gotoxy(1,4); write('--------------------------------------------------------------------------------');
  gotoxy(1,6);mostrarMatriz(x,n);
  writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu14 (var x:matriz;n:Integer);
begin
  clrscr;
  gotoxy(1,1); write('--------------------------------------------------------------------------------');
  gotoxy(27,2); write('                           SISTEMA DE MANEJO MATRICES                          ');
  gotoxy(12,3); write('            SUB MENU 1.4 MODIFICAR ELEMENTOS EN LA MATRIZ MANUALMENTE           ');
  gotoxy(1,4); write('--------------------------------------------------------------------------------');

  gotoxy(1,6);mostrarMatriz(x,n);
  
  modificarMatriz(x,n);
  
  WriteLn;
  WriteLn('Matriz modificada Exitosamente! Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu15 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('                    SUB MENU 1.5 ALMACENAR MATRIZ EN ARCHIVO                    ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu21 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('         SUB MENU 2.1 LEER VECTOR DE TERMINOS INDEPENDIENTES DEL SISTEMA        ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu22 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('              SUB MENU 2.2 RESOLVER Y MOSTRAR SOLUCIÓN DEL SISTEMA              ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu23 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('                  SUB MENU 2.3 MOSTRAR MATRIZ Y VECTOR ADJUNTO                  ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu24 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('           SUB MENU 2.4 MODIFICAR MATRIZ Y VECTOR ADJUNTO MANUALMENTE           ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu25 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('        SUB MENU 2.5 GUARDAR EN ARCHIVO EL SISTEMA JUNTO CON LA SOLUCIÓN        ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu31 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('                       SUB MENU 3.1 HALLAR MATRIZ INVERSA                       ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu32 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('                       SUB MENU 3.2 MOSTAR MATRIZ INVERSA                       ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu33 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('                     SUB MENU 3.3 COMPROBAR MATRIZ INVERSA                      ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu34 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('           SUB MENU 3.4 GUARDAR EN ARCHIVO MATRIZ ORIGINAL E INVERSA            ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu1 (opcion:integer);
begin
  repeat
      //Textos Submenu 1
        clrscr;
        writeln('--------------------------------------------------------------------------------');
        writeln('                           SISTEMA DE MANEJO MATRICES                          ');
        writeln('                             SUB MENU 1. LEER MATRIZ                            ');
        writeln('--------------------------------------------------------------------------------');
        Writeln;
        writeln('1.1 LEER MATRIZ DESDE TECLADO');
        writeln('1.2 LEER MATRIZ DESDE ARCHIVO');
        writeln('1.3 MOSTRAR MATRIZ');
        writeln('1.4 MODIFICAR ELEMENTOS EN LA MATRIZ MANUALMENTE');
        writeln('1.5 ALMACENAR MATRIZ EN ARCHIVO');
        WriteLn('0. VOLVER AL MENU ANTERIOR');
        WriteLn;
        Writeln('Marque su opcion (1 a 5) o Salir (0): ');
        WriteLn;
        writeln('--------------------------------------------------------------------------------');
        GotoXY( 39, 13 );
        readln(opcion);
      //Switch submenu 1
        case opcion of
          1: submenu11(a,n);
          2: submenu12(opcion);
          3: submenu13(a,n);
          4: submenu14(a,n);
          5: submenu15(opcion);
        end;
  Until opcion = 0;
end;

procedure submenu2 (opcion:integer);
begin
  repeat
      //Textos Submenu 2
        clrscr;
        writeln('--------------------------------------------------------------------------------');
        writeln('                           SISTEMA DE MANEJO MATRICES                          ');
        writeln('                    SUB MENU 2. RESOLVER SISTEMA DE ECUACIONES                  ');
        writeln('--------------------------------------------------------------------------------');
        Writeln;
        writeln('2.1 LEER VECTOR DE TERMINOS INDEPENDIENTES DEL SISTEMA');
        writeln('2.2 RESOLVER Y MOSTRAR SOLUCION DEL SISTEMA');
        writeln('2.3 MOSTRAR MATRIZ Y VECTOR ADJUNTO');
        writeln('2.4 MODIFICAR MATRIZ Y VECTOR ADJUNTO MANUALMENTE');
        writeln('2.5 GUARDAR EN ARCHIVO EL SISTEMA JUNTO CON LA SOLUCION');
        WriteLn('0. VOLVER AL MENU ANTERIOR');
        WriteLn;
        Writeln('Marque su opcion (1 a 5) o Salir (0): ');
        WriteLn;
        writeln('--------------------------------------------------------------------------------');
        GotoXY( 39, 13 );
        readln(opcion);
      //Switch submenu 2
        case opcion of
          1: submenu21(opcion);
          2: submenu22(opcion);
          3: submenu23(opcion);
          4: submenu24(opcion);
          5: submenu25(opcion);
        end;
  Until opcion = 0;
end;

procedure submenu3 (opcion:integer);
begin
  repeat
      //Textos Submenu 3
        clrscr;
        writeln('--------------------------------------------------------------------------------');
        writeln('                           SISTEMA DE MANEJO MATRICES                          ');
        writeln('                           SUB MENU 3. MATRIZ INVERSA                           ');
        writeln('--------------------------------------------------------------------------------');
        Writeln;
        writeln('3.1 HALLAR MATRIZ INVERSA');
        writeln('3.2 MOSTAR MATRIZ INVERSA');
        writeln('3.3 COMPROBAR MATRIZ INVERSA');
        writeln('3.4 GUARDAR EN ARCHIVO MATRIZ ORIGINAL E INVERSA');
        WriteLn('0. VOLVER AL MENU ANTERIOR');
        WriteLn;
        Writeln('Marque su opcion (1 a 4) o Salir (0): ');
        WriteLn;
        writeln('--------------------------------------------------------------------------------');
        GotoXY( 39, 12 );
        readln(opcion);
      //Switch submenu 3
        case opcion of
          1: submenu31(opcion);
          2: submenu32(opcion);
          3: submenu33(opcion);
          4: submenu34(opcion);
        end;
  Until opcion = 0;
end;

procedure menuPrincipal;
Var opcion,intentos: integer;
begin
  intentos:=1;
  while((opcion<>0) and (intentos<=3)) do begin
    clrscr;
    writeln('--------------------------------------------------------------------------------');
    writeln('                           SISTEMA DE MANEJO MATRICES                          ');
    writeln('--------------------------------------------------------------------------------');
    writeln();
    writeln('1. LEER MATRIZ');
    writeln('2. SISTEMA DE ECUACIONES');
    writeln('3. MATRIZ INVERSA');
    WriteLn('0. SALIR');
    Writeln;
    Write('Marque su opcion (1 a 5) o Salir (0): ');
    WriteLn;
    writeln('--------------------------------------------------------------------------------');
    writeln('                                 Realizado Por:                                 ');
    writeln('          Luis Martin <30.351.273> y Christopher Acosta <30.496.179>           ');
    writeln('--------------------------------------------------------------------------------');
    GotoXY( 39, 10 );
    readln(opcion);
    intentos:=intentos+1;
    writeln(intentos);
    Case opcion Of
      0: exit;
      1: submenu1(opcion);
      2: submenu2(opcion);
      3: submenu3(opcion);
    End;

  end;
  ClrScr;
end;
Begin
  menuPrincipal();
End.