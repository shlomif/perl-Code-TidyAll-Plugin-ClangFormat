# perl-Code-TidyAll-Plugin-ClangFormat

A clang-format plugin for Code::TidyAll . This speeds up clang-format validation
and reformatting on subsequent calls by making use of Code::TidyAll 's caching.

For more information, see:

- [tidyall](https://metacpan.org/pod/distribution/Code-TidyAll/bin/tidyall)
- [clang-format](https://clang.llvm.org/docs/ClangFormat.html)
- [Documentation for this plugin](https://metacpan.org/pod/Code::TidyAll::Plugin::ClangFormat)

## Benchmarks

You can find some [benchmarks](./benchmarks/) - in the case of the
[Freecell Solver](https://fc-solve.shlomifish.org/) test suite, the formatting
"smoke" tests run time was reduced from 9-10 seconds to 2-3 seconds.
