# 7장 혼자 설치하기 — Mac / Windows

혼자 아래 순서대로 진행합니다. 이미 설치된 항목은 건너뛰세요. 설치 내용이 낯설면 AI에게 설명을 부탁하고, 문제가 반복되면 그밤PD 카톡 1:1 오픈채팅에서 함께 해결합니다.

## 1. 먼저 상태 확인

Claude Desktop의 Code에서 압축을 푼 `day07-start` 폴더만 열고 보내세요.

```text
내 운영체제용 PRECHECK 문서를 읽고 Python, ffmpeg, ffprobe를 읽기 전용으로 확인해 주세요.
준비됨/없음 표를 보여 주세요. 없는 것만 INSTALL_CLINIC.md 순서로 한 단계씩 안내하고, 설치 전 내 확인을 기다리세요.
비밀번호와 API 키는 읽거나 출력하지 마세요.
```

세 도구가 모두 준비되면 4번으로 이동합니다.

## 2. Mac

1. Spotlight(Cmd + Space)에서 ‘터미널’을 찾아 엽니다.
2. `brew --version`을 입력합니다. 버전이 나오면 5번으로 갑니다.
3. 없다면 [Homebrew 공식 설치 안내](https://brew.sh/)에서 설치 명령을 복사해 터미널에 붙여넣습니다. 설치 내용을 읽고 진행하며 Mac 로그인 암호는 본인이 직접 입력합니다. 암호가 화면에 표시되지 않는 것은 정상입니다.
4. 설치 마지막의 ‘Next steps’ 명령을 실행한 뒤 터미널을 완전히 닫았다가 다시 엽니다. `brew --version`이 되는지 확인합니다.
5. 아래 명령으로 영상 제작 도구를 설치합니다.

```bash
brew install python ffmpeg
```

6. 터미널과 Claude 앱을 다시 열고 `python3 --version`, `ffmpeg -version`, `ffprobe -version`을 확인합니다.

설치 오류가 나면 오류 문구를 보존하세요. 반복 설치보다 [오류표](recovery/ERROR_TO_ACTION.md)를 먼저 확인합니다.

## 3. Windows

1. 시작 메뉴에서 ‘PowerShell’을 엽니다.
2. `winget --version`을 입력합니다. 없다면 Microsoft Store의 **앱 설치 관리자(App Installer)**를 설치/업데이트한 뒤 PowerShell을 다시 엽니다. 조직에서 설치를 막으면 관리자에게 문의하거나 그밤PD 카톡 1:1 오픈채팅에 상황을 알려주세요.
3. 아래 명령을 한 줄씩 실행합니다. 설치 안내에서 패키지 이름과 게시자를 확인하고 동의 여부를 직접 결정합니다.

```powershell
winget install --exact --id Python.Python.3.12
winget install --exact --id Gyan.FFmpeg
```

4. PowerShell과 Claude 앱을 완전히 닫았다가 다시 엽니다.
5. `py -3 --version`, `ffmpeg -version`, `ffprobe -version`을 확인합니다. 세 명령 모두 버전이 나와야 합니다.

`winget`이 계속 없으면 [Microsoft 공식 안내](https://learn.microsoft.com/en-us/windows/package-manager/winget/)를 확인하세요. 설치 후 명령을 찾지 못하면 PC를 한 번 재시작하고 재확인합니다. 그래도 안 되면 오류 화면을 질문해 주세요. 임의 사이트의 설치 파일이나 추측한 PATH 수정은 필요 없습니다.

## 4. 쇼츠 스킬 설치

AI에게 다음 문장을 보냅니다.

```text
내 운영체제의 install_mac.sh 또는 install_windows.ps1을 읽고 설치 위치와 기존 스킬 백업 위치를 설명해 주세요.
내가 확인하면 실행하세요. 외부 API는 호출하지 마세요.
전용 Python 환경과 Pillow가 실제로 준비됐는지 확인해 주세요.
```

Windows에서 실행 정책으로 막히면 먼저 파일 내용을 확인하고, 해당 파일 실행에만 적용되는 다음 명령을 사용합니다. 시스템 전체 정책은 바꾸지 않습니다.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\install_windows.ps1
```

새 Code 세션에서 `/ai-shorts`가 보이면 설치 완료입니다. 보이지 않으면 설치 결과에 나온 경로를 AI에게 알려 위치와 새 세션 여부를 확인합니다.

## 5. 무료 샘플 완성

[README의 OS별 데모 실행](README.md#데모-실행)을 따르거나 아래 문장을 보냅니다.

```text
demo-project의 제공 영상·음성·자막 시간표만 사용해 D07_연습.mp4를 조립해 주세요.
Typecast와 Flow를 호출하지 마세요. 원본은 유지하고 결과를 열어 길이·해상도·음성·한글 자막을 확인해 주세요.
```

**성공 기준:** 14초 세로 MP4가 열리고 음성과 한글 자막이 나옵니다. 기본 실습 완료입니다. 개인 주제의 20~23초 영상은 온라인 7장의 선택 확장 실습으로 이어갑니다.

질문할 때는 ‘왕초보 / 7장 / Mac 또는 Windows / 단계 / 오류 문구’를 보내주세요. API 키·암호는 가립니다.

설치 근거: [Homebrew 설치](https://docs.brew.sh/Installation), [FFmpeg 패키지](https://formulae.brew.sh/formula/ffmpeg.html), [WinGet 설치 명령](https://learn.microsoft.com/en-us/windows/package-manager/winget/install).
