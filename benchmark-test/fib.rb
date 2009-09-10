class Fib
  # Recursive Version
  def fib(n)
    return 1 if n == 0 || n == 1
    return fib(n-1) + fib(n-2)
  end

  # or
  def fib_non_recursive(n)
     return 1 if n == 0 || n == 1
     f1, f2 = 1,1
     while f1 <= n
         f1, f2 = f2, f1+f2
     end
  end
end