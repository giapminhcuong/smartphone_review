class Test < ApplicationRecord
    def selecting_format
        {'id' => id, 'text' => content}
    end
end
