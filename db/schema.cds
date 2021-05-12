namespace sap.capire.bookstore;

    using { Currency, cuid, managed }      from '@sap/cds/common';

    entity Authors : cuid {
        firstname : String(111);
        lastname  : String(111);
    }

    @Capabilities.Updatable: false
    entity Orders : cuid, managed {
        items    : Composition of many OrderItems on items.parent = $self;
        total    : Decimal(9,2) @readonly;
        currency : Currency;
    }

    @Capabilities.Updatable: false
    entity OrderItems : cuid {
        parent    : Association to Orders not null;
        book_ID   : UUID;
        amount    : Integer;
        netAmount : Decimal(9,2) @readonly;
    }

    @Capabilities.Updatable: true
    entity Table1 : cuid, managed {
        col1 : String(111);
        col2  : String(111);
    }
    