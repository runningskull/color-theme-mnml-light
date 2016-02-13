(deftheme mnml-light)

;; A theme that adds as little as possible to the stock emacs theme.
;; Just enough to make it usable...


(let ((background "#fafafa")
      (text "#111")
      (folded "#aaa")
      (comment "#777777")
      (doc "#6a6a6a")
      (region "#c6e6ff")
      (cursor "#B6D6FD")
      (cursortxt "#444")
      (modeline-active "#d5d4d3")
      (modeline-inactive "#f2f2f2")
      (powerline-active1 "#c5c4c3")
      (powerline-active2 "#e2e1e0")
      (powerline-inactive "#f1f0ef"))

  (custom-theme-set-faces 
   'mnml-light

   ;; Built-in stuff (Emacs 23)
   `(default ((t (:background ,background :foreground ,text))))
   `(cursor ((t (:background ,cursor :foreground ,cursortxt))))
   `(region ((t (:foreground ,cursor :background ,region))))
   `(mode-line ((t (:background ,modeline-active))))
   `(modeline-inactive ((t (:background ,modeline-inactive))))

   ;; Comments
   `(font-lock-doc-face ((t (:foreground ,doc))))
   `(font-lock-comment-face ((t (:foreground ,comment :slant oblique))))
   `(font-lock-comment-delimeter-face ((t (:foreground ,comment :slant oblique))))

   ;; hideshow
   `(hs-face ((t (:background ,background :foreground ,folded :slant oblique))))
   `(hs-fringe-face ((t (:foreground "#828282" :background "#e2e2e2" :box (:line-width 1 :color "#f00")))))
   `(hideshowvis-hidable-face ((t (:foreground "#aeaeae" :box (:line-width 1 :color "#f00")))))

   ;; avy jump
   `(avy-lead-face ((t (:background "#3bafda" :foreground "white"))))
   `(avy-lead-face-0 ((t (:background "#3bafda" :foreground "white"))))
   `(avy-lead-face-1 ((t (:background "#3bafda" :foreground "white"))))

   ;; powerline/spaceline
   `(powerline-active1 ((t (:background ,powerline-active1 :foreground ,text))))
   `(powerline-active2 ((t (:background ,powerline-active2 :foreground ,text))))
   `(powerline-inactive1 ((t (:background ,powerline-inactive :foreground ,comment))))
   `(powerline-inactive2 ((t (:background ,powerline-inactive :foreground ,comment))))
   ))

(provide-theme 'mnml-light)

