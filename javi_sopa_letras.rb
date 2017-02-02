prueba1 = [["CANCION", "POEMA", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
prueba2 = [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
prueba3 = [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]

class Board

  def initialize(array)
    @array = array
    @words = array[0]
    completeboard!
    p to_s
    search
    
  end

  def to_s
    @board.each_with_index do |letter, index|
      print letter + " "
      if index == 4 || index == 9 || index == 14 || index == 19 || index == 24 || index == 29 || index == 34 
        puts
      end
    end
    puts
  end

  def search
    for i in 0..@words.length-1
      search_rows(board_in_arrays(@board), @words[i])
    end
    for i in 0..@words.length-1
      search_rows(transpose(board_in_arrays(@board)), @words[i])
    end
  end

  def board_in_arrays(array)
    arr = array.join
    @boardarray = arr.scan(/...../)
  end

  def search_rows(matrix, word)
    matrix.each do |placeholder|
      if placeholder.include?(word) == true
        p "Encontre la palabra #{word} en el renglon #{matrix.index(placeholder) + 1}"
        break
      elsif placeholder.reverse.include?(word) == true
        p "Encontre la palabra #{word} escrita al revés en el renglon #{matrix.index(placeholder) + 1}"
        break
      end
    end
  end

  def transpose(matrix)
    transposer = ""
    for col in 0..4
      for row in 0..7
        transposer << matrix[row][col]
      end
    end
    @boardtrans = transposer.scan(/......../)
  end




  private

  def completeboard!
    @board = @array[1].split("")
    @board.each do |placeholder| 
      if placeholder == "X"
        placeholder.gsub!(/X/) { ("A".."Z").to_a[rand(26)] }
      end
    end
    @board
  end
end

board = Board.new(prueba1)
