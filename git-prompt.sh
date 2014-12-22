function git_color {
	local git_status="$(git status 2> /dev/null)"

	if [[ ! $git_status =~ "working directory clean" ]]; then
		echo -e $Red
	elif [[ $git_status =~ "Your branch is ahead of" ]]; then
		echo -e $Yellow
	elif [[ $git_status =~ "nothing to commit" ]]; then
		echo -e $Green
	else
		echo -e $Ochre
	fi
}

function git_branch {
	local git_status="$(git status 2> /dev/null)"
	local on_branch="On branch ([^${IFS}]*)"
	local on_commit="HEAD detached at ([^${IFS}]*)"

	if [[ $git_status =~ $on_branch ]]; then
		local branch=${BASH_REMATCH[1]}
		echo "($branch)"
	elif [[ $git_status =~ $on_commit ]]; then
		local commit=${BASH_REMATCH[1]}
		echo "($commit)"
	fi
}
