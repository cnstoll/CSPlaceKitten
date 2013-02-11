// UIImageView+CSPlaceKitten.m
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

#import "UIImageView+CSPlaceKitten.h"

#import "UIImageView+AFNetworking.h"

@implementation UIImageView (CSPlaceKitten)

- (void)placeKittenInImageView {
    NSInteger width = self.frame.size.width;
    NSInteger height = self.frame.size.height;
    
    UIScreen *screen = nil;
    
    if ([self.window screen]) { // Support for different windows, if the view has a window
        screen = [self.window screen];
    }else{
        //whoa this view hasn't been added to a window, but we totally should have one
        screen = [UIScreen mainScreen];
    }
    
    if (screen != nil && screen.scale > 1.f) { // Request a sharper kitten if shown on a retina screen
        width = width * screen.scale;
        height = height * screen.scale;
    }
    
    NSString *kittenSize = [NSString stringWithFormat:@"%d/%d", width, height];
    NSString *kittenAddress = [NSString stringWithFormat:@"http://placekitten.com/g/%@", kittenSize];
    NSURL *url = [NSURL URLWithString:kittenAddress];
    [self setImageWithURL:url];
}

@end
