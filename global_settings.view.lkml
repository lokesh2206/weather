view: global_settings {
  sql_table_name: dbo.Global_Settings ;;

  dimension: global_settings_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Global_Settings_Id ;;
  }

  dimension: cma_global_active {
    type: string
    sql: ${TABLE}.Cma_Global_Active ;;
  }

  dimension: info_needed {
    type: string
    sql: ${TABLE}.Info_Needed ;;
  }

  dimension: juvenille_age {
    type: number
    sql: ${TABLE}.Juvenille_Age ;;
  }

  dimension: manual_review {
    type: string
    sql: ${TABLE}.Manual_Review ;;
  }

  dimension: manual_review_cma {
    type: string
    sql: ${TABLE}.Manual_Review_Cma ;;
  }

  dimension: no_of_cases_to_report {
    type: number
    sql: ${TABLE}.No_Of_Cases_To_Report ;;
  }

  dimension: process_juvenille_case {
    type: string
    sql: ${TABLE}.Process_Juvenille_Case ;;
  }

  dimension: rule_jurisdiction_refer_matrix {
    type: string
    sql: ${TABLE}.Rule_Jurisdiction_Refer_Matrix ;;
  }

  dimension: rule_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [global_settings_id, rule_type.rule_type_id, audit_global_settings.count, staging_global_settings.count]
  }
}
