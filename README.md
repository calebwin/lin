# lin
lin is a [Rosette](http://emina.github.io/rosette/)-based DSL for linear programming. Here's an example...
```racket
#lang s-exp rosette

(require "./lin.rkt")

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
