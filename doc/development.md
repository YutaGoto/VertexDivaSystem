# 開発のすすめかた

原則、`develop` ブランチへのプルリクを作成してください。

### 初回のみ：`develop` をローカルに持ってくる

```bash
git fetch origin # origin をローカルに同期して
git checkout -b develop origin/develop # develop を持ってくる
```

### 作業ブランチの用意

```bash
git checkout develop # develop ブランチに移動して
git pull origin develop # develop を最新に更新
git checkout -b fix-css-file # 適当な名前でブランチを切る（短く分かり易い名前で）
```

該当ブランチの作業が終わったらgithub上でプルリクエストを作成してください。

### 開発

その後はブランチ上で普通に開発。
定期的に取り込み先ブランチ（`develop` ブランチ`）を pull して、マージしてください。（以下手順）

```sh
git checkout develop
git pull origin develop
git checkout fix-css-file
git merge develop
```

コンフリクト（コード内容の衝突）を起こしてしまった場合は相談してください。

定期的にプッシュも忘れずに。

```
git push origin fix-css-file
```

