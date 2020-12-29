ActiveRecord::Schema.define(version: 2020_12_29_072902) do

  enable_extension "plpgsql"

  create_table "feelings", force: :cascade do |t|
    t.text "content"
  end

  create_table "tweets", force: :cascade do |t|
    t.text "content"
  end

end
