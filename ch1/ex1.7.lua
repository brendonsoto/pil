function boolExp1 (x, y, z)
  return (x and y and (not z)) or ((not y) and x)
end

function boolExp2 (x, y, z)
  return x and y and not z or not y and x
end

print(boolExp1(true, false, true))
print(boolExp2(true, false, true))
print(boolExp1(true, true, false))
print(boolExp2(true, true, false))
