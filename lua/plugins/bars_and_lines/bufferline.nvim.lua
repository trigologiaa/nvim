-- A snazzy buffer line built using Lua

local diagnostics_indicator = function(count, level, diagnostics_dict, context)
	return "("..count..")"
end

local custom_filter = function(buf_number, buf_numbers)
	if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
		return true
	end
	if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
		return true
	end
	if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
		return true
	end
	if buf_numbers[1] ~= buf_number then
		return true
	end
end

local get_element_icon = function(element)
	local icon, hl = require("nvim-web-devicons").get_icon_by_filetype(element.filetype, {default = false})
	return icon, hl
	local custom_map = {
		my_thing_ft: {
			icon = "my_thing_icon",
			hl
		}
	}
	return custom_map[element.filetype]
end

local modified = function(buffer_a, buffer_b)
	local modified_a = vim.fn.getftime(buffer_a.path)
	local modified_b = vim.fn.getftime(buffer_b.path)
	return modified_a > modified_b
end

return {
	"akinsho/bufferline.nvim",
	tag = "*",
	enabled = false,
	opts = {
		options = {
			mode = "buffers",
			style_preset = bufferline.style_preset.default,
			themable = true | false,
			numbers = "none" | "ordinal" | "buffer_id" | "both" | function({ordinal, id, lower, raise}): string,
			close_command = "bdelete! %d",
			right_mouse_command = "bdelete! %d",
			left_mouse_command = "buffer %d",
			middle_mouse_command = nil,
			indicator = {
				icon = "▎",
				style = "icon" | "underline" | "none"
			},
			buffer_close_icon = "󰅖",
			modified_icon = "● ",
			close_icon = " ",
			left_trunc_marker = ' ',
			right_trunc_marker = ' ',
			name_formatter = function(buf)
				-- 
			end,
			max_name_length = 18,
			max_prefix_length = 15,
			truncate_names = true,
			tab_size = 18,
			diagnostics = false | "nvim_lsp" | "coc",
			diagnostics_update_in_insert = false,
			diagnostics_update_on_event = true,
			diagnostics_indicator = diagnostics_indicator,
			custom_filter = custom_filter,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer" | function,
					text_align = "left" | "center" | "right",
					separator = true
				}
			},
			color_icons = true | false,
			get_element_icon = get_element_icon,
			show_buffer_icons = true | false,
			show_buffer_close_icons = true | false,
			show_close_icon = true | false,
			show_tab_indicators = true | false,
			show_duplicate_prefix = true | false,
			duplicates_across_groups = true,
			persist_buffer_sort = true,
			move_wraps_at_ends = false,
			separator_style = "slant" | "slope" | "thick" | "thin" | {"any", "any"},
			enforce_regular_tabs = false | true,
			always_show_bufferline = true | false,
			auto_toggle_bufferline = true | false,
			hover = {
					enabled = true,
					delay = 200,
					reveal = {
						"close"
					}
			},
			sort_by = "insert_after_current" | "insert_at_end" | "id" | "extension" | "relative_directory" | "directory" | "tabs" | modified,
			pick = {
				alphabet = "abcdefghijklmopqrstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ1234567890"
			}
		}
	}
}
