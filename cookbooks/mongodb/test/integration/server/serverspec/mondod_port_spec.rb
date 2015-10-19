require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "mongod port" do

  it "is listening on port 27017" do
    expect(port(27017)).to be_listening
  end

end
