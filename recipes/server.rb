powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
  action :run
end

template 'C:\inetpub\wwwroot\Default.htm' do
  source 'Default.htm.erb'
end

service 'w3svc' do
  action :start
end
