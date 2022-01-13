# frozen_string_literal: true

require_relative "lib/generator/version"

Gem::Specification.new do |spec|
  spec.name = "generator"
  spec.version = Generator::VERSION
  spec.authors = ["nimmyvpn"]
  spec.email = ["nimmy.j.vipin@accenture.com"]

  spec.summary = "Gem to generate a random number from one to hundred."
  spec.description = "Require the generator class to easily get random numbers from 1 to 100. "
  spec.homepage = "https://github.com/nimmyvpn/generator"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage+"/CHANGELOG.md"

  spec.add_development_dependency "rspec"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
