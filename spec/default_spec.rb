require 'chefspec'

describe 'noipv6::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'noipv6::default' }
  it 'checks for the creation of the system network file from a Chef template' do
    expect(chef_run).to create_file '/etc/sysconfig/network'
    file = chef_run.template('/etc/sysconfig/network')
    expect(file).to be_owned_by('root', 'root')
    expect(file.mode).to eq("0644")
  end
# it 'checks for correct disabled ipv6 syntax in the system network file' do
#   expect(chef_run).to create_file_with_content '/etc/sysconfig/network', 'NETWORKING_IPV6=no'
# end
end
