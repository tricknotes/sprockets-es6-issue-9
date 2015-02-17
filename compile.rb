require 'sprockets'
require 'sprockets/es6'

env = Sprockets::Environment.new(".") do |env|
  env.append_path(File.expand_path('assets', __dir__))
end
dir = File.expand_path('build', __dir__)
manifest = Sprockets::Manifest.new(env, File.join(dir, 'manifest.json'))

manifest.compile('application.js')
