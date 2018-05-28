view: dm_sample_search_param_charge_level {
  sql_table_name: dbo.DM_Sample_Search_Param_Charge_Level ;;

  dimension: dm_sample_search_param_charge_level_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DM_Sample_Search_Param_Charge_Level_Id ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_Id ;;
  }

  dimension: dm_sample_search_param_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DM_Sample_Search_Param_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [dm_sample_search_param_charge_level_id, dm_sample_search_param.dm_sample_search_param_id, charge_level.charge_level_id]
  }
}
