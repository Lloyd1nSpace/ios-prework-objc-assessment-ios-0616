//
//  AppDelegate.m
//  ios-prework-objc-assessment
//
//  Created by Joel Bell on 5/23/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Declare a variable of type NSArray and assign it the return value from METHOD 1
    NSArray *numbers = [self generateArrayOfNumbers];
    
    // Declare a variable of type NSArray and assign it the return value from METHOD 2
    NSArray *letters = [self generateArrayOfLetters];
    
    // Declare a variable of type NSDictionary and assign it the return value of METHOD 3
    NSDictionary *dictionary = [self generateNumbersAndLettersDictionaryWithNumbers:numbers letters:letters];
    
    // Use NSLog to print the contents of your dictionary to the console
    NSLog(@"dictionary : %@",dictionary);
    
    return YES;
}

/*
 
 METHOD 1: generateArrayOfNumbers
 
 Write a method to generate and return an array with the numbers 1 to 26
 
 */

// write method here

-(NSArray *)generateArrayOfNumbers {
    
    NSMutableArray *numbers = [NSMutableArray new];
    for (NSInteger i = 1; i <= 26; i++) {
        [numbers addObject:[NSNumber numberWithInteger:i]];
    }
    
    return numbers;
    
}

/*
 
 METHOD 2: generateArrayOfLetters
 
 Write a method to generate and return an array with the letters a to z
 
 */

// write method here

-(NSArray *)generateArrayOfLetters {
    
    NSMutableArray *letters = [NSMutableArray new];
    for (char a = 'a'; a <= 'z'; a++)
    {
        [letters addObject:[NSString stringWithFormat:@"%c", a]];
    }
    
    return letters;
}


/*
 
 METHOD 3: generateNumbersAndLettersDictionaryWithNumbers:letters:
 
 Write a method that returns a dictionary. The method should have 
 two array parameters. Your numbers array should be passed in as 
 the first argument and your letters array should be passed in as 
 the second argument. Iterate over both arrays to create a 
 dictionary where the key is the number and the value is the letter.
 
*/

// write method here

-(NSDictionary *)generateNumbersAndLettersDictionaryWithNumbers:(NSArray *)numbers letters:(NSArray *)letters {
    
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    for (NSInteger i = 0; i < numbers.count; i++) {
        
        dictionary[numbers[i]] = letters[i];
        
    }
    
    return dictionary;
    
}


@end
