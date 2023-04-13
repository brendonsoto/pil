-- defines a factorial function
function fact (n)
  if n < 0 then
    print("Please use a positive integer:")
    a = io.read("*n")
    print(fact(a))
  elseif n == 0 then
    return 1
  else
    return n * fact(n - 1)
  end
end

print("enter a number:")
a = io.read("*n")         -- reads a number
print(fact(a))
