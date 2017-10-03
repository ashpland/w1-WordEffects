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
            
            //NSLog(@"Length: %lu", (unsigned long)inputString.length);
            
            //NSString *tidyInput = [[NSString alloc] substringToIndex:(inputString.length-1)];
            
            
            
            // ask for operation
            printf("Choose an operation\n1) Canadianize\n2) Uppercase\nOperation: ");
            fgets(inputChars, 255, stdin);
            NSString *operationNumber = [NSString stringWithUTF8String:inputChars];

            NSString *tidyOpNum = [operationNumber
                                   substringToIndex:1];
            
            
            //print NSString object
            NSLog(@"Operation was: %@. String was: %@.", tidyOpNum, inputString);
            
            printf("Continue? y/n: ");
            fgets(inputChars, 255, stdin);

            if (strncmp("n", inputChars, 1) == 0) {
                doContinue = false;
            }
        }
    }
    return 0;
}
