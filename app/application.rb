require 'pry'
class Application
 
  def call(env)
    resp = Rack::Response.new
    binding.pry
    if Time.now
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end
