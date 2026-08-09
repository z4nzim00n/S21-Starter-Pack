# 03 — WezTerm
# 📚 Содержание

1. [01 — SSH ключ](01-ssh-key.md)
2. [02 — Установка WSL](02-wsl.md) 
3. [03 — WezTerm](03-wezterm.md) 👈 сейчас вы здесь
4. [04 — Fish](04-fish.md)


## Зачем вообще WezTerm?

Обычный терминал Windows работает, но выглядит скучно.

Установим другой терминал, который позволит куда больше настроек для кастомизации.

# Установка WezTerm

Открываем PowerShell.

Проверяем наличие winget:

```powershell
winget --version
```

Устанавливаем WezTerm:

```powershell
winget install wez.wezterm
```

После установки закрываем PowerShell.


![Установка WezTerm](assets/wezterm%20clear.png)


После установки можно зайти в WezTerm и понять, что стало ещё уродливее чем было.

Это нормально.

Пока что это просто голый терминал без настроек.


---

## Сейчас важно его настроить.

Но сперва сделаем один необходимый шаг.


# Установка шрифта

В папке S21-Starter-Pack находится папка configs, внутри неё:

```
Hasklug Fonts
```

Выделяем все файлы шрифтов:

```
Ctrl + A
```

Нажимаем:

```
ПКМ → Установить
```


![Установка Hasklug Fonts](assets/3.2%20fonts.png)





---

# Установка конфига WezTerm

В папке проекта, configs, находится файл:

```
.wezterm.lua
```

Его нужно перенести сюда:

```
C:\Users\ВАШ_ПОЛЬЗОВАТЕЛЬ\
```

В итоге должно получиться:

```
C:\Users\user\.wezterm.lua
```


![Перенос .wezterm.lua](assets/3.3%20weztermlua.png)



---

## Немного про конфиг

Менять его руками не обязательно.

Файл уже готов.

Но если в будущем захочется поменять:

- шрифт;
- размер текста;
- цветовую тему;
- прозрачность;

то всё это находится именно здесь.


```lua
⚠️ Копировать этот код не нужно.
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
```


Если захотите сделать свой дизайн терминала — можно попросить нейросеть помочь изменить конфиг.



--- 
# Проверка

Запускаем WezTerm.


![Готовый WezTerm](assets/3.4%20wezrerm+bash.png)


Если всё сделано правильно:

- откроется Ubuntu через WSL;
- будет применена тема Kanagawa;
- новый шрифт будет работать;
- терминал будет открываться сразу в домашней папке.

Готово.

у меня на скрине я сперва написал
```
cd..
cd..
ls
```
просто чтобы показать цвета. Вам делать это не нужно.





Теперь у нас есть красивая оболочка для дальнейшей настройки Fish.


# ➡️ Далее: [04 — Fish](04-fish.md)