for d in `seq 400 -1 0`;
do
  dt=`date -R -d "-${d} days"`
  echo "-" $dt >> README.md
  git add README.md
  GIT_COMMITTER_DATE="$dt" git commit -m "commit at $dt"
  GIT_COMMITTER_DATE="$dt" git commit --amend --date="$dt" -m "commit at $dt"
done

