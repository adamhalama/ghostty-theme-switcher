# ghostty-theme

Tiny CLI to switch Ghostty themes by replacing a managed block in your config.

## What it does
- Keeps your normal Ghostty config intact.
- Replaces only the **managed theme block** with a chosen snippet from `~/.ghostty-themes/<name>.conf`.
- Can list themes, set a theme, toggle between two, and show the current theme.

## Install
1) Put the script on your machine (this repo’s `bin/ghostty-theme`) and make it executable:
```bash
chmod +x bin/ghostty-theme

    Symlink it somewhere on your PATH (pick one):

# user-local
mkdir -p "$HOME/bin"
ln -sfn "$PWD/bin/ghostty-theme" "$HOME/bin/ghostty-theme"

# or system-wide (macOS)
/usr/bin/sudo ln -sfn "$PWD/bin/ghostty-theme" /usr/local/bin/ghostty-theme
```

One-time setup

1. Add markers to your Ghostty config (macOS path):
```
~/Library/Application Support/com.mitchellh.ghostty/config
```
Add:
```
# >>> GHOSTTY THEME START (managed) >>>
# >>> GHOSTTY THEME END (managed) <<<
```
Create your theme snippets:
```
~/.ghostty-themes/dark.conf
~/.ghostty-themes/light.conf
```
Each file contains only the lines you want to apply, e.g.:
```
theme = One Light
background = #fafafa
foreground = #1a1a1a
```
Usage
```
ghostty-theme list              # show available snippets (from ~/.ghostty-themes/*.conf)
ghostty-theme use light         # apply ~/.ghostty-themes/light.conf
ghostty-theme toggle dark light # flip between the two names
ghostty-theme current           # print last-applied theme name
```

Finding theme names & experimenting

    In Ghostty: `ghostty +list-themes` interacive tool to show the themes

    Online configurator (handy for previewing & copying colors): https://ghostty.zerebos.com/

License

MIT — see LICENSE.