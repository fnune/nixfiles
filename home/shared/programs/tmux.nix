{ pkgs }:

{
  programs.tmux = {
    enable = true;
    extraConfig = builtins.readFile ./config/tmux.conf;
    plugins = with pkgs.tmuxPlugins; [ yank vim-tmux-navigator extrakto ];
  };
}
