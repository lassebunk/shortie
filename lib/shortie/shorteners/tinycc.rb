module Shortie
  module Shorteners
    class Tinycc < BaseShortener
      def shorten
        xml = SimpleHttp.get("http://tiny.cc/?c=rest_api&m=shorten&version=2.0.1&format=xml&longUrl=#{escaped_url}&login=lassebunk&apiKey=7ec76292-2999-48ab-ad8a-91798282ad59")
        doc = REXML::Document.new(xml)

        error_msg = doc.elements["restapi/errorMessage"]
        raise error_msg.text unless error_msg.text.nil?

        doc.elements["restapi/results/*/shorturl"].text
      end
    end
    Service.register("tinycc", "tiny.cc", Tinycc)
  end
end