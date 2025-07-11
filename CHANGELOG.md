## [1.8.0]

* More detailed synchronization status and upload progress.

## [1.7.0]

* Added enum `SyncFilesState` with possible file synchronization statuses.
* Added `SyncStateInfo.syncFilesState` getter.

## [1.6.0]

* Added parameter `manual` to `synchronize()` method.

## [1.5.1]

* Added `lastSyncCompletedDate` getter.

## [1.5.0+1]

* Added deprecated `SyncError.updateLinksExeption` for compatibility with previous data from db.

## [1.5.0]

* Renamed `SyncError`: `updateLinksExeption` -> `updateLinksException`.
* Min Dart SDK `3.1.0`.
* `innim_lint` v0.5.0.

## [1.4.0]

* Added getter `errorData` in `SyncStateInfo`.

## [1.3.1]

* Added `lastSyncDate` getter.

## [1.3.0+1]

* A class `SyncStateInfo` now abstract.

## [1.3.0]

* Added class `SyncStateInfo` describing the current synchronization state and errors.
* Added `state` getter.

## [1.2.1]

* Added `debugDoNotSendChanges()` method.

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
