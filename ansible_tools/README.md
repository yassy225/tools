# なにこれ
毎回ssh設定をするのが面倒なので、  
vagrant環境にて、パスワードログインを許可するためのPowerShellスクリプト。

## 使い方
Vagrantfileと同じフォルダに配置し、実行するだけでSSHパスワードログインが許可される。  
権限の問題で実行できない場合、以下のコマンドで一時的に許可することができる。  
```
PowerShell -ExecutionPolicy bypass '.\ssh_password_auth_enable(RedHat).ps1'
```
