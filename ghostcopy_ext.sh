#!/bin/sh
mkdir ghostcopy

for dir in .
do
    (
      for i in *.mp3
      do
           touch ghostcopy/"$i"
           if [ $? -ne 0 ]
           then
              echo "failed to touch '$1' "
           fi
      done
    )
done

cd ghostcopy/

for f in *.mp3; do
    mv -- "$f" "${f%.mp3}.jpg"
done
