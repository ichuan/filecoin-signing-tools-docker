FROM rust:1.53
WORKDIR /opt
RUN git clone https://github.com/Zondax/filecoin-signing-tools
RUN cd filecoin-signing-tools && cargo build --release --manifest-path service/Cargo.toml

ENTRYPOINT ["/opt/filecoin-signing-tools/target/release/filecoin-service"]
