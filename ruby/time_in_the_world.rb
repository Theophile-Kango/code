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
   

end

p number_to_word(5)
p number_to_word(21)
p number_to_word(30)
p number_to_word(55)
p number_to_word(60)