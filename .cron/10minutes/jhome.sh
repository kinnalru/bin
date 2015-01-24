# for ssh-agent only
#ssh-add -l | grep -e "`ssh-keygen -lf ~/.ssh/id_rsa.pub | sed s/.pub//`" || ssh-add < /dev/null

#for gpg-agent(with ssh-agent emulation) no ssh-add needed

vcsh home commit -am "Auto commit `vcsh home config user.iam`"
vcsh_merge home "origin/master"
vcsh home pull
vcsh home push
