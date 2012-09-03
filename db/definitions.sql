DROP TABLE IF EXISTS "definitions";
CREATE TABLE "definitions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "definition" text NOT NULL, "created_at" datetime, "updated_at" datetime);
INSERT INTO "definitions" VALUES(3,'Ruote.process_definition "my first definition" do
  sequence do
    alice
    bob
  end
end','2012-05-15 03:50:36.271912','2012-05-15 03:50:36.271912');
