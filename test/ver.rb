class TestV < Minitest::Test
  def test_ver
    s=Rufus::Lua::State.new
    luav=s.eval 'return _VERSION'
    rufv=Rufus::Lua::VERSION
    gemv=Rufus::Lua::Win::VERSION

    at_exit do
      puts
      puts "Lua version #{luav}"
      puts "Rufus::Lua version #{rufv}"
      puts "Rufus::Lua::Win version #{gemv}"
    end
  end
end
