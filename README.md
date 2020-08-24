# ios-repo-template
This is a iOS template repo with the basic setup to build an iOS app. CI integration.

## Setup the initial repo

### Branch setup
- We use develop as our main branch
- Develop is blocked, no one has permision to push directly, you must do a pull request

### Initialize the Pod
- Add our private specs repo:
```
$ pod repo add POD_SPEC_REPO [POD_SPEC_REPO_URL]
```

- We should initialize the pod lib repo, run:
```
$ pod lib create [POD_NAME]
```

- Move the files generated under the_[POD-NAME]_ folder to the root directory of the repo. _Be careful, don't duplicate the `.git` folder_

- Edit the `[POD-NAME].podspec` file
- Check the `.podspec` file is valid:

```
$ pod lib lint <POD1_NAME>.podspec
```


### Travis setup
- You should give travis permission to read the repo
- Edit `.trvais.yml` changing _Template_ for _[POD-NAME]_.

