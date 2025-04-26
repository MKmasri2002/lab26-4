void main() {
  List<Map<String, dynamic>> orders = [
    {'id': 1, 'status': 'ready', 'item': 'burger'},
    {'id': 2, 'status': 'canceled', 'item': 'pizza'},
    {'id': 3, 'status': 'ready', 'item': 'fries'},
    {'id': 4, 'status': 'ready', 'item': 'nuggets'},
    {'id': 5, 'status': 'vip', 'item': 'pizza'},
    {'id': 6, 'status': 'ready', 'item': 'salad'},
  ];

  for (var order in orders) {
    if (order['status'] == 'canceled') {
      continue;
    }

    if (order['status'] == 'vip') {
      print('VIP order found! Prioritizing order ID: ${order['id']}');
      break;
    }

    print('Processing Order ID: ${order['id']}');

    if (order['id'] == 4) {
      print('Order ID 4 is taking too long! Alerting the kitchen!');
    }

    switch (order['item']) {
      case 'burger':
        print('Preparing a delicious burger!');
        break;
      case 'pizza':
        print('Preparing a hot pizza!');
        break;
      case 'fries':
        print('Preparing crispy fries!');
        break;
      case 'nuggets':
        print('Preparing tasty nuggets!');
        break;
      default:
        print('Unknown item: ${order['item']}');
    }

    print('----------------------------');
  }
}
