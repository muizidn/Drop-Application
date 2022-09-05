//
//  EventLoggerBridge.m
//  Drop
//
//  Created by M on 03/09/22.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>

@interface RCT_EXTERN_MODULE(EventLogger, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(nonnull NSNumber *) date completion:(RCTResponseSenderBlock)completion)

@end
