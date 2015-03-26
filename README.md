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

/** Returns true if the array contains an instance of the specified class or its
    subclasses. */
- (BOOL)dlr_containsKindOfClass:(Class)aClass;

/** Returns true if the array contains a member of the specified class. */
- (BOOL)dlr_containsMemberOfClass:(Class)aClass;
```

##### NSString+DLR

```objc
/** Returns a string by trimming all of the leading and trailing whitespace characters.
If the receiver is composed entirely of whitespace characters, an empty string is returned. */
- (NSString *)dlr_stringByTrimmingWhitespaceCharacters;

/** If the receiver has a lenght of zero, nil is returned.  Otherwise the receiver is returned. */
- (NSString *)dlr_nilIfEmpty;
```
