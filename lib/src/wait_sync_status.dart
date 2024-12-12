/// Synchronization wait status.
enum WaitSyncStatus {
  /// The wait ended due to the completion of synchronization.
  syncCompleted,

  /// Synchronization is disabled.
  syncDisabled,

  /// The wait ended due to exceeding the synchronization attempt limit.
  attemptLimitExceeded,

  /// The wait ended due to exceeding the time limit for synchronization.
  timeLimitExceeded,

  /// The wait ended because there is no internet connection.
  noConnection,
}
