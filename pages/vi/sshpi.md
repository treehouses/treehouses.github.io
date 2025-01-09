# SSH & Tor Tutorial

## Objectives

- Set up your SSH key
- Log into your Pi as `pi` and `root` user
- Set up Tor

## SSH Key

1. Follow the guide at [Checking for existing SSH keys - GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys#checking-for-existing-ssh-keys) to ensure you have an existing SSH key on your work machine (not the Raspberry Pi).
   - If you don't have an existing SSH key, follow the instructions at [Generate a new SSH key and add it to the ssh-agent - GitHub Docs](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent). Make sure the new key is protected by a passphrase.
   - **Note**: Do not confuse the SSH private key, SSH public key, and key fingerprint. SSH keys are stored in the `~/.ssh` directory, where you'll find private keys like `id_dsa`, `id_rsa`, or `id_ed25519` and their corresponding `.pub` public key files. The fingerprint is a cryptographic hash of the public key used for verification.
2. Visit `https://github.com/<YourUsername>.keys` in your browser to check if your SSH public key(s) are listed. If not, follow the guide at [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

## Log In as the Pi User

1. Ensure your Raspberry Pi is powered on and that you have its [local IP address](find-pi.md) from the previous step.
2. In your Terminal or Git Bash, run:
   `ssh pi@<RPi local IP address>`
3. When connecting for the first time, you will be prompted to accept the RSA key fingerprint. Type `yes` to continue.
   - **Note**: After flashing a new Raspberry Pi image, you may need to update your `known_hosts` file for SSH to connect successfully. For troubleshooting and instructions on removing outdated host keys, refer to [FAQ #TQ2](faq.md#TQ2:_What_should_I_do_if_I_encounter_Host_key_verification_failed?).
4. The default password for the `pi` user is `raspberry`. Once logged in, run `passwd` to set a stronger password.

### Add SSH Key to Raspberry Pi

The treehouses image includes the [treehouses/cli](https://github.com/treehouses/cli) tool, which offers several methods for adding your public key to the `root` user's `authorized_keys` file. Use one of the following commands:

- If your Raspberry Pi is connected to the internet, run:
  `sudo treehouses sshkey github adduser <YourGitHubUsername>`
  This will add the public keys associated with your GitHub account.

- If your Raspberry Pi is not connected to the internet, run:
  `sudo treehouses sshkey add <YourPublicKey>`
  Replace `<YourPublicKey>` with the content of your public key file.

### Log In as the Root User

With your public key added in the previous step, you can log in to your Raspberry Pi as the `root` user without a password by running the following command:
`ssh root@[RPi local IP address]`

### Rename Pi by GitHub Name

To rename your Raspberry Pi, run `treehouses rename <YourGitHubUsername>` and replace `<YourGitHubUsername>` with your Github username.

## Tor

Tor is a global volunteer-run computer network. Volunteers operate relays—computers running software that allows users to connect to the internet via the Tor network.

Before accessing the open internet, the Tor Browser connects through several relays, anonymizing your connection at each step. This process makes it difficult to determine your location or identity.

The Systems Team uses this tool to add an extra layer of security when interacting with Raspberry Pis deployed in the field.

Start by watching this [video](https://www.youtube.com/watch?v=6czcc1gZ7Ak) about the Tor browser.

### Get Tor Browser

[Download Tor Browser](https://www.torproject.org/download/) or run `brew install --cask tor-browser` if you are on macOS.

### Turn on Tor

[treehouses/cli](https://github.com/treehouses/cli) comes with some useful tor utilities, to learn more about all treehouses/cli commands, run `treehouses help tor`.

SSH into your Raspberry Pi as the `root` user,

```
# TODO: details...
treehouses tor add 22
treehouses tor add 80
treehouses tor notice on
treehouses tor
```

run `treehouses tor add 22`, `treehouses tor add 80`, and `treehouses tor notice on`.  To view the Tor address of your Pi, run `treehouses tor`, then copy-paste this address into your Tor Browser, to make sure it works; you should see a configuration page for Planet Learning, one of our other services.

## Keep Us in the Loop

Please copy and paste the content of your successful SSH connection from Terminal or Git Bash to the [Discord #seednest channel](https://discord.com/channels/1079980988421132369/1081433296333963274).

It should look something like this:

```
ssh root@192.168.0.101
The authenticity of host '192.168.0.101 (192.168.0.101)' can't be established.                                                                                                                                                    
ECDSA key fingerprint is SHA256:OQcmJteKgWOmNiK6OlrZ3CxC5+T/KMKowQ5qNHn9NOI.                                                                                                                                                      
Are you sure you want to continue connecting (yes/no)? yes                                                                                                                                                                        
Warning: Permanently added '192.168.0.101' (ECDSA) to the list of known hosts.                                                                                                                                                    

The programs included with the Debian GNU/Linux system are free software;                                                                                                                                                         
the exact distribution terms for each program are described in the                                                                                                                                                                
individual files in /usr/share/doc/*/copyright.                                                                                                                                                                                   

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Thu Aug 22 23:20:37 2019 from unknown.comcast.net
root@treehouses:~#
```

---

#### Return to [First Steps](firststeps.md#Step_2_-_Remotely_Connect_to_Your_Raspberry_Pi_Using_SSH_and_Tor)
