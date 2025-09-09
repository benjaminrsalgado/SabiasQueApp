//
//  DetailViewController.m
//  SabiasQueApp
//
//  Created by Benjamin Rojo on 09/09/25.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

static NSArray<NSString *> *FactsMusicaPop(void) {
    return @[
        @"Taylor Swift lanzó ‘1989’ en 2014.",
        @"Billie Eilish ganó el Grammy a Álbum del Año con 18 años.",
        @"Ed Sheeran compuso 'Shape of You' en 2017.",
        @"Dua Lipa popularizó el dance-pop con 'Future Nostalgia'."
    ];
}

static NSArray<NSString *> *FactsLibros(void) {
    return @[
        @"‘Don Quijote’ se publicó en dos partes: 1605 y 1615.",
        @"Gabriel García Márquez ganó el Nobel en 1982.",
        @"‘1984’ de Orwell fue publicado en 1949.",
        @"‘Cien años de soledad’ es de 1967."
    ];
}

static NSArray<NSString *> *FactsNintendoSwitch(void) {
    return @[
        @"La Nintendo Switch salió en 2017.",
        @"‘The Legend of Zelda: Breath of the Wild’ fue título de lanzamiento.",
        @"Los Joy-Con permiten juego local con dos mandos pequeños.",
        @"La eShop ofrece descargas digitales y demos."
    ];
}


static NSString *RandomFactForCategory(NSString *categoryName) {
    NSArray<NSString *> *source = nil;
    if ([categoryName isEqualToString:@"Música Pop"]) {
        source = FactsMusicaPop();
    } else if ([categoryName isEqualToString:@"Libros"]) {
        source = FactsLibros();
    } else if ([categoryName isEqualToString:@"Nintendo Switch"]) {
        source = FactsNintendoSwitch();
    } else {
        source = @[@"Categoría no reconocida."];
    }

    if (source.count == 0) { return @"No hay datos disponibles."; }
    NSUInteger idx = arc4random_uniform((u_int32_t)source.count);
    return source[idx];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.categoryName ?: @"Detalle";
    self.factLabel.text = RandomFactForCategory(self.categoryName);
}

- (IBAction)otroDatoTapped:(id)sender {
    self.factLabel.text = RandomFactForCategory(self.categoryName);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
