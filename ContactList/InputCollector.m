//
//  InputCollector.m
//  ContactList
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{

    NSLog(@"%@", promptString);
    
    //collect user input
    
    char inputChars[255];
    
    fgets(inputChars, 255, stdin);
    
    NSString *objString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    
    NSString *parseUserInput = [objString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return parseUserInput;/* user input */
}

@end
