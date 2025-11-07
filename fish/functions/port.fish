function port --description 'sudo lsof -i :<port>'
  argparse p/port -- $argv

  if set -q _flag_port
    command sudo lsof -i :$argv[1]
  else 
    echo 'Provide port number with -p or --port'
    return
  end
end
