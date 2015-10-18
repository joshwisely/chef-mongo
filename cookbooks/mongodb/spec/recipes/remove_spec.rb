require_relative '../spec_helper'

describe 'mongodb::remove' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'stop mongodb service' do
    expect(chef_run).to stop_service('mongod')
  end

  it 'disables mongodb service' do
    expect(chef_run).to disable_service('mongod')
  end

  it 'stop firewalld service' do
    expect(chef_run).to stop_service('firewalld')
  end

  it 'disables firewalld service' do
    expect(chef_run).to disable_service('firewalld')
  end

  it 'start iptables service' do
    expect(chef_run).to start_service('iptables')
  end

  it 'enables iptables service' do
    expect(chef_run).to enable_service('iptables')
  end

  it 'removes mongodb-org-server' do
    expect(chef_run).to remove_package('mongodb-org-server')
  end

  it 'removes mongodb-org-shell' do
    expect(chef_run).to remove_package('mongodb-org-shell')
  end

  it 'removes mongodb-org-tools' do
    expect(chef_run).to remove_package('mongodb-org-tools')
  end

  it 'removes mongodb-org-mongos' do
    expect(chef_run).to remove_package('mongodb-org-mongos')
  end
end
