//
//  MyCollectionCell3.swift
//  MultipleCollectionViewScroll
//
//  Created by Vikram Kunwar on 07/04/23.
//

import UIKit

class MyCollectionCell3: UICollectionViewCell {
    
    let label3: UILabel = {
            let v = UILabel()
            return v
        }()
    
    
    let category3 : UIView = {
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


            category3.layer.cornerRadius = 13

            category3.layer.borderWidth = 1.7



            label3.frame.size.width = label3.intrinsicContentSize.width + 10
             category3.frame.size.height = label3.intrinsicContentSize.height + 25
            label3.textAlignment = .center
            category3.layer.shadowOffset = CGSize(width: 0.2, height: 0.2)

            category3.layer.borderColor = UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0 ).cgColor


            category3.frame = CGRect(x: 0, y: 0, width: 22, height: 18)


            category3.backgroundColor = .white
            label3.textColor = UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0 )

            label3.textAlignment = .center

            label3.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
                    [category3, label3].forEach { v in
                        v.translatesAutoresizingMaskIntoConstraints = false
                    }
            category3.addSubview(label3)
                    contentView.addSubview(category3)




                    let g = contentView.layoutMarginsGuide

                    NSLayoutConstraint.activate([




                        category3.topAnchor.constraint(equalTo: g.topAnchor),
                        category3.leadingAnchor.constraint(equalTo: g.leadingAnchor),
                        category3.trailingAnchor.constraint(equalTo: g.trailingAnchor),
                        category3.bottomAnchor.constraint(equalTo: g.bottomAnchor),
                        category3.heightAnchor.constraint(equalTo: g.heightAnchor),

                        label3.centerYAnchor.constraint(equalTo: category3.centerYAnchor,constant: 0),
                        label3.leadingAnchor.constraint(equalTo: category3.leadingAnchor, constant: 15),
                        label3.trailingAnchor.constraint(equalTo: category3.trailingAnchor, constant: -15),
                        label3.heightAnchor.constraint(equalTo: category3.heightAnchor,constant: -15),

                    ])

                        }
    override var isSelected: Bool {
        didSet {
            self.label3.textColor = isSelected ? .white : UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0 )
            self.category3.backgroundColor = isSelected ? UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0) : .white

    }

}
    
}
