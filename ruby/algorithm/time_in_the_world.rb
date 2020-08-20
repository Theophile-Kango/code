def number_to_word number
    ones = %w{zero one two three four five six seven eight nine
        ten eleven twelve thirteen fourteen fifteen
        sixteen seventeen eighteen nineteen}
    tens =  %w{zero ten twenty thirty **forty** fifty sixty seventy eighty ninety}


    subhundred = number % 100

    return [ones[subhundred]].join if subhundred < 20

    return [tens[subhundred / 10]].join if subhundred % 10 == 0

    return [tens[subhundred / 10], ones[subhundred % 10]].join(" ")
end

def timeInWords(h, m)
    return "#{number_to_word(h)} o' clock" if m == 0
    minute = m == 1 ? "minute" : "minutes"
    if (m > 0) && (m < 30) 
        return "quarter past #{number_to_word(h)}" if m == 15
        return "#{number_to_word(m)} #{minute} past #{number_to_word(h)}"
    elsif (m == 30)
        return "half past #{number_to_word(h)}"
    elsif (m > 30) && (m < 60) && (m != 30)
        m = 60 - m
        return "quarter to #{number_to_word(h + 1)}" if m == 15
        return "#{number_to_word(m)} #{minute} to #{number_to_word(h + 1)}"
    end

end

p number_to_word(5)
p timeInWords(5, 0)
p timeInWords(5, 1)
p timeInWords(12, 15)
p timeInWords(5, 45)