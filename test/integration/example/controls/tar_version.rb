# frozen_string_literal: true

control "tar_version" do
  describe "the tar version" do
    subject do
      command("tar --version | grep 'GNU tar'").stdout
    end

    it "is 1.29" do
      is_expected.to match /.*1\.29/
    end
  end
end
