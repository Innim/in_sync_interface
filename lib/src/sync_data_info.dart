/// Data synchronization information.
abstract class SyncDataInfo {
  SyncDataState? get state;
  double? get sendChangesProgress;
}

/// Sync data status.
enum SyncDataState {
  /// Synchronization at the data sending stage.
  sendChanges,

  /// Synchronization at the get entities stage.
  getEntities,
}
