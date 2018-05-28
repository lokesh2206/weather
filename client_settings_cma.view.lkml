view: client_settings_cma {
  sql_table_name: dbo.Client_Settings_CMA ;;

  dimension: client_settings_cma_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Client_Settings_CMA_Id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Account_Id ;;
  }

  dimension: cma_active {
    type: string
    sql: ${TABLE}.Cma_Active ;;
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

  dimension: model_id {
    type: string
    sql: ${TABLE}.model_id ;;
  }

  dimension: profile_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Profile_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      client_settings_cma_id,
      account.account_id,
      account.account_name,
      profile.profile_id,
      profile.profile_name,
      customer.customer_id,
      customer.customer_name,
      audit_client_settings_cma.count,
      staging_client_settings_cma.count
    ]
  }
}
