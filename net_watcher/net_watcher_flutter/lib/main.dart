import 'package:flutter/material.dart';
import 'package:net_watcher_client/main.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

/// Sets up a global client object that can be used to talk to the server from
/// anywhere in our app. The client is generated from your server code
/// and is set up to connect to a Serverpod running on a local server on
/// the default port. You will need to modify this to connect to staging or
/// production servers.
/// In a larger app, you may want to use the dependency injection of your choice instead of
/// using a global client object. This is just a simple example.
var client = Client('http://localhost:8080')
..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}