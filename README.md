# ConEmu

This is my private compilation of ConEmu adjusted to my preferences. 

It includes the following add-ins:
- [Clink](https://mridgers.github.io/clink/) (thx to Cmder)
- great [clink completions](https://github.com/vladimir-kotikov/clink-completions) for npm, git, among the others
- nano editor with syntax highlighting for [many formats](https://github.com/scopatz/nanorc)
- alias functionality with some predefined stuff
- some additional utilities bundled:
  - [ab.exe](https://en.wikipedia.org/wiki/ApacheBench)
  - curl.exe
  - [datamash.exe](https://www.gnu.org/software/datamash/)
  - [jq.exe](https://stedolan.github.io/jq/tutorial/) (query json from cmd)
  - NLOC.exe
  - TimeMem.exe (UNIX time alike)
  - [xml.exe](http://xmlstar.sourceforge.net/doc/UG/ch04.html) (query xml from cmd)
  - nano.exe (Windows port - including syntax highlighting for most languages)

## Prompt

CMD prompt is also customized:
![prompt](prompt.png)

It's loosely based on [Powerline prompt for Cmder](https://github.com/fredjoseph/cmder-powerline-prompt#cmder---powerline-prompt-for-cmd-shell) which itself is based on Agnoster theme for oh-my-zsh. 
It contains the following segments:

- current working directory (replaced by [~ for user's home dir](https://github.com/fredjoseph/cmder-powerline-prompt#cmd-customizations))
- git information (green when clean, yellow for dirty)
- npm package information `package-name@version` (package-name is omitted when same as current folder name)
- current timestamp

# Installation

1. Install fonts from ./fonts folder
2. Adjust tasks to suit yourself - some of mine will not work for you

# Credits

* Meslo LG M NerdFonts - https://www.nerdfonts.com/#home
* [Cmder - Powerline prompt](https://github.com/fredjoseph/cmder-powerline-prompt) - thanks for inspiration
