;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname flat) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;List-of-names
;It's a list- OF NAMES
;check excpects
(check-expect (contains-flatt? (cons "Findler" empty)) false)
(check-expect (contains-flatt? (cons "Flatt" empty)) true)
(check-expect
  (contains-flatt? (cons "Mur" (cons "Fish"  (cons "Find" empty))))
  false)
(check-expect
  (contains-flatt? (cons "A" (cons "Flatt" (cons "C" empty))))
  true)
;Is "flatt on a list of names"?
(define (contains-flatt? l) false)
