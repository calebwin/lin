#lang s-exp rosette

(require "./lin.rkt")

; variables declarations
(def desirability)
(def supply)
(def cost)
(def price)
(def profit)

; variable relationships
(let (> price 0))
(let (> cost 0))
(let (equal? profit (+ (* 1 price) (* -1 cost))))
(let (> supply 0))

; set decision variables
(set desirability 90)
(set supply 50)
(set cost 5)

; define objective
(max profit)

; get variable
(get profit)
