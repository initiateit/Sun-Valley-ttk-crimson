import re
from pathlib import Path

from setuptools import setup

long_description = re.sub(
    r"(?s)<picture>.*</picture>",
    '<img alt="Cover image" src="https://raw.githubusercontent.com/initiateit/Sun-Valley-ttk-theme/master/assets/hero_light.png">',
    (Path(__file__).parent / "README.md").read_text(),
)


setup(
    name="svc_ttk",
    version="2.6.0",
    license="MIT",
    authors="rdbende, initiateit",
    author_email="rdbende@proton.me, jason@initiateit.com.au",
    url="https://github.com/initiateit/Sun-Valley-ttk-crimson-theme",
    project_urls={
        "Source": "https://github.com/initiateit/Sun-Valley-ttk-crimson-theme",
        "Documentation": "https://github.com/initiateit/Sun-Valley-ttk-crimson-theme",
        "Tracker": "https://github.com/initiateit/Sun-Valley-ttk-crimson-theme/issues",
    },
    description="A modified theme of Sun-Valley-ttk with crimson hinting",
    long_description=long_description,
    long_description_content_type="text/markdown",
    packages=["svc_ttk"],
    package_data={"svc_ttk": ["svc.tcl", "theme/*", "py.typed"]},
    python_requires=">=3.8",
    classifiers=[
        "Intended Audience :: Developers",
        "Topic :: Software Development :: User Interfaces",
        "Programming Language :: Python :: 3 :: Only",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
        "Programming Language :: Python :: 3.12",
        "Programming Language :: Tcl",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    keywords=[
        "svc-ttk",
        "tcl",
        "tcl/tk",
        "theme",
        "tile",
        "tk",
        "ttk",
        "tkinter",
        "modern",
        "fluent",
        "dark-theme",
        "sun-valley",
        "windows-11",
        "winui",
    ],
)
