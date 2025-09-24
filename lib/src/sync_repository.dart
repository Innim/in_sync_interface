import 'package:in_sync_interface/src/sync_state_info.dart';

/// The repository for work with synchronization.
///
/// By default the synchronization is off (see. [isEnabled]),
/// you should turn it on when log in complete,
/// because if user is not logged in, than it can't sync data.
abstract class SyncRepository {
  /// `true` if synchronization is on.
  ///
  /// If synchronization is off, all sync calls and entities changes
  /// will be ignored.
  Future<bool> get isEnabled;

  /// Turn on synchronization.
  ///
  /// All existing entities will be processed (if there is a lot of them,
  /// this can take a while).
  ///
  /// After that, synchronization will be started.
  /// If [waitForSync] is `true`, the method will wait until the synchronization
  /// is completed before returning. It can take a long time, so it is not recommended.
  ///
  /// If sync already on - method will check last modified entities,
  /// to create actions if its didn't create because of close of the app.
  ///
  /// After that sync attempt will be performed
  /// and sync in background will be scheduled.
  ///
  /// [userId] defines which user enable sync. If previously sync was enable
  /// for different user, than all data will be cleared before start sync.
  Future<void> enable(int userId, {bool waitForSync = false});

  /// Turn of synchronization.
  Future<void> disable();

  /// Clear all sync data.
  ///
  /// All information about synchronization will be deleted
  /// and sync will be turned off.
  ///
  /// On the next sync turn on - all entities will be synchronized from zero.
  Future<void> clearAll();

  /// Mark that synchronization needs to be performed.
  ///
  /// Synchronization will be executed in an appropriate time soon.
  ///
  /// If you need to force sync to to start right now (usually not necessary)
  /// and explicitly wait until it complete - use [synchronize].
  void needSynchronize();

  /// Make synchronization with remote.
  ///
  /// It's preferable to use [needSynchronize].
  ///
  /// If [manual] is `true`, it means that the synchronization
  /// was initiated by the user, and has a higher priority.
  Future<void> synchronize({bool manual = false});

  /// Specifies that modified data should not be sent.
  /// As a rule, it is necessary for debugging
  /// when authorizing with other people's data.
  void debugDoNotSendChanges();

  /// Used to release the memory allocated to variables when the repository is no longer in use.
  Future<void> dispose();

  /// Returns the current synchronization state.
  ///
  /// See also [state].
  SyncStateInfo get currentState;

  /// Returns the synchronization status stream.
  ///
  /// Take into account that you won't receive the current state immediately,
  /// only the following changes.
  ///
  /// See also [currentState].
  Stream<SyncStateInfo> get state;

  /// Returns the date of the last synchronization with device time.
  ///
  /// This is the most recent date when a chunk of data was received from the server.
  /// It does not indicate whether a full sync occurred —
  /// meaning both sending all local data and receiving all server data.
  /// See [lastSyncCompletedDate] for the time of the last successful full sync.
  Future<DateTime?> get lastSyncDate;

  /// Returns the date of the last successful synchronization complete
  /// with device time.
  ///
  /// Synchronization is considered complete if there is nothing
  /// to send to the server and nothing to take from it, including files.
  Future<DateTime?> get lastSyncCompletedDate;

  /// Checks whether all local data and associated files are fully synchronized with the remote.
  ///
  /// Returns `false` if no new local changes have been made since the last synchronization
  /// and there is no new data or file to upload to the remote.
  ///
  /// This method **does not** check the remote for new updates
  /// and does **not** consider the download status of data or files from the remote.
  /// It only evaluates the local state against the last known synchronization.
  Future<bool> hasUnsyncedChanges();
}
