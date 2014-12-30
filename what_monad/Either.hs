data Customer = Customer { name :: String, age :: Int }
data Order = Order { total :: Int }

data Error = NoName
           | NameTooLong
           | ImproperAge
           | TotalNotPositive

data ShipStatus = Success

createCustomer :: String -> Int -> Either Error Customer
createCustomer = undefined

createOrder :: Int -> Either Error Order
createOrder = undefined

ship :: Customer -> Order -> IO ShipStatus
ship = undefined


chain = do
    customer <- createCustomer "Louis" 37
    order <- createOrder 123
    return $ ship customer order

