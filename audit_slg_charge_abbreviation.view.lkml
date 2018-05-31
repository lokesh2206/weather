view: audit_slg_charge_abbreviation {
  sql_table_name: dbo.Audit_SLG_Charge_Abbreviation ;;

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

  dimension: charge_abbreviation_id {
    type: number
    sql: ${TABLE}.Charge_Abbreviation_Id ;;
  }

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, change_log.change_log_id, users.user_id, users.name]
  }
}
