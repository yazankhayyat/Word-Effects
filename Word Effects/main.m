//
//  main.m
//  Word Effects
//
//  Created by Yazan Khayyat on 2015-08-04.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (true) {
            // 255 unit long array of characters
            char inputChars[255];
            char number;
            
            
            NSLog(@"Please choose a number between 1 and 6");
            fgets(&number, 255, stdin);
            
            NSLog(@"Your input was %c", number);
            
            
            NSLog(@"Input a string: ");
            
            fgets(inputChars, 255, stdin);
            
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            
            if ([inputString hasSuffix:@"\n"]) {
                NSInteger length = [inputString length];
                inputString = [inputString substringToIndex:length - 1];
            }
            
            NSLog(@"Input was: %@", inputString);
            
            
            if (number == '1') {
                inputString = [inputString uppercaseString];
                NSLog(@"%@", inputString);
            }
            
            if (number == '2') {
                inputString = [inputString lowercaseString];
                NSLog(@"%@", inputString);
            }
            
            if (number == '3') {
                
                NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
                [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
                NSNumber *inputNumber;
                inputNumber = [formatter numberFromString:inputString];
                
                if (inputNumber == nil) {
                    NSLog(@"I could not convert the number");
                }
                else {
                    NSLog(@"%@", inputNumber);
                }
                
            }
            if (number == '4') {
                
                NSLog(@"%@ eh?", inputString);
            }
            
            if (number == '5') {
               
                if ([inputString hasSuffix:@"?"]) {
                    NSLog(@"I dont know");
                    
                }
            }
            
            if (number == '6') {
                NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
            }
        }
        
        
        
    }
    
    return 0;
}

