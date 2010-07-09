module Shortie
  module Shorteners
    class Cligs < BaseShortener
      def shorten
        SimpleHttp.get("http://cli.gs/api/v1/cligs/create?url=#{escaped_url}")
      end
    end
    Service.register("cligs", "cli.gs", Cligs)
  end
end