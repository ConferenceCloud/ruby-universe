Gem::Specification.new do |s|
  s.name      = "ruby-universe"
  s.authors   = ["John-Alan Simmons", "Xin Fan (Fred)"]
  s.version   = "0.0.4"
  s.licenses  = ['MIT']
  s.email     = ["simmons.johnalan@gmail.com", "fredxinfan@gmail.com"]
  s.summary   = "A simple API wrapper for Universe V2."
  s.homepage  = "https://github.com/ConferenceCloud/ruby-universe"
  s.files     = [
              "README.md",
              "ruby-universe.gemspec", 
              "lib/universe.rb", 
              "lib/universe/configuration.rb", 
              "lib/universe/request.rb",
              "lib/universe/response.rb"
            ]
  
  s.add_dependency("httparty",["~> 0.13"])
  s.add_dependency("json",["~> 1.8"])
end
