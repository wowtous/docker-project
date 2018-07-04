## README

#### GIT 工作区

```
                    add                  commit
working directory ------- index(stage) ---------- HEAD
      |                       |                    |
      |                       |                    |
  工作目录                 暂存区                版本库
```

#### 状态

```sh
git status # ++ 1
git diff   # ++ 2
```

#### 记录

```sh
git reflog
git log   # ++ 3
```

## 恢复文件到修改前版本

```sh
git checkout "5bb4f8e~1" test.conf # ++ 4
git checkout d835c65 test.conf     # ++ 5
```

#### 分支操作

```sh
git branch -r           # 列出远程分支 ++ 6
git branch -d branch    # 删除本地分支 ++ 7
git branch -d -r branch # 删除远程分支
git branch              # 查看当前分支
git branch dev          # 创建分支
git checkout dev        # 切换分支 ++ 8
git checkout -b dev     # 创建并checkout分支
git checkout -b dev origin/dev # 从远程分支创建本地分支
git checkout HEAD~1 -b dev # 从当前分支的某一个commit开始创建新分支
git branch -d dev       # 删除分支
git pull                # 拉去远程分支并合并到本地分支
git push origin master  # 推送本地分支到远程仓库
git push origin master -f # 强制以本地分支版本替换远程分支
git reset --hard HEAD~1 # 强制回退到某个提交历史节点 ++ 9

## 分支合并
git merge dev           # 合并分支    ++ 10
git branch -v           # 查看各个分支最后一个提交对象的信息
git branch --no-merged  # 查看尚未合并的工作
```

#### 提交和推送

```sh
# 重写提交历史
git add                         # 添加工作区内容到暂存区 ++ 11
git commit -m "branch test"     # 把暂存区内容提交到版本库 ++ 12
git commit --amend              # 追加提交到上一个版本 ++ 13
```

#### 工作现场

```sh
git stash               # 保留工作现场 ++ 14
git stash pop           # 返回工作现场 ++ 15
```

#### 标签

```sh
git tag v1.0 HEAD~1     # 创建标签,默认为HEAD
git tag -a v1.0 -m "msg"# 创建标签并指定标签信息
git tag                 # 查看所有标签
git show v0.1           # 查看标签对应版本的信息
git tag -d v0.1         # 删除标签
git push origin v1.0    # 推送标签到远程分支 ++ 16
git push origin --tags  # 一次性推送全部尚未推送到远程的本地标签

# 删除远程标签
git tag -d v1.0
git push origin :refs/tags/v1.0
```
