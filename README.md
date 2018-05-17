# gcloudctx
[![Build Status](https://travis-ci.org/ogerbron/gcloudctx.svg?branch=master)](https://travis-ci.org/ogerbron/gcloudctx/)

gcloudctx (gcloud Manage Project) is a tool to easily manage and switch between several gcloud project.

It is mainly based on a kubernetes bash tool named [kubectx](https://github.com/ahmetb/kubectx/) 
written by [ahmetb](https://github.com/ahmetb/). Thanks a lot for it! 

**gcloudctx**
![gcloud-mp demo GIF](img/gcloudctx-demo.gif)

### Usage
```
USAGE:
  gcloudctx                   : list the projects
  gcloudctx <NAME>            : switch to project <NAME>
  gcloudctx -                 : switch to the previous project
  gcloudctx <NEW_NAME>=<NAME> : rename project <NAME> to <NEW_NAME>
  gcloudctx <NEW_NAME>=.      : rename current-project to <NEW_NAME>
  gcloudctx -d <NAME>         : delete project <NAME> ('.' for current-project)
                                (this command won't delete the user/cluster entry
                                that is used by the project)

  gcloudctx -h,--help         : show this message
```

Examples:
```sh
# Display gcloud projects
$ gcloudctx
project1
project2
testing-project

# Switch project
$ gcloudctx testing-project
Activated [testing-environments].

# Switch to previous project
$ gcloudctx -
Activated [project1].

# Create alias for project1
$ gcloudctx production=project1
Aliased "project1" as "production".

# Delete a project
$ gcloudctx -d project2
Deleting project "project2"...
The following configurations will be deleted:
 - project2
Do you want to continue (Y/n)?  y

Deleted [project2].
```

`gcloudctx` supports <kbd>Tab</kbd> completion on bash/zsh/fish shells to quickly type project names.

## Installation

### Linux/macOS

`gcloudctx` is written in Bash, so you should be able to install
it to any POSIX environment that has Bash installed.

1. Download the `gcloudctx` script somewhere in your `PATH` and make it executable
```bash
sudo curl -L https://raw.githubusercontent.com/ogerbron/gcloudctx/master/gcloudctx -o /usr/local/bin/gcloudctx
sudo chmod +x /usr/local/bin/gcloudctx
```
2. Install bash/zsh/fish [completion scripts](completion/) (e.g. for Ubuntu, copy the scripts to `/etc/bash_completion.d/`
and restart your terminal)
