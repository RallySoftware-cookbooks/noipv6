require_relative 'spec_helper'

describe 'noipv6::default' do
  subject(:chef_run) { ChefSpec::Runner.new.converge described_recipe }
  it { should create_template('/etc/sysconfig/network').with(owner: 'root', group: 'root', mode: '0644') }
end
