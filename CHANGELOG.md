# Changelog

## v4.0.0

* **Dropped support for GameMaker: Studio v1**
* **All scripts changed to be `_snake_case` instead of `_camelCase`**
* Minor performance tuning in most scripts
* Significant performance updates to:
  * `_uniq`
  * `_contains`
* Bug fixes and behavior alignment for `_contains`
* `_keys` now returns an empty array for empty maps
* New scripts:
  * `_to_list(array)`
  * `_list_of(values...)`
  * `_map_of(values...)`
  * `_error(message [, fatal])`
* Documentation is now generated directly from code comments in the source
