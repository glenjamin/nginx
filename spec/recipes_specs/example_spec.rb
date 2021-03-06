describe 'nginx::example' do
  cached(:chef_run) { ChefSpec::SoloRunner.converge described_recipe }

  it 'creates a sample web file' do
    expect(chef_run).to create_file('/tmp/index.htm')
  end

  it_behaves_like 'create a named nginx_service', 'example'

  it_behaves_like 'nginx_config :create', 'example'
end
