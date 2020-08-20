def divisibleSumPairs(n, k, ar)
    ar.combination(2).to_a.count{|el| el.sum if el.sum % k == 0  }
end