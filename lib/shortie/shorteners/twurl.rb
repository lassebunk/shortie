module Shortie
  module Shorteners
    class Twurl < BaseShortener
      def shorten
        SimpleHttp.post("http://tweetburner.com/links", "link[url]" => url)
      end
    end
    Service.register("twurl", "Twurl", Twurl)
  end
end