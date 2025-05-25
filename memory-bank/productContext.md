# Product Context - GroupCrypto

This file provides a high-level overview of the project and the expected product that will be created. Initially it is based upon projectBrief.md (if provided) and all other available project-related information in the working directory. This file is intended to be updated as the project evolves, and should be used to inform all other modes of the project's goals and context.
2025-05-25 15:20:26 - Log of updates made will be appended as footnotes to the end of this file.

*

## Project Goal

* Implementation of group-based cryptographic key exchange protocols in OCaml
* Development of a modular system for cryptographic word operations

## Key Features

* Cryptographic word operations (insert, delete, substring)
* Pure OCaml implementation with no external dependencies
* Uses Dune build system

## Overall Architecture

* Word module (src/word.ml) - implements basic word operations
* Main executable (src/main.ml) - demonstrates functionality
* Build system: Dune 3.8+
* Dependencies: OCaml >= 4.14.0

2025-05-25 15:23:34 - Добавлено полное описание проекта