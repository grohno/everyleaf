# README

## テーブルスキーマ

### Taskモデル
| カラム名 | データ型 | 備考 |
| ------ | ------ | ------ |
| id | bigint | タスクID |
| user_id(FK) | bigint | ユーザーID |
| label_id(FK) | bigint | ラベルID |
| priority_id(FK) | bigint | 優先順位ID |
| status_id(FK) | bigint | ステータスID |
| title | string | タスク名 |
| content | text | 内容 |
| end_period | datetime | 終了期限 |

### Userモデル
| カラム名 | データ型 | 備考 |
| ------ | ------ | ------ |
| id | bigint | ユーザーID |
| name | string | ユーザー名 |
| email | text | メールアドレス |
| password_digest | string | パスワード |

### Labelモデル
| カラム名 | データ型 | 備考 |
| ------ | ------ | ------ |
| id | bigint | ラベルID |
| label_name | string | ラベル名 |

### Statusモデル
| カラム名 | データ型 | 備考 |
| ------ | ------ | ------ |
| id | bigint | ステータスID |
| status_name | string | ステータス名（未着手・着手・完了） |

### Priorityモデル
| カラム名 | データ型 | 備考 |
| ------ | ------ | ------ |
| id | bigint | 優先順位ID |
| rank | string | 優先度（高・中・低） |
