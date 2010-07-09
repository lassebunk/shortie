module Shortie
  module Shorteners
    class Cllk < BaseShortener
      def shorten
        SimpleHttp.post("http://cl.lk/site/getsnip", {
          "sniplink" => url,
          "snipuser" => "lassebunk",
          "snipapi" => "55656c5bbaf92f859aa657be1482fc3a",
          "snipformat" => "simple"
        })
      end
    end
    Service.register("cllk", "cl.lk", Cllk)
  end
end