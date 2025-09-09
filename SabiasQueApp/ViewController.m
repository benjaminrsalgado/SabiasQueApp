//
//  ViewController.m
//  SabiasQueApp
//
//  Created by Benjamin Rojo on 09/09/25.
//

#import "ViewController.h"
#import "DetailViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)musicaPopTapped:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetailViewController *detailVC =
        [storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    detailVC.categoryName = @"Música Pop"; // <-- enviamos la categoría
    [self.navigationController pushViewController:detailVC animated:YES];
}
- (IBAction)librosTapped:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetailViewController *detailVC =
        [storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    detailVC.categoryName = @"Libros";
    [self.navigationController pushViewController:detailVC animated:YES];
}
- (IBAction)nintendoTapped:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetailViewController *detailVC =
        [storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    detailVC.categoryName = @"Nintendo Switch";
    [self.navigationController pushViewController:detailVC animated:YES];
}

@end
