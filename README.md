## Vertex UI theme

![LOGOs](https://raw.githubusercontent.com/xypnox/vertex-ui/master/vertex.png)

A dark UI theme with the ability `adapt` to most syntax themes.

![Vertex UI - screenshot](https://raw.githubusercontent.com/xypnox/vertex-ui/master/screenshots/v0.8.png)

_Syntax Theme: Northem Atom Dark_

## Matches well with several syntax themes

### Dracula
![dracula](https://raw.githubusercontent.com/xypnox/vertex-ui/master/screenshots/dracula.png)

### Seti
![seti](https://raw.githubusercontent.com/xypnox/vertex-ui/master/screenshots/seti.png)

### Monokai Seti
![monokai-seti](https://raw.githubusercontent.com/xypnox/vertex-ui/master/screenshots/monokai-seti.png)

### One Dark
![one-dark](https://raw.githubusercontent.com/xypnox/vertex-ui/master/screenshots/one-dark.png)

### An old hope
![an-old-hope](https://raw.githubusercontent.com/xypnox/vertex-ui/master/screenshots/an-old-hope.png)

### Solarized Dark
![solarized-dark](https://raw.githubusercontent.com/xypnox/vertex-ui/master/screenshots/solarized-dark.png)

### Install

Install this theme using __Settings > Install__. Select the "Themes" toggle and search for "vertex-ui". From there, go to __Settings > Themes__ section and selecting "Vertex" from the __UI Themes__ drop-down menu.



### Settings

In the theme settings you can:

- Autohide the status bar.

To make changes, go to `Settings > Themes > Vertex UI > Settings` or the cog icon next to the theme picker.


### Customize

It's also possible to resize only certain areas by adding the following to your `styles.less` (Use DevTools to find the right selectors):

```css
.vertex-ui {
  .tab-bar { font-size: 18px; }
  .tree-view { font-size: 14px; }
  .status-bar { font-size: 12px; }
}
```


### FAQ

__Why do the colors change when I switch Syntax themes?__
This UI theme uses the same background color as the chosen syntax theme. If that syntax theme has a light background color, it only uses its hue, but otherwise stays dark. This lets you use dark-light combos.


## Thanks

- [Apex Adapt Dark Slim UI theme](https://atom.io/themes/apex-adapt-dark-slim-ui)
- [Apex Adapt Dark UI theme](https://atom.io/themes/apex-adapt-dark-ui)
- [Apex UI](https://atom.io/themes/apex-ui)
- [One Dark UI](https://atom.io/themes/one-dark-ui)
