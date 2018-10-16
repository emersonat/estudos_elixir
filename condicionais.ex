defmodule Condicionais   do
        
    def exemplo_cond() do
       x = 10
    
        
       cond do
           x == 10  -> 
            "ghhgfhghf"
                           
       end
    end


    def exemplo_case() do
       x = 10
   
        
       case :valor do
            :outro_valor -> 
                "outro_valor"
            :mais_um_valor ->
                "mais um valor"
            :valor ->
                "valor"
            _ -> 
                "undescore"
                           
       end
    end



end