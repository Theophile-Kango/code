def hurdleRace(k, height)
    return k > height.max ? 0 : height.max - k
end

p hurdleRace(7,[2, 5, 4, 5, 2])