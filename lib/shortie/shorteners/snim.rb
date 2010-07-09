module Shortie
  module Shorteners
    class Snim < BaseShortener
      def shorten
        SimpleHttp.post("http://sn.im/site/getsnip", {
          "sniplink" => url,
          "snipuser" => "lassebunk",
          "snipapi" => "55656c5bbaf92f859aa657be1482fc3a",
          "snipformat" => "simple"
        })
      end
    end
    Service.register("snim", "sn.im", Snim)
  end
end