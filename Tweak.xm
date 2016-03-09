#import <UIKit/UIKit.h>
#import <Preferences/Preferences.h>
#import <substrate.h>
#define Plist_PATH @"/var/mobile/Library/Preferences/Kenda.plist"
inline bool GetPrefBool(NSString *key)
{
return [[[NSDictionary dictionaryWithContentsOfFile:Plist_PATH] valueForKey:key] boolValue];
}

%hook TFNTwitterAccount
-(BOOL)isNotificationsTabRedesignEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;

     }
}

                          -(BOOL)isInFullCinemaMediaExperiment{
                               if(GetPrefBool(@"k5")) {
                                      return TRUE;
                                            }else{
                                               
                                               return %orig;
          }
     }

-(BOOL)shouldShowVITNotificationFilters{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}

-(bool)shouldOverwriteAbuseFilterSetting{
if(GetPrefBool(@"k2")){
return TRUE;
}else{
return %orig;
}
}
-(BOOL)defaultLowQualityFilterSetting{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)defaultAbuseFilterSetting{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}

-(bool)isIPadSearchFiltersEnabled{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
-(bool) isTrendsPlusSearchEntryWithDiscoEnabled{
if(GetPrefBool(@"k3")) {
return TRUE;
}else{
return %orig;
}
}
-(BOOL)isCardForwardInSearchEnabled{
if(GetPrefBool(@"k3")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)isTrendsPlusSearchEntryEnabled{
if(GetPrefBool(@"k3")) {
return TRUE;
}else{
return %orig;
}
}
%end



%hook T1SearchTextView
-(void)_setFiltersButtonImage{
if(GetPrefBool(@"k2")){
return ;
}else{
return %orig;
}
}
-(void)_filtersButtonTapped{
if(GetPrefBool(@"k2")) {
return ;
}else{
return %orig;
}
}
%end



%hook T1DefaultSearchResultController
-(BOOL)filtersEnabled{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end


%hook T1PhotoEditBottomBar
-(void)showFiltersBar:(BOOL)arg1{
if(GetPrefBool(@"k2")) {
arg1 = TRUE;
%orig(arg1);
}else{
return %orig;
}
}
%end

%hook T1BasketballTimelineViewController
-(BOOL)filtersEnabled{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end

%hook TFNTwitterFeatureSwitchesValue
-(BOOL)boolValue{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end 

%hook T1PhotoFilterSelectionControl
-(void)setShowIntensityControl:(BOOL)arg1{
if(GetPrefBool(@"k2")) {
arg1 = TRUE;
%orig(arg1);
}else{
return %orig;
}
}
%end

%hook UIViewController
-(BOOL)prefersStatusBarHidden{
if(GetPrefBool(@"k3")) {
return TRUE;
}else{
return %orig;
}
}
%end


%hook TFNTwitterDeviceFeatureSwitches

+(BOOL)isInterestPickerSearchEnabled{
if(GetPrefBool(@"k3")) {
return TRUE;
}else{
return %orig;
}
}
%end


%hook TFNTwitterUniversalDiscoverTrendsStream
-(BOOL)isTrendsPlusSearchEntryWithDiscoEnabled{
if(GetPrefBool(@"k3")) {
return TRUE;
}else{
return %orig;
}
}
%end


%hook TFNTwitterUniversalDiscoverTrendsStream
-(void)setTrendsPlusSearchEntryWithDiscoEnabled:(BOOL)arg1{
if(GetPrefBool(@"k3")) {
arg1 = TRUE;
%orig(arg1);
}else{
return %orig;
}
}
%end

%hook TFNTwitterUniversalDiscoverTimeline
-(BOOL) isTrendsPlusSearchEntryWithDiscoEnabled{
if(GetPrefBool(@"k3")) {
return TRUE;
}else{
return %orig;
}
}
-(void)
setTrendsPlusSearchEntryWithDiscoEnabled:(BOOL)arg1{
if(GetPrefBool(@"k3")) {
arg1 = TRUE;
%orig(arg1);
}else{
return %orig;
}
}
%end

*// ^_^