require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/usr/local/bin/ooniprobe'), :if => os[:family] == 'ubuntu' do  
  it { should be_executable }
end
describe file('/usr/bin/ooniprobe'), :if => os[:family] == 'redhat' do  
  it { should be_executable }
end

describe cron do
  it { should have_entry('@daily ooniprobe $THE_OONI_COMMAND').with_user('nobody') }
end
