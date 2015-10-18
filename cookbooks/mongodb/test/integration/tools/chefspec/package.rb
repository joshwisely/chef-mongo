require 'chefspec'

describe 'mongodb::tools' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs mongodb-org-tools' do
    expect(chef_run).to install_package('mongodb-org-tools')
  end
end
