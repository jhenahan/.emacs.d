(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

(menu-bar-mode 1)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'jhenahan-osx)
