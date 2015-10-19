require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "HTTPD Daemon" do

  it "not listening on port 80" do
    expect(port(80)).to_not be_listening
  end

  it "has no running service of httpd" do
    expect(service("httpd")).to_not be_running
  end

  it "has no running service of firewalld" do
    expect(service("firewalld")).to_not be_running
  end

end
