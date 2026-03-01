# paper.tmux

A warm, café-inspired tmux theme with paper tones and rich mocha/coffee brown accents.

## Features

- 🌞 **Light mode** - Warm paper background with espresso brown text
- 🌙 **Dark mode** - Cozy dark roast with cream highlights  
- ☕ Carefully crafted color palette inspired by café aesthetics
- 🎨 Customizable icons and separators
- 🔌 TPM (Tmux Plugin Manager) support
- 💫 Transparent status bar background
- 🎯 WISP status integration support

## Preview

<div align="center">

### Color Palette

| Color | Light Mode | Dark Mode |
|-------|------------|-----------|
| **Purple** | ![#a36969](https://img.shields.io/badge/Mocha-a36969?style=for-the-badge) | ![#b57a7a](https://img.shields.io/badge/Mocha-b57a7a?style=for-the-badge) |
| **Green** | ![#7a9048](https://img.shields.io/badge/Matcha-7a9048?style=for-the-badge) | ![#8ca558](https://img.shields.io/badge/Matcha-8ca558?style=for-the-badge) |
| **Orange** | ![#d4923a](https://img.shields.io/badge/Caramel-d4923a?style=for-the-badge) | ![#d4923a](https://img.shields.io/badge/Caramel-d4923a?style=for-the-badge) |
| **Blue** | ![#5a7f94](https://img.shields.io/badge/Denim-5a7f94?style=for-the-badge) | ![#5a7f94](https://img.shields.io/badge/Denim-5a7f94?style=for-the-badge) |
| **Gray** | ![#e8dcc8](https://img.shields.io/badge/Latte-e8dcc8?style=for-the-badge&labelColor=4a3728) | ![#3d2d22](https://img.shields.io/badge/Espresso-3d2d22?style=for-the-badge&labelColor=e8dcc8) |

</div>

## Installation

### TPM (Tmux Plugin Manager)

Add to your `.tmux.conf`:

```tmux
set -g @plugin 'saravenpi/paper.tmux'
```

Then press `prefix + I` to fetch and source the plugin.

### Manual

```bash
git clone https://github.com/saravenpi/paper.tmux ~/.tmux/plugins/paper.tmux
```

Add to your `.tmux.conf`:

```tmux
run '~/.tmux/plugins/paper.tmux/paper.tmux'
```

## Configuration

Add these options to your `.tmux.conf` **before** loading the plugin:

### Theme Mode

```tmux
set -g @paper_theme "light"
```

Default: `"light"`  
Options: `"light"` or `"dark"`

### Custom Icons

```tmux
set -g @paper_left_border ""
set -g @paper_right_border ""
set -g @paper_session_icon ""
set -g @paper_active_window_icon ""
set -g @paper_inactive_window_icon ""
```

### Example Configuration

```tmux
set -g @paper_theme "light"
set -g @paper_left_border ""
set -g @paper_right_border ""  
set -g @paper_session_icon ""
set -g @paper_active_window_icon ""
set -g @paper_inactive_window_icon ""

set -g @plugin 'saravenpi/paper.tmux'
```

## Color Variables

After the plugin loads, these colors are available:

- `#{@paper_purple}` - Mocha/cocoa accent
- `#{@paper_green}` - Matcha/sage accent
- `#{@paper_orange}` - Caramel/honey accent
- `#{@paper_yellow}` - Honey accent
- `#{@paper_blue}` - Dusty denim accent
- `#{@paper_gray}` - Latte/cream neutral
- `#{@paper_background}` - Main background
- `#{@paper_foreground}` - Main text color

## WISP Integration

If you use WISP task management, the plugin automatically sets these colors:

- `#{@paper_wisp_running_fg}` / `#{@paper_wisp_running_bg}`
- `#{@paper_wisp_paused_fg}` / `#{@paper_wisp_paused_bg}`
- `#{@paper_wisp_completed_fg}` / `#{@paper_wisp_completed_bg}`
- `#{@paper_wisp_inactive_fg}` / `#{@paper_wisp_inactive_bg}`

## Related Projects

- [paper.nvim](https://github.com/saravenpi/paper.nvim) - Matching Neovim colorscheme

## License

MIT
