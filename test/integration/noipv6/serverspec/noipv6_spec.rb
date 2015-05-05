require_relative 'spec_helper'

describe file('/etc/sysconfig/network') do
  it { should be_file }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should contain 'NETWORKING_IPV6=no' }
end

describe file('/etc/modprobe.d/ipv6.conf') do
  it { should be_file }
  it { should be_mode 440 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should contain 'options ipv6 disable=1' }
end

describe service 'ip6tables' do
  it { should_not be_running }
end