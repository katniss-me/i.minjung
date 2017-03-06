####iterm 

![스크린샷 2017-03-06 오후 5.10.36.png](/Users/katniss/Desktop/스크린샷 2017-03-06 오후 5.10.36.png)


<br>

1. 컴퓨터에 파일을 만든다.
2. text라는 git을 만든다. 
`
cd git_test
`

3. 레퍼지토리를 만든다. 
`
git init
`

4. 모든 리스트 확인
`
ls -a
`

5. 들어간 파일(텍스트) 확인
`
vi text.txt
`

6. **reflog 확인해보려면**
`
git reflog
`

7. git 상태 확인해보려면
`
git status
`

>이렇게 나타남

```
On branch master

Initial commit

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	text.txt
```


8.모든 파일을 git add하려면
`
git add .
`


9.올린거 빼려면 
`
git rm --cached text.txt
`

10.git branch 만들기
`
git branch
`


11.katniss_dev 라는 이름으로 git branch 만들고 바로 checkout함
`
git branch -b katniss_dev
`

12.폴더에 다른 폴더가 추가되었다. > add를 해줘야함
`
git add .
`
13.메시지와 함께 꼭 commit을 해줘야 함
`
git commit -m "commit"
`

14.git 다른 곳에서 master로 checkout해주려면
`
git checkout master
`

15.현재상태 확인
`
pwd
`

16.폴더 안에 소스 확인하고 싶다면
`
cd
폴더전체를 마우스로 가져옴
`

17.폴더를 본다
`
vi main.swift
`











