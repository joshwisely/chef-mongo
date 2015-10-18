require_relative '../spec_helper'

describe 'mongodb::repo' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'creates yum repo' do
      expect(chef_run).to create_yum_repository('mongodb')
  end
end

