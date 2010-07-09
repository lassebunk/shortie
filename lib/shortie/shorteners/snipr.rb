module Shortie
  module Shorteners
    class Snipr < BaseShortener
      def shorten
        SimpleHttp.post("http://snipr.com/site/getsnip", {
          "sniplink" => url,
          "snipuser" => "lassebunk",
          "snipapi" => "55656c5bbaf92f859aa657be1482fc3a",
          "snipformat" => "simple"
        })
      end
    end
    Service.register("snipr", "Snipr", Snipr)
  end
end