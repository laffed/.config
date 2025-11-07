function ksk --wraps='tmux kill-server' --description 'alias ksk=tmux kill-server'
  tmux kill-server $argv; 
end
