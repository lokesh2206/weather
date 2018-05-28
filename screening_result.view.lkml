view: screening_result {
  sql_table_name: dbo.Screening_Result ;;

  dimension: screening_result_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Screening_Result_id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Account_Id ;;
  }

  dimension_group: added {
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
    sql: ${TABLE}.Added_Date ;;
  }

  dimension: agent_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Agent_id ;;
  }

  dimension: cma_score {
    type: string
    sql: ${TABLE}.Cma_Score ;;
  }

  dimension: cma_tracking_id {
    type: string
    sql: ${TABLE}.Cma_Tracking_Id ;;
  }

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  dimension: employment_state_jurisdiction_id {
    type: number
    sql: ${TABLE}.Employment_State_Jurisdiction_Id ;;
  }

  dimension: is_common_name {
    type: string
    sql: ${TABLE}.isCommonName ;;
  }

  dimension: is_hit {
    type: string
    sql: ${TABLE}.isHit ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: jurisdiction_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_Type_Id ;;
  }

  dimension: known_result {
    type: number
    sql: ${TABLE}.Known_Result ;;
  }

  dimension: machine_name {
    type: string
    sql: ${TABLE}.Machine_Name ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}.Order_date ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_Id ;;
  }

  dimension: parent_system_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Parent_System_Id ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: profile_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Profile_id ;;
  }

  dimension: request_uri {
    type: string
    sql: ${TABLE}.Request_URI ;;
  }

  dimension: resident_state_jurisdiction_id {
    type: number
    sql: ${TABLE}.Resident_State_Jurisdiction_Id ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }

  dimension: screening_id {
    type: string
    sql: ${TABLE}.Screening_Id ;;
  }

  dimension: screening_reference_id {
    type: string
    sql: ${TABLE}.Screening_Reference_Id ;;
  }

  dimension_group: smart_data_order_created {
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
    sql: ${TABLE}.SmartData_Order_CreatedAt ;;
  }

  dimension: smart_data_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SmartData_Status_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      screening_result_id,
      machine_name,
      is_common_name,
      account.account_id,
      account.account_name,
      profile.profile_id,
      profile.profile_name,
      jurisdiction.jurisdiction_id,
      jurisdiction_type.jurisdiction_type_id,
      parent_system.parent_system_id,
      smart_data_status.smart_data_status_id,
      smart_data_status.status_name,
      agent.agent_id,
      agent.agent_name,
      blob.count,
      crim_case.count,
      dm_datasource_monitor_request.count,
      dm_sample_store.count,
      log_history_notes.count,
      missing_reporting_param.count,
      rp_jurisdiction_result_mr.count
    ]
  }
}
