RSpec.describe 'doubles' do
  it "check database connection double" do
    db = double("Database Connection")
    allow(db).to receive_messages(connect: true, disconnect: false,)
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq(false)

  end
  it "check File system double" do
    fs = double("File System")
    allow(fs).to receive_messages(read: "Romeo and Juliet", write: false,)
    expect(fs.read).to eq("Romeo and Juliet")
    expect(fs.write).to eq(false)

  end
end
