(define (domain warehouse_robot)
  (:requirements :strips :typing)
  (:types location robot)
  (:predicates 
    (at ?r - robot ?l - location)
    (adjacent ?l1 ?l2 - location)
    (free ?r - robot)
  )
  (:action move
    :parameters (?r - robot ?from ?to - location)
    :precondition (and (at ?r ?from) (adjacent ?from ?to) (free ?r))
    :effect (and (not (at ?r ?from)) (at ?r ?to) (not (free ?r)))
  )
)

