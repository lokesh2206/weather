view: jurisdiction_manual_review {
  sql_table_name: dbo.Jurisdiction_ManualReview ;;

  dimension: jurisdiction_manual_review_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Jurisdiction_ManualReview_ID ;;
  }

  dimension: hit_threshold {
    type: number
    sql: ${TABLE}.Hit_Threshold ;;
  }

  dimension: hit_threshold_max {
    type: number
    sql: ${TABLE}.Hit_Threshold_Max ;;
  }

  dimension: hit_threshold_min {
    type: number
    sql: ${TABLE}.Hit_Threshold_Min ;;
  }

  dimension: info_needed {
    type: string
    sql: ${TABLE}.Info_Needed ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: manual_review {
    type: string
    sql: ${TABLE}.Manual_Review ;;
  }

  dimension: mr_override {
    type: string
    sql: ${TABLE}.MR_Override ;;
  }

  dimension: mr_quality_threshold {
    type: number
    sql: ${TABLE}.MR_Quality_Threshold ;;
  }

  dimension_group: mr_quality_threshold_end {
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
    sql: ${TABLE}.MR_Quality_Threshold_End_Time ;;
  }

  dimension_group: mr_quality_threshold_start {
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
    sql: ${TABLE}.MR_Quality_Threshold_Start_Time ;;
  }

  measure: count {
    type: count
    drill_fields: [jurisdiction_manual_review_id, jurisdiction.jurisdiction_id, audit_jurisdiction_manual_review.count, staging_jurisdiction_manual_review.count]
  }
}
