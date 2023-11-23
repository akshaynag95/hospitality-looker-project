view: hotels {
  sql_table_name: `supply-chain-twin-349311.hospitality_dataset.hotels` ;;
  drill_fields: [category, city, property_name]

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: property_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.property_id ;;

    # creating action button to take action on looker dashboard
    # URL: https://cloud.google.com/looker/docs/reference/param-field-action?version=23.18&lookml=new
    action: {
      label: "Action on Email"
      url: "https://hooks.zapier.com/hooks/catch/11814505/bryrebp/"

      form_param: {
        name: "Heading"
        type: string
        default: "Lets connect on this"
      }

      form_param: {
        name: "Description"
        type: textarea
        default: "Details#
        Property Id: {{property_id._value}}
        Property Name: {{property_name._value}}
        City: {{city._value}}
        Category: {{category._value}}"
      }
    }
  }
  dimension: property_name {
    type: string
    sql: ${TABLE}.property_name ;;
  }
  measure: count {
    type: count
    drill_fields: [property_name]
  }
}
