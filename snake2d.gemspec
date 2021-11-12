# frozen_string_literal: true

require_relative "lib/snake2d/version"

Gem::Specification.new do |spec|
  spec.name = "snake2d"
  spec.version = Snake2d::VERSION

  spec.authors = ["Mario Visic"]
  spec.email = ["mario@mariovisic.com"]

  spec.summary = "A 2d snake game"
  spec.description = "A classic 2d snake game running on the ruby2d library."
  spec.homepage = "https://www.youtube.com/c/mariovisic"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mariovisic/snake-game"
  spec.metadata["changelog_uri"] = "https://github.com/mariovisic/snake-game/blob/main/CHANGELOG.md"

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
  spec.add_dependency "ruby2d", "~> 0.11.1"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
