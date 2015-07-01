@echo on

Setlocal EnableDelayedExpansion EnableExtensions

if not defined SEVENZIP set SEVENZIP=7z
cd %INSTALL_DIR%

set _artifact_file=luawinmake-%APPVEYOR_REPO_COMMIT%-%platform%-%Configuration%.7z

%SEVENZIP% a %_artifact_file% %INSTALL_DIR%\*
dir %_artifact_file%
rem appveyor PushArtifact %_artifact_file%

endlocal & appveyor PushArtifact %_artifact_file%
