import 'package:async_redux/async_redux.dart';
import 'package:products_practice/utils/app_state.dart';

abstract class LoadingAction extends ReduxAction<AppState> {
  LoadingAction({required this.actionKey});

  final String actionKey;

  @override
  void before() => dispatchAsync(WaitAction.add(actionKey));

  @override
  void after() => dispatchAsync(WaitAction.remove(actionKey));
}
