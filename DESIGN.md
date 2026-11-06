# OpenFrame CLI design

Applies to `install.sh`, `scripts/native/openframe`, and installer-generated management commands. For CLI changes, read this file before editing output. The installer is the visual reference. The mobile app has its own `mobile/DESIGN.md`.

## Identity and color

Use the terminal background and foreground. Render `open` in the foreground and `frame` in orange. Use the installer's braille wordmark only when the terminal is wide enough to display it without wrapping; otherwise use the compact wordmark.

| Role | True color | ANSI 256 fallback |
| --- | --- | --- |
| Accent | `239;90;0` | `202` |
| Secondary text | `163;158;150` | `247` |
| Rail and hints | `92;88;83` | `240` |
| Success | `70;201;125` | `78` |
| Error | `255;106;77` | `203` |

Use bold for section titles. Reserve orange for the current action and primary address. The address pill uses an orange background and dark text. Reset formatting after every line. Respect `NO_COLOR` and omit color when stdout is redirected.

## Layout

Start with one blank line, a wordmark, and one blank line. Indent the screen two spaces. Use `◆` for the active section, `│` for its body, and `└` for the final hint. Put two spaces between the rail and content. Use ASCII equivalents outside UTF-8 locales.

Keep each screen focused on its task. The connection screen shows the app URL first, the IP below it, then a QR code and the same-Wi-Fi hint. Keep addresses intact and copyable. Use short sentence-case labels. Keep implementation details out of connection instructions.

## QR codes

Generate the QR from the exact displayed URL. Preserve its quiet zone and fixed-width rows. Keep the rail outside the quiet zone. Use UTF-8 block output with the terminal foreground and background. Show QR codes only in interactive terminal output. If qrencode is missing, keep the URL visible and explain how to enable the QR.

## Verification

Run the actual command in a terminal and with redirected stdout. Check a narrow terminal, `NO_COLOR`, and missing qrencode behavior when changing their handling. Confirm the URL and QR payload agree. Never start, restart, or install services just to render a connection screen.
