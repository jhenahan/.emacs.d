(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-modes 'php+-mode)
(add-to-list 'ac-modes 'haskell-mode)

(ac-flyspell-workaround)

(setq ac-auto-start 3)
(setq ac-auto-show-menu 0.5)

(provide 'jhenahan-ac)
