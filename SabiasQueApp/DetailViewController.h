//
//  DetailViewController.h
//  SabiasQueApp
//
//  Created by Benjamin Rojo on 09/09/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
@property (nonatomic, copy) NSString *categoryName;
@property (weak, nonatomic) IBOutlet UILabel *factLabel;
- (IBAction)otroDatoTapped:(id)sender;
@end

NS_ASSUME_NONNULL_END
