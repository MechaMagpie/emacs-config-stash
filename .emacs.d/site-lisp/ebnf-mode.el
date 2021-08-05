;;; ebnf-mode.el --- Highlight mode for Extended Backus-Naur Form

;; Copyright (C) 2011  Jeramey Crawford

;; Author: Jeramey Crawford <jeramey@antihe.ro>
;; Keywords: faces
;; URL: http://github.com/jeramey/ebnf-mode

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This major mode provides basic syntax highlighting for Extended
;; Backus-Naur Form metasyntax texts. For more information on what
;; EBNF is, consult Wikipedia:
;; <http://en.wikipedia.org/wiki/Extended_Backus-Naur_Form>

;;; Code:

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.ebnf\\'" . ebnf-mode))

(defvar ebnf-font-lock-defaults
  '((
  ("=" . font-lock-keyword-face)
  ("^[^ \t\n][^=]+" . font-lock-variable-name-face)
  ("['\"].*?['\"]" . font-lock-string-face)
  ("\\?.*\\?" . font-lock-negation-char-face)
  ("\\[\\|\\]\\|{\\|}\\|(\\|)\\||\\|,\\|;" . font-lock-type-face)
  ("[^ \t\n]" . font-lock-function-name-face)
  )))

(define-derived-mode ebnf-mode prog-mode "EBNF"
  "Major mode for EBNF metasyntax text highlighting."
  (setq font-lock-defaults ebnf-font-lock-defaults)
  (setq comment-start "(*")
  (setq comment-end "*)")
  )

(provide 'ebnf-mode)
;;; ebnf-mode.el ends here
