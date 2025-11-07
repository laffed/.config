function ks --wraps='tmux kill-session' --description 'alias ks=tmux kill-session'
  tmux kill-session $argv; 
end
