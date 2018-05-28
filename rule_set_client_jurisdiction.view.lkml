view: rule_set_client_jurisdiction {
  sql_table_name: dbo.RuleSet_Client_Jurisdiction ;;

  dimension: rule_set_client_jurisdiction_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.RuleSet_Client_Jurisdiction_id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Account_id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_id ;;
  }

  dimension: profile_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Profile_id ;;
  }

  dimension: rule_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RuleSet_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      rule_set_client_jurisdiction_id,
      rule_set.rule_set_id,
      rule_set.name,
      jurisdiction.jurisdiction_id,
      account.account_id,
      account.account_name,
      profile.profile_id,
      profile.profile_name,
      customer.customer_id,
      customer.customer_name,
      audit_rule_set_client_jurisdiction.count,
      staging_rule_set_client_jurisdiction.count
    ]
  }
}
