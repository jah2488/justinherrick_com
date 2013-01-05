require 'rspec'
require_relative '../lib/record_keeper'

describe RecordKeeper do
  let (:rk) { RecordKeeper.new }

  before(:each) { system('echo "{ \"foo\" : \"bar\" }" > test-file.txt') }
  after(:all)   { system('rm test-file.txt; rm posts/test-*.txt') }

  it "opens a given file" do
    rk.find("test-file.txt")
  end

  it "returns a hash from the file" do
    rk.find("test-file.txt").should == { "foo" => "bar" }
  end

  it "returns JSON when requested" do
   rk.find_raw('test-file.txt').should == '{ "foo" : "bar" }'
  end

  it "returns FILENOTFOUND when file isn't found" do
    rk.find('hello.txt').should == { "Error" => "Not Found" }
  end

  describe "all" do
    it "returns all posts" do
      system('echo "{ \"foo\" : \"bar\" }" > posts/test-file.txt')
      rk.all("posts").last.should == { "foo" => "bar" }
    end
  end
end
