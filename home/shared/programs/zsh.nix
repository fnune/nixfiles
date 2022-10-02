{ pkgs, config }:

{
  programs.zsh = {
    enable = true;
    oh-my-zsh = { enable = true; };
    plugins = [
      {
        name = "zsh-vi-mode";
        src = pkgs.fetchFromGitHub {
          owner = "jeffreytse";
          repo = "zsh-vi-mode";
          rev = "v0.8.5";
	  sha256 = "sha256-EOYqHh0rcgoi26eopm6FTl81ehak5kXMmzNcnJDH8/E=";
        };
      }
    ];
    shellAliases = {
      la = "ls -la";
      sudo = "sudo ";
      vim = "nvim";
      vi = "nvim";
    };
    history = {
      size = 100000;
      path = "${config.home.homeDirectory}/.zsh_history";
    };
    envExtra = ''
      PROMPT=$' %{\033[3m%}%(5~|…/%3~|%~)%{\033[0m%} %(?.%{$fg[green]%}.%{$fg[red]%}[%?] )=>%{$reset_color%} '

      export EDITOR=nvim
      export FNUNE_EDITOR=nvim
      export SUDO_EDITOR=nvim
      export VISUAL=nvim
      export KEYTIMEOUT=1
      export TERM=xterm-256color
      export ZVM_CURSOR_STYLE_ENABLED=false
    '';
    profileExtra = ''
      # Change to a git repository's root directory from anywhere inside it
      function cdb() {
        inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
        if [ $inside_git_repo ]; then
          cd `git rev-parse --show-toplevel`
        else
          echo "Not a git project"
        fi
      }
      
      function untilfail() {
        while "$@"; do :; done
      }
    '';
  };
  
  home.packages = [ pkgs.bfs ];
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    changeDirWidgetCommand = "bfs -type d -nohidden 2> /dev/null";
  };
}
