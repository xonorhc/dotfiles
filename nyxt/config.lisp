; (define-configuration browser
;   ((theme
;     (make-instance 'theme:theme :background-color "black"
;                    :action-color "#37a8e4" :primary-color "#808080"
;                    :secondary-color "lightgray" :text-color
;                    "darkgray" :contrast-text-color "black")
;     :doc
;     "You can omit the colors you like in default theme, and they will stay as they were.")))

(define-configuration buffer
  ((default-modes
    (pushnew 'nyxt/mode/vi:vi-normal-mode %slot-value%))))

(defvar *my-search-engines*
  (list
   '("google" "https://google.com/search?q=~a" "https://google.com")
   )
  "List of search engines.")

(define-configuration context-buffer
  "Go through the search engines above and make-search-engine out of them."
  ((search-engines
    (append %slot-default%
            (mapcar
             (lambda (engine) (apply 'make-search-engine engine))
             *my-search-engines*)))))

;; (define-configuration (web-buffer)
;;   ((default-modes
;;     (pushnew 'nyxt/mode/reduce-tracking:reduce-tracking-mode %slot-value%))))

;; (define-configuration (web-buffer)
;;   ((default-modes (pushnew 'nyxt/mode/blocker:blocker-mode %slot-value%))))

;; (defmethod customize-instance ((buffer buffer) &key)
;;   (setf (slot-value buffer 'default-modes)
;;           '(nyxt/mode/no-image:no-image-mode)))

;; (defmethod customize-instance ((browser browser) &key)
;;   (setf (slot-value browser 'restore-session-on-startup-p) nil))
