require 'logger'

log = Logger.new(STDOUT)
log.level = Logger::WARN

log.debug("Created logger")
log.info("Program started")
log.warn("A Warning")

begin
  File.open("./a.txt").each_line do |line|
    puts "#{line}"
    unless line =~ /^(\w+) = (.*)$/
      log.error("Line in wrong format: #{line}")
    end
  end
rescue => err
  log.fatal("Caught exception; exiting")
  log.fatal(err)
end