//
//  MyCollectionCell2.swift
//  MultipleCollectionViewScroll
//
//  Created by Vikram Kunwar on 07/04/23.
//

import UIKit

class MyCollectionCell2: UICollectionViewCell {
    
    let label2: UILabel = {
            let v = UILabel()
            return v
        }()
    
    
    let category2 : UIView = {
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


            category2.layer.cornerRadius = 13

            category2.layer.borderWidth = 1.7



            label2.frame.size.width = label2.intrinsicContentSize.width + 10
             category2.frame.size.height = label2.intrinsicContentSize.height + 25
            label2.textAlignment = .center
            category2.layer.shadowOffset = CGSize(width: 0.2, height: 0.2)

            category2.layer.borderColor = UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0 ).cgColor


            category2.frame = CGRect(x: 0, y: 0, width: 22, height: 18)


            category2.backgroundColor = .white
            label2.textColor = UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0 )

            label2.textAlignment = .center

            label2.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
                    [category2, label2].forEach { v in
                        v.translatesAutoresizingMaskIntoConstraints = false
                    }
            category2.addSubview(label2)
                    contentView.addSubview(category2)




                    let g = contentView.layoutMarginsGuide

                    NSLayoutConstraint.activate([




                        category2.topAnchor.constraint(equalTo: g.topAnchor),
                        category2.leadingAnchor.constraint(equalTo: g.leadingAnchor),
                        category2.trailingAnchor.constraint(equalTo: g.trailingAnchor),
                        category2.bottomAnchor.constraint(equalTo: g.bottomAnchor),
                        category2.heightAnchor.constraint(equalTo: g.heightAnchor),

                        label2.centerYAnchor.constraint(equalTo: category2.centerYAnchor,constant: 0),
                        label2.leadingAnchor.constraint(equalTo: category2.leadingAnchor, constant: 15),
                        label2.trailingAnchor.constraint(equalTo: category2.trailingAnchor, constant: -15),
                        label2.heightAnchor.constraint(equalTo: category2.heightAnchor,constant: -15),

                    ])

                        }
    override var isSelected: Bool {
        didSet {
            self.label2.textColor = isSelected ? .white : UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0 )
            self.category2.backgroundColor = isSelected ? UIColor(red: 60/255, green: 141/255, blue:181/255, alpha: 1.0) : .white
            

    }
        
        

}
    
}
