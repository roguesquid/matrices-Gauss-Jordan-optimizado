{ *************************  Primera entrega  *****************************

  Integrantes:      <Christopher Acosta>    cédula:  <30496179>

                    <Luis Martín>           cédula:  <30351273>

  ************************************************************************ }
Program proyecto;
uses crt;




//Submenues
procedure submenu11 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('                     SUB MENU 1.1 LEER MATRIZ DESDE TECLADO                     ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
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

procedure submenu13 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('                           SUB MENU 1.3 MOSTRAR MATRIZ                          ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu14 (opcion:Integer);
begin
  clrscr;
  writeln('--------------------------------------------------------------------------------');
  writeln('                           SISTEMA DE MANEJO MATRICES                          ');
  writeln('            SUB MENU 1.4 MODIFICAR ELEMENTOS EN LA MATRIZ MANUALMENTE           ');
  writeln('--------------------------------------------------------------------------------');
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
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
        GotoXY( 20, 13 );
        readln(opcion);
      //Switch submenu 1
        case opcion of
          //0: menuPrincipal();
          1: submenu11(opcion);
          2: submenu12(opcion);
          3: submenu13(opcion);
          4: submenu14(opcion);
          5: submenu15(opcion);
          {else
            WriteLn('Indique una opción existente')}
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
        GotoXY( 20, 13 );
        readln(opcion);
      //Switch submenu 2
        case opcion of
          //0: menuPrincipal();
          1: submenu21(opcion);
          2: submenu22(opcion);
          3: submenu23(opcion);
          4: submenu24(opcion);
          5: submenu25(opcion);
          {else
            WriteLn('Indique una opción existente')}
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
        GotoXY( 20, 12 );
        readln(opcion);
      //Switch submenu 3
        case opcion of
          //0: menuPrincipal();
          1: submenu31(opcion);
          2: submenu32(opcion);
          3: submenu33(opcion);
          4: submenu34(opcion);
          {else
            WriteLn('Indique una opción existente')}
        end;
  Until opcion = 0;
end;

procedure menuPrincipal;
Var opcion: integer;
begin
  repeat
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
    GotoXY( 20, 10 );
    readln(opcion);
    Case opcion Of
      0: exit;
      1: submenu1(opcion);
      2: submenu2(opcion);
      3: submenu3(opcion);
    End;
  Until opcion = 0;
  ClrScr;
end;
Begin
  menuPrincipal();
End.