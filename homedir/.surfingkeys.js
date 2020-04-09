// an example to create a new mapping `ctrl-y`
mapkey('<Ctrl-y>', 'Show me the money', function() {
    Front.showPopup('a well-known phrase uttered by characters in the 1996 film Jerry Maguire (Escape to close).');
});

// an example to replace `T` with `gt`, click `Default mappings` to see how `T` works.
map('gt', 'T');

// an example to remove mapkey `Ctrl-i`
// unmap('<Ctrl-i>');
unmapAllExcept(['`', 'E', 'R'], /gmail.com|mail.google.com|twitter.com/);
unmap('t', /github.com/);
unmapAllExcept([], /notion.so/);
// set theme
settings.theme = `
.sk_theme {
	background: #392A25;
	color: #C0C1B0;
}
.sk_theme tbody {
	color: #392A25;
}
.sk_theme input {
	color: #d9dce0;
}
.sk_theme .url {
	color: #2d9574;
}
.sk_theme .annotation {
	color: #F7E5CA;
}
.sk_theme .omnibar_highlight {
	color: #333;
	background: #ffff00aa;
}
.sk_theme #sk_omnibarSearchResult ul>li:nth-child(odd) {
	background: #88A48D;
}
.sk_theme #sk_omnibarSearchResult ul>li.focused {
	background: #5d4d7aaa;
}
.sk_theme #sk_omnibarSearchResult .omnibar_folder {
	color: #a31db1;
}
`;


// click `Save` button to make above settings to take effect.