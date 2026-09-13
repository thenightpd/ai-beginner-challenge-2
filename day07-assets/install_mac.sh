#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
command -v python3 >/dev/null || { echo "Python 3가 없습니다. INSTALL_CLINIC.md의 Mac 설치 순서를 따라 주세요."; exit 1; }
command -v ffmpeg >/dev/null || { echo "ffmpeg가 없습니다. INSTALL_CLINIC.md의 Mac 설치 순서를 따라 주세요."; exit 1; }
command -v ffprobe >/dev/null || { echo "ffprobe가 없습니다. INSTALL_CLINIC.md의 Mac 설치 순서를 따라 주세요."; exit 1; }
install_root="${AI_SHORTS_INSTALL_ROOT:-$HOME/.claude/skills}"
mkdir -p "$install_root"
target="$install_root/ai-shorts"
if [ -e "$target" ]; then
  stamp="$(date +%Y%m%d-%H%M%S)"
  backup="$install_root/ai-shorts.backup-$stamp"
  mv "$target" "$backup"
  echo "기존 Skill 백업: $backup"
fi
cp -R ai-shorts "$target"
python3 -m venv "$target/.venv"
"$target/.venv/bin/pip" install -q pillow
echo "설치 완료: $target"
echo "Claude Code 새 세션에서 /ai-shorts 를 확인하세요."
