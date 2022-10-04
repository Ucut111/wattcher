class GetRoomRequest {
  final String externalRoomId;

  const GetRoomRequest({
    required this.externalRoomId,
  });

  Map<String, dynamic> toMap() {
    return {
      'externalRoomId': externalRoomId,
    };
  }
}
