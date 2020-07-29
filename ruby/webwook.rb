def workbook(n, k, arr)
   answer = 0
   page = 1
   for probs in arr
    for index in (1..probs)
        if index == page
            answer += 1
        end
        if index == probs || index % k == 0
            page += 1
        end
    end
   end
   return answer
end

p workbook(5,3,[4, 2, 6, 1, 10])