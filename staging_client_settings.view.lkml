view: staging_client_settings {
  sql_table_name: dbo.Staging_Client_Settings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Account_Id ;;
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

  dimension: client_rule_available {
    type: string
    sql: ${TABLE}.Client_Rule_Available ;;
  }

  dimension: client_settings_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Client_Settings_Id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: manual_review {
    type: string
    sql: ${TABLE}.Manual_Review ;;
  }

  dimension: new_fcra_compliance_state_criteria {
    type: string
    sql: ${TABLE}.New_FCRA_Compliance_State_Criteria ;;
  }

  dimension: no_of_cases_to_report {
    type: number
    sql: ${TABLE}.No_Of_Cases_To_Report ;;
  }

  dimension: profile_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Profile_Id ;;
  }

  dimension: resident_state {
    type: number
    sql: ${TABLE}.RESIDENT_STATE ;;
  }

  dimension: resident_state_type {
    type: string
    sql: ${TABLE}.RESIDENT_STATE_TYPE ;;
  }

  dimension: rule_jurisdiction {
    type: string
    sql: ${TABLE}.Rule_Jurisdiction ;;
  }

  dimension: rule_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Type_id ;;
  }

  dimension: salary_high {
    type: number
    sql: ${TABLE}.SALARY_HIGH ;;
  }

  dimension: salary_low {
    type: number
    sql: ${TABLE}.SALARY_LOW ;;
  }

  dimension: salary_type {
    type: string
    sql: ${TABLE}.SALARY_TYPE ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      client_settings.client_settings_id,
      account.account_id,
      account.account_name,
      rule_type.rule_type_id,
      profile.profile_id,
      profile.profile_name,
      customer.customer_id,
      customer.customer_name,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
