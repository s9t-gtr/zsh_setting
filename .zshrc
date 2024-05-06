# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


alias ls='ls -FG'
alias ll='ls -alFG'
alias ccwww='cc -Wall -Wextra -Werror'
alias cppwww='c++ -Wall -Wextra -Werror'
alias norm='norminette -R CheckForbiddenSourceHeader'
alias normh='norminette -R CheckDefine'
alias code='open -a /Applications/Visual\ Studio\ Code.app/'
alias code42='cd ~/Developer/42cursus/'
alias atcoder='cd ~/Developer/atcoder/bootCamp/'


alias gaa='git add -A'
alias gcm='git commit -m'
#alias gcm='git commit -m "$*"'
alias gp='git push'
alias camera='python3 /Users/szkt_tenet/Developer/camera/camera.py'
function chpwd(){
	ls
}
#export PATH=$PATH:/Users/szkt_tenet/Library/Python/3.9/bin

