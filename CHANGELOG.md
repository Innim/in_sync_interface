## [1.13.0]

* Method `pause()`.
* Method `resume()`.
* Added `isPaused` getter.

## [1.12.0]

* Added new `SyncError` values:
   * `clientTimeout`:  Interrupted by client timeout.
   * `syncIsNotActive`: Synchronization is not active. Sync was disabled during or before the attempt.

## [1.11.0]

* Added `hasUnsyncedChanges()` method.

## [1.10.0]

* Added `isPending` and `syncCompletedDate` fields in `SyncStateInfo`.

## [1.9.1]

* Added `currentState` getter: returns current state of synchronization.

## [1.9.0]

* **ATTENTION** Behavior change: `enable()` method now should not wait for synchronization to complete by default.
* Added `waitForSync` parameter to `enable()` method.

## [1.8.0]

* More detailed synchronization status and send changes progress.
   * Added enum `SyncDataState` with detailed data synchronization status.
   * Added `SyncStateInfo.dataInfo` getter.

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
