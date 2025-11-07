# Defined via `source`
function nv --wraps=nvim --description 'alias nv=nvim'
  if test (count $argv) -gt 0
    nvim $argv; 
  else
    nvim .;
  end
end
