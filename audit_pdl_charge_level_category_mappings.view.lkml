view: audit_pdl_charge_level_category_mappings {
  sql_table_name: dbo.Audit_PDL_ChargeLevel_CategoryMappings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: change_log_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Change_Log_Id ;;
  }

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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, charge_level.charge_level_id, users.user_id, users.name, change_log.change_log_id]
  }
}
