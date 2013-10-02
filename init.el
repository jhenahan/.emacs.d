(add-to-list 'load-path user-emacs-directory)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
(setq inhibit-splash-screen t)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(require 'dash)
(require 'dash-functional)
(require 'f)
(require 's)

(require 'tex-site)
(require 'better-defaults)

(require 'jhenahan-evil)
(require 'jhenahan-ac)
(require 'jhenahan-flycheck)
(require 'jhenahan-ui)
(require 'jhenahan-haskell)
(require 'jhenahan-ido)
(require 'jhenahan-modeline)
(require 'jhenahan-editor)
(require 'jhenahan-prolog)

(if (eq system-type 'darwin)
    (require 'jhenahan-osx))
