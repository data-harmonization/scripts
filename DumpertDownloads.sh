#!/bin/bash
alias odrive='python $(ls -d "$HOME/.odrive/bin/"*/ | tail -1)/odrive.py'
if [ $(ls -1 ~/Downloads/ | grep dump |  wc -l) -gt 0  ]
then
	echo "Moving the following files:"
	tree -iQf ~/Downloads/ | grep dumpert
	mv ~/Downloads/dumpert*.mp4 /Users/p.stapersma/odrive/Amazon\ Cloud\ Drive/Personal/Dumpert
	ls /Users/p.stapersma/odrive/Amazon\ Cloud\ Drive/Personal/Dumpert/*.mp4 | while read x; do odrive unsync "$x"; done
fi
