for chapter in `find . -name chapter_* -type d`
do
  echo "running chapter: $chapter tests..."
  (cd $chapter; for test in `find . -name *Tests.hs`; do runhaskell $test; done);
done
