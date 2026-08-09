# Убираем стандартное приветствие fish
set -g fish_greeting

if status is-interactive

    # Starship
    starship init fish | source

    # zoxide
    if type -q zoxide
        zoxide init fish | source
    end

    # fzf
    if type -q fzf
        fzf --fish | source
    end

    # Красивый вывод файлов
   functions --erase ls

	alias ls "eza --icons --group-directories-first"
	alias ll "eza -lh --icons --group-directories-first"
	alias la "eza -lah --icons --group-directories-first"
	alias lt "eza --tree --icons"
    alias spf superfile

     # bat
    if type -q batcat
         alias cat batcat
     else if type -q bat
         alias cat bat
    end

    alias c clear

    set -gx PATH $PATH ~/go/bin

    alias gs "git status"
    alias ga "git add"
    alias gc "git commit"
    alias gp "git push"
    alias gl "git log --oneline --graph --decorate"

    alias winhome "cd /mnt/c/Users/user"
    alias desktop "cd /mnt/c/Users/user/Desktop"
    alias downloads "cd /mnt/c/Users/user/Downloads"

    function s21
        cd /mnt/e/Школа21
    end

    alias .. "cd .."
    alias ... "cd ../.."

if status is-interactive
    if test "$TERM_PROGRAM" != "vscode"
        pokemon-colorscripts -r
    end
end
end