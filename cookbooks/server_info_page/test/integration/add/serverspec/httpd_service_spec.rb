require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "httpd service" do

  it "has a running service of httpd" do
    expect(service("httpd")).to be_running
  end

end
