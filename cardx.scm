(define-module (cardx)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix build-system haskell)
  #:use-module (guix download))

(define-public cardx
  (package
   (name "cardx")
   (version "0.2.0.0")
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  (url "https://github.com/modotte/cardx")
                  (commit version)))
            (file-name (git-file-name name version))))
   (build-system haskell-build-system)
   (synopsis "An Uno like card game")
   (description "Play uno!")
   (home-page "https://github.com/modotte/cardx#README.md")
   (license bsd-33)))
