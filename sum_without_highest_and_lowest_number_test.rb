Test.describe("Basic tests") do
Test.it("nil or Empty") do
Test.assert_equals(sum_array(nil), 0)
Test.assert_equals(sum_array([]), 0)
end
Test.it("Only one Element") do
Test.assert_equals(sum_array([3]), 0)
Test.assert_equals(sum_array([-3]), 0)
end
Test.it("Only two Element") do
Test.assert_equals(sum_array([ 3, 5]), 0)
Test.assert_equals(sum_array([-3, -5]), 0)
end
Test.it("Real Tests") do
Test.assert_equals(sum_array([6, 2, 1, 8, 10]), 16)
Test.assert_equals(sum_array([6, 0, 1, 10, 10]), 17)
Test.assert_equals(sum_array([-6, -20, -1, -10, -12]), -28)
Test.assert_equals(sum_array([-6, 20, -1, 10, -12]), 3)
end
end
