(require 'evil-leader)
(require 'evil)
(require 'evil-numbers)
(require 'paredit)
(require 'evil-paredit)
(require 'surround)
(require 'undo-tree)

(setq evil-leader/in-all-states t)
(evil-leader/set-leader ",")
(evil-mode nil)
(global-evil-leader-mode 1)
(evil-mode 1)
(setq evil-default-cursor t)

(global-surround-mode)
(add-to-list 'surround-operator-alist
             '(evil-paredit-change . change))
(add-to-list 'surround-operator-alist
             '(evil-paredit-delete . delete))
(add-hook 'prog-mode-hook 'paredit-mode)
(add-hook 'prog-mode-hook 'evil-paredit-mode)
(add-hook 'text-mode-hook 'paredit-mode)
(add-hook 'text-mode-hook 'evil-paredit-mode)

(define-key evil-ex-map "e " 'ido-find-file)
(define-key evil-ex-map "w " 'ido-write-file)
(define-key evil-ex-map "b " 'ido-switch-buffer)

(global-set-key (kbd "C-a") 'evil-numbers/inc-at-pt)

(provide 'jhenahan-evil)
