package com.eCommerce.ecommerce.service;

import com.eCommerce.ecommerce.model.User;
import com.eCommerce.ecommerce.model.WishList;

import java.util.Optional;

public interface WishListService {

    void saveWishList(WishList wishList);

    WishList getByUser(User user);

    Optional<WishList> getByWishListId(Long wishListId);
}
