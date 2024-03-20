  
# Sun Valley ttk Crimson theme
This is a modified theme of Sun-Valley-ttk introducing Crimson color hints. There are various modifcations.

@rdbende must take all credit. All I did was click the mouse many times and rename some items.


## Crimson Light
![Screenshot from 2024-03-20 19-13-43](https://github.com/initiateit/sun-valley-ttk-crimson/assets/59432267/995a1d69-7d06-4d9e-a13c-489219f0a6c2)

## Crimson Dark
![Screenshot from 2024-03-20 19-14-19](https://github.com/initiateit/sun-valley-ttk-crimson/assets/59432267/bf71cd5e-b6c9-47b2-9613-f47ced7c194a)



## Installation [![PyPi downloads](https://static.pepy.tech/badge/svc-ttk)](https://pypi.org/project/svc-ttk)
The theme is easily installable as a Python package

```
pip install svc-ttk
```


## Usage [![Documentation](https://img.shields.io/badge/-documentation-%23c368c4)](https://github.com/rdbende/Sun-Valley-ttk-theme/wiki/Usage-with-Python)
> **Note:**
> 
> The theme will only be applied to themeable (`tkinter.ttk`) widgets, and not with the regular Tkinter widgets, they only benefit from the color scheme.

For detailed documentation, visit the [wiki page](https://github.com/rdbende/Sun-Valley-ttk-theme/wiki/Usage-with-Python).

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