import 'package:in_sync_interface/src/sync_state_info.dart';

/// The reposotory for work with synchronization.
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
  /// All exisiting entities will be processed and synced with the remote.
  /// It can take a while.
  ///
  /// If sync already on - method will check last modified entities,
  /// to create actions if its didn't create because of close of the app.
  ///
  /// After that sync attempt will be performed
  /// and sync in backgrond will be scheduled.
  ///
  /// [userId] defines which user enable sync. If previously sync was enable
  /// for different user, than all data will be cleared before start sync.
  Future<void> enable(int userId);

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
  Future<void> synchronize();

  /// Specifies that modified data should not be sent.
  /// As a rule, it is necessary for debugging
  /// when authorizing with other people's data.
  void debugDoNotSendChanges();

  /// Used to release the memory allocated to variables when the repository is no longer in use.
  Future<void> dispose();

  /// Returns the synchronization job status stream.
  Stream<SyncStateInfo> get state;

  /// Returns the date of the last synchronization with device time.
  Future<DateTime?> get lastSyncDate;
}
