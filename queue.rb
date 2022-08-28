class Queue
    def initialize
        @store = []
    end

    def enqueue(el)
        store.unshift(el)
    end

    def dequeue
        store.pop
    end

    def peek
        store.dup
    end

    private
    attr_reader :store
end