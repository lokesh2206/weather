view: dm_sample_search_param {
  sql_table_name: dbo.DM_Sample_Search_Param ;;

  dimension: dm_sample_search_param_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DM_Sample_Search_Param_Id ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: dm_sample_store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DM_Sample_Store_ID ;;
  }

  dimension: global_search_parameter_id {
    type: number
    sql: ${TABLE}.Global_Search_Parameter_ID ;;
  }

  dimension: match_level {
    type: number
    sql: ${TABLE}.Match_Level ;;
  }

  measure: count {
    type: count
    drill_fields: [dm_sample_search_param_id, dm_sample_store.dm_sample_store_id, dm_sample_search_param_charge_level.count, dm_sample_search_param_disposition_type.count]
  }
}
