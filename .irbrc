require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:SAVE_HISTORY] = 500
