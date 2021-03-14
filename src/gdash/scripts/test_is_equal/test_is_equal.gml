gml_pragma("global", "test_is_equal()");

function test_is_equal() {
	test_describe("_is_equal", function() {
		test_it("can compare reals", function() {
			assert_is_true(_is_equal(1, 1));
			assert_is_false(_is_equal(1, 2));
		});
		
		test_it("can compare strings", function() {
			assert_is_true(_is_equal("hello", "hello"));
			assert_is_false(_is_equal("hello", "world"));
		});
		
		test_it("can compare arrays", function() {
			assert_is_true(_is_equal([1, 2, 3], [1, 2, 3]));
			assert_is_false(_is_equal([2, 3, 4], [1, 2, 3]));
			assert_is_false(_is_equal([2, 3, 4], [1, 2]));
		});
		
		test_it("can compare ds_maps", function() {
			var mapA = ds_map_create();
			var mapB = ds_map_create();
			var mapC = ds_map_create();
			
			mapA[? "hello"] = "world";
			mapB[? "hello"] = "world";
			mapA[? "foo"] = "bar";
			mapB[? "foo"] = "bar";
			
			mapC[? "hello"] = "bar";
			mapC[? "foo"] = "world";
			
			assert_is_true(_is_equal(mapA, mapB, ds_type_map));
			assert_is_false(_is_equal(mapA, mapC, ds_type_map));
			
			ds_map_destroy(mapA);
			ds_map_destroy(mapB);
			ds_map_destroy(mapC);
		});
		
		test_it("can compare ds_lists", function() {
			var listA = ds_list_create();
			ds_list_add(listA, 1, 2, 3);
			var listB = ds_list_create();
			ds_list_add(listB, 1, 2, 3);
			var listC = ds_list_create();
			ds_list_add(listC, "hello", "world", "foo");
			
			assert_is_true(_is_equal(listA, listB, ds_type_list));
			assert_is_false(_is_equal(listA, listC, ds_type_list));
			
			ds_list_destroy(listA);
			ds_list_destroy(listB);
			ds_list_destroy(listC);
		});
	});
}