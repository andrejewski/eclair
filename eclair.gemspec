Gem::Specification.new do |s|
  s.name        = "eclair"
  s.version     = "0.0.0"
  s.summary     = "Declarative HTML building for Ruby"
  s.description = "The main entrypoint for using Eclair"
  s.authors     = ["Chris Andrejewski"]
  s.email       = "christopher.andrejewski@gmail.com"
  s.files       = Dir.glob('lib/**/*')
  s.homepage    =
    "https://github.com/andrejewski/eclair"
  s.license       = "MIT"

  s.required_ruby_version = ['>= 3.0']
  s.add_dependency('sorbet-runtime')
end