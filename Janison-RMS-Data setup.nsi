;!include nsDialogs.nsh
;!include LogicLib.nsh


; example1.nsi
;
; This script is perhaps one of the simplest NSIs you can make. All of the
; optional settings are left to their default settings. The installer simply 
; prompts the user asking them where to install, and drops a copy of example1.nsi
; there. 

XPStyle on

;--------------------------------

; The name of the installer
Name "Janison-RMS-Data setup"

; The file to write
OutFile "Janison-RMS-Data setup.exe"

; The default installation directory
InstallDir "R:\RMS\Data"

; Request application privileges for Windows Vista
RequestExecutionLevel user

;--------------------------------


; Pages

Page directory
Page instfiles


;--------------------------------


; The stuff to install
Section "" ;No components page, name is not important

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File "Data\*.*"

SectionEnd ; end the section
