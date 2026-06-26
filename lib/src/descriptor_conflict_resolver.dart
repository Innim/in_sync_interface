/// Information about a dataset descriptor conflict.
///
/// Passed to [DescriptorConflictResolver.onConflict].
/// Reserved for future extension.
class DescriptorConflictInfo {
  const DescriptorConflictInfo();
}

/// Resolves a dataset descriptor conflict.
///
/// When the sync engine detects that the device's local dataset and the
/// server's dataset are independent (rule 3 in the descriptor protocol),
/// [onConflict] is called. Synchronization will not start until `resolve`
/// is invoked.
abstract interface class DescriptorConflictResolver {
  /// Called when a descriptor conflict is detected.
  ///
  /// [resolve] must be called exactly once:
  /// - `resolve(merge: true)` — user confirmed the merge; synchronization
  ///   will continue after the merged descriptor is written.
  /// - `resolve(merge: false)` — user rejected; the sync engine will
  ///   stop sync for this account (the application is expected to log
  ///   the user out separately).
  Future<void> onConflict(
    DescriptorConflictInfo info,
    Future<void> Function({required bool merge}) resolve,
  );
}
