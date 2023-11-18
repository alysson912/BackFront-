//
//  TableViewCell.swift
//  punchLoudness
//
//  Created by Alysson on 04/09/23.
//

import UIKit

class PackImageExpandDetailTableViewCell: UITableViewCell {
    
    
    static let identifier: String = String( describing: PackImageExpandDetailTableViewCell.self)
    
    private lazy var screen: PackImageExpandDetailTableViewCellScreen = {
        let view = PackImageExpandDetailTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        configScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen(){
        screen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
    
    //MARK: Criar setupDetailCell
    
    public func setupCellPackDetail( image: String){
        //screen.titleLabel.text = title
        screen.productDetailImageView.image = UIImage(named: image )
        }
    
//    public func setupCell(id: Int, title: String, description: String){
//        screen.idLabel.text = "\(id)"
//        screen.titleLabel.text = title
//        screen.descriptionLabel.text = description
//    }
}
