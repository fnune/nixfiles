{ config, pkgs }:

{
  home.packages = [ pkgs.neovim pkgs.nodejs ];
  home.file."${config.xdg.configHome}/nvim".source = (builtins.fetchGit {
    url = "git@github.com:fnune/neovim-config.git";
    ref = "main";
  });
}

