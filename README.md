# mruby-loadavg   [![Build Status](https://travis-ci.org/t-tonchim/mruby-loadavg.svg?branch=master)](https://travis-ci.org/t-tonchim/mruby-loadavg)
Loadavg class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 't-tonchim/mruby-loadavg'
end
```
## example
```ruby
p Loadavg.hi
#=> "hi!!"
t = Loadavg.new "hello"
p t.hello
#=> "hello"
p t.bye
#=> "hello bye"
```

## License
under the MIT License:
- see LICENSE file
