require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "mongod port" do

  it "not listening on port 27017" do
    expect(port(27017)).to_not be_listening
  end

end
