(define-module (cardx)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix build-system haskell)
  #:use-module (guix download)
  #:use-module (guix git-download))

(define-public cardx
  (package
   (name "cardx")
   (version "v0.2.0.0")
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  (url "https://github.com/modotte/cardx")
                  (commit version)))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1ny3i9gnxz5xv10qfsisg62jm9akipd2y885g53ndrgmsbcr2b81"))))
   (build-system haskell-build-system)
   (arguments `(#:tests? #f))
   (synopsis "An Uno like card game")
   (description "Play uno!")
   (home-page "https://github.com/modotte/cardx#README.md")
   (license bsd-3)))
