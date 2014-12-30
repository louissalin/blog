data Customer = Customer { name :: String, age :: Int }
data Order = Order { total :: Int }

getCustomerById :: Int -> Maybe Customer
getCustomerById = undefined

getOrderById :: Int -> Maybe Order
getOrderById = undefined

ship :: Customer -> Order -> IO String
ship = undefined

chain = do
    customer <- getCustomerById 123
    order <- getOrderById 456
    return (ship customer order)
