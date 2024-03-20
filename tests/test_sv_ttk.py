import tkinter
from tkinter import ttk

import pytest
import svc_ttk


def test_set_theme():
    svc_ttk.set_theme("dark")
    assert svc_ttk.get_theme() == "dark"

    svc_ttk.set_theme("light")
    assert svc_ttk.get_theme() == "light"


def test_set_theme_using_ttk_dot_style_dot_theme_use():
    # theme is already loaded for the default root
    ttk.Style().theme_use("sun-valley-crimson-dark")
    assert svc_ttk.get_theme() == "dark"

    svc_ttk.set_theme("light")
    assert ttk.Style().theme_use() == "sun-valley-crimson-light"


def test_use_xxx_theme():
    svc_ttk.use_dark_theme()
    assert svc_ttk.get_theme() == "dark"

    svc_ttk.use_light_theme()
    assert svc_ttk.get_theme() == "light"


def test_toggle_theme():
    svc_ttk.set_theme("dark")
    assert svc_ttk.get_theme() == "dark"

    svc_ttk.toggle_theme()
    assert svc_ttk.get_theme() == "light"


def test_no_default_root():
    tkinter.NoDefaultRoot()
    with pytest.raises(RuntimeError):
        svc_ttk.get_theme()


def test_explicit_root():
    root = tkinter.Tk()
    assert svc_ttk.get_theme(root=root) == ttk.Style(root).theme_use()

    svc_ttk.set_theme("dark", root=root)
    assert svc_ttk.get_theme(root=root) == "dark"
