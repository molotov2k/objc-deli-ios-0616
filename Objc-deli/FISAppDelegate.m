//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}


- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    }
    
    NSMutableString *line = [[NSMutableString alloc] initWithString:@"The line is:"];
    for (NSUInteger i = 0; i < [deliLine count]; i++) {
        [line appendFormat:@"\n%u. %@", i + 1, deliLine[i]];
    }
    
    return line;
}


- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
}


- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *customer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return customer;
}



@end
