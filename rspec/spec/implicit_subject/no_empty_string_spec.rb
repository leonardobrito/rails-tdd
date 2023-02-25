# frozen_string_literal: true

require 'no_empty_string'

describe String do
  describe NoEmptyString do
    it "should be I'm not empty string" do
      expect(subject).to eq("I'm not empty string")
    end
  end
end
