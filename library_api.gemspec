# coding: utf-8

Gem::Specification.new do |spec|
  spec.name    = "library_api"
  spec.version = File.read(File.expand_path('../VERSION', __FILE__)).chomp
  spec.summary = %q{Library API protocol buffers}
  spec.authors = ["Anders Carling"]
  spec.email   = ["anders.carling@tummylab.com"]
  spec.homepage = "http://github.com/anderscarling/library_presentation-protobuf/"
  spec.license = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "disabled"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{.rb$}) }
  spec.require_paths = ["ruby"]

  spec.add_runtime_dependency 'google-protobuf', '~> 3.1.0'
end
