//
//  MyCollectionCell1.swift
//  MultipleCollectionViewScroll
//
//  Created by Vikram Kunwar on 07/04/23.
//

import UIKit

class MyCollectionCell1: UICollectionViewCell {
    
    let label: UILabel = {
            let v = UILabel()
            return v
        }()
    
    
    let category : UIView = {
            let v = UIView()
            return v
        }()

        override init(frame: CGRect) {
            super.init(frame: frame)
            commonInit()
        }
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            commonInit()
        }
        func commonInit() -> Void {


            category.layer.cornerRadius = 13

            category.layer.borderWidth = 1.7



            label.frame.size.width = label.intrinsicContentSize.width + 10
             category.frame.size.height = label.intrinsicContentSize.height + 25
            label.textAlignment = .center
            category.layer.shadowOffset = CGSize(width: 0.2, height: 0.2)

            category.layer.borderColor = UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0 ).cgColor


            category.frame = CGRect(x: 0, y: 0, width: 22, height: 18)


            category.backgroundColor = .white
            label.textColor = UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0 )

            label.textAlignment = .center

            label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
                    [category, label].forEach { v in
                        v.translatesAutoresizingMaskIntoConstraints = false
                    }
            category.addSubview(label)
                    contentView.addSubview(category)




                    let g = contentView.layoutMarginsGuide

                    NSLayoutConstraint.activate([




                        category.topAnchor.constraint(equalTo: g.topAnchor),
                        category.leadingAnchor.constraint(equalTo: g.leadingAnchor),
                        category.trailingAnchor.constraint(equalTo: g.trailingAnchor),
                        category.bottomAnchor.constraint(equalTo: g.bottomAnchor),
                        category.heightAnchor.constraint(equalTo: g.heightAnchor),

                        label.centerYAnchor.constraint(equalTo: category.centerYAnchor,constant: 0),
                        label.leadingAnchor.constraint(equalTo: category.leadingAnchor, constant: 15),
                        label.trailingAnchor.constraint(equalTo: category.trailingAnchor, constant: -15),
                        label.heightAnchor.constraint(equalTo: category.heightAnchor,constant: -15),

                    ])

                        }
    override var isSelected: Bool {
        didSet {
            self.label.textColor = isSelected ? .white : UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0 )
            self.category.backgroundColor = isSelected ? UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0) : .white

    }

}
    
}
