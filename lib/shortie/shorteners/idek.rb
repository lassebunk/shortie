module Shortie
  module Shorteners
    class Idek < BaseShortener
      def shorten
        SimpleHttp.get("http://idek.net/shorten/?idek-api=true&idek-url=#{escaped_url}")
      end
    end
    Service.register("idek", "idek.net", Idek)
  end
end