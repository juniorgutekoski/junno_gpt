import 'package:junno_app/src/domain/models/proposal/propoal.dart';
import 'package:result_dart/result_dart.dart';

abstract class ProposalRepository {
  AsyncResult<List<Proposal>> getProposals();
  AsyncResult<Proposal> getProposal(int id);
  AsyncResult<Proposal> createProposal(Proposal proposal);
  AsyncResult<Proposal> updateProposal(Proposal proposal);
  AsyncResult<bool> deleteProposal(int id);
}
