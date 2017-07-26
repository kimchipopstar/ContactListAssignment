//
//  ContactList.h
//  ContactList
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *contactList;

-(void)addContact:(Contact *)newContact;
-(void)printList;

@end
