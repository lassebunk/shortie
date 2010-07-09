module Shortie
  module Shorteners
    class Tinyurl < BaseShortener
      def shorten
        SimpleHttp.get("http://tinyurl.com/api-create.php?url=#{escaped_url}")
      end
    end
    Service.register("tinyurl", "TinyURL", Tinyurl)
  end
end