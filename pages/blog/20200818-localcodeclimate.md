# Run Codeclimate Locally

Created on 18 August 2020 • [sydneyaldo](https://github.com/sydneyaldo)

---
This blog is a guide to running Code Climate locally (without having to create pull requests), useful for code quality checking prior to being uploaded

---


## 1. Navigate to the Project Folder

## 2. Make Sure that Vagrant is Set Up

Check for a file named Vagrantfile. If it does not exist, please check out [Vagrant Setup Guide](https://learn.hashicorp.com/collections/vagrant/getting-started)

## 3. Run Git Bash or Terminal

## 4. Run `vagrant up` Command

If errors exist, make sure Vagrant is set up properly.

**Note:** Text output may vary depending on the Vagrantfile content

## 5. Run `vagrant ssh`

## 6. Invoke CLI Commands

- Make sure that codeclimate-wrapper is installed in /usr/local/bin 
If not, consider running codeclimate natively. 

- We can run codeclimate CLI commands by invoking `codeclimate <command>`
	Run `codeclimate help` for a list of available commands

Navigate to the directory of the code to be analyzed

Run `codeclimate analyze` 

### You can natively run codeclimate commands by running:

```
docker run \
  --interactive --tty --rm \
  --env CODECLIMATE_CODE="$PWD" \
  --volume "$PWD":/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate analyze
 ```

```
docker run \
  --interactive --tty --rm \
  --env CODECLIMATE_CODE="$PWD" \
  --volume "$PWD":/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate analyze <path/to/directory>
 ```