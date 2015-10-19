require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "httpd port" do

  it "not listening on port 80" do
    expect(port(80)).to_not be_listening
  end

end
