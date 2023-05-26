(define-module (modotte-cardx)
  #:use-modules (guix packages)
  #:use-modules (guix download)
  #:use-modules (guix haskell-build-system)
  #:use-modules (guix licenses))

(define-public modotte-cardx
  (package
   (name "cardx")
   (version "0.2.0.0")
   (source (origin
            (method git-fetch)
            (uri "https://github.com/modotte/cardx.git")
            (branch "main")))
   (build-system haskell-build-system)
   (synopsis "An Uno like card game")
   (description "Play uno!")
   (home-page "https://github.com/modotte/cardx#README.md")
   (license bsd3)))
