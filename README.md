# haskell_practice

## References
* [Learn You a Haskell for Great Good!
by Miran Lipovaca](http://learnyouahaskell.com/chapters)
* [Real World Haskell
by Bryan O'Sullivan, Don Stewart, and John Goerzen](http://book.realworldhaskell.org/read/)


## Notes
* <b>Type classes</b>
  * <code>Eq</code> is used for types that support equality testing. The functions its members implement are == and /=
  * <code>Ord</code> is for types that have an ordering. Ord covers all the standard comparing functions such as >, <, >= and <=
  * <code>Ordering </code> is a type that can be <code>GT</code>, <code>LT</code> or <code>EQ</code>
  * Members of <code>Show</code> can be presented as strings
  * <code>Read</code> is sort of the opposite typeclass of <code>Show</code>
  * <code>Enum</code> members are sequentially ordered types — they can be enumerated. The main advantage of the <code>Enum</code> typeclass is that we can use its types in list ranges
  * <code>Bounded</code> members have an upper and a lower bound
  * <code>Num</code> is a numeric typeclass. To join <code>Num</code>, a type must already be friends with <code>Show</code> and <code>Eq</code>
  * <code>Integral</code> is also a numeric typeclass. <code>Integral</code> includes only integral (whole) numbers. In this typeclass are <code>Int</code> and <code>Integer</code>
  * <code>Floating</code> includes only floating point numbers, so <code>Float</code> and <code>Double</code>.
