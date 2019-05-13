I am the superclass for a type of DomainObjects: Each such object can be of multiple types.
If #fits: returns true, it is safe to call the other functions (e.g. rack operations) on that type.