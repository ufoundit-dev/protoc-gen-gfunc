.PONHY: all example proto

TARGET=protoc-gen-gfunc
SRCS=$(wildcard *.go)
PROTOS=$(wildcard proto/gfunc/*.proto)
PROTO_SRCS=$(addprefix gufnc/, $(patsubst %.proto, %.pb.go, $(notdir ${PROTOS})))

all: ${TARGET}

test:
	echo ${PROTO_SRCS}

example: example_base

example_base:
	buf generate --template examples/base/buf.gen.yaml --path examples/base -o examples/base

${TARGET}: ${SRCS} ${PROTO_SRCS}
	go build

${PROTO_SRCS}: ${PROTOS}
	buf generate --template proto/gfunc/buf.gen.yaml --path proto/gfunc

clean:
	rm -f ${TARGET}
