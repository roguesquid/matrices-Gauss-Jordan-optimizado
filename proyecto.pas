{ *************************  Primera entrega  *****************************

  Integrantes:      <Christopher Acosta>    cédula:  <30496179>

                    <Luis Martín>           cédula:  <30351273>

  ************************************************************************ }
Program proyecto;
uses crt;

//Variables
type matriz = array [2..8,2..8] of real;
     vector = array[1..8] of real;

var a,Maux,Maux2,inv,matAuxIden:matriz;
    v,vAux:vector;
    n:integer;
    b:boolean;

//Funciones y procedimientos de las matrices
function esNumero(caracter:string):Boolean;
begin
  if ((caracter >= '0') and (caracter <= '9')) then
    esNumero:=true
  else
    esNumero:=false;
end;

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

procedure crearmatriz(var x,Maux,Maux2:matriz; var n:integer);
var i,j,auxInt:integer;
    auxStr:string;
begin
  for i:=1 to N do begin
    for j:=1 to N do begin
      write('  x[',i:3,',',j:3,']=');
      readln(auxStr);
      val(auxStr,auxInt);
      x[i,j]:=auxInt;
      Maux[i,j]:=auxInt;
      Maux2[i,j]:=auxInt;
    end;
    writeln;
  end;
  write('La matriz fue asignada, pulse <ENTER> para volver a la pantalla anterior ...');
end;

{procedure crearmatriz(var x,Maux:matriz; var n:integer);
var i,j,auxInt:integer;
    auxStr:string;
begin
  for i:=1 to N do begin
    for j:=1 to N do begin
      write('  x[',i:3,',',j:3,']=');
      readln(auxStr);
      if esNumero(auxStr) then begin
        val(auxStr,auxInt);
        x[i,j]:=auxInt;
        Maux[i,j]:=x[i,j];
      end else 
        crearmatriz(x,Maux,n);
    end;
    writeln;
  end;
  write('La matriz fue asignada, pulse <ENTER> para volver a la pantalla anterior ...');
end;}

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

procedure leerMatrizDesdeArchivo(var x,Maux,Maux2:matriz;var n:integer);
var nombre:string;
    archivo:text;
    longitud,contador,i,j:integer;
    linea:real;
begin
  write('Ingrese el nombre del archivo: ');
  read(nombre);

  Assign(archivo,nombre);
  Reset(archivo);

  readln(archivo, longitud);
  
  //comprobacion de tener todos los datos necesarios segun longitud de matriz
  if (longitud>=2) and (longitud<=8) then begin 
    contador:=0;
    while not(eof(archivo)) do begin
      readln(archivo);
      contador:=contador+1;
    end;
    if ((contador)=Sqr(longitud)) then begin
      //si se cumplen todas las condiciones
      n:=longitud;
      Reset(archivo); //reinicio el archivo porque lo lei completo en el ciclo anterior
      ReadLn(archivo); //salto la primera linea que es de la longitud de la matriz
      for i:=1 to n do begin
        for j:=1 to n do begin
          readln(archivo,linea);
          x[i,j]:=linea;
          Maux[i,j]:=linea;
          Maux2[i,j]:=linea;
        end;
      end;
      WriteLn('La matriz fue leida correctamente del archivo');
      readln;
    end
      else begin
        WriteLn('El archivo introducido no contiene los datos suficientes para escribir en la matriz');
        WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
        readln();
      end;
  end else begin
    Writeln('La longitud de la matriz en el archivo es mayor o menor a la permitida');
    WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
    readln();
  end;
  close(archivo);
end;

procedure modificarMatriz(var x:matriz;n:integer);
var e,k,i,j:integer;
    eS:string;
begin
  Writeln;
  Write('Cuantos elementos deseas modificar?: ');
  read(eS);
  val(eS,e);
  WriteLn;

  for k:=1 to e do begin
        WriteLn('Modificacion #',k);
        Write('Indique el numero de la fila a modificar (1 a ',n,'): ');
        readln(i);
        Write('Indique el numero de la columna a modificar (1 a ',n,'): ');
        readln(j);
        if (i <= n) and (j <= n) then begin
          Write('Indique el nuevo valor de X[',i,',',j,']: ');
          readln(x[i,j]);
        end
        else
          Writeln('Error! El numero asignado es mayor que el tamaño de la matriz.');
        WriteLn;
      end;
end;

procedure almacenarMatrizEnArchivo(var x:matriz;var n:integer);
var archivo:text;
    nombre:string;
    i,j:integer;

begin
  write('Ingrese el nombre del archivo: ');
  read(nombre);
  Assign(archivo,nombre);
  rewrite(archivo);
  writeln(archivo, n); //aqui escribo la longitud de la matriz (como se pidió en el pdf del proyecto)
  for i:=1 to n do begin
    for j:=1 to n do begin
      WriteLn(archivo, x[i,j]:1:2)//aquí escribo toda la matriz en el archivo
    end;
  end;
  close(archivo);
end;
//--submenu2
procedure llenarvector (var v,vAux:vector; n:integer; var b:boolean);
var i:integer;
begin
  if b then //si b es falsa pasa
    writeln('Usted ya ha asignado un termino independiente, use el menu 2.4 para cambiarlo.')
  else
    begin
      for i:= 1 to n do begin
        writeln('Ingrese el termino independiente ',i,': ');
        readln(v[i]);
        vAux[i]:=v[i];
      end;
    b:= true;
    end;
end;
procedure mostrarSistema(var x:matriz; var v:vector; n:integer);
var i,j:integer;
begin
  for i:=1 to n do begin
    for j:=1 to N do begin
      write(x[i,j]:1:1,'  ');
    end;
    write('=    ',v[i]:1:1);
    writeln;
  end;
end;
procedure modificarsistema(var x:matriz;var v:vector;n:integer);
var eInt,k,i,j,tipoInt:integer; eStr,tipoStr:string;
begin
  Writeln;
  Writeln('Que tipo de elemento desea modificar?');
  Writeln('1. Matriz');
  Writeln('2. Variable independiente');
  readln(tipoStr);
  if (esNumero(tipoStr)) then begin
    Val(tipoStr,tipoInt);
    Writeln('Cuantos elementos deseas modificar?: ');
    read(eStr);
    val(eStr,eInt);
    case tipoInt of
      1:
        for k:=1 to eInt do begin
          WriteLn('Modificacion #',k);
          Write('Indique el numero de la fila a modificar (1 a ',n,'): ');
          readln(i);
          Write('Indique el numero de la columna a modificar (1 a ',n,'): ');
          readln(j);
          if (i <= n) and (j <= n) then begin
            Write('Indique el nuevo valor de X[',i,',',j,']: ');
            readln(x[i,j]);
          end
          else
            Writeln('Error! El numero asignado es mayor que el tamaño de la matriz.');
          WriteLn;
        end;
      2:
        for k:=1 to eInt do begin
          WriteLn('Modificacion #',k);
          Write('Indique el numero de la fila a modificar (1 a ',n,'): ');
          readln(i);
          if (i <= n) then begin
            Write('Indique el nuevo valor de V[',i,']: ');
            readln(v[i]);
          end
          else
            Writeln('Error! ',i,' es mayor que el tamaño de la matriz.');
        end
        else 
          Writeln('Error! Valor indicado no es una opción.');
      end;
  end;
end;
procedure almacenarSistemaEnArchivo(var x:matriz; var v:vector; n:integer);
var archivo:text;
    nombre:string;
    i,j:integer;

begin
  write('Ingrese el nombre del archivo: ');
  read(nombre);
  Assign(archivo,nombre);
  rewrite(archivo);
  writeln(archivo, n); 
  for i:=1 to n do begin
    for j:=1 to n do begin
      WriteLn(archivo, x[i,j]:1:1);
    end;
    WriteLn(archivo,'Solucion:',v[i]:1:1);
  end;
  close(archivo);
end;

procedure gauss(var m:matriz; var v:vector; n:integer);
var i,j,c,x:integer; b:vector; z:real;
begin
  for i:= 1 to n do begin
    for j:= 1 to n do begin 
        z:= m[i,i];
        // Crea pivote
        if (z <> 1) and (z <> 0) then begin
          for c:= 1 to n do
            m[i,c]:= m[i,c]/z;
          v[i]:= v[i]/z;
        end;

        if (m[j,i] <> 0) and (j <> i) then begin
            for x:= 1 to n do // Multiplica la fila y la guarda los valores multiplicados en un vector 2D 
                b[x] := m[i,x]* m[j,i];
                b[n+1]:= v[i]*m[j,i];
            v[j]:= v[j] - b[n+1];
            for c:=1 to n do // Va de cada numero1 en la fila restando el valor multiplicado
                m[j,c]:= m[j,c] - b[c];
        end;
    end;
  end;

  mostrarSistema(m,v,n); 
end;
//--submenu3
procedure matrizInversa(var x,inversa:matriz;var n:integer);
var i,j,k:integer;
    aux, diag:real;

begin
  //crea la matriz identidad
  for i:=1 to n do begin
    for j:=1 to n do begin
      inversa[i,j]:=0;
      if (i=j) then
        inversa[i,j]:=1;
    end;
  end; 

  //calcular matriz inversa
  //este for se mueve por la diagonal
  for i:=1 to n do begin
    diag:=x[i,i];

    //este for se mueve por toda la fila de la matriz normal y de la identidad, aplicando la operacion en toda la fila
    for k:=1 to n do begin
      x[i,k]:=x[i,k]/diag;
      inversa[i,k]:=inversa[i,k]/diag;    
    end; //ya aqui este elemento de la diagonal vale 1
    
    //este for se mueve por toda la columna reduciendo a 0s los elementos que no son de la diagonal
    for j:=1 to n do begin
      //solo efectua la operacion en los elementos que no formen parte de la diagonal
      if (i<>j) then begin
        aux:=x[j,i];
        for k:=0 to n do begin
          x[j,k]:=x[j,k]-aux*x[i,k];
          inversa[j,k]:=inversa[j,k]-aux*inversa[i,k];
        end;
      end;  
    end;
  end;
end;

procedure comprobarMatrizInv(var x,inversa,matAuxIden:matriz;n:integer);
var i,j,k:Integer;
    c,aux:real;
begin
for i:= 1 to n do begin
  for j := 1 to n do begin 
    for k := 1 to n do begin
      c:=x[i,k] * inv[k,j];
      aux := aux + c;
    end;
    matAuxIden[i,j] := aux;
    aux:=0;
  end;
end;
end;

procedure almacenarMatrizInvEnArchivo(var x,inversa:matriz;var n:integer);
var archivo:text;
    nombre:string;
    i,j:integer;

begin
  write('Ingrese el nombre del archivo: ');
  read(nombre);
  Assign(archivo,nombre);
  rewrite(archivo);
  writeln(archivo, n); //aqui escribo la longitud de la matriz (como se pidió en el pdf del proyecto)
  for i:=1 to n do begin
    for j:=1 to n do begin
      WriteLn(archivo, x[i,j]:1:2)//aquí escribo toda la matriz en el archivo
    end;
  end;
  for i:=1 to n do begin
    for j:=1 to n do begin
      WriteLn(archivo, inversa[i,j]:1:2)//aquí escribo toda la matriz en el archivo
    end;
  end;
  close(archivo);
end;

//SubSubMenus
procedure submenu11 (var x,Maux,Maux2:matriz;var n:integer);
var nS:string;
begin
  //repite esto hasta que el tamaño de la matriz sea mayor a 2 y menor a 8
  repeat
  clrscr;
  gotoxy(1,1); write('--------------------------------------------------------------------------------');
  gotoxy(27,2); write('SISTEMA DE MANEJO MATRICES');
  gotoxy(21,3); write('SUB MENU 1.1 LEER MATRIZ DESDE TECLADO');
  gotoxy(1,4); write('--------------------------------------------------------------------------------');
  
  gotoxy(1,6); write('TAMANO DE LA MATRIZ (2 a 8): ');
  readln(nS);//lee string
  until (nS>='2') and (nS<='8') and esNumero(nS);//comprueba si tiene el valor adecuado y si es numero
  val(nS,n); // convierte el string a numero y lo asigna a n
  
  //Escribir Matriz;
  crearmatriz(x,Maux,Maux2,n);
  readln;
end;

procedure submenu12 (var x,maux,maux2:matriz;var n:integer);
begin
  clrscr;
  gotoxy(1,1); writeln('--------------------------------------------------------------------------------');
  gotoxy(27,2); writeln('SISTEMA DE MANEJO MATRICES');
  gotoxy(21,3); writeln('SUB MENU 1.2 LEER MATRIZ DESDE ARCHIVO');
  gotoxy(1,4); writeln('--------------------------------------------------------------------------------');
  
  gotoxy(1,6);leerMatrizDesdeArchivo(x,maux,maux2,n);

  gotoxy(1,9);WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu13 (var x:matriz;n:integer);
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

procedure submenu15 (var x:matriz;var n:integer);
begin
  clrscr;
  gotoxy(1,1); writeln('--------------------------------------------------------------------------------');
  gotoxy(27,2); writeln('SISTEMA DE MANEJO MATRICES');
  gotoxy(20,3); writeln('SUB MENU 1.5 ALMACENAR MATRIZ EN ARCHIVO');
  gotoxy(1,4); writeln('--------------------------------------------------------------------------------');
  
  almacenarMatrizEnArchivo(x,n);
end;

procedure submenu21 (var v,vAux:vector;n:integer; var b:boolean);
begin
  clrscr;
  gotoxy(1,1);write('--------------------------------------------------------------------------------');
  gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
  gotoxy(9,3);write('SUB MENU 2.1 LEER VECTOR DE TERMINOS INDEPENDIENTES DEL SISTEMA');
  gotoxy(1,4);write('--------------------------------------------------------------------------------');
  Writeln;

  gotoxy(1,6);llenarvector(v,vAux,n,b);

  WriteLn;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu22 (var x:matriz;var v:vector;n:integer);
begin
  clrscr;
  gotoxy(1,1);write('--------------------------------------------------------------------------------');
  gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
  gotoxy(14,3);write('SUB MENU 2.2 RESOLVER Y MOSTRAR SOLUCIÓN DEL SISTEMA');
  gotoxy(1,4);write('--------------------------------------------------------------------------------');
  
  gotoxy(1,6);gauss(x,v,n);
  
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu23 (var x:matriz;var v:vector;n:integer);
begin
  clrscr;
  gotoxy(1,1);write('--------------------------------------------------------------------------------');
  gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES ');
  gotoxy(18,3);write('SUB MENU 2.3 MOSTRAR MATRIZ Y VECTOR ADJUNTO');
  gotoxy(1,4);write('--------------------------------------------------------------------------------');

  gotoxy(1,6);mostrarSistema(x,v,n);

  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu24 (var x:matriz;var v:vector;n:integer);
begin
  clrscr;
  gotoxy(1,1);write('--------------------------------------------------------------------------------');
  gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
  gotoxy(11,3);write('SUB MENU 2.4 MODIFICAR MATRIZ Y VECTOR ADJUNTO MANUALMENTE');
  gotoxy(1,4);write('--------------------------------------------------------------------------------');
  
  gotoxy(1,6);modificarSistema(x,v,n);
  
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu25 (var x:matriz;var v:vector;n:integer);
begin
  clrscr;
  gotoxy(1,1);write('--------------------------------------------------------------------------------');
  gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
  gotoxy(8,3);write('SUB MENU 2.5 GUARDAR EN ARCHIVO EL SISTEMA JUNTO CON LA SOLUCIÓN');
  gotoxy(1,4);write('--------------------------------------------------------------------------------');
  
  gotoxy(1,6);almacenarSistemaEnArchivo(x,v,n);
  
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu31 (var x,inversa:matriz;n:integer);
begin
  clrscr;
  gotoxy(1,1);write('--------------------------------------------------------------------------------');
  gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
  gotoxy(23,3);write('SUB MENU 3.1 HALLAR MATRIZ INVERSA');
  gotoxy(1,4);write('--------------------------------------------------------------------------------');

  matrizInversa(x,inversa,n);
  gotoxy(1,6);write('La matriz inversa es: ');
  gotoxy(1,8);mostrarMatriz(inversa,n);
  
  WriteLn;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu32 (var inversa:matriz;n:integer);
begin
  clrscr;
  gotoxy(1,1);write('--------------------------------------------------------------------------------');
  gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
  gotoxy(23,3);write('SUB MENU 3.2 MOSTAR MATRIZ INVERSA');
  gotoxy(1,4);write('--------------------------------------------------------------------------------');
  
  gotoxy(1,6);write('La matriz inversa es: ');
  gotoxy(1,8);mostrarMatriz(inversa,n);
  
  WriteLn;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu33 (var x,inversa,matAuxIden:matriz;n:integer);
begin
  clrscr;
  gotoxy(1,1);write('--------------------------------------------------------------------------------');
  gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
  gotoxy(21,3);write('SUB MENU 3.3 COMPROBAR MATRIZ INVERSA');
  gotoxy(1,4);write('--------------------------------------------------------------------------------');
  
  gotoxy(1,6);comprobarMatrizInv(x,inversa, matAuxIden,n);
  
  WriteLn('Matrix original: ');
  mostrarMatriz(x,n);
  Writeln;
  WriteLn('Matrix inversa: ');
  mostrarMatriz(inversa,n);
  Writeln;
  WriteLn('Matrix original*inversa (matriz identidad): ');
  mostrarMatriz(matAuxIden,n);
  
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

procedure submenu34 (var x,inversa:matriz;n:integer);
begin
  clrscr;
  gotoxy(1,1);write('--------------------------------------------------------------------------------');
  gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
  gotoxy(11,3);write('SUB MENU 3.4 GUARDAR EN ARCHIVO MATRIZ ORIGINAL E INVERSA');
  gotoxy(1,4);write('--------------------------------------------------------------------------------');
  
  gotoxy(1,6);almacenarMatrizInvEnArchivo(x,inversa,n);
  
  Writeln;
  WriteLn('Pulse <ENTER> para volver a la pantalla anterior ...');
  WriteLn('--------------------------------------------------------------------------------');
  readln;
end;

//submenus
procedure submenu1 ();
var opcion:integer;
    opcionS:string;
begin
  repeat
      //Textos Submenu 1
        clrscr;
        gotoxy(1,1);write('--------------------------------------------------------------------------------');
        gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
        gotoxy(29,3);write('SUB MENU 1. LEER MATRIZ');
        gotoxy(1,4);write('--------------------------------------------------------------------------------');

        gotoxy(1,6);write('1.1 LEER MATRIZ DESDE TECLADO');
        gotoxy(1,7);write('1.2 LEER MATRIZ DESDE ARCHIVO');
        gotoxy(1,8);write('1.3 MOSTRAR MATRIZ');
        gotoxy(1,9);write('1.4 MODIFICAR ELEMENTOS EN LA MATRIZ MANUALMENTE');
        gotoxy(1,10);write('1.5 ALMACENAR MATRIZ EN ARCHIVO');
        gotoxy(1,11);Write('0. VOLVER AL MENU ANTERIOR');

        gotoxy(1,13);Write('Marque su opcion (1 a 5) o Salir (0): ');

        gotoxy(1,15);write('--------------------------------------------------------------------------------');
        gotoxy(39,13);readln(opcionS);
      //Switch submenu 1            
      if ((opcionS >= '0') and (opcionS <= '5')) then begin
        val(opcionS,opcion);
        case opcion of
          1: submenu11(a,Maux,Maux2,n);
          2: submenu12(a,Maux,Maux2,n);
          3: submenu13(a,n);
          4: submenu14(a,n);
          5: submenu15(a,n);
        end;
      end;
  Until opcion = 0;
end;

procedure submenu2 ();
var opcion:integer;
    opcionS:string;
    b:boolean;
begin
  repeat
      //Textos Submenu 2
        clrscr;
        gotoxy(1,1);write('--------------------------------------------------------------------------------');
        gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
        gotoxy(20,3);write('SUB MENU 2. RESOLVER SISTEMA DE ECUACIONES');
        gotoxy(1,4);write('--------------------------------------------------------------------------------');

        gotoxy(1,6);write('2.1 LEER VECTOR DE TERMINOS INDEPENDIENTES DEL SISTEMA');
        gotoxy(1,7);write('2.2 RESOLVER Y MOSTRAR SOLUCION DEL SISTEMA');
        gotoxy(1,8);write('2.3 MOSTRAR MATRIZ Y VECTOR ADJUNTO');
        gotoxy(1,9);write('2.4 MODIFICAR MATRIZ Y VECTOR ADJUNTO MANUALMENTE');
        gotoxy(1,10);write('2.5 GUARDAR EN ARCHIVO EL SISTEMA JUNTO CON LA SOLUCION');
        gotoxy(1,11);Write('0. VOLVER AL MENU ANTERIOR');

        gotoxy(1,13);Write('Marque su opcion (1 a 5) o Salir (0): ');

        gotoxy(1,15);write('--------------------------------------------------------------------------------');
        gotoxy(39,13);readln(opcionS);
      //Switch submenu 2           
      if ((opcionS >= '0') and (opcionS <= '5')) then begin
        val(opcionS,opcion);
        case opcion of
          1: submenu21(v,vAux,n,b);
          2: submenu22(Maux2,vAux,n);
          3: submenu23(a,v,n);
          4: submenu24(a,v,n);
          5: submenu25(a,v,n);
        end;
      end;
  Until opcion = 0;
end;

procedure submenu3 ();
var opcion:integer;
    opcionS:string;
begin
  repeat
      //Textos Submenu 3
        clrscr;
        gotoxy(1,1);write('--------------------------------------------------------------------------------');
        gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
        gotoxy(27,3);write('SUB MENU 3. MATRIZ INVERSA');
        gotoxy(1,4);write('--------------------------------------------------------------------------------');

        gotoxy(1,6);write('3.1 HALLAR MATRIZ INVERSA');
        gotoxy(1,7);write('3.2 MOSTAR MATRIZ INVERSA');
        gotoxy(1,8);write('3.3 COMPROBAR MATRIZ INVERSA');
        gotoxy(1,9);write('3.4 GUARDAR EN ARCHIVO MATRIZ ORIGINAL E INVERSA');
        gotoxy(1,10);write('0. VOLVER AL MENU ANTERIOR');

        gotoxy(1,12);write('Marque su opcion (1 a 4) o Salir (0): ');

        gotoxy(1,14);write('--------------------------------------------------------------------------------');
        gotoxy(39,12);readln(opcionS);
      //Switch submenu 3            
      if ((opcionS >= '0') and (opcionS <= '4')) then begin
        val(opcionS,opcion);
        case opcion of
          1: submenu31(Maux,inv,n);
          2: submenu32(inv,n);
          3: submenu33(a,inv,matAuxIden,n);
          4: submenu34(a,inv,n);
        end;
      end;
  Until opcion = 0;
end;

procedure menuPrincipal;
Var intentos,opcion: integer;
    opcionS:string;
begin
  intentos:=0;
  while((opcion<>0) and (intentos<=3)) do begin
    clrscr;
    gotoxy(1,1);write('--------------------------------------------------------------------------------');
    gotoxy(27,2);write('SISTEMA DE MANEJO MATRICES');
    gotoxy(1,3);write('--------------------------------------------------------------------------------');
    gotoxy(1,5);write('1. LEER MATRIZ');
    gotoxy(1,6);write('2. SISTEMA DE ECUACIONES');
    gotoxy(1,7);write('3. MATRIZ INVERSA');
    gotoxy(1,8);Write('0. SALIR');
    gotoxy(1,10);Write('Marque su opcion (1 a 5) o Salir (0): ');

    gotoxy(1,12);write('--------------------------------------------------------------------------------');
    gotoxy(33,13);write('Realizado Por:');
    gotoxy(10,14);write('Luis Martin <30.351.273> y Christopher Acosta <30.496.179>');
    gotoxy(1,15);write('--------------------------------------------------------------------------------');
    gotoxy(39,10); readln(opcionS);
    
    if ((opcionS >= '0') and (opcionS <= '5')) then begin
      val(opcionS,opcion);
      Case opcion Of
        0: exit;
        1: submenu1();
        2: submenu2();
        3: submenu3();
      End;
    end;
  end;
  ClrScr;
end;
Begin
  menuPrincipal();
End.