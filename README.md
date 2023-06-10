# GitHub Actions workflow for Salesforce CI

## 概要

- GitHub Actions にて Salesforce のスクラッチ組織の自動作成・デプロイを行う
- 発火するイベントは以下の通り
  - プルリクエストを open: スクラッチ組織の作成・デプロイ
  - プルリクエストブランチへ push: 作成済みスクラッチ組織への差分デプロイ
  - プルリクエストを close: スクラッチ組織の削除

## 使用方法

## 設定関連

### CI 実行権限

- DevHub の Salesforce ユーザの認証情報を Github 上に保管してビルドを行う
- CI 用の接続アプリケーションに対して **プロファイル**, **権限セット**を指定して実行ユーザを制限できる
