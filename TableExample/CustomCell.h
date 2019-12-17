//
//  CustomCell.h
//  TableExample
//
//  Created by Student on 17.12.2019.
//  Copyright © 2019 Student. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomCell : UITableViewCell
-(void) setName:(NSString *) name description: (NSString *) descr select: (BOOL) b;
@end

NS_ASSUME_NONNULL_END
