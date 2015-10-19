require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "firewalld service" do

  it "has no running service of firewalld" do
    expect(service("firewalld")).to_not be_running
  end

end
