lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitlab/license/version'

Gem::Specification.new do |spec|
  spec.name          = 'gitlab-license-plain'
  spec.version       = Gitlab::License::VERSION
  spec.authors       = ['Satoshi Nakamoto']
  spec.email         = ['satoshi@nakamoto.com']

  spec.summary       = 'Gitlab Enterprise license'
  spec.homepage      = 'https://github.com/andreimerfu/gitlab-license-plain'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3.0'

  spec.add_development_dependency 'bundler', '~> 2.3'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'rubocop', '~> 0.80.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.38.1'
end
