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
    
    NSArray *numbersArray = @[];
    NSArray *lettersArray = @[];
    NSDictionary *alphabetDictionary = [[NSDictionary alloc] init];
    
    numbersArray = [self generateArrayOfNumbers];
    lettersArray = [self generateArrayOfLetters];
    alphabetDictionary = [self generateNumbersAndLettersDictionaryWithNumbers:numbersArray letters:lettersArray];
    
    numbersArray = [alphabetDictionary allKeys];
    
    NSMutableArray *mutableLettersArray = [lettersArray mutableCopy];
    [mutableLettersArray removeAllObjects];
    [mutableLettersArray addObject:[alphabetDictionary allValues]];
    // Originally I wrote mutableLettersArray = [alphabetDictionary allValues]; however this only works with NSArray & not mutables. Instead, I just addObject:
    
    
    NSLog(@"%@", alphabetDictionary);
    //    NSLog(@"%@\n%@", numbersArray, mutableLettersArray);
    
    return YES;
    // Everything else in the above method was pretty straightforward & asked from the lab itself.
    
}

- (NSArray *)generateArrayOfNumbers {
    
    NSMutableArray *numbersArray = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 1; i < 27; i++) {
        
        [numbersArray addObject:@(i)];
        // Note the @( ) around 'i', it's necessary to convert the NSUInteger to a NSNumber in order to be eligible to be added to the array.
        
        // NSLog(@"%@", numbersArray);
        
    }
    
    return numbersArray;
    
}

- (NSArray *)generateArrayOfLetters {
    
    NSMutableArray *lettersArray = [[NSMutableArray alloc] init];
    
    char letter = 'a';
    // There are multiple ways to achieve this, I found it simple for me to define char letter outside of the loop & create a new char inside the loop to represent letter + 1.
    
    for (NSUInteger i = 0; i < 26; i++) {
        
        char letters = letter + i;
        
        [lettersArray addObject:[NSString stringWithFormat:@"%c", letters]];
        // Initially I created a new NSString & defined it as [NSString stringWithFormat:@"%c", letters]; however once I started seeing the letters print to the console, I wanted to reduce the lines & make the code more legible.
        
    }
    
    //  NSLog(@"%@", lettersArray);
    
    return lettersArray;
    
}

- (NSDictionary *)generateNumbersAndLettersDictionaryWithNumbers:(NSArray *)numbersArray letters:(NSArray *)lettersArray {
    
    NSMutableDictionary *alphabetDictionary = [[NSMutableDictionary alloc] init];
    // Before implementing the loop I tried to subscript like this alphabetDictionary[numbersArray] = lettersArray; however that doesn't associate each letter with each number. Instead it just puts the entire array as 1 key and vice versa.
    
    
    for (NSUInteger i = 0; i < [numbersArray count]; i++) {
        // I iterated over the [alphabetDictionary count] but didn't get the result I wanted to (I'm guessing because the dictionary is currently empty), however I chose to iterate over the numbersArray since the numbers were set to be the Key.
        
        alphabetDictionary[numbersArray[i]] = lettersArray[i];
        // Key here is to utilize the index to get each key number to match up with the letter value.
        
    }
    
    return alphabetDictionary;
    
}

@end
