require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "mongod service" do

  it "has no running service of mongod" do
    expect(service("mongod")).to_not be_running
  end

end
