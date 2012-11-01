require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the RecipesHelper. For example:
#
# describe RecipesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
#describe RecipesHelper do
  #pending "add some examples to (or delete) #{__FILE__}"
#end

def mock_recipe(stubs={})
  @mock_recipe ||= mock_model(Recipe, stubs).as_null_object
end
