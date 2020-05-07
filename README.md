# Loading data from a Python buffer in C++ streams

Trying out a way to pass a bytestring or buffer in Python and process it using
C++ streams. I need this because (as of 2018-06-08) [khmer][0] need to load
data from files, which lead to [annoying workarounds][2] in [sourmash][1].
I made this repo to test the approach before digging into `khmer`, which is
way more complex than this PoC =]

More refs:
- http://www.cplusplus.com/reference/sstream/istringstream/rdbuf/
- https://stackoverflow.com/questions/44978420/how-to-get-sfmls-error-message-to-cython
- https://github.com/capnproto/pycapnp/pull/163/files
- https://stackoverflow.com/questions/7781898/get-an-istream-from-a-char/7781958#7781958
- https://stackoverflow.com/questions/30984078/cython-working-with-c-streams

[0]: https://github.com/dib-lab/sourmash
[1]: https://github.com/dib-lab/sourmash
[2]: https://github.com/dib-lab/sourmash/blob/ad9999e39ecf1701edc13aaf35006128c66a4dc1/sourmash/sbt.py#L724
