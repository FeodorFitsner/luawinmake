@echo on


cd %INSTALL_DIR%

7z a luawinmake-%APPVEYOR_REPO_COMMIT%-%platform%-%Configuration%.7z %INSTALL_DIR%\*
appveyor PushArtifact luawinmake-%APPVEYOR_REPO_COMMIT%-%platform%-%Configuration%.7z

