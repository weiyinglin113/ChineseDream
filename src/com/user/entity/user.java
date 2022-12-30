package com.user.entity;
    public class user {
        private String User_id;
        private String User_name;
        private String User_password ;
        private String User_sex ;
        private String User_phone;
        public user(String user_id, String user_name, String user_password, String user_sex, String user_phone) {

           this.User_id = user_id;
           this.User_name = user_name;
           this.User_password = user_password;
           this.User_sex = user_sex;
           this.User_phone = user_phone;
        }

        public String getUser_id() {
            return User_id;
        }
        public void setUser_id(String user_id) {
            this.User_id = user_id;
        }
        public String getUser_name() {
            return User_name;
        }
        public void setUser_name(String user_name) {
            this.User_name = user_name;
        }
        public String getUser_password() {
            return User_password;
        }
        public void setUser_password(String user_password) {
            this.User_password = user_password;
        }
        public String getUser_sex() {
            return User_sex;
        }
        public void setUser_sex(String user_sex) {
            this.User_sex = user_sex;
        }
        public String getUser_phone() {
            return User_phone;
        }
        public void setUser_phone(String user_phone) {
            this.User_phone = user_phone;
        }
    }

