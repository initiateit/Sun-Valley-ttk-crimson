  
# Sun Valley ttk Crimson theme  

![image](https://github.com/initiateit/Sun-Valley-ttk-crimson/blob/main/assets/hero_dark.png)

This is a modified theme of Sun-Valley-ttk introducing Crimson color hints. There are various modifications and some may be questionable, but I think it suits the theme visually.  

[rdbende](https://github.com/rdbende) must take all credit. All I did was click the mouse many times and rename some items.  

The theme has the main font declarations set to [IBM Plex Sans](https://fonts.google.com/specimen/IBM+Plex+Sans) instead of [SegoeUI-VF](https://docs.microsoft.com/en-us/windows/apps/design/downloads/#fonts) when not using Microsoft Windows.  

If you do not have either installed the default font from your OS will be used.  

## Crimson Dark
<img src="https://github.com/initiateit/Sun-Valley-ttk-crimson/blob/main/assets/dark.png" alt="Crimson Dark" style="width: 800px; height: auto;">

## Crimson Light
<img src="https://github.com/initiateit/Sun-Valley-ttk-crimson/blob/main/assets/light.png" alt="Crimson Light" style="width: 800px; height: auto;">




## Installation
The theme is easily installable as a Python package

```
pip install svc-ttk
```


## Usage [![Documentation](https://img.shields.io/badge/-documentation-%23c368c4)](https://github.com/rdbende/Sun-Valley-ttk-theme/wiki/Usage-with-Python)
> **Note:**
> This theme is the same as Sun Valley TTK for all intents and purposes. As such the documentation for said theme is still relevant.
> 
> The theme will only be applied to themeable (`tkinter.ttk`) widgets, and not to the regular Tkinter widgets, they only benefit from the color scheme.

For detailed documentation, visit the [wiki page](https://github.com/rdbende/Sun-Valley-ttk-theme/wiki/Usage-with-Python).
>
```python
import tkinter
from tkinter import ttk

import svc_ttk

root = tkinter.Tk()

button = ttk.Button(root, text="Click me!")
button.pack()

# This is where the magic happens
svc_ttk.set_theme("dark")

root.mainloop()
```
