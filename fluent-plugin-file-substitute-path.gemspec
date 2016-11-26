# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-file-substitute-path"
  spec.version       = "0.1.0"
  spec.authors       = ["Masayasu Yamamoto"]
  spec.email         = ["m2yamamoto@gmail.com"]

  spec.summary       = %q{Apply the value of the specified field to part of the path.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/msysyamamoto/fluent-plugin-file-substitute-path"
  spec.license       = "Apache License 2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "fluentd", ">= 0.12.0", "< 0.14.0"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
