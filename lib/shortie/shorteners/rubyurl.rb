module Shortie
  module Shorteners
    class Rubyurl < BaseShortener
      def shorten
        xml = SimpleHttp.post("http://rubyurl.com/api/links", "website_url" => url)
        doc = REXML::Document.new(xml)

        doc.elements["link/permalink"].text
      end
    end
    Service.register("rubyurl", "RubyURL", Rubyurl)
  end
end