;; Manufacturer Verification Contract
;; This contract validates legitimate luxury producers

(define-data-var admin principal tx-sender)

;; Map to store verified manufacturers
(define-map verified-manufacturers principal bool)

;; Error codes
(define-constant err-not-admin (err u100))
(define-constant err-already-verified (err u101))
(define-constant err-not-verified (err u102))

;; Check if caller is admin
(define-private (is-admin)
  (is-eq tx-sender (var-get admin)))

;; Add a new manufacturer
(define-public (add-manufacturer (manufacturer principal))
  (begin
    (asserts! (is-admin) err-not-admin)
    (asserts! (is-none (map-get? verified-manufacturers manufacturer)) err-already-verified)
    (ok (map-set verified-manufacturers manufacturer true))))

;; Remove a manufacturer
(define-public (remove-manufacturer (manufacturer principal))
  (begin
    (asserts! (is-admin) err-not-admin)
    (asserts! (is-some (map-get? verified-manufacturers manufacturer)) err-not-verified)
    (ok (map-delete verified-manufacturers manufacturer))))

;; Check if a manufacturer is verified
(define-read-only (is-verified-manufacturer (manufacturer principal))
  (default-to false (map-get? verified-manufacturers manufacturer)))

;; Transfer admin rights
(define-public (transfer-admin (new-admin principal))
  (begin
    (asserts! (is-admin) err-not-admin)
    (ok (var-set admin new-admin))))

