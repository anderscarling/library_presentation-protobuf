# coding: utf-8

Pod::Spec.new do |spec|
  spec.name     = "LibraryAPI"
  spec.version  = File.read(File.expand_path('../VERSION', __FILE__)).chomp
  spec.summary  = %q{Library API protocol buffers}
  spec.author   = {
    "Anders Carling" => "anders.carling@tummylab.com"
  }
  spec.license  = {
    type: "MIT"
  }
  spec.homepage = "http://github.com/anderscarling/library_presentation-protobuf/"
  spec.source   = {
    git: 'git@github.com:anderscarling/library_presentation-protobuf.git'
  }

  spec.source_files  = `git ls-files -z`.split("\x0").grep(%r{\.h$|\.m$})
  spec.header_mappings_dir = "objc"
  spec.requires_arc = false

  spec.user_target_xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => "GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1"
  }

  spec.pod_target_xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => "GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1"
  }

  spec.ios.deployment_target = '9.0'
  spec.dependency 'Protobuf', '~> 3.1.0'
end
