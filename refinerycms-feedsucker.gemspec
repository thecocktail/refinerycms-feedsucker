Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.author = 'The Cocktail'
  s.homepage = 'http://github.com/thecocktail/refinerycms-feedsucker'
  s.name              = 'refinerycms-feedsucker'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Feedsucker engine for Refinery CMS'
  s.date              = '2011-02-01'
  s.summary           = 'Feedsucker engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
  s.add_dependency    'refinerycms', '>=0.9.9' 
end
