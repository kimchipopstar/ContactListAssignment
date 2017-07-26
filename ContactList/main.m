//
//  main.m
//  ContactList
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL play = YES;
        InputCollector *inputCollector = [[InputCollector alloc]init];
        ContactList *myContactList = [[ContactList alloc]init];

        while (play) {
        
        
        NSString *userInput = [inputCollector inputForPrompt:@"What would you like to do next?\n new - Create a new contact\n list - List all contact\n quit - Exit Application >_"];
            if ([userInput isEqualToString:@"quit"]){
                play = NO;
                NSLog(@"Thank you for playing");
                break;
            } else if ([userInput isEqualToString:@"new"]){
                NSString *nameInput = [inputCollector inputForPrompt:@"Firstname LastName"];
                NSString *emailInput = [inputCollector inputForPrompt:@"E-mail = Ex.123@email.com"];
                Contact *contact = [[Contact alloc]init];
                contact.name = nameInput;
                contact.email = emailInput;
                [myContactList addContact:contact];
                NSLog(@"new lline");
                
            } else if ([userInput isEqualToString:@"list"]){
            
                [myContactList printList];
                
            }
        }
        
    }
    return 0;
}
