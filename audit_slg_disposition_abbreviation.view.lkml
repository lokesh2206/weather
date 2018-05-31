view: audit_slg_disposition_abbreviation {
  sql_table_name: dbo.Audit_SLG_Disposition_Abbreviation ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
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

  dimension: disposition_abbreviation_id {
    type: number
    sql: ${TABLE}.Disposition_Abbreviation_Id ;;
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
