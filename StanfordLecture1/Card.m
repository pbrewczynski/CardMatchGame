#import "Card.h"

@interface Card()
    // PRIVATE DECLARATIONS GO HERE
@end


@implementation Card

@synthesize contents = foo;  // foo is perfectly ok, but we use _contents
- (NSString *)contents {
    return foo;
}

- (void)setContents:(NSString *)contents {
    foo = contents;
}


@synthesize choosen = _choosen;


- (BOOL)isChoosen {
    return _choosen;
}

- (void) setChoosen:(BOOL)choosen {
    _choosen = choosen;
}


@synthesize matched = _matched;


- (BOOL)isMatched {
    return _matched;
}

- (void) setMatched:(BOOL)matched {
    _matched = matched;
}



- (int) match:(NSArray *)otherCards {
    int score = 0; // it is automaticaly set to 0
    
    for(Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}


@end