require_relative '../spec_helper'

describe 'server_info_page::remove' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'stop httpd service' do
    expect(chef_run).to stop_service('httpd')
  end

  it 'disables httpd service' do
    expect(chef_run).to disable_service('httpd')
  end

  it 'stop firewalld service' do
    expect(chef_run).to stop_service('firewalld')
  end

  it 'disables firewalld service' do
    expect(chef_run).to disable_service('firewalld')
  end

  it 'removes httpd' do
    expect(chef_run).to remove_package('httpd')
  end

end

