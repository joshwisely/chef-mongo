require_relative '../spec_helper'

describe 'mongodb::tools' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs mongodb-org-tools' do
    expect(chef_run).to install_package('mongodb-org-tools')
  end

  it 'installs mongodb-org-tools 3.0.7-1.el7' do
    expect(chef_run).to install_package('mongodb-org-tools').with(version: '3.0.7-1.el7')
  end
end
