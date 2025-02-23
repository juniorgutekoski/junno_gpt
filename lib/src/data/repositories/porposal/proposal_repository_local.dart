import 'package:junno_app/src/data/repositories/porposal/proposal_repository.dart';
import 'package:junno_app/src/domain/models/proposal/propoal.dart';
import 'package:result_dart/src/types.dart';

class ProposalRepositoryLocal implements ProposalRepository {
  @override
  AsyncResult<Proposal> createProposal(Proposal proposal) {
    // TODO: implement createProposal
    throw UnimplementedError();
  }

  @override
  AsyncResult<bool> deleteProposal(int id) {
    // TODO: implement deleteProposal
    throw UnimplementedError();
  }

  @override
  AsyncResult<Proposal> getProposal(int id) {
    // TODO: implement getProposal
    throw UnimplementedError();
  }

  @override
  AsyncResult<List<Proposal>> getProposals() {
    // TODO: implement getProposals
    throw UnimplementedError();
  }

  @override
  AsyncResult<Proposal> updateProposal(Proposal proposal) {
    // TODO: implement updateProposal
    throw UnimplementedError();
  }
}
