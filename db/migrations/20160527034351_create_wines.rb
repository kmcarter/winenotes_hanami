Hanami::Model.migration do
  change do
    create_table :wines do
      primary_key :id
      column :name, String, null: false
      column :varietal, String, null: true
      column :year, Integer, null: true
      column :vinyard, String, null: true
    end
  end
end
