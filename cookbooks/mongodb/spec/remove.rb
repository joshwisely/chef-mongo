require_relative './spec_helper'

describe 'server' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(server) }

  it 'removes mongodb-org-server' do
    expect(chef_run).to remove_package('mongodb-org-server')
  end
end

describe 'shell' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(shell) }

  it 'removes mongodb-org-shell' do
    expect(chef_run).to remove_package('mongodb-org-shell')
  end
end

describe 'tools' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(tools) }

  it 'removes mongodb-org-tools' do
    expect(chef_run).to remove_package('mongodb-org-tools')
  end
end

describe 'mongos' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(mongos) }

  it 'removes mongodb-org-mongos' do
    expect(chef_run).to remove_package('mongodb-org-mongos')
  end
end
