class CreateJenkinsBuilds < ActiveRecord::Migration

  def self.up
    create_table :jenkins_builds do |t|
      t.column :jenkins_job_id, :integer
      t.column :number,         :integer
      t.column :author_id,      :integer
      t.column :result,         :string
      t.column :finished_at,    :datetime
      t.column :building,       :boolean
      t.column :duration,       :integer
    end
  end

  def self.down
    drop_table :jenkins_builds
  end

end
