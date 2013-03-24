source 'http://ruby.taobao.org'

HOST_OS = RbConfig::CONFIG['host_os']
case HOST_OS
  when /darwin/i
    gem 'rb-fsevent', :group =>:development
    gem 'growl', :group =>:development
  when /linux/i
    gem 'libnotify', :group =>:development
    gem 'rb-inotify', :group =>:development
  when /mswin|windows/i
    gem 'rb-fchange', :group =>:development
    gem 'win32console', :group =>:development
    gem 'rb-notifu', :group =>:development
end

gemspec
