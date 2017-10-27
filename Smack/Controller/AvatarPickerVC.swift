//
//  AvatarPickerVC.swift
//  Smack
//
//  Created by Scott Kilbourn on 10/25/17.
//  Copyright © 2017 Scott Kilbourn. All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    var avatarType: AvatarType = .dark
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            cell.configureCell(index: indexPath.item, type: avatarType)
            return cell as AvatarCell
        }
        else {
            return AvatarCell()
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if avatarType == .dark {
            UserDataService.instance.setAvatarName(avatarName: "dark\(indexPath.item)")
        }
        else {
            UserDataService.instance.setAvatarName(avatarName: "light\(indexPath.item)")
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var numberOfColumns: CGFloat = 3
        
        if UIScreen.main.bounds.width > 320 {
            numberOfColumns = 4
        }
        
        let spaceBetweenCells: CGFloat = 10.0
        let padding: CGFloat = 40.0
        let cellDimension = ((collectionView.bounds.width - padding) - (numberOfColumns - 1) * spaceBetweenCells) / numberOfColumns
        
        return CGSize(width: cellDimension, height: cellDimension)
        
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func segmentControlChanged(_ sender: UISegmentedControl) {
        avatarType = sender.selectedSegmentIndex == 0 ? .dark : .light
        collectionView.reloadData()
    }
    
}
