# --=== 使用者（User）資料 ===-- #

# 創建帳號
if User.find_by(email: "anndoko@rails.com").nil?
  User.create!(
    email: "anndoko@rails.com",
    password: "111111",
    password_confirmation: "111111"
  )
  puts "創建一般用戶帳號 * 1"
else
  puts "已創建過此帳號，不重複新增。"
end
