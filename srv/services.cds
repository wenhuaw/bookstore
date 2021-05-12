    using { sap.capire.bookstore as db } from '../db/schema';

    // Define Books Service
    service BooksService {
        @readonly entity Authors as projection on db.Authors;
    }

    // Define Orders Service
    service OrdersService {
        entity Orders as projection on db.Orders;
        entity OrderItems as projection on db.OrderItems;
    }

    // Define Test Service
    service TestService {
        entity Table1 as projection on db.Table1;
    }