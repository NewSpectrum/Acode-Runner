# Acode Runner

Get it? It's a pun. It's *__A Code__ Runner* for __*[Acode](https://github.com/deadlyjack/Acode)*__.

Thank you, I'll see myself out.

<br />

---

<br />

# Initial Setup

I've done my best to automate as much of this process as possible, but it still requires your input for various reasons (some more obvious than others).

## Your `DevDir`

If you don't already have a designated __Dev/Development__ or __Coding__ parent directory, I recommend you let the __[Setup Script]__ create one for you using its defaults. The defaults will be:

| Directory | Path |
| :---      | :--- |
| Main Storage<br />*aka* `/0` | `/storage/emulated/0` |
| Default `$DevDir` | `../0/STORAGE/.dev` |
| Default `$ConfDir` | `../.dev/_devtools/terminals/Termux/config` |

```
/storage/emulated
/---|_/0
/---|------|_/STORAGE
/---|---------|_/.dev
/---|---------|--/_devtools
/---|---------|----|_/terminals
/---|---------|------|_/Bash
/---|---------|------|--|_/Termux
/---|---------|------|--|__/_/config
/---|---------|------|--|__/__/_/setup
/---|---------|------|--|__/__/_/bash.bashrc
/---|---------|------|--|__/__/_/termux.properties
/---|---------|------|--|__/__/_/profile
/---|---------|------|--|__/_/scripts
/---|---------|------|--|__/_/commands
/---|---------|------|_/PowerShell
/---|---------|----|_/editors
/---|---------|
			  
``` 


### The DCIM Paths

Just for comparison, here are the full/literal and appended paths for some directories you know:

```
MainStorage="/storage/emulated/0"

# Full DCIM path
DCIMFull="/storage/emulated/0/DCIM"

# Appended Path
DCIMShort="${MainStorage}/DCIM"
```