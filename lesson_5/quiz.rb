=begin

Question 2:

a < b
c == b
c < d

[a, b, c, d]

#sort sorts in ascending order by default.

=end

=begin

Question 5:

Question: Should the result be mutated, or simply transformed?
Assumption: Yes

=end

todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  },
  {
    id: 2,
    list_name: 'Homework',
    todos: [
      { id: 1, name: 'Math', completed: false },
      { id: 2, name: 'English', completed: false }
    ]
  }
]

=begin

Question 8:

Idea:

1. Compact the initial data structure into customers, instead of orders
- Each customer's orders are contained within the customer entry
2. Extract data from the orders for each customers

=end

order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]

=begin

Breakdown

a.

1. Build a hash with customer orders
2. Retrieve the values from that hash to create an array of customer orders
- The values themselves, therefore must be hashes w/ the customer id, name, and
orders

This won't work properly, because the orders are being bult as arrays, not
as hashes as key-value pairs. 

b. This won't work because the orders for a given customer do not accumulate;
they are simply replaced by a single-element array with the order of the current
iteration.

c. 
If customer orders already contains the customer, append a new order
directly to that customer's orders.
- The order is in the form of a hash
- The order data values are in the form of hashes w/ the customer id, name, & orders

d. This won't work, because #map will transform each order into a separate customer,
disregarding the fact that a customer can have multiple orders.

=end

# Question 9

# Input:

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]

# Expected results:

all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]

fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
  # rest of data
]

=begin

a.
- Transform the 2 customers/orders; for each customer:
  - Initialize the hash without the orders
- At each index in the customer orders, index into all orders and add the total. order value

b. Do the same thing as a, but in the reverse order

c.
- Iterate over each hash containing the customer data
  - Initalize the resulting hash
  - Iterate over the orders in the customer data hash
    - Add the order value for each order to the correct key in the resulting hash
  - Append the resulting hash to the orders

d. This converts the orders into arrays -- not hashes

=end

# Question 1

=begin

The bug lies in the fact that the inner block to #reduce might not return a
numerical value. If the order is not fulfilled, then line 10 will return nil
instead of the current total. To fix this, we'd want to return the current total
if the order is not fulfilled. So line 10 is the root of the bug.

=end