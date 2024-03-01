<#
Запск скрипта:
Для открытия PowerShell от имени администратора надо ввести "PowerShell" в поиск и там выбрать нужный пункт.
Надо открыть PowerShell от имени администратора и ввести туда такие строки:

cd E:\Users\Forni\Downloads\ChromeDownload
Set-ExecutionPolicy RemoteSigned -Scope Process -Force
.\SetUpProgramms.ps1

Пояснения:
//Надо перейти в папку со скриптом в консоли и оттуда его запустить:
cd E:\Users\Forni\Downloads\ChromeDownload
//Эта строка даёт нужные разрешения на запуск:
Set-ExecutionPolicy RemoteSigned -Scope Process -Force
//Это запуск самого скрипта:
.\SetUpProgramms.ps1
//Эта строка означает, что вас не будут спаршить "продолжить: да/нет?" во время становки:
 -Confirm:$false
#>


Remove-Item -Recurse -Force C:\ProgramData\chocolatey

Set-ExecutionPolicy RemoteSigned -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
	
#Браузеры:
#choco install safari -Confirm:$false
#choco install vivaldi -Confirm:$false
#choco install googlechrome -Confirm:$false -Confirm:$false
#choco install microsoft-edge -Confirm:$false -Confirm:$false
#choco install firefox -Confirm:$false -Confirm:$false
#choco install opera -Confirm:$false -Confirm:$false


#Стандартные программы:
#Программа архиватор
#choco install 7zip.install --pre  -Confirm:$false
#Программа архиватор
#choco install winrar -Confirm:$false
#Аналог блокнота, но с расширенным функционалом и плагинами для увеличения удобства работы с простыми текстовыми файлами.
#choco install notepadplusplus -Confirm:$false -Confirm:$false
#Аналог проводника
#choco install totalcommander -Confirm:$false -Confirm:$false


#Обычные (частые) программы:
#Хороший переводчик с машинным обучением, для быстрого перевода можно выделить текст и нажать ctrl+C и потом еще раз ctrl+C (щелкнуть дважды) и будет быстрый перевод
#choco install deepl -Confirm:$false
#Аудио проигрыватель с бОльшим функционалом, чем у стандратного.
#choco install aimp -Confirm:$false
#Программа для чтения разных текстовых файлов pdf, djvu и т.п.
#choco install stduviewer -Confirm:$false
#Проигрыватель аудио и видео.
#choco install vlc -Confirm:$false
#Программа для записи видео с экрана.
#choco install obs-studio -Confirm:$false


#Программы для общения:
#Программа для общения сообщения/голос
#choco install discord -Confirm:$false
#Мессенджер для рабочего стола
#choco install telegram -Confirm:$false
#choco install slack -Confirm:$false

#Для игр:
#Программа-библиотека для игр и библиотека для игрового движка Unreal Engine
#choco install epicgameslauncher -Confirm:$false
#Программа-библиотека для игр, в которой игры не привязаны к самой библиотеке, так что их можно себе скачать и они всегда будут ваши. Она не нужена для их запуска.
#choco install goggalaxy -Confirm:$false
#Программа для отслеживания производительности программы
#choco install msiafterburner -Confirm:$false
#Программа для запуска андроид приложений на ПК
#choco install bluestacks -Confirm:$false
#Программа-библиотека для игр
#choco install steam -Confirm:$false


#Нечастые программы:
#Программа для монтирования вируальных дисков (.ISO и т.п.) или записи образов на флешки/физические диски
#choco install alcohol52-free -Confirm:$false
#Яндекс диск
#choco install yandexdisk -Confirm:$false
#Облачное хранилище. Самое старое и самое безоапсное в мире, если моя инфа верна. Места немного (бесплатного), но работать удобно.
#choco install box-drive -Confirm:$false
#Программа для установки оперционных систем прямо внутри основной.
#choco install virtualbox -Confirm:$false -Confirm:$false


#Для программирования
#choco install jenkins -Confirm:$false
#choco install jetbrainstoolbox -Confirm:$false
#choco install msvisualcplusplus2012-redist -Confirm:$false
#choco install msvisualcplusplus2013-redist -Confirm:$false
#choco install visualstudio-installer -Confirm:$false
#choco install python -Confirm:$false
#choco install pycharm-community -Confirm:$false -Confirm:$false
#choco install sublimetext3 -Confirm:$false -Confirm:$false
#choco install vscode -Confirm:$false -Confirm:$false
#choco install visualstudio2022community -Confirm:$false -Confirm:$false
#choco install cmake --pre  -Confirm:$false
#Установщик для игровых движков Unity азных версий и управления проектами
#choco install unity-hub -Confirm:$false -Confirm:$false


#Драйвера:
#Для видеокарт NVidia:
#choco install geforce-experience -Confirm:$false
#choco install geforce-game-ready-driver -Confirm:$false
#.Net:
#choco install dotnet-sdk -Confirm:$false


#3D моделирование:
#choco install blender -Confirm:$false

#Просто для git:
#choco install git.install -Confirm:$false -Confirm:$false
#choco install smartgit -Confirm:$false
#choco install sourcetree -Confirm:$false
#choco install tortoisegit -Confirm:$false

