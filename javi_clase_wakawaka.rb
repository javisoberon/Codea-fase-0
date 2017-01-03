class WakaWaka
  @@traduccion = {"<" => "waka",
                  ">" => "waka",
                  "!" => "bang",
                  "*" => "splat",
                  "'" => "tick",
                  "#" => "hash",
                  "^" => "caret",
                  '"' => "quote",
                  "`" => "back-tick",
                  "$" => "dollar",
                  "-" => "dash",
                  "=" => "equal",
                  "@" => "at",
                  "_" => "underscore",
                  "%" => "percent",
                  "~" => "tilde",
                  "4" => "four"}
  def initialize(code)
    @code = code
  end  

  def translate 
    @code.each do |subarray|
      claves = ""
      valores = ""
      subarray.each do |clave|       
        claves << clave + espacios
        texto = @@traduccion[clave]
        if clave == subarray.last      
          valores << texto
        else      
          valores << texto + espacios(texto.length) 
        end     
      end
      puts claves
      puts valores + ","
    end
  end

  def espacios(numero = 1)
    " " * (12 - numero)
  end
end 

waka1 = WakaWaka.new([["<", ">", "!", "*", "'", "'", "#"],["^", '"', "`", "$", "$", "-"], ["!", "*", "=", "@", "$", "_"], ["%", "*", "<", ">", "~", "#", "4"]])

waka1.translate