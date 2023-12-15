require 'csv'

num_users = 1000
base_email = 'tatsuro.ide+' + num_users.to_s + 'user'
domain = '@example.com'
csv_file = 'users.csv'

# 更新されたヘッダー
headers = [
  'external_id', 'email', 'last_name', 'first_name', 'authority', 'position_name', 
  'department1_name', 'department1_code', 'department2_name', 'department2_code', 
  'department3_name', 'department3_code', 'department4_name', 'department4_code', 
  'department5_name', 'department5_code', 'department6_name', 'department6_code', 
  'department7_name', 'department7_code', 'department8_name', 'department8_code', 
  'department9_name', 'department9_code', 'department10_name', 'department10_code'
]

last_names = ['佐藤', '鈴木', '高橋']
first_names = ['太郎', '次郎', '三郎']
authorities = ['Admin', 'Viewer']
position_names = ['position1', 'position2', 'position3']
department_names = ['事業本部', '事業部', 'プロダクト開発']
department_codes = [100, 110, 111]

CSV.open(csv_file, 'wb', headers: headers, write_headers: true) do |csv|
  num_users.times do |i|
    email = "#{base_email}#{i + 1}#{domain}"
    last_name = last_names[i % last_names.size]
    first_name = first_names[i % first_names.size]
    authority = authorities[i % authorities.size]
    position_name = position_names[i % position_names.size]

    # ユーザの部署情報を設定
    departments = []
    3.times do |j|
      departments << department_names[j % department_names.size]
      departments << department_codes[j % department_codes.size]
    end

    # 部署4以降は空に設定
    14.times { departments << nil }

    csv << [i + 1, email, last_name, first_name, authority, position_name] + departments
  end
end

puts "#{num_users}人のユーザーデータが'#{csv_file}'に生成されました。"
