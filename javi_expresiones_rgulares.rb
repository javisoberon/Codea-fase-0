def numero_cuenta_valido(string)
  string.match(/\d{4}-\d{3}-\d{3}/) ? true : false
end

def retrun_account_number(string)
  if string.match(/\d{4}-\d{3}-\d{3}/) 
    i = 0
    until string[i].match(/\d/)
      i +=1
    end
    string.slice(i,12)
  else
  nil
  end
end

def return_array_account(string)
  array = []
   if string.match(/\d{4}-\d{3}-\d{3}/) 
    i = 0
    until string[i].match(/\d/)
      i +=1
    end
    array << string.slice(i,12)
  else
  nil
  end
end

def string_replaced_with_x(string)
  with_x = ""
   if string.match(/\d{4}-\d{3}-\d{3}/) 
    i = 0
    until string[i].match(/\d/)
      i +=1
    end
    with_x = string.slice(i,12)
  else
  nil
  end
  with_x = "XXXX-XXX-" + with_x.slice(9,3)
end

def return_ordered_number(string)
  account_number = ""
  ordered = ""
  if string.match(/\d{4}.\d{3}.\d{3}/) 
    i = 0
    until string[i].match(/\d/)
      i +=1
    end
    account_number = string.slice(i,12)
    ordered = account_number.slice(0,4) + "-" + account_number.slice(5,3) + "-" + account_number.slice(9,3)
  elsif string.match(/\d{10}/)
    i = 0
    until string[i].match(/\d/)
      i +=1
    end
    account_number = string.slice(i,10)
    ordered = account_number.slice(0,4) + "-" + account_number.slice(4,3) + "-" + account_number.slice(7,3)
  else
    nil
  end
end

p numero_cuenta_valido("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")

p retrun_account_number("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")

p return_array_account("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")

p string_replaced_with_x("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")

p return_ordered_number("7898.765.434")