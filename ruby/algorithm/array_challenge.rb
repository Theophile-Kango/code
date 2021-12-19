def ArrayChallenge(strArr)

    # code goes here
    first_element = strArr[0]
    second_element = strArr[1]
    first_word = ""
    second_word = ""
    second_element.split(",").each do |elt|
        if first_element.include?(elt) 
            if elt[0] == first_element[0]
                second_word = first_element.gsub(elt, "") if second_element.include?(elt)
                first_word = first_element.gsub(second_word, "")
            end
        end
        
    end
    "pg0zb4ie5d8".split("").each do |elt|
        first_word = first_word.gsub(elt,"")
        second_word = second_word.gsub(elt, "")
    end

    return "#{first_word},#{second_word}"
  
end

p ArrayChallenge(["baseball", "a,all,b,ball,bas,base,cat,code,d,e,quit,z"])
# base, ball