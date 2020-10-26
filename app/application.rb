
class Application

    def call(env)
        response = Rack::Response.new
        time = Time.now
        # response.write(time.hour)
        if(time.hour < 12)
            response.write "Good Morning!"
        else
            response.write "Good Afternoon!"
        end
       response.finish  
    end
end