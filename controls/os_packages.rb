title "Testing packages"

control "os-03" do                        # A unique ID for this control
  impact 0.5                                # The criticality, if this control fails.
  title "Check epel-release"             # A human-readable title
  describe package('epel-release') do                  # The actual test
    it { should be_installed }
  end
end

control "os-04" do                        # A unique ID for this control
  impact 0.5                                # The criticality, if this control fails.
  title "Check ansible"             # A human-readable title
  describe package('ansible')do                  # The actual test
    it { should be_installed }
  end
end
