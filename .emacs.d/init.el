(require 'package)
  
;; HTTP
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t)

(fset 'package-desc-vers 'package--ac-desc-version)
 
(package-initialize)

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

