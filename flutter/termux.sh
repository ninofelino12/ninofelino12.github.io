
curl -s https://raw.githubusercontent.com/Hax4us/flutter_in_termux/master/install.sh | bash -s
proot-distro login flutter
flutter create example-project
cd example-project
flutter build apk --release --target-platform android-arm64
