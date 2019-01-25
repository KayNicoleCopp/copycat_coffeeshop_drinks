
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "copycat_coffeeshop_drinks/version"

Gem::Specification.new do |spec|
  spec.name          = "copycat_coffeeshop_drinks"
  spec.version       = CopycatCoffeeshopDrinks::VERSION
  spec.authors       = ["'Kayla Coppernoll'"]
  spec.email         = ["'kayla.coppernoll@yahoo.com'"]

  spec.summary       = "A gem that scrapes coffee drink recipes."
  spec.description   = "This gem allows the user to choose a coffee drink recipe and see the recipe and ingredients for the chosen drink"
  spec.homepage      = "https://github.com/KayNicoleCopp/copycat_coffeeshop_drinks"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/KayNicoleCopp/copycat_coffeeshop_drinks"
    spec.metadata["changelog_uri"] = "https://github.com/KayNicoleCopp/copycat_coffeeshop_drinks"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0.1"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
end
