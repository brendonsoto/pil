all = {}
max_cols = 8

-- From other prog
-- check whether position (n,c) is free from attacks
function isplaceok (a, n, c)
  for i = 1, n - 1 do   -- for each queen already placed
    if (a[i] == c) or               -- same column?
       (a[i] - i == c - n) or       -- same diagonol?
       (a[i] + i == c + n) then     -- same diagonol?
      return false
    end
  end
  return true     -- no attacks; place is OK
end

-- print a board
function printsolution (a)
  for i = 1, max_cols do       -- for each row
    for j = 1, max_cols do     -- and for each column
      -- write "X" or "-" plus a space
      io.write(a[i] == j and "X" or "-", " ")
    end
    io.write("\n")
  end
  io.write("\n")
end


-- Probably easier way
base_table = {1,1,1,1,1,1,1,1}
-- valid = {1,5,8,6,3,7,2,4}

function isValid(t) -- t = table, c = col
  for i,v in ipairs(t) do
    if not isplaceok(t, i, v) then
      return false
    end
  end
  return true -- nothing was false so return true
end

-- print(isValid(valid))

function check_perms(t, n)
  for i = 1, max_cols do
    t[n] = i -- set the value of the queen at the nth pos of the table

    if isValid(t) then
      table.insert(all, t)
    end

    -- early return for first solution
    if #all > 0 then
      printsolution(all[1])
      os.exit()
    end

    if n ~= max_cols then check_perms(t, n+1) end
  end
end

check_perms(base_table, 1)
