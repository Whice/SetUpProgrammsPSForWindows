<#
Запуск скрипта:
Для открытия PowerShell от имени администратора надо ввести "PowerShell" в поиск и там выбрать нужный пункт.
Надо открыть PowerShell от имени администратора и ввести туда такие строки:

cd E:\Users\Forni\Downloads\ChromeDownload
Set-ExecutionPolicy RemoteSigned -Scope Process -Force
.\SetUpProgramms.ps1

Пояснения:
// Надо перейти в папку со скриптом в консоли и оттуда его запустить:
cd E:\Users\Forni\Downloads\ChromeDownload
// Эта строка даёт нужные разрешения на запуск:
Set-ExecutionPolicy RemoteSigned -Scope Process -Force
// Это запуск самого скрипта:
.\SetUpProgramms.ps1
// Эта строка означает, что вас не будут спрашивать "продолжить: да/нет?" во время установки:
 -Confirm:$false
#>

# Установка пути для установки всех программ
$installPath = "D:\Program Files"
#функция для копирования в папку установки из указанной папки и добавления ярлыка на рабочий стол
function CopyAndCreateDesktopShortcut($sourcePath, $destinationPath, $exeName) 
{
    $exePath = Join-Path -Path $destinationPath -ChildPath $exeName
    Copy-Item -Path $sourcePath -Destination $destinationPath -Recurse -Force #Копирование
    $shortcutPath = [Environment]::GetFolderPath("Desktop") + "\$exeName++.lnk" # Путь к ярлыку на рабочем столе
    $wshShell = New-Object -comObject WScript.Shell
    $shortcut = $wshShell.CreateShortcut($shortcutPath)
    $shortcut.TargetPath = $exePath
    $shortcut.Save()
}

#Remove-Item -Recurse -Force C:\ProgramData\chocolatey

#Set-ExecutionPolicy RemoteSigned -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


# Установка графической версии этого менеджера пакетов
# choco install ChocolateyGUI -Confirm:$false -installargs "'/InstallLocation=$installPath'"

# Браузеры:
# choco install safari -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install vivaldi -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install googlechrome -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install microsoft-edge -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install firefox -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install opera -Confirm:$false -installargs "'/InstallLocation=$installPath'"

# Стандартные программы:
# Программа архиватор
# choco install 7zip.install --pre -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Программа архиватор
# choco install winrar -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Аналог блокнота, но с расширенным функционалом и плагинами для увеличения удобства работы с простыми текстовыми файлами.
# choco install notepadplusplus -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Аналог проводника
# choco install totalcommander -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Аналог проводника
# choco install explorerplusplus -Confirm:$false 
# $sourcePath = "C:\ProgramData\chocolatey\lib-bad\Explorerplusplus\1.3.5\x64" #Путь, откуда брать
# $destinationPath = $installPath + "\ExplorerpPusPlus" #Путь, куда положить
# CopyAndCreateDesktopShortcut -sourcePath $sourcePath -destinationPath $destinationPath -exeName "Explorer++.exe"


# Обычные (частые) программы:
# Хороший переводчик с машинным обучением, для быстрого перевода можно выделить текст и нажать ctrl+C и потом еще раз ctrl+C (щелкнуть дважды) и будет быстрый перевод
# choco install deepl -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Аудио проигрыватель с бОльшим функционалом, чем у стандартного.
# choco install aimp -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Программа для чтения разных текстовых файлов pdf, djvu и т.п.
# choco install stduviewer -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Проигрыватель аудио и видео.
# choco install vlc -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Программа для записи видео с экрана.
# choco install obs-studio -Confirm:$false -installargs "'/InstallLocation=$installPath'"

# Программы для общения:
# Программа для общения сообщения/голос
# choco install discord -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Мессенджер для рабочего стола
# choco install telegram -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install slack -Confirm:$false -installargs "'/InstallLocation=$installPath'"

# Для игр:
# Программа-библиотека для игр и библиотека для игрового движка Unreal Engine
# choco install epicgameslauncher -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Программа-библиотека для игр, в которой игры не привязаны к самой библиотеке, так что их можно себе скачать и они всегда будут ваши. Она не нужена для их запуска.
# choco install goggalaxy -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Программа для отслеживания производительности программы
# choco install msiafterburner -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Программа для запуска андроид приложений на ПК
# choco install bluestacks -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Программа-библиотека для игр
# choco install steam -Confirm:$false -installargs "'/InstallLocation=$installPath'"

# Нечастые программы:
# Программа для монтирования виртуальных дисков (.ISO и т.п.) или записи образов на флешки/физические диски
# choco install alcohol52-free -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Яндекс диск
# choco install yandexdisk -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Облачное хранилище. Самое старое и самое безопасное в мире, если моя инфа верна. Места немного (бесплатного), но работать удобно.
# choco install box-drive -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Программа для установки операционных систем прямо внутри основной.
# choco install virtualbox -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Программа для установки операционных систем прямо внутри основной. Для этой программы указать путь копирования, т.к. она не устанавливается.
# choco install rufus -Confirm:$false --ia "'/D=$installPath'"
# $sourcePath = "C:\ProgramData\chocolatey\lib\rufus\tools"
# $destinationPath = $installPath + "\Rufus"
# CopyAndCreateDesktopShortcut -sourcePath $sourcePath -destinationPath $destinationPath -exeName "rufus.exe"

 
 
# Для программирования
# choco install jenkins -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install jetbrainstoolbox -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install msvisualcplusplus2012-redist -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install msvisualcplusplus2013-redist -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install visualstudio-installer -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install python -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install pycharm-community -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install sublimetext3 -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install vscode -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install visualstudio2022community -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install cmake --pre -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Установщик для игровых движков Unity разных версий и управления проектами
# choco install unity-hub -Confirm:$false -installargs "'/InstallLocation=$installPath'"

# Драйвера:
#Всякие полезные кодеки для видео
# choco install k-litecodecpack-standard -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# Для видеокарт NVidia:
# choco install geforce-experience -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install geforce-game-ready-driver -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# .Net:
# choco install dotnet-sdk -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install netfx-4.8-devpack -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install dotnet1.1 -Confirm:$false
# choco install dotnet3.5 -Confirm:$false
# choco install dotnet4.0 -Confirm:$false
# choco install dotnet-5.0-sdk -Confirm:$false
# choco install dotnet-5.0-runtime -Confirm:$false
# choco install dotnet-6.0-sdk -Confirm:$false
# choco install dotnet-6.0-runtime -Confirm:$false
# choco install dotnet-7.0-runtime -Confirm:$false
# choco install dotnet-7.0-sdk -Confirm:$false
# choco install dotnet-8.0-runtime -Confirm:$false
# choco install dotnet-8.0-sdk-1xx -Confirm:$false
# choco install dotnet --pre -Confirm:$false
# choco install dotnet-runtime --pre -Confirm:$false

# 3D моделирование:
# choco install blender -Confirm:$false -installargs "'/InstallLocation=$installPath'"

# Просто для git:
# choco install git.install -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install smartgit -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install sourcetree -Confirm:$false -installargs "'/InstallLocation=$installPath'"
# choco install tortoisegit -Confirm:$false -installargs "'/InstallLocation=$installPath'"


Write-Host "Enter for exit..."
Read-Host