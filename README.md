# WhatsApp Home Screen — Flutter UI Study

A Flutter interface exercise recreating the iOS-style WhatsApp home screen with local sample contacts.

## Features

- Conversation list with avatars, message previews and timestamps.
- Read/unread presentation using sample contact data.
- Reusable contact model and list-item widget.

This is an interface study, not a messaging service. Conversation data is defined locally; the project does not connect to WhatsApp or send real messages.

## Screenshots

<img src="https://github.com/JoaoVtrxx/WhatsApp-Design-Clone/assets/106991499/f6d0adb0-ddef-4276-b587-a3cf780cc675" alt="WhatsApp-Design-Clone screenshot 1" width="240" />

## Android download

[Download the included APK](CloneWhats.apk). This is the existing build committed to the repository.

## Run from source

Requires Flutter with a bundled Dart SDK matching `>=3.0.6 <4.0.0`, as declared in [pubspec.yaml](pubspec.yaml). Use a compatible SDK with the checked-in dependency lockfile.

```bash
git clone https://github.com/JoaoVtrxx/WhatsApp-Design-Clone.git
cd WhatsApp-Design-Clone
flutter pub get
flutter devices
```

Connect an Android device or start an emulator, then select its ID:

```bash
flutter run -d <device-id>
```

To generate a new Android release build:

```bash
flutter build apk --release
```

The generated APK is written to `build/app/outputs/flutter-apk/app-release.apk`.

## Code map

| Path | Purpose |
| --- | --- |
| [`lib/screens/home.dart`](lib/screens/home.dart) | Home-screen layout |
| [`lib/models/contato_model.dart`](lib/models/contato_model.dart) | Contact model |
| [`lib/utils/contato_repository.dart`](lib/utils/contato_repository.dart) | Local sample conversations |
| [`lib/widgets/list_item.dart`](lib/widgets/list_item.dart) | Conversation-row widget |
