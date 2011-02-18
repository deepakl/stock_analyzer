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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110218145519) do

  create_table "balance_sheets", :force => true do |t|
    t.date     "period_ended"
    t.float    "total_share_capital"
    t.float    "equity_share_capital"
    t.float    "share_application_money"
    t.float    "preference_share_capital"
    t.float    "reserves"
    t.float    "revaluation_reserves"
    t.float    "net_worth"
    t.float    "secured_loans"
    t.float    "unsecured_loans"
    t.float    "total_debt"
    t.float    "total_liabilities"
    t.float    "gross_block"
    t.float    "accumulated_depreciation"
    t.float    "net_block"
    t.float    "capital_work_in_progress"
    t.float    "investments"
    t.float    "inventories"
    t.float    "sundry_debtors"
    t.float    "cash_and_bank_balance"
    t.float    "total_current_assets"
    t.float    "loans_and_advances"
    t.float    "fixed_deposits"
    t.float    "deferred_credit"
    t.float    "current_liabilities"
    t.float    "provisions"
    t.float    "net_current_assets"
    t.float    "misc_expenses"
    t.float    "total_assets"
    t.float    "contingent_liabilities"
    t.float    "book_value"
    t.float    "deposits"
    t.float    "borrowings"
    t.float    "other_liabilities"
    t.float    "balance_with_rbi"
    t.float    "money_at_call"
    t.float    "advances"
    t.float    "other_assets"
    t.float    "bills_for_collection"
    t.string   "type"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "balance_sheets", ["company_id", "period_ended"], :name => "index_balance_sheets_on_company_id_and_period_ended", :unique => true

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "mc_code"
    t.integer  "sector_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "balance_sheets_count",    :default => 0
    t.integer  "quarterly_results_count", :default => 0
    t.float    "day_high"
    t.float    "day_low"
    t.float    "price"
    t.float    "year_high"
    t.float    "year_low"
    t.float    "volume"
    t.string   "bse_code"
    t.string   "nse_code"
    t.string   "isin"
    t.integer  "profit_and_losses_count", :default => 0
    t.boolean  "active",                  :default => true
  end

  add_index "companies", ["mc_code"], :name => "index_companies_on_mc_code", :unique => true
  add_index "companies", ["sector_id"], :name => "index_companies_on_sector_id"

  create_table "profit_and_losses", :force => true do |t|
    t.date     "period_ended"
    t.float    "sales_turnover"
    t.float    "excise_duty"
    t.float    "net_sales"
    t.float    "other_income"
    t.float    "stock_adjustments"
    t.float    "total_income"
    t.float    "raw_materials"
    t.float    "power_and_fuel_cost"
    t.float    "employee_cost"
    t.float    "other_manufacturing_expenses"
    t.float    "sales_and_admin_expenses"
    t.float    "misc_expenses"
    t.float    "preoperative_capex"
    t.float    "total_expenses"
    t.float    "operating_profit"
    t.float    "pbdit"
    t.float    "interest"
    t.float    "pbdt"
    t.float    "depreciation"
    t.float    "other_written_off"
    t.float    "pbt"
    t.float    "extraordinary_items"
    t.float    "tax"
    t.float    "net_profit"
    t.float    "total_value_addition"
    t.float    "preference_dividend"
    t.float    "equity_dividend"
    t.float    "dividend_tax"
    t.float    "issued_shares"
    t.float    "eps"
    t.float    "dividend_percentage"
    t.float    "book_value"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profit_and_losses", ["company_id", "period_ended"], :name => "index_profit_and_losses_on_company_id_and_period_ended", :unique => true

  create_table "quarterly_results", :force => true do |t|
    t.date     "period_ended"
    t.float    "sales_turnover"
    t.float    "other_income"
    t.float    "total_income"
    t.float    "total_expenses"
    t.float    "operating_profit"
    t.float    "profit_on_assets_sale"
    t.float    "profit_on_investments_sale"
    t.float    "profit_on_forex"
    t.float    "vrs_adjustment"
    t.float    "other_extraordinary_income"
    t.float    "total_extraordinary_income"
    t.float    "tax_on_extraordinary_income"
    t.float    "net_extraordinary_income"
    t.float    "gross_profit"
    t.float    "interest"
    t.float    "pbdt"
    t.float    "depreciation"
    t.float    "depreciation_on_revaluated_assets"
    t.float    "pbt"
    t.float    "tax"
    t.float    "net_profit"
    t.float    "prior_years_income"
    t.float    "depreciation_for_previous_years"
    t.float    "dividend"
    t.float    "dividend_tax"
    t.float    "dividend_percentage"
    t.float    "eps"
    t.float    "book_value"
    t.float    "equity"
    t.float    "reserves"
    t.float    "face_value"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quarterly_results", ["company_id", "period_ended"], :name => "index_quarterly_results_on_company_id_and_period_ended", :unique => true

  create_table "sectors", :force => true do |t|
    t.string   "name"
    t.string   "mc_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sectors", ["name"], :name => "index_sectors_on_name", :unique => true

end
