lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "./lib/goodreads/api/version"

Gem::Specification.new do |spec|
  spec.name = "goodreads"
  spec.version = Goodreads::Api::VERSION
  spec.authors = ["mohamed"]
  spec.email = ["mohamedmohy216@gmail.com"]
  spec.metadata['allowed_push_host'] = "https://rubygems.org"
  spec.summary = %q{A gem that help you using goodreads api}
  spec.description = %q{this gem helps you to deal with goodreads api onli by calling methods and saves you from dealing with requests and URIs }
  spec.homepage = "https://github.com/MohamedMohy/goodreads_easy_api"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = ""
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # spec.files =["lib/goodreads.rb","lib/"]
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) {|f| File.basename(f)}
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
