
# Ruby Collections

## Installing Ruby

### Windows

There's an installer, it's easy.
http://rubyinstaller.org/

### Mac

Newer macs ship with a usable version of Ruby.

Try `ruby -v` in a terminal window, and if it's 1.9.x or 2.x you're fine.

http://fbarrioscl.github.io/ruby/2016/04/21/rvm-5-configuracion.html

### Linux

https://www.ruby-lang.org/en/installation/

The first now we open our terminal and clone repository:

## Development

```
$ git remote add origin https://github.com/fbarriosCL/ruby_collections.git
```

go directory

```
$ cd ruby_collections/
```

And for this example we will execute

```
$ ruby computer.rb
```

What we are going to do is to know the benchmark of the collections:

```Array  Hash  Set  SortedSet```

for example: ['HP', 'acer', 'mac', 'HP', 'HP']

```
example for set
  0.000000   0.000000   0.000000 (  0.000017)
example for array or list
  0.000000   0.000000   0.000000 (  0.000010)
example for hash
  0.000000   0.000000   0.000000 (  0.000011)
example for tree_set
  0.000000   0.000000   0.000000 (  0.000013)
```
