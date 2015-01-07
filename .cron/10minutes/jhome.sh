ssh-add -l | grep -e "`ssh-keygen -lf ~/.ssh/id_rsa.pub | sed s/.pub//`" || ssh-add
vcsh home commit -am "Auto commit `vcsh home config user.iam`"
vcsh_merge home "origin/master"
vcsh home pull
vcsh home push
