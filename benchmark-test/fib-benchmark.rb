require 'benchmark'
require 'Fib'

fib=Fib.new

Benchmark.bmbm do |b|
  b.report("recurse") { fib.fib(30) }
  b.report("loop") { fib.fib_non_recursive(30) }
end