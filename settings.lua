data:extend(
{
	{
	type = "bool-setting",
	name = "enable-old-recipe",
	setting_type = "startup",
	default_value = true,
	order = "e",
	},
	{
	type = "bool-setting",
	name = "powerhouse-is-electric",
	setting_type = "startup",
	default_value = false,
	order = "p",
	},
	{
	type = "bool-setting",
	name = "powerhouse-is-efficient",
	setting_type = "startup",
	default_value = false,
	order = "p",
	},
	{type = "bool-setting",
  name = "BOF-is-heat-powered",
  setting_type = "startup",
  default_value = false,
  order = "p",
  },
	{
	type = "bool-setting",
	name = "logical-flask",
	setting_type = "startup",
	default_value = true,
	order = "l",
	},
	{
	type = "string-setting",
	name = "efficient-fluid-type",
	setting_type = "startup",
	allowed_values= {"oxygen","crude-oil","methane"},
	default_value = "oxygen",
	order = "l",
	},
	{
	type = "bool-setting",
	name = "proficient-purified-air",
	setting_type = "startup",
	default_value = false,
	order = "l",
	},

	
 
})
 
  
