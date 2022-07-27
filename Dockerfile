FROM rust:1.62
WORKDIR /opt
RUN git clone https://github.com/Zondax/filecoin-service
RUN cd filecoin-service && cargo build --release

ENTRYPOINT ["/opt/filecoin-service/target/release/filecoin-service"]
