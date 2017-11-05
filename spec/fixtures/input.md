% Testing Filters

# Hello

* This is the filter's source code:

  ```ruby
  #include exe/pandoc-include-filter
  ```

* Some other item

* This is a list item with an include that does not exist

  ```bash
  #include does/not/exist
  ```

* This is a list item with an include of an absolute path:

  ```bash
  #include /etc/hosts
  ```

Final words: We are done.
