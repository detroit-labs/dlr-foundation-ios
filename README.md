# DLRFoundation

[![CI Status](http://img.shields.io/travis/detroit-labs/dlr-foundation-ios.svg?style=flat)](https://travis-ci.org/detroit-labs/dlr-foundation-ios)
[![Version](https://img.shields.io/cocoapods/v/DLRFoundation.svg?style=flat)](http://cocoadocs.org/docsets/DLRFoundation)
[![License](https://img.shields.io/cocoapods/l/DLRFoundation.svg?style=flat)](http://cocoadocs.org/docsets/DLRFoundation)
[![Platform](https://img.shields.io/cocoapods/p/DLRFoundation.svg?style=flat)](http://cocoadocs.org/docsets/DLRFoundation)

## Installation

DLRFoundation is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```rb
pod "DLRFoundation"
```

## Author

Nathan Walczak, nate.walczak@detroitlabs.com

## License

DLRFoundation is available under the MIT license. See the LICENSE file for more info.

## Examples

##### NSArray+DLR

```objc
/** Returns a filter array with only objects of a specific kind of class.
    An empty array is returned if none found. */
- (NSArray *)dlr_filteredArrayWithKindOfClass:(Class)aClass;

/** Returns the object located after specificed object.
    If last object, returns first object. */
- (id)dlr_objectAfterObject:(id)object;

/** Returns the object located before specificed object.
    If first object, returns last object. */
- (id)dlr_objectBeforeObject:(id)object;
```