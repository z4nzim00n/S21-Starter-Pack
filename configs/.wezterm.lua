local wezterm = require 'wezterm'

return {

    -- Цветовая схема терминала
    color_scheme = "Kanagawa (Gogh)",

    -- Шрифт (Nerd Font нужен для красивых иконок в Fish/Starship)
    font = wezterm.font("Hasklug Nerd Font"),
    font_size = 14,


    -- Прозрачность окна
    -- 1.0 = полностью непрозрачное
    -- 0.0 = полностью прозрачное
    window_background_opacity = 0.99,


    -- Цвета терминала
    -- Используются как запасной вариант, если тема не загрузилась
    colors = {
        foreground = "#DCD7BA",
        background = "#1F1F28",
    },


    -- Прячем панель вкладок, если открыто только одно окно
    hide_tab_bar_if_only_one_tab = true,


    -- Запускаем WSL при открытии WezTerm
    default_prog = {
        "wsl.exe",
        "-d",
        "Ubuntu",
    },


    -- Настройки курсора
    default_cursor_style = "BlinkingBar",
    cursor_blink_rate = 600,
    cursor_thickness = "1.5pt",


    -- Настройки вкладок
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = true,


    -- Перетаскивание окна зажатием ALT + ЛКМ
    mouse_bindings = {
        {
            event = {
                Down = {
                    streak = 1,
                    button = "Left",
                },
            },
            mods = "ALT",
            action = wezterm.action.StartWindowDrag,
        },
    },
}