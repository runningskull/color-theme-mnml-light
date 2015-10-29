(deftheme mnml-light)

(let ((background "#fafafa")
      (text "#111")
      (folded "#aaa")
      (comment "#777")
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
   `(font-lock-comment-face ((t (:foreground ,comment :slant oblique))))
   `(font-lock-comment-delimeter-face ((t (:foreground ,comment :slant oblique))))

   ;; hideshow-vis
   `(hs-face ((t (:background ,background :foreground ,folded :slant oblique :box (:line-width 1 :color ,folded)))))

   ;; avy jump
   `(avy-lead-face ((t (:background "#3bafda" :foreground "white"))))
   `(avy-lead-face-0 ((t (:background "#3bafda" :foreground "white"))))
   `(avy-lead-face-1 ((t (:background "#3bafda" :foreground "white"))))

   ;; powerline
   `(powerline-active1 ((t (:background ,powerline-active1 :foreground ,text))))
   `(powerline-active2 ((t (:background ,powerline-active2 :foreground ,text))))
   `(powerline-inactive1 ((t (:background ,powerline-inactive :foreground ,comment))))
   `(powerline-inactive2 ((t (:background ,powerline-inactive :foreground ,comment))))

   ;; auto dim other buffers
   `(auto-dim-other-buffers-face ((t (:foreground "#676869"))))
   ))

(provide-theme 'mnml-light)

