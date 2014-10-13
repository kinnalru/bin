vcsh home commit -am "Auto commit `vcsh home config user.iam`"
vcsh_merge home "origin/master"
vcsh home pull -r
vcsh home push
