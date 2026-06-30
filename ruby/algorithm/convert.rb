def convert(s, num_rows)
 return s if num_rows == 1 || s.length <= num_rows

  # Create an array of strings representing each row
  rows = Array.new(num_rows) { "" }
  
  current_row = 0
  going_down = false

  # Distribute characters into their respective rows
  s.each_char do |char|
    rows[current_row] << char
    
    # Switch direction when hitting the top or bottom row
    going_down = !going_down if current_row == 0 || current_row == num_rows - 1
    
    # Move up or down based on current direction
    current_row += going_down ? 1 : -1
  end

  # Combine all row strings sequentially
  rows.join
end

p convert("PAYPALISHIRING", 3) #PASRGAPIINYLHI PAHNAPLSIIGYIR
#1 -> PAHN
#2 -> APLSIIG
#3 -> YIR