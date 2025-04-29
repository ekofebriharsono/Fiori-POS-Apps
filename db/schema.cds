using {
    cuid,
    managed
} from '@sap/cds/common';

namespace pos.com;

entity Products : cuid, managed {
    name         : String;
    price_seller : Decimal;
    price_buyer  : Decimal;
    stock        : Integer;
    category     : Association to Categories;
}

entity Categories : cuid, managed {
    name : String;
    products : Association to many Products on products.category = $self;
}