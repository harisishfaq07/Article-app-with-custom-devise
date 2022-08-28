require 'test_helper'

class CategoryTest < ActiveSupport::TestCase


def setup 
   @category = Category.new(name: "sport")  
end

# Test_Case_1
test "category should be valid" do
   assert @category.valid?  
end
# Test_case_2
test "name should be" do
    @category.name = "qwerta"
    assert @category.valid?
end
# Test_Case_3
test "name shoudl be unique" do
    @category.save
    category2 = Category.new(name: "spot")
    assert category2.valid?
end
# Test_case_4
test "name should not be less then 3" do
    @category3 = Category.new(name: "spe")
    assert @category3.valid?
end

end