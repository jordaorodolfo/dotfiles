(require 'package)

;; define the package repos
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("melpa" . "https://melpa.milkbox.net/packages/")))
;; some crazy bug
;; correction here https://emacs.stackexchange.com/questions/51721/failed-to-download-gnu-archive
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; start processing pacakages
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; load the actual literate org file that contains the configuration
(require 'org)
(org-babel-load-file "~/.emacs.d/config.org")

