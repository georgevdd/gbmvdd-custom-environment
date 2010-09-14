(global-set-key [f3] 'find-file-at-point)

(load "~/lib/emacs/haskell-mode-2.4/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(server-start)
