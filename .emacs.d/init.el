(require 'package)
(fset 'package-desc-vers 'package--ac-desc-version)
(package-initialize)
  
;; HTTP
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t)

;; 言語設定
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; "yes or no" の選択を "y or n" にする
(fset 'yes-or-no-p 'y-or-n-p)
;; 対応する括弧をハイライト
(show-paren-mode 1)
;; tabサイズ
(setq default-tab-width 4)
;; タイトルにフルパス表示
(setq frame-title-format "%f")
;; 大文字・小文字を区別しない
(setq case-fold-search t)
;; テーマを有効化
(load-theme 'zenburn t)
;; C-hで一文字削除
(global-set-key "\C-h" 'delete-backward-char)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit zenburn-theme))))

;; magit設定
(defalias 'magit 'magit-status)
(global-set-key "\C-xg" 'magit-status)


