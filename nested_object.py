def get_value_by_key(data, key):
    keys = key.split('/')
    current = data
    try:
        for k in keys:
            current = current[k]
        return current
    except (KeyError, TypeError):
        return None

# Test cases
def test_get_value_by_key():
    object1 = {"a": {"b": {"c": "d"}}}
    assert get_value_by_key(object1, "a/b/c") == "d"

    object2 = {"x": {"y": {"z": "a"}}}
    assert get_value_by_key(object2, "x/y/z") == "a"

    # Test with a non-existing key
    assert get_value_by_key(object1, "a/b/nonexistent") is None

    # Test with an invalid object
    assert get_value_by_key({}, "a/b/c") is None

    print("All tests passed!")

# Run the tests
test_get_value_by_key()
