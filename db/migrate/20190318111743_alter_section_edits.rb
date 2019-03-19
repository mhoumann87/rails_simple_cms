class AlterSectionEdits < ActiveRecord::Migration[5.2]
  def up
    rename_column("section_edits", "summery", "summary")
  end

  def down
    rename_column("section_edits", "summary", "summery")
  end
end
