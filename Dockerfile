FROM rust:latest
WORKDIR /opt
RUN git clone https://github.com/Zondax/filecoin-signing-tools
RUN cd filecoin-signing-tools && git checkout v0.11.0 && cargo build --release --manifest-path service/Cargo.toml

ENTRYPOINT ["/opt/filecoin-signing-tools/target/release/filecoin-service"]
