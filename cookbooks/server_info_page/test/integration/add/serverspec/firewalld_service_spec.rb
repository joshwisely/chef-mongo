require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "firewalld service" do

  it "has a running service of firewalld" do
    expect(service("firewalld")).to be_running
  end

end
