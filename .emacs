;;语法高亮
(global-font-lock-mode t)

;;y/n==>yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;()
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;show time
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;;在标题栏提示当前位置
(setq frame-title-format "wqw@%b")

;;默认显示80列就换行
(setq default-fill-column 80)

;;窗口大小
(setq default-frame-alist
      '((height . 50) (width . 150)))

;;设置默认tab 4
(setq tab-width 4
indent-tabs-mode t
c-basic-offset 4)

;;不显示工具栏、滚动栏
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))

;;关闭系统提示音
(setq visible-bell t)

;;设定不产生备份文件
(setq make-back-up-files nil)

;;自动保存模式
(setq auto-save-mode nil)

;;不生成临时文件
;;（setq-default make-backup-files nil)

;;font
;;(set-fontset-font "fontset-default"
;;'gb18030 '("Microsoft YaHei"."unicode-bmp"))
;;(set-frame-font "consolas-14")

;;回车缩进
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

(global-linum-mode 'linum-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(setq yas/prompt-functions
      '(yas/prompt-functions yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))
(yas/global-mode 1)
(yas/minor-mode-on)

(add-to-list 'load-path "~/.emacs.d")
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")	   
(put 'upcase-region 'disabled nil)

;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-deep-blue)
;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(send-mail-function (quote mailclient-send-it)))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )
