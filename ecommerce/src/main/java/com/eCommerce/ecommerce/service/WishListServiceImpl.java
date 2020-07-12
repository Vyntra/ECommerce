package com.eCommerce.ecommerce.service;

import com.eCommerce.ecommerce.model.User;
import com.eCommerce.ecommerce.model.WishList;
import com.eCommerce.ecommerce.repository.WishListRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

public class WishListServiceImpl implements WishListService {

    @Autowired
    private WishListRepository wishListRepository;

    @Override
    public void saveWishList(WishList wishList) {
        wishListRepository.save(wishList);
    }

    @Override
    public WishList getByUser(User user) {
        return wishListRepository.findByUser(user);
    }

    @Override
    public Optional<WishList> getByWishListId(Long wishListId) {
        return wishListRepository.findById(wishListId);
    }
}
