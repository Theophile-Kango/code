def bonAppetit(bill, k, b)
 return 'Bon Appetit' if (bill.sum - bill[k])/2 == b
 res = b - ((bill.sum - bill[k]) / 2) 
end

p bonAppetit([3, 10, 2, 9], 1, 7)