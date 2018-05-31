view: pdl_product_category {
  sql_table_name: dbo.PDL_Product_Category ;;

  dimension: category_description {
    type: string
    sql: ${TABLE}.Category_Description ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.Category_Name ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Creation_date ;;
  }

  dimension_group: modification {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Modification_date ;;
  }

  dimension: modification_user_id {
    type: number
    sql: ${TABLE}.Modification_User_Id ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [category_name, users.user_id, users.name]
  }
}
