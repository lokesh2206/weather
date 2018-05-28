view: bulk_upload_charge_mapping {
  sql_table_name: dbo.BulkUpload_Charge_Mapping ;;

  dimension: bulk_upload_charge_mapping_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BulkUpload_Charge_Mapping_Id ;;
  }

  dimension: bulk_upload_job_id {
    type: number
    sql: ${TABLE}.BulkUpload_JobId ;;
  }

  dimension: charge_category {
    type: string
    sql: ${TABLE}.Charge_Category ;;
  }

  dimension: charge_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Category_Id ;;
  }

  dimension: charge_description {
    type: string
    sql: ${TABLE}.Charge_Description ;;
  }

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
  }

  dimension: charge_level {
    type: string
    sql: ${TABLE}.Charge_Level ;;
  }

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_Id ;;
  }

  dimension: charge_mapping_id {
    type: number
    sql: ${TABLE}.Charge_Mapping_Id ;;
  }

  dimension: error_description {
    type: string
    sql: ${TABLE}.Error_Description ;;
  }

  dimension: juris_id {
    type: number
    sql: ${TABLE}.Juris_Id ;;
  }

  dimension: jurisdiction {
    type: string
    sql: ${TABLE}.Jurisdiction ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.Product_Category ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_Id ;;
  }

  dimension: statute_code {
    type: string
    sql: ${TABLE}.Statute_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [bulk_upload_charge_mapping_id, charge_category.charge_category_id, charge_level.charge_level_id]
  }
}
