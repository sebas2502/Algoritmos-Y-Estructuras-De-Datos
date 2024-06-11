Program lista_carga_apilada;
uses crt;

    type 
       
       nodo =  Record
                 dato : string;
                 prox : ^nodo;   
                end;

VAR 
 
 prim , p : ^nodo;
 dato : string;
 op : char;


procedure cargaApilada;
begin
    writeln('Ingrese un dato');
    readln(dato);
    NEW(p);
    p^.dato := dato;
    p^.prox := prim;
    prim := p;
    writeln('Nodo apilado...');
   
end;


procedure recorrerLista;
begin 
    if (prim = NIL) then 
      writeln('Lista vacia...')
      else  
       p := prim;
       while (p <> NIL) do begin 
            write(p^.dato,' --> ');
            p := p^.prox;
       end;
            
end;


BEGIN

    
  
    
    op := ' ';    prim := NIL;
    
    repeat 
        clrscr;
        writeln('=========================================');
        writeln('1 - Cargar pila');
        writeln('2 - Recorrer lista');
        writeln('3 - Salir');
        writeln('=========================================');
        writeln('Ingrese opcion : ');
        readln(op);

        case op of 
             '1' : cargaApilada; 
             '2' : recorrerLista;
             '3' : writeln('Hasta luego!...');
        end;
        readkey;
    until (op = '3');
   

    

END.