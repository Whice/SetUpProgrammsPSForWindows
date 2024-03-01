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
	

#choco install safari -Confirm:$false
#choco install vivaldi -Confirm:$false
#choco install 7zip.install --pre  -Confirm:$false
#choco install aimp -Confirm:$false
#choco install alcohol52-free -Confirm:$false
#choco install deepl -Confirm:$false
#choco install discord -Confirm:$false
#choco install epicgameslauncher -Confirm:$false
#choco install goggalaxy -Confirm:$false
#choco install jenkins -Confirm:$false
#choco install jetbrainstoolbox -Confirm:$false
#choco install dotnet-sdk -Confirm:$false
#choco install msvisualcplusplus2012-redist -Confirm:$false
#choco install msvisualcplusplus2013-redist -Confirm:$false
#choco install visualstudio-installer -Confirm:$false
#choco install msiafterburner -Confirm:$false
#choco install bluestacks -Confirm:$false
#choco install geforce-experience -Confirm:$false
#choco install geforce-game-ready-driver -Confirm:$false
#choco install python -Confirm:$false
#choco install stduviewer -Confirm:$false
#choco install steam -Confirm:$false
#choco install telegram -Confirm:$false
#choco install vlc -Confirm:$false
#choco install yandexdisk -Confirm:$false
#choco install box-drive -Confirm:$false
#choco install googlechrome -Confirm:$false -Confirm:$false
#choco install microsoft-edge -Confirm:$false -Confirm:$false
#choco install firefox -Confirm:$false -Confirm:$false
#choco install opera -Confirm:$false -Confirm:$false
#choco install notepadplusplus -Confirm:$false -Confirm:$false
#choco install pycharm-community -Confirm:$false -Confirm:$false
#choco install sublimetext3 -Confirm:$false -Confirm:$false
#choco install vscode -Confirm:$false -Confirm:$false
#choco install visualstudio2022community -Confirm:$false -Confirm:$false
#choco install git.install -Confirm:$false -Confirm:$false
#choco install totalcommander -Confirm:$false -Confirm:$false
#choco install unity-hub -Confirm:$false -Confirm:$false
#choco install virtualbox -Confirm:$false -Confirm:$false
#choco install blender -Confirm:$false
#choco install obs-studio -Confirm:$false
#choco install slack -Confirm:$false
#choco install smartgit -Confirm:$false
#choco install sourcetree -Confirm:$false
#choco install tortoisegit -Confirm:$false
#choco install cmake --pre  -Confirm:$false

