proto:
	protoc -I protobuf/ --dart_out=lib/pb protobuf/stillbox.proto google/protobuf/timestamp.proto

patch:
	dart run patch_package apply
