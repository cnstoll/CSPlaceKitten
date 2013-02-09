// UIImageView+CSPlaceKitten.h
//
// Copyright (c) 2013 Conrad Stoll
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <UIKit/UIKit.h>

/**
 This category adds functionality to the UIKit framework's `UIImageView` class to allow the user to 
 easily place adorable kittens in an image view.  This category depends on AFNetworking's
 UIImageView+AFNetworking category. 
 */

@interface UIImageView (CSPlaceKitten)

/** 
 Uses AFNetworking to retrieve a kitten with the same size as the imageView.  When the kitten
 arrives, it will be placed into the imageView.
 
 @discussion Be sure the imageView's frame has a size before this is called, otherwise your kitten may not be visible :(
 */
- (void)placeKittenInImageView;

@end
