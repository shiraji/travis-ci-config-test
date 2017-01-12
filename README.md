# travis-ci-config-test

* Copy .travis.yml, .travis/after_success.sh, .travis/before_install.sh
* `chmod a+x .travis/after_success.sh`
* Add command below `# do whatever i want` on after_success.sh
* Change build command `- echo "FOO"` on .travis.yml
* `travis encrypt-file SSH-FILE --add` to add travis.enc
* Change .travis.yml's SSH-FILE to `.travis.ssh`
