require_relative '../spec_helper'

describe 'server_info_page::add' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs httpd' do
    expect(chef_run).to install_package('httpd')
  end

  it 'installs httpd 2.4.6-31.el7.centos.1' do
    expect(chef_run).to install_package('httpd').with(version: '2.4.6-31.el7.centos.1')
  end

  it 'start httpd service' do
    expect(chef_run).to start_service('httpd')
  end

  it 'enables httpd service' do
    expect(chef_run).to enable_service('httpd')
  end

  it 'start firewalld service' do
    expect(chef_run).to start_service('firewalld')
  end

  it 'enables firewalld service' do
    expect(chef_run).to enable_service('firewalld')
  end

end
