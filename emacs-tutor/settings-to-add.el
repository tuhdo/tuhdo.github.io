(setq gc-cons-threshold 50000000)       ;; only activate garbage collection every 50MB to improve performance
(setq                                   ;; or you can set multiple values to multiple variables
 inhibit-startup-message t
 kill-ring-max 5000                     ;; increase kill ring up to 5000 entries before it pops the oldest one out
 mark-ring-max 5000                     ;; increase kill ring up to 5000 entries before it pops the oldest one out
 require-final-newline t                ;; auto add newline at the end of file
 column-number-mode t                   ;; show the column number
 default-major-mode 'text-mode          ;; use text mode per default
 mouse-yank-at-point t                  ;; middle click with the mouse yanks at point
 history-length 250                     ;; default is 30
 locale-coding-system 'utf-8            ;; utf-8 is default
 tab-always-indent 'complete            ;; try to complete before identing
 tab-width 4
 confirm-nonexistent-file-or-buffer nil ;; don't ask to create a buffer
 vc-follow-symlinks t                   ;; follow symlinks automatically
 recentf-max-saved-items 5000           ;; same up to 5000 recent files
 indicate-buffer-boundaries 'left       ;fringe markers
 split-height-threshold 110             ;more readily split horziontally
 enable-recursive-minibuffers t
 custom-unlispify-menu-entries nil      ;M-x customize should not cripple menu entries
 custom-unlispify-tag-names nil         ;M-x customize should not cripple tags
 show-paren-delay 0
 view-read-only t
 )
