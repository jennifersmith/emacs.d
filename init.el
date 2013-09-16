
(add-to-list 'load-path "~/.emacs.d/nyan-mode")
(load "nyan-mode.el")

(require 'package)

(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes (quote ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(markdown-command "/usr/local/bin/markdown")
 '(nrepl-popup-on-error t)
 '(nrepl-popup-stacktraces t)
 '(nrepl-popup-stacktraces-in-repl t)
 '(nyan-animate-nyancat t)
 '(nyan-mode t)
 '(nyan-wavy-trail t)
 '(tool-bar-mode nil)
 '(whitespace-style (quote (face tabs trailing lines space-before-tab empty space-after-tab tab-mark)))
 '(writeroom-width 120))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'whitespace-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(add-hook 'text-mode-hook 'column-number-mode)

(add-hook 'org-mode-hook 'visual-line-mode)

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t) 
(require 'ess-site)
