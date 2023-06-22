# GitHub Actions workflow for Salesforce CI

## 概要

- GitHub Actions にて Salesforce のスクラッチ組織の作成・デプロイを行う
- 発火するイベントは以下の通り
  - プルリクエスト作成
    - スクラッチ組織のビルド
    - テスト実施
  - プルリクエストのマージ元ブランチへ push
    - 差分資材のデプロイ
    - テスト実施
  - プルリクエストのクローズ
    - スクラッチ組織の削除
