#import <Foundation/NSObject.h>

@interface Card : NSObject
    // PUBLIC API

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChoosen) BOOL choosen;
@property (nonatomic, getter = isMatched) BOOL matched;


- (int)match:(NSArray *)card;



@end