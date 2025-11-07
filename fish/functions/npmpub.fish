function npmpub --description 'npm publish'
  argparse v/version -- $argv
  if set -q _flag_version
    command npm version $argv[1];
    and command npm publish --access public;
    return 0
  else 
    echo "No version specified [v/version]"
    return 1
  end
end

