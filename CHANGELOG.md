
* Added deprecated `SyncError.updateLinksExeption` for compatibility with previous data from db.

## [1.5.0]

* Renamed `SyncError`: `updateLinksExeption` -> `updateLinksException`.
* Min Dart SDK `3.1.0`.
* `innim_lint` v0.5.0.

## [1.4.0] - 2024-04-25

* Add getter `errorData` in `SyncStateInfo`.

## [1.3.1] - 2023-12-19

* Add `lastSyncDate` getter.

## [1.3.0+1] - 2023-12-14

* A class `SyncStateInfo` now abstract.

## [1.3.0] - 2023-12-12

* Added class `SyncStateInfo` describing the current synchronization state and errors.
* Add `state` getter.

## [1.2.1] - 2023-03-01

* Add `debugDoNotSendChanges()` method.

## [1.2.0] - 2022-01-21

* Method `enable()` require `userId`.

## [1.1.0] - 2022-01-17

* Method `dispose()`.

## [1.0.0] - 2021-10-25

* Null safety.

## [0.3.0] - 2020-12-08

* Method `enable()` now perform additional check and actions creations
when sync already enabled.

## [0.2.0] - 2020-12-02

* Method `needSynchronize()`.

## [0.1.2] - 2020-12-02

* Reverted method `needSynchronize()`. Need to increase minor version.

## [0.1.1] - 2020-12-01

* Method `needSynchronize()`.

## [0.1.0+1] - 2020-07-14

* Export to lib.

## [0.1.0] - 2020-07-14

* Base interface for `SyncRepository`.
