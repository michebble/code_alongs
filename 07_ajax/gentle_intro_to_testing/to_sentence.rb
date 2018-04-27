# def to_sentence(list) 
#   if list.length >=2
#     last_element = list.pop()
#     string = list.join(', ')
#     return string + ' and ' + last_element
#   elsif list.length == 1
#     return list.first
#   end
# end

def to_sentence(list) 
  case list.length
  when 1
    list.first
  when 2
    list.join(' and ')
  else
    "#{list[0..-2].join(', ')} and #{list.last}"
  end
end