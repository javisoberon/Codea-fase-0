def anagrams(list)
  hanag = Hash.new
  arreglo = []

  list.each do | item |
    canonical = item.chars.sort.join
    if hanag.has_key?canonical
      hanag[canonical].push(item)
    else
      hanag[canonical] = [item]
    end

  end
  hanag.values
  
 end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p anagrams(words) == [["demo", "dome", "mode"], ["none", "neon"], ["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], ["fowl", "wolf", "flow"]]