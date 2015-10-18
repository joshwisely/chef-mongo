require 'chefspec'

describe 'mongodb::mongos' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs mongodb-org-mongos' do
    expect(chef_run).to install_package('mongodb-org-mongos')
  end
end
