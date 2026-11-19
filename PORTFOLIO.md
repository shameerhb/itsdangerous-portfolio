# itsdangerous – Secret Key Rotation Test Enhancement

## Project Overview

This project explores the secret-key rotation functionality in the
itsdangerous Python library.

The objective was to understand the signing and verification workflow
and strengthen test coverage for secret-key rotation.

## Technical Investigation

The Signer implementation supports multiple secret keys.

- The newest key is used to sign new values.
- Previously issued signatures can be verified using older keys.
- Verification checks the available keys in reverse order.

## Test Enhancement

Updated the existing `test_secret_keys` test in:

`tests/test_itsdangerous/test_signer.py`

The test verifies:

1. A token signed using an older key remains valid when that key is retained.
2. New tokens are signed using the newest key.
3. The old key alone cannot verify a token signed using the new key.

## Validation Results

- Targeted test: 1 passed
- Full test suite: 297 passed
- Overall code coverage: 97%
- Python version: 3.13.17

## Tools and Technologies

- Python
- pytest
- pytest-cov
- Git
- VS Code

## Scope

This is a test-coverage enhancement to an existing open-source
project. No changes were made to the library's implementation.

## Reproduce the Tests

Install the project and testing dependencies, then run:

```bash
python -m pytest
python -m pytest --cov=itsdangerous --cov-report=term-missing
