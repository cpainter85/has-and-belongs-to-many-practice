require "rails_helper"

describe Doctor do
  it "responds to name" do
    expect(Doctor.new).to respond_to(:name)
  end

  it "responds to patients" do
    expect(Doctor.new).to respond_to(:patients)
  end

  it "returns all patients for a doctor" do
    doctor = Doctor.create!(name: "Dr. Who")
    patient = Patient.create!(name: "Bad Luck Brian")
    Patient.create!(name: "Sad Panda")
    doctor.patients << patient

    expect(doctor.patients).to eq [patient]
  end
end
