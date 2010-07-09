module Shortie
  module Shorteners
    class Snurl < BaseShortener
      def shorten
        SimpleHttp.post("http://snurl.com/site/getsnip", {
          "sniplink" => url,
          "snipuser" => "lassebunk",
          "snipapi" => "55656c5bbaf92f859aa657be1482fc3a",
          "snipformat" => "simple"
        })
      end
    end
    Service.register("snurl", "Snurl", Snurl)
  end
end