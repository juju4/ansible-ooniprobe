require 'serverspec'

# Required by serverspec
set :backend, :exec

describe service('tor'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled   }
  it { should be_running   }
end  

describe service('tor'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

