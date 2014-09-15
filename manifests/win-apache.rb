#!/usr/bin/env ruby
#
# This program downloads a package and untars it.
#

require 'yaml'


class Getfile 

class_variable_set(:@@test, 'C:\ProgramData\chocolatey\bin\wget.exe http://www.apache.org/dist/httpd/binaries/win32/httpd-2.2.25-win32-x86-no_ssl.msi')
class_variable_set(:@@install, 'msiexec /i httpd-2.2.25-win32-x86-no_ssl.msi /passive ALLUSERS=1 SERVERADMIN=admin@localhost SERVERNAME=localhost SERVERDOMAIN=localhost SERVERPORT=80')
class_variable_set(:@@remove, 'C:\Users\vagrant\Documents\usr\local\wbin\rm.exe httpd*')
class_variable_set(:@@dir, 'C:\Users\vagrant\Documents\httpd-2.2.25-win32-x86-no_ssl.msi')

 def download_file
%x[#{@@test}]
  end

def install_file
%x[#{@@install}]
end

#def remove_file
#%x[#{@@remove}]
#end

if Dir.exists?("#{@@dir}") 
#exec 'Test-Path("#{@@dir}")' 
puts "Directory #{@@dir} exists. Exiting program."
else
o = Getfile.new
o.download_file
o.install_file
#o.remove_file
end
end
