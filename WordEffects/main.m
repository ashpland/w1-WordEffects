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
            
            // ask for string
            printf("Input a string: ");
            
            //limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSString *tidyInput = [inputString substringToIndex:(inputString.length-1)];
            
            // ask for operation
            printf("Choose an operation\n1) Canadianize\n2) Uppercase\nOperation: ");
            fgets(inputChars, 255, stdin);
            NSString *operationNumber = [NSString stringWithUTF8String:inputChars];
            NSInteger opChoice = [operationNumber intValue];

            switch (opChoice) {
                case 1:
                    NSLog(@"You chose 1!");
                    break;
                    
                case 2:
                    NSLog(@"You chose 2!");
                    break;
                    
                default:
                    NSLog(@"That's not a valid choice :(");
                    break;
            }
            
            
            
            
            
            //print NSString object
            NSLog(@"Operation was: %ld. String was: %@.", (long)opChoice, tidyInput);
            
            printf("Continue? y/n: ");
            fgets(inputChars, 255, stdin);

            if (strncmp("n", inputChars, 1) == 0) {
                doContinue = false;
            }
        }
    }
    return 0;
}
