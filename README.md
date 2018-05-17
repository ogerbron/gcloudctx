# gcloud-mp
[![Build Status](https://travis-ci.org/ogerbron/gcloud-mp.svg?branch=master)](https://travis-ci.org/ogerbron/gcloud-mp/)

gcloud-mp (gcloud Manage Project) is a tool to easily manage and switch between several gcloud project.

It is mainly based on a kubernetes bash tool named [kubectx](https://github.com/ahmetb/kubectx/) 
written by [ahmetb](https://github.com/ahmetb/). Thanks a lot for it! 

**gcloud-mp**
![gcloud-mp demo GIF](img/gcloud-mp-demo.gif)

### Usage
```
USAGE:
  gcloud-mp                   : list the projects
  gcloud-mp <NAME>            : switch to project <NAME>
  gcloud-mp -                 : switch to the previous project
  gcloud-mp <NEW_NAME>=<NAME> : rename project <NAME> to <NEW_NAME>
  gcloud-mp <NEW_NAME>=.      : rename current-project to <NEW_NAME>
  gcloud-mp -d <NAME>         : delete project <NAME> ('.' for current-project)
                                (this command won't delete the user/cluster entry
                                that is used by the project)

  gcloud-mp -h,--help         : show this message
```

Examples:
```sh
# Display gcloud projects
$ gcloud-mp
project1
project2
testing-project

# Switch project
$ gcloud-mp testing-project
Activated [testing-environments].

# Switch to previous project
$ gcloud-mp -
Activated [project1].

# Create alias for project1
$ gcloud-mp production=project1
Aliased "project1" as "production".

# Delete a project
$ gcloud-mp -d project2
Deleting project "project2"...
The following configurations will be deleted:
 - project2
Do you want to continue (Y/n)?  y

Deleted [project2].
```

`gcloud-mp` supports <kbd>Tab</kbd> completion on bash/zsh/fish shells to quickly type project names.

## Installation

### Linux/macOS

`gcloud-mp` is written in Bash, so you should be able to install
it to any POSIX environment that has Bash installed.

1. Download the `gcloud-mp` script somewhere in your `PATH` and make it executable
```bash
sudo curl -L https://raw.githubusercontent.com/ogerbron/gcloud-mp/master/gcloud-mp -o /usr/local/bin/gcloud-mp
sudo chmod +x /usr/local/bin/gcloud-mp
```
2. Install bash/zsh/fish [completion scripts](completion/) (e.g. for Ubuntu, copy the scripts to `/etc/bash_completion.d/`
and restart your terminal)
