class TestLua < Minitest::Test
  def test_lua
    s=Rufus::Lua::State.new
    assert_equal 3, s.eval("return 1+2")
  end
end
