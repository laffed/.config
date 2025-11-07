function avd --description 'open Android Emulator without Opening Android Studio'
  command emulator -list-avds | cat -n
  set -l avd (emulator -list-avds)
  read --prompt "echo 'Select AVD: ' " -l index
  if test $index -gt (count $avd)
    echo "Index Doesn't exist"
    return
  end
  echo "Selected $avd[$index] "
  command emulator -avd $avd[$index]
end
