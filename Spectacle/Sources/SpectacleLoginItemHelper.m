#import "SpectacleLoginItemHelper.h"

@implementation SpectacleLoginItemHelper

+ (SMAppServiceStatus)loginItemStatus
{
  return SMAppService.mainAppService.status;
}

+ (BOOL)setLoginItemEnabled:(BOOL)enabled error:(NSError **)error
{
  SMAppService *service = SMAppService.mainAppService;
  if (enabled) {
    if (service.status == SMAppServiceStatusEnabled) {
      return YES;
    }
    return [service registerAndReturnError:error];
  }
  if (service.status == SMAppServiceStatusNotRegistered) {
    return YES;
  }
  return [service unregisterAndReturnError:error];
}

@end
