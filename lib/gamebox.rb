GAMEBOX_PATH = File.join(File.dirname(__FILE__),"gamebox/")
require 'conject'
require 'kvo'
require 'tween'
require 'gosu'
include Gosu

# TODO move this to some logging class
def log(output, level = :debug)
  t = Time.now
  puts "[#{t.min}:#{t.sec}:#{t.usec}] [#{level}] #{output}"
end

begin
  require 'pry'
  require 'pry-remote'
  require 'chipmunk'
rescue LoadError
end

require 'require_all'
require_all Dir.glob("#{GAMEBOX_PATH}/**/*.rb").reject { |f| f.match("template_app") || f.match("spec") || f.match("gamebox_application.rb")}
