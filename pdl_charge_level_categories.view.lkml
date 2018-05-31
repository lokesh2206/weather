view: pdl_charge_level_categories {
  sql_table_name: dbo.PDL_ChargeLevel_Categories ;;

  dimension: charge_level_category {
    type: string
    sql: ${TABLE}.Charge_Level_Category ;;
  }

  dimension: charge_level_category_id {
    type: number
    sql: ${TABLE}.Charge_Level_CategoryId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
