

class Exec
  
  def exec_proc(p)
    a="local variable a"
    p.call
  end
end

a="a defined before proc"
p=Proc.new { puts "In Proc:  #{a}"}

Exec.new.exec_proc(p)


l=lambda { puts "In lambda #{a}"}
l.call
puts l.class   #=> Proc
