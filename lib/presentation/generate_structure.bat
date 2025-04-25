@echo off
setlocal

:: Extract base name (remove '_screen' from folder name)
set "main_folder=safe_e_commerce_screen"
set "base_name=%main_folder:_screen=%"

:: Create main directory
mkdir "%main_folder%" 2>nul

:: Create bloc directory and files
mkdir "%main_folder%\bloc" 2>nul
type nul > "%main_folder%\bloc\%base_name%_bloc.dart"
type nul > "%main_folder%\bloc\%base_name%_event.dart"
type nul > "%main_folder%\bloc\%base_name%_state.dart"

:: Create models directory and file
mkdir "%main_folder%\models" 2>nul
type nul > "%main_folder%\models\%base_name%_model.dart"

:: Create screen file (uses full folder name)
type nul > "%main_folder%\%main_folder%.dart"

echo Structure created:
echo - %main_folder%\
echo   - bloc\%base_name%_[bloc|event|state].dart
echo   - models\%base_name%_model.dart
echo   - %main_folder%.dart
pause