require 'pathname'

def define_compile_task(compiler, source_path, target_path_map, &blk)
  rule_target = target_path_map.values.fetch(0)

  rule rule_target => source_path do |t|
    chdir("proto") do
      sh %Q[protoc "#{t.source.sub(%r{^proto/}, '')}" --#{compiler}_out="."]
    end
    target_path_map.each_pair do |source, target|
      mkdir_p(File.dirname(target))
      mv source, target
      blk.call(target) if blk
    end
  end

  rule_target
end

ruby_sources = Dir["proto/**/*.proto"].map do |proto_path|
  ruby_path = proto_path.sub(/.proto$/, '_pb.rb')

  define_compile_task("ruby", proto_path, {
    ruby_path => ruby_path.ext('').sub(/^proto/, "ruby").gsub('.', '/').gsub(/_pb$/, '').ext('rb')
  }) do |target|
    File.write(target, File.read(target).gsub(/require .*/) { |line|
      if line.start_with?(%q{require 'google/protobuf})
        line
      else
        line.gsub('.', '/').gsub(/_pb\'$/, '\'')
      end
    })
  end
end

objc_sources = Dir["proto/**/*.proto"].map do |proto_path|
  objc_path = proto_path.pathmap("%d%s%{.*,*}n.pbobjc.h") do |basename|
    basename.split(".").map { |part| part.split('_').collect(&:capitalize).join }.join("")
  end

  fix_path = ->(path) {
    return path if path.start_with?("google/")
    (File.dirname(path).split(Regexp.union(File::SEPARATOR, /[\._]/)).map { |str| str.capitalize.gsub("Api", "API") } << File.basename(path)).join('_')
  }

  target_path = File.join("objc", fix_path.(Pathname.new(objc_path).relative_path_from(Pathname.new("proto")).to_s))

  define_compile_task("objc", proto_path, {
    objc_path.ext('h') => target_path.ext('h'),
    objc_path.ext('m') => target_path.ext('m')
  }) do |target|
    File.write(target, File.read(target).gsub(/(?<=#import ").*\.pbobjc\.(h|m)(?=")/) { |ref| p fix_path.(ref); fix_path.(ref) })
  end
end

PROTOC_VERSION="libprotoc 3.1.0"
task :assert_protoc_version do
  current_version = `protoc --version`.chomp
  unless current_version == PROTOC_VERSION
    fail "`#{current_version}`, but `#{PROTOC_VERSION}` required!"
  end
end

task :clean_ruby do
  rm_r Dir["ruby/*"]
end

task :clean_objc do
  rm_r Dir["objc/*"]
end

desc "Compile new objc sources"
task :objc => [:assert_protoc_version, :clean_objc, objc_sources].flatten

desc "Compile new ruby sources"
task :ruby => [:assert_protoc_version, :clean_ruby, ruby_sources].flatten

desc "Compile all"
task :default => [:objc, :ruby]
