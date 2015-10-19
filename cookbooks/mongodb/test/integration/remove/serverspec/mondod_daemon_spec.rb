require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "Mongo Daemon" do

  it "not listening on port 27017" do
    expect(port(27017)).to_not be_listening
  end

  it "has no running service of mongod" do
    expect(service("mongod")).to_not be_running
  end

end
