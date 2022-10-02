{ config }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        startup_mode = "Maximized";
        decorations = "none";
      };
      import = [ "${config.xdg.configHome}/alacritty/alacritty.local.yml" ];
      colors = {
        primary = {
          background = "0x232136";
          foreground = "0xe0def4";
        };
        cursor = {
          text = "0xe0def4";
          cursor = "0x56526e";
        };
        vi_mode_cursor = {
          text = "0xe0def4";
          cursor = "0x56526e";
        };
        line_indicator = {
          foreground = null;
          background = null;
        };
        selection = {
          text = "0xe0def4";
          background = "0x44415a";
        };
        normal = {
          black = "0x393552";
          red = "0xeb6f92";
          green = "0x3e8fb0";
          yellow = "0xf6c177";
          blue = "0x9ccfd8";
          magenta = "0xc4a7e7";
          cyan = "0xea9a97";
          white = "0xe0def4";
        };
        bright = {
          black = "0x6e6a86";
          red = "0xeb6f92";
          green = "0x3e8fb0";
          yellow = "0xf6c177";
          blue = "0x9ccfd8";
          magenta = "0xc4a7e7";
          cyan = "0xea9a97";
          white = "0xe0def4";
        };
        hints = {
          start = {
            foreground = "#908caa";
            background = "#2a273f";
          };
          end = {
            foreground = "#6e6a86";
            background = "#2a273f";
          };
        };
      };
    };
  };

  dconf.settings = {
    "org/gnome/settings-daemon/plugins/media-keys" = {
      "custom-keybindings" = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/alacritty/" ];
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/alacritty" = {
      binding = "<Super>Return";
      command = "alacritty";
      name = "Alacritty";
    };
  };
}
