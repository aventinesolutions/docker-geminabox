IMAGE_TAG = ENV['IMAGE_TAG'] || 'aventinesolutions/docker-geminabox'
VERSION = ENV['VERSION'] || '0.13.0'
DEV_REGISTRY = ENV['DEV_REGISTRY'] || 'registrydev.rm:5000'

task default: [:build, :tag, :push]

desc 'build a Gem in a Box docker'
task :build do
  fail 'Docker build failed' unless system "docker build --tag #{IMAGE_TAG} ."
end

desc 'tag the image for the DEV registry'
task :tag do
  check_version
  [VERSION, :latest].each do |version_tag|
    system "docker tag -f #{IMAGE_TAG}:latest #{DEV_REGISTRY}/#{IMAGE_TAG}:#{version_tag}"
  end
end

desc 'push the tagged Docker to the DEV registry'
task :push do
  check_version
  [VERSION, :latest].each do |version_tag|
    system "docker push #{DEV_REGISTRY}/#{IMAGE_TAG}:#{version_tag}"
  end
end

def check_version
  fail 'need to supply a VERSION (just a simple version number will do)' unless VERSION
end
