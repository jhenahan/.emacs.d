(defadvice load-theme
  (before theme-dont-propagate activate)
  (mapcar #'disable-theme custom-enabled-themes))
(load-theme 'graham)
(set-face-attribute 'default nil
                :family "DejaVu Sans Mono" :height 140)

(provide 'jhenahan-ui)
