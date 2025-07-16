import 'package:in_sync_interface/in_sync_interface.dart';

/// Synchronization status information, including errors.
abstract class SyncStateInfo {
  SyncState get state;
  SyncFilesState get syncFilesState;
  SyncDataInfo get dataInfo;
  SyncError? get syncError;
  Object? get errorData;

  /// Fatal error.
  bool get isFatalError =>
      syncError == SyncError.authIncorrectCriticalVersion ||
      syncError == SyncError.syncIncorrectData ||
      syncError == SyncError.syncFieldNotFound ||
      syncError == SyncError.syncEmptyFile;

  /// Temporary error.
  bool get isTemporaryError =>
      syncError == SyncError.syncBlocked ||
      syncError == SyncError.syncTemporarilyImpossible ||
      syncError == SyncError.networkError ||
      syncError == SyncError.syncInternalSyncError ||
      syncError == SyncError.temporaryServerError;
}

/// Synchronization error name.
enum SyncError {
  /// Unsupported client version.
  authIncorrectCriticalVersion,

  /// The transmitted data is incorrect.
  syncIncorrectData,

  /// Synchronization is blocked.
  ///
  /// Another client is synchronizing.
  syncBlocked,

  /// Error while saving data.
  ///
  /// Internal error when saving on the server.
  syncNotSaved,

  /// The entity could not be found.
  ///
  /// The creation event was not processed on the server
  /// this entity, so it can't update.
  syncEntityNotFound,

  /// Could not find the field.
  ///
  /// An entity field update was sent that the server does not know about.
  syncFieldNotFound,

  /// An empty file was transferred.
  ///
  /// An attempt was made to load a file of zero size.
  syncEmptyFile,

  /// Internal synchronization error on the server.
  syncInternalSyncError,

  /// Synchronization is temporarily unavailable.
  syncTemporarilyImpossible,

  /// Error updating entities.
  updateEntityError,

  /// Error downloading files.
  downloadFilesError,

  /// Network error.
  networkError,

  /// Authorization error.
  authError,

  /// Temporary server error.
  temporaryServerError,

  /// Internal error.
  internalError,

  @Deprecated('Use updateLinksException. This is only for compatibility reason')
  updateLinksExeption,

  /// Error updating links.
  updateLinksException,

  /// Unknown error.
  unknown,
}

/// Sync status.
enum SyncState {
  /// Initialization.
  initializing,

  /// Synchronization was completed successfully.
  ok,

  /// The last synchronization attempt failed with an error.
  failed,

  /// Synchronization is disabled.
  disabled,

  /// Synchronization at the time sync stage.
  timeSync,

  /// Synchronization in progress.
  pending,

  /// Waiting for first synchronization.
  waiting,
}

/// Files sync status.
enum SyncFilesState {
  // Initialization.
  initializing,

  // Synchronization was not performed.
  none,

  /// Synchronization in progress.
  pending,

  // Synchronization was completed successfully.
  ok,

  // The last synchronization attempt failed with an error.
  failed,

  // Synchronization is disabled.
  disabled,
}
