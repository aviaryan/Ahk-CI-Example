# Ahk Continuous Integration using AppVeyor

This is an example project to demonstrate how to use [AppVeyor](https://www.appveyor.com/) and Uberi's YUnit to set up continuous testing for your project. 


### Steps

1. Clone or download this repo.
2. Copy appveyor.yml to your project. `appveyor.yml` is the appveyor configuration files and it includes steps like install ahk on server, run the test script etc.
3. Copy lib\Yunit to your project maintaining the directory structure. It should be noted that the Yunit library used in this project is slightly modified version of the original's so please use this one.
4. Copy the `tests` directory to your project. The tests/test.bat is the script responsible to run all .ahk test files in the directory. 
5. testMain.ahk is the test script. You can have as many test scripts in the `tests/` directory.
6. Spend some time going through its code. It should be easy enough to understand how to write tests. Additionally [Yunit docs](https://github.com/Uberi/Yunit) should be helpful.
7. Once you have written the tests, run them locally by executing `tests\test.bat` on the terminal.
8. After pushing the tests to GitHub, you need to sign in to [appveyor](https://www.appveyor.com/) and add the repo to start the CI process.


### Need Help ?

Open an issue or tweet me at [@aviaryan123](https://twitter.com/aviaryan123)