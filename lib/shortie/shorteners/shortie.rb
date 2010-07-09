module Shortie
  module Shorteners
    class Shortie < BaseShortener
      def shorten
        xml = SimpleHttp.get("http://short.ie/api?url=#{escaped_url}&format=xml")
        doc = REXML::Document.new(xml)

        error_msg = doc.elements["short/error/msg"]
        raise error_msg.text if error_msg

        doc.elements["short/shortened"].text
      end
    end
    Service.register("shortie", "short.ie", Shortie)
  end
end