; publish.el - org-publish definition
; in support of `tuhdo.github.io' "Emacs Mini Manual"
;
; Warning: Performing the publication will overwrite any targets
;   already existing in the parent folder.
;
; Instructions:
;   M-x load-file path/to/publish.el (or otherwise evaluate this buffer)
;   Navigate to a buffer of the project
;   C-u org-publish-all
;
(setq org-publish-project-alist
  '(("orgfiles"
      :base-directory  "./"
      :base-extension "org"
      :publishing-directory "../"
      :publishing-function org-html-publish-to-html
      :headline-levels 3
      :section-numbers t
      :with-toc 1
      :html-head "<link rel=\"stylesheet\"
                   href=\"./static/worg.css\" type=\"text/css\"/>"
      :html-preamble t)

     ("images"
      :base-directory "./"
      :recursive      t
      :base-extension "jpg\\|gif\\|png"
      :publishing-directory "../"
      :publishing-function org-publish-attachment)

     ("other"
      :base-directory "./"
      :base-extension "css"
      :recursive      t
      :publishing-directory "../"
      :publishing-function org-publish-attachment)
     ("website" :components ("orgfiles" "images" "other"))))
