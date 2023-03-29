#import <Foundation/Foundation.h>
#import <SpringBoardUI/SBAlertItem.h>
#import <SpringBoardUI/SBUserNotificationAlert.h>

%hook SBAlertItemsController

- (void)activateAlertItem:(SBAlertItem *)alert {
    if ([alert isKindOfClass:[%c(SBUserNotificationAlert) class]]) {
    
        NSString *alertHeader  = [(SBUserNotificationAlert *)alert alertHeader];
        NSString *alertMessage = [(SBUserNotificationAlert *)alert alertMessage];

        if ([alertHeader isEqualToString:@"Accessory"] && [alertMessage isEqualToString:@"Downloading accessory firmware. Your accessory will not function until the download completes."]) {
            return;
        }
    }
    %orig;
}

%end
