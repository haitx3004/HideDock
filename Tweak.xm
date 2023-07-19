#import <UIKit/UIKit.h>

@interface SBDockView : UIView {	

	UIView* _backgroundView;
	
}
@property (nonatomic,retain) UIView * backgroundView;

@end

%hook SBDockView 

- (void) didMoveToWindow {

	%orig;

	UIView *bgView = MSHookIvar<UIView *>(self, "_backgroundView");

	bgView.hidden = YES;

}

%end

