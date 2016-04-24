class TestV < Minitest::Test
  def test_ver
    s=Rufus::Lua::State.new
    luav=s.eval 'return _VERSION'
    rufv=Rufus::Lua::VERSION
    gemv=Rufus::Lua::Win::VERSION

    at_exit do
      s = <<-EOT
        Lua version #{luav}
        Rufus::Lua version #{rufv}
        Rufus::Lua::Win version #{gemv}
      EOT
      s = s.gsub(/^\s+/, '')
      puts
      puts s
      AppVeyor::Worker.message 'Versions', s
    end
  end
end
