require_relative '../spec_helper'

describe 'mongodb::server' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs mongodb-org-server' do
    expect(chef_run).to install_package('mongodb-org-server')
  end

  it 'installs mongodb-org-server 3.0.7-1.el7' do
    expect(chef_run).to install_package('mongodb-org-server').with(version: '3.0.7-1.el7')
  end

  it 'enables mongodb service' do
    expect(chef_run).to enable_service('mongod')
  end

  it 'starts mongodb service' do
    expect(chef_run).to start_service('mongod')
  end

  it 'enables firewalld service' do
    expect(chef_run).to enable_service('firewalld')
  end

  it 'starts firewalld service' do
    expect(chef_run).to start_service('firewalld')
  end

  it 'stop iptables service' do
    expect(chef_run).to stop_service('iptables')
  end

  it 'disables iptables service' do
    expect(chef_run).to disable_service('iptables')
  end
end
	
