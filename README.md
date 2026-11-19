# itsdangerous: Secret Key Rotation Test Enhancement

## Project Overview

An independent test-coverage enhancement to the itsdangerous Python library.

This project focuses on understanding and testing secret-key rotation.

## Technical Investigation

The Signer class supports multiple secret keys.

- The newest key signs new values.
- Older keys verify previously issued signatures.
- Verification checks configured keys in reverse order.

## Test Enhancement

File modified: tests/test_itsdangerous/test_signer.py

Extended the existing test_secret_keys test to verify:

1. Old tokens remain valid when the old key is retained.
2. New tokens are signed using the newest key.
3. The old key alone cannot verify a newly signed token.

## Validation Results

- Targeted test: 1 passed
- Full test suite: 297 passed
- Code coverage: 97%
- Python version: 3.13.17

## Technologies

- Python
- pytest
- pytest-cov
- Git
- GitHub

## Running the Tests

Run these commands individually in your terminal:

python -m pytest

python -m pytest --cov=itsdangerous --cov-report=term-missing

## Scope

This is an independent portfolio exercise based on an existing open-source project. The library implementation was not modified. The work focuses on improving test coverage for secret-key rotation behaviour.

## Author

Shameer H B

GitHub: https://github.com/shameerhb
