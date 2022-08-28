class Map 
    def initialize
        @store = []
    end

    def set(key, value)
       pair_idx = store.index { |pair| pair[0] == key }

       if pair_idx
        store[pair_idx][1] = value
       else
        store.push([key, value])
       end

       value
    end

    def get(key)
        store.select { |pair| return pair if pair[0] == key }
    end

    def delete(key)
        value = get(key)
        store.reject { |pair| pair[0] == key }
        value
    end

    def show
        deep_dup(store)
    end

    private
    attr_reader :store
end