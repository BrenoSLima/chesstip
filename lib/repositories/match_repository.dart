import 'package:chesstip/models/match.dart';
import 'package:chesstip/repositories/user_repository.dart';

class MatchRepository {
  static List<Match> matches = [
    Match(
      whitePlayer: UserRepository.users[0],
      blackPlayer: UserRepository.users[1],
      winnerId: UserRepository.users[0].id,
      value: 5.00,
      status: MatchStatusEnum.finished,
    ),
    Match(
      whitePlayer: UserRepository.users[1],
      blackPlayer: UserRepository.users[2],
      winnerId: UserRepository.users[1].id,
      value: 5.00,
      status: MatchStatusEnum.finished,
    ),
    Match(
      whitePlayer: UserRepository.users[1],
      blackPlayer: UserRepository.users[0],
      winnerId: UserRepository.users[0].id,
      value: 5.00,
      status: MatchStatusEnum.finished,
    )
  ];
}
