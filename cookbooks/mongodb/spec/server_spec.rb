require_relative './spec_helper'

describe 'mongodb::server' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs mongodb-org-server' do
    expect(chef_run).to install_package('mongodb-org-server')
  end

  it 'installs mongodb-org-server 3.0.7-1.el7' do
    expect(chef_run).to install_package('mongodb-org-server').with(version: '3.0.7-1.el7')
  end
end
