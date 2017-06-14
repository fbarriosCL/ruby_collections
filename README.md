
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

And for the example of Benchmark we will execute

```
$ ruby computer.rb
```

What we are going to do is to know the benchmark of the collections:

```Set  Array  Hash  SortedSet```

For example: <Desktop: @id=1, @brand="Apple", @model="iMac Pro">
             <Notebook: @id=2, @brand="Apple Notebook", @model="iMacBook Pro">

```
  Example for Set
  USER-CPU   SYS-CPU    USER+SYS Elapsed
  0.000000   0.000000   0.000000 (  0.000832)

  Example for Array
  USER-CPU   SYS-CPU    USER+SYS Elapsed
  0.000000   0.000000   0.000000 (  0.000456)

  Example for Hash
  USER-CPU   SYS-CPU    USER+SYS Elapsed
  0.000000   0.000000   0.000000 (  0.000387)

  Example for SortedSet
  USER-CPU   SYS-CPU    USER+SYS Elapsed
  0.000000   0.000000   0.000000 (  0.000224)
```

And for the example of Add computer we will execute

```
$ ruby factory.rb
```

First ask about the type of computer
```
Enter any type computer:
notebook
```

Then ask about the brand of the computer
```
Enter any brand computer:
Apple
```

Finally ask about the model of the computer
```
Enter any model computer:
MacBook Pro
```

The answer will be
```
create object
The object(Notebook) is create with attributes:
id: 1
brand: Apple
model: MacBook Pro
```
