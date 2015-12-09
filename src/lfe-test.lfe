(defmodule lfe-test
  (export all))

(defun init (state)
  (rebar_api:debug "Initializing {lfe, test} ..." [])
  (let* ([opts '(#(name test)
                 #(module lfe-test)
                 #(namespace lfe)
                 #(bare true)
                 #(deps (#(default app_discovery)))
                 #(example "rebar3 lfe test [unit | test | integration]")
                 #(short_desc "A LFE rebar3 [l]test plugin.")
                 #(desc "TODO: an even longer description.")
                 #(opts ()))]
         [provider (providers:create opts)]
         [state1 (rebar_state:add_provider state provider)])
    (rebar_api:debug "Initialized {lfe, test} ..." [])
    `#(ok ,state1)))

(defun do (state)
  (rebar_api:console "It's happening!")
  `#(ok ,state))

(defun format_error (reason)
  (io_lib:format "LFE test error: ~p" `(,reason)))