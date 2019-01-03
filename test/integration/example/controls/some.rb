# frozen_string_literal: true

some_output = attribute("some_output", {})

control "some" do
  describe "some output" do
    subject do
      some_output
    end

    it "is some" do
      is_expected.to match /some/
    end
  end
end
