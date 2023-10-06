# Scripts
alias dirf='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias vim='nvim'
alias bat='batcat'
alias "?"='duck'
alias "??"='google'
alias ".."='cd ..'
alias "..."='cd ../../'
alias gpsup='git push --set-upstream origin "$(git symbolic-ref --short HEAD)"'
alias gc='grep -v -e " 1$" cover.out'

# one liner functions
function calc { echo "${1}"|bc -l; }

sources=(
	~/.aliases/.docker-aliases
	~/.aliases/.work-aliases
)

for i in "${sources[@]}"
do
        source_file $i
done

