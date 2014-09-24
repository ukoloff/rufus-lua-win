require "bundler/gem_tasks"

if Gem.win_platform?
  desc 'Run tests'
  task :test do
    require "minitest/autorun"

    require 'rufus/lua/win'
    require 'rufus/lua'

    Dir.glob('./test/*.rb'){|f| require f}
  end

  task :default=>:test
end
