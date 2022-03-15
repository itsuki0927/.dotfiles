local U = {}

local function is_valid(buf_num)
    if not buf_num or buf_num < 1 then
        return false
    end
    local exists = vim.api.nvim_buf_is_valid(buf_num)
    return vim.bo[buf_num].buflisted and exists
end

function U.get_valid_buffers()
    local buf_nums = vim.api.nvim_list_bufs()
    local ids = {}
    for _, buf in ipairs(buf_nums) do
        if is_valid(buf) then
            ids[#ids + 1] = buf
        end
    end
    return ids
end

function U.has_name(buf)
    return vim.api.nvim_buf_get_name(buf) ~= ""
end

return U
