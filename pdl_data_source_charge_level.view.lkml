view: pdl_data_source_charge_level {
  sql_table_name: dbo.PDL_DataSource_Charge_Level ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_id ;;
  }

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, charge_level.charge_level_id]
  }
}
