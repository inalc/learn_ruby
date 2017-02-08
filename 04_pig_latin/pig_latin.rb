def translate(input)

  vowels = %w{a e i o u}
  two_consonants = %w{ch sh tw th cr tr br}
  three_consonants = %w{thr sch}
  result = []

  input.split.map do |i|
  unless vowels.include? i[0]
    if "qu".include? i[0..1]
      i = i[2..-1] + i[0..1]
    elsif "qu".include? i[1..2]
      i = i[3..-1] + i[0..2]
    elsif three_consonants.include? i[0..2]
      i = i[3..-1] + i[0..2]
    elsif two_consonants.include? i[0..1]
      i = i[2..-1] + i[0..1]
    else
      i = i[1..-1] + i[0] 
    end
  end
    i = i + 'ay'
    result << i
  end
  result.join(" ")

end



   
=begin  
 end vowels = %w{a e i o u}
  two_consonants %w{ch sh tw th cr tr}
  result = []

  input.split.map do |i|
    unless vowels.include? i[0]
      if i[0..1] == 'qu'
        i = i[2..-1] + i[0..1]
      else
        i = i[1..-1] + i[0] 
      end
    end
    i = i + 'ay'
    result << i
  end
  result.join(" ")

end
=end 