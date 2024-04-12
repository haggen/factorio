# Dedicated Factorio Server

See https://wiki.factorio.com/Multiplayer#Dedicated/Headless_server.

## Usage

Copy `compose.override.yml.example` to `compose.override.yml` and change it as needed, then run `docker compose up`.

Anything files you'd like to share with server go in the `./shared` directory, which is mounted as `/opt/factorio/shared`.

The server listens on port `34197` using only UDP.

## Legal

Apache-2.0 ©️ 2024 Arthur Corenzan.

This project is not created by, affiliated with or sponsored by Wube Software. Factorio and the Factorio artwork are intellectual properties of Wube Software. All rights are reserved worldwide.
