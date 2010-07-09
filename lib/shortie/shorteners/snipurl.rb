module Shortie
  module Shorteners
    class Snipurl < BaseShortener
      def shorten
        SimpleHttp.post("http://snipurl.com/site/getsnip", {
          "sniplink" => url,
          "snipuser" => "lassebunk",
          "snipapi" => "55656c5bbaf92f859aa657be1482fc3a",
          "snipformat" => "simple"
        })
      end
    end
    Service.register("snipurl", "Snipurl", Snipurl)
  end
end