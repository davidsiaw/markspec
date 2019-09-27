lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mdspec/version'

Gem::Specification.new do |spec|
  spec.name          = 'mdspec'
  spec.version       = Mdspec::VERSION
  spec.authors       = ['David Siaw']
  spec.email         = ['dsiaw@degica.com']

  spec.summary       = 'a short summary'
  spec.description   = 'a longer description'
  spec.homepage      = 'https://github.com/davidsiaw/mdspec'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/davidsiaw/mdspec'
    spec.metadata['changelog_uri'] = 'https://github.com/davidsiaw/mdspec'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = Dir['{exe,lib}/**/*'] + %w[Gemfile mdspec.gemspec]
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
