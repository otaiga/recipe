require 'spec_helper'

describe Recipe  do 
 it 'can be created' do
  Recipe.new.should be_an_instance_of(Recipe)
  
end
  
it "can be saved successfully" do
  Recipe.create.should be_persisted
end
end

