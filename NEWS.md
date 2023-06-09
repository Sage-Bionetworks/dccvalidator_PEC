# dccvalidator v0.4.0

- Add `check_complete_ids()` and `samples_table` configuration option
- Fix bug in Data Summary information boxes to not count NA
- `check_all()` now checks the biospecimen metadata for ages over 90 in the
  `samplingAge` column
- Results boxes now contain explanations of their contents
- The wording of some check results has been updated and, hopefully, clarified
- Add next step message if all validated files have no failures
- Add reset buttons to documentation and validation sections
- All tooltips now pop-up with hover instead of clicking
- Add hover tooltips to all fileInputs
- Fix bug in behavior for `check_ages_over_90()` and `check_parent_syn()`
- Remove progress bars for file input boxes
- Add script and functions for updating metadata template dictionary sheets.
- Update to `check_value()`: For keys with enumerated values, parse comma-separated and json-style strings and check all values within against allowed values
- Add customization options for app's study documentation tab, including necessary updates to config.yml
- Minor fixes to update-metadata-template-dictionaries.R script
- Update to allow for logging in with authToken
- Add ability to change to staging endpoints based on config.yml production setting
- `check_annotation_keys()` and `check_annotation_values()` have renamed
  arguments from `whitelist_keys`/`whitelist_values` to
  `allowlist_keys`/`allowlist_values`
- Add ability to log in with Synapse OAuth client
- Add ability for `check_col_names()` (via `get_template()`) to pull full set of metadata keys from a simple (i.e. has "properties") registered Synapse JSON schema; includes update to `get_template()` parameters, allowing for backwards compatibility with `synID` and additional functionality with `id`.
- `check_all()` now expects the template ids to be included in `data`; if not included, will skip the check for missing column names
- Added `get_metadataType_indices()` and `gather_template_ids()`
- Add ability to specify biospecimen templates based on type
- Fixed logic for resetting biospecimen type UI
- Fixed typo in `check_all()` that led to manifests being checked against assay templates
- Add `check_invalid_characters()` and include in `validator_server()` to block upload and validation
- Can now read schemas from files and URLs in addition to registered synapse schemas.

# dccvalidator v0.3.0

- Add `check_parent_syn()`
- Add modal message if `sessionToken` is invalid
- Add `check_ages_over_90()`
- Add `check_duplicate_paths()`
- Update `can_coerce()` to be `TRUE` for any data type needing to be coerced to `character`

# dccvalidator v0.2.0

- Move all validation checks to `check_all()`
- Move data file summary to module
- Update `can_coerce()` to include numeric to integer and character to logical

# dccvalidator v0.1.0

Initial release of dccvalidator package.
