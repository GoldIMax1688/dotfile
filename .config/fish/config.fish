function fish_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.shell_prompt.sh left
end

function fish_right_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.shell_prompt.sh right
end

alias 'gdb'='gdb -q'
alias 'cb'='xclip -selection clipboard'

function cxx
  clang++ --std=c++11 $argv
end

set DISPLAY :0
