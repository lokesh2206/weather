view: dm_sample_search_param_disposition_type {
  sql_table_name: dbo.DM_Sample_Search_Param_Disposition_Type ;;

  dimension: dm_sample_search_param_disposition_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DM_Sample_Search_Param_Disposition_Type_Id ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_Id ;;
  }

  dimension: dm_sample_search_param_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DM_Sample_Search_Param_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [dm_sample_search_param_disposition_type_id, dm_sample_search_param.dm_sample_search_param_id, disposition_type.disposition_type_id]
  }
}
