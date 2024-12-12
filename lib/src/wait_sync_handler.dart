import 'dart:async';
import 'package:in_sync_interface/in_sync_interface.dart';

typedef StartSyncHandler = void Function();

/// Handler for waiting for the synchronization to complete.
/// Does not initiate waiting if there is no internet connection.
abstract class WaitSyncHandler {
  /// Repository used to manage synchronization logic.
  SyncRepository get syncRepository;

  /// Maximum duration to wait for synchronization.
  /// If this duration is exceeded, the waiting process is terminated.
  Duration get maxWaitSyncDuration;

  /// Maximum number of attempts to wait for synchronization.
  /// If this limit is exceeded, the waiting process is terminated.
  int get maxWaitSyncAttempt;

  /// Optional callback that is triggered when synchronization starts.
  StartSyncHandler? get onSyncStart;

  /// Initiates the wait for synchronization to complete.
  ///
  /// Returns a [WaitSyncStatus] indicating the result of the waiting process.
  Future<WaitSyncStatus> waitSync();

  /// Disposes of any resources used by the handler.
  /// Should be called when the handler is no longer needed.
  void dispose();
}
