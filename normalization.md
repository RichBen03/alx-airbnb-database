# Normalization Process for Airbnb Clone Database

The goal of normalization is to reduce redundancy and ensure data integrity by applying normalization up to the Third Normal Form (3NF).

---

## ✅ First Normal Form (1NF)

- All tables have atomic values (no arrays or repeating groups).
- Each record is uniquely identifiable using a primary key.
- Example: The `User` table stores a single phone number per row (atomic value).

---

## ✅ Second Normal Form (2NF)

- All non-key attributes depend on the full primary key.
- No partial dependency exists, as all primary keys are single-column (UUID).
- Example: In the `Booking` table, `start_date`, `end_date`, and `status` depend only on `booking_id`.

---

## ✅ Third Normal Form (3NF)

- All non-key attributes are functionally dependent only on the primary key.
- No transitive dependencies exist.

**Note**: The `total_price` in the `Booking` table is derived from `Property.price_per_night` × number of nights. While it introduces denormalization, it is retained for performance and historical accuracy. This is an intentional tradeoff.

---

## Conclusion

All six entities (`User`, `Property`, `Booking`, `Payment`, `Review`, `Message`) meet 3NF criteria, ensuring minimal redundancy, maintainability, and scalability.
