powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
  action :run
end

file 'C:\inetpub\wwwroot\Default.htm' do
  content '<h1>Hello, world!</h1>'
  action :create
end

service 'w3svc' do
  action [:enable, :start]
end
