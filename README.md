# GitHub WikiのCodeへの自動バックアップ(Auto backup GitHub Wiki to Code Action)

このアクションはGitHub Wikiの内容をそのリポジトリのCodeに自動でバックアップします。
GitHub WikiのGit リポジトリのmasterブランチをそのままCodeの指定ブランチにコピーする仕様です。
GitHub Actionsの仕様から、Wikiの追加、更新時に呼び出す方法と毎日の定期実行の併用をお勧めします。

This action automatically backs up the contents of GitHub Wiki to Code of the repository.
The action copies the master branch of the Git repository of GitHub Wiki directly to the specified branch of the Code.
According to the specs of GitHub Actions, it is recommended to call it when the wiki is added or updated, and to run it periodically on a daily basis.

## Inputs

| Key | Required | Default | Description |
| - | - | - | -- |
| `target_branch` | yes| - | Target branch |
| `github_token` | yes| - | GitHub token. Please set "secrets.GITHUB_TOKEN" |

## 使用例(Example Usage)

```yaml
name: Wiki backup
on:
  schedule:
    - cron:  '46 0 * * *'
  gollum:
  
jobs:
  update:
    runs-on: ubuntu-latest
    steps:
      - name: Backup wiki
        uses: Mine02C4/auto_backup_wiki_action@v1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          target_branch: wiki
```
