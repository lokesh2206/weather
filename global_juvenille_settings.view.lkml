view: global_juvenille_settings {
  sql_table_name: dbo.Global_Juvenille_Settings ;;

  dimension: global_juvenille_settings_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Global_Juvenille_Settings_ID ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: juvenille_age {
    type: number
    sql: ${TABLE}.Juvenille_Age ;;
  }

  dimension: process_juvenille_case {
    type: string
    sql: ${TABLE}.Process_Juvenille_Case ;;
  }

  measure: count {
    type: count
    drill_fields: [global_juvenille_settings_id, jurisdiction.jurisdiction_id]
  }
}
