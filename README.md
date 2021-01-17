# Tool Data Language (TDL)

TDL is a half-baked attempt by me to create a TOML-style data language 
roughly based on TCL but with heavy influence from Racket.
See [example.tdl](example.tdl) for a full example.

To create a key-value pairs
```
set b 32.5
set c false
```

Nothing special is needed for strings, though they need to be quoted
if they look like numbers or booleans
`set g hello\nthere`

To create a list
`set amounts list 10 33 18`

Create a hash
`set h hash a 2 b 3 c 33.5`

TCL $ evaluation is used to create nested data structures
`set h2 hash a $amounts b $b`

Variables with trailing understores aren't returned by the parser
```
set d_ 32.7
set h2 hash a $amounts d $d_
```



