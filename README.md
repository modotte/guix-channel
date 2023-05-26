# guix-channel

My personal (and staging level) packages channel for Guix.

## Adding to your channel list

```scheme
(cons* (channel
       (name 'modotte-channel)
       (url "https://github.com/modotte/guix-channel")
       (branch "main"))
      %default-channels)
```
