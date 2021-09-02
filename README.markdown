# Pandoc `#include` Filter

[![Build Status](https://app.travis-ci.com/suhlig/pandoc-include-filter.svg?branch=master)](https://app.travis-ci.com/suhlig/pandoc-include-filter)

This is a [Pandoc](http://pandoc.org/) [filter](http://www.pandoc.org/filters.html) for including files in code blocks.

Look at [spec/fixtures/input.md](spec/fixtures/input.md) for an example input file. Use the filter to include the referenced file with:

```bash
$ pandoc spec/fixtures/input.md --filter exe/pandoc-include-filter
```

# References

* [paru docs](https://heerdebeer.org/Software/markdown/paru/#writing-and-using-pandoc-filters-with-paru)
