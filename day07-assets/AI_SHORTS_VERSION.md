# ai-shorts 자습판 배포 기준

- 버전: selfstudy-2026-09-12
- 기존 기반: 운영 원본 커밋 f23d0a4 (2026-08-23)
- 기본 실습: 제공된 3장면·음성·자막으로 14초 세로 영상 제작, 외부 API 호출 없음
- 선택 확장: 본인 주제의 5문장·5컷·20~23초 영상

## 교육용 변경

- SKILL.md: 6장 주문서 이어받기, OS별 자습 설치, 무료 기본 실습과 유료 확장 분리, 구매자 단톡방 질문 지원
- scripts/subs.py: Windows 맑은 고딕 파일 후보와 ASS 폰트 선택 추가
- scripts/setup.sh: 읽기 전용 상태 확인 후 자습 설치 문서로 연결
- references/prompt-formula.md: 고정 가격 대신 현재 Flow 화면의 사용량 확인
- scripts/make-short.sh: 안전 실행기로 만든 음성 재사용, 키 직접 노출 금지

기존 원본과 완전히 동일한 사본은 아닙니다. source/ZIP 파일별 일치는 배포 검사로 확인합니다.

## 핵심 SHA-256

```text
c76d687bef1da1c8a7c1fd87fdf621c5b01164e857711efec8cd491616a0ae93  SKILL.md
56994e450dd2cf3aac54bceb6b44ae77dc9992a82ad0bf90e29fd58397d18b6a  references/prompt-formula.md
1ec5a7dd8c99a11fad39a8e6ca2840d90c307787b165178a5b53b70bb275b3c0  scripts/build.py
664adec44eb987bee943f1e557a742cecbe8b6c841df1119100381b58cc4d6b2  scripts/check.py
67744b66f1d27c2be53dde6387d9e1b1fa8673dafee865ae5b8c2a9c176f136e  scripts/ingest.py
69157cfc0d04af3616806094fdaf18c5b76b19d42b804be18572968ac12625d3  scripts/plan.py
3d22223389e4f9c190fc6166f7ed8e8136b6784552889a3cf87a92950adf9307  scripts/setup.sh
6c3038a8c07e929937379a5472b21cf1e78d44a424b1508fcc193b25f6ebd159  scripts/subs.py
31fe8d9fc4581601c3eae1b4d031b18e47e940d96f0359b21edf2f8a7dc52765  scripts/tts.py
d7f712ee5bd02677c85eef85dadce54fddb45cb2e07a724d087ec03c8faf8bb9  scripts/voices.py
8fb61602bf0c78e452002acd5237d08c26d40967a0ae0717e8677af20e651637  scripts/make-short.sh
```

## 검증 범위

Mac에서 제공 샘플 14초 영상 생성과 6장 예제→7장 가져오기를 확인했습니다. Python·셸 문법과 스킬 형식 검사를 수행했습니다. Windows 실기기 처음 설치·전체 개인 영상의 유료 생성·YouTube 업로드는 미검증이며 완료로 표시하지 않습니다.
