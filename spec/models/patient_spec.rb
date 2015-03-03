require "rails_helper"

describe Patient do
  it "responds to name" do
    expect(Patient.new).to respond_to(:name)
  end

  it "responds to doctors" do
    expect(Patient.new).to respond_to(:doctors)
  end

  it "returns all doctors for a patient" do
    doctor = Doctor.create!(name: "Dr. Who")
    Doctor.create!(name: "Dr. J")
    patient = doctor.patients.create!(name: "Bad Luck Brian")

    expect(patient.doctors).to eq [doctor]
  end
end
