
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'account-cat/version'

Gem::Specification.new do |spec|
  spec.name          = 'account-cat'
  spec.version       = AccountCat::VERSION
  spec.authors       = ['Masayuki Higashino']
  spec.email         = ['msyk@hgsn.info']

  spec.summary       = %q{Account Cat}
  spec.description   = %q{Account Cat}
  spec.homepage      = 'https://github.com/mh61503891/account-cat'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'thor', '~> 0.20'
  spec.add_dependency 'activerecord', '~> 5.1.4'
  spec.add_dependency 'activesupport', '~> 5.1.4'
  spec.add_dependency 'sqlite3', '~> 1.3'
  spec.add_dependency 'validates_email_format_of', '~> 1.6'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry', '~> 0.11'
end
