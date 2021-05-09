//
//  CollectionViewCell.swift
//  CompositionalLayout
//
//  Created by waheedCodes on 09/05/2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    // MARK: - Static Properties
    
    static let identifier = "CollectionViewCell"
    
    // MARK: - Properties
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        
        let images: [UIImage] = [
            UIImage(named: "image-1"),
            UIImage(named: "image-2"),
            UIImage(named: "image-3"),
            UIImage(named: "image-4"),
            UIImage(named: "image-5"),
            UIImage(named: "image-6"),
        ].compactMap({ $0 })
        imageView.image = images.randomElement()
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("class has not been implemented")
    }
    
    // MARK: - Life cycle methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
}
