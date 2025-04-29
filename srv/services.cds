using { pos.com as pos } from '../db/schema';

service AdminService {
    entity Products as projection on pos.Products;
    entity Categories as projection on pos.Categories;
}