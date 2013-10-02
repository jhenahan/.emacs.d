(require 'flymake)
(require 'flymake-cursor)

;; Engage!
(require 'nyan-mode)
(nyan-mode 1)
(setq nyan-bar-length 16
      nyan-wavy-trail t)

;; Unclutter the modeline
(require 'diminish)
(eval-after-load "yasnippet" '(diminish 'yas-minor-mode))
(eval-after-load "eldoc" '(diminish 'eldoc-mode))
(eval-after-load "rainbow-mode" '(diminish 'rainbow-mode))
(eval-after-load "paredit" '(diminish 'paredit-mode))
(eval-after-load "abbrev" '(diminish 'abbrev-mode))

(eval-after-load "clojure-mode"
  '(defadvice clojure-mode (after clj-rename-modeline activate)
     (setq mode-name "Clj")))
(eval-after-load "haskell-mode"
  '(defadvice haskell-mode (after haskell-rename-modeline activate)
     (setq mode-name "λ")))
(defadvice emacs-lisp-mode (after elisp-rename-modeline activate)
  (setq mode-name "ξLisp"))

(require 'smart-mode-line)
(if after-init-time (sml/setup)
  (add-hook 'after-init-hook 'sml/setup))
(display-time-mode 1)
(setq sml/mode-width 'full)

(provide 'jhenahan-modeline)
