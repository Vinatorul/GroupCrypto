# GroupCrypto

Implementation of Group-based cryptography key exchange protocols in OCaml.

## Features

- Implements group-based cryptographic protocols
- Pure OCaml implementation
- Uses dune build system

## Installation

1. Install OCaml and opam (OCaml package manager)
2. Install dependencies:
```bash
opam install dune
```
3. Build the project:
```bash
dune build
```

## Usage

To run the main implementation:

```bash
dune exec ./main.exe
```

## Project Structure

- `src/main.ml` - Main implementation
- `src/word.ml` - Supporting modules
- `dune-project` - Dune build configuration
- `groupcrypto.opam` - OPAM package definition

## Building

```bash
# Build project
dune build

# Run tests
dune runtest

# Clean build artifacts
dune clean
```

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contributing

Contributions are welcome! Please open issues or pull requests on GitHub.
