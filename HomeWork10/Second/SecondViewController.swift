//
//  SecondViewController.swift
//  HomeWork10
//
//  Created by Алексей Полин on 23.09.2021.
//

import UIKit

struct Model {
    var pic: UIImage?
    var nameMenu = ""
    var addition = ""
}

struct Section {
    var nameSection = ""
    var model: [Model] = []
}

class SectionMenu {
    static func createMenu() -> [Section] {
        return [
            Section(nameSection: "Сетевые", model: [Model(pic: UIImage(named: "1-1"), nameMenu: "Авиарежим", addition: "-"), Model(pic: UIImage(named: "1-2"), nameMenu: "Wi-Fi", addition: "Anvics-YOTA"), Model(pic: UIImage(named: "1-3"), nameMenu: "Bluetooth", addition: "Вкл."), Model(pic: UIImage(named: "1-4"), nameMenu: "Сотовая связь", addition: ""), Model(pic: UIImage(named: "1-5"), nameMenu: "Режим модема", addition: "")]),
            Section(nameSection: "Общие", model: [Model(pic: UIImage(named: "1-6"), nameMenu: "Уведомления", addition: ""), Model(pic: UIImage(named: "1-7"), nameMenu: "Звуки, сигналы", addition: ""), Model(pic: UIImage(named: "1-8"), nameMenu: "Не беспокоить", addition: ""), Model(pic: UIImage(named: "1-9"), nameMenu: "Экранное время", addition: "")]),
            Section(nameSection: "Дополнительно", model: [Model(pic: UIImage(named: "1-10"), nameMenu: "Основные", addition: ""), Model(pic: UIImage(named: "1-11"), nameMenu: "Экран", addition: ""), Model(pic: UIImage(named: "1-12"), nameMenu: "Обои", addition: "")])
        ]
    }
}

class SecondViewController: UIViewController {
    var menu = SectionMenu.createMenu()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu[section].model.count
    }
    
    //    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        return menu[section].nameSection
    //    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Header") as! SecondTableViewCell
        
        let sectionName = menu[section]
        cell.additionalL.text = sectionName.nameSection
        cell.backgroundColor = UIColor.lightGray
        cell.additionalL.textColor = UIColor.white
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SecondTableViewCell
        
        let firstParam = menu[indexPath.section].model[indexPath.row].nameMenu
        let secondParam = menu[indexPath.section].model[indexPath.row].pic
        let thirdParam = menu[indexPath.section].model[indexPath.row].addition
        //        let firstParam = menu[indexPath.section].nameMenu[indexPath.row]
        //        let secondParam = menu[indexPath.section].pic[indexPath.row]
        //        let thirdParam = menu[indexPath.section].addition[indexPath.row]
        
        cell.nameCellL.text = firstParam
        cell.icoI.image = secondParam
        cell.additionalL.text = thirdParam
        cell.additionalL.textColor = UIColor.systemGray
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

