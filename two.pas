program two;
uses crt;

type vector = array[1..8] of real;
type matriz = array [1..8,1..8] of real;

var v:vector;
    m:matriz;
    n:integer;

procedure llenarvector (var v:vector; n:integer);
var i:integer;
begin
      for i:= 1 to n do begin
        writeln('Ingrese su valor independiente: ');
        readln(v[i]);
    end;
end;

procedure crearmatriz(var x:matriz; n:integer);
var i,j:integer;
begin
  for i:=1 to n do begin
    for j:=1 to n do begin
      write('  x[',i:3,',',j:3,']=');
      readln(x[i,j]);
    end;
  end;
end;

procedure mostrarMatriz(x:matriz; v:vector; n:integer);
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

procedure mostrarvector(v:vector; n:integer);
var i:integer;
begin
  for i:=1 to n do begin
    write(v[i]:1:1);
    writeln;
  end;
end;

procedure mostrarsistema (m:matriz; v:vector; n:integer);
var i,j:integer;
begin
  for i:= 1 to n do begin
    gotoxy(5,i); write('|  ');
    for j:= 1 to n do begin 
        write(m[i,j],'  ');
    end;
    write('|    = |', v[i],'|');
  end;

end;    

procedure modificarsistema(var x:matriz;var v:vector;n:integer);
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
    if j > n then begin
        Write('Indique el nuevo valor de V[',i,']: ');
        readln(v[i]);
    end
    else
    Write('Indique el nuevo valor de X[',i,',',j,']: ');
    readln(x[i,j]);
    WriteLn;
  end;
end;

procedure almacenarMatrizEnArchivo(x:matriz; v:vector; n:integer);
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
var i,j,c,x:integer; b:vector;
begin
  for i:= 1 to n do begin
    for j:= 1 to n do begin 
        // Reemplazar diagonal con 1
        if (m[i,i] <> 1) and (m[i,i] <> 0) then
          for c:= 1 to n do
            m[i,c]:= m[i,c]/m[i,i];
          v[i]:= v[i]/m[i,i];
        
        // Si no es diagonal, multiplicar la Fila i (aquella fila con 1) por el valor a quitar y restar con la Fila j para cancelar 
        if (m[j,i] <> 0) and (j <> i) then
            for x:= 1 to n do // Multiplica la fila y la guarda los valores multiplicados en un vector 2D 
                if (b[x] = 0) then
                  b[x]:= 1
                else
                    b[x]:= b[x]*m[j,i];
            // mostrarvector(b,n); //de-bug
            v[i]:= v[i] - (v[i]*m[j,i]); // Multiplica con la var indep. y la resta con si
            for c:=1 to n do // Va de cada numero en la fila restando el valor multiplicado
                m[j,c]:= m[j,c] - b[c];
    end;
  end;
end;

begin
    n:=2;
    crearmatriz(m,n);
    llenarvector(v,n);
    gauss(m,v,n);
    mostrarMatriz(m,v,n);
    
end.