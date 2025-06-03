## [1.5.1]

* Add `lastSyncCompletedDate` getter.

## [1.5.0+1]

* Added deprecated `SyncError.updateLinksExeption` for compatibility with previous data from db.

## [1.5.0]

* Renamed `SyncError`: `updateLinksExeption` -> `updateLinksException`.
* Min Dart SDK `3.1.0`.
* `innim_lint` v0.5.0.

## [1.4.0]

* Add getter `errorData` in `SyncStateInfo`.

## [1.3.1]

* Add `lastSyncDate` getter.

## [1.3.0+1]

* A class `SyncStateInfo` now abstract.

## [1.3.0]

* Added class `SyncStateInfo` describing the current synchronization state and errors.
* Add `state` getter.

## [1.2.1]

* Add `debugDoNotSendChanges()` method.

## [1.2.0]

* Method `enable()` require `userId`.

## [1.1.0]

* Method `dispose()`.

## [1.0.0]

* Null safety.

## [0.3.0]

* Method `enable()` now perform additional check and actions creations
when sync already enabled.

## [0.2.0]

* Method `needSynchronize()`.

## [0.1.2]

* Reverted method `needSynchronize()`. Need to increase minor version.

## [0.1.1]

* Method `needSynchronize()`.

## [0.1.0+1]

* Export to lib.

## [0.1.0]

* Base interface for `SyncRepository`.
