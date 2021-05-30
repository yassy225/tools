# なにこれ
自分用仮想化サーバの設定Ansibleプレイブック。  
RedHat系とUbuntuに対応。  
Ansible2.9、CentOS7/Ubuntu Server 14.04 LTSにて動作確認済み。

## 使い方
vagrant環境の仮想マシンの場合、事前に[ansible_tools](https://github.com/yassy225/tools/tree/main/ansible_tools "ansible_tools")のスクリプトを実行しておくと、  
事前設定無しにvagrantユーザで実行できるため楽。  

inventory.iniファイルと同じ階層にて、ansible-playbookコマンドで実行する。

### 実行コマンド例
```
ansible-playbook -i inventory.ini linux_setup.yml -Kk -u vagrant
```

## やっていること
### base role
- SELinux無効化(RedHat系のみ)
- ufw無効化(Ubuntuのみ)
- ホスト名設定

### locale role
- 日本語化設定
- タイムゾーンを日本に設定

### packages role
- パッケージを最新化
- 必要パッケージをインストール

### middleware role
- vimの設定
