package require Tk 8.6

source [file join [file dirname [info script]] theme light.tcl]
source [file join [file dirname [info script]] theme dark.tcl]


if {[tk windowingsystem] == "win32"} {
  
  set static ""

  font create SunValleyCaptionFont -family "Segoe UI Variable$static Small" -size -12
  font create SunValleyBodyFont -family "Segoe UI Variable$static Text" -size -14
  font create SunValleyButtonFont -family "Segoe UI Variable$static Text" -size -14 -weight bold
  font create SunValleyBodyStrongFont -family "Segoe UI Variable$static Text Semibold" -size -14
  font create SunValleyBodyLargeFont -family "Segoe UI Variable$static Text" -size -18
  font create SunValleySubtitleFont -family "Segoe UI Variable$static Display Semibold" -size -20
  font create SunValleyTitleFont -family "Segoe UI Variable$static Display Semibold" -size -28
  font create SunValleyTitleLargeFont -family "Segoe UI Variable$static Display Semibold" -size -40
  font create SunValleyDisplayFont -family "Segoe UI Variable$static Display Semibold" -size -68

  } else {

  set static " static"
  font create SunValleyCaptionFont -family "IBM Plex Sans" -size -12
  font create SunValleyBodyFont -family "IBM Plex Sans Medium" -size -14
  font create SunValleyButtonFont -family "IBM Plex Sans Semibold" -size -14
  font create SunValleyButtonFontBold -family "IBM Plex Sans Bold" -size -14 -weight bold
  font create SunValleyBodyStrongFont -family "IBM Plex Sans" -size -14
  font create SunValleyBodyLargeFont -family "IBM Plex Sans" -size -18
  font create SunValleySubtitleFont -family "IBM Plex Sans" -size -20 -weight bold
  font create SunValleyTitleFont -family "IBM Plex Sans" -size -28 -weight bold
  font create SunValleyTitleLargeFont -family "IBM Plex Sans" -size -40 -weight bold
  font create SunValleyDisplayFont -family "IBM Plex Sans" -size -68 -weight bold
}


proc config_entry_font {w} {
  set font_config [$w config -font]
  if {[lindex $font_config 3] != [lindex $font_config 4]} {
    return
  }
  if {[ttk::style theme use] in {"sun-valley-crimson-dark" "sun-valley-crimson-light"}} {
    $w configure -font SunValleyBodyFont
  }
}


proc config_menus {w} {
  if {[tk windowingsystem] == "aqua" || [tk windowingsystem] == "win32"} {
    return
  }
  set fontSpec "SunValleyBodyFont 10"
  set theme [ttk::style theme use]
  if {$theme == "sun-valley-crimson-dark"} {
    $w configure \
      -relief flat \
      -borderwidth 0 \
      -activeborderwidth 0 \
      -background "#f9f9f9" \
      -activebackground $ttk::theme::svc_dark::colors(-selbg) \
      -activeforeground $ttk::theme::svc_dark::colors(-selfg) \
      -selectcolor $ttk::theme::svc_dark::colors(-selfg) \
      -font $fontSpec  ;# Added continuation character for correct syntax
  } elseif {$theme == "sun-valley-crimson-light"} {
    $w configure \
      -relief flat \
      -borderwidth 0 \
      -activeborderwidth 0 \
      -background "#f9f9f9" \
      -activebackground $ttk::theme::svc_dark::colors(-selbg) \
      -activeforeground $ttk::theme::svc_dark::colors(-selfg) \
      -selectcolor $ttk::theme::svc_dark::colors(-selfg) \
      -font $fontSpec  ;# Added continuation character for correct syntax
  }


  if {[[winfo toplevel $w] cget -menu] != $w} {
    if {$theme == "sun-valley-crimson-dark"} {
      $w configure -borderwidth 0 -background $ttk::theme::svc_dark::colors(-bg)
    } elseif {$theme == "sun-valley-crimson-light"} {
      $w configure -borderwidth 0 -background $ttk::theme::svc_light::colors(-bg)
    }
  }
}


proc configure_colors {} {
  set theme [ttk::style theme use]
  if {$theme == "sun-valley-crimson-dark"} {
    ttk::style configure . \
      -background $ttk::theme::svc_dark::colors(-bg) \
      -foreground $ttk::theme::svc_dark::colors(-fg) \
      -troughcolor $ttk::theme::svc_dark::colors(-bg) \
      -focuscolor $ttk::theme::svc_dark::colors(-selbg) \
      -selectbackground $ttk::theme::svc_dark::colors(-selbg) \
      -selectforeground $ttk::theme::svc_dark::colors(-selfg) \
      -insertwidth 1 \
      -insertcolor $ttk::theme::svc_dark::colors(-fg) \
      -fieldbackground $ttk::theme::svc_dark::colors(-bg) \
      -font SunValleyBodyFont \
      -borderwidth 0 \
      -relief flat

    tk_setPalette \
      background $ttk::theme::svc_dark::colors(-bg) \
      foreground $ttk::theme::svc_dark::colors(-fg) \
      highlightColor $ttk::theme::svc_dark::colors(-selbg) \
      selectBackground $ttk::theme::svc_dark::colors(-selbg) \
      selectForeground $ttk::theme::svc_dark::colors(-selfg) \
      activeBackground $ttk::theme::svc_dark::colors(-selbg) \
      activeForeground $ttk::theme::svc_dark::colors(-selfg)

    ttk::style map . -foreground [list disabled $ttk::theme::svc_dark::colors(-disfg)]
  } elseif {$theme == "sun-valley-crimson-light"} {
    ttk::style configure . \
      -background $ttk::theme::svc_light::colors(-bg) \
      -foreground $ttk::theme::svc_light::colors(-fg) \
      -troughcolor $ttk::theme::svc_light::colors(-bg) \
      -focuscolor $ttk::theme::svc_light::colors(-selbg) \
      -selectbackground $ttk::theme::svc_light::colors(-selbg) \
      -selectforeground $ttk::theme::svc_light::colors(-selfg) \
      -insertwidth 1 \
      -insertcolor $ttk::theme::svc_light::colors(-fg) \
      -fieldbackground $ttk::theme::svc_light::colors(-bg) \
      -font SunValleyBodyFont \
      -borderwidth 0 \
      -relief flat

    tk_setPalette \
      background $ttk::theme::svc_light::colors(-bg) \
      foreground $ttk::theme::svc_light::colors(-fg) \
      highlightColor $ttk::theme::svc_light::colors(-selbg) \
      selectBackground $ttk::theme::svc_light::colors(-selbg) \
      selectForeground $ttk::theme::svc_light::colors(-selfg) \
      activeBackground $ttk::theme::svc_light::colors(-selbg) \
      activeForeground $ttk::theme::svc_light::colors(-selfg)

    ttk::style map . -foreground [list disabled $ttk::theme::svc_light::colors(-disfg)]
  }
}


bind [winfo class .] <<ThemeChanged>> {+configure_colors}
bind TEntry <<ThemeChanged>> {+config_entry_font %W}
bind TCombobox <<ThemeChanged>> {+config_entry_font %W}
bind TSpinbox <<ThemeChanged>> {+config_entry_font %W}
bind Menu <<ThemeChanged>> {+config_menus %W}
