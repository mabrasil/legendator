require File.expand_path("../src/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'legendator'
  gem.version     = Legendator::VERSION
  gem.date        = Date.today.to_s
  gem.licenses    = ['MIT']
  gem.homepage    = 'https://github.com/pogist/legendator'
  gem.summary     = "SRT Parser"
  gem.description = "Simple gem which provides SubRip subtitles parsing methods."

  gem.authors     = ["Murilo da Paixão"]
  gem.email       = 'murilo.paixao.2@gmail.com'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'

  gem.files = Dir['Rakefile', 'src/**/*', 'README*', 'LICENSE*', 'CONTRIBUTING*'] & `git ls-files -z`.split("\0")

end
