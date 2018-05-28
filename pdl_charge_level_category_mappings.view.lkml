view: pdl_charge_level_category_mappings {
  sql_table_name: dbo.PDL_ChargeLevel_CategoryMappings ;;

  dimension: charge_level_category_id {
    type: number
    sql: ${TABLE}.Charge_Level_CategoryId ;;
  }

  dimension: charge_level_category_mapping_id {
    type: number
    sql: ${TABLE}.ChargeLevel_CategoryMappingId ;;
  }

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_id ;;
  }

  measure: count {
    type: count
    drill_fields: [charge_level.charge_level_id]
  }
}
