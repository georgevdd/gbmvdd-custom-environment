;; Make pasting work the same in term-mode as elsewhere.
(defun universal-paste ()
  (interactive)
  (cond ((eq major-mode 'term-mode) (term-paste))
        (t (cua-paste nil))))
(define-key osx-key-mode-map (kbd "A-v") 'universal-paste)


(global-set-key [f3] 'find-file-at-point)

;; See http://sam.aaron.name/2010/02/09/hooking-supercollider-up-to-emacs-on-os-x.html
;; (push "/Applications/SuperCollider" exec-path)
;; (setenv "PATH" (concat "/Applications/SuperCollider:" (getenv "PATH")))
;; (add-to-list 'load-path "~/.emacs.d/vendor/supercollider/el")
;; (require 'sclang)
;; (custom-set-variables
;; '(sclang-auto-scroll-post-buffer t)
;; '(sclang-eval-line-forward nil)
;; '(sclang-help-path (quote ("/Applications/SuperCollider/Help")))
;; '(sclang-runtime-directory "~/.sclang/"))

(add-to-list 'load-path "~/.emacs.d/fb/")
(require 'fb_tramp)

(add-to-list 'load-path "~/.emacs.d/gtags/")
(require 'gtags)

;; (load "~/lib/emacs/haskell-mode-2.8.0/haskell-site-file")
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(setq tramp-syntax 'url)

(setq tramp-verbose 10)

;; Don't try to do VC on tramp files
(setq vc-ignore-dir-regexp
      (format "\\(%s\\)\\|\\(%s\\)"
              vc-ignore-dir-regexp
              tramp-file-name-regexp))

(server-start)
