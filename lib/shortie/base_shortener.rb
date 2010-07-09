module Shortie
  class BaseShortener
    attr_accessor :url
    
    # Shortens a url.
    def self.shorten(url)
      self.new(url).shorten
    end

    def initialize(url)
      self.url = url
    end
    
    # Shorten method to be called. Must be implemented by classes inheriting this class.
    def shorten
      raise "Invalid shortener. It must implement the shorten method."
    end

  private

    def escaped_url
      CGI::escape(url)
    end
  end
end