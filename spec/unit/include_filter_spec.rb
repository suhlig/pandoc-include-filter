# frozen_string_literal: true

require 'pandoc/include_filter'

describe Pandoc::IncludedFile do
  subject(:included_file_path) { described_class.new(path).pathname }

  context 'with a plain path' do
    let(:path) { 'spec/fixtures/input.md' }

    it 'resolves the path' do
      expect(included_file_path.to_s).to end_with('spec/fixtures/input.md')
    end
  end

  context 'with a path in single quotes' do
    let(:path) { "'spec/fixtures/input.md'" }

    it 'resolves the path' do
      expect(included_file_path.to_s).to end_with('spec/fixtures/input.md')
    end
  end

  context 'with a path in double quotes' do
    let(:path) { '"spec/fixtures/input.md"' }

    it 'resolves the path' do
      expect(included_file_path.to_s).to end_with('spec/fixtures/input.md')
    end
  end
end
