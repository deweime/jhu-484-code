require 'logger'

log=Logger.new(STDOUT)
#log=Logger.new("prog.log", 'daily')
log.level=Logger::DEBUG

5.times do |i|
  log.debug("Logging number #{i}")
end

log.close


=begin
D, [2009-09-09T20:50:49.109279 #56408] DEBUG -- : Logging number 0
D, [2009-09-09T20:50:49.109763 #56408] DEBUG -- : Logging number 1
D, [2009-09-09T20:50:49.109801 #56408] DEBUG -- : Logging number 2
D, [2009-09-09T20:50:49.109835 #56408] DEBUG -- : Logging number 3
D, [2009-09-09T20:50:49.109869 #56408] DEBUG -- : Logging number 4
=end