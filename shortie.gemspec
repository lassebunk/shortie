Gem::Specification.new do |s|
  s.name = "shortie"
  s.version = "1.0.0"

  s.author = "Lasse Bunk"
  s.email = "lassebunk@gmail.com"
  s.description = "Shortie makes it easy to shorten URLs with any service."
  s.summary = "Shorten URLs with any service."
  s.homepage = "http://github.com/lassebunk/shortie"
  s.files = Dir['lib/**/*.rb']
  s.require_paths = ["lib"]

  s.add_dependency("simplehttp", ">= 0.1.3")
end