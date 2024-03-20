  
# Sun Valley ttk Crimson theme
>
This is a modified theme of Sun-Valley-ttk introducing Crimson color hints.
There are various modifications and some may be questionable, but I think it suits the theme visually.
>
[rdbende](https://github.com/rdbende) must take all credit. All I did was click the mouse many times and rename some items.


## Crimson Dark
![Screenshot from 2024-03-20 19-14-19](https://github.com/initiateit/Sun-Valley-ttk-crimson/assets/59432267/80908acc-e868-405a-be22-0744bc51bfaf)


## Crimson Light
![Screenshot from 2024-03-20 19-13-43](https://github.com/initiateit/Sun-Valley-ttk-crimson/assets/59432267/94ab1346-960b-4476-9938-ad4661016d88)


## Installation [![PyPi downloads](https://static.pepy.tech/badge/svc-ttk)](https://pypi.org/project/svc-ttk)
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
