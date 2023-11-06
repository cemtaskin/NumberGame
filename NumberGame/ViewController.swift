//
//  ViewController.swift
//  NumberGame
//
//  Created by Cem TAŞKIN on 6.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var  lblKalanHak : UILabel?
    @IBOutlet weak var txtGirilenSayi : UITextField?
    var kalanHak : Int = 20
    var sayi : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        sayiUret()
        guncelle()
    }
    func sayiUret(){
        sayi = 1 + Int(arc4random_uniform(100))
        print("Rastgele sayı : \(sayi)")
    }
    
    @IBAction func tahminEt (){
        
        
        var girilenSayi = Int((txtGirilenSayi?.text)!)
        print(girilenSayi!)
        
        if (girilenSayi==sayi){
            print("KAZANDIN")
        }else if (girilenSayi!<sayi){
            print("DAHA BÜYÜK SAYI")
        }else{
            print("DAHA KÜÇÜK SAYI")
        }
        
        if (kalanHak==0){
            print("Kalan hak değeri sıfırdır...")
            return
        }
        
        kalanHak=kalanHak-1
        guncelle()
    }
    
    func guncelle (){
        lblKalanHak?.text = "\(kalanHak)"
    }

    
    @IBAction func oyunaYenidenBasla(){
        sayiUret()
        kalanHak=20
        guncelle()
    }

}

