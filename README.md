# travis-ci-config-test

* Copy .travis.yml and .travis/after_success.sh
* `chmod a+x .travis/after_success.sh`
* Add command below `# do whatever i want` on after_success.sh
* Change build command `- echo "FOO"` on .travis.yml
* `travis encrypt-file SSH-FILE --add` to add travis.enc
