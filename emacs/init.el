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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("~/Orgs/work-list.org" "~/Orgs/individual.org" "~/gits/phd-rodolfo-jordao/progress/progress.org" "~/gits/forsyde-group/org/forsyde-kth.org")))
 '(package-selected-packages
   (quote
    (ox-reveal yasnippet use-package projectile org-ref minizinc-mode magit lsp-mode god-mode flycheck counsel auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
