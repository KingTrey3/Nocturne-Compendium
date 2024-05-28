//
//  ViewModel.swift
//  NocturneCompendium
//
//  Created by Trey Dixon on 3/13/24.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var demonList = [Demon]()
    @Published var searchText = ""
    
    var filteredDemon: [Demon]{
        return searchText == "" ? demonList : demonList.filter {
            $0.name.contains(searchText.lowercased()) }
        }
    
    init() {
        let abaddon = Demon(name: "Abaddon", image: "https://static.wikia.nocookie.net/megamitensei/images/a/a1/Abaddon2.jpg/revision/latest?cb=20080708170232", race: "Tyrant", lvl: 69)
        
        let adama = Demon(name: "Adama", image: "https://img.game8.co/3365095/5e621aa11fbaf269c56bae0f8b3e9407.png/show", race: "Magatama", lvl: 11)
        let aeros = Demon(name: "Aeros", image: "https://static.wikia.nocookie.net/megamitensei/images/4/44/Aeros2.jpg/revision/latest?cb=20080806033020", race: "Element", lvl: 11)
        
        let albion = Demon(name: "Albion", image: "https://static.wikia.nocookie.net/megamitensei/images/5/5c/Kazuma_Kaneko_Works_Volume_III_Scan_14_Albion.jpg/revision/latest?cb=20211204111752", race: "Entity", lvl: 64)
        
        let alciel = Demon(name: "Alciel", image: "https://static.wikia.nocookie.net/megamitensei/images/c/cc/Aciel.jpg/revision/latest?cb=20190501013550", race: "Tyrant", lvl: 77)
        
        let amaterasu = Demon(name: "Amaterasu", image: "https://static.wikia.nocookie.net/megamitensei/images/8/8b/Amateratsu.jpg/revision/latest/scale-to-width-down/1200?cb=20080806033633", race: "Diety", lvl: 56)
        
        let ameNoUzume = Demon(name: "Ame-no-Uzume", image: "https://static.wikia.nocookie.net/megamitensei/images/2/23/Ame_no_Uzume_%28Dx2_Art%29.png/revision/latest?cb=20210709134309", race: "Megami", lvl: 18)
        
        let anathema = Demon(name: "Anathema", image: "https://img.game8.co/3365095/5e621aa11fbaf269c56bae0f8b3e9407.png/show", race: "Magatama", lvl: 28)
        
        let angel = Demon(name: "Angel", image: "https://static.wikia.nocookie.net/megamitensei/images/b/b1/Angel_%28Dx2_Art%29.png/revision/latest?cb=20210805071140", race: "Divine", lvl: 11)
        
        let blackFrost = Demon(name: "Black Frost", image: "https://static.wikia.nocookie.net/megamitensei/images/d/da/00499_Black_Frost.png/revision/latest?cb=20220822115856", race: "Night", lvl: 66)
        
        let jackFrost = Demon(name: "Jack Frost", image: "https://www.sludge.town/smt3/assets/010-jack_frost.jpg", race: "Fairy", lvl: 7)
        
        let naga = Demon(name: "Naga", image: "https://static.wikia.nocookie.net/megamitensei/images/3/35/Naga.png/revision/latest?cb=20190329184245", race: "Snake", lvl: 28)
        
        let odin = Demon(name: "odin", image: "https://static.wikia.nocookie.net/megamitensei/images/3/38/00004_Odin.png/revision/latest?cb=20220525023922", race: "Deity", lvl: 65)
        
        let raidou = Demon(name: "Raidou Kuzunoha XIV", image: "https://static.wikia.nocookie.net/megamitensei/images/d/d7/Raidou_Kuzunoha_render.png/revision/latest?cb=20210911214123", race: "Summoner", lvl: 80)
        
        let thor = Demon(name: "thor", image: "https://static.wikia.nocookie.net/megamitensei/images/8/88/Thor_%28SMT_PSX_Art%29.png/revision/latest?cb=20210912212604", race: "Kishin", lvl: 76)
        
        
        self.demonList = [abaddon, adama, aeros,albion, alciel, amaterasu, ameNoUzume, anathema, angel, blackFrost, jackFrost, naga, odin, raidou, thor]
    }
    
    func getDemonIndex(demon: Demon) -> Int {
        if let index = self.demonList.firstIndex(of: demon) {
            return index + 1
        }
        return 0
    }
    
    
    }
    
