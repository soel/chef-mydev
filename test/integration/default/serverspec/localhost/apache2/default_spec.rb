require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS
include Serverspec::Helper::Debian
include Serverspec::Helper::RedHat

Rspec.configure do |c|
  c.before :all do
    c.os = backend(Serverspec::Commands::Base).check_os
  end
  c.path = "/sbin:/user/sbin"
end

describe package('apache2') do
  it { should be_installed }
end
