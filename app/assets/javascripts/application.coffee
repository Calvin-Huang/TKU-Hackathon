#= require registrations
#= require event

$('form').nestedFields(
  afterInsert: (item) ->
    if jQuery().bootstrapSwitch
      $(item).find(".switch").bootstrapSwitch()
    if jQuery().bootstrapFileInput
      $(item).find('input[type=file]').bootstrapFileInput()
    if jQuery().datetimepicker
      $(item).find(".datetimepicker").datetimepicker()

      $(item).find(".datepicker").datetimepicker({pickTime: false})

      $(item).find(".timepicker").datetimepicker({pickDate: false})
)