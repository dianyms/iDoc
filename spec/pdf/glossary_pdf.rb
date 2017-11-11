require 'pdf/inspector'

describe Glossary do
  let(:cert) { Glossary.new("/tmp/certificate.pdf") }
  let(:pdf) { cert.pdf }
  let(:text) { PDF::Inspector::Text.analyze(pdf.render).strings.join(" ").squish }

  it "includes workshop name" do
    text.should contain("Ruby Metaprogramming")
  end
end