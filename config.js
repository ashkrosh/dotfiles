module.exports = {
  brew: [
    // Antibody - fastest zsh plugin manager
    'getantibody/tap/antibody',
    // Ack - http://conqueringthecommandline.com/book/ack_ag
    'ack',
    'ag',
    // https://github.com/wting/autojump
    'autojump',
    // alternative to `cat`: https://github.com/sharkdp/bat
    'bat',
    // Install GNU core utilities (those that come with macOS are outdated)
    'coreutils',
    'dos2unix',
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'findutils',
    'fortune',
    'fzf',
    'readline', // ensure gawk gets good readline
    'gawk',
    // http://www.lcdf.org/gifsicle/ (because I'm a gif junky)
    'gifsicle',
    'gnupg',
    // Install GNU `sed`, overwriting the built-in `sed`
    // so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
    'gnu-sed --with-default-names',
    // upgrade grep so we can get things like inverted match (-v)
    'grep --with-default-names',
    // better, more recent grep
    'homebrew/dupes/grep',
    // https://github.com/jkbrzt/httpie
    'httpie',
    // jq is a sort of JSON grep
    'jq',
    // Mac App Store CLI: https://github.com/mas-cli/mas
    'mas',
    // Install some other useful utilities like `sponge`
    'moreutils',
    'nmap',
    'openconnect',
    'reattach-to-user-namespace',
    // better/more recent version of screen
    'homebrew/dupes/screen',
    'tmux',
    'tree',
    'ttyrec',
    // better, more recent vim
    'vim --with-client-server --with-override-system-vi',
    // neovim is a faster vim
    'nvim',
    'watch',
    // Install wget with IRI support
    'wget --enable-iri',
    // GnuTLS is a secure communications library implementing the SSL, TLS and DTLS protocols
    'gnutls',
    'thefuck',
    'curl',
    // Ctags: http://ctags.sourceforge.net/whatis.html
    'ctags',
    // pv ~ pipeviewer : https://www.ivarch.com/programs/pv.shtml
    'pv',
    'ssh-copy-id',
    'tree',
    // gibo: access github gitignore templates https://github.com/simonwhitaker/gibo
    'gibo',
    // dnsmasq: Lightweight DNS forwarder and DHCP server https://formulae.brew.sh/formula/dnsmasq
    'dnsmasq',
    // ngrok : Public URLs for exposing your local web server.
    // 'ngrok',
    // z tracks most-used directories to make cd smarter
    'z',
    // nmap Port scanning utility for large networks
    'nmap',
    'mackup --HEAD',
    'awscli',
    // skhd - simple hotkey daemon for macOS. https://github.com/koekeishiya/skhd
    'skhd',
    // file browser with vim keybindings. https://ranger.github.io/
    'ranger'
  ],
  cask: [
    //'amazon-cloud-drive',
    'docker',
    'dropbox',
    'appcleaner',
    'iterm2',
    'lepton',
    'little-snitch',
    'cardhop',
    'fantastical',
    'atext',
    'the-unarchiver',
    'launchbar',
    'fork',
    'witch',
    'istat-menus',
    'marked',
    'cronnix',
    'Snagit',
    'rescuetime',
    '1password',
    'bartender',
    'yoink',
    'karabiner-elements',
    // vim GUI for macos based on neovim
    'vimr',
    // binary releases of VS Code without MS branding/telemetry/licensing - https://github.com/VSCodium/vscodium
    'vscodium',
    // Quick-look plugins for developers - https://github.com/sindresorhus/quick-look-plugins
    'qlcolorcode',
    'qlstephen',
    'qlmarkdown',
    'quicklook-json',
    'qlimagesize',
    'suspicious-package',
    'quicklookase',
    'qlvideo'
  ],
  gem: [
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
