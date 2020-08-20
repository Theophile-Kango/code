def workbook(n, k, arr)
  answer = 0
  page = 1
  for probs in arr
    for index in (1..probs)
        answer += 1 if index == page
        page += 1 if index == probs || index % k == 0
    end
  end
  return answer
end

p workbook(5,3,[4, 2, 6, 1, 10])