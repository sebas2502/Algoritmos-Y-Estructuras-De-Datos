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


   //Procedimiento para cargar la lista    
   procedure cargarCola;
   begin
     writeln('Ingrese un dato');
     readln(dato);
     new(p);
     p^.dato := dato;
    
       if(prim = NIL) then begin    
         prim := p;                     //Trato insercion del primer elemento (Prim debe quedar apuntando a este nodo)
        end else
          begin
           ant^.prox := p;              //El ultimo nodo cargado siempre referencia a NIL
          end;        
          ant := p;                     //Enlazo el nodo actual con el nodo nuevo ingresado
          writeln('nodo encolado...');
    end; 

   
   //Procedimiento para recorrer la lista
   procedure recorrerCola;
   begin
         if (prim = NIL) then 
             writeln('Lista vacia...')
         else  
           p := prim;
           while (p <> NIL) do begin 
                
                write('(',p^.dato,')',' --> ');
                p := p^.prox;
           end; 
           write('NIL');
   end; 

BEGIN
        clrscr;
        prim := NIL; ant := NIL; op := ' '; //Inicializo punteros

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

