require 'chefspec'

describe 'noipv6::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'noipv6::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
