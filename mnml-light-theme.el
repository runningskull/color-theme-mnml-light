(deftheme mnml-light)

;; A theme that adds as little as possible to the stock emacs theme.
;; Just enough to make it usable...


(let ((background "#fafafa")
      (text "#111")
      (comment "#777777")
      (doc "#6a6a6a")
      (region "#c6e6ff")
      (cursor "#224466")
      (cursortxt "#eee")

      (modeline-active "#d2d1d0")
      (powerline-active1 "#c5c4c3")
      (powerline-active2 "#dcdbda")
      (modeline-inactive "#f2f2f2")
      (powerline-inactive "#f1f0ef")

      (spaceline-highlight-text "#2a2a2a"))

  (custom-theme-set-faces 
   'mnml-light

   ;; Built-in stuff (Emacs 23)
   `(default ((t (:background ,background :foreground ,text))))
   `(cursor ((t (:background ,cursor :foreground ,cursortxt))))
   `(hl-line ((t (:background "#f0f7fd"))))
   `(region ((t (:foreground ,cursor :background ,region))))
   `(mode-line ((t (:background ,modeline-active :box (:line-width 1 :color "#bbb" :style released-button) :font "Hack-10"))))
   `(modeline-inactive ((t (:background ,modeline-inactive :box (:line-width 1 :color "#eaeaea") :font "Hack-10"))))
   `(vertical-border ((t (:background ,background :foreground "#aaa"))))

   ;; Comments
   `(font-lock-doc-face ((t (:foreground ,doc))))
   `(font-lock-comment-face ((t (:foreground ,comment :slant oblique))))
   `(font-lock-comment-delimeter-face ((t (:foreground ,comment :slant oblique))))

   ;; hideshow
   ;;`(hs-face ((t (:background "#eee" :foreground "#677" :slant oblique :box (:line-width -1 :color "#cfcfdf" :style released-button)))))
   `(hs-face ((t (:background "#fdfbdc" :foreground "#96893b" :weight bold :slant oblique :box (:line-width -1 :color "#a69e4a") :font "Hack-10"))))
   `(hs-fringe-face ((t (:foreground "#7b7b7b" :background "#dadada" :box (:line-width -1 :color "#f00")))))
   `(hideshowvis-hidable-face ((t (:foreground "#bbb" :box (:line-width 1 :color "#f00")))))

   ;; avy jump
   `(avy-lead-face ((t (:background "#3bafda" :foreground "white"))))
   `(avy-lead-face-0 ((t (:background "#3bafda" :foreground "white"))))
   `(avy-lead-face-1 ((t (:background "#3bafda" :foreground "white"))))

   ;; powerline/spaceline
   `(powerline-active1 ((t (:background ,powerline-active1 :foreground ,text))))
   `(powerline-active2 ((t (:background ,powerline-active2 :foreground ,text))))
   `(powerline-inactive1 ((t (:background ,powerline-inactive :foreground ,comment))))
   `(powerline-inactive2 ((t (:background ,powerline-inactive :foreground ,comment))))

   `(spaceline-evil-normal ((t (:background "#f39c12" :foreground ,spaceline-highlight-text))))
   `(spaceline-evil-insert ((t (:background "#2ecc71" :foreground ,text))))
   `(spaceline-evil-visual ((t (:background "#f1c40f" :foreground ,spaceline-highlight-text))))
   ))


(defun mnml-light--minibuffer ()
  (make-local-variable 'face-remapping-alist)
  (add-to-list 'face-remapping-alist '(default (:background "#e7e7e7" :font "Hack-11")))
  (add-to-list 'face-remapping-alist '(fringe (:background "#e7e7e7"))))

(add-hook 'minibuffer-setup-hook
          'mnml-light--minibuffer)

(provide-theme 'mnml-light)

