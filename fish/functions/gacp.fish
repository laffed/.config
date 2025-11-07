function gacp --description 'git add all, commit arg, and push'
  argparse m/message u/upstream -- $argv

  command git add .

  if set -q _flag_message
    command git commit -m $argv[1] --no-verify
  else
    command git commit -m "." --no-verify
  end
  
  if set -q _flag_u
    command git push -u origin HEAD --no-verify 
  else 
    command git push --no-verify 
  end

end
