title "Testing Selinux"

control "os-02" do                        # A unique ID for this control
  impact 0.5                                # The criticality, if this control fails.
  title "Check Selinux status"             # A human-readable title
  describe selinux do                  # The actual test
    it { should be_installed }
    it { should be_permissive }
  end
end
