view: rp_jurisdiction_charge_level {
  sql_table_name: dbo.RP_Jurisdiction_Charge_Level ;;

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_Id ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}.IsActive ;;
  }

  dimension: juridiction_id {
    type: number
    sql: ${TABLE}.Juridiction_Id ;;
  }

  dimension: lower_threshold {
    type: number
    sql: ${TABLE}.LowerThreshold ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_Id ;;
  }

  dimension: rp_juridiction_charge_level_id {
    type: number
    sql: ${TABLE}.RP_Juridiction_Charge_Level_Id ;;
  }

  dimension: upper_threshold {
    type: number
    sql: ${TABLE}.UpperThreshold ;;
  }

  measure: count {
    type: count
    drill_fields: [charge_level.charge_level_id]
  }
}
