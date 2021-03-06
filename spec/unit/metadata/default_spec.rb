# This file is auto-generated by the code_generator
#
# Cookbook Name:: mapr
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'mapr::metadata' do
  let(:metadata_file) do
    File.join(File.dirname(__FILE__), '../../../metadata.rb')
  end

  it 'has a metadata file' do
    expect(File.exist?(metadata_file))
  end

  it 'is parsable metadata' do
    m = Chef::Cookbook::Metadata.new
    expect { m.from_file(metadata_file) }.not_to raise_error
  end

  it 'has a license' do
    m = Chef::Cookbook::Metadata.new
    m.from_file(metadata_file)
    expect(m.license).not_to be_empty
  end

  it 'has a description' do
    m = Chef::Cookbook::Metadata.new
    m.from_file(metadata_file)
    expect(m.description).not_to be_empty
  end
end
