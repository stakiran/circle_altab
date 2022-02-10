# Circle Altab
End of Alt Tab: Cursor based window switcher for Windows.

![circlealtab](https://user-images.githubusercontent.com/23325839/153375469-0fd37fcb-73c1-4edb-b00d-b5e2bba800f8.gif)

## What is this?
Circle Altab is an altab tool based on AutoHotKey.

## Feature
- Define target windows beforehand.
    - write to `config.ahk`
- Switching with <keybd>win + left</keybd> and <keybd>win + right</keybd>

## How to use
- 1: Copy to `config.ahk`, and edit.
    - (using window title partial match internally.)
- 2: Execute `circlealtab.ahk`

For Japanese: 日本語のウィンドウタイトル名を使いたい場合、config.ahk は UTF8 の **BOM有** で保存する必要があります。

## To tell (you) the truth, WIP yet...
For example...

- Cannot activate ConEmu windows.
    - because the spec of ConEmu.
- Cannot activate another virtual desktop windows.
    - Why!?

## License
[MIT License](LICENSE)

## Author
[stakiran](https://github.com/stakiran)
