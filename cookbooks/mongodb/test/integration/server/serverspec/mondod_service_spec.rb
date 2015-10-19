require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "mongo service" do

  it "has a running service of mongod" do
    expect(service("mongod")).to be_running
  end

end
