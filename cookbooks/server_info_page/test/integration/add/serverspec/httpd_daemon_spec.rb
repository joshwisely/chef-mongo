require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "HTTPD Daemon" do

  it "is listening on port 80" do
    expect(port(80)).to be_listening
  end

  it "has a running service of httpd" do
    expect(service("httpd")).to be_running
  end

  it "has a running service of firewalld" do
    expect(service("firewalld")).to be_running
  end

end
