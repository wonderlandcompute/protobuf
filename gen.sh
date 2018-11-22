#python gen
python3 -m grpc_tools.protoc -I . --python_out=. --grpc_python_out=. *proto
#golang gen
protoc --go_out=plugins=grpc:. *.proto
