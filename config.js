module.exports = {
  brew: [
    'mackup --HEAD',
    'getantibody/tap/antibody',  // Antibody - fastest zsh plugin manager
    'awscli',
    // Better altenatives for `find` 
    'ack',  // Ack - http://conqueringthecommandline.com/book/ack_ag
    'ag',
    'fzf',  // Command-line fuzzy finder written in Go . https://github.com/junegunn/fzf
    'findutils',  // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'ctags',      // Ctags: http://ctags.sourceforge.net/whatis.html
    // Better alternatives for `cd`
    'autojump',    // https://github.com/wting/autojump
    'fd',  // https://github.com/sharkdp/fd
    'z',   // https://github.com/rupa/z
    // Productive file and process listing and traversal
    'ranger',      // file browser with vim keybindings. https://ranger.github.io/
    'tree',
    'pstree',
    // Other GNU tools for macOS
    'coreutils',     // Install GNU core utilities (those that come with macOS are outdated)
    'moreutils',     // useful utilities like `sponge`. https://joeyh.name/code/moreutils/
    'gnupg',
    'dos2unix',  // Convert text between DOS, UNIX, and Mac formats
    'readline', // ensure gawk gets good readline
    'gawk',
    'gnu-sed --with-default-names',     // GNU `sed`, overwriting the built-in `sed`, so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
    'grep --with-default-names',  // upgrade grep so we can get things like inverted match (-v)
    'homebrew/dupes/grep',     // better, more recent grep
    'jq',      // jq is a sort of JSON grep
    // Rule your MacOS 
    'mas',      // Mac App Store CLI: https://github.com/mas-cli/mas
    'm-cli',    //  Swiss Army Knife for macOS
    'skhd',     // skhd - simple hotkey daemon for macOS. https://github.com/koekeishiya/skhd
		'yqrashawn/goku/goku',  	// DSL to configure Karabiner rules easier.
    // Remote work
    'openconnect',
    'tmux',
    'reattach-to-user-namespace',  //  Access the macOS pasteboard in tmux sessions
    'homebrew/dupes/screen',      // better/more recent version of screen
    'ssh-copy-id',
    // Record and Demo
    'ttyrec',  // Terminal interaction recorder and player
    'screenfetch',
    'asciinema',
    // 'ngrok',    // ngrok : Public URLs for exposing your local web server.
    // View and edit files 
    'vim --with-client-server --with-override-system-vi', // Replace the system `vim` with newer vim
    'nvim',      // neovim is a faster vim
    'bat',    // alternative to `cat`: https://github.com/sharkdp/bat
    // Network tools
    'gnutls',  // secure communications library implementing the SSL, TLS and DTLS protocols
    'wget --enable-iri',      // Install wget with IRI support
    'curl',
    'httpie',  // https://github.com/jkbrzt/httpie
    'dnsmasq',     // dnsmasq: Lightweight DNS forwarder and DHCP server https://formulae.brew.sh/formula/dnsmasq
    'nmap',     // nmap Port scanning utility for large networks
    // Test, debug and performance monitor tools
    'watch', // Execute a program periodically, showing output fullscreen
    'pv',    // pv ~ pipeviewer : https://www.ivarch.com/programs/pv.shtml
    // Fun stuff
    'thefuck',
    'fortune',
    'lolcat',
    'gifsicle'  // http://www.lcdf.org/gifsicle/ (because I'm a gif junky)
  ],
  gem: [
    'neovim'
  ],
  npm: [
    'antic',
    'buzzphrase',
    'eslint',
    'instant-markdown-d',
    // 'generator-dockerize',
    // 'gulp',
    'npm-check-updates',
    'prettyjson',
    'trash',
    'vtop'
    // ,'yo'
  ]
};
