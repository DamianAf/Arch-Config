function pls --wraps='sudo alias --save pls "sudo $history[1]"' --description 'alias pls sudo alias --save pls "sudo $(fc -ln -1)"'
    sudo alias --save pls "sudo $history[1]" $argv
end
