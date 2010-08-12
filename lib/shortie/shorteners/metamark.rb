module Shortie
  module Shorteners
    class Metamark < BaseShortener
      def shorten
        url = SimpleHttp.get("http://metamark.net/api/rest/simple?long_url=#{escaped_url}")
        raise url if url =~ /^ERROR:/
        url
      end
    end
    Service.register("metamark", "Metamark", Metamark)
  end
end