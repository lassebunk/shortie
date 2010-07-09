module Shortie
  module Shorteners
    class Isgd < BaseShortener
      def shorten
        SimpleHttp.get("http://is.gd/api.php?longurl=#{escaped_url}")
      end
    end
    Service.register("isgd", "is.gd", Isgd)
  end
end