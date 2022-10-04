import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/data/request/report_message_request.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class ReportMessageUseCase {
  final IChatRepository _chatRepository;

  const ReportMessageUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<void, Exception>> call({required ReportMessageRequest reportMessageRequest}) async {
    try {
      return Success(_chatRepository.reportMessage(reportMessageRequest: reportMessageRequest));
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
