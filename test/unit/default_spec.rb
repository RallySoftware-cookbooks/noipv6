require_relative 'spec_helper'

describe 'noipv6::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'noipv6::default' }
  let (:file) { chef_run.template('/etc/sysconfig/network') }

  it 'checks for the creation of the system network file from a Chef template' do
    expect(chef_run).to create_file('/etc/sysconfig/network')
  end

  it 'ensures correct ownership applied to file' do
    expect(file).to be_owned_by('root', 'root')
  end

  it 'ensures correct permissions applied to file' do
    expect(file.mode).to eq('0644')
  end

end
