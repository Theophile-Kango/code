def transpose(string)
    # your code here
    str = string.chars
    loop do
      test = false
      str.length.times do |i|
        if str[i] == 'g' && str[i + 1] == 'n'
          str[i], str[i + 1] = str[i + 1], str[i]
          test = true
        end
      end
      break unless test
    end
    str.join
  end
  
  puts transpose('he was searchign on Bign for signign kigns')
  # => he was searching on Bing for singing kings
  
  puts transpose('rignadingdiggn!')
  # => ringadingdingg!
  
  puts transpose('gngngnnggnngggnnn')
  # => nnnnnnnnngggggggg