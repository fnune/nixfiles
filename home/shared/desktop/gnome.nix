{
  dconf.enable = true;
  dconf.settings = {
    "org/gnome/shell" = {
      "enabled-extensions" = [
        "appindicatorsupport@rgcjonas.gmail.com"
        "drive-menu@gnome-shell-extensions.gcampax.github.com"
        "instantworkspaceswitcher@amalantony.net"
        "no-overview@fthx"
        "sound-output-device-chooser@kgshank.net"
        "workspaces-bar@fthx"
      ];
    };

    "org/gnome/shell/app-switcher" = {
      "current-workspace-only" = true;
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      "delay" = 200;
      "repeat-interval" = 30;
    };

    "org/gnome/mutter" = {
      "edge-tiling" = true;
      "dynamic-workspaces" = false;
      "overlay-key" = "";
    };

    "org/gnome/desktop/wm/preferences" = {
      "focus-mode" = "click";
      "num-workspaces" = 9;
    };

    "org/gnome/shell/keybindings" = {
      "switch-to-application-2" = [ ];
      "switch-to-application-3" = [ ];
      "switch-to-application-4" = [ ];
      "switch-to-application-5" = [ ];
      "switch-to-application-6" = [ ];
      "switch-to-application-7" = [ ];
      "switch-to-application-8" = [ ];
      "switch-to-application-9" = [ ];

      "toggle-overview" = [ "<Super>d" ];
    };

    "org/gnome/desktop/wm/keybindings" = {
      "maximize" = [ ];
      "unmaximize" = [ ];

      "move-to-workspace-down" = [ ];
      "move-to-workspace-last" = [ ];
      "move-to-workspace-left" = [ ];
      "move-to-workspace-right" = [ ];
      "move-to-workspace-up" = [ ];

      "switch-to-workspace-down" = [ ];
      "switch-to-workspace-last" = [ ];
      "switch-to-workspace-left" = [ ];
      "switch-to-workspace-right" = [ ];
      "switch-to-workspace-up" = [ ];

      "close" = [ "<Super><Shift>Q" ];

      "switch-to-workspace-1" = [ "<Super>1" ];
      "switch-to-workspace-2" = [ "<Super>2" ];
      "switch-to-workspace-3" = [ "<Super>3" ];
      "switch-to-workspace-4" = [ "<Super>4" ];
      "switch-to-workspace-5" = [ "<Super>5" ];
      "switch-to-workspace-6" = [ "<Super>6" ];
      "switch-to-workspace-7" = [ "<Super>7" ];
      "switch-to-workspace-8" = [ "<Super>8" ];
      "switch-to-workspace-9" = [ "<Super>9" ];

      "move-to-workspace-1" = [ "<Super><Shift>1" ];
      "move-to-workspace-2" = [ "<Super><Shift>2" ];
      "move-to-workspace-3" = [ "<Super><Shift>3" ];
      "move-to-workspace-4" = [ "<Super><Shift>4" ];
      "move-to-workspace-5" = [ "<Super><Shift>5" ];
      "move-to-workspace-6" = [ "<Super><Shift>6" ];
      "move-to-workspace-7" = [ "<Super><Shift>7" ];
      "move-to-workspace-8" = [ "<Super><Shift>8" ];
      "move-to-workspace-9" = [ "<Super><Shift>9" ];

      "toggle-maximized" = [ "<Super>f" ];
      "toggle-fullscreen" = ["<Super><Shift>F"];

      "move-to-side-w" = [ "<Super><Shift>H" ];
      "move-to-side-s" = [ "<Super><Shift>J" ];
      "move-to-side-n" = [ "<Super><Shift>K" ];
      "move-to-side-e" = [ "<Super><Shift>L" ];

      "move-to-monitor-left" = [ "<Ctrl><Shift>H" ];
      "move-to-monitor-down" = [ "<Ctrl><Shift>J" ];
      "move-to-monitor-up" = [ "<Ctrl><Shift>K" ];
      "move-to-monitor-right" = [ "<Ctrl><Shift>L" ];
    };
  };
}
