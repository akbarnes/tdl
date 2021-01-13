;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 2. Variables
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; You can create a variable using define
;; a variable name can use any character except: ()[]{}",'`;#|\
(define some-var 5)
some-var ; => 5

;;; Numbers
9999999999999999999999 ; integers
#b111                  ; binary => 7
#o111                  ; octal => 73
#x111                  ; hexadecimal => 273
3.14                   ; reals
6.02e+23
1/2                    ; rationals
1+2i                   ; complex numbers

;;; Strings are fixed-length array of characters.
"Hello, world!"
"Benjamin \"Bugsy\" Siegel"   ; backslash is an escaping character
"Foo\tbar\41\x21\u0021\a\r\n" ; includes C escapes, Unicode
"λx:(μα.α→α).xx"              ; can include Unicode characters

;; Structs
; By default, structs are immutable
(struct dog (name breed age))
(define my-pet
  (dog "lassie" "collie" 5))

;;; Pairs (immutable)
;; `cons' constructs pairs, `car' and `cdr' extract the first
;; and second elements
(cons 1 2) ; => '(1 . 2)

;; Lists are linked-list data structures, made of `cons' pairs and end
;; with a `null' (or '()) to mark the end of the list
(cons 1 (cons 2 (cons 3 null))) ; => '(1 2 3)
;; `list' is a convenience variadic constructor for lists
(list 1 2 3) ; => '(1 2 3)
;; a quote can also be used for a literal list value
'(1 2 3) ; => '(1 2 3)

;;; Vectors

;; Vectors are fixed-length arrays
#(1 2 3) ; => '#(1 2 3)

;; Create an immutable hash table (mutable example below)
(define m (hash 'a 1 'b 2 'c 3))