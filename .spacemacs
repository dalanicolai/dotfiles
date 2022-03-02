;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     kubernetes
     ;; epub
     helpful
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     emacs-lisp
     (git :variables magit-repository-directories '(("~/spacemacs" . 0) ("~/git" . 1)))
     github
     ;; helm
     (ivy :variables
          ivy-enable-advanced-buffer-information t
          ivy-enable-icons t)
     lsp
     markdown
     multiple-cursors
     (org :variables
          org-enable-roam-support t
          ;; (org :variables
     ;;      org-directory "~/Sync/org"
     ;;      org-default-notes-file "~/Sync/org/notes.org"

          diary-file "~/Sync/org/diary.org"
          org-agenda-files '(
                             ;; "~/Sync/org/google-calendar"
                             "~/Sync/org/contacts.org"
                             ;; "/home/dalanicolai/Sync/org/journal"
                             "/mnt/4EEDC07F44412A81/git/Masterthesis/TODOs.org"
                             "~/Sync/org/diary.org")
     ;;      ;; org-enable-notifications t
     ;;      ;; org-start-notification-daemon-on-startup t

     ;;      org-enable-org-journal-support t
     ;;      org-journal-enable-agenda-integration t
     ;;      org-journal-dir "~/Sync/org/journal/"
     ;;      org-journal-file-format "%Y%m%d.org"
     ;;      org-journal-file-type 'weekly

     ;;      org-enable-roam-support t
     ;;      org-roam-dailies-directory "daily/"
     ;;      org-roam-dailies-capture-templates '(("d" "default" entry
     ;;                                            "* %?"
     ;;                                            :target (file+head "%<%Y-%m-%d>.org"
     ;;                                                               "#+title: %<%Y-%m-%d>\n")))

     ;;      org-enable-templated-html-support t
     ;;      org-enable-github-support t
     ;;      ;; org-enable-templated-html-support t
     ;;      org-enable-reveal-js-support t

          org-enable-org-contacts-support t
          org-contacts-files '("~/Sync/org/contacts.org")

     ;;      org-capture-templates '(("c" "Contacts" entry (file "~/Sync/org/contacts.org")
     ;;                               "* %(org-contacts-template-name)
     ;;      :PROPERTIES:
     ;;      :EMAIL: %(org-contacts-template-email)
     ;;      :PHONE:
     ;;      :ALIAS:
     ;;      :NICKNAME:
     ;;      :IGNORE:
     ;;      :ICON:
     ;;      :NOTE:
     ;;      :ADDRESS:
     ;;      :BIRTHDAY:
     ;;      :END:")))

     ;; org-roam
     ;; (orgwiki :variables
          ;;          org-wiki-location "~/Sync/org/wiki"
          )

     (shell :variables
            shell-default-shell 'vterm
            spacemacs-vterm-history-file-location "~/.bash_history"
            shell-default-height 30
            shell-default-position 'bottom)

     spell-checking
     syntax-checking
     version-control
     treemacs

     ;; eww

     (latex :variables latex-view-pdf-in-split-window t)
     pdf
     djvu

     (calibre :variables
              calibredb-root-dir "~/Calibre Library"
              calibredb-add-delete-original-file "yes"
              calibredb-download-dir "~/Downloads"
              calibredb-fetch-covers "yes"
              calibredb-show-entry-switch 'switch-to-buffer-other-window
              calibredb-show-results t
              calibredb-title-width 84
              calibredb-author-width 25
              calibredb-tag-width 14
              calibredb-comment-width 32)
     (bibtex :variables
             bibtex-dialect 'biblatex
             bibtex-enable-ebib-support t
             bibtex-files '("/mnt/4EEDC07F44412A81/jabref/main/main.bib")
             ebib-default-directory "/mnt/4EEDC07F44412A81/jabref/main/files"
             ebib-preload-bib-files bibtex-files
             ebib-file-search-dirs '("/mnt/4EEDC07F44412A81/jabref/main/files")
             ebib-import-directory "/mnt/4EEDC07F44412A81/jabref/main/files")
     toc

     c-c++
     (python :variables python-backend 'lsp python-lsp-server 'pylsp)
     julia
     javascript
     rust
     (scheme :variables
               scheme-implementations '(guile))
     json
     (yaml :variables yaml-enable-lsp t)
     html

     csv

     jupyter
     ipython-notebook

     fasd

     ;; eaf

     info

     ;; themes-megapack
     )


   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages
   '(
     sx
     ;; tree-sitter
     ;; tree-sitter-langs

     (pdf-continuous-scroll-mode :location (recipe
                                            :fetcher github
                                            :repo "dalanicolai/pdf-continuous-scroll-mode.el"))

     (mediator :location (recipe
                          :fetcher github
                          :repo "dalanicolai/mediator"))
     ;; (libyaml :location "~/git/emacs-libyaml")
     yaml

     sketch-mode

     processing-mode
     parrot
     adaptive-wrap

     ox-jekyll-md

     )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(org-ref)

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; Scale factor controls the scaling (size) of the startup banner. Default
   ;; value is `auto' for scaling the logo automatically to fit all buffer
   ;; contents, to a maximum of the full image height and a minimum of 1 line
   ;; height. If set to a number (int or float) it is used as a constant scaling
   ;; factor for the default logo size.
   dotspacemacs-startup-banner-scale 'auto

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'lisp-interaction-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   dotspacemacs-default-font '("Source Code Pro"
                               :size 10.0
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server t

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Show trailing whitespace (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first.")

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump.")


(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  (defun pdf-load ()
    (interactive)
    (let ((dir "~/git/pdf-tools/lisp/"))
      (load (concat dir "pdf-scroll.el"))
      (load (concat dir "pdf-view.el"))
      (load (concat dir "pdf-isearch.el"))
      (load (concat dir "pdf-util.el"))
      (load (concat dir "pdf-annot.el"))
      (load (concat dir "pdf-debug.el"))
      (load-library "pdf-tools")))

  (setq-default frame-title-format
                '("Spacemacs " (:eval (number-to-string emacs-major-version)) " @ " user-emacs-directory))

  ;; (use-package sx
  ;;   :defer t
  ;;   :init
  ;;   ;; (add-to-list 'evil-emacs-state-modes 'sx-question-list-mode)
  ;;   (add-to-list 'evil-buffer-regexps '("\\*sx\\*" . emacs)))

  (evil-global-set-key 'normal "J" 'evil-scroll-page-down)
  (evil-global-set-key 'normal "K" 'evil-scroll-page-up)
  (evil-global-set-key 'motion "J" 'evil-scroll-page-down)
  (evil-global-set-key 'motion "K" 'evil-scroll-page-up)
  (evil-global-set-key 'normal "\C-f" 'evil-join)
  (evil-global-set-key 'normal "\C-b" 'spacemacs/evil-smart-doc-lookup)

  (global-set-key (kbd "s-j") 'windmove-down)
  (global-set-key (kbd "s-k") 'windmove-up)

  (evil-global-set-key 'insert (kbd "C-l") 'right-char)
  (evil-global-set-key 'insert (kbd "C-h") 'left-char)

  (evil-define-key 'insert emacs-lisp-mode-map
    (kbd "C-<return>") 'sp-up-sexp
    (kbd "C-,") 'sp-backward-symbol
    (kbd "C-.") 'sp-forward-symbol)

  (spacemacs/set-leader-keys "ww" 'ace-window)

  (defun spacemacs/delete-other-buffer-and-window ()
    (interactive)
    (spacemacs/ace-delete-window t))
  (spacemacs/set-leader-keys "bo" 'spacemacs/delete-other-buffer-and-window)

  ;; (evil-global-set-key 'normal (kbd "C-e") 'calc-embedded)

  (with-eval-after-load 'org
    (progn
      ;; (add-to-list 'org-babel-load-languages '(julia . t) t)
      (add-to-list 'org-babel-load-languages '(jupyter . t) t)))

  (defun notes ()
    (interactive)
    (find-file "~/Documents/notes/main.org"))
  (spacemacs/set-leader-keys "aon" 'notes)

  (defun my-print-wrap ()
    (interactive)
    (evil-lisp-state-wrap)
    (insert "print "))

  (defun my-print-unwrap ()
    (interactive)
    (evil-lisp-state-sp-unwrap-sexp)
    (delete-char 6))

  (spacemacs/set-leader-keys-for-major-mode 'emacs-lisp-mode "p" 'my-print-wrap)
  (spacemacs/set-leader-keys-for-major-mode 'emacs-lisp-mode "P" 'my-print-unwrap)

  (ivy-add-actions
   t
   '(("m" mediator-open-file "mediator-open")))

  (setq auto-mode-alist (seq-remove (lambda (x) (eq (cdr x) 'pdf-view-mode)) auto-mode-alist))
  (setq auto-mode-alist (seq-remove (lambda (x) (eq (cdr x) 'djvu-dummy-mode)) auto-mode-alist))
  (setq magic-mode-alist nil)

  (setq paradox-github-token
        (cadr (auth-source-user-and-password "api.github.com" "dalanicolai^paradox")))
  )


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default))
 '(doc-view-continuous t)
 '(doc-view-full-continuous t)
 '(doc-view-resolution 300)
 '(doc-view-scale-internally t)
 '(ebib-file-associations '(("pdf") ("ps" . "gv")))
 '(edebug-all-defs nil nil (edebug))
 '(edebug-all-forms nil)
 '(edebug-print-length 200)
 '(edebug-trace nil)
 '(evil-want-Y-yank-to-eol nil)
 '(evil-want-fine-undo t)
 '(geiser-guile-binary "guile2.2")
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(isearch-lazy-highlight nil)
 '(max-lisp-eval-depth 800)
 '(org-fontify-done-headline nil)
 '(org-fontify-todo-headline nil)
 '(org-format-latex-options
   '(:foreground default :background default :scale 1.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-jekyll-md-use-todays-date nil)
 '(package-archive-upload-base "/home/dalanicolai/local-package-archive")
 '(package-selected-packages
   '(geiser-guile geiser kubernetes-tramp kubernetes-evil kubernetes magit-popup nov esxml kv helpful elisp-refs yaml-mode exec-path-from-shell grip-mode github-search github-clone gh marshal logito pcache counsel-notmuch notmuch ox-jekyll-md symbol-overlay org-ref org-mime lsp-ui live-py-mode jupyter evil-collection eaf define-word auto-highlight-symbol all-the-icons-ivy-rich diminish yasnippet-snippets yapfify xterm-color ws-butler writeroom-mode winum which-key wgrep web-mode web-beautify vterm volatile-highlights vi-tilde-fringe uuidgen use-package undo-tree treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil toml-mode toc-org toc-mode texfrag terminal-here tagedit symon sx string-edit sphinx-doc spaceline-all-the-icons smex smeargle slim-mode sketch-mode shell-pop scss-mode sass-mode ron-mode restart-emacs rainbow-delimiters racer quickrun pytest pyenv-mode pydoc py-isort pug-mode processing-mode prettier-js popwin poetry pippel pipenv pip-requirements pdf-view-restore pdf-continuous-scroll-mode pcre2el password-generator parrot paradox ox-ipynb overseer orgit-forge org-vcard org-superstar org-roam org-rich-yank org-projectile org-present org-pomodoro org-download org-contrib org-cliplink open-junk-file npm-mode nose nodejs-repl nameless multi-term multi-line mmm-mode mediator markdown-toc macrostep lsp-python-ms lsp-pyright lsp-origami lsp-latex lsp-julia lsp-ivy lorem-ipsum livid-mode link-hint julia-repl json-reformat json-navigator json-mode js2-refactor js-doc ivy-yasnippet ivy-xref ivy-rtags ivy-purpose ivy-hydra ivy-bibtex ivy-avy inspector info+ indent-guide importmagic impatient-mode hybrid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-make google-translate google-c-style golden-ratio gnuplot gitignore-templates git-timemachine git-modes git-messenger git-link gh-md gendoxy fuzzy font-lock+ flyspell-correct-ivy flycheck-ycmd flycheck-rust flycheck-rtags flycheck-pos-tip flycheck-package flycheck-elsa flx-ido fasd fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-easymotion evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emr emmet-mode elisp-slime-nav ein editorconfig ebib dumb-jump drag-stuff dotenv-mode djvu3 djvu disaster dired-quick-sort devdocs dap-mode cython-mode csv-mode cpp-auto-include counsel-projectile counsel-css company-ycmd company-web company-rtags company-reftex company-math company-c-headers company-auctex company-anaconda column-enforce-mode clean-aindent-mode centered-cursor-mode ccls cargo calibredb blacken auto-yasnippet auto-dictionary auto-compile auctex-latexmk aggressive-indent adaptive-wrap ace-link ac-ispell))
 '(paradox-github-token t)
 '(pdf-info-restart-process-p 'ask)
 '(pdf-scroll-page-separation-height 5)
 '(pdf-tools-enabled-modes nil)
 '(pdf-view-display-as-scroll t)
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(swiper-action-recenter t)
 '(warning-minimum-log-level :debug))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-parentheses-highlight ((nil (:weight ultra-bold))) t)
 '(trailing-whitespace ((t (:background "dim gray")))))
)
