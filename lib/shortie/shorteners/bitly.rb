module Shortie
  module Shorteners
    class Bitly < BaseShortener
      def shorten
        xml = SimpleHttp.get("http://api.bit.ly/v3/shorten?login=lassebunk&apiKey=R_f7df445f30899b8aec8ad5af7c732f0b&longUrl=#{escaped_url}&format=xml")
        doc = REXML::Document.new(xml)

        status_element = doc.elements["response/status_txt"]
        raise "No status text (status_txt) returned from bit.ly." if status_element.nil?

        status = status_element.text
        raise status unless status == "OK"

        url_element = doc.elements["response/data/url"]
        raise "No URL returned from bit.ly." if url_element.nil?

        url_element.text
      end
    end
    Service.register("bitly", "bit.ly", Bitly)
  end
end