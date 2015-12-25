# server.rb
require 'drb/drb'

class App
  def say_hi
    puts 'Hello, world!'
  end
end

object = App.new

DRb.start_service('druby://localhost:9999', object)
DRb.thread.join
