class Wrapper
    def wrap(string, col_num)
        return nil if string.empty?
        if string.length > col_num
            return string.split(" ").join("\n")
        end
        string
    end
end

describe Wrapper do
    let(:wrapper) { Wrapper.new }
    context "given an empty string and 0 as arguments" do
        it "wrap returns nil" do
            # Arrange
            # Act
            # Assert
            expect(wrapper.wrap("", 0)).to eq(nil)
        end
    end

    context "given an input of 'a' and col_num is 1" do
        it "wrap returns 'a' without wrapping" do
            # Arrange
            # Act
            # Assert
            expect(wrapper.wrap("a", 1)).to eq("a")
        end
    end

    context "given an input of 'hello' and col_num is 5" do
        it "wrap returns 'hello' without wrapping" do
            # Arrange
            # Act
            # Assert
            expect(wrapper.wrap("hello", 5)).to eq("hello")
        end
    end

    context "given an input of 'hello world' and col_num is 11" do
        it "wrap returns 'hello world' without wrapping" do
            # Arrange
            # Act
            # Assert
            expect(wrapper.wrap("hello world", 11)).to eq("hello world")
        end
    end

    context "given an input of 'hello world' and col_num is 5" do
        it "wrap returns 'hello\nworld' with wrapping" do
            # Arrange
            # Act
            # Assert
            expect(wrapper.wrap("hello world", 5)).to eq("hello\nworld")
        end
    end

    context "given an input of 'hello month' and col_num is 5" do
        it "wrap returns 'hello\nmonth' with wrapping" do
            # Arrange
            # Act
            # Assert
            expect(wrapper.wrap("hello month", 5)).to eq("hello\nmonth")
        end
    end
end