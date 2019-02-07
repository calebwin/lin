#lang s-exp rosette

(provide def let set min max get)

(define-syntax def
  (syntax-rules ()
    ; TODO handle other data types
    ((def expr) (define-symbolic expr integer?))))

(define-syntax let
  (syntax-rules ()
    ((let expr) (solver-assert (current-solver) (list expr)))))

(define-syntax set
  (syntax-rules ()
    ((set expr-a expr-b) (let (equal? expr-a expr-b)))))

(define-syntax min
  (syntax-rules ()
    ((min expr) (solver-minimize (current-solver) (list expr)))))

(define-syntax max
  (syntax-rules ()
    ((max expr) (solver-maximize (current-solver) (list expr)))))

(define-syntax get
  (syntax-rules ()
    ((get expr) (hash-ref (model (solver-check (current-solver))) expr))))