package com.eCommerce.ecommerce.model;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class User {

    @Id
    @Column(name = "UserId")
    @GeneratedValue(generator = "incrementator")
    @GenericGenerator(name = "incrementator", strategy = "increment")
    private Long userId;

    @Column(name = "FullName")
    private String fullName;

    @Column(name = "ContactNumber")
    private String contactNumber;

    @Column(name = "Email")
    private String email;

    @Column(name = "Password")
    private String password;

    @Column(name = "DOB")
    private String dob;

    @Column(name = "Gender")
    private String gender;

    @Column(name = "Role")
    private String role;

    public User(String fullName, String contactNumber, String email, String password) {
        this.fullName = fullName;
        this.contactNumber = contactNumber;
        this.email = email;
        this.password = password;
    }

    // have many to many billing addresses

    //@ManyToOne(fetch = FetchType.LAZY)
    //@JoinColumn(name = "team_id", nullable = false)
    //private Team team;

    public User() {
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}