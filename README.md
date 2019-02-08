# lin
lin is a [Rosette](http://emina.github.io/rosette/)-based DSL for linear programming. Here's an example...
```racket
; declare variables
(def desirability)
(def supply)
(def cost)
(def price)
(def profit)

; constrain variables
(let (> price 0))
(let (> cost 0))
(let (equal? profit (+ (* 1 price) (* -1 cost))))
(let (> supply 0))

; set variables
(set desirability 90)
(set supply 50)
(set cost 5)

; maximize
(max profit)

; solution
(get price)
```
lin compiles your code to Rosette code applying one of [a variety of solvers](https://docs.racket-lang.org/rosette-guide/sec_solvers-and-solutions.html#%28def._%28%28lib._rosette%2Fquery%2Fcore..rkt%29._current-solver%29%29) to compute satisfiable solutions.
