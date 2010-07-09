module Shortie
  class Service
    @@services = []
    
    # Register a new service by key, name, and shortener, e.g. register("bitly", "bit.ly", Bitly).
    def self.register(key, name, shortener)
      @@services << Service.new(key, name, shortener)
    end
    
    # Get a list of all services.
    def self.all
      @@services
    end
    
    # Find a service by key, e.g. 'bitly'.
    def self.find_by_key(key)
      @@services.find { |s| s.key == key }
    end
    
    attr_accessor :key, :name, :shortener
    
    def initialize(key, name, shortener)
      self.key, self.name, self.shortener = key, name, shortener
    end
    
    # Shorten a URL. This calls the shorten(url) method on the shortener.
    def shorten(url)
      shortener.shorten(url)
    end
  end
end