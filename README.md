# Ahk Continuous Integration using AppVeyor

[![Build status](https://ci.appveyor.com/api/projects/status/5510uj2ey77lc09i/branch/master?svg=true)](https://ci.appveyor.com/project/aviaryan/ahk-ci-example/branch/master)

This is an example project to demonstrate how to use [AppVeyor](https://www.appveyor.com/) and Uberi's [Yunit](https://github.com/Uberi/Yunit) to set up continuous testing for your project. 


### Steps

1. Clone or download this repo.
2. Copy appveyor.yml to your project. `appveyor.yml` is the appveyor configuration files and it includes steps like install ahk on server, run the test script etc.
3. Copy lib\Yunit to your project maintaining the directory structure. It should be noted that the Yunit library used in this project is slightly modified version of the original's so please use this one.
4. Copy the `tests` directory to your project. The tests/test.bat is the script responsible to run all .ahk test files in the directory. 
5. testMain.ahk is the test script. You can have as many test scripts in the `tests/` directory.
6. Spend some time going through its code. It should be easy enough to understand how to write tests. Additionally [Yunit docs](https://github.com/Uberi/Yunit) should be helpful.
7. Once you have written the tests, run them locally by executing `tests\test.bat` on the terminal.
8. After pushing the tests to GitHub, you need to sign in to [appveyor](https://www.appveyor.com/) and add the repo to start the CI process.


### Using custom test framework

You can use a custom test framework as long as it does the following -

1. It sends test details to stdout
2. It exits the script with ExitCode 1 in case one of the test fails.


### Need Help ?

Open an issue or tweet me at [@aviaryan123](https://twitter.com/aviaryan123)