require 'syslog'

log=Syslog.open("SYSLOG-EXAMPLE")
log.mask=Syslog::LOG_UPTO(Syslog::LOG_DEBUG)

5.times do |i|
  log.notice("Logging number #{i}")
end

log.close