def pig_it text
    # ...
    string = text.split(' ')
    string.map do |w| 
        first = w[0]
        w[0] = "" 
        w[w.length] = first
    end
    string.map{|w| w+"ay" if w != '?'}.join(' ')
    #text.split(' ').map { |word| pig_word(word) }.join(' ')
    #text.gsub(/(\w)(\w+)?/, '\2\1ay')
    #text.gsub(/(\w)(\w*)/){|w| $2 + $1 + 'ay' }
end

p pig_it('Pig latin is cool')
#igPay atinlay siay oolcay