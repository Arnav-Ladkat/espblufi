#import <Flutter/Flutter.h>

@interface EspblufiPlugin : NSObject<FlutterPlugin>
@end

@interface EspblufiPluginStreamHandler : NSObject<FlutterStreamHandler>
@property FlutterEventSink sink;
@end
