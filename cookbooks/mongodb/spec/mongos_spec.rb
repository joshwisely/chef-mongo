require_relative './spec_helper'

describe 'mongodb::mongos' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs mongodb-org-mongos' do
    expect(chef_run).to install_package('mongodb-org-mongos')
  end

  it 'installs mongodb-org-mongos 3.0.7-1.el7' do
    expect(chef_run).to install_package('mongodb-org-mongos').with(version: '3.0.7-1.el7')
  end
end
