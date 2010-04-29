describe "how to use Peachy::MethodName" do
  before(:each) do
    @method_name = Peachy::MethodName.new "method_name"
  end

  it "should return the original string as to_s" do
    @method_name.to_s.should == "method_name"
  end

  it "should return the expected symbol as to_sym" do
    @method_name.to_sym.should == :method_name
  end

  it "should return the expected number of variations in format" do
    @method_name.variations.size.should == 3
  end

  it "should return the expected variation formats" do
    variations = @method_name.variations

    variations.should include 'method_name'
    variations.should include 'MethodName'
    variations.should include 'method-name'
  end

  it "should be possible to create a MethodName from a symbol" do
    @method_name = Peachy::MethodName.new :method
    variations = @method_name.variations

    @method_name.to_s.should == 'method'
    @method_name.to_sym.should == :method
    
    variations.should include 'method'
    variations.should include 'Method'
    variations.should include 'method'
  end
end
