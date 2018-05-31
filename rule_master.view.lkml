view: rule_master {
  sql_table_name: dbo.Rule_Master ;;

  dimension: rule_master_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Master_id ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Creation_Date ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension_group: modification {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Modification_date ;;
  }

  dimension: override_keyword_search {
    type: string
    sql: ${TABLE}.Override_Keyword_Search ;;
  }

  dimension: override_manual_review {
    type: string
    sql: ${TABLE}.Override_Manual_Review ;;
  }

  dimension: reporting_decission {
    type: string
    sql: ${TABLE}.Reporting_Decission ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.Rule_Name ;;
  }

  dimension: rule_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Type_id ;;
  }

  dimension: template {
    type: string
    sql: ${TABLE}.Template ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      rule_master_id,
      rule_name,
      rule_type.rule_type_id,
      audit_rule_configuration.count,
      rp_jurisdiction_rule.count,
      rule_configuration.count,
      rule_master_config_status.count,
      staging_rule_configuration.count,
      vw_state_rules.count
    ]
  }
}
