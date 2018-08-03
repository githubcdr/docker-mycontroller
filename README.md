# Mycontroller running on Alpine Linux

## Intro

MyController.org is a controller for the sensors world! Primarily it was developed to support MySensors.org project. Later changed it's architecture to support other projects also. Considered system resources in mind on development.

## What can you do with MyController.org?

In simple words, You can monitor and control your home from anywhere. It is home automation server. See the features provided by MyController.org.

Please check out the Mysensors website https://www.mysensors.org/ for more info.

## Source

Original code available at http://www.mycontroller.org/

## Changelog

* 2018-08-03: Updated to 1.3 final release
* 2018-02-25: Updated to 1.2 final release
* 2018-01-09: Updated to 1.1 final release
* 2017-09-25: Updated to 1.0 final release

## Instructions

Run command

```
docker run -d -p 1883 -p 8443 --name mycontroller cdrocker/mycontroller
```

## Credits

This is an automated build with public source available.

## Support

Feel free to leave a comment for support or improvements, PR's are also appreciated!
