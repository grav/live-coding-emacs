;; Here is the root of your personal configs.
;; Either place config straight in here,
;; such as this colour theme (feel free to change it to your own favourite theme)

;; use blackbored colour theme
(load-file (concat dotfiles-lib-dir "blackbored.el"))
(color-theme-blackbored)

;; load elpa and add marmalade packages
(load-file (concat dotfiles-dir "package.el"))
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; the homebrew emacs supports full screen
(if  (fboundp 'ns-toggle-fullscreen)
    (ns-toggle-fullscreen))

;;Or load external files such as this bindings file:
(load-dotfile "config/bindings.el")
