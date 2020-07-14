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
  /// If sync already on - only sync attempt will be performed
  /// and sync in backgrond will be scheduled.
  Future<void> enable();

  /// Turn of synchronization.
  Future<void> disable();

  /// Clear all sync data.
  ///
  /// All information about synchronization will be deleted
  /// and sync will be turned off.
  ///
  /// On the next sync turn on - all entities will be synchronized from zero.
  Future<void> clearAll();

  /// Make synchronization with remote.
  Future<void> synchronize();
}
