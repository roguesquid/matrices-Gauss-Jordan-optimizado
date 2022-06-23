Program proyecto;
uses crt;

procedure submenu1 (opcion:integer);
begin
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
        Writeln('Indique su opcion: ');
        WriteLn;
        writeln('--------------------------------------------------------------------------------');
        GotoXY( 20, 13 );
        readln(opcion);
      //Switch submenu 1
        //Case opcion Of

end;

procedure submenu2 (opcion:integer);
begin
      //Textos Submenu 2
        clrscr;
        writeln('--------------------------------------------------------------------------------');
        writeln('                           SISTEMA DE MANEJO MATRICES                          ');
        writeln('                    SUB MENU 2. RESOLVER SISTEMA DE ECUACIONES                  ');
        writeln('--------------------------------------------------------------------------------');
        Writeln;
        writeln('2.1 LEER VECTOR DE TERMINOS INDEPENDIENTES DEL SISTEMA');
        writeln('2.2 RESOLVER Y MOSTRAR SOLUCIÓN DEL SISTEMA');
        writeln('2.3 MOSTRAR MATRIZ Y VECTOR ADJUNTO');
        writeln('2.4 MODIFICAR MATRIZ Y VECTOR ADJUNTO MANUALMENTE');
        writeln('2.5 GUARDAR EN ARCHIVO EL SISTEMA JUNTO CON LA SOLUCION');
        WriteLn('0. VOLVER AL MENU ANTERIOR');
        WriteLn;
        Writeln('Indique su opcion: ');
        WriteLn;
        writeln('--------------------------------------------------------------------------------');
        GotoXY( 20, 13 );
        readln(opcion);
      //Switch submenu 2
end;

procedure submenu3 (opcion:integer);
begin
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
        Writeln('Indique su opcion: ');
        WriteLn;
        writeln('--------------------------------------------------------------------------------');
        GotoXY( 20, 12 );
        readln(opcion);
      //Switch submenu 3
        //case opcion of
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
    Write('Indique su opcion: ');
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
{ *************************  Primera entrega  *****************************

  Integrantes:      <Christopher Acosta>    cédula:  <30496179>

                    <Luis Martín>           cédula:  <30351273>

  ************************************************************************ }
  menuPrincipal();
End.