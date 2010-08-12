module Shortie
  module Shorteners
    class Minilink < BaseShortener
      def shorten
        xml = SimpleHttp.get("http://minilink.org/?url=#{escaped_url}&xml=1")
        doc = REXML::Document.new(xml)

        url_element = doc.elements["minilink"]
        raise "No URL returned from minilink." if url_element.nil?

        url_element.text
      end
    end
    Service.register("minilink", "minilink.org", Minilink)
  end
end