view: contact_propensity_p1 {
  sql_table_name: CDW_WAREHOUSE.CONTACT_PROPENSITY_P1 ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.BRAND ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.CHANNEL_NAME ;;
  }

  dimension_group: interaction {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.INTERACTION_DATE ;;
  }

  dimension: mgmt_unit_key {
    type: number
    sql: ${TABLE}.MGMT_UNIT_KEY ;;
  }

  dimension: pos {
    type: string
    sql: ${TABLE}.POS ;;
  }

  dimension: volume_relevant_contacts_inbnd {
    type: number
    sql: ${TABLE}.VOLUME_RELEVANT_CONTACTS_INBND ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_name]
  }
}
