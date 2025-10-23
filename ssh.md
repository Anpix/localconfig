# SSH Setup

Instructions to create, manage and use SSH keys.

## Generating a new key

- Run the following command, replacing the `FILENAME` text with the filename which to save the key:

```sh
ssh-keygen -t rsa -f FILENAME
```

- Enter a new passphrase (leave it blank if you don't want to add a pass)
- Enter the same passphrase again
- Expected output:

```txt
Your identification has been saved in FILENAME
Your public key has been saved in FILENAME.pub
The key fingerprint is:
SHA256:y6dC03iTVrns/A2B6KxDPRrnQRQq/ju3YeOpg2SsGYo anpix@Alienpix
The key's randomart image is:
+---[RSA 3072]----+
|        ..       |
|       ..        |
|    . ..   .     |
|   . .  ..o.     |
|   ..  =S+...    |
|  . +.*+@.o  .   |
|.. * +.OO*. .    |
|E o . *=o*o  o   |
|      +B=. .. .  |
+----[SHA256]-----+
```

## Authorizing Key

- Open the pub key `FILENAME.pub` file and copy the entire content
- Follow the instructions below related to the service that you want to use.

### GitHub

- Go to the [Github SSH Keys](https://github.com/settings/keys) page.
- Click on `New SSH key` to open the form.
- Insert a title to identify your key
- Paste the pub key content into the `Key` textarea.
- Click in `Add SSH key` to save

### Azure DevOps

- Click on the `~User Settings` button located at the upper right corner, just before your user photo.
- Click on the `SSH public keys` to open the SSH page.
- Alternativelly you can change the `PROJECT_NAME` placeholder and use the following url: `https://dev.azure.com/PROJECT_NAME/_usersSettings/keys`.
- Click on `New key` to open the form.
- Insert a name to identify your key
- Paste the pub key content into the `Public Key Data` textarea.
- Click on `Add` to save.

## SSH Agent

### Windows

- Check if the SSH agent is running

```PowerShell
get-service ssh-agent
```

Expected result:

```txt
Status   Name               DisplayName
------   ----               -----------
Running  ssh-agent          OpenSSH Authentication Agent
```

- If the status is not `Running`, set the startup as automatic and start the service

```PowerShell
set-service ssh-agent -StartupType Automatic
start-service ssh-agent
```

```PowerShell
set-service ssh-agent -StartupType Manual
stop-service ssh-agent
```

## Trust Key

- Run `ssh-add` to register the key in your machine

```sh
ssh-add ~/.ssh/FILENAME
```

- Check if the key was registered

```sh
ssh-add -l
```

## Aknownledge Host

- Add each host as known

```sh
ssh -T git@github.com
ssh -T git@ssh.dev.azure.com
```

| Service      | Value                 |
| ------------ | --------------------- |
| Azure Devops | git@ssh.dev.azure.com |
| GitHub       | git@github.com        |

Expected output for GitHub

```txt
PS C:\Users\Anpix\.ssh> ssh -T git@github.com
The authenticity of host 'github.com (4.228.31.150)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Hi Anpix! You've successfully authenticated, but GitHub does not provide shell access.
```

Expected output for Azure DevOps

```txt
PS C:\Users\Anpix\.ssh> ssh -T git@ssh.dev.azure.com
The authenticity of host 'ssh.dev.azure.com (191.235.226.36)' can't be established.
RSA key fingerprint is SHA256:ohD8VZEXGWo6Ez8GSEJQ9WpafgLFsOfLOtGGQCQo6Og.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'ssh.dev.azure.com' (RSA) to the list of known hosts.
remote: Shell access is not supported.
shell request failed on channel 0
```
