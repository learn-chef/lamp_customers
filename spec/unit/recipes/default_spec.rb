#
# Cookbook:: lamp_customers
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'lamp_customers::default' do
  context 'When all attributes are default, on Ubuntu 14.04' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04') do |_node, server|
        server.create_data_bag(
          'passwords',
          'mysql' => {
            'id' => 'mysql',
            'admin_password' => 'fakeadminpassword',
            'root_password' => 'fakerootpassword'
          }
        )
      end
      runner.converge(described_recipe)
    end

    before do
      stub_command("mysql -h 127.0.0.1 -u db_admin -pfakeadminpassword -D 4thcoffee -e 'describe customers;'").and_return(0)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
