require "rufus/lua/win/version"

module Rufus
  module Lua
    module Win
      def self.inject
        dll = File.expand_path "../../../../vendor/lua/bin/liblua#{/64/ =~ RUBY_PLATFORM ? "64": "32"}.dll", __FILE__
        rocks = File.expand_path '../../lib/lua', dll

        ENV['LUA_LIB']=dll
        ENV['LUA_PATH']=['', '/init'].map{|x| File.expand_path "?#{x}.lua", rocks}*';'
        ENV['LUA_CPATH']=File.expand_path "?.dll", rocks
      end

      inject if Gem.win_platform?
    end
  end
end
