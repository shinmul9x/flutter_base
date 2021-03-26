enum CallingApiStatus {
  none,
  inProgress,
  successLoading,
  failureLoading,
}

extension CallingApiStatusX on CallingApiStatus {
  bool get isNone => this == CallingApiStatus.none;
  bool get isInProgress => this == CallingApiStatus.inProgress;
  bool get isSuccessLoading => this == CallingApiStatus.successLoading;
  bool get isFailureLoading => this == CallingApiStatus.failureLoading;
}
