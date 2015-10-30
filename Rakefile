IMAGE_TAG = ENV['IMAGE_TAG'] || 'aventinesolutions/docker-geminabox'

task default: :build

desc 'build a Gem in a Box docker'
task :build do
  fail 'Docker build failed' unless system "docker build --tag #{IMAGE_TAG} ."
end


