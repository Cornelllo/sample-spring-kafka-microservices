for branch in $(git branch -r | grep -v 'origin/master' | sed 's/origin\///');
do
    git push origin --delete $branch
done