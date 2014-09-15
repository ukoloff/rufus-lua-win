# Rufus::Lua::Win

[![Gem Version](https://badge.fury.io/rb/rufus-lua-win.svg)](http://badge.fury.io/rb/rufus-lua-win)

Provides Lua binary on Windows.

Embedding Lua into Ruby on Windows has two issues:

  1. There is no standard binary distributive for Lua
  2. Lua way of searching for libraries (rocks) fails

So, this gem embeds binary Lua (from LuaDist)
and patches package.path and package.cpath.

## Installation

You don't need to download, install or compile any Lua distribution.
Just add this line to your application's Gemfile:

    gem 'rufus-lua-win'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rufus-lua-win

## Usage

Add two lines to Gemfile (in *that* order):

    gem 'rufus-lua-win' if Gem.win_platform?
    gem 'rufus-lua'

Rufus::Lua::Win will setup environment variables, so Rufus::Lua could load.

If not using bundler, just:

```ruby
require 'rufus/lua/win' if Gem.win_platform?
require 'rufus/lua'

s=Rufus::Lua::State.new
s.eval "require 'lpeg'"
...
```

## Lua Path

Rufus::Lua::Win overrides standard Lua search paths to point to its own
Lua libraries.

Paths like `./?.lua` or `./?.dll` are excluded, since they are not very useful
in embedded environment.

If you like to `require` your own files inside Rufus::Lua - put them in
separate folder and add it to package.path (or package.cpath).

## Credits

  * [Lua](http://www.lua.org/)
  * [LuaDist](http://luadist.org/)
  * [Rufus::Lua](https://github.com/jmettraux/rufus-lua)

## See also

  * [Rufus::Lua::Moon](https://github.com/ukoloff/rufus-lua-moon) to use MoonScript
