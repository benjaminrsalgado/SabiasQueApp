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
        @"Dua Lipa popularizó el dance-pop con 'Future Nostalgia'.",
        @"Taylor Swift anunció 'The Eras Tour' en 2022.",
        @"Ariana Grande comenzó en Broadway antes de su carrera pop.",
        @"BTS llevó el K-Pop a la cima del Billboard Hot 100.",
        @"Lady Gaga lanzó 'Born This Way' en 2011.",
        @"Shakira cantó en el Super Bowl junto a Jennifer Lopez en 2020.",
        @"Adele ganó un Oscar por 'Skyfall' en 2013.",
        @"Coldplay formó parte de la ceremonia del Super Bowl 50.",
        @"Rihanna regresó a la música en 2022 con 'Lift Me Up'.",
        @"Bruno Mars ganó 6 Grammys en una sola noche en 2018.",
        @"Katy Perry tiene más de 100 millones de seguidores en Twitter.",
        @"Britney Spears debutó con '...Baby One More Time' en 1998.",
        @"Madonna es conocida como la 'Reina del Pop'.",
        @"Michael Jackson popularizó el 'Moonwalk' en 1983."
    ];
}

static NSArray<NSString *> *FactsLibros(void) {
    return @[
        @"‘Don Quijote’ se publicó en dos partes: 1605 y 1615.",
        @"Gabriel García Márquez ganó el Nobel en 1982.",
        @"‘1984’ de Orwell fue publicado en 1949.",
        @"‘Cien años de soledad’ es de 1967.",
        @"‘El Principito’ es uno de los libros más traducidos del mundo.",
        @"J.K. Rowling escribió gran parte de 'Harry Potter' en cafés.",
        @"‘Fahrenheit 451’ critica la censura y la superficialidad mediática.",
        @"J.R.R. Tolkien escribió 'El Señor de los Anillos' en 12 años.",
        @"‘Orgullo y Prejuicio’ de Jane Austen se publicó en 1813.",
        @"Stephen King ha escrito más de 60 novelas.",
        @"‘La Odisea’ fue escrita por Homero hace unos 2,800 años.",
        @"‘El Alquimista’ de Paulo Coelho es uno de los libros más traducidos.",
        @"Agatha Christie es la autora más vendida de la historia.",
        @"‘Moby Dick’ fue publicada por primera vez en 1851.",
        @"George R.R. Martin aún no termina la saga de 'Canción de Hielo y Fuego'.",
        @"‘Los Juegos del Hambre’ fue publicada en 2008.",
        @"‘El Código Da Vinci’ de Dan Brown vendió más de 80 millones de copias."
    ];
}

static NSArray<NSString *> *FactsNintendoSwitch(void) {
    return @[
        @"La Nintendo Switch salió en 2017.",
        @"‘The Legend of Zelda: Breath of the Wild’ fue título de lanzamiento.",
        @"Los Joy-Con permiten juego local con dos mandos pequeños.",
        @"La eShop ofrece descargas digitales y demos.",
        @"‘Animal Crossing: New Horizons’ salió en 2020.",
        @"Switch tiene modo portátil y modo dock.",
        @"‘Mario Kart 8 Deluxe’ es de los más vendidos en Switch.",
        @"‘Super Smash Bros. Ultimate’ salió en 2018.",
        @"‘Pokémon Sword and Shield’ fueron los primeros RPGs principales en Switch.",
        @"‘Splatoon 3’ se lanzó en 2022.",
        @"Nintendo lanzó la Switch OLED en 2021.",
        @"‘Metroid Dread’ salió en octubre de 2021.",
        @"‘Super Mario Odyssey’ fue uno de los primeros éxitos de Switch.",
        @"Switch ha vendido más de 140 millones de unidades en todo el mundo.",
        @"‘Luigi’s Mansion 3’ salió en 2019.",
        @"Switch Lite salió en 2019 como versión portátil.",
        @"Nintendo celebró el 35 aniversario de Mario en 2020 con varios lanzamientos."
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
