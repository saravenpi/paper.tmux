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

### 🎨 Interactive Color Palettes

**[→ View Light Mode Palette](https://coolors.co/faf6f0-4a3728-a36969-7a9048-d4923a-5a7f94-e8dcc8)** | **[→ View Dark Mode Palette](https://coolors.co/2a1f1a-e8dcc8-b57a7a-8ca558-d4923a-5a7f94-3d2d22)**

### Light Mode Palette

| Color | Hex | Preview |
|-------|-----|---------|
| **Background** | `#faf6f0` | ![#faf6f0](https://img.shields.io/badge/Warm_Paper-faf6f0?style=for-the-badge&labelColor=4a3728) |
| **Foreground** | `#4a3728` | ![#4a3728](https://img.shields.io/badge/Dark_Roast-4a3728?style=for-the-badge&labelColor=faf6f0) |
| **Red** | `#b04c3f` | ![#b04c3f](https://img.shields.io/badge/Roasted_Berry-b04c3f?style=for-the-badge&labelColor=faf6f0) |
| **Green** | `#7a9048` | ![#7a9048](https://img.shields.io/badge/Matcha-7a9048?style=for-the-badge&labelColor=faf6f0) |
| **Yellow** | `#c47f2c` | ![#c47f2c](https://img.shields.io/badge/Honey-c47f2c?style=for-the-badge&labelColor=faf6f0) |
| **Blue** | `#5a7f94` | ![#5a7f94](https://img.shields.io/badge/Dusty_Denim-5a7f94?style=for-the-badge&labelColor=faf6f0) |
| **Magenta** | `#a36969` | ![#a36969](https://img.shields.io/badge/Mocha-a36969?style=for-the-badge&labelColor=faf6f0) |
| **Cyan** | `#507964` | ![#507964](https://img.shields.io/badge/Mint-507964?style=for-the-badge&labelColor=faf6f0) |

### Dark Mode Palette

| Color | Hex | Preview |
|-------|-----|---------|
| **Background** | `#2a1f1a` | ![#2a1f1a](https://img.shields.io/badge/Dark_Roast-2a1f1a?style=for-the-badge&labelColor=e8dcc8) |
| **Foreground** | `#e8dcc8` | ![#e8dcc8](https://img.shields.io/badge/Cream-e8dcc8?style=for-the-badge&labelColor=2a1f1a) |
| **Red** | `#c85a4c` | ![#c85a4c](https://img.shields.io/badge/Cherry-c85a4c?style=for-the-badge&labelColor=2a1f1a) |
| **Green** | `#8ca558` | ![#8ca558](https://img.shields.io/badge/Matcha-8ca558?style=for-the-badge&labelColor=2a1f1a) |
| **Yellow** | `#d4923a` | ![#d4923a](https://img.shields.io/badge/Caramel-d4923a?style=for-the-badge&labelColor=2a1f1a) |
| **Blue** | `#5a7f94` | ![#5a7f94](https://img.shields.io/badge/Dusty_Denim-5a7f94?style=for-the-badge&labelColor=2a1f1a) |
| **Magenta** | `#b57a7a` | ![#b57a7a](https://img.shields.io/badge/Mocha-b57a7a?style=for-the-badge&labelColor=2a1f1a) |
| **Cyan** | `#507964` | ![#507964](https://img.shields.io/badge/Mint-507964?style=for-the-badge&labelColor=2a1f1a) |

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

By default, the theme includes these icons:
- Session icon: ☕ (coffee cup)
- Active window: ● (filled circle)
- Inactive window: ○ (hollow circle)
- Borders: empty (clean look)

You can customize any of these icons:

```tmux
set -g @paper_left_border ""
set -g @paper_right_border ""
set -g @paper_session_icon "☕"
set -g @paper_active_window_icon "●"
set -g @paper_inactive_window_icon "○"
```

To disable icons, set them to empty strings:

```tmux
set -g @paper_session_icon ""
set -g @paper_active_window_icon ""
set -g @paper_inactive_window_icon ""
```

### Example Configuration

```tmux
set -g @paper_theme "light"

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
