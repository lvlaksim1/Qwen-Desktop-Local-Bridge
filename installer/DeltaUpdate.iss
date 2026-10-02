#ifndef DeltaDir
  #define DeltaDir "..\delta"
#endif

#ifndef OutputDir
  #define OutputDir ".."
#endif

#ifndef BaseTag
  #define BaseTag "unknown"
#endif

#ifndef TargetTag
  #define TargetTag "unknown"
#endif

#ifndef UpdateVersion
  #define UpdateVersion "1.0.0.0"
#endif

#define MyAppName "Qwen Desktop Local Bridge Update"
#define MyAppPublisher "lvlaksim1"

[Setup]
AppName={#MyAppName}
AppVersion={#UpdateVersion}
AppPublisher={#MyAppPublisher}
CreateAppDir=no
Uninstallable=no
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
OutputDir={#OutputDir}
OutputBaseFilename=QwenDesktopLocalBridge-Update-from-{#BaseTag}
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
DisableProgramGroupPage=yes
DisableDirPage=yes
CloseApplications=no
RestartApplications=no
SetupLogging=yes
VersionInfoVersion={#UpdateVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription=Incremental update {#BaseTag} to {#TargetTag}
VersionInfoProductName={#MyAppName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "{#DeltaDir}\payload\*"; DestDir: "{tmp}\QwenDesktopLocalBridgeDelta\payload"; Flags: ignoreversion recursesubdirs createallsubdirs deleteafterinstall skipifsourcedoesntexist
Source: "{#DeltaDir}\Apply-Update.ps1"; DestDir: "{tmp}\QwenDesktopLocalBridgeDelta"; Flags: ignoreversion deleteafterinstall
Source: "{#DeltaDir}\update-manifest.json"; DestDir: "{tmp}\QwenDesktopLocalBridgeDelta"; Flags: ignoreversion deleteafterinstall

[Run]
Filename: "{sys}\WindowsPowerShell\v1.0\powershell.exe"; Parameters: "-NoProfile -ExecutionPolicy Bypass -File ""{tmp}\QwenDesktopLocalBridgeDelta\Apply-Update.ps1"""; WorkingDir: "{tmp}\QwenDesktopLocalBridgeDelta"; StatusMsg: "Applying incremental update..."; Flags: waituntilterminated runhidden logoutput 64bit

[Code]
function UpdateSucceeded(): Boolean;
begin
  Result := FileExists(ExpandConstant('{tmp}\QwenDesktopLocalBridgeDelta\update-success.marker'));
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if (CurPageID = wpFinished) and (not UpdateSucceeded()) then
  begin
    WizardForm.FinishedLabel.Caption :=
      'Update failed. The previous application version was preserved or restored.';
  end;
end;

function GetCustomSetupExitCode(): Integer;
begin
  if UpdateSucceeded() then
    Result := 0
  else
    Result := 50;
end;
