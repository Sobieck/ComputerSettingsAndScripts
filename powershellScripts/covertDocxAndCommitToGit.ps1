git config --global credential.helper wincred

$whatAreYourEditsAbout = read-host "What were your edits about?"

cd c:\docToGit

.\DocxToGit c:\github\lisasbook\ "When Doctor Becomes Patient v 2" .docx

cd c:\github\lisasbook\

git add .
git commit -m $whatAreYourEditsAbout
git push
