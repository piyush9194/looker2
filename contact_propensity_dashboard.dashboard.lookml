- dashboard: contact_propensity_demo
  title: Contact Propensity Demo
  layout: newspaper
  elements:
  - name: Top 10 Relevant Contacts by Management Unit
    title: Top 10 Relevant Contacts by Management Unit
    model: snowflake_new_poc
    explore: contact_propensity_p1
    type: looker_bar
    fields:
    - mgmt_unit_dim.mgmt_unit_name
    - contact_propensity_p1.volume_relevant_contacts_inbnd
    sorts:
    - contact_propensity_p1.volume_relevant_contacts_inbnd desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Channel: contact_propensity_p1.Channel
      Brand: contact_propensity_p1.brand
    row: 13
    col: 0
    width: 12
    height: 10
  - name: Total Relevant Inbound Contacts
    title: Total Relevant Inbound Contacts
    model: snowflake_new_poc
    explore: contact_propensity_p1
    type: single_value
    fields:
    - contact_propensity_p1.volume_relevant_contacts_inbnd
    limit: 10
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: Total Relavant Inbound Contacts
    listen:
      Channel: contact_propensity_p1.Channel
      Brand: contact_propensity_p1.brand
    row: 0
    col: 8
    width: 7
    height: 3
  - name: Relevant Inbound Contact By Year
    title: Relevant Inbound Contact By Year
    model: snowflake_new_poc
    explore: contact_propensity_p1
    type: looker_line
    fields:
    - contact_propensity_p1.volume_relevant_contacts_inbnd
    - contact_propensity_p1.interaction_year
    fill_fields:
    - contact_propensity_p1.interaction_year
    sorts:
    - contact_propensity_p1.volume_relevant_contacts_inbnd desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: Total Relavant Inbound Contacts
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: contact_propensity_p1.volume_relevant_contacts_inbnd
        name: Contact Propensity Volume Relevant Contacts Inbnd
    listen:
      Channel: contact_propensity_p1.Channel
      Brand: contact_propensity_p1.brand
    row: 3
    col: 12
    width: 12
    height: 10
  - name: Top 10 Relevant Inbound Contacts By Brands
    title: Top 10 Relevant Inbound Contacts By Brands
    model: snowflake_new_poc
    explore: contact_propensity_p1
    type: looker_pie
    fields:
    - contact_propensity_p1.volume_relevant_contacts_inbnd
    - contact_propensity_p1.brand
    sorts:
    - contact_propensity_p1.volume_relevant_contacts_inbnd desc
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: Total Relavant Inbound Contacts
    listen:
      Channel: contact_propensity_p1.Channel
      Brand: contact_propensity_p1.brand
    row: 3
    col: 0
    width: 12
    height: 10
  - name: Relevant Contact By Channel
    title: Relevant Contact By Channel
    model: snowflake_new_poc
    explore: contact_propensity_p1
    type: looker_column
    fields:
    - contact_propensity_p1.volume_relevant_contacts_inbnd
    - contact_propensity_p1.Channel
    sorts:
    - contact_propensity_p1.volume_relevant_contacts_inbnd desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: Total Relavant Inbound Contacts
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: log
      unpinAxis: false
      valueFormat:
      series:
      - id: contact_propensity_p1.volume_relevant_contacts_inbnd
        name: Contact Propensity Volume Relevant Contacts Inbnd
    listen:
      Channel: contact_propensity_p1.Channel
      Brand: contact_propensity_p1.brand
    row: 13
    col: 12
    width: 12
    height: 10
  filters:
  - name: Channel
    title: Channel
    type: field_filter
    default_value: ''
    model: snowflake_new_poc
    explore: contact_propensity_p1
    field: contact_propensity_p1.Channel
    listens_to_filters: []
    allow_multiple_values: true
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    model: snowflake_new_poc
    explore: contact_propensity_p1
    field: contact_propensity_p1.brand
    listens_to_filters: []
    allow_multiple_values: true
