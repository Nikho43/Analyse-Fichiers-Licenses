

# fait un tqbleau de mots uniques et les compte
def license_unique words, unique_words
 
 hash = Hash.new 
  unique_words.each do |unique_word|
    cpt = 0  
    words.each do |word|
      if word == unique_word
        cpt += 1
      end  
    end
  hash[unique_word] = cpt
  end
  return hash
end

# tri et affiche les mots uniaues par valeur décroissantes
def my_display myhash

  finalhash = myhash.sort_by {|key,value| value}.reverse

  finalhash.each_with_index do |(key,value), index|
    if index == ARGV[0].to_i
      break 
    end

 puts "#{index}, #{key} : #{value}"
end


end

#pqrcours l'ensemble des fichiers dans le répertoire license
Dir['licenses/*'].each do |license|
  
  puts license
  words = File.read(license).split 
  unique_words = words.uniq  
  hash = license_unique words, unique_words
  my_display hash

end

