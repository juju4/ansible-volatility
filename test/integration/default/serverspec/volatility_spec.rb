require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
#require 'yarjuf'
#RSpec.configure do |c|
#    c.formatter = 'JUnit'
#end

describe file('/usr/local/bin/vol.py'), :if => os[:family] == 'debian' || os[:family] == 'ubuntu' do
  it { should be_executable }
end
describe file('/usr/bin/vol.py'), :if => os[:family] == 'redhat' do
  it { should be_executable }
end

describe file('/usr/local/share/volatility/profiles'), :if => os[:release] != '20.04' do
  it { should be_directory }
end

describe command('vol.py -h'), :if => os[:release] != '20.04' do
  its(:stdout) { should match /Usage: Volatility/ }
  its(:exit_status) { should eq 0 }
end

describe command('vol.py -h'), :if => os[:release] == '20.04' do
  its(:stdout) { should match /Volatility 3 Framework/ }
  its(:stdout) { should match /usage: volatility / }
  its(:exit_status) { should eq 0 }
end
