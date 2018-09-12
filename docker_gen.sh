docker run -v `pwd`:/defs namely/protoc-all -f wonderland.proto -l go
docker run -v `pwd`:/defs namely/protoc-all -f wonderland.proto -l python
#rewrite your wonderlandClient path
cp ./gen/pb_python/* ~/wonderlandcompute/client/wonderlandClient/
echo "copying python proto into ~/wonderlandcompute/client/wonderlandClient"
#rewrite your wonderland path
cp ./gen/pb-go/* $GOPATH/src/github.com/wonderlandcompute/server/wonderland/
echo "copying go proto into $GOPATH/src/github.com/wonderlandcompute/server/wonderland"

#Generate wonderland.md and wonderland.html doc files
echo "Generating docs"
docker run --rm -v `pwd`:/proto -ti scr4t/protoc-gen-doc /bin/bash -lc "cd proto; pwd; protoc -I . --doc_out=markdown,wonderland.md:. --doc_out=html,wonderland.html:. wonderland.proto";
