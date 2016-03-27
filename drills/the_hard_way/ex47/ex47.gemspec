# coding: utf-8
lib = File.expand_path('../lib', __File__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = "NAME"
  sec.version = "0.1"
  spec.authors = ["Patrick Multhaup"]
  spec.email = ["pjmulthaup@gmail.com"]
  spec.summary = %q{Short summary goes here}
  spec.description = %q{Longer description goes here}
  spec.homepage = "http://www.cactusworks.net"
  spec.license = "MIT"

  spec.files = ['lib/NAME.rb']
  spec.executables = ['bin/NAME']
  spec.test_files = ['tests/test_NAME.rb']
  spec.require_paths = ["lib"]
end

