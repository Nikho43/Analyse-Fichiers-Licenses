hash = Hash.new

words = File.read('LICENSE') .split


unique_words = words.uniq


puts words.size
puts unique_words.size

unique_words.each do |unique_word|
  cpt = 0  
  words.each do |word|
     if word == unique_word
       cpt += 1
     end  
  end
  hash[unique_word] = cpt

end

def my_display myhash

finalhash = myhash.sort_by {|key,value| value}.reverse

finalhash.each_with_index do |(key,value), index|
  if index == 10
    break 
  end

 puts "#{index}, #{key} : #{value}"
end


end




my_display hash
