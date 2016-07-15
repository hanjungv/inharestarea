class CreateTotalrests < ActiveRecord::Migration
  def change
    create_table :totalrests do |t|

      t.string :name #시설 이름
      t.string :building #어느 건물에 있는지
      t.string :address #그 건물 어디에 위치하는지
      t.integer :itstype #그 휴게 시설의 속성
      t.text :itsexplain # 어떻게 사용할수 있는지 등 조건을 넣어줌
      t.integer :costs #비용이 얼마나 드는가?

      t.timestamps null: false
    end
  end
end
