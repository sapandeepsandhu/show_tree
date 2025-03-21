# `show_tree` Command Setup Guide

This guide explains how to permanently set up the `show_tree` script as a global command on both macOS and Linux systems.

## Step 1: Prepare the Script

Ensure your script file (`show_tree.sh`) is finalized, tested, and working correctly.

Rename the script by removing the `.sh` extension for easier use:

```bash
mv show_tree.sh show_tree
```

Make sure the script is executable:

```bash
chmod +x show_tree
```

## Step 2: Permanent Global Setup

You have two options to make the command globally accessible:

### ✅ **Option A: Using `/usr/local/bin` (Recommended)**

This method is recommended if you have administrator access:

#### On Linux and macOS:

Move the script to `/usr/local/bin`:

```bash
sudo mv show_tree /usr/local/bin/
```

Set the permissions (if not already set):

```bash
sudo chmod +x /usr/local/bin/show_tree
```

The command is now accessible globally. Verify by running:

```bash
show_tree english punjabi
```

---

### ✅ **Option B: Using local `~/bin` directory (No Admin rights)**

Use this method if you don't have admin access or prefer to keep commands local to your user account.

#### Step-by-step:

1. **Create a local `bin` directory** in your home folder (if not already existing):

```bash
mkdir -p ~/bin
```

2. **Move your script** into this directory:

```bash
mv show_tree ~/bin/
```

3. **Ensure the script is executable**:

```bash
chmod +x ~/bin/show_tree
```

4. **Update your system's PATH variable**:

- For Bash users (`.bashrc`):

```bash
echo 'export PATH="$PATH:$HOME/bin"' >> ~/.bashrc
source ~/.bashrc
```

- For Zsh users (`.zshrc` on macOS/Linux):

```bash
echo 'export PATH="$PATH:$HOME/bin"' >> ~/.zshrc
source ~/.zshrc
```

5. **Verify the setup**:

```bash
show_tree english punjabi
```

Your command is now permanently available!

---

## 🛠️ **Testing and Troubleshooting**

After following either method, test your command from any directory:

```bash
show_tree english punjabi
```

If it doesn't work:

- Verify the `PATH`:

```bash
echo $PATH
```

- Check if your script is executable and located in the correct directory:

```bash
ls -l /usr/local/bin/show_tree
# or
ls -l ~/bin/show_tree
```

---

## 🎉 **You're all set!**

Your `show_tree` command is now permanently installed and ready to use.
