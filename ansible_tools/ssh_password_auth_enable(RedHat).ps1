$file = ".\Vagrantfile"
$data = Get-Content $file
$length = $data.length -1
$data[$length] = $null
$data=$data+"  config.vm.provision 'shell', inline: <<-SHELL`r`n      sudo sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config`r`n      sudo systemctl restart sshd`r`n  SHELL`r`nend"
$data | Out-File $file -Encoding UTF8
