class Weapon: Item {
    var damage: Int
    var weaponType: WeaponType
    
    init(name: String, weight: Int, damage: Int, weaponType: WeaponType) {
        switch weaponType{
        case WeaponType.Axe:
            self.weaponType = WeaponType.Axe
            break
        case WeaponType.Sword:
            self.weaponType = WeaponType.Sword
            break
        case WeaponType.Bow:
            self.weaponType = WeaponType.Bow
            break
        }
        self.damage = damage
        super.init(name: name, weight: weight)
    }
}