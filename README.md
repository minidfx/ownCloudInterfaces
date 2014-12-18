ownCloudInterfaces
==================

[![Total Downloads](https://poser.pugx.org/minidfx/owncloud-interfaces/downloads.svg)](https://packagist.org/packages/minidfx/owncloud-interfaces)

Contains interfaces and constants of ownCloud version 7. Package very useful for mocking ownCloud dependencies in your unit tests without a complete ownCloud installation and you can run them on a hosted continuous integration service.

The dev version can be easily installed through composer.

    composer require minidfx/ownCloudInterface
    
or add these line into your composer.json

    {
      "require-dev": {
          "minidfx/owncloud-interfaces": "@dev"
        }
    }
    
Package used in the project [SimpleImapAuthentication4ownCloud](https://github.com/minidfx/SimpleImapAuthentication4ownCloud) to be build on [Travis](http://travis-ci.org).
