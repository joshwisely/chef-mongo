require 'chefspec'

describe 'mongodb::shell' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs mongodb-org-shell' do
    expect(chef_run).to install_package('mongodb-org-shell')
  end
end
