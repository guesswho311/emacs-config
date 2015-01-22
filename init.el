(add-to-list 'load-path (concat user-emacs-directory "/mine"))

(setenv "PATH" (concat (getenv "HOME") "/bin" ":"
                      "/usr/local/bin" ":"
                      "/usr/bin" ":"
                      "/bin" ":"
                      "/usr/sbin" ":"
                      "/sbin" ":"))

(setq exec-path (list (concat (getenv "HOME") "/bin")
                      "/usr/local/bin"
                      "/usr/bin"
                      "/bin"
                      "/usr/sbin"
                      "/sbin"))
(require 'mine-sbt)
(require 'mine-builtin)
(require 'mine-defuns)
(require 'mine-advice)
(require 'mine-bindings)
(require 'mine-desktop)
(require 'mine-pretty)
(require 'mine-os)
(require 'mine-eshell)
(require 'mine-isearch)
(if (require 'mine-pkgmgt)
    (require 'mine-load-custom))

(cd (getenv "HOME"))
(mine-normal-display)
