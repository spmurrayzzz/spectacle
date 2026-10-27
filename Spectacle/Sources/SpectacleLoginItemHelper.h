#import <Foundation/Foundation.h>
#import <ServiceManagement/ServiceManagement.h>

@interface SpectacleLoginItemHelper : NSObject

+ (SMAppServiceStatus)loginItemStatus;

+ (BOOL)setLoginItemEnabled:(BOOL)enabled error:(NSError **)error;

@end
