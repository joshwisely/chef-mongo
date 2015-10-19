require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "httpd service" do

  it "has no running service of httpd" do
    expect(service("httpd")).to_not be_running
  end

end
