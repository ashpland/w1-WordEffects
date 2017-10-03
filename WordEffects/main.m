//
//  main.m
//  WordEffects
//
//  Created by Andrew on 2017-10-02.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL doContinue = true;
        
        while (doContinue == true) {
        
            
            // 255 unit long array of characters
            char inputChars[255];
            
            // ask for input
            printf("Input a string: ");
            
            //limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            //print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            //print NSString object
            NSLog(@"Input was: %@", inputString);
            
            printf("Continue? y/n: ");
            fgets(inputChars, 255, stdin);

            if (strncmp("n", inputChars, 1) == 0) {
                doContinue = false;
            }
        }
    }
    return 0;
}
