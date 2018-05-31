view: staging_pdl_data_source_disposition_type {
  sql_table_name: dbo.Staging_PDL_DataSource_Disposition_Type ;;

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

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  dimension: staging_id {
    type: number
    sql: ${TABLE}.Staging_Id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, disposition_type.disposition_type_id, users.user_id, users.name, change_log.change_log_id]
  }
}
