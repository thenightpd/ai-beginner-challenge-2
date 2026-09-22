# Windows 사전점검

## 필요한 것

- 최신 Claude Desktop과 유료 Claude 요금제
- Python Launcher(`py`)
- FFmpeg와 FFprobe가 PATH에서 실행되는 상태
- 인터넷 연결 — 최초 Pillow 설치에 필요

## 확인 순서

Claude에게 PowerShell에서 읽기 전용 확인만 하게 합니다.

```powershell
py --version
ffmpeg -version
ffprobe -version
```

모두 버전 번호를 보여 주면 `install_windows.ps1`의 작업 내용을 먼저 설명하게 하고 승인 뒤 실행합니다. 기존 Skill은 날짜가 붙은 백업으로 옮겨집니다.

## 성공 문장

```text
영상 자르기 준비 완료
영상 정보 읽기 준비 완료
자막 그리기 준비 완료
Skill 설치 완료
```

`py` 또는 `ffmpeg`를 찾을 수 없으면 [`혼자 설치하기`](INSTALL_CLINIC.md)의 Windows 절차로 준비합니다. 새 PowerShell과 Claude 세션에서 다시 확인하고, 같은 오류가 반복되면 `왕초보 / 7장 / Windows / 단계 / 오류 화면`을 그밤PD 카톡 1:1 오픈채팅에 보냅니다.
