####################
# use for nomal gui mashine
#test -z "$TMUX" && tmux && exit
# ####################

####################
# use for cui only mashine
#
####################

#zmodload zsh/zprof && zprof

export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$HOME/usr/bin:$PATH
export PATH=$PATH:$HOME/usr/local/tools
export ZPLUG_HOME=$HOME/.zsh_plugins/zplug
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

for i ($HOME/.zshrc.d/*.zsh) source $i

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
REPORTTIME=3

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey ";5C" forward-word
bindkey ";5D" backward-word

#source ~/.zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(rbenv init -)"

if [ ~/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi

#echo "「私は確かにアニメが好きだし、エロゲーも超好き・・・
#ううん、愛してると言ってもいい！
#学校の友達といるのも楽しいよ。
#でもこっちも同じくらい好き！
#どっちかを選ぶなんて出来ない！
#両方好きで好きで堪らないのが私なの！」"

#if type zprof > /dev/null 2>&1; then
	#zprof | less
#fi
