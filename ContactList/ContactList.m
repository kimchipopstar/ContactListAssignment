//
//  ContactList.m
//  ContactList
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{

    [_contactList addObject:newContact];
    
}

-(void)printList{
    

    
    for (int i=0; i < [_contactList count]; i++) {
        
        Contact* contact = [_contactList objectAtIndex:i];
        
        NSLog(@"%i:<%@>(%@)",i,contact.name,contact.email);
        
    }
    
}

@end
