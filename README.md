# inko-totp

A Time-Based One-Time Password (TOTP) token generator and validator for the Inko programming language.

This implementation is based on [RFC 6238](https://www.rfc-editor.org/rfc/rfc6238).

## Examples

    import totp.Totp

    let base32_encoded_secret = 'GEZDGNBVGY3TQOJQGEZDGNBVGY3TQOJQ'
    let totp = Totp.with_secret(base32_encoded_secret)

    totp.generate # => '012345', for example (depends on the current time)

    totp.validate('012345') # => true (again, depends on the current time)
