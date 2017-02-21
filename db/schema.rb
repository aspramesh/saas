# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "adfeaturedetails", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",      limit: 1, default: "N",                        null: false
    t.bigint   "Add_ID",                                                      null: false, unsigned: true
    t.bigint   "Feature_ID",                                                  null: false, unsigned: true
    t.string   "Value",        limit: 1, default: "Y",                        null: false
    t.bigint   "LOP_ID",                                                      null: false
    t.datetime "LOP_Datetime",           default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                      null: false
    t.datetime "COP_Datetime",           default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["Feature_ID"], name: "fk_AFD_Feature_ID", using: :btree
  end

  create_table "adimagedetails", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",      limit: 1,   default: "N",                        null: false
    t.bigint   "Ad_ID",                                                         null: false, unsigned: true
    t.string   "Image_Path",   limit: 200
    t.bigint   "LOP_ID",                                                        null: false
    t.datetime "LOP_Datetime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                        null: false
    t.datetime "COP_Datetime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "categorydetails", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",      limit: 1,   default: "N",                        null: false
    t.string   "Name",         limit: 50
    t.string   "Description",  limit: 100
    t.bigint   "LOP_ID",                                                        null: false
    t.datetime "LOP_Datetime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                        null: false
    t.datetime "COP_Datetime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "classificationdetails", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",         limit: 1,   default: "N",                        null: false
    t.bigint   "Category_ID",                                                      null: false, unsigned: true
    t.bigint   "Sub_Category_ID",                                                  null: false, unsigned: true
    t.string   "Name",            limit: 50
    t.string   "Description",     limit: 100
    t.bigint   "LOP_ID",                                                           null: false
    t.datetime "LOP_Datetime",                default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                           null: false
    t.datetime "COP_Datetime",                default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["Category_ID"], name: "fk_CD_Category_ID", using: :btree
    t.index ["Sub_Category_ID"], name: "fk_CD_Sub_Category_ID", using: :btree
  end

  create_table "featuredetails", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",      limit: 1,   default: "N",                        null: false
    t.string   "Type",         limit: 50
    t.string   "Name",         limit: 50
    t.string   "Description",  limit: 100
    t.bigint   "LOP_ID",                                                        null: false
    t.datetime "LOP_Datetime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                        null: false
    t.datetime "COP_Datetime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "subcategorydetails", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",      limit: 1,   default: "N",                        null: false
    t.bigint   "Category_ID",                                                   null: false, unsigned: true
    t.string   "Name",         limit: 50
    t.string   "Description",  limit: 100
    t.bigint   "LOP_ID",                                                        null: false
    t.datetime "LOP_Datetime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                        null: false
    t.datetime "COP_Datetime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["Category_ID"], name: "fk_SCD_Category_ID", using: :btree
  end

  create_table "subscriptiondetails", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",      limit: 1,   default: "N",                        null: false
    t.string   "Name",         limit: 50
    t.string   "Description",  limit: 100
    t.bigint   "LOP_ID",                                                        null: false
    t.datetime "LOP_Datetime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                        null: false
    t.datetime "COP_Datetime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "useralertsettings", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",           limit: 1, default: "N",                        null: false
    t.bigint   "User_ID",                                                          null: false, unsigned: true
    t.string   "Price_Change",      limit: 1, default: "Y",                        null: false
    t.string   "Sold_Notification", limit: 1, default: "Y",                        null: false
    t.string   "Int_Enq_Inrecase",  limit: 1, default: "Y",                        null: false
    t.string   "Dealer_Offers",     limit: 1, default: "Y",                        null: false
    t.string   "New_Message",       limit: 1, default: "Y",                        null: false
    t.string   "Ad_Performance",    limit: 1, default: "Y",                        null: false
    t.string   "Ad_Expiry",         limit: 1, default: "Y",                        null: false
    t.bigint   "LOP_ID",                                                           null: false
    t.datetime "LOP_Datetime",                default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                           null: false
    t.datetime "COP_Datetime",                default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["User_ID"], name: "fk_UAS_User_ID", using: :btree
  end

  create_table "userdetails", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",           limit: 1,   default: "N",                        null: false
    t.string   "Email",             limit: 150,                                      null: false
    t.string   "Password",          limit: 150,                                      null: false
    t.string   "Private_Business",  limit: 1,   default: "N",                        null: false
    t.string   "Company_Name",      limit: 150
    t.string   "First_Name",        limit: 50
    t.string   "Last_Name",         limit: 50
    t.date     "DOB"
    t.string   "Address1",          limit: 100
    t.string   "Address2",          limit: 100
    t.string   "Suburb",            limit: 100
    t.string   "Postcode",          limit: 20
    t.string   "State",             limit: 50
    t.string   "Phone_No",          limit: 20
    t.string   "Mobile_No",         limit: 20
    t.string   "Security_Question", limit: 200
    t.string   "Security_Answer",   limit: 50
    t.string   "SMS_Promo",         limit: 1,   default: "Y",                        null: false
    t.string   "Email_Promo",       limit: 1,   default: "Y",                        null: false
    t.string   "Verfied",           limit: 1,   default: "N",                        null: false
    t.datetime "Verfied_Datetime"
    t.bigint   "LOP_ID",                                                             null: false
    t.datetime "LOP_Datetime",                  default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                             null: false
    t.datetime "COP_Datetime",                  default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "userpreferencesettings", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",                limit: 1, default: "N",                        null: false
    t.bigint   "User_ID",                                                               null: false, unsigned: true
    t.string   "Exclusive_Mem_Benefits", limit: 1, default: "Y",                        null: false
    t.string   "News_Reviews_Comp",      limit: 1, default: "Y",                        null: false
    t.string   "Special_Offers",         limit: 1, default: "Y",                        null: false
    t.bigint   "LOP_ID",                                                                null: false
    t.datetime "LOP_Datetime",                     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                                null: false
    t.datetime "COP_Datetime",                     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["User_ID"], name: "fk_UPS_User_ID", using: :btree
  end

  create_table "usersubscriptionsettings", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",            limit: 1, default: "N",                        null: false
    t.bigint   "User_ID",                                                           null: false, unsigned: true
    t.bigint   "Subscription_ID",                                                   null: false, unsigned: true
    t.string   "Subscription_Value", limit: 1, default: "Y",                        null: false
    t.bigint   "LOP_ID",                                                            null: false
    t.datetime "LOP_Datetime",                 default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                            null: false
    t.datetime "COP_Datetime",                 default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["Subscription_ID"], name: "fk_USS_Subscription_ID", using: :btree
    t.index ["User_ID"], name: "fk_USS_User_ID", using: :btree
  end

  create_table "vehicledetails", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Archive",           limit: 1,                              default: "N",                        null: false
    t.bigint   "Classification_ID",                                                                             null: false, unsigned: true
    t.bigint   "User_ID",                                                                                       null: false, unsigned: true
    t.string   "Description",       limit: 100
    t.string   "Make",              limit: 50
    t.string   "Model",             limit: 50
    t.integer  "Year"
    t.bigint   "Odometer"
    t.string   "Transmission",      limit: 50
    t.string   "Exterior_Colour",   limit: 50
    t.string   "Interior_Colour",   limit: 50
    t.decimal  "Price",                           precision: 16, scale: 2
    t.string   "Fuel_Type",         limit: 50
    t.string   "Fuel_Economy",      limit: 50
    t.decimal  "Cylinders",                       precision: 16, scale: 2
    t.decimal  "Engine_Size",                     precision: 16, scale: 2
    t.string   "Engine_Cycle",      limit: 50
    t.string   "Drive_Type",        limit: 50
    t.string   "Writte_Off",        limit: 1,                              default: "N",                        null: false
    t.string   "Registered",        limit: 1,                              default: "N",                        null: false
    t.string   "Reg_No",            limit: 50
    t.date     "Reg_Expiry"
    t.string   "Vin_No",            limit: 50
    t.string   "Roadworthy",        limit: 1,                              default: "N",                        null: false
    t.date     "Build_Date"
    t.date     "Compliance_Date"
    t.string   "Post_Code",         limit: 20
    t.string   "Suburb",            limit: 100
    t.text     "Comments",          limit: 65535
    t.bigint   "LOP_ID",                                                                                        null: false
    t.datetime "LOP_Datetime",                                             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.bigint   "COP_ID",                                                                                        null: false
    t.datetime "COP_Datetime",                                             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["Classification_ID"], name: "fk_VD_Classification_ID", using: :btree
    t.index ["User_ID"], name: "fk_VD_User_ID", using: :btree
  end

  add_foreign_key "adfeaturedetails", "featuredetails", column: "Feature_ID", primary_key: "ID", name: "fk_AFD_Feature_ID", on_update: :cascade
  add_foreign_key "classificationdetails", "categorydetails", column: "Category_ID", primary_key: "ID", name: "fk_CD_Category_ID", on_update: :cascade
  add_foreign_key "classificationdetails", "subcategorydetails", column: "Sub_Category_ID", primary_key: "ID", name: "fk_CD_Sub_Category_ID", on_update: :cascade
  add_foreign_key "subcategorydetails", "categorydetails", column: "Category_ID", primary_key: "ID", name: "fk_SCD_Category_ID", on_update: :cascade
  add_foreign_key "useralertsettings", "userdetails", column: "User_ID", primary_key: "ID", name: "fk_UAS_User_ID", on_update: :cascade
  add_foreign_key "userpreferencesettings", "userdetails", column: "User_ID", primary_key: "ID", name: "fk_UPS_User_ID", on_update: :cascade
  add_foreign_key "usersubscriptionsettings", "subscriptiondetails", column: "Subscription_ID", primary_key: "ID", name: "fk_USS_Subscription_ID", on_update: :cascade
  add_foreign_key "usersubscriptionsettings", "userdetails", column: "User_ID", primary_key: "ID", name: "fk_USS_User_ID", on_update: :cascade
  add_foreign_key "vehicledetails", "classificationdetails", column: "Classification_ID", primary_key: "ID", name: "fk_VD_Classification_ID", on_update: :cascade
  add_foreign_key "vehicledetails", "userdetails", column: "User_ID", primary_key: "ID", name: "fk_VD_User_ID", on_update: :cascade
end
