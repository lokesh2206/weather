view: staging_slg_disposition_description {
  sql_table_name: dbo.Staging_SLG_Disposition_Description ;;

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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: disposition_description_id {
    type: number
    sql: ${TABLE}.Disposition_Description_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.user_id, users.name, change_log.change_log_id]
  }
}
