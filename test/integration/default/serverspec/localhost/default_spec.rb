require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS
include Serverspec::Helper::Debian

Rspec.configure do |c|
  c.before :all do
    c.os = backend(Serverspec::Commands::Base).check_os
  end
  #c.path = "/sbin:/user/sbin"
end

describe command('/usr/bin/java -version') do
  its(:stdout) { should match /1.7/ }
end

describe file('/usr/local/rvm') do
  it { should be_directory }
end

describe file('/usr/bin/atom') do
  it { should be_file }
end

describe package('td-agent') do
  it { should be_installed }
end
