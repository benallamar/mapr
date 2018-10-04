# Cookbook Name:: mapr
# Spec:: grafana
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'mapr::grafana' do
  context 'When all attributes are default, on centos 7.4.1708' do
    let(:chef_run) do
      runner = ChefSpec::SoloRunner.new(
        platform: 'centos',
        version:  '7.4.1708',
      )
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'installs mapr grafana package' do
      expect(chef_run).to install_package('mapr-grafana')
    end
  end
end
