Program lista_carga_encolada;
uses crt;


    type 
       
       nodo =  Record
                 dato : string;
                 prox : ^nodo;   
                end;

    VAR 
 
    prim , p , ant : ^nodo;
    dato : string;
    op : char;

   procedure cargarCola;
   begin
     writeln('Ingrese un dato');
     readln(dato);
     new(p);
     p^.dato := dato;
    
       if(prim = NIL) then     
          begin
          prim := p;
          p^.prox := NIL;
          ant := p;
          end 
          
         else
        begin
        ant^.prox := p;
        ant := p;
        p^.prox := NIL;
        
        writeln('nodo encolado...');
        end; 
         
         
   end; 

   
   procedure recorrerCola;
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
        clrscr;
        prim := NIL; ant := NIL; op := ' ';

        repeat  
         clrscr;
            writeln('=========================================');
            writeln('1 - Cargar cola');
            writeln('2 - Recorrer cola');
            writeln('3 - Salir');
            writeln('=========================================');
            writeln('Ingrese opcion : ');
            readln(op);

             case op of 
             '1' : cargarCola; 
             '2' : recorrerCola;
             '3' : writeln('Hasta luego!...');
              end;
             readkey;

        until op = '3';


END.
