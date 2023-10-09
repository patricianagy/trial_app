import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial_app/loading_states.dart';
import 'package:trial_app/services/services.dart';

class DashboardViewModel extends StateNotifier<LoadingStates> {
  final Ref ref;

  DashboardViewModel(LoadingStates state, this.ref) : super(state) {
    init();
  }

  Future<void> init() async {
    state = LoadingStates.loading;
    print("ztuz");
    await ref.read(Services.api).getToken();

    state = LoadingStates.loaded;
  }
}
