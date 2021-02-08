import 'package:animation_routes_riverpod_divizion/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

///nie wykożystałem w tym projekcie

class Home extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final text = useProvider(textProvider);
    final future = useProvider(futureProvider);
    final stream = useProvider(streamProvider);
    final state = useProvider(stateProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('To Text od Providera ' + text),
            SizedBox(
              height: 10,
            ),
            future.when(
              data: (config) {
                return (config);
              },
              loading: () => CircularProgressIndicator(),
              error: (err, stack) => Text('Error' + err),
            ),
            stream.when(
              data: (config) {
                return Text('info z streamProvidera' + config.toString());
              },
              loading: () => CircularProgressIndicator(),
              error: (err, stack) => Text('Error' + err),
            ),
            Text('to jest stateProvider' + state.state.toString())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          state.state++;
        },
        child: Icon(Icons.access_alarm),
      ),
    );
  }
}
