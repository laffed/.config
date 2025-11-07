function take --description 'mkdir then cd into dir'
  command mkdir $argv[1]

  cd $argv[1]
end
