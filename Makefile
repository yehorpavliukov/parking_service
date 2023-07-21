### Useful commands
format:
	find . -not -path './.git/*' -not -path '*/.dart_tool/*' -name "*.dart" ! -name "*.g.dart" ! -name "*_test.dart" ! -name '*.swagger.*' ! -name '*.config.dart' ! -name '*.chopper.dart' ! -name '*.freezed.dart' ! -name '*.gr.dart' | tr '\n' ' ' | xargs fvm flutter format --line-length=100

get:
	fvm flutter pub get

get_all:
	scripts/get_all.sh

gen:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

gen_services:
	cd packages/services && fvm flutter pub get && fvm flutter packages pub run build_runner build --delete-conflicting-outputs

gen_shared:
	cd packages/shared && fvm flutter pub get && fvm flutter packages pub run build_runner build --delete-conflicting-outputs

gen_repo:
	cd packages/repositories && fvm flutter pub get && fvm flutter packages pub run build_runner build --delete-conflicting-outputs

gen_models:
	cd packages/models && fvm flutter pub get && fvm flutter packages pub run build_runner build --delete-conflicting-outputs

get_shared:
	cd packages/shared && fvm flutter pub get

get_services:
	cd packages/services && fvm flutter pub get

get_repo:
	cd packages/repositories && fvm flutter pub get

get_models:
	cd packages/models && fvm flutter pub get

setup_proj:
	scripts/setup.sh