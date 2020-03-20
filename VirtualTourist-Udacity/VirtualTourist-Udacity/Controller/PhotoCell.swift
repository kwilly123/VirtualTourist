//
//  PhotoCell.swift
//  VirtualTourist-Udacity
//
//  Created by Kyle Wilson on 2020-03-18.
//  Copyright © 2020 Xcode Tips. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    
    @IBOutlet weak var placeImage: UIImageView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func reloadCellWithImage(imageFetched:UIImage){
        
        loadingIndicator.stopAnimating()
        loadingIndicator.isHidden = true
        placeImage.contentMode = .scaleToFill
        placeImage.image = imageFetched
    }
    
    func reloadCellWithPlaceHolder() {
        
        loadingIndicator.isHidden = false
        loadingIndicator.startAnimating()
        placeImage.contentMode = .scaleToFill
        placeImage.image = UIImage(named: "placeholder")

    }
    
}
