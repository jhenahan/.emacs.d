(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

(require 'linum-relative)
(global-linum-mode 1)
(setq linum-relative-current-symbol "")

(require 'speedbar)
(require 'sr-speedbar)

(require 'multi-term)
(setq multi-term-program "/opt/boxen/homebrew/bin/fish")

(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

(provide 'jhenahan-editor)
