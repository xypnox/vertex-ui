## Vertex UI theme


A dark UI theme with the ability `adapt` to most syntax themes.

![Vertex UI - screenshot](https://raw.githubusercontent.com/xypnox/vertex-ui/master/screenshot.png)



### Install

Install this theme using __Settings > Install__. Select the "Themes" toggle and search for "vertex-ui". From there, go to __Settings > Themes__ section and selecting "Vertex" from the __UI Themes__ drop-down menu.



### Settings

In the theme settings you can:

- Change the __Font Size__ to scale the whole UI up or down.
- Choose between 3 __Tab Sizing__ modes.
- Hide the  __dock buttons__.

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
