require 'spec_helper'

describe MurmurHash do
  it "gc safe" do
    {
      MurmurHash => "c709abd5",
      MurmurHash1 => "c709abd5",
      MurmurHash2 => "33f67c7e"
    }.each do |c, should|
      murmur = c.new
      GC.start
      murmur.update("murmur")
      GC.start
      expect(murmur.update("hash").to_s).to eq(should);
    end
  end
end

