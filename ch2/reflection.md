# Chapter 2 Reflection
This was after the exercises.

This was a nice slice of humble pie!

I'm a bit ashamed of how long it took me to figure out how to create an alternative program to solve the eight queen problem. I knew I didn't want to go the super naive nested for loop route. I feel pretty comfortable with recursion, but here I couldn't visualize what was needed. At first I imagined just changing one number at a time but I did so in a way that kept the other numbers as 1. Granted, I was a bit distracted since I was watching something while coding, but still. I am glad I pushed through and did it though.

I'm curious on how others solved this! I'm sure there's probably an easier way than what I did.

## What I learned that wasn't in the text
### A more granular printing mechanism
Use `io.write` instead of `print` to not automatically add a newline.

Example:
```lua
print('This will have a new line with it')
io.write('This will not have ')
io.write('a')
io.write(' new line.')
io.write('until you specify so\n')
```

### Boolean not
If you want to **negate** a value, use `not`.
If you're doing a comparison and want to say **not equal**, use `~=`.

Example:
```lua
if not false then
  print('the only thing better than "not false" is "if true"')
end

if 'cake' ~= 'lie' then
    print('Oh thank goodness')
end
```

### Debugging with Croissant
First off, [croissant](https://github.com/giann/croissanthttps://github.com/giann/croissant) is dope.

To debug a file with it:
- start croissant with the file: `croissant <file> -d`
- add a breakpoint: `b <line-to-break-on>`
- continue until a breakpoint is met: `c`

To get help or see what else is available: `help`

### Finding the count of items in a table
To **find the length of a table** use `#<table>`.

For example:
```lua
my_table = { 1, 2, 3 }
print(#my_table) -- 3
```

### For loops
This might sound dumb but I was unaware of a for loop syntax that didn't use `pairs` or `ipairs`. The syntax is:
```lua
for <var>=<start-val>, <end-val>, <how-much-to-increment-per-step> do
  -- other code
end
```

### Function declaration order
Lua is kind of like JavaScript where a function needs to be declared before it is used.

### The difference between `pairs` and `ipairs`
Use `pairs` when either:
- the keys are non-numerical
- you don't care about the order that key/value pairs are presented

`ipairs` relies on numerical indices in a table. This means `ipairs` can **maintain the order of entries** whereas `pairs` can't.
