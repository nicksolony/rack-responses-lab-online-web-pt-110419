require 'pry'
class Application
 
  def call(env)
    resp = Rack::Response.new
    binding.pry
    if time
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end
