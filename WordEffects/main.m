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
            printf("Choose an operation\n1) Uppercase\n2) Lowercase\n3) Numberize\n4) Canadianize\n5) Respond\n6) De-Space-It\nOperation: ");
            fgets(inputChars, 255, stdin);
            NSString *operationNumber = [NSString stringWithUTF8String:inputChars];
            NSInteger opChoice = [operationNumber intValue];

            switch (opChoice) {
               
                // Uppercase
                case 1:{
                    NSString *theOutput = tidyInput.uppercaseString;
                    NSLog(@"%@", theOutput);
                    break;
                }
                    
                case 2:
                    NSLog(@"You chose Lowercase!");
                    break;
                    
                case 3:
                    NSLog(@"You chose Numberize!");
                    break;
                    
                // Canadianize
                case 4:{
                    NSString *theOutput = [tidyInput stringByAppendingString:@", eh?"];
                    NSLog(@"%@", theOutput);
                    break;
                }
                case 5:
                    NSLog(@"You chose Respond!");
                    break;
                    
                case 6:
                    NSLog(@"You chose De-Space-It!");
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
