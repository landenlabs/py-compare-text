<table border="0">
  <tr>
    <td>
      <!-- VERSION -->v6.0<br>
      <!-- DATE -->2026<br>
      macOS &nbsp;|&nbsp; Windows &nbsp;|&nbsp; Linux<br>
      <a href="https://landenlabs.com">Home</a>
    </td>
    <td>
      <a href="https://landenlabs.com">
        <img src="screens/landenlabs_400.webp" width="300" alt="LanDen Labs">
      </a>
    </td>
  </tr>
</table>

# Compare Tool

A side-by-side text comparison tool with LCS-based auto-alignment, color-coded rows,
word-level diff highlighting, and synchronized scrolling.

**By [LanDen Labs](https://github.com/landenlabs) (2026)**

---

## Screenshots

_(coming soon)_

---

## Features

- **LCS-based auto-alignment.** Uses Python's `difflib` to align left and right panels
  so matching lines sit on the same row; blank rows are inserted where lines differ.
- **Color-coded rows.**
  - Green — lines match
  - Yellow — both present but differ
  - Red — left side only
  - Blue — right side only
  - Grey — blank padding
- **Word-level diff highlight.** Right-click → Compare on any pair of selected rows to
  overlay orange highlights on the non-matching words in each line.
- **Partial-match highlight.** Toggle in the status bar to show common substrings
  (≥ 3 chars) shared between differing rows.
- **Multi-select rows.** Ctrl+click to toggle individual rows; Shift+click for ranges.
- **Right-click context menu.** Insert/delete blank rows (single or block), and
  cross-panel Sync (insert blanks so two selected rows align vertically).
- **Manual shift.** Toolbar buttons shift either panel up or down one blank row at a time.
- **Synchronized scrolling.** Both panels scroll together; independent horizontal scroll.
- **Regex key extraction.** Type a regex with capture groups above either panel to
  extract the comparison key from each line — useful for log files where line numbers
  or timestamps should be ignored during alignment.
- **Sort.** Sort both panels' lines (using the regex key if set) before aligning.
- **Jump to diff.** Next Diff / Prev Diff buttons (Ctrl+N / Ctrl+Shift+N) jump to the
  next or previous non-matching row.
- **Paste text.** Load text without a file via the panel title menu → Paste Text.
- **Save.** Save either panel's (possibly edited) content via the panel title menu → Save As.
- **Font zoom.** `+` / `−` buttons in the status bar scale the font from 50% to 200%.
- **Appearance settings.** Choose font family, size, bold, and row height; persisted
  via QSettings across runs.
- **Match statistics.** Status bar shows matched/total rows and a breakdown of
  different, left-only, and right-only counts.

---

## Requirements

- Python 3.9 or later
- PyQt6

```
pip install PyQt6
```

---

## Installation

### Run from source

```bash
git clone https://github.com/landenlabs/compare-text.git
cd compare-text
python compare-text6.py --help
```

### Run without a console (Windows)

```powershell
pythonw compare-text6.pyw
```

### Build a standalone binary

**macOS / Linux**

```bash
pyinstaller --onefile --name compare-text compare-text6.py
```

**Windows**

```powershell
pyinstaller --onefile --name compare-text compare-text6.py
```

Both commands use [PyInstaller](https://pyinstaller.org) to produce a self-contained executable.

---

## Usage

### Compare two files

```bash
python compare-text6.py left.txt right.txt

# Sort both files before aligning
python compare-text6.py --sort left.txt right.txt
```

### Compare interactively

```bash
python compare-text6.py
```

Click the panel title to open a file or paste text. Press **Auto-Align** (Ctrl+A) to
run LCS alignment after loading both sides.

### Sample output

```
  Line  Left panel                 Right panel
  ----  -------------------------  -------------------------
    1   (green) apple              (green) apple
    2   (yellow) bananaa           (yellow) banana
    3   (red)  cherry              (blank)
    4   (blank)                    (blue)  date
```

### Key shortcuts

| Shortcut | Action |
| -------- | ------ |
| `Ctrl+A` | Auto-Align (LCS) |
| `Ctrl+S` | Sort both panels |
| `Ctrl+N` | Jump to next difference |
| `Ctrl+Shift+N` | Jump to previous difference |
| `Ctrl+L` | Open left file |
| `Ctrl+R` | Open right file |
| `Ctrl+,` | Open Settings |
| `Ctrl+Up` | Shift left panel up |
| `Ctrl+Down` | Shift left panel down |
| `Alt+Up` | Shift right panel up |
| `Alt+Down` | Shift right panel down |

---

## Project structure

```
compare-text/
├── compare-text6.py    # Main script (GUI application)
├── compare-text6.pyw   # Same script, suppresses the console on Windows
├── README.md
├── LICENSE
└── screens/            # Images used in this README
```

---

## License

MIT © [LanDen Labs](https://github.com/landenlabs) 2026
