
def str_str(haystack, needle)
  return -1 unless haystack.include?(needle)
  return haystack.index(needle) if haystack.include?(needle)
end

haystack = "mississippi"
needle = "issip"

# 4
p str_str(haystack, needle)