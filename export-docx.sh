#!/bin/sh
#
# 
# This script will use pandoc to generate docx files from the listed html files. Files must be included manually
#
# To use this file
# - add shebang:  '#!/bin/sh'
# - make executable: `chmod +x <filename>`
# - execute script: ./<filename>

# clean up any old files
pwd
rm -fr docx

# move into build directory
echo 'moving into build directory...'
cd book/_build/html

# clean up the old directory if it exists
echo 'cleaning up files...'
rm -fr docx
mkdir docx

# generate docx
echo 'generating docx files...'
pandoc -s index.html -o docx/index.docx
pandoc -s appendix-theory.html -o docx/appendix-theory.docx
pandoc -s conclusion.html -o docx/conclusion.docx
pandoc -s math-prereq.html -o docx/math-prereq.docx
pandoc -s motivating-example.html -o docx/motivating-example.docx
pandoc -s solution-process.html -o docx/solution-process.docx
pandoc -s worked-examples.html -o docx/worked-examples.docx

# move docx folder back to same folder as this script
echo 'moving files out of build directory...'
# mv docx ....
mv docx /mnt/c/projects/Code/eigenbooks/bayes-missing-manual
