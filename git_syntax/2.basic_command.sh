# 현재 working directory, staging area 상태 확인
git status

# .은 모든 수정/추가 사항 add
git add .

# 특정 파일만 add할 경우(경로까지 포함)
git add test_folder/test.txt

# commit을 통해 메시지 타이틀과 메시지 내용을 커밋 이력으로 생성
git commit -m "메시지 제목" -m "메시지내용"
# git commit만 입력하고 엔터시 vi모드 -> 첫 줄 : 타이틀, 둘째 줄 : 내용
git commit

# commit 이력 확인
git log
git log --oneline

# head 하단의 log만 보이는 것이 아니라, 모든 commit 이력을 조회
# head : 현재 사용(checkout)하고 있는 commitID를 의미
git log --all

# 원격 저장소로 업로드
git push origin 브랜치명
# 충돌 발생시 충돌 무싯하고, 로컬 기준의 코드를 원격에 덮어쓰기(절대 사용하지 말 것)
git push origin 브랜치명 --force

# 특정 commit ID로의 전환
git checkout 커밋 아이디
# 특정 브랜치로으 전환
git checkout 브랜치명

# pull은 원격사항을 local로 내려받는 것(fetch + merge)
# head까지 변경
git pull origin main

# fetch는 원격사항을 lcoal로 가져오되, 병합은 하지 않는 것.
# head는 그대로
git fetch origin main

# commitID간 또는 브랜치 사이의 비교 명령어
git dif commitID1 commitID2
git diff 브랜치1 브랜치2

# 가장 최신의 커밋을 취소
git reset HEAD~1
git reset HEAD^

# 이미 push된 commit사항을 되돌리는 새로운 commit 생성
git revert 커밋ID

# 작업 중인 사항을 임시 저장
git stash
# 임시 저장한 작업사항을 다시 적용
git stash pop
# 저장한 작업목록 조회
git stash list
# 저장한 목록 전체 삭제
git stash clear

