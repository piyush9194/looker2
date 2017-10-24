view: contact_propensity_p1 {
  sql_table_name: CDW_WAREHOUSE.CONTACT_PROPENSITY_P1 ;;
  label: "Contact Propensity"
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
    link: {

      label: "Google Search"
      url: "http://www.google.com/search?q={{ value }}"
      icon_url: "http://google.com/favicon.ico"
    }
    action: {
      label: "Create Post"
      url: "https://example.com/posts"
      param: {
        name: "some_auth_code"
        value: "abc123456"
      }
      form_param: {
        name: "title"
        required: yes
      }
      form_param: {
        name: "body"
        type: textarea
        required: yes
      }
      form_param: {
        name: "test"
        type: select
        default: "partridge"
        option: {
          name: "foo"
          label: "bar"
        }
        option: {
          name: "partridge"
          label: "Partridges"
        }
        option: {
          name: "label_not_required"
        }
      }
    }


  }



  dimension: Channel {
    type: string
    sql: ${TABLE}.channel_name ;;
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

  measure: volume_relevant_contacts_inbnd {
    type: sum
    drill_fields: [brand,Channel,interaction_year,volume_relevant_contacts_inbnd]
    sql: ${TABLE}.volume_relevant_contacts_inbnd
      ;;
  }


  measure: volume_relevant_contacts_inbnd_modifiedj {
    group_label: "Calculated Measures"

    sql: CASE WHEN ${Channel} ='Phone' THEN  ${volume_relevant_contacts_inbnd} * 5
          WHEN ${Channel} ='Email' THEN  ${volume_relevant_contacts_inbnd} * 2
          ELSE ${volume_relevant_contacts_inbnd} * 3 END
            ;;
  }

  measure: volume_relevant_contacts_inbnd_modifiedop {
    group_label: "Calculated Measures"

    sql: CASE WHEN ${Channel} ='Phone' THEN  ${volume_relevant_contacts_inbnd} * 5
          WHEN ${Channel} ='Email' THEN  ${volume_relevant_contacts_inbnd} * 2
          ELSE ${volume_relevant_contacts_inbnd} * 3 END
            ;;
  }

  measure: count {
    type: count
    drill_fields: [Channel]
  }


}
