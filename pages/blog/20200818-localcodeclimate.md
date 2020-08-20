# Run Code Climate Locally

Created on 18 August 2020 • [sydneyaldo](https://github.com/sydneyaldo)

---
This blog is a guide to running Code Climate locally (without having to create pull requests)
Useful for code quality checking prior to upload

---


## 1. Navigate to the Project Folder

![](./images/20200818-project-folder.PNG)

## 2. Make Sure that Vagrant is Set Up

Check for a file named Vagrantfile. If it does not exist, please check out [Vagrant Setup Guide](https://learn.hashicorp.com/collections/vagrant/getting-started)

![](./images/20200818-Vagrantfile.PNG)

## 3. Run Git Bash or Terminal

![](./images/20200818-GitBash.PNG)

## 4. Run vagrant up

![](./images/20200818-vagrant-up.PNG)

![](./images/20200818-vagrant-up-complete.PNG)

If errors exist, make sure Vagrant is set up properly

**Note:** Text output may vary depending on the Vagrantfile content

## 5. Run vagrant ssh

![](./images/20200818-vagrant-SSH.PNG)

![](./images/20200818-vagrant-SSH-complete.PNG)

## 6. Navigate to the Directory of the Code to be Analyzed

![](./images/20200818-change-directory.PNG)

## 7. Invoke Code Climate CLI Command

Run `codeclimate analyze`

- We can also run other Code Climate CLI commands by invoking `codeclimate <command>`
	Run `codeclimate help` for a list of available commands

- If Code Climate wrapper is not installed in */usr/local/bin*, consider running the CLI commands natively

![](./images/20200818-codeclimate-analyze.PNG)
 

#### Natively run the CLI command by running:

```
docker run \
  --interactive --tty --rm \
  --env CODECLIMATE_CODE="$PWD" \
  --volume "$PWD":/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate analyze
 ```

Or: 

```
docker run \
  --interactive --tty --rm \
  --env CODECLIMATE_CODE="$PWD" \
  --volume "$PWD":/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate analyze <path/to/directory>
 ```