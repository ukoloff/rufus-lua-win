class TestLibs < Minitest::Test
  def test_libs
    s=Rufus::Lua::State.new
    %w(getopt mime xml lpeg).each{|m| s.eval "require '#{m}'"}
  end

  def test_missing
    assert_raises(Rufus::Lua::LuaError) do
      s=Rufus::Lua::State.new
      s.eval "require 'oops'"
    end
  end
end
