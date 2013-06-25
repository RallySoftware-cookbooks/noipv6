require_relative 'spec_helper'

describe file('/etc/sysconfig/network') do
  it { should be_file }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should contain 'NETWORKING_IPV6=no' }
end