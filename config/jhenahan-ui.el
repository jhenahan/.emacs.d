(defadvice load-theme  
  (before theme-dont-propagate activate) 
  (mapc #'disable-theme custom-enabled-themes))
(setq calendar-location-name "Winooski, VT")
(setq calendar-latitude 44.50)
(setq calendar-longitude -73.18)

;(require 'moe-theme-switcher)
(require 'theme-changer)
(change-theme 'moe-light 'moe-dark)

(defalias 'yes-or-no-p 'y-or-n-p)

(scroll-bar-mode 0)
(tool-bar-mode 0)

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-14"))

(require 'unicode-fonts)
(unicode-fonts-setup)

(provide 'jhenahan-ui)
