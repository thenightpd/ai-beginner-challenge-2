$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
if (-not (Get-Command py -ErrorAction SilentlyContinue)) { throw "Python 3가 없습니다. INSTALL_CLINIC.md의 Windows 설치 순서를 따라 주세요." }
if (-not (Get-Command ffmpeg -ErrorAction SilentlyContinue)) { throw "ffmpeg가 없습니다. INSTALL_CLINIC.md의 Windows 설치 순서를 따라 주세요." }
if (-not (Get-Command ffprobe -ErrorAction SilentlyContinue)) { throw "ffprobe가 없습니다. INSTALL_CLINIC.md의 Windows 설치 순서를 따라 주세요." }
$installRoot = if ($env:AI_SHORTS_INSTALL_ROOT) { $env:AI_SHORTS_INSTALL_ROOT } else { Join-Path $HOME ".claude\skills" }
$target = Join-Path $installRoot "ai-shorts"
New-Item -ItemType Directory -Force (Split-Path $target) | Out-Null
if (Test-Path $target) {
  $stamp = Get-Date -Format "yyyyMMdd-HHmmss"
  $backup = Join-Path (Split-Path $target) "ai-shorts.backup-$stamp"
  Move-Item $target $backup
  Write-Host "기존 Skill 백업: $backup"
}
Copy-Item -Recurse "ai-shorts" $target
py -3 -m venv (Join-Path $target ".venv")
if ($LASTEXITCODE -ne 0) { throw "Python 환경 생성 실패. 오류 문구를 확인하세요." }
& (Join-Path $target ".venv\Scripts\python.exe") -m pip install -q pillow
if ($LASTEXITCODE -ne 0) { throw "Pillow 설치 실패. 인터넷 연결과 위 오류를 확인하세요." }
& (Join-Path $target ".venv\Scripts\python.exe") -c "from PIL import Image; print('자막 준비 완료')"
if ($LASTEXITCODE -ne 0) { throw "자막 환경 확인 실패" }
Write-Host "설치 완료: $target"
Write-Host "Claude Code 새 세션에서 /ai-shorts 를 확인하세요."
