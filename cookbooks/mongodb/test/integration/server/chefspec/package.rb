require 'chefspec'

describe 'mongodb::server' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs mongos-org-server' do
    expect(chef_run).to install_package('mongodb-org-server')
  end
end
