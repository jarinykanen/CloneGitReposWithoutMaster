:: Simple git clone script for repos without master project
:: Requires proper SSH key (id_rsa) under C:\Users\USER\.ssh\
@echo off
SET gitDir=C:\git_tests\repos\
SET remoteGitAddr=ssh://pathtogitrepo
for /f %%l in (repos.txt) DO (
    mkdir "%gitDir%%%l"
    git clone %remoteGitAddr%%%l.git %gitDir%%%l
)