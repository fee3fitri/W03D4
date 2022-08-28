class Stack
    def initialize
        @store = []
    end

    def push(el)
        store.push(el)
    end

    def pop
        store.pop
    end

    def peek
        store.last
    end

    private
    attr_reader :store
end