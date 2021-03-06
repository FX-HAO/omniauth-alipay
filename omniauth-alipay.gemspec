# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-alipay/version'

Gem::Specification.new do |spec|
  spec.name        = 'omniauth-alipay-oauth2'
  spec.version     = Omniauth::Alipay::VERSION
  spec.authors     = ['Fuxin Hao']
  spec.email       = ['haofxpro@gmail.com']
  spec.homepage    = 'https://github.com/FX-HAO/omniauth-alipay'
  spec.description = 'Alipay OAuth2 Strategy for OmniAuth'
  spec.summary     = spec.description

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'omniauth'
  spec.add_dependency 'omniauth-oauth2'
  spec.add_dependency 'alipay', '~> 0.15.0'
end
