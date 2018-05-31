view: validator_county {
  sql_table_name: dbo.Validator_County ;;

  dimension: validator_county_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Validator_County_Id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Account_Id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Customer_Id ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_Id ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_Id ;;
  }

  dimension: profile_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Profile_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      validator_county_id,
      account.account_id,
      account.account_name,
      customer.customer_id,
      customer.customer_name,
      profile.profile_id,
      profile.profile_name,
      jurisdiction.jurisdiction_id
    ]
  }
}
