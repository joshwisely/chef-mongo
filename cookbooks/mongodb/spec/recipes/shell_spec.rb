require_relative '../spec_helper'

describe 'mongodb::shell' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs mongodb-org-shell' do
    expect(chef_run).to install_package('mongodb-org-shell')
  end

  it 'installs mongodb-org-shell 3.0.7-1.el7' do
    expect(chef_run).to install_package('mongodb-org-shell').with(version: '3.0.7-1.el7')
  end
end
