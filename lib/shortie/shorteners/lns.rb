module Shortie
  module Shorteners
    class Lns < BaseShortener
      def shorten
        ret = SimpleHttp.post("http://ln-s.net/home/api.jsp", {
          "url" => url
        })
        status, message = ret.split(/ /, 2)
        message.chomp!
        
        raise message unless status == "200"
        
        message
      end
    end
    Service.register("lns", "ln-s", Lns)
  end
end