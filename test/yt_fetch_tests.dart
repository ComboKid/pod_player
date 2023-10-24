import 'dart:convert';
import 'dart:io';

import 'package:pod_player/src/utils/video_apis.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future getUrls () async {
  final activity = File('./data/activity_list_en.json');
  final activityJson = jsonDecode(await activity.readAsString()) as List<dynamic>;
  final urls = activityJson.map((e) {
    final assets = e['assets'] as List<dynamic>;
    return assets.map((e) => e['url'] as String).toList();
  });

  print(urls);
}

void main() async {
  await getUrls();
}