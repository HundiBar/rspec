RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    db = double("Database Connection")
    allow(db).to receive_messages(connect: true, disconnect: false,)
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq(false)

  end
end
