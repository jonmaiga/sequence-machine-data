import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A318800: Number of rooted trees with n nodes such that no more than six subtrees of the same size extend from the same node.

The programs for A318800, there is no canonical definition to state claims against.
-/

/-! ## A318800.P17483860855941753013

`A318753(A055999(n+4)-1)`
-/

namespace A318800.P17483860855941753013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A055999 (n + 4) - 1).toNat

end

end A318800.P17483860855941753013

/-! ## A318800.P3458568770832254805

`A318753(A052905(n+4)-2)`
-/

namespace A318800.P3458568770832254805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A052905 (n + 4) - 2).toNat

end

end A318800.P3458568770832254805

/-! ## A318800.P198022774515830945

`A318753(A000096(n+6)-6)`
-/

namespace A318800.P198022774515830945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A000096 (n + 6) - 6).toNat

end

end A318800.P198022774515830945

/-! ## A318800.P10011112296028766790

`A318753(Δ[A023551(n+2)]-1)`
-/

namespace A318800.P10011112296028766790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (f1 (n + 1) - f1 n - 1).toNat

end

end A318800.P10011112296028766790

/-! ## A318800.P11096104919521683856

`A318753(Δ[A026054(n+4)]-1)`
-/

namespace A318800.P11096104919521683856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (f1 (n + 1) - f1 n - 1).toNat

end

end A318800.P11096104919521683856

/-! ## A318800.P10973966750885574184

`A318753(A055998(A020710(n))-4)`
-/

namespace A318800.P10973966750885574184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A055998 (A020710 n).toNat - 4).toNat

end

end A318800.P10973966750885574184

/-! ## A318800.P3530243437408714766

`A318753(A104675(n+2)-A027379(n+1))`
-/

namespace A318800.P3530243437408714766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A104675 (n + 2) - A027379 (n + 1)).toNat

end

end A318800.P3530243437408714766

/-! ## A318800.P5008022249890943861

`A318753(A104675(n+2)-A055998(n+1))`
-/

namespace A318800.P5008022249890943861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A104675 (n + 2) - A055998 (n + 1)).toNat

end

end A318800.P5008022249890943861

/-!
# A318801: Number of rooted trees with n nodes such that no more than seven subtrees of the same size extend from the same node.

The programs for A318801, there is no canonical definition to state claims against.
-/

/-! ## A318801.P5410364011925827627

`A318753(A055999(n+5)-2)`
-/

namespace A318801.P5410364011925827627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A055999 (n + 5) - 2).toNat

end

end A318801.P5410364011925827627

/-! ## A318801.P9889708209849775587

`A318753(A000217(n+8)-8)`
-/

namespace A318801.P9889708209849775587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A000217 (n + 8) - 8).toNat

end

end A318801.P9889708209849775587

/-! ## A318801.P38000485222304468

`A318753(A167614(n+2)+A016897(n+3))`
-/

namespace A318801.P38000485222304468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A167614 (n + 2) + A016897 (n + 3)).toNat

end

end A318801.P38000485222304468

/-! ## A318801.P11962662992644153152

`A318753(A005843(n+4)+A000096(n+5))`
-/

namespace A318801.P11962662992644153152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A005843 (n + 4) + A000096 (n + 5)).toNat

end

end A318801.P11962662992644153152

/-! ## A318801.P1930293000638716481

`A318753(A004275(n+5)+A000096(n+5))`
-/

namespace A318801.P1930293000638716481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A004275 (n + 5) + A000096 (n + 5)).toNat

end

end A318801.P1930293000638716481

/-!
# A318802: Number of rooted trees with n nodes such that no more than eight subtrees of the same size extend from the same node.

The programs for A318802, there is no canonical definition to state claims against.
-/

/-! ## A318802.P12446741290327266158

`A318753(A055999(n+6)-3)`
-/

namespace A318802.P12446741290327266158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A055999 (n + 6) - 3).toNat

end

end A318802.P12446741290327266158

/-! ## A318802.P11957123583879019992

`A318753(A000217(n+9)-9)`
-/

namespace A318802.P11957123583879019992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A000217 (n + 9) - 9).toNat

end

end A318802.P11957123583879019992

/-! ## A318802.P2280550555535086943

`A318753(n+1+A000096(n+7))`
-/

namespace A318802.P2280550555535086943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 ((n + 1 : ℤ) + A000096 (n + 7)).toNat

end

end A318802.P2280550555535086943

/-! ## A318802.P81246937673284832

`A318753(A027693(n+5)-A000124(n+1))`
-/

namespace A318802.P81246937673284832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A027693 (n + 5) - A000124 (n + 1)).toNat

end

end A318802.P81246937673284832

/-!
# A318803: Number of rooted trees with n nodes such that no more than nine subtrees of the same size extend from the same node.

The programs for A318803, there is no canonical definition to state claims against.
-/

/-! ## A318803.P9890431344219232650

`A318753(A055999(n+7)-4)`
-/

namespace A318803.P9890431344219232650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A055999 (n + 7) - 4).toNat

end

end A318803.P9890431344219232650

/-! ## A318803.P7163472932910250880

`A318753(A034856(n+9)-8)`
-/

namespace A318803.P7163472932910250880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A034856 (n + 9) - 8).toNat

end

end A318803.P7163472932910250880

/-! ## A318803.P11378072503577346121

`A318753(A000217(n+10)-10)`
-/

namespace A318803.P11378072503577346121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A000217 (n + 10) - 10).toNat

end

end A318803.P11378072503577346121

/-! ## A318803.P107808080216101831

`A318753(A005843(n+5)+A000096(n+7))`
-/

namespace A318803.P107808080216101831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A005843 (n + 5) + A000096 (n + 7)).toNat

end

end A318803.P107808080216101831

/-! ## A318803.P10968696603501913109

`A318753(A004275(n+6)+A000096(n+7))`
-/

namespace A318803.P10968696603501913109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A004275 (n + 6) + A000096 (n + 7)).toNat

end

end A318803.P10968696603501913109

/-! ## A318803.P8101507841785452138

`A318753(A133263(n+14)-A016825(n+15))`
-/

namespace A318803.P8101507841785452138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A133263 (n + 14) - A016825 (n + 15)).toNat

end

end A318803.P8101507841785452138

/-!
# A318804: Number of rooted trees with n nodes such that no more than ten subtrees of the same size extend from the same node.

The programs for A318804, there is no canonical definition to state claims against.
-/

/-! ## A318804.P13349274925271837180

`A318753(A052905(n+8)-6)`
-/

namespace A318804.P13349274925271837180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A052905 (n + 8) - 6).toNat

end

end A318804.P13349274925271837180

/-! ## A318804.P4901664672031777714

`A318753(A055998(n+9)-8)`
-/

namespace A318804.P4901664672031777714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A055998 (n + 9) - 8).toNat

end

end A318804.P4901664672031777714

/-! ## A318804.P8751875951342831864

`A318753(A000217(n+11)-11)`
-/

namespace A318804.P8751875951342831864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A000217 (n + 11) - 11).toNat

end

end A318804.P8751875951342831864

/-! ## A318804.P17597374386386366298

`A318753(n+1+A000096(n+9))`
-/

namespace A318804.P17597374386386366298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 ((n + 1 : ℤ) + A000096 (n + 9)).toNat

end

end A318804.P17597374386386366298

/-! ## A318804.P8702406207180631427

`A318753(2*n+A167487(n+8)+3)`
-/

namespace A318804.P8702406207180631427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 ((2 * n : ℤ) + (A167487 (n + 8) + 3)).toNat

end

end A318804.P8702406207180631427

/-!
# A318805: Array read by antidiagonals: T(n,k) is the number of inequivalent symmetric nonnegative integer n X n matrices with sum of elements equal to k, under row and column permutations.

The programs for A318805, there is no canonical definition to state claims against.
-/

/-! ## A318805.P16389090183795743864

`A257564(3*A318795(n+1))`
-/

namespace A318805.P16389090183795743864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (3 * A318795 (n + 1)).toNat

end

end A318805.P16389090183795743864

/-! ## A318805.P14327926611879174123

`A007828(2*A318795(n+1)+1)`
-/

namespace A318805.P14327926611879174123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007828 (2 * A318795 (n + 1) + 1).toNat

end

end A318805.P14327926611879174123

/-! ## A318805.P10209723235443266961

`A007828(A005408(A318795(n+1)))`
-/

namespace A318805.P10209723235443266961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007828 (A005408 (A318795 (n + 1)).toNat).toNat

end

end A318805.P10209723235443266961

/-! ## A318805.P7629058898438627920

`A163352(A089627(n)+A007318(n))`
-/

namespace A318805.P7629058898438627920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A089627 n + A007318 n).toNat

end

end A318805.P7629058898438627920

/-! ## A318805.P3060547886624639775

`A058318(A141724(n))`
-/

namespace A318805.P3060547886624639775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (A141724 n).toNat

end

end A318805.P3060547886624639775

/-!
# A318806: Triangular array read by rows, where T(n,k) is the number of almost distinct partitions of n in which every part is <= k for 1 <= k <= n.

The programs for A318806, there is no canonical definition to state claims against.
-/

/-! ## A318806.P10990151329621660331

`A345377(A002262(n)^A026834(n+1))`
-/

namespace A318806.P10990151329621660331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345377 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A026834 (n + 1) : ℤ))).toNat

end

end A318806.P10990151329621660331

/-! ## A318806.P6680025882210593618

`A008619(A330960(record[A059893(n+1)]))`
-/

namespace A318806.P6680025882210593618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A330960 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A318806.P6680025882210593618

/-! ## A318806.P15002147758377265285

`A008619(A330960(record[A139708(n+1)]))`
-/

namespace A318806.P15002147758377265285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A330960 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A318806.P15002147758377265285

/-! ## A318806.P4201830986615473049

`A081604(A153278(n+1)%A338516(n+1))`
-/

namespace A318806.P4201830986615473049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Int.tmod (A153278 (n + 1)) (A338516 (n + 1))).toNat

end

end A318806.P4201830986615473049

/-! ## A318806.P14137833964291473222

`A382397(A328807(n))`
-/

namespace A318806.P14137833964291473222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A328807 n).toNat

end

end A318806.P14137833964291473222

/-!
# A318808: Number of Lyndon permutations of a multiset whose multiplicities are the prime indices of n > 1.

The programs for A318808, there is no canonical definition to state claims against.
-/

/-! ## A318808.P10253104293939922219

`A298941(lcm(2, A181821(n+1)))`
-/

namespace A318808.P10253104293939922219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (Int.lcm 2 (A181821 (n + 1)))

end

end A318808.P10253104293939922219

/-! ## A318808.P9860291785608022

`A298941(A181821(n+1)+A000007(n))`
-/

namespace A318808.P9860291785608022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (A181821 (n + 1) + A000007 n).toNat

end

end A318808.P9860291785608022

/-! ## A318808.P18415934353944686484

`A298941(A181821(n+1)+A000038(n))`
-/

namespace A318808.P18415934353944686484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (A181821 (n + 1) + A000038 n).toNat

end

end A318808.P18415934353944686484

/-! ## A318808.P14700208886892676510

`A298941(A181821(n+1)+A169585(n))`
-/

namespace A318808.P14700208886892676510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (A181821 (n + 1) + A169585 n).toNat

end

end A318808.P14700208886892676510

/-! ## A318808.P11179801745136239264

`A298941(A054977(n)*A181821(n+1))`
-/

namespace A318808.P11179801745136239264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (A054977 n * A181821 (n + 1)).toNat

end

end A318808.P11179801745136239264

/-!
# A318809: Number of necklace permutations of the multiset of prime indices of n > 1.

The programs for A318809, there is no canonical definition to state claims against.
-/

/-! ## A318809.P15671876611695881365

`10%floor(∏{e}[(n+1)², 2-acot(#)])+1`
-/

namespace A318809.P15671876611695881365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 ⌊∏ p ∈ Nat.primeFactors (f1 n), (2 - SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋ + 1

end

end A318809.P15671876611695881365

/-! ## A318809.P2024282228785930730

`ceil(floor(∏{e}[(n+1)², 2-acot(#)])²/7)`
-/

namespace A318809.P2024282228785930730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊∏ p ∈ Nat.primeFactors (f1 n), (2 - SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋ ^ 2 : ℚ) / 7⌉

end

end A318809.P2024282228785930730

/-! ## A318809.P11341623909312886054

`∏{p}[1-floor(∏{e}[(n+1)², 2-acot(#)]), #]`
-/

namespace A318809.P11341623909312886054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊∏ p ∈ Nat.primeFactors (f2 n), (2 - SequenceMachineLib.acot (Nat.factorization (f2 n) p : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A318809.P11341623909312886054

/-! ## A318809.P4814358060481750889

`ceil(floor(∑{e}[n+1, #]!/∏{e}[n+1, #!])/5)`
-/

namespace A318809.P4814358060481750889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)⌋ : ℚ) / 5⌉

end

end A318809.P4814358060481750889

/-! ## A318809.P7139083624777316044

`ceil(ceil(∑{e}[n+1, #]!/∏{e}[n+1, #!])/5)`
-/

namespace A318809.P7139083624777316044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)⌉ : ℚ) / 5⌉

end

end A318809.P7139083624777316044

/-! ## A318809.P18027763284326088913

`floor(sqrt(A334933(n+1)))`
-/

namespace A318809.P18027763284326088913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A334933 (n + 1))

end

end A318809.P18027763284326088913

/-! ## A318809.P4710838402753332544

`ceil(A008480(n+1)/5)`
-/

namespace A318809.P4710838402753332544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008480 (n + 1) : ℚ) / 5⌉

end

end A318809.P4710838402753332544

/-! ## A318809.P5811629385233252302

`ceil(A050320(n+1)/e)`
-/

namespace A318809.P5811629385233252302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050320 (n + 1) : ℝ) / Real.exp 1⌉

end

end A318809.P5811629385233252302

/-! ## A318809.P1774472756824005749

`∏{p}[1-A086971(n+1), #]`
-/

namespace A318809.P1774472756824005749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A318809.P1774472756824005749

/-! ## A318809.P3068643880602460198

`A000045(floor(∏{e}[(n+1)², 2-acot(#)]))`
-/

namespace A318809.P3068643880602460198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊∏ p ∈ Nat.primeFactors (f1 n), (2 - SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋.toNat

end

end A318809.P3068643880602460198

/-!
# A318811: Expansion of e.g.f. exp(Sum_{k>=1} phi(k)*x^k), where phi is the Euler totient function A000010.

The programs for A318811, there is no canonical definition to state claims against.
-/

/-! ## A318811.P11235551964267854848

`A222251(A200793(n))`
-/

namespace A318811.P11235551964267854848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A200793 n).toNat

end

end A318811.P11235551964267854848

/-! ## A318811.P8217065339174347570

`A242112(∑[A034742(n+1)]²)`
-/

namespace A318811.P8217065339174347570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A318811.P8217065339174347570

/-!
# A318812: Number of total multiset partitions of the multiset of prime indices of n. Number of total factorizations of n.

The programs for A318812, there is no canonical definition to state claims against.
-/

/-! ## A318812.P7570047811011377808

`A318846(A181819(n+1))`
-/

namespace A318812.P7570047811011377808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318846 (A181819 (n + 1)).toNat

end

end A318812.P7570047811011377808

/-! ## A318812.P7335846724909115460

`A371477(A317176(n+1))`
-/

namespace A318812.P7335846724909115460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (A317176 (n + 1)).toNat

end

end A318812.P7335846724909115460

/-! ## A318812.P11283869232503357188

`A317176(A061898(n+1))`
-/

namespace A318812.P11283869232503357188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317176 (A061898 (n + 1)).toNat

end

end A318812.P11283869232503357188

/-! ## A318812.P17475577164127890387

`A317176(A064614(n+1))`
-/

namespace A318812.P17475577164127890387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317176 (A064614 (n + 1)).toNat

end

end A318812.P17475577164127890387

/-! ## A318812.P5849826980607559693

`A094838(A292504(n+1))`
-/

namespace A318812.P5849826980607559693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094838 (A292504 (n + 1)).toNat

end

end A318812.P5849826980607559693

/-!
# A318813: Number of balanced reduced multisystems with n atoms all equal to 1.

The programs for A318813, there is no canonical definition to state claims against.
-/

/-! ## A318813.P1768006673673192265

`ceil(A330679(n+1)/2)`
-/

namespace A318813.P1768006673673192265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330679 (n + 1) : ℚ) / 2⌉

end

end A318813.P1768006673673192265

/-! ## A318813.P9690231074550223970

`A330776(∑[n]+1)`
-/

namespace A318813.P9690231074550223970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330776 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318813.P9690231074550223970

/-! ## A318813.P12552703955810206166

`lcm((-1)^∑[n], A330776(A000124(n)))`
-/

namespace A318813.P12552703955810206166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (A330776 (A000124 n).toNat)

end

end A318813.P12552703955810206166

/-! ## A318813.P6081224758589492493

`A330776(A000124(n))%A330767(n)`
-/

namespace A318813.P6081224758589492493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330776 (A000124 n).toNat) (A330767 n)

end

end A318813.P6081224758589492493

/-!
# A318814: Expansion of e.g.f. Product_{k>=1} ((1 + x^k)/(1 - x^k))^(sigma(k)/k).

The programs for A318814, there is no canonical definition to state claims against.
-/

/-! ## A318814.P10573661069407267856

`A292248(A000041(2*n)*A276840(n))`
-/

namespace A318814.P10573661069407267856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292248 (A000041 (2 * n) * A276840 n).toNat

end

end A318814.P10573661069407267856

/-!
# A318817: Number of rooted trees with n nodes such that two equals the maximal number of subtrees of the same size extending from the same node.

The programs for A318817, there is no canonical definition to state claims against.
-/

/-! ## A318817.P11907048097617152399

`A213920(n+2)-A032305(n+2)`
-/

namespace A318817.P11907048097617152399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213920 (n + 2) - A032305 (n + 2)

end

end A318817.P11907048097617152399

/-! ## A318817.P12752425400783357454

`A318754(∑[n+1]+3)`
-/

namespace A318817.P12752425400783357454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A318817.P12752425400783357454

/-! ## A318817.P18007282596380354060

`A318754(A152949(n+3))+A024155(2*n+1)`
-/

namespace A318817.P18007282596380354060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A152949 (n + 3)).toNat + A024155 (2 * n + 1)

end

end A318817.P18007282596380354060

/-! ## A318817.P18384326214597472819

`A349136(2*(n+2))+A318754(A152949(n+3))`
-/

namespace A318817.P18384326214597472819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (2 * (n + 2)) + A318754 (A152949 (n + 3)).toNat

end

end A318817.P18384326214597472819

/-! ## A318817.P12703664667789906666

`A318754(A152949(n+3))+A010051(A255411(n+1))`
-/

namespace A318817.P12703664667789906666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A152949 (n + 3)).toNat + A010051 (A255411 (n + 1)).toNat

end

end A318817.P12703664667789906666

/-! ## A318817.P17004036225471569967

`A318754(A152949(n+3))*A351545(A351545(n+1))`
-/

namespace A318817.P17004036225471569967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A152949 (n + 3)).toNat * A351545 (A351545 (n + 1)).toNat

end

end A318817.P17004036225471569967

/-! ## A318817.P4192069192473448512

`A318754(A152949(n+3))+A010051(A001567(n+1))`
-/

namespace A318817.P4192069192473448512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A152949 (n + 3)).toNat + A010051 (A001567 (n + 1)).toNat

end

end A318817.P4192069192473448512

/-!
# A318818: Number of rooted trees with n nodes such that three equals the maximal number of subtrees of the same size extending from the same node.

The programs for A318818, there is no canonical definition to state claims against.
-/

/-! ## A318818.P13492153510516792082

`A318797(n+3)-A213920(n+3)`
-/

namespace A318818.P13492153510516792082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318797 (n + 3) - A213920 (n + 3)

end

end A318818.P13492153510516792082

/-! ## A318818.P11752349503092075428

`A318754(∑[n+2]+5)`
-/

namespace A318818.P11752349503092075428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A318818.P11752349503092075428

/-! ## A318818.P7929216382940245944

`lcm(A020985(n), A318754(A000096(n+1)+5))`
-/

namespace A318818.P7929216382940245944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A318754 (A000096 (n + 1) + 5).toNat)

end

end A318818.P7929216382940245944

/-! ## A318818.P1677059655924884676

`A318754(A000096(n+1)+5)+A171765(A008687(n))`
-/

namespace A318818.P1677059655924884676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000096 (n + 1) + 5).toNat + A171765 (A008687 n).toNat

end

end A318818.P1677059655924884676

/-! ## A318818.P4873764298261227038

`A318754(A000096(n+1)+5)%A033191(n+1)`
-/

namespace A318818.P4873764298261227038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318754 (A000096 (n + 1) + 5).toNat) (A033191 (n + 1))

end

end A318818.P4873764298261227038

/-! ## A318818.P3922698972113631942

`A318754(A000096(n+1)+5)%A225887(n)`
-/

namespace A318818.P3922698972113631942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318754 (A000096 (n + 1) + 5).toNat) (A225887 n)

end

end A318818.P3922698972113631942

/-!
# A318819: Number of rooted trees with n nodes such that four equals the maximal number of subtrees of the same size extending from the same node.

The programs for A318819, there is no canonical definition to state claims against.
-/

/-! ## A318819.P10324206592678794839

`A318798(n+4)-A318797(n+4)`
-/

namespace A318819.P10324206592678794839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318798 (n + 4) - A318797 (n + 4)

end

end A318819.P10324206592678794839

/-! ## A318819.P5045223322220840230

`A318754(A167499(n+2))`
-/

namespace A318819.P5045223322220840230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A167499 (n + 2)).toNat

end

end A318819.P5045223322220840230

/-! ## A318819.P12513693277150980539

`A318754(A052905(n)+10)`
-/

namespace A318819.P12513693277150980539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A052905 n + 10).toNat

end

end A318819.P12513693277150980539

/-! ## A318819.P1784291409366037964

`A318754(A055999(n)+11)`
-/

namespace A318819.P1784291409366037964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A055999 n + 11).toNat

end

end A318819.P1784291409366037964

/-! ## A318819.P2327471316275746746

`A318754(A167614(n+2)+2)`
-/

namespace A318819.P2327471316275746746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A167614 (n + 2) + 2).toNat

end

end A318819.P2327471316275746746

/-! ## A318819.P7346075405831147566

`A318754(A000124(n+3)+4)`
-/

namespace A318819.P7346075405831147566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000124 (n + 3) + 4).toNat

end

end A318819.P7346075405831147566

/-!
# A318820: Number of rooted trees with n nodes such that five equals the maximal number of subtrees of the same size extending from the same node.

The programs for A318820, there is no canonical definition to state claims against.
-/

/-! ## A318820.P11280311331834250268

`A318799(n+5)-A318798(n+5)`
-/

namespace A318820.P11280311331834250268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318799 (n + 5) - A318798 (n + 5)

end

end A318820.P11280311331834250268

/-! ## A318820.P5338913740773932384

`A318799(A020705(n)+1)%A318798(n+5)`
-/

namespace A318820.P5338913740773932384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318799 (A020705 n + 1).toNat) (A318798 (n + 5))

end

end A318820.P5338913740773932384

/-! ## A318820.P7930641685321844874

`A318754(4*(n+4)+∑[n])`
-/

namespace A318820.P7930641685321844874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (4 * (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318820.P7930641685321844874

/-! ## A318820.P8925490505520259647

`A106614(A318862(n+5))`
-/

namespace A318820.P8925490505520259647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A318862 (n + 5)).toNat

end

end A318820.P8925490505520259647

/-! ## A318820.P9581121639944564292

`A004525(2*A318862(n+5))`
-/

namespace A318820.P9581121639944564292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A318862 (n + 5)).toNat

end

end A318820.P9581121639944564292

/-!
# A318821: Number of rooted trees with n nodes such that six equals the maximal number of subtrees of the same size extending from the same node.

The programs for A318821, there is no canonical definition to state claims against.
-/

/-! ## A318821.P11065799315418366143

`A318800(n+6)-A318799(n+6)`
-/

namespace A318821.P11065799315418366143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318800 (n + 6) - A318799 (n + 6)

end

end A318821.P11065799315418366143

/-! ## A318821.P14488765317697858484

`A318754(A167487(n+4))`
-/

namespace A318821.P14488765317697858484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A167487 (n + 4)).toNat

end

end A318821.P14488765317697858484

/-! ## A318821.P17882250481369094201

`A318754(A167499(n+4)+2)`
-/

namespace A318821.P17882250481369094201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A167499 (n + 4) + 2).toNat

end

end A318821.P17882250481369094201

/-! ## A318821.P1321776598784488851

`A318754(A000124(n+5)+6)`
-/

namespace A318821.P1321776598784488851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000124 (n + 5) + 6).toNat

end

end A318821.P1321776598784488851

/-! ## A318821.P16683231886640816451

`A318754(A000217(n+6)-(n-1))`
-/

namespace A318821.P16683231886640816451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000217 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A318821.P16683231886640816451

/-! ## A318821.P3167407583132700238

`A318754(Δ[A023551(n+2)]-2*n)`
-/

namespace A318821.P3167407583132700238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A318821.P3167407583132700238

/-! ## A318821.P17493391936875774596

`A318754(A027379(n+5)-A005408(n+1))`
-/

namespace A318821.P17493391936875774596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A027379 (n + 5) - A005408 (n + 1)).toNat

end

end A318821.P17493391936875774596

/-!
# A318822: Number of rooted trees with n nodes such that seven equals the maximal number of subtrees of the same size extending from the same node.

The programs for A318822, there is no canonical definition to state claims against.
-/

/-! ## A318822.P18363402831597620303

`A318801(n+7)-A318800(n+7)`
-/

namespace A318822.P18363402831597620303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318801 (n + 7) - A318800 (n + 7)

end

end A318822.P18363402831597620303

/-! ## A318822.P8799773838467784178

`A318754(A167614(n+5)+5)`
-/

namespace A318822.P8799773838467784178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A167614 (n + 5) + 5).toNat

end

end A318822.P8799773838467784178

/-! ## A318822.P6135610104415147012

`A318754(A000124(n+6)+7)`
-/

namespace A318822.P6135610104415147012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000124 (n + 6) + 7).toNat

end

end A318822.P6135610104415147012

/-! ## A318822.P18284157347698318864

`A318754(A000217(n+6)+8)`
-/

namespace A318822.P18284157347698318864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000217 (n + 6) + 8).toNat

end

end A318822.P18284157347698318864

/-! ## A318822.P8696351866443414871

`A318754(A046691(n+6)-A005408(n+1))`
-/

namespace A318822.P8696351866443414871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A046691 (n + 6) - A005408 (n + 1)).toNat

end

end A318822.P8696351866443414871

/-! ## A318822.P7922742189603278155

`A318754(A046691(n+1)+A008585(n+9))`
-/

namespace A318822.P7922742189603278155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A046691 (n + 1) + A008585 (n + 9)).toNat

end

end A318822.P7922742189603278155

/-!
# A318823: Number of rooted trees with n nodes such that eight equals the maximal number of subtrees of the same size extending from the same node.

The programs for A318823, there is no canonical definition to state claims against.
-/

/-! ## A318823.P5945154305316391318

`A318754(A000124(n+7)+8)`
-/

namespace A318823.P5945154305316391318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000124 (n + 7) + 8).toNat

end

end A318823.P5945154305316391318

/-! ## A318823.P334404547797927355

`A318754(A134869(n+7)+8)`
-/

namespace A318823.P334404547797927355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A134869 (n + 7) + 8).toNat

end

end A318823.P334404547797927355

/-! ## A318823.P5950939672734335145

`A318754(A000217(n+8)-(n-1))`
-/

namespace A318823.P5950939672734335145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000217 (n + 8) - ((n : ℤ) - 1)).toNat

end

end A318823.P5950939672734335145

/-! ## A318823.P5252658322804141276

`A318754(A024000(n)+A000217(n+8))`
-/

namespace A318823.P5252658322804141276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A024000 n + A000217 (n + 8)).toNat

end

end A318823.P5252658322804141276

/-! ## A318823.P9756124226175858024

`A318754(A027379(n+7)-A005408(n+2))`
-/

namespace A318823.P9756124226175858024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A027379 (n + 7) - A005408 (n + 2)).toNat

end

end A318823.P9756124226175858024

/-! ## A318823.P6330811434516138859

`A318754(A000096(n+10)-A008574(n+7))`
-/

namespace A318823.P6330811434516138859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000096 (n + 10) - A008574 (n + 7)).toNat

end

end A318823.P6330811434516138859

/-!
# A318824: Number of rooted trees with n nodes such that nine equals the maximal number of subtrees of the same size extending from the same node.

The programs for A318824, there is no canonical definition to state claims against.
-/

/-! ## A318824.P3105817422526165031

`A318754(A167499(n+7)+5)`
-/

namespace A318824.P3105817422526165031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A167499 (n + 7) + 5).toNat

end

end A318824.P3105817422526165031

/-! ## A318824.P6890658734592728190

`A318754(A000124(n+8)+9)`
-/

namespace A318824.P6890658734592728190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000124 (n + 8) + 9).toNat

end

end A318824.P6890658734592728190

/-! ## A318824.P3745062664963039896

`A318754(A000217(n+8)+10)`
-/

namespace A318824.P3745062664963039896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000217 (n + 8) + 10).toNat

end

end A318824.P3745062664963039896

/-! ## A318824.P16394821392457387058

`A318754(A167614(n+8)-(n+2))`
-/

namespace A318824.P16394821392457387058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A167614 (n + 8) - (n + 2 : ℤ)).toNat

end

end A318824.P16394821392457387058

/-! ## A318824.P18212528422629084474

`A318754(A046691(n+8)-A005408(n+2))`
-/

namespace A318824.P18212528422629084474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A046691 (n + 8) - A005408 (n + 2)).toNat

end

end A318824.P18212528422629084474

/-!
# A318825: Number of rooted trees with n nodes such that ten equals the maximal number of subtrees of the same size extending from the same node.

The programs for A318825, there is no canonical definition to state claims against.
-/

/-! ## A318825.P17081043483063066489

`A318754(A000124(n+9)+10)`
-/

namespace A318825.P17081043483063066489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000124 (n + 9) + 10).toNat

end

end A318825.P17081043483063066489

/-! ## A318825.P4190716699502369175

`A318754(A000217(n+10)-(n-1))`
-/

namespace A318825.P4190716699502369175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A000217 (n + 10) - ((n : ℤ) - 1)).toNat

end

end A318825.P4190716699502369175

/-! ## A318825.P2470692387646555029

`A318867(lcm(n, A089867(n)))`
-/

namespace A318825.P2470692387646555029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318867 (Int.lcm (n : ℤ) (A089867 n) + 10)

end

end A318825.P2470692387646555029

/-! ## A318825.P4831701980032273287

`A318867(n)%∑[A293184(n+1)]`
-/

namespace A318825.P4831701980032273287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318867 (n + 10)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318825.P4831701980032273287

/-! ## A318825.P12324217165632382357

`A350139(A033873(n))+A318867(n)`
-/

namespace A318825.P12324217165632382357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (A033873 n).toNat + A318867 (n + 10)

end

end A318825.P12324217165632382357

/-!
# A318827: a(n) = n - gcd(n - 1, phi(n)).

The programs for A318827, the canonical program `A318827.P13132308658619953829` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318827 has offset 1).

The definition of A318827 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318827.P13132308658619953829

`n+1-A049559(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A318827

/-- `n+1-A049559(n+1)` -/
def P13132308658619953829.Spec : Prop :=
  ∀ n, P13132308658619953829.a n = A318827 (n + 1)

theorem P13132308658619953829.correct : P13132308658619953829.Spec := by
  intro n
  simp only [A318827, Nat.add_sub_cancel]

end A318827

/-! ## A318827.P12746899666604182033

`A051953(n+1)+A318830(n+1)`
-/

namespace A318827.P12746899666604182033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A318830 (n + 1)

end

end A318827.P12746899666604182033

namespace A318827

/-- `A051953(n+1)+A318830(n+1)` -/
def P12746899666604182033.Spec : Prop :=
  ∀ n, P12746899666604182033.a n = A318827 (n + 1)

theorem P12746899666604182033.correct : P12746899666604182033.Spec := by
  intro n
  simp only [A318827, Nat.add_sub_cancel, A318827.P12746899666604182033.a, A318827.P13132308658619953829.a, A049559, A049559.P683289682242884598.a, A051953, A051953.P12093122754958550118.a, A318830, A318830.P2444961546425265661.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A219428, A219428.P10048868048684072397.a, A318305, A318305.P17845263951644339002.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318827

/-! ## A318827.P17515319933155522730

`n+1-gcd(n, Δ[A002088(n)])`
-/

namespace A318827.P17515319933155522730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd (n : ℤ) (f1 (n + 1) - f1 n) : ℤ)

end

end A318827.P17515319933155522730

namespace A318827

/-- `n+1-gcd(n, Δ[A002088(n)])` -/
def P17515319933155522730.Spec : Prop :=
  ∀ n, P17515319933155522730.a n = A318827 (n + 1)

end A318827

/-! ## A318827.P869973401400026204

`A001489(A049559(n+1))+A000027(n+1)`
-/

namespace A318827.P869973401400026204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A049559 (n + 1)).toNat + A000027 (n + 1)

end

end A318827.P869973401400026204

namespace A318827

/-- `A001489(A049559(n+1))+A000027(n+1)` -/
def P869973401400026204.Spec : Prop :=
  ∀ n, P869973401400026204.a n = A318827 (n + 1)

end A318827

/-! ## A318827.P2863094446813305779

`A318828(n+1)+A318830(n+1)-A318840(n+1)`
-/

namespace A318827.P2863094446813305779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1) + (A318830 (n + 1) - A318840 (n + 1))

end

end A318827.P2863094446813305779

namespace A318827

/-- `A318828(n+1)+A318830(n+1)-A318840(n+1)` -/
def P2863094446813305779.Spec : Prop :=
  ∀ n, P2863094446813305779.a n = A318827 (n + 1)

end A318827

/-!
# A318828: a(n) = n - A063994(n) = n - Product_{primes p dividing n} gcd(p-1, n-1).

The programs for A318828, the canonical program `A318828.P2519863586055671682` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318828 has offset 1).

The definition of A318828 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318828.P2519863586055671682

`n+1-A063994(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318828

/-- `n+1-A063994(n+1)` -/
def P2519863586055671682.Spec : Prop :=
  ∀ n, P2519863586055671682.a n = A318828 (n + 1)

theorem P2519863586055671682.correct : P2519863586055671682.Spec := by
  intro n
  simp only [A318828, Nat.add_sub_cancel]

end A318828

/-! ## A318828.P2863420460036507947

`n-A348259(n+1)`
-/

namespace A318828.P2863420460036507947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A348259 (n + 1)

end

end A318828.P2863420460036507947

namespace A318828

/-- `n-A348259(n+1)` -/
def P2863420460036507947.Spec : Prop :=
  ∀ n, P2863420460036507947.a n = A318828 (n + 1)

theorem P2863420460036507947.correct : P2863420460036507947.Spec := by
  intro n
  simp only [A318828, Nat.add_sub_cancel, A318828.P2863420460036507947.a, A318828.P2519863586055671682.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A348259, A348259.P10362202789070795068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318828

/-! ## A318828.P16888046016392672614

`1-∑{d}[n+1, A340190(#)]+n`
-/

namespace A318828.P16888046016392672614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A340190 d + (n : ℤ)

end

end A318828.P16888046016392672614

namespace A318828

/-- `1-∑{d}[n+1, A340190(#)]+n` -/
def P16888046016392672614.Spec : Prop :=
  ∀ n, P16888046016392672614.a n = A318828 (n + 1)

end A318828

/-! ## A318828.P9324956426123344143

`n+1-∏{p}[n+1, gcd(n, A000010(#))]`
-/

namespace A318828.P9324956426123344143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (n : ℤ) (A000010 p) : ℕ) : ℤ)

end

end A318828.P9324956426123344143

namespace A318828

/-- `n+1-∏{p}[n+1, gcd(n, A000010(#))]` -/
def P9324956426123344143.Spec : Prop :=
  ∀ n, P9324956426123344143.a n = A318828 (n + 1)

end A318828

/-! ## A318828.P10908189494553845462

`n-A023443(A063994(n+1))`
-/

namespace A318828.P10908189494553845462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A063994 (n + 1)).toNat

end

end A318828.P10908189494553845462

namespace A318828

/-- `n-A023443(A063994(n+1))` -/
def P10908189494553845462.Spec : Prop :=
  ∀ n, P10908189494553845462.a n = A318828 (n + 1)

end A318828

/-! ## A318828.P10441520891237110159

`A318840(n+1)+A051953(n+1)`
-/

namespace A318828.P10441520891237110159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318840 (n + 1) + A051953 (n + 1)

end

end A318828.P10441520891237110159

namespace A318828

/-- `A318840(n+1)+A051953(n+1)` -/
def P10441520891237110159.Spec : Prop :=
  ∀ n, P10441520891237110159.a n = A318828 (n + 1)

end A318828

/-! ## A318828.P14634235927334708619

`A340189(n+1)-A340188(n+1)`
-/

namespace A318828.P14634235927334708619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340189 (n + 1) - A340188 (n + 1)

end

end A318828.P14634235927334708619

namespace A318828

/-- `A340189(n+1)-A340188(n+1)` -/
def P14634235927334708619.Spec : Prop :=
  ∀ n, P14634235927334708619.a n = A318828 (n + 1)

end A318828

/-! ## A318828.P12353551513019771472

`A318840(n+1)-A109606(n+1)+n`
-/

namespace A318828.P12353551513019771472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318840 (n + 1) - A109606 (n + 1) + (n : ℤ)

end

end A318828.P12353551513019771472

namespace A318828

/-- `A318840(n+1)-A109606(n+1)+n` -/
def P12353551513019771472.Spec : Prop :=
  ∀ n, P12353551513019771472.a n = A318828 (n + 1)

theorem P12353551513019771472.correct : P12353551513019771472.Spec := by
  intro n
  simp only [A318828, Nat.add_sub_cancel, A318828.P12353551513019771472.a, A318828.P2519863586055671682.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A109606, A109606.P2415810041766612210.a, A318840, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318828

/-! ## A318828.P9668018579820195639

`A300823(n+1)+A318840(n+1)+A300824(n+1)`
-/

namespace A318828.P9668018579820195639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300823 (n + 1) + (A318840 (n + 1) + A300824 (n + 1))

end

end A318828.P9668018579820195639

namespace A318828

/-- `A300823(n+1)+A318840(n+1)+A300824(n+1)` -/
def P9668018579820195639.Spec : Prop :=
  ∀ n, P9668018579820195639.a n = A318828 (n + 1)

end A318828

/-! ## A318828.P6739962202832423448

`A318325(n+1)+A318840(n+1)-A318326(n+1)`
-/

namespace A318828.P6739962202832423448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318325 (n + 1) + (A318840 (n + 1) - A318326 (n + 1))

end

end A318828.P6739962202832423448

namespace A318828

/-- `A318325(n+1)+A318840(n+1)-A318326(n+1)` -/
def P6739962202832423448.Spec : Prop :=
  ∀ n, P6739962202832423448.a n = A318828 (n + 1)

end A318828

/-! ## A318828.P9504973194398419547

`A318827(n+1)+A318840(n+1)-A318830(n+1)`
-/

namespace A318828.P9504973194398419547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 1) + (A318840 (n + 1) - A318830 (n + 1))

end

end A318828.P9504973194398419547

namespace A318828

/-- `A318827(n+1)+A318840(n+1)-A318830(n+1)` -/
def P9504973194398419547.Spec : Prop :=
  ∀ n, P9504973194398419547.a n = A318828 (n + 1)

end A318828

/-!
# A318829: a(n) = A063994(n) / A049559(n) = (1/gcd(n-1, phi(n))) * Product_{primes p dividing n} gcd(p-1, n-1).

The programs for A318829, the canonical program `A318829.P17686825492943057174` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318829 has offset 1).

The definition of A318829 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049559, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318829.P17686825492943057174

`A063994(n+1)/A049559(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A318829

/-- `A063994(n+1)/A049559(n+1)` -/
def P17686825492943057174.Spec : Prop :=
  ∀ n, P17686825492943057174.a n = (A318829 (n + 1) : ℚ)

end A318829

/-! ## A318829.P11799699318863544923

`A160595(n+1)/A247074(n+1)`
-/

namespace A318829.P11799699318863544923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160595 (n + 1) : ℚ) / (A247074 (n + 1) : ℚ)

end

end A318829.P11799699318863544923

namespace A318829

/-- `A160595(n+1)/A247074(n+1)` -/
def P11799699318863544923.Spec : Prop :=
  ∀ n, P11799699318863544923.a n = (A318829 (n + 1) : ℚ)

end A318829

/-! ## A318829.P2273344423195004167

`(A348259(n+1)+1)/A049559(n+1)`
-/

namespace A318829.P2273344423195004167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348259 (n + 1) + 1 : ℚ) / (A049559 (n + 1) : ℚ)

end

end A318829.P2273344423195004167

namespace A318829

/-- `(A348259(n+1)+1)/A049559(n+1)` -/
def P2273344423195004167.Spec : Prop :=
  ∀ n, P2273344423195004167.a n = (A318829 (n + 1) : ℚ)

end A318829

/-! ## A318829.P9984591376253375434

`A063994(n+1)/gcd(n, A002618(n+1))`
-/

namespace A318829.P9984591376253375434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (n + 1) : ℚ) / (Int.gcd (n : ℤ) (A002618 (n + 1)) : ℚ)

end

end A318829.P9984591376253375434

namespace A318829

/-- `A063994(n+1)/gcd(n, A002618(n+1))` -/
def P9984591376253375434.Spec : Prop :=
  ∀ n, P9984591376253375434.a n = (A318829 (n + 1) : ℚ)

end A318829

/-! ## A318829.P15787140638489368989

`A063994(n+1)/gcd(A000384(n), A063994(n+1))`
-/

namespace A318829.P15787140638489368989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (n + 1) : ℚ) / (Int.gcd (A000384 n) (A063994 (n + 1)) : ℚ)

end

end A318829.P15787140638489368989

namespace A318829

/-- `A063994(n+1)/gcd(A000384(n), A063994(n+1))` -/
def P15787140638489368989.Spec : Prop :=
  ∀ n, P15787140638489368989.a n = (A318829 (n + 1) : ℚ)

end A318829

/-! ## A318829.P12050494259943773100

`(A340191(n+1)+A340190(n+1))/A049559(n+1)`
-/

namespace A318829.P12050494259943773100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340191 (n + 1) + A340190 (n + 1) : ℚ) / (A049559 (n + 1) : ℚ)

end

end A318829.P12050494259943773100

namespace A318829

/-- `(A340191(n+1)+A340190(n+1))/A049559(n+1)` -/
def P12050494259943773100.Spec : Prop :=
  ∀ n, P12050494259943773100.a n = (A318829 (n + 1) : ℚ)

end A318829

/-! ## A318829.P1485052943473892451

`A063994(n+1)/(A000010(n+1)-A318830(n+1))`
-/

namespace A318829.P1485052943473892451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (n + 1) : ℚ) / (A000010 (n + 1) - A318830 (n + 1) : ℚ)

end

end A318829.P1485052943473892451

namespace A318829

/-- `A063994(n+1)/(A000010(n+1)-A318830(n+1))` -/
def P1485052943473892451.Spec : Prop :=
  ∀ n, P1485052943473892451.a n = (A318829 (n + 1) : ℚ)

end A318829

/-! ## A318829.P13759873638713458696

`gcd(A089856(A089856(n)), A160595(n+1))`
-/

namespace A318829.P13759873638713458696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089856 (A089856 n).toNat) (A160595 (n + 1))

end

end A318829.P13759873638713458696

namespace A318829

/-- `gcd(A089856(A089856(n)), A160595(n+1))` -/
def P13759873638713458696.Spec : Prop :=
  ∀ n, (P13759873638713458696.a n : ℤ) = A318829 (n + 1)

end A318829

/-! ## A318829.P5135671151872909730

`A000034(lcm(A066560(n+1), A258057(n)))`
-/

namespace A318829.P5135671151872909730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.lcm (A066560 (n + 1)) (A258057 n))

end

end A318829.P5135671151872909730

namespace A318829

/-- `A000034(lcm(A066560(n+1), A258057(n)))` -/
def P5135671151872909730.Spec : Prop :=
  ∀ n, P5135671151872909730.a n = A318829 (n + 1)

end A318829

/-!
# A318830: a(n) = phi(n) - gcd(phi(n), n-1).

The programs for A318830, the canonical program `A318830.P2444961546425265661` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318830 has offset 1).

The definition of A318830 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A318827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318830.P17700460382382293791

`A000010(n+1)-A049559(n+1)`
-/

namespace A318830.P17700460382382293791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A049559 (n + 1)

end

end A318830.P17700460382382293791

namespace A318830

/-- `A000010(n+1)-A049559(n+1)` -/
def P17700460382382293791.Spec : Prop :=
  ∀ n, P17700460382382293791.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P2444961546425265661

`A318827(n+1)-A051953(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A318830

/-- `A318827(n+1)-A051953(n+1)` -/
def P2444961546425265661.Spec : Prop :=
  ∀ n, P2444961546425265661.a n = A318830 (n + 1)

theorem P2444961546425265661.correct : P2444961546425265661.Spec := by
  intro n
  simp only [A318830, Nat.add_sub_cancel]

end A318830

/-! ## A318830.P3983293539026835170

`Δ[A005728(n)]-A049559(n+1)`
-/

namespace A318830.P3983293539026835170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049559 (n + 1)

end

end A318830.P3983293539026835170

namespace A318830

/-- `Δ[A005728(n)]-A049559(n+1)` -/
def P3983293539026835170.Spec : Prop :=
  ∀ n, P3983293539026835170.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P12069520735158366307

`A039649(n+1)-(A049559(n+1)+1)`
-/

namespace A318830.P12069520735158366307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A049559 (n + 1) + 1)

end

end A318830.P12069520735158366307

namespace A318830

/-- `A039649(n+1)-(A049559(n+1)+1)` -/
def P12069520735158366307.Spec : Prop :=
  ∀ n, P12069520735158366307.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P7608222309817898345

`(A160595(n+1)-1)*A049559(n+1)`
-/

namespace A318830.P7608222309817898345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160595 (n + 1) - 1) * A049559 (n + 1)

end

end A318830.P7608222309817898345

namespace A318830

/-- `(A160595(n+1)-1)*A049559(n+1)` -/
def P7608222309817898345.Spec : Prop :=
  ∀ n, P7608222309817898345.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P5994947515239965439

`A318827(n+1)+A000010(n+1)-(n+1)`
-/

namespace A318830.P5994947515239965439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 1) + A000010 (n + 1) - (n + 1 : ℤ)

end

end A318830.P5994947515239965439

namespace A318830

/-- `A318827(n+1)+A000010(n+1)-(n+1)` -/
def P5994947515239965439.Spec : Prop :=
  ∀ n, P5994947515239965439.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P16303997662389653414

`∑{d}[n+1, A008683(#)*A340196((n+1)/#)]`
-/

namespace A318830.P16303997662389653414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A340196 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318830.P16303997662389653414

namespace A318830

/-- `∑{d}[n+1, A008683(#)*A340196((n+1)/#)]` -/
def P16303997662389653414.Spec : Prop :=
  ∀ n, P16303997662389653414.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P11265683574004078329

`A002088(n+1)-(A049559(n+1)+A002088(n))`
-/

namespace A318830.P11265683574004078329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - (A049559 (n + 1) + A002088 n)

end

end A318830.P11265683574004078329

namespace A318830

/-- `A002088(n+1)-(A049559(n+1)+A002088(n))` -/
def P11265683574004078329.Spec : Prop :=
  ∀ n, P11265683574004078329.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P7765580229677884290

`A318827(n+1)+A318840(n+1)-A318828(n+1)`
-/

namespace A318830.P7765580229677884290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 1) + (A318840 (n + 1) - A318828 (n + 1))

end

end A318830.P7765580229677884290

namespace A318830

/-- `A318827(n+1)+A318840(n+1)-A318828(n+1)` -/
def P7765580229677884290.Spec : Prop :=
  ∀ n, P7765580229677884290.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P16295482372355330148

`A063994(n+1)*A247074(n+1)-A049559(n+1)`
-/

namespace A318830.P16295482372355330148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1) * A247074 (n + 1) - A049559 (n + 1)

end

end A318830.P16295482372355330148

namespace A318830

/-- `A063994(n+1)*A247074(n+1)-A049559(n+1)` -/
def P16295482372355330148.Spec : Prop :=
  ∀ n, P16295482372355330148.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P3034114841804550820

`A000010(n+1)-A187730(n+1)*A353801(n+1)`
-/

namespace A318830.P3034114841804550820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A187730 (n + 1) * A353801 (n + 1)

end

end A318830.P3034114841804550820

namespace A318830

/-- `A000010(n+1)-A187730(n+1)*A353801(n+1)` -/
def P3034114841804550820.Spec : Prop :=
  ∀ n, P3034114841804550820.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P7218890581592966544

`A000010(n+1)-A000010(n+1)/A160595(n+1)`
-/

namespace A318830.P7218890581592966544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) - (A000010 (n + 1) : ℚ) / (A160595 (n + 1) : ℚ)

end

end A318830.P7218890581592966544

namespace A318830

/-- `A000010(n+1)-A000010(n+1)/A160595(n+1)` -/
def P7218890581592966544.Spec : Prop :=
  ∀ n, P7218890581592966544.a n = (A318830 (n + 1) : ℚ)

end A318830

/-! ## A318830.P6248403508904980595

`A000010(n+1)-A063994(n+1)/A318829(n+1)`
-/

namespace A318830.P6248403508904980595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) - (A063994 (n + 1) : ℚ) / (A318829 (n + 1) : ℚ)

end

end A318830.P6248403508904980595

namespace A318830

/-- `A000010(n+1)-A063994(n+1)/A318829(n+1)` -/
def P6248403508904980595.Spec : Prop :=
  ∀ n, P6248403508904980595.a n = (A318830 (n + 1) : ℚ)

end A318830

/-! ## A318830.P11614413712366809940

`A067541(2*n+1)-gcd(A067541(2*n+1), n)`
-/

namespace A318830.P11614413712366809940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (2 * n + 1) - (Int.gcd (A067541 (2 * n + 1)) (n : ℤ) : ℤ)

end

end A318830.P11614413712366809940

namespace A318830

/-- `A067541(2*n+1)-gcd(A067541(2*n+1), n)` -/
def P11614413712366809940.Spec : Prop :=
  ∀ n, P11614413712366809940.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P9191866474653590999

`A000010(n+1)-A109004(A000217(n)+A000010(n+1))`
-/

namespace A318830.P9191866474653590999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A109004 (A000217 n + A000010 (n + 1)).toNat

end

end A318830.P9191866474653590999

namespace A318830

/-- `A000010(n+1)-A109004(A000217(n)+A000010(n+1))` -/
def P9191866474653590999.Spec : Prop :=
  ∀ n, P9191866474653590999.a n = A318830 (n + 1)

end A318830

/-! ## A318830.P1812205758412455249

`A000188(A127473(n+1))-A049559(n+1)`
-/

namespace A318830.P1812205758412455249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A127473 (n + 1)).toNat - A049559 (n + 1)

end

end A318830.P1812205758412455249

namespace A318830

/-- `A000188(A127473(n+1))-A049559(n+1)` -/
def P1812205758412455249.Spec : Prop :=
  ∀ n, P1812205758412455249.a n = A318830 (n + 1)

end A318830

/-!
# A318831: Restricted growth sequence transform of A278222(A000010(n)).

The programs for A318831, there is no canonical definition to state claims against.
-/

/-! ## A318831.P4389327042563711070

`A055034(A071053(A055034(n+1)%A137394(n+1)))`
-/

namespace A318831.P4389327042563711070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A071053 (Int.tmod (A055034 (n + 1)) (A137394 (n + 1))).toNat).toNat

end

end A318831.P4389327042563711070

/-! ## A318831.P2010683353564759173

`A000120(A151886((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)²)`
-/

namespace A318831.P2010683353564759173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A151886 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat ^ 2).toNat

end

end A318831.P2010683353564759173

/-! ## A318831.P18142733382642707236

`A160385(A175844(n+1))`
-/

namespace A318831.P18142733382642707236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A175844 (n + 1)).toNat

end

end A318831.P18142733382642707236

/-! ## A318831.P15189855169967273527

`A299920(A256607(n+1)%A334827(n+3))`
-/

namespace A318831.P15189855169967273527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299920 (Int.tmod (A256607 (n + 1)) (A334827 (n + 3))).toNat

end

end A318831.P15189855169967273527

/-! ## A318831.P10266411778664883197

`A059897(A256608(n+1)%A003104(n+4))`
-/

namespace A318831.P10266411778664883197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (Int.tmod (A256608 (n + 1)) (A003104 (n + 4))).toNat

end

end A318831.P10266411778664883197

/-!
# A318832: Restricted growth sequence transform of A278222(A000203(n)).

The programs for A318832, there is no canonical definition to state claims against.
-/

/-! ## A318832.P9105262785159187451

`or(A324293(n+1), A350386(A350189(3*n)))`
-/

namespace A318832.P9105262785159187451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324293 (n + 1)) (A350386 (A350189 (3 * n)).toNat)

end

end A318832.P9105262785159187451

/-! ## A318832.P8545755767240602520

`A000120(A000203(n+1)^A272351(n+1))`
-/

namespace A318832.P8545755767240602520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) ^ (A272351 (n + 1) : ℤ))).toNat

end

end A318832.P8545755767240602520

/-!
# A318833: a(n) = n + A023900(n).

The programs for A318833, the canonical program `A318833.P15994994677912991465` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318833 has offset 1).

The definition of A318833 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318833.P15994994677912991465

`n+1+A023900(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318833

/-- `n+1+A023900(n+1)` -/
def P15994994677912991465.Spec : Prop :=
  ∀ n, P15994994677912991465.a n = A318833 (n + 1)

theorem P15994994677912991465.correct : P15994994677912991465.Spec := by
  intro n
  simp only [A318833, Nat.add_sub_cancel]

end A318833

/-! ## A318833.P1759990169264046791

`∏{p}[n+1, 1-#]+1+n`
-/

namespace A318833.P1759990169264046791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + 1 + (n : ℤ)

end

end A318833.P1759990169264046791

namespace A318833

/-- `∏{p}[n+1, 1-#]+1+n` -/
def P1759990169264046791.Spec : Prop :=
  ∀ n, P1759990169264046791.a n = A318833 (n + 1)

theorem P1759990169264046791.correct : P1759990169264046791.Spec := by
  intro n
  simp only [A318833, Nat.add_sub_cancel, A318833.P1759990169264046791.f1, A318833.P1759990169264046791.a, A318833.P15994994677912991465.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318833

/-! ## A318833.P6341533340951104906

`∏{p}[n+1, A024000(#)]+n+1`
-/

namespace A318833.P6341533340951104906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A024000 p + (n + 1 : ℤ)

end

end A318833.P6341533340951104906

namespace A318833

/-- `∏{p}[n+1, A024000(#)]+n+1` -/
def P6341533340951104906.Spec : Prop :=
  ∀ n, P6341533340951104906.a n = A318833 (n + 1)

theorem P6341533340951104906.correct : P6341533340951104906.Spec := by
  intro n
  simp only [A318833, Nat.add_sub_cancel, A318833.P6341533340951104906.f1, A318833.P6341533340951104906.a, A318833.P15994994677912991465.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A024000, A024000.P8748414335487061084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318833

/-! ## A318833.P16476806476761083997

`A097945(∏{p}[n+1, #])+n+1`
-/

namespace A318833.P16476806476761083997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (∏ p ∈ Nat.primeFactors (f1 n), p) + (n + 1 : ℤ)

end

end A318833.P16476806476761083997

namespace A318833

/-- `A097945(∏{p}[n+1, #])+n+1` -/
def P16476806476761083997.Spec : Prop :=
  ∀ n, P16476806476761083997.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P9384955906454563748

`∏{p}[n+1, -A000010(#)]+n+1`
-/

namespace A318833.P9384955906454563748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-A000010 p) + (n + 1 : ℤ)

end

end A318833.P9384955906454563748

namespace A318833

/-- `∏{p}[n+1, -A000010(#)]+n+1` -/
def P9384955906454563748.Spec : Prop :=
  ∀ n, P9384955906454563748.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P11709981046880324288

`∑{d}[n+1, #*A008683(#)]+1+n`
-/

namespace A318833.P11709981046880324288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 d + 1 + (n : ℤ)

end

end A318833.P11709981046880324288

namespace A318833

/-- `∑{d}[n+1, #*A008683(#)]+1+n` -/
def P11709981046880324288.Spec : Prop :=
  ∀ n, P11709981046880324288.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P17364093883341113574

`A061020(A007947(n+1))+1+n`
-/

namespace A318833.P17364093883341113574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A007947 (n + 1)).toNat + 1 + (n : ℤ)

end

end A318833.P17364093883341113574

namespace A318833

/-- `A061020(A007947(n+1))+1+n` -/
def P17364093883341113574.Spec : Prop :=
  ∀ n, P17364093883341113574.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P16978091628871362489

`A319340(n+1)+A051953(n+1)`
-/

namespace A318833.P16978091628871362489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319340 (n + 1) + A051953 (n + 1)

end

end A318833.P16978091628871362489

namespace A318833

/-- `A319340(n+1)+A051953(n+1)` -/
def P16978091628871362489.Spec : Prop :=
  ∀ n, P16978091628871362489.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P12257967090764022213

`∏{p}[A007947(n+1), A168036(#)]+n+1`
-/

namespace A318833.P12257967090764022213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A168036 p + (n + 1 : ℤ)

end

end A318833.P12257967090764022213

namespace A318833

/-- `∏{p}[A007947(n+1), A168036(#)]+n+1` -/
def P12257967090764022213.Spec : Prop :=
  ∀ n, P12257967090764022213.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P11876645584204168622

`∑{d}[n+1, A055615(#)*A083271((n+1)/#)]`
-/

namespace A318833.P11876645584204168622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A083271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318833.P11876645584204168622

namespace A318833

/-- `∑{d}[n+1, A055615(#)*A083271((n+1)/#)]` -/
def P11876645584204168622.Spec : Prop :=
  ∀ n, P11876645584204168622.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P17135631747369082

`A000010(n+1)+A319340(n+1)-A083254(n+1)`
-/

namespace A318833.P17135631747369082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A319340 (n + 1) - A083254 (n + 1))

end

end A318833.P17135631747369082

namespace A318833

/-- `A000010(n+1)+A319340(n+1)-A083254(n+1)` -/
def P17135631747369082.Spec : Prop :=
  ∀ n, P17135631747369082.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P16169151544783061550

`A318841(n+1)+A319340(n+1)-A319341(n+1)`
-/

namespace A318833.P16169151544783061550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318841 (n + 1) + (A319340 (n + 1) - A319341 (n + 1))

end

end A318833.P16169151544783061550

namespace A318833

/-- `A318841(n+1)+A319340(n+1)-A319341(n+1)` -/
def P16169151544783061550.Spec : Prop :=
  ∀ n, P16169151544783061550.a n = A318833 (n + 1)

theorem P16169151544783061550.correct : P16169151544783061550.Spec := by
  intro n
  simp only [A318833, Nat.add_sub_cancel, A318833.P16169151544783061550.a, A318833.P15994994677912991465.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A318841, A318841.P6517978691631055757.a, A319340, A319340.P918367480918848699.a, A319341, A319341.P11516969970215772159.a, A000010, A000010.P4673923239450215316.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318833

/-! ## A318833.P4022484154323726593

`A125131(A302138(n+1))+1+n`
-/

namespace A318833.P4022484154323726593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125131 (A302138 (n + 1)).toNat + 1 + (n : ℤ)

end

end A318833.P4022484154323726593

namespace A318833

/-- `A125131(A302138(n+1))+1+n` -/
def P4022484154323726593.Spec : Prop :=
  ∀ n, P4022484154323726593.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P2516595380722133203

`A354104(A267099(n+1))+1+n`
-/

namespace A318833.P2516595380722133203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354104 (A267099 (n + 1)).toNat + 1 + (n : ℤ)

end

end A318833.P2516595380722133203

namespace A318833

/-- `A354104(A267099(n+1))+1+n` -/
def P2516595380722133203.Spec : Prop :=
  ∀ n, P2516595380722133203.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P6499581157969196675

`A349340(A078615(n+1))+1+n`
-/

namespace A318833.P6499581157969196675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A078615 (n + 1)).toNat + 1 + (n : ℤ)

end

end A318833.P6499581157969196675

namespace A318833

/-- `A349340(A078615(n+1))+1+n` -/
def P6499581157969196675.Spec : Prop :=
  ∀ n, P6499581157969196675.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P2958710583247650999

`A231425(∑[n+1])+n+1`
-/

namespace A318833.P2958710583247650999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231425 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A318833.P2958710583247650999

namespace A318833

/-- `A231425(∑[n+1])+n+1` -/
def P2958710583247650999.Spec : Prop :=
  ∀ n, P2958710583247650999.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P14880697743745565419

`A334312(∑[n+1])+1+n`
-/

namespace A318833.P14880697743745565419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334312 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A318833.P14880697743745565419

namespace A318833

/-- `A334312(∑[n+1])+1+n` -/
def P14880697743745565419.Spec : Prop :=
  ∀ n, P14880697743745565419.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P1237644724454172946

`A366444(∑[n+1])+n+1`
-/

namespace A318833.P1237644724454172946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366444 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A318833.P1237644724454172946

namespace A318833

/-- `A366444(∑[n+1])+n+1` -/
def P1237644724454172946.Spec : Prop :=
  ∀ n, P1237644724454172946.a n = A318833 (n + 1)

end A318833

/-! ## A318833.P7926746647475606598

`A395496((n+1)²)+n+1`
-/

namespace A318833.P7926746647475606598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395496 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A318833.P7926746647475606598

namespace A318833

/-- `A395496((n+1)²)+n+1` -/
def P7926746647475606598.Spec : Prop :=
  ∀ n, P7926746647475606598.a n = A318833 (n + 1)

end A318833

/-!
# A318834: a(n) = Product_{d|n, d

The programs for A318834, there is no canonical definition to state claims against.
-/

/-! ## A318834.P7159519878987008942

`A332824(n+1)/A332825(n+1)`
-/

namespace A318834.P7159519878987008942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332824 (n + 1) : ℚ) / (A332825 (n + 1) : ℚ)

end

end A318834.P7159519878987008942

/-! ## A318834.P10702717008260053090

`A332824(n+1)/A019565(Δ[A002088(n)])`
-/

namespace A318834.P10702717008260053090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332824 (n + 1) : ℚ) / (A019565 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A318834.P10702717008260053090

/-! ## A318834.P7271020315941329005

`A332824(n+1)/A019565(A000010(n+1))`
-/

namespace A318834.P7271020315941329005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332824 (n + 1) : ℚ) / (A019565 (A000010 (n + 1)).toNat : ℚ)

end

end A318834.P7271020315941329005

/-! ## A318834.P9401963484930419748

`A332824(n+1)/A019565(A039649(n+1)-1)`
-/

namespace A318834.P9401963484930419748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332824 (n + 1) : ℚ) / (A019565 (A039649 (n + 1) - 1).toNat : ℚ)

end

end A318834.P9401963484930419748

/-! ## A318834.P5471989260856333867

`A332824(n+1)/A019565(A053191(n+1)%(n+2))`
-/

namespace A318834.P5471989260856333867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332824 (n + 1) : ℚ) / (A019565 (Int.tmod (A053191 (n + 1)) (n + 2 : ℤ)).toNat : ℚ)

end

end A318834.P5471989260856333867

/-!
# A318835: Restricted growth sequence transform of A318834, product_{d|n, d

The programs for A318835, there is no canonical definition to state claims against.
-/

/-! ## A318835.P17522406435680922255

`A353569(A128421(n+1))+A353565(n+1)`
-/

namespace A318835.P17522406435680922255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353569 (A128421 (n + 1)).toNat + A353565 (n + 1)

end

end A318835.P17522406435680922255

/-! ## A318835.P10327191015651408841

`A353569(A001405(n))+A353565(n+1)`
-/

namespace A318835.P10327191015651408841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353569 (A001405 n).toNat + A353565 (n + 1)

end

end A318835.P10327191015651408841

/-! ## A318835.P7394829536987517409

`A353565(n+1)+A010054(A197986(n+3))`
-/

namespace A318835.P7394829536987517409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353565 (n + 1) + A010054 (A197986 (n + 3)).toNat

end

end A318835.P7394829536987517409

/-!
# A318836: Product_{d|n, d 0} prime(A007431(d)), where A007431 is the Möbius transform of Euler's totient function.

The programs for A318836, there is no canonical definition to state claims against.
-/

/-! ## A318836.P4623296514467158396

`A318838(n+1)/A008578(A007431(n+1)+1)`
-/

namespace A318836.P4623296514467158396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318838 (n + 1) : ℚ) / (A008578 (A007431 (n + 1) + 1).toNat : ℚ)

end

end A318836.P4623296514467158396

/-!
# A318837: Restricted growth sequence transform of A318836.

The programs for A318837, there is no canonical definition to state claims against.
-/

/-! ## A318837.P8669293320926609453

`A159631(2^A319353(n+1))`
-/

namespace A318837.P8669293320926609453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319353 (n + 1) : ℤ))).toNat

end

end A318837.P8669293320926609453

/-! ## A318837.P899965309057780812

`A238598(A036234(A186181(n)^A032742(n+1)))`
-/

namespace A318837.P899965309057780812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A036234 (SequenceMachineLib.roundAway ((A186181 n : ℚ) ^ (A032742 (n + 1) : ℤ))).toNat).toNat

end

end A318837.P899965309057780812

/-! ## A318837.P16748577852093776779

`A054571(n+1)+A026492(∑[A048584(n)])`
-/

namespace A318837.P16748577852093776779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1) + A026492 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318837.P16748577852093776779

/-! ## A318837.P1028182712555257687

`A266119(A324158(n+1))-1`
-/

namespace A318837.P1028182712555257687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266119 (A324158 (n + 1)).toNat - 1

end

end A318837.P1028182712555257687

/-! ## A318837.P6162553173203261625

`A305976(∏{p}[n+1, #*val(n+1, #)]^A292505(n+2))`
-/

namespace A318837.P6162553173203261625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℚ) ^ (A292505 (n + 2) : ℤ))).toNat

end

end A318837.P6162553173203261625

/-!
# A318838: Product_{d|n, A007431(d) > 0} prime(A007431(d)), where A007431 is the Möbius transform of Euler's totient function.

The programs for A318838, there is no canonical definition to state claims against.
-/

/-! ## A318838.P17588235918679110040

`A008578(A007431(n+1)+1)*A318836(n+1)`
-/

namespace A318838.P17588235918679110040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007431 (n + 1) + 1).toNat * A318836 (n + 1)

end

end A318838.P17588235918679110040

/-!
# A318839: Restricted growth sequence transform of A318838.

The programs for A318839, there is no canonical definition to state claims against.
-/

/-! ## A318839.P13647295459404623340

`A038605(A016018(n)+A008619(n))`
-/

namespace A318839.P13647295459404623340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A016018 n + A008619 n).toNat

end

end A318839.P13647295459404623340

/-! ## A318839.P13547480696049302473

`A038605(A028310(n)+A016018(n))`
-/

namespace A318839.P13547480696049302473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A028310 n + A016018 n).toNat

end

end A318839.P13547480696049302473

/-! ## A318839.P7631638977996332902

`A038605(A145460(n)+A016018(n))`
-/

namespace A318839.P7631638977996332902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A145460 n + A016018 n).toNat

end

end A318839.P7631638977996332902

/-! ## A318839.P10557585805077214799

`A038605(A210489(n)+A016018(n))`
-/

namespace A318839.P10557585805077214799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A210489 n + A016018 n).toNat

end

end A318839.P10557585805077214799

/-! ## A318839.P10873103201510768324

`A096568(n+1)+A087175(A198528(n+1))`
-/

namespace A318839.P10873103201510768324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096568 (n + 1) + A087175 (A198528 (n + 1)).toNat

end

end A318839.P10873103201510768324

/-!
# A318840: a(n) = phi(n) - Product_{primes p dividing n} gcd(p-1, n-1).

The programs for A318840, the canonical program `A318840.P4824797439622119668` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318840 has offset 1).

The definition of A318840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318840.P4824797439622119668

`A000010(n+1)-A063994(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A318840

/-- `A000010(n+1)-A063994(n+1)` -/
def P4824797439622119668.Spec : Prop :=
  ∀ n, P4824797439622119668.a n = A318840 (n + 1)

theorem P4824797439622119668.correct : P4824797439622119668.Spec := by
  intro n
  simp only [A318840, Nat.add_sub_cancel]

end A318840

/-! ## A318840.P16879734228608680019

`A318828(n+1)-A051953(n+1)`
-/

namespace A318840.P16879734228608680019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1) - A051953 (n + 1)

end

end A318840.P16879734228608680019

namespace A318840

/-- `A318828(n+1)-A051953(n+1)` -/
def P16879734228608680019.Spec : Prop :=
  ∀ n, P16879734228608680019.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P16506004498392854578

`A109606(n+1)-A348259(n+1)`
-/

namespace A318840.P16506004498392854578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A348259 (n + 1)

end

end A318840.P16506004498392854578

namespace A318840

/-- `A109606(n+1)-A348259(n+1)` -/
def P16506004498392854578.Spec : Prop :=
  ∀ n, P16506004498392854578.a n = A318840 (n + 1)

theorem P16506004498392854578.correct : P16506004498392854578.Spec := by
  intro n
  simp only [A318840, Nat.add_sub_cancel, A318840.P16506004498392854578.a, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A109606, A109606.P2415810041766612210.a, A348259, A348259.P10362202789070795068.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318840

/-! ## A318840.P7164967375083363559

`A109606(n+1)+1-A063994(n+1)`
-/

namespace A318840.P7164967375083363559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A063994 (n + 1))

end

end A318840.P7164967375083363559

namespace A318840

/-- `A109606(n+1)+1-A063994(n+1)` -/
def P7164967375083363559.Spec : Prop :=
  ∀ n, P7164967375083363559.a n = A318840 (n + 1)

theorem P7164967375083363559.correct : P7164967375083363559.Spec := by
  intro n
  simp only [A318840, Nat.add_sub_cancel, A318840.P7164967375083363559.a, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318840

/-! ## A318840.P10235138494390089720

`A000010(n+1)-(A348259(n+1)+1)`
-/

namespace A318840.P10235138494390089720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A348259 (n + 1) + 1)

end

end A318840.P10235138494390089720

namespace A318840

/-- `A000010(n+1)-(A348259(n+1)+1)` -/
def P10235138494390089720.Spec : Prop :=
  ∀ n, P10235138494390089720.a n = A318840 (n + 1)

theorem P10235138494390089720.correct : P10235138494390089720.Spec := by
  intro n
  simp only [A318840, Nat.add_sub_cancel, A318840.P10235138494390089720.a, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A348259, A348259.P10362202789070795068.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318840

/-! ## A318840.P7027668973655648428

`(A247074(n+1)-1)*A063994(n+1)`
-/

namespace A318840.P7027668973655648428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A247074 (n + 1) - 1) * A063994 (n + 1)

end

end A318840.P7027668973655648428

namespace A318840

/-- `(A247074(n+1)-1)*A063994(n+1)` -/
def P7027668973655648428.Spec : Prop :=
  ∀ n, P7027668973655648428.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P571704833939971659

`∑{d}[n+1, A008683(#)*A340193((n+1)/#)]`
-/

namespace A318840.P571704833939971659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A340193 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318840.P571704833939971659

namespace A318840

/-- `∑{d}[n+1, A008683(#)*A340193((n+1)/#)]` -/
def P571704833939971659.Spec : Prop :=
  ∀ n, P571704833939971659.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P16371242459936870895

`A319340(n+1)-(A063994(n+1)+A023900(n+1))`
-/

namespace A318840.P16371242459936870895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319340 (n + 1) - (A063994 (n + 1) + A023900 (n + 1))

end

end A318840.P16371242459936870895

namespace A318840

/-- `A319340(n+1)-(A063994(n+1)+A023900(n+1))` -/
def P16371242459936870895.Spec : Prop :=
  ∀ n, P16371242459936870895.a n = A318840 (n + 1)

theorem P16371242459936870895.correct : P16371242459936870895.Spec := by
  intro n
  simp only [A318840, Nat.add_sub_cancel, A318840.P16371242459936870895.a, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A319340, A319340.P918367480918848699.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318840

/-! ## A318840.P11371837632850453208

`A049559(n+1)+A318830(n+1)-A063994(n+1)`
-/

namespace A318840.P11371837632850453208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1) + (A318830 (n + 1) - A063994 (n + 1))

end

end A318840.P11371837632850453208

namespace A318840

/-- `A049559(n+1)+A318830(n+1)-A063994(n+1)` -/
def P11371837632850453208.Spec : Prop :=
  ∀ n, P11371837632850453208.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P14597477007854012706

`A000010(n+1)+A340187(n+1)-A340188(n+1)`
-/

namespace A318840.P14597477007854012706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A340187 (n + 1) - A340188 (n + 1))

end

end A318840.P14597477007854012706

namespace A318840

/-- `A000010(n+1)+A340187(n+1)-A340188(n+1)` -/
def P14597477007854012706.Spec : Prop :=
  ∀ n, P14597477007854012706.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P3203465445542810501

`A000010(n+1)-(A340191(n+1)+A340190(n+1))`
-/

namespace A318840.P3203465445542810501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A340191 (n + 1) + A340190 (n + 1))

end

end A318840.P3203465445542810501

namespace A318840

/-- `A000010(n+1)-(A340191(n+1)+A340190(n+1))` -/
def P3203465445542810501.Spec : Prop :=
  ∀ n, P3203465445542810501.a n = A318840 (n + 1)

theorem P3203465445542810501.correct : P3203465445542810501.Spec := by
  intro n
  simp only [A318840, Nat.add_sub_cancel, A318840.P3203465445542810501.a, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A340190, A340190.P7305817232909607033.f1, A340190.P7305817232909607033.a, A340191, A340191.P14637291367481792060.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P18254306604665478110.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A059841, A059841.P2666504972441551157.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318840

/-! ## A318840.P6534260581326657281

`A318828(n+1)-(A300824(n+1)+A300823(n+1))`
-/

namespace A318840.P6534260581326657281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1) - (A300824 (n + 1) + A300823 (n + 1))

end

end A318840.P6534260581326657281

namespace A318840

/-- `A318828(n+1)-(A300824(n+1)+A300823(n+1))` -/
def P6534260581326657281.Spec : Prop :=
  ∀ n, P6534260581326657281.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P15752644630761344606

`A318326(n+1)+A318828(n+1)-A318325(n+1)`
-/

namespace A318840.P15752644630761344606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318326 (n + 1) + (A318828 (n + 1) - A318325 (n + 1))

end

end A318840.P15752644630761344606

namespace A318840

/-- `A318326(n+1)+A318828(n+1)-A318325(n+1)` -/
def P15752644630761344606.Spec : Prop :=
  ∀ n, P15752644630761344606.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P16552497833946252235

`A318828(n+1)+A318830(n+1)-A318827(n+1)`
-/

namespace A318840.P16552497833946252235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1) + (A318830 (n + 1) - A318827 (n + 1))

end

end A318840.P16552497833946252235

namespace A318840

/-- `A318828(n+1)+A318830(n+1)-A318827(n+1)` -/
def P16552497833946252235.Spec : Prop :=
  ∀ n, P16552497833946252235.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P13296326926359681796

`A318828(n+1)+A319340(n+1)-A318833(n+1)`
-/

namespace A318840.P13296326926359681796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1) + (A319340 (n + 1) - A318833 (n + 1))

end

end A318840.P13296326926359681796

namespace A318840

/-- `A318828(n+1)+A319340(n+1)-A318833(n+1)` -/
def P13296326926359681796.Spec : Prop :=
  ∀ n, P13296326926359681796.a n = A318840 (n + 1)

theorem P13296326926359681796.correct : P13296326926359681796.Spec := by
  intro n
  simp only [A318840, Nat.add_sub_cancel, A318840.P13296326926359681796.a, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A318828, A318828.P2519863586055671682.a, A318833, A318833.P15994994677912991465.a, A319340, A319340.P918367480918848699.a, A003557, A003557.P6364735403900941810.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318840

/-! ## A318840.P5384698586976594321

`A318828(n+1)+A348030(n+1)-A348971(n+1)`
-/

namespace A318840.P5384698586976594321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1) + (A348030 (n + 1) - A348971 (n + 1))

end

end A318840.P5384698586976594321

namespace A318840

/-- `A318828(n+1)+A348030(n+1)-A348971(n+1)` -/
def P5384698586976594321.Spec : Prop :=
  ∀ n, P5384698586976594321.a n = A318840 (n + 1)

theorem P5384698586976594321.correct : P5384698586976594321.Spec := by
  intro n
  simp only [A318840, Nat.add_sub_cancel, A318840.P5384698586976594321.a, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A318828, A318828.P2519863586055671682.a, A348030, A348030.P17211473318799311416.a, A348971, A348971.P11156141318395468406.a, A003557, A003557.P6364735403900941810.a, A003968, A003968.P10961526323602588276.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A167338, A167338.P17492942069736666981.f1, A167338.P17492942069736666981.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A014963, A014963.P5975177236000282614.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318840

/-! ## A318840.P12286161938451471867

`A049559(n+1)*A160595(n+1)-A063994(n+1)`
-/

namespace A318840.P12286161938451471867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1) * A160595 (n + 1) - A063994 (n + 1)

end

end A318840.P12286161938451471867

namespace A318840

/-- `A049559(n+1)*A160595(n+1)-A063994(n+1)` -/
def P12286161938451471867.Spec : Prop :=
  ∀ n, P12286161938451471867.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P5909515080265291961

`A000010(n+1)-A049559(n+1)*A318829(n+1)`
-/

namespace A318840.P5909515080265291961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A049559 (n + 1) * A318829 (n + 1)

end

end A318840.P5909515080265291961

namespace A318840

/-- `A000010(n+1)-A049559(n+1)*A318829(n+1)` -/
def P5909515080265291961.Spec : Prop :=
  ∀ n, P5909515080265291961.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P14321904215288115171

`(A160595(n+1)-A318829(n+1))*A049559(n+1)`
-/

namespace A318840.P14321904215288115171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160595 (n + 1) - A318829 (n + 1)) * A049559 (n + 1)

end

end A318840.P14321904215288115171

namespace A318840

/-- `(A160595(n+1)-A318829(n+1))*A049559(n+1)` -/
def P14321904215288115171.Spec : Prop :=
  ∀ n, P14321904215288115171.a n = A318840 (n + 1)

end A318840

/-! ## A318840.P15958675615887210987

`A000010(n+1)-A000010(n+1)/A247074(n+1)`
-/

namespace A318840.P15958675615887210987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) - (A000010 (n + 1) : ℚ) / (A247074 (n + 1) : ℚ)

end

end A318840.P15958675615887210987

namespace A318840

/-- `A000010(n+1)-A000010(n+1)/A247074(n+1)` -/
def P15958675615887210987.Spec : Prop :=
  ∀ n, P15958675615887210987.a n = (A318840 (n + 1) : ℚ)

end A318840

/-!
# A318841: a(n) = n - A173557(n).

The programs for A318841, the canonical program `A318841.P6517978691631055757` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318841 has offset 1).

The definition of A318841 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318841.P6517978691631055757

`n+1-A173557(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A318841

/-- `n+1-A173557(n+1)` -/
def P6517978691631055757.Spec : Prop :=
  ∀ n, P6517978691631055757.a n = A318841 (n + 1)

theorem P6517978691631055757.correct : P6517978691631055757.Spec := by
  intro n
  simp only [A318841, Nat.add_sub_cancel]

end A318841

/-! ## A318841.P13293318173170717880

`1-∏{p}[n+1, #-1]+n`
-/

namespace A318841.P13293318173170717880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) + (n : ℤ)

end

end A318841.P13293318173170717880

namespace A318841

/-- `1-∏{p}[n+1, #-1]+n` -/
def P13293318173170717880.Spec : Prop :=
  ∀ n, P13293318173170717880.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P3074842851713398233

`1-abs(A023900(n+1))+n`
-/

namespace A318841.P3074842851713398233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A023900 (n + 1)| + (n : ℤ)

end

end A318841.P3074842851713398233

namespace A318841

/-- `1-abs(A023900(n+1))+n` -/
def P3074842851713398233.Spec : Prop :=
  ∀ n, P3074842851713398233.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P15495637878961761222

`n+1-A299822(n+1)/(n+1)`
-/

namespace A318841.P15495637878961761222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A299822 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A318841.P15495637878961761222

namespace A318841

/-- `n+1-A299822(n+1)/(n+1)` -/
def P15495637878961761222.Spec : Prop :=
  ∀ n, P15495637878961761222.a n = (A318841 (n + 1) : ℚ)

end A318841

/-! ## A318841.P12690438430932438640

`n-A109606(A007947(n+1))`
-/

namespace A318841.P12690438430932438640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A109606 (A007947 (n + 1)).toNat

end

end A318841.P12690438430932438640

namespace A318841

/-- `n-A109606(A007947(n+1))` -/
def P12690438430932438640.Spec : Prop :=
  ∀ n, P12690438430932438640.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P3792093496837447626

`A319341(n+1)+A051953(n+1)`
-/

namespace A318841.P3792093496837447626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319341 (n + 1) + A051953 (n + 1)

end

end A318841.P3792093496837447626

namespace A318841

/-- `A319341(n+1)+A051953(n+1)` -/
def P3792093496837447626.Spec : Prop :=
  ∀ n, P3792093496837447626.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P10910212169999342460

`A318305(n+1)+A066503(n+1)`
-/

namespace A318841.P10910212169999342460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318305 (n + 1) + A066503 (n + 1)

end

end A318841.P10910212169999342460

namespace A318841

/-- `A318305(n+1)+A066503(n+1)` -/
def P10910212169999342460.Spec : Prop :=
  ∀ n, P10910212169999342460.a n = A318841 (n + 1)

theorem P10910212169999342460.correct : P10910212169999342460.Spec := by
  intro n
  simp only [A318841, Nat.add_sub_cancel, A318841.P10910212169999342460.a, A318841.P6517978691631055757.a, A066503, A066503.P17588364347287804265.a, A173557, A173557.P15666735857375843373.a, A318305, A318305.P17845263951644339002.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318841

/-! ## A318841.P15473154385481737300

`1-A000010(A099985(n+1))+n`
-/

namespace A318841.P15473154385481737300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000010 (A099985 (n + 1)).toNat + (n : ℤ)

end

end A318841.P15473154385481737300

namespace A318841

/-- `1-A000010(A099985(n+1))+n` -/
def P15473154385481737300.Spec : Prop :=
  ∀ n, P15473154385481737300.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P18082119659887055778

`1-A000010(A204455(n+1))+n`
-/

namespace A318841.P18082119659887055778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000010 (A204455 (n + 1)).toNat + (n : ℤ)

end

end A318841.P18082119659887055778

namespace A318841

/-- `1-A000010(A204455(n+1))+n` -/
def P18082119659887055778.Spec : Prop :=
  ∀ n, P18082119659887055778.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P6946256695367062921

`1-A003958(A302138(n+1))+n`
-/

namespace A318841.P6946256695367062921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003958 (A302138 (n + 1)).toNat + (n : ℤ)

end

end A318841.P6946256695367062921

namespace A318841

/-- `1-A003958(A302138(n+1))+n` -/
def P6946256695367062921.Spec : Prop :=
  ∀ n, P6946256695367062921.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P4271584965315881408

`1-A049200(A322590(n+1))+n`
-/

namespace A318841.P4271584965315881408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049200 (A322590 (n + 1)).toNat + (n : ℤ)

end

end A318841.P4271584965315881408

namespace A318841

/-- `1-A049200(A322590(n+1))+n` -/
def P4271584965315881408.Spec : Prop :=
  ∀ n, P4271584965315881408.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P13174141720302910031

`n+1-A390753(A015052(n+1))`
-/

namespace A318841.P13174141720302910031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A390753 (A015052 (n + 1)).toNat

end

end A318841.P13174141720302910031

namespace A318841

/-- `n+1-A390753(A015052(n+1))` -/
def P13174141720302910031.Spec : Prop :=
  ∀ n, P13174141720302910031.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P6441691923174280434

`n+1-A390753(A015053(n+1))`
-/

namespace A318841.P6441691923174280434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A390753 (A015053 (n + 1)).toNat

end

end A318841.P6441691923174280434

namespace A318841

/-- `n+1-A390753(A015053(n+1))` -/
def P6441691923174280434.Spec : Prop :=
  ∀ n, P6441691923174280434.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P5386331272748269488

`n+1-A000010(A053166(A053166(n+1)))`
-/

namespace A318841.P5386331272748269488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (A053166 (A053166 (n + 1)).toNat).toNat

end

end A318841.P5386331272748269488

namespace A318841

/-- `n+1-A000010(A053166(A053166(n+1)))` -/
def P5386331272748269488.Spec : Prop :=
  ∀ n, P5386331272748269488.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P4942219825687438450

`n+1-A047994(A007947(A338782(n+1)))`
-/

namespace A318841.P4942219825687438450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A047994 (A007947 (A338782 (n + 1)).toNat).toNat

end

end A318841.P4942219825687438450

namespace A318841

/-- `n+1-A047994(A007947(A338782(n+1)))` -/
def P4942219825687438450.Spec : Prop :=
  ∀ n, P4942219825687438450.a n = A318841 (n + 1)

end A318841

/-! ## A318841.P6345613391784896035

`A319341(n+1)+A345891(n+1)-A002618(n+1)`
-/

namespace A318841.P6345613391784896035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319341 (n + 1) + (A345891 (n + 1) - A002618 (n + 1))

end

end A318841.P6345613391784896035

namespace A318841

/-- `A319341(n+1)+A345891(n+1)-A002618(n+1)` -/
def P6345613391784896035.Spec : Prop :=
  ∀ n, P6345613391784896035.a n = A318841 (n + 1)

theorem P6345613391784896035.correct : P6345613391784896035.Spec := by
  intro n
  simp only [A318841, Nat.add_sub_cancel, A318841.P6345613391784896035.a, A318841.P6517978691631055757.a, A002618, A002618.P11219262123574684380.a, A173557, A173557.P15666735857375843373.a, A319341, A319341.P11516969970215772159.a, A345891, A345891.P7487788465764126550.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A009195, A009195.P575735392333790531.a, A009262, A009262.P968093419327824865.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A062955, A062955.P17396036720495467672.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A051953, A051953.P12093122754958550118.a, A059841, A059841.P2666504972441551157.a, A109395, A109395.P12004804553665674898.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A318305, A318305.P17845263951644339002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318841

/-! ## A318841.P5699771527034656403

`A318833(n+1)+A319341(n+1)-A319340(n+1)`
-/

namespace A318841.P5699771527034656403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (n + 1) + (A319341 (n + 1) - A319340 (n + 1))

end

end A318841.P5699771527034656403

namespace A318841

/-- `A318833(n+1)+A319341(n+1)-A319340(n+1)` -/
def P5699771527034656403.Spec : Prop :=
  ∀ n, P5699771527034656403.a n = A318841 (n + 1)

theorem P5699771527034656403.correct : P5699771527034656403.Spec := by
  intro n
  simp only [A318841, Nat.add_sub_cancel, A318841.P5699771527034656403.a, A318841.P6517978691631055757.a, A173557, A173557.P15666735857375843373.a, A318833, A318833.P15994994677912991465.a, A319340, A319340.P918367480918848699.a, A319341, A319341.P11516969970215772159.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318841

/-! ## A318841.P6964564076560269284

`(A000082(n+1)-A345052(n+1))/A001615(n+1)`
-/

namespace A318841.P6964564076560269284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) - A345052 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A318841.P6964564076560269284

namespace A318841

/-- `(A000082(n+1)-A345052(n+1))/A001615(n+1)` -/
def P6964564076560269284.Spec : Prop :=
  ∀ n, P6964564076560269284.a n = (A318841 (n + 1) : ℚ)

end A318841

/-! ## A318841.P12559568971424495646

`n+1-A322351((n+1)²)`
-/

namespace A318841.P12559568971424495646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A322351 ((n + 1) ^ 2)

end

end A318841.P12559568971424495646

namespace A318841

/-- `n+1-A322351((n+1)²)` -/
def P12559568971424495646.Spec : Prop :=
  ∀ n, P12559568971424495646.a n = A318841 (n + 1)

end A318841

/-!
# A318842: a(n) is the least integer m such that A047994(m) = ((n-1)/n)*m where A047994 is the unitary totient function, or 0 if there is no such m.

The programs for A318842, there is no canonical definition to state claims against.
-/

/-! ## A318842.P6355093420734810336

`A319313(2*(n+2))`
-/

namespace A318842.P6355093420734810336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319313 (2 * (n + 2))

end

end A318842.P6355093420734810336

/-! ## A318842.P10015238668014231941

`A002265(A151976(2*n+3)^A272084(n+1))`
-/

namespace A318842.P10015238668014231941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A151976 (2 * n + 3) : ℚ) ^ (A272084 (n + 1) : ℤ))).toNat

end

end A318842.P10015238668014231941

/-!
# A318843: a(n) is the smallest number k such that the symmetric representation of sigma(k) consists of n parts of width 1.

The programs for A318843, there is no canonical definition to state claims against.
-/

/-! ## A318843.P11018911119026123376

`A384704(∑[n+1])`
-/

namespace A318843.P11018911119026123376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318843.P11018911119026123376

/-! ## A318843.P2529809383167337969

`A348171(∑[n+1])`
-/

namespace A318843.P2529809383167337969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348171 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318843.P2529809383167337969

/-! ## A318843.P15673540420886201543

`A357581(∑[n+1])`
-/

namespace A318843.P15673540420886201543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318843.P15673540420886201543

/-! ## A318843.P10013187297226286697

`or(1, A357581(A261422(n)))`
-/

namespace A318843.P10013187297226286697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A357581 (A261422 n).toNat)

end

end A318843.P10013187297226286697

/-! ## A318843.P7766959884518177217

`record[A348171(A106255(n+1))]`
-/

namespace A318843.P7766959884518177217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348171 (A106255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318843.P7766959884518177217

/-!
# A318844: Expansion of Product_{k>=1} (1 + x^k)^(d(k)-1), where d(k) = number of divisors of k (A000005).

The programs for A318844, there is no canonical definition to state claims against.
-/

/-! ## A318844.P925371929789233283

`A091434(n)-A102683(A102683(2^n)+A027633(n))`
-/

namespace A318844.P925371929789233283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091434 n - A102683 (A102683 (2 ^ n) + A027633 n).toNat

end

end A318844.P925371929789233283

/-! ## A318844.P1752192688760051693

`A091434(n)-A011738(A318852(n))`
-/

namespace A318844.P1752192688760051693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091434 n - A011738 (A318852 n).toNat

end

end A318844.P1752192688760051693

/-! ## A318844.P16965315567351529390

`A321185(n)-A290985(n+1)`
-/

namespace A318844.P16965315567351529390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321185 n - A290985 (n + 1)

end

end A318844.P16965315567351529390

/-! ## A318844.P8747054732581853245

`A091434(n)-A268310(A286873(n+1))`
-/

namespace A318844.P8747054732581853245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091434 n - A268310 (A286873 (n + 1)).toNat

end

end A318844.P8747054732581853245

/-! ## A318844.P9325266551920475887

`A183563(n+6)-A055641(A057151(n+1))`
-/

namespace A318844.P9325266551920475887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183563 (n + 6) - A055641 (A057151 (n + 1)).toNat

end

end A318844.P9325266551920475887

/-!
# A318845: a(n) = Sum_{d|n} (-1)^(n/d+1) * Sum_{j|d} sigma(j), where sigma(j) = sum of divisors of j (A000203).

The programs for A318845, the canonical program `A318845.P4959675748145721690` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318845 has offset 1).

The definition of A318845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318845.P11373694836340308404

`∑{d}[n+1, A288417(#)]`
-/

namespace A318845.P11373694836340308404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288417 d

end

end A318845.P11373694836340308404

namespace A318845

/-- `∑{d}[n+1, A288417(#)]` -/
def P11373694836340308404.Spec : Prop :=
  ∀ n, P11373694836340308404.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P4959675748145721690

`∑{d}[n+1, #*A288571((n+1)/#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A318845

/-- `∑{d}[n+1, #*A288571((n+1)/#)]` -/
def P4959675748145721690.Spec : Prop :=
  ∀ n, P4959675748145721690.a n = A318845 (n + 1)

theorem P4959675748145721690.correct : P4959675748145721690.Spec := by
  intro n
  simp only [A318845, Nat.add_sub_cancel]

end A318845

/-! ## A318845.P5015879162205804764

`∑{d}[n+1, A000005(#)*A000593((n+1)/#)]`
-/

namespace A318845.P5015879162205804764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P5015879162205804764

namespace A318845

/-- `∑{d}[n+1, A000005(#)*A000593((n+1)/#)]` -/
def P5015879162205804764.Spec : Prop :=
  ∀ n, P5015879162205804764.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P5026263130606588227

`∑{d}[n+1, A000203(#)*A048272((n+1)/#)]`
-/

namespace A318845.P5026263130606588227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P5026263130606588227

namespace A318845

/-- `∑{d}[n+1, A000203(#)*A048272((n+1)/#)]` -/
def P5026263130606588227.Spec : Prop :=
  ∀ n, P5026263130606588227.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P807676649923542382

`∑{d}[n+1, A000265(#)*A133700((n+1)/#)]`
-/

namespace A318845.P807676649923542382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A133700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P807676649923542382

namespace A318845

/-- `∑{d}[n+1, A000265(#)*A133700((n+1)/#)]` -/
def P807676649923542382.Spec : Prop :=
  ∀ n, P807676649923542382.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P11691174763006110649

`∑{d}[n+1, A034761(#)*A117212((n+1)/#)]`
-/

namespace A318845.P11691174763006110649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P11691174763006110649

namespace A318845

/-- `∑{d}[n+1, A034761(#)*A117212((n+1)/#)]` -/
def P11691174763006110649.Spec : Prop :=
  ∀ n, P11691174763006110649.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P11992847698338319403

`∑{d}[n+1, A007425(#)*A193356((n+1)/#)]`
-/

namespace A318845.P11992847698338319403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P11992847698338319403

namespace A318845

/-- `∑{d}[n+1, A007425(#)*A193356((n+1)/#)]` -/
def P11992847698338319403.Spec : Prop :=
  ∀ n, P11992847698338319403.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P17544227837671042268

`∑{d}[n+1, A109386(#)*A130054((n+1)/#)]`
-/

namespace A318845.P17544227837671042268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109386 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P17544227837671042268

namespace A318845

/-- `∑{d}[n+1, A109386(#)*A130054((n+1)/#)]` -/
def P17544227837671042268.Spec : Prop :=
  ∀ n, P17544227837671042268.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P166700605708832763

`∑{d}[n+1, A001227(#)*A264740((n+1)/#)]`
-/

namespace A318845.P166700605708832763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A264740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P166700605708832763

namespace A318845

/-- `∑{d}[n+1, A001227(#)*A264740((n+1)/#)]` -/
def P166700605708832763.Spec : Prop :=
  ∀ n, P166700605708832763.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P4816771802203311396

`∑{d}[n+1, A000010(#)*A318768((n+1)/#)]`
-/

namespace A318845.P4816771802203311396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A318768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P4816771802203311396

namespace A318845

/-- `∑{d}[n+1, A000010(#)*A318768((n+1)/#)]` -/
def P4816771802203311396.Spec : Prop :=
  ∀ n, P4816771802203311396.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P7629652657053618096

`∑{d}[n+1, A007426(#)*A319997((n+1)/#)]`
-/

namespace A318845.P7629652657053618096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P7629652657053618096

namespace A318845

/-- `∑{d}[n+1, A007426(#)*A319997((n+1)/#)]` -/
def P7629652657053618096.Spec : Prop :=
  ∀ n, P7629652657053618096.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P7294959376145409622

`∑{d}[n+1, A046951(#)*A309324((n+1)/#)]`
-/

namespace A318845.P7294959376145409622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A309324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P7294959376145409622

namespace A318845

/-- `∑{d}[n+1, A046951(#)*A309324((n+1)/#)]` -/
def P7294959376145409622.Spec : Prop :=
  ∀ n, P7294959376145409622.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P11579740338503363956

`∑{d}[n+1, A048691(#)*A328373((n+1)/#)]`
-/

namespace A318845.P11579740338503363956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P11579740338503363956

namespace A318845

/-- `∑{d}[n+1, A048691(#)*A328373((n+1)/#)]` -/
def P11579740338503363956.Spec : Prop :=
  ∀ n, P11579740338503363956.a n = A318845 (n + 1)

end A318845

/-! ## A318845.P10191109074377342103

`∑{d}[n+1, A300853(#)*A319132((n+1)/#)]`
-/

namespace A318845.P10191109074377342103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300853 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P10191109074377342103

namespace A318845

/-- `∑{d}[n+1, A300853(#)*A319132((n+1)/#)]` -/
def P10191109074377342103.Spec : Prop :=
  ∀ n, P10191109074377342103.a n = A318845 (n + 1)

end A318845

/-!
# A318846: Number of balanced reduced multisystems whose atoms cover an initial interval of positive integers with multiplicities equal to the prime indices of n.

The programs for A318846, there is no canonical definition to state claims against.
-/

/-! ## A318846.P8716822965972504062

`A318812(A181821(n+1))`
-/

namespace A318846.P8716822965972504062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318812 (A181821 (n + 1)).toNat

end

end A318846.P8716822965972504062

/-! ## A318846.P6261547307502984300

`A318812(A304660(n+1))`
-/

namespace A318846.P6261547307502984300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318812 (A304660 (n + 1)).toNat

end

end A318846.P6261547307502984300

/-!
# A318847: Number of tree-partitions of a multiset whose multiplicities are the prime indices of n.

The programs for A318847, there is no canonical definition to state claims against.
-/

/-! ## A318847.P10670899268711008871

`A281118(A181821(n+1))`
-/

namespace A318847.P10670899268711008871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281118 (A181821 (n + 1)).toNat

end

end A318847.P10670899268711008871

/-! ## A318847.P15363408233335354273

`A281118(A304660(n+1))`
-/

namespace A318847.P15363408233335354273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281118 (A304660 (n + 1)).toNat

end

end A318847.P15363408233335354273

/-! ## A318847.P9965807931701909017

`A281118(∑{d}[A108951(n+1), A354358(#)])`
-/

namespace A318847.P9965807931701909017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281118 (∑ d ∈ Nat.divisors (f1 n).natAbs, A354358 d).toNat

end

end A318847.P9965807931701909017

/-! ## A318847.P5258426240937681734

`A337509(A301754(n+1))+A318849(n+1)`
-/

namespace A318847.P5258426240937681734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337509 (A301754 (n + 1)).toNat + A318849 (n + 1)

end

end A318847.P5258426240937681734

/-!
# A318848: Number of complete tree-partitions of a multiset whose multiplicities are the prime indices of n.

The programs for A318848, there is no canonical definition to state claims against.
-/

/-! ## A318848.P9241642418636801777

`A281119(lcm(2, A181821(n+1)))`
-/

namespace A318848.P9241642418636801777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (Int.lcm 2 (A181821 (n + 1)))

end

end A318848.P9241642418636801777

/-! ## A318848.P1658314850445159428

`A281119(xor(1, A181821(n+1)+1))`
-/

namespace A318848.P1658314850445159428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (Int.xor 1 (A181821 (n + 1) + 1)).toNat

end

end A318848.P1658314850445159428

/-! ## A318848.P15587137676542129924

`A281119(A181821(n+1)+C(2, n))`
-/

namespace A318848.P15587137676542129924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (A181821 (n + 1) + (Nat.choose 2 n : ℤ)).toNat

end

end A318848.P15587137676542129924

/-! ## A318848.P15507615350741494347

`A281119(ceil(acot(n))*A181821(n+1))`
-/

namespace A318848.P15507615350741494347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A181821 (n + 1)).toNat

end

end A318848.P15507615350741494347

/-! ## A318848.P4686196010754221815

`A281119(A181821(n+1)+char[(8*n)²])`
-/

namespace A318848.P4686196010754221815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (A181821 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A318848.P4686196010754221815

/-!
# A318849: Number of orderless tree-partitions of a multiset whose multiplicities are the prime indices of n.

The programs for A318849, there is no canonical definition to state claims against.
-/

/-! ## A318849.P1310618952115124786

`A292504(A181821(n+1))`
-/

namespace A318849.P1310618952115124786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (A181821 (n + 1)).toNat

end

end A318849.P1310618952115124786

/-! ## A318849.P998650799189563882

`A292504(A304660(n+1))`
-/

namespace A318849.P998650799189563882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (A304660 (n + 1)).toNat

end

end A318849.P998650799189563882

/-! ## A318849.P4850979164471950872

`A318847(n+1)-A337509(A301754(n+1))`
-/

namespace A318849.P4850979164471950872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (n + 1) - A337509 (A301754 (n + 1)).toNat

end

end A318849.P4850979164471950872

/-!
# A318850: Number of rooted trees with n nodes such that no more than three isomorphic subtrees extend from the same node.

The programs for A318850, there is no canonical definition to state claims against.
-/

/-! ## A318850.P17210807491067431621

`A318757(∑[n+3]+n+3)`
-/

namespace A318850.P17210807491067431621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A318850.P17210807491067431621

/-! ## A318850.P7009600687984716421

`A033999(n)²*A318757(A046691(n+2))`
-/

namespace A318850.P7009600687984716421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A318757 (A046691 (n + 2)).toNat

end

end A318850.P7009600687984716421

/-! ## A318850.P3353445240565117552

`A318757(A046691(n+2))/(A000007(n)+1)`
-/

namespace A318850.P3353445240565117552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318757 (A046691 (n + 2)).toNat : ℚ) / (A000007 n + 1 : ℚ)

end

end A318850.P3353445240565117552

/-! ## A318850.P2962116020069750726

`A318757(A046691(n+2))+A008683(8*(n+1))`
-/

namespace A318850.P2962116020069750726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A046691 (n + 2)).toNat + A008683 (8 * (n + 1))

end

end A318850.P2962116020069750726

/-! ## A318850.P12075889440889212287

`A318757(A046691(n+2))^gcd(1-n, A007918(n))²`
-/

namespace A318850.P12075889440889212287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A046691 (n + 2)).toNat ^ Int.gcd (1 - (n : ℤ)) (A007918 n) ^ 2

end

end A318850.P12075889440889212287

/-! ## A318850.P13327695168350055828

`A318757(A046691(n+2))%A318853(2*n+1)`
-/

namespace A318850.P13327695168350055828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318757 (A046691 (n + 2)).toNat) (A318853 (2 * n + 1))

end

end A318850.P13327695168350055828

/-!
# A318851: Number of rooted trees with n nodes such that no more than four isomorphic subtrees extend from the same node.

The programs for A318851, there is no canonical definition to state claims against.
-/

/-! ## A318851.P15861672034289842093

`A318757(∑[n+5]+5)`
-/

namespace A318851.P15861672034289842093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A318851.P15861672034289842093

/-! ## A318851.P14151905126431488014

`A057427(n)*A318757(A052905(n+2))`
-/

namespace A318851.P14151905126431488014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A318757 (A052905 (n + 2)).toNat

end

end A318851.P14151905126431488014

/-! ## A318851.P16808186379151965355

`A001222(A007500(n+1))*A318757(A052905(n+2))`
-/

namespace A318851.P16808186379151965355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007500 (n + 1)).toNat * A318757 (A052905 (n + 2)).toNat

end

end A318851.P16808186379151965355

/-! ## A318851.P18359775210822128314

`A318757(A052905(n+2))%A227076(A000217(n))`
-/

namespace A318851.P18359775210822128314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318757 (A052905 (n + 2)).toNat) (A227076 (A000217 n).toNat)

end

end A318851.P18359775210822128314

/-! ## A318851.P14543756655900965929

`A001222(A002385(n+1))*A318757(A052905(n+2))`
-/

namespace A318851.P14543756655900965929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002385 (n + 1)).toNat * A318757 (A052905 (n + 2)).toNat

end

end A318851.P14543756655900965929

/-! ## A318851.P16377909637075698480

`A318757(A052905(n+2))%A042858(n)`
-/

namespace A318851.P16377909637075698480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318757 (A052905 (n + 2)).toNat) (A042858 n)

end

end A318851.P16377909637075698480

/-!
# A318852: Number of rooted trees with n nodes such that no more than five isomorphic subtrees extend from the same node.

The programs for A318852, there is no canonical definition to state claims against.
-/

/-! ## A318852.P1666964615319290102

`A318757(A055999(n+3))`
-/

namespace A318852.P1666964615319290102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A055999 (n + 3)).toNat

end

end A318852.P1666964615319290102

/-! ## A318852.P9715985740175179690

`A318757(Δ[A026054(n+3)])`
-/

namespace A318852.P9715985740175179690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (f1 (n + 1) - f1 n).toNat

end

end A318852.P9715985740175179690

/-! ## A318852.P7077144701661574979

`A318757(A052905(n+3)-1)`
-/

namespace A318852.P7077144701661574979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A052905 (n + 3) - 1).toNat

end

end A318852.P7077144701661574979

/-! ## A318852.P11683576767370313806

`A318757(A000217(n+6)-6)`
-/

namespace A318852.P11683576767370313806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000217 (n + 6) - 6).toNat

end

end A318852.P11683576767370313806

/-! ## A318852.P16647276803642023891

`A318757(A000124(n+6)-7)`
-/

namespace A318852.P16647276803642023891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000124 (n + 6) - 7).toNat

end

end A318852.P16647276803642023891

/-! ## A318852.P14020082008901403676

`A318757(A000096(n+4)+n+1)`
-/

namespace A318852.P14020082008901403676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A318852.P14020082008901403676

/-! ## A318852.P12905342725493463171

`A318757(2*n+A161680(n+5)+5)`
-/

namespace A318852.P12905342725493463171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 ((2 * n : ℤ) + (A161680 (n + 5) + 5)).toNat

end

end A318852.P12905342725493463171

/-!
# A318853: Number of rooted trees with n nodes such that no more than six isomorphic subtrees extend from the same node.

The programs for A318853, there is no canonical definition to state claims against.
-/

/-! ## A318853.P17587914639753379925

`A318757(A052905(n+4)-2)`
-/

namespace A318853.P17587914639753379925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A052905 (n + 4) - 2).toNat

end

end A318853.P17587914639753379925

/-! ## A318853.P9291424945855312183

`A318757(A046691(n+5)-3)`
-/

namespace A318853.P9291424945855312183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A046691 (n + 5) - 3).toNat

end

end A318853.P9291424945855312183

/-! ## A318853.P17053360388059083762

`A318757(A000217(n+7)-7)`
-/

namespace A318853.P17053360388059083762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000217 (n + 7) - 7).toNat

end

end A318853.P17053360388059083762

/-! ## A318853.P15728622912428829025

`A318757(Δ[A026054(n+4)]-1)`
-/

namespace A318853.P15728622912428829025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (f1 (n + 1) - f1 n - 1).toNat

end

end A318853.P15728622912428829025

/-! ## A318853.P10421298601048101206

`A318757(A000124(n+6)+n-1)`
-/

namespace A318853.P10421298601048101206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A318853.P10421298601048101206

/-! ## A318853.P112681184167451939

`A318757(A008486(n+4)+A000096(n+3))`
-/

namespace A318853.P112681184167451939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A008486 (n + 4) + A000096 (n + 3)).toNat

end

end A318853.P112681184167451939

/-!
# A318854: Number of rooted trees with n nodes such that no more than seven isomorphic subtrees extend from the same node.

The programs for A318854, there is no canonical definition to state claims against.
-/

/-! ## A318854.P18306657009981021651

`A318757(A000217(n+8)-8)`
-/

namespace A318854.P18306657009981021651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000217 (n + 8) - 8).toNat

end

end A318854.P18306657009981021651

/-! ## A318854.P8529501828671922863

`A318757(A000124(n+8)-9)`
-/

namespace A318854.P8529501828671922863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000124 (n + 8) - 9).toNat

end

end A318854.P8529501828671922863

/-! ## A318854.P401098512204617644

`A318757(A167499(n+7)-13)`
-/

namespace A318854.P401098512204617644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A167499 (n + 7) - 13).toNat

end

end A318854.P401098512204617644

/-! ## A318854.P3521068265884838065

`A318757(A052905(n+6)-(n+12))`
-/

namespace A318854.P3521068265884838065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A052905 (n + 6) - (n + 12 : ℤ)).toNat

end

end A318854.P3521068265884838065

/-! ## A318854.P2714926607508707685

`A318757(A166136(n+5)+A004273(n+1))`
-/

namespace A318854.P2714926607508707685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A166136 (n + 5) + A004273 (n + 1)).toNat

end

end A318854.P2714926607508707685

/-!
# A318855: Number of rooted trees with n nodes such that no more than eight isomorphic subtrees extend from the same node.

The programs for A318855, there is no canonical definition to state claims against.
-/

/-! ## A318855.P4998166249243635051

`A318757(A027379(n+7)-6)`
-/

namespace A318855.P4998166249243635051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A027379 (n + 7) - 6).toNat

end

end A318855.P4998166249243635051

/-! ## A318855.P12423449106226601803

`A318757(A055998(n+7)-6)`
-/

namespace A318855.P12423449106226601803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A055998 (n + 7) - 6).toNat

end

end A318855.P12423449106226601803

/-! ## A318855.P1793106580259993799

`A318757(A000217(n+9)-9)`
-/

namespace A318855.P1793106580259993799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000217 (n + 9) - 9).toNat

end

end A318855.P1793106580259993799

/-! ## A318855.P6983182589253868389

`A318757(n+4+A046691(n+6))`
-/

namespace A318855.P6983182589253868389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 ((n + 4 : ℤ) + A046691 (n + 6)).toNat

end

end A318855.P6983182589253868389

/-! ## A318855.P467500362898179026

`A318757(A004273(n+4)+A000124(n+7))`
-/

namespace A318855.P467500362898179026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A004273 (n + 4) + A000124 (n + 7)).toNat

end

end A318855.P467500362898179026

/-!
# A318856: Number of rooted trees with n nodes such that no more than nine isomorphic subtrees extend from the same node.

The programs for A318856, there is no canonical definition to state claims against.
-/

/-! ## A318856.P6785686359011970661

`A318757(A000217(n+10)-10)`
-/

namespace A318856.P6785686359011970661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000217 (n + 10) - 10).toNat

end

end A318856.P6785686359011970661

/-! ## A318856.P7784183234949727027

`A318757(A166136(n+7)+A004273(n+2))`
-/

namespace A318856.P7784183234949727027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A166136 (n + 7) + A004273 (n + 2)).toNat

end

end A318856.P7784183234949727027

/-! ## A318856.P7995182610555569076

`A318757(A008486(n+6)+A000096(n+6))`
-/

namespace A318856.P7995182610555569076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A008486 (n + 6) + A000096 (n + 6)).toNat

end

end A318856.P7995182610555569076

/-! ## A318856.P12081886961492393318

`A318757(A028387(n+11)-A167499(n+13))`
-/

namespace A318856.P12081886961492393318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A028387 (n + 11) - A167499 (n + 13)).toNat

end

end A318856.P12081886961492393318

/-! ## A318856.P10839336622019339277

`A318757(A002522(n+13)-A167499(n+14))`
-/

namespace A318856.P10839336622019339277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A002522 (n + 13) - A167499 (n + 14)).toNat

end

end A318856.P10839336622019339277

/-!
# A318857: Number of rooted trees with n nodes such that no more than ten isomorphic subtrees extend from the same node.

The programs for A318857, there is no canonical definition to state claims against.
-/

/-! ## A318857.P14107098331615793295

`A318757(A055998(n+9)-8)`
-/

namespace A318857.P14107098331615793295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A055998 (n + 9) - 8).toNat

end

end A318857.P14107098331615793295

/-! ## A318857.P8529869749249274431

`A318757(A000217(n+11)-11)`
-/

namespace A318857.P8529869749249274431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000217 (n + 11) - 11).toNat

end

end A318857.P8529869749249274431

/-! ## A318857.P14623496410606504383

`A318757(n+3+A027379(n+8))`
-/

namespace A318857.P14623496410606504383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 ((n + 3 : ℤ) + A027379 (n + 8)).toNat

end

end A318857.P14623496410606504383

/-! ## A318857.P12782143876516890734

`A318757(A000124(n+10)+n-1)`
-/

namespace A318857.P12782143876516890734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A000124 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A318857.P12782143876516890734

/-! ## A318857.P12220384899805385594

`A318757(A004273(n+5)+A000124(n+9))`
-/

namespace A318857.P12220384899805385594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A004273 (n + 5) + A000124 (n + 9)).toNat

end

end A318857.P12220384899805385594

/-!
# A318858: Number of still-lifes synthesizable from n gliders in Conway's game of Life.

The programs for A318858, there is no canonical definition to state claims against.
-/

/-! ## A318858.P7284875512588065770

`eq[A035930(2*(n+2)), A043096(n+1)]-A035930(2*(n+2))`
-/

namespace A318858.P7284875512588065770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A035930 (2 * (n + 2))

end

end A318858.P7284875512588065770

/-!
# A318859: Number of rooted trees with n nodes such that two equals the maximal number of isomorphic subtrees extending from the same node.

The programs for A318859, there is no canonical definition to state claims against.
-/

/-! ## A318859.P13339408017596064816

`A248869(n+2)-A004111(n+2)`
-/

namespace A318859.P13339408017596064816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248869 (n + 2) - A004111 (n + 2)

end

end A318859.P13339408017596064816

/-! ## A318859.P5417812261143019938

`A318758(∑[n+1]+3)`
-/

namespace A318859.P5417812261143019938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A318859.P5417812261143019938

/-! ## A318859.P12314563031956944074

`char[A059399(n+1)]*A318758(A253145(n)+3)`
-/

namespace A318859.P12314563031956944074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A318758 (A253145 n + 3).toNat

end

end A318859.P12314563031956944074

/-! ## A318859.P7588055242002552879

`A318758(A000217(n+1)+3)%A304592(n+1)`
-/

namespace A318859.P7588055242002552879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318758 (A000217 (n + 1) + 3).toNat) (A304592 (n + 1))

end

end A318859.P7588055242002552879

/-! ## A318859.P645957541272342917

`A318758(A000217(n+1)+3)%A028080(n)`
-/

namespace A318859.P645957541272342917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318758 (A000217 (n + 1) + 3).toNat) (A028080 n)

end

end A318859.P645957541272342917

/-!
# A318860: Number of rooted trees with n nodes such that three equals the maximal number of isomorphic subtrees extending from the same node.

The programs for A318860, there is no canonical definition to state claims against.
-/

/-! ## A318860.P951712752186682405

`A318850(n+3)-A248869(n+3)`
-/

namespace A318860.P951712752186682405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318850 (n + 3) - A248869 (n + 3)

end

end A318860.P951712752186682405

/-! ## A318860.P17242973421620394843

`A318758(∑[n+2]+5)`
-/

namespace A318860.P17242973421620394843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A318860.P17242973421620394843

/-! ## A318860.P7655249272672928302

`Δ[A318758(A000096(n)+5)+a(n-1)]` with `a(0)=1`
-/

namespace A318860.P7655249272672928302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A318758 (A000096 n + 5).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318860.P7655249272672928302

/-! ## A318860.P13712040493759558680

`A318758(A000096(n+1)+5)%A000244(n)`
-/

namespace A318860.P13712040493759558680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318758 (A000096 (n + 1) + 5).toNat) (A000244 n)

end

end A318860.P13712040493759558680

/-! ## A318860.P2655893370440972665

`A318758(A000096(n+1)+5)+A121373(A085986(2*n+1))`
-/

namespace A318860.P2655893370440972665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A000096 (n + 1) + 5).toNat + A121373 (A085986 (2 * n + 1)).toNat

end

end A318860.P2655893370440972665

/-!
# A318861: Number of rooted trees with n nodes such that four equals the maximal number of isomorphic subtrees extending from the same node.

The programs for A318861, there is no canonical definition to state claims against.
-/

/-! ## A318861.P16381073109753809295

`A318758(∑[n+3]+8)`
-/

namespace A318861.P16381073109753809295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A318861.P16381073109753809295

/-! ## A318861.P4810306293610845411

`A057427(n)*A318758(A000217(n+3)+5)`
-/

namespace A318861.P4810306293610845411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A318758 (A000217 (n + 3) + 5).toNat

end

end A318861.P4810306293610845411

/-! ## A318861.P8718887930552073035

`A318758(A000217(n+3)+5)%A000244(n)`
-/

namespace A318861.P8718887930552073035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318758 (A000217 (n + 3) + 5).toNat) (A000244 n)

end

end A318861.P8718887930552073035

/-! ## A318861.P9287318851077454024

`A001221(A001316(n+1))*A318758(A000217(n+3)+5)`
-/

namespace A318861.P9287318851077454024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 (n + 1)).toNat * A318758 (A000217 (n + 3) + 5).toNat

end

end A318861.P9287318851077454024

/-!
# A318862: Number of rooted trees with n nodes such that five equals the maximal number of isomorphic subtrees extending from the same node.

The programs for A318862, there is no canonical definition to state claims against.
-/

/-! ## A318862.P13787815056164666556

`A318758(A155212(n)+14)`
-/

namespace A318862.P13787815056164666556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A155212 n + 14).toNat

end

end A318862.P13787815056164666556

/-! ## A318862.P3423999442691680686

`A318758(A167499(n+3)+1)`
-/

namespace A318862.P3423999442691680686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A167499 (n + 3) + 1).toNat

end

end A318862.P3423999442691680686

/-! ## A318862.P1731424080936448380

`A318758(A167614(n+3)+3)`
-/

namespace A318862.P1731424080936448380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A167614 (n + 3) + 3).toNat

end

end A318862.P1731424080936448380

/-! ## A318862.P12297125296046260289

`A318758(A000124(n+4)+5)`
-/

namespace A318862.P12297125296046260289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A000124 (n + 4) + 5).toNat

end

end A318862.P12297125296046260289

/-! ## A318862.P18058599117441039725

`A318758(A052905(n+1)+11)`
-/

namespace A318862.P18058599117441039725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A052905 (n + 1) + 11).toNat

end

end A318862.P18058599117441039725

/-! ## A318862.P15093660488980730621

`A318758(A133263(n+5)-(n+1))`
-/

namespace A318862.P15093660488980730621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A133263 (n + 5) - (n + 1 : ℤ)).toNat

end

end A318862.P15093660488980730621

/-! ## A318862.P3467895181052852995

`A318758(A002620(n+1)+A002620(n+8))`
-/

namespace A318862.P3467895181052852995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A002620 (n + 1) + A002620 (n + 8)).toNat

end

end A318862.P3467895181052852995

/-!
# A318863: Number of rooted trees with n nodes such that six equals the maximal number of isomorphic subtrees extending from the same node.

The programs for A318863, there is no canonical definition to state claims against.
-/

/-! ## A318863.P9953997251645049849

`A318758(A167499(n+4)+2)`
-/

namespace A318863.P9953997251645049849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A167499 (n + 4) + 2).toNat

end

end A318863.P9953997251645049849

/-! ## A318863.P3365033577771149532

`A318758(A167614(n+4)+4)`
-/

namespace A318863.P3365033577771149532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A167614 (n + 4) + 4).toNat

end

end A318863.P3365033577771149532

/-! ## A318863.P6507691606935748165

`A318758(A000124(n+5)+6)`
-/

namespace A318863.P6507691606935748165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A000124 (n + 5) + 6).toNat

end

end A318863.P6507691606935748165

/-! ## A318863.P7044431101642955502

`A318758(A133263(n+6)-(n+1))`
-/

namespace A318863.P7044431101642955502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A133263 (n + 6) - (n + 1 : ℤ)).toNat

end

end A318863.P7044431101642955502

/-! ## A318863.P16994237860709888894

`A318758(A055999(n+5)-A016789(n+2))`
-/

namespace A318863.P16994237860709888894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A055999 (n + 5) - A016789 (n + 2)).toNat

end

end A318863.P16994237860709888894

/-! ## A318863.P15617338574075279476

`A318758(A052905(n+5)-A008486(n+3))`
-/

namespace A318863.P15617338574075279476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A052905 (n + 5) - A008486 (n + 3)).toNat

end

end A318863.P15617338574075279476

/-!
# A318864: Number of rooted trees with n nodes such that seven equals the maximal number of isomorphic subtrees extending from the same node.

The programs for A318864, there is no canonical definition to state claims against.
-/

/-! ## A318864.P17565903264874219560

`A318758(A167499(n+5)+3)`
-/

namespace A318864.P17565903264874219560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A167499 (n + 5) + 3).toNat

end

end A318864.P17565903264874219560

/-! ## A318864.P14136015557500025900

`A318758(A167614(n+5)+5)`
-/

namespace A318864.P14136015557500025900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A167614 (n + 5) + 5).toNat

end

end A318864.P14136015557500025900

/-! ## A318864.P14054181249435355598

`A318758(A000124(n+6)+7)`
-/

namespace A318864.P14054181249435355598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A000124 (n + 6) + 7).toNat

end

end A318864.P14054181249435355598

/-! ## A318864.P2709224359902715826

`A318758(A133263(n+7)-(n+1))`
-/

namespace A318864.P2709224359902715826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A133263 (n + 7) - (n + 1 : ℤ)).toNat

end

end A318864.P2709224359902715826

/-! ## A318864.P9689003386072957275

`A318758(A055999(n)+A016789(n+9))`
-/

namespace A318864.P9689003386072957275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A055999 n + A016789 (n + 9)).toNat

end

end A318864.P9689003386072957275

/-!
# A318865: Number of rooted trees with n nodes such that eight equals the maximal number of isomorphic subtrees extending from the same node.

The programs for A318865, there is no canonical definition to state claims against.
-/

/-! ## A318865.P16824147541506720412

`A318758(A133263(n+7)+7)`
-/

namespace A318865.P16824147541506720412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A133263 (n + 7) + 7).toNat

end

end A318865.P16824147541506720412

/-! ## A318865.P7471477393904807960

`A318758(A000124(n+7)+8)`
-/

namespace A318865.P7471477393904807960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A000124 (n + 7) + 8).toNat

end

end A318865.P7471477393904807960

/-! ## A318865.P14214092438217842020

`A318758(A134869(n+7)+8)`
-/

namespace A318865.P14214092438217842020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A134869 (n + 7) + 8).toNat

end

end A318865.P14214092438217842020

/-! ## A318865.P11787098021372319475

`A318758(A000217(n+7)+9)`
-/

namespace A318865.P11787098021372319475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A000217 (n + 7) + 9).toNat

end

end A318865.P11787098021372319475

/-! ## A318865.P11343015251806937830

`A318758(A055999(n+4)+15)`
-/

namespace A318865.P11343015251806937830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A055999 (n + 4) + 15).toNat

end

end A318865.P11343015251806937830

/-! ## A318865.P5674461097195865218

`A318758(A000096(n+7)-(n-2))`
-/

namespace A318865.P5674461097195865218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A000096 (n + 7) - ((n : ℤ) - 2)).toNat

end

end A318865.P5674461097195865218

/-!
# A318866: Number of rooted trees with n nodes such that nine equals the maximal number of isomorphic subtrees extending from the same node.

The programs for A318866, there is no canonical definition to state claims against.
-/

/-! ## A318866.P13993142584658256572

`A318758(A000124(n+8)+9)`
-/

namespace A318866.P13993142584658256572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A000124 (n + 8) + 9).toNat

end

end A318866.P13993142584658256572

/-! ## A318866.P424798097570652974

`A318758(A133263(n+9)-(n+1))`
-/

namespace A318866.P424798097570652974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A133263 (n + 9) - (n + 1 : ℤ)).toNat

end

end A318866.P424798097570652974

/-! ## A318866.P12142829798595938706

`A318758(A055999(n+8)-A016789(n+4))`
-/

namespace A318866.P12142829798595938706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A055999 (n + 8) - A016789 (n + 4)).toNat

end

end A318866.P12142829798595938706

/-! ## A318866.P5328761073383668736

`A318758(A052905(n+8)-A008486(n+5))`
-/

namespace A318866.P5328761073383668736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A052905 (n + 8) - A008486 (n + 5)).toNat

end

end A318866.P5328761073383668736

/-! ## A318866.P15662833073991097125

`A318758(A167499(n+9)-A004277(n+7))`
-/

namespace A318866.P15662833073991097125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A167499 (n + 9) - A004277 (n + 7)).toNat

end

end A318866.P15662833073991097125

/-!
# A318867: Number of rooted trees with n nodes such that ten equals the maximal number of isomorphic subtrees extending from the same node.

The programs for A318867, there is no canonical definition to state claims against.
-/

/-! ## A318867.P16151230596509668277

`A318758(A167487(n+8)+4)`
-/

namespace A318867.P16151230596509668277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A167487 (n + 8) + 4).toNat

end

end A318867.P16151230596509668277

/-! ## A318867.P6251803914943896425

`A318758(A167499(n+8)+6)`
-/

namespace A318867.P6251803914943896425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A167499 (n + 8) + 6).toNat

end

end A318867.P6251803914943896425

/-! ## A318867.P5130751336141815527

`A318758(A133263(n+9)+9)`
-/

namespace A318867.P5130751336141815527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A133263 (n + 9) + 9).toNat

end

end A318867.P5130751336141815527

/-! ## A318867.P530916111977410415

`A318758(A000096(n+8)+12)`
-/

namespace A318867.P530916111977410415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A000096 (n + 8) + 12).toNat

end

end A318867.P530916111977410415

/-!
# A318869: Inverse Euler transform of A122082.

The programs for A318869, there is no canonical definition to state claims against.
-/

/-! ## A318869.P18422893292726396573

`A123549(n)+A318870(n)-A005142(n)`
-/

namespace A318869.P18422893292726396573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123549 n + (A318870 n - A005142 n)

end

end A318869.P18422893292726396573

/-! ## A318869.P5132250789799113499

`A056172(A145640(n+1)+3)`
-/

namespace A318869.P5132250789799113499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A145640 (n + 1) + 3).toNat

end

end A318869.P5132250789799113499

/-!
# A318870: Number of connected bipartite graphs on n unlabeled nodes with a distinguished bipartite block.

The programs for A318870, there is no canonical definition to state claims against.
-/

/-! ## A318870.P4895220487426545709

`A007776(or(n, A233583(n+1)))`
-/

namespace A318870.P4895220487426545709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007776 (Int.lor (n : ℤ) (A233583 (n + 1))).toNat

end

end A318870.P4895220487426545709

/-! ## A318870.P5166268159267584076

`A007776(gcd(A004278(n+2), A008585(n)))`
-/

namespace A318870.P5166268159267584076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007776 (Int.gcd (A004278 (n + 2)) (A008585 n))

end

end A318870.P5166268159267584076

/-! ## A318870.P7681979813155867298

`lcm(A000034(n), A007776(A233583(n+1)))`
-/

namespace A318870.P7681979813155867298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A007776 (A233583 (n + 1)).toNat)

end

end A318870.P7681979813155867298

/-! ## A318870.P1114049824637658699

`A007776(A233583(n+1))-A133985(A001359(n+1))`
-/

namespace A318870.P1114049824637658699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007776 (A233583 (n + 1)).toNat - A133985 (A001359 (n + 1)).toNat

end

end A318870.P1114049824637658699

/-! ## A318870.P12662762939916898837

`A014963(A137326(n+1))*A007776(A233583(n+1))`
-/

namespace A318870.P12662762939916898837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A137326 (n + 1)).toNat * A007776 (A233583 (n + 1)).toNat

end

end A318870.P12662762939916898837

/-!
# A318871: Minimum Heinz number of a factorization of n into factors > 1.

The programs for A318871, there is no canonical definition to state claims against.
-/

/-! ## A318871.P17903721186177844942

`A378175(A096276(n)+1)`
-/

namespace A318871.P17903721186177844942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378175 (A096276 n + 1).toNat

end

end A318871.P17903721186177844942

/-! ## A318871.P11082029390611428500

`A229017(n+1)-record[A229017(A003963(n+1))-(n+1)]`
-/

namespace A318871.P11082029390611428500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229017 (A003963 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229017 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318871.P11082029390611428500

/-! ## A318871.P9733657493601660521

`A330225(n+1)-A258857(A052409(n+1))`
-/

namespace A318871.P9733657493601660521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330225 (n + 1) - A258857 (A052409 (n + 1)).toNat

end

end A318871.P9733657493601660521

/-! ## A318871.P2198274611904796262

`A330225(n+1)-A093003(A316789(n+1))`
-/

namespace A318871.P2198274611904796262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330225 (n + 1) - A093003 (A316789 (n + 1)).toNat

end

end A318871.P2198274611904796262

/-! ## A318871.P3296371705780354395

`A330225(n+1)-and(A007814(n+1), A330197(n+3))`
-/

namespace A318871.P3296371705780354395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330225 (n + 1) - Int.land (A007814 (n + 1)) (A330197 (n + 3))

end

end A318871.P3296371705780354395

/-!
# A318872: Partial sums of A316156.

The programs for A318872, there is no canonical definition to state claims against.
-/

/-! ## A318872.P10465763570083019644

`∑[A316156(n+1)]`
-/

namespace A318872.P10465763570083019644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318872.P10465763570083019644

/-! ## A318872.P4264008260408161005

`∑[A318873(n)+a(n-1)]` with `a(0)=1`
-/

namespace A318872.P4264008260408161005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A318873 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318872.P4264008260408161005

/-! ## A318872.P5919968154884060692

`∑[∑[A318873(A028310(n))]]`
-/

namespace A318872.P5919968154884060692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318872.P5919968154884060692

/-! ## A318872.P2281995297971450040

`∑[∑[A318873(A000038(n)+n)]]`
-/

namespace A318872.P2281995297971450040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 (A000038 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318872.P2281995297971450040

/-! ## A318872.P3375820663891814345

`∑[∑[A318873(A123108(2*n))]]`
-/

namespace A318872.P3375820663891814345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318872.P3375820663891814345

/-! ## A318872.P6241188730506162783

`∑[record[A316156(A154958(n))]]`
-/

namespace A318872.P6241188730506162783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318872.P6241188730506162783

/-! ## A318872.P8498588371651474369

`∑[record[A316156(A020986(n))]]`
-/

namespace A318872.P8498588371651474369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318872.P8498588371651474369

/-! ## A318872.P11926609896748998945

`∑[record[A316156(A028920(n))]]`
-/

namespace A318872.P11926609896748998945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318872.P11926609896748998945

/-!
# A318873: First differences of A316156.

The programs for A318873, there is no canonical definition to state claims against.
-/

/-! ## A318873.P14735745099032296292

`A316156(n+2)-A316156(n+1)`
-/

namespace A318873.P14735745099032296292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (n + 2) - A316156 (n + 1)

end

end A318873.P14735745099032296292

/-! ## A318873.P6982296782619400534

`Δ[A316156(n+1)]`
-/

namespace A318873.P6982296782619400534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318873.P6982296782619400534

/-! ## A318873.P13645237611814404999

`A000027(Δ[A316156(-xor(n, -1))])`
-/

namespace A318873.P13645237611814404999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A318873.P13645237611814404999

/-! ## A318873.P10222906005804432152

`Δ[record[A316156(A331300(n))]]`
-/

namespace A318873.P10222906005804432152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318873.P10222906005804432152

/-! ## A318873.P2733668610589922455

`Δ[record[A316156(A154958(n))]]`
-/

namespace A318873.P2733668610589922455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318873.P2733668610589922455

/-! ## A318873.P7140449224353091293

`Δ[record[A316156(A262519(n))]]`
-/

namespace A318873.P7140449224353091293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318873.P7140449224353091293

/-! ## A318873.P11524789746562827755

`Δ[record[A316156(A020986(n))]]`
-/

namespace A318873.P11524789746562827755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318873.P11524789746562827755

/-! ## A318873.P4104950665702061717

`Δ[record[A316156(A028920(n))]]`
-/

namespace A318873.P4104950665702061717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316156 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318873.P4104950665702061717

/-!
# A318874: Number of divisors d of n for which 2*phi(d) > d.

The programs for A318874, the canonical program `A318874.P6528447508863848521` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318874 has offset 1).

The definition of A318874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318874.P6528447508863848521

`∑{d}[n+1, A374134(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318874

/-- `∑{d}[n+1, A374134(#)]` -/
def P6528447508863848521.Spec : Prop :=
  ∀ n, P6528447508863848521.a n = A318874 (n + 1)

theorem P6528447508863848521.correct : P6528447508863848521.Spec := by
  intro n
  simp only [A318874, Nat.add_sub_cancel]

end A318874

/-! ## A318874.P13127444625957308511

`∑{d}[n+1, floor(A002618(#)/A000217(#))]`
-/

namespace A318874.P13127444625957308511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(A002618 d : ℚ) / (A000217 d : ℚ)⌋

end

end A318874.P13127444625957308511

namespace A318874

/-- `∑{d}[n+1, floor(A002618(#)/A000217(#))]` -/
def P13127444625957308511.Spec : Prop :=
  ∀ n, P13127444625957308511.a n = A318874 (n + 1)

end A318874

/-! ## A318874.P14942396890492876638

`∑{d}[n+1, A327153(floor(#/A000010(#)))]`
-/

namespace A318874.P14942396890492876638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327153 ⌊(d : ℚ) / (A000010 d : ℚ)⌋.toNat

end

end A318874.P14942396890492876638

namespace A318874

/-- `∑{d}[n+1, A327153(floor(#/A000010(#)))]` -/
def P14942396890492876638.Spec : Prop :=
  ∀ n, P14942396890492876638.a n = A318874 (n + 1)

end A318874

/-! ## A318874.P5571648135670910545

`∑{d}[A000265(n+1), round(A000010(#)/#)]`
-/

namespace A318874.P5571648135670910545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.roundAway ((A000010 d : ℚ) / (d : ℚ))

end

end A318874.P5571648135670910545

namespace A318874

/-- `∑{d}[A000265(n+1), round(A000010(#)/#)]` -/
def P5571648135670910545.Spec : Prop :=
  ∀ n, P5571648135670910545.a n = A318874 (n + 1)

end A318874

/-! ## A318874.P2150010006971353804

`A001227(n+1)-A318875(A000265(n+1))`
-/

namespace A318874.P2150010006971353804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A318875 (A000265 (n + 1)).toNat

end

end A318874.P2150010006971353804

namespace A318874

/-- `A001227(n+1)-A318875(A000265(n+1))` -/
def P2150010006971353804.Spec : Prop :=
  ∀ n, P2150010006971353804.a n = A318874 (n + 1)

end A318874

/-! ## A318874.P14486284794877692200

`A000005(n+1)-(A318875(n+1)+A007814(n+1))`
-/

namespace A318874.P14486284794877692200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A318875 (n + 1) + A007814 (n + 1))

end

end A318874.P14486284794877692200

namespace A318874

/-- `A000005(n+1)-(A318875(n+1)+A007814(n+1))` -/
def P14486284794877692200.Spec : Prop :=
  ∀ n, P14486284794877692200.a n = A318874 (n + 1)

end A318874

/-!
# A318875: Number of divisors d of n for which 2*phi(d) < d.

The programs for A318875, the canonical program `A318875.P8998156499210049195` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318875 has offset 1).

The definition of A318875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318875.P8998156499210049195

`∑{d}[n+1, A323170(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318875

/-- `∑{d}[n+1, A323170(#)]` -/
def P8998156499210049195.Spec : Prop :=
  ∀ n, P8998156499210049195.a n = A318875 (n + 1)

theorem P8998156499210049195.correct : P8998156499210049195.Spec := by
  intro n
  simp only [A318875, Nat.add_sub_cancel]

end A318875

/-! ## A318875.P9559822463797496970

`A000005(n+1)-(A318874(n+1)+A007814(n+1))`
-/

namespace A318875.P9559822463797496970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A318874 (n + 1) + A007814 (n + 1))

end

end A318875.P9559822463797496970

namespace A318875

/-- `A000005(n+1)-(A318874(n+1)+A007814(n+1))` -/
def P9559822463797496970.Spec : Prop :=
  ∀ n, P9559822463797496970.a n = A318875 (n + 1)

end A318875

/-! ## A318875.P18042412287953131988

`(A299485(n+1)-1)*A007814(n+1)`
-/

namespace A318875.P18042412287953131988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A299485 (n + 1) - 1) * A007814 (n + 1)

end

end A318875.P18042412287953131988

namespace A318875

/-- `(A299485(n+1)-1)*A007814(n+1)` -/
def P18042412287953131988.Spec : Prop :=
  ∀ n, P18042412287953131988.a n = A318875 (n + 1)

end A318875

/-! ## A318875.P14084251817221042832

`A183063(n+1)-A007814(A020338(n+1))`
-/

namespace A318875.P14084251817221042832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) - A007814 (A020338 (n + 1)).toNat

end

end A318875.P14084251817221042832

namespace A318875

/-- `A183063(n+1)-A007814(A020338(n+1))` -/
def P14084251817221042832.Spec : Prop :=
  ∀ n, P14084251817221042832.a n = A318875 (n + 1)

end A318875

/-! ## A318875.P18429616513481480053

`val(n+1, 2)*A325770((n+1)/2^val(n+1, 2))`
-/

namespace A318875.P18429616513481480053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A325770 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A318875.P18429616513481480053

namespace A318875

/-- `val(n+1, 2)*A325770((n+1)/2^val(n+1, 2))` -/
def P18429616513481480053.Spec : Prop :=
  ∀ n, P18429616513481480053.a n = A318875 (n + 1)

end A318875

/-! ## A318875.P8556834443675958526

`val(n+1, 2)*A356225((n+1)/2^val(n+1, 2))`
-/

namespace A318875.P8556834443675958526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A356225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A318875.P8556834443675958526

namespace A318875

/-- `val(n+1, 2)*A356225((n+1)/2^val(n+1, 2))` -/
def P8556834443675958526.Spec : Prop :=
  ∀ n, P8556834443675958526.a n = A318875 (n + 1)

end A318875

/-! ## A318875.P18404372876785351406

`A183063(n+1)-A007814(A000217(2*(n+1)))`
-/

namespace A318875.P18404372876785351406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) - A007814 (A000217 (2 * (n + 1))).toNat

end

end A318875.P18404372876785351406

namespace A318875

/-- `A183063(n+1)-A007814(A000217(2*(n+1)))` -/
def P18404372876785351406.Spec : Prop :=
  ∀ n, P18404372876785351406.a n = A318875 (n + 1)

end A318875

/-! ## A318875.P9118920280343334269

`A183063(n+1)-A007814(A161680(2*n+3))`
-/

namespace A318875.P9118920280343334269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) - A007814 (A161680 (2 * n + 3)).toNat

end

end A318875.P9118920280343334269

namespace A318875

/-- `A183063(n+1)-A007814(A161680(2*n+3))` -/
def P9118920280343334269.Spec : Prop :=
  ∀ n, P9118920280343334269.a n = A318875 (n + 1)

end A318875

/-! ## A318875.P6976594904255287114

`A183063(n+1)-A299485(A038712(n+1))`
-/

namespace A318875.P6976594904255287114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) - A299485 (A038712 (n + 1)).toNat

end

end A318875.P6976594904255287114

namespace A318875

/-- `A183063(n+1)-A299485(A038712(n+1))` -/
def P6976594904255287114.Spec : Prop :=
  ∀ n, P6976594904255287114.a n = A318875 (n + 1)

end A318875

/-! ## A318875.P17613949827156783834

`A299485(2*n+1)+A048272(2*(n+1))/A299485(2*(n+1))`
-/

namespace A318875.P17613949827156783834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299485 (2 * n + 1) : ℚ) + (A048272 (2 * (n + 1)) : ℚ) / (A299485 (2 * (n + 1)) : ℚ)

end

end A318875.P17613949827156783834

namespace A318875

/-- `A299485(2*n+1)+A048272(2*(n+1))/A299485(2*(n+1))` -/
def P17613949827156783834.Spec : Prop :=
  ∀ n, P17613949827156783834.a n = (A318875 (n + 1) : ℚ)

end A318875

/-!
# A318876: Sum of divisors d of n for which 2*phi(d) > d.

The programs for A318876, the canonical program `A318876.P9287769333122657800` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318876 has offset 1).

The definition of A318876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318876.P9287769333122657800

`∑{d}[n+1, #*A374134(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318876

/-- `∑{d}[n+1, #*A374134(#)]` -/
def P9287769333122657800.Spec : Prop :=
  ∀ n, P9287769333122657800.a n = A318876 (n + 1)

theorem P9287769333122657800.correct : P9287769333122657800.Spec := by
  intro n
  simp only [A318876, Nat.add_sub_cancel]

end A318876

/-! ## A318876.P3637902569442959778

`∑{d}[n+1, #*#%2]-A318877((n+1)/2^val(n+1, 2))`
-/

namespace A318876.P3637902569442959778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) - A318877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A318876.P3637902569442959778

namespace A318876

/-- `∑{d}[n+1, #*#%2]-A318877((n+1)/2^val(n+1, 2))` -/
def P3637902569442959778.Spec : Prop :=
  ∀ n, P3637902569442959778.a n = A318876 (n + 1)

end A318876

/-! ## A318876.P16246088696472974090

`A000593(n+1)-A318877((n+1)/2^val(n+1, 2))`
-/

namespace A318876.P16246088696472974090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A318877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A318876.P16246088696472974090

namespace A318876

/-- `A000593(n+1)-A318877((n+1)/2^val(n+1, 2))` -/
def P16246088696472974090.Spec : Prop :=
  ∀ n, P16246088696472974090.a n = A318876 (n + 1)

end A318876

/-! ## A318876.P15109714473548208035

`A000593(n+1)-A318877(A000265(n+1))`
-/

namespace A318876.P15109714473548208035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A318877 (A000265 (n + 1)).toNat

end

end A318876.P15109714473548208035

namespace A318876

/-- `A000593(n+1)-A318877(A000265(n+1))` -/
def P15109714473548208035.Spec : Prop :=
  ∀ n, P15109714473548208035.a n = A318876 (n + 1)

end A318876

/-! ## A318876.P4275967724996489334

`A326988(n+1)-A023443(A318877(n+1))`
-/

namespace A318876.P4275967724996489334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326988 (n + 1) - A023443 (A318877 (n + 1)).toNat

end

end A318876.P4275967724996489334

namespace A318876

/-- `A326988(n+1)-A023443(A318877(n+1))` -/
def P4275967724996489334.Spec : Prop :=
  ∀ n, P4275967724996489334.a n = A318876 (n + 1)

end A318876

/-! ## A318876.P245413748095930969

`A326988(n+1)-A023443(∑{d}[n+1, #*A323170(#)])`
-/

namespace A318876.P245413748095930969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326988 (n + 1) - A023443 (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323170 d).toNat

end

end A318876.P245413748095930969

namespace A318876

/-- `A326988(n+1)-A023443(∑{d}[n+1, #*A323170(#)])` -/
def P245413748095930969.Spec : Prop :=
  ∀ n, P245413748095930969.a n = A318876 (n + 1)

end A318876

/-! ## A318876.P9834582285574123663

`A000593(n+1)%(A124774(n)*A201072(n+1))`
-/

namespace A318876.P9834582285574123663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000593 (n + 1)) (A124774 n * A201072 (n + 1))

end

end A318876.P9834582285574123663

namespace A318876

/-- `A000593(n+1)%(A124774(n)*A201072(n+1))` -/
def P9834582285574123663.Spec : Prop :=
  ∀ n, P9834582285574123663.a n = A318876 (n + 1)

end A318876

/-!
# A318877: Sum of divisors d of n for which 2*phi(d) < d.

The programs for A318877, the canonical program `A318877.P9970862317618563708` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318877 has offset 1).

The definition of A318877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318877.P9970862317618563708

`∑{d}[n+1, #*A323170(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318877

/-- `∑{d}[n+1, #*A323170(#)]` -/
def P9970862317618563708.Spec : Prop :=
  ∀ n, P9970862317618563708.a n = A318877 (n + 1)

theorem P9970862317618563708.correct : P9970862317618563708.Spec := by
  intro n
  simp only [A318877, Nat.add_sub_cancel]

end A318877

/-! ## A318877.P4214565689369754816

`A326988(n+1)+1-A318876(n+1)`
-/

namespace A318877.P4214565689369754816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326988 (n + 1) + (1 - A318876 (n + 1))

end

end A318877.P4214565689369754816

namespace A318877

/-- `A326988(n+1)+1-A318876(n+1)` -/
def P4214565689369754816.Spec : Prop :=
  ∀ n, P4214565689369754816.a n = A318877 (n + 1)

end A318877

/-! ## A318877.P2533380814884195322

`A326988(n+1)-A023443(A318876(n+1))`
-/

namespace A318877.P2533380814884195322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326988 (n + 1) - A023443 (A318876 (n + 1)).toNat

end

end A318877.P2533380814884195322

namespace A318877

/-- `A326988(n+1)-A023443(A318876(n+1))` -/
def P2533380814884195322.Spec : Prop :=
  ∀ n, P2533380814884195322.a n = A318877 (n + 1)

end A318877

/-! ## A318877.P15236615247590919231

`A123068(∑{d}[2^val(n+1, 2), #])*A326990(n+1)`
-/

namespace A318877.P15236615247590919231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (∑ d ∈ Nat.divisors (f1 n), d) * A326990 (n + 1)

end

end A318877.P15236615247590919231

namespace A318877

/-- `A123068(∑{d}[2^val(n+1, 2), #])*A326990(n+1)` -/
def P15236615247590919231.Spec : Prop :=
  ∀ n, P15236615247590919231.a n = A318877 (n + 1)

end A318877

/-! ## A318877.P9801637708213686878

`A123068(∑{d}[or(n+1, -(n+1)), #])*A326990(n+1)`
-/

namespace A318877.P9801637708213686878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) * A326990 (n + 1)

end

end A318877.P9801637708213686878

namespace A318877

/-- `A123068(∑{d}[or(n+1, -(n+1)), #])*A326990(n+1)` -/
def P9801637708213686878.Spec : Prop :=
  ∀ n, P9801637708213686878.a n = A318877 (n + 1)

end A318877

/-! ## A318877.P1009564037544836470

`A123068(A000203(2^val(n+1, 2)))*A326990(n+1)`
-/

namespace A318877.P1009564037544836470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A000203 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat * A326990 (n + 1)

end

end A318877.P1009564037544836470

namespace A318877

/-- `A123068(A000203(2^val(n+1, 2)))*A326990(n+1)` -/
def P1009564037544836470.Spec : Prop :=
  ∀ n, P1009564037544836470.a n = A318877 (n + 1)

end A318877

/-! ## A318877.P7183680827142447944

`A123068(A000203(gcd(n+1, (3-n)^10)))*A326990(n+1)`
-/

namespace A318877.P7183680827142447944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A000203 (Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10))).toNat * A326990 (n + 1)

end

end A318877.P7183680827142447944

namespace A318877

/-- `A123068(A000203(gcd(n+1, (3-n)^10)))*A326990(n+1)` -/
def P7183680827142447944.Spec : Prop :=
  ∀ n, P7183680827142447944.a n = A318877 (n + 1)

end A318877

/-! ## A318877.P9139292943547635972

`A326988(n+1)%A269728(n+1)-A326990(n+1)`
-/

namespace A318877.P9139292943547635972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326988 (n + 1)) (A269728 (n + 1)) - A326990 (n + 1)

end

end A318877.P9139292943547635972

namespace A318877

/-- `A326988(n+1)%A269728(n+1)-A326990(n+1)` -/
def P9139292943547635972.Spec : Prop :=
  ∀ n, P9139292943547635972.a n = A318877 (n + 1)

end A318877

/-!
# A318878: Sum of A083254(d) for all such divisors d of n for which A083254(d) > 0.

The programs for A318878, there is no canonical definition to state claims against.
-/

/-! ## A318878.P18160938798387414326

`A318879(n+1)+A033879(n+1)`
-/

namespace A318878.P18160938798387414326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318879 (n + 1) + A033879 (n + 1)

end

end A318878.P18160938798387414326

/-! ## A318878.P14117345111138816397

`A318879(n+1)-A033880(n+1)`
-/

namespace A318878.P14117345111138816397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318879 (n + 1) - A033880 (n + 1)

end

end A318878.P14117345111138816397

/-! ## A318878.P7377980134647929172

`A318879(n+1)+A117966(A295882(n+1))`
-/

namespace A318878.P7377980134647929172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318879 (n + 1) + A117966 (A295882 (n + 1)).toNat

end

end A318878.P7377980134647929172

/-! ## A318878.P3379861032460393357

`A024816(n+1)+A318879(n+1)+A080956(n)`
-/

namespace A318878.P3379861032460393357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + (A318879 (n + 1) + A080956 n)

end

end A318878.P3379861032460393357

/-! ## A318878.P11679861416781445795

`A318879(n+1)+A325978(n+1)-A325977(n+1)`
-/

namespace A318878.P11679861416781445795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318879 (n + 1) + (A325978 (n + 1) - A325977 (n + 1))

end

end A318878.P11679861416781445795

/-! ## A318878.P15827564798064963890

`A000188(A033879(A000265(n+1))²)`
-/

namespace A318878.P15827564798064963890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A033879 (A000265 (n + 1)).toNat ^ 2).toNat

end

end A318878.P15827564798064963890

/-! ## A318878.P14734864758294260921

`A000196(A033879(A000265(n+1))²)`
-/

namespace A318878.P14734864758294260921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A033879 (A000265 (n + 1)).toNat ^ 2).toNat

end

end A318878.P14734864758294260921

/-! ## A318878.P16587242422733837527

`A000196(A033880(A000265(n+1))²)`
-/

namespace A318878.P16587242422733837527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A033880 (A000265 (n + 1)).toNat ^ 2).toNat

end

end A318878.P16587242422733837527

/-! ## A318878.P6994054161382254937

`A033879(A097246(A064989(n+1)²))`
-/

namespace A318878.P6994054161382254937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A097246 (A064989 (n + 1) ^ 2).toNat).toNat

end

end A318878.P6994054161382254937

/-! ## A318878.P16774664761064061752

`A033879(A000265(n+1)%A067557(n+1))`
-/

namespace A318878.P16774664761064061752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (Int.tmod (A000265 (n + 1)) (A067557 (n + 1))).toNat

end

end A318878.P16774664761064061752

/-! ## A318878.P8139276929936380580

`A033879(A000265(n+1)-A179054(n²+1)+1)`
-/

namespace A318878.P8139276929936380580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A000265 (n + 1) - A179054 (n ^ 2 + 1) + 1).toNat

end

end A318878.P8139276929936380580

/-!
# A318879: a(n) = Sum_{d|n} [d-(2*phi(d)) > 0]*(d-(2*phi(d))).

The programs for A318879, there is no canonical definition to state claims against.
-/

/-! ## A318879.P14485121661546635903

`A318878(n+1)-A033879(n+1)`
-/

namespace A318879.P14485121661546635903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1) - A033879 (n + 1)

end

end A318879.P14485121661546635903

/-! ## A318879.P12133340395509664677

`A318878(n+1)+A033880(n+1)`
-/

namespace A318879.P12133340395509664677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1) + A033880 (n + 1)

end

end A318879.P12133340395509664677

/-! ## A318879.P703867762323880324

`A318878(n+1)-(A235796(n+1)+1)`
-/

namespace A318879.P703867762323880324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1) - (A235796 (n + 1) + 1)

end

end A318879.P703867762323880324

/-! ## A318879.P7564352070528888475

`A001065(n+1)+A318878(n+1)-(n+1)`
-/

namespace A318879.P7564352070528888475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A318878 (n + 1) - (n + 1 : ℤ))

end

end A318879.P7564352070528888475

/-! ## A318879.P8508818791719702797

`A023443(A318878(n+1))-A235796(n+1)`
-/

namespace A318879.P8508818791719702797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A318878 (n + 1)).toNat - A235796 (n + 1)

end

end A318879.P8508818791719702797

/-! ## A318879.P6467706944976324742

`A318878(n+1)-A117966(A295882(n+1))`
-/

namespace A318879.P6467706944976324742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1) - A117966 (A295882 (n + 1)).toNat

end

end A318879.P6467706944976324742

/-! ## A318879.P12809189981645764586

`A318878(n+1)+A325977(n+1)-A325978(n+1)`
-/

namespace A318879.P12809189981645764586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1) + (A325977 (n + 1) - A325978 (n + 1))

end

end A318879.P12809189981645764586

/-! ## A318879.P4107978259913074859

`A318878(n+1)-A326068(2*(n+1))`
-/

namespace A318879.P4107978259913074859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1) - A326068 (2 * (n + 1))

end

end A318879.P4107978259913074859

/-!
# A318880: a(n) = 0 if iteration of the map k -> A034460(k) reaches zero when started from k = n, otherwise 1, when it ends into a cycle.

The programs for A318880, there is no canonical definition to state claims against.
-/

/-! ## A318880.P18131635202808642362

`char[A003062(n+1)-1]`
-/

namespace A318880.P18131635202808642362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003062 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A318880.P18131635202808642362

/-! ## A318880.P4870500406569339492

`floor(A318882(n+1)/A097032(n+1))`
-/

namespace A318880.P4870500406569339492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A318882 (n + 1) : ℚ) / (A097032 (n + 1) : ℚ)⌋

end

end A318880.P4870500406569339492

/-! ## A318880.P14177551722124861416

`char[eq[A097033(n+1), A318883(n+1)]]`
-/

namespace A318880.P14177551722124861416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097033 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318883 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A318880.P14177551722124861416

/-! ## A318880.P3517379190326611250

`A007599(A097032(n+1)-A318882(n+1))`
-/

namespace A318880.P3517379190326611250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A097032 (n + 1) - A318882 (n + 1)).toNat

end

end A318880.P3517379190326611250

/-! ## A318880.P3174418118497253769

`A008611(A097032(n+1)-A318882(n+1))`
-/

namespace A318880.P3174418118497253769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A097032 (n + 1) - A318882 (n + 1)).toNat

end

end A318880.P3174418118497253769

/-! ## A318880.P4902131760930041877

`A008624(A097032(n+1)-A318882(n+1))`
-/

namespace A318880.P4902131760930041877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A097032 (n + 1) - A318882 (n + 1)).toNat

end

end A318880.P4902131760930041877

/-! ## A318880.P13091865587718090149

`and(A028920(A170851(n)), A179527(n+1))`
-/

namespace A318880.P13091865587718090149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028920 (A170851 n).toNat) (A179527 (n + 1))

end

end A318880.P13091865587718090149

/-! ## A318880.P8818286303978137553

`A162741(A124859(n+1))%A162741(A083258(n+1))`
-/

namespace A318880.P8818286303978137553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162741 (A124859 (n + 1)).toNat) (A162741 (A083258 (n + 1)).toNat)

end

end A318880.P8818286303978137553

/-! ## A318880.P11693550425723564830

`A327201(A327162(2*n+1)^A327159(n+1))`
-/

namespace A318880.P11693550425723564830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327201 (SequenceMachineLib.roundAway ((A327162 (2 * n + 1) : ℚ) ^ (A327159 (n + 1) : ℤ))).toNat

end

end A318880.P11693550425723564830

/-! ## A318880.P18096364396932889882

`A066618(n+1)%A062557(n)`
-/

namespace A318880.P18096364396932889882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066618 (n + 1)) (A062557 n)

end

end A318880.P18096364396932889882

/-!
# A318881: Restricted growth sequence transform of A277906, the least number with same prime signature as phi(n).

The programs for A318881, there is no canonical definition to state claims against.
-/

/-! ## A318881.P5951377667410058954

`A061395(2*∏{p}[A319344(n+1), #])`
-/

namespace A318881.P5951377667410058954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p))

end

end A318881.P5951377667410058954

/-! ## A318881.P4838836274060419181

`A061395(lcm(2, A319344(n+1)))`
-/

namespace A318881.P4838836274060419181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A319344 (n + 1)))

end

end A318881.P4838836274060419181

/-! ## A318881.P15819871363522265574

`A000006(A006530(A319344(n+1)))`
-/

namespace A318881.P15819871363522265574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A006530 (A319344 (n + 1)).toNat).toNat

end

end A318881.P15819871363522265574

/-! ## A318881.P15886659284096681066

`A292375(A006530(A319344(n+1))²)`
-/

namespace A318881.P15886659284096681066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A006530 (A319344 (n + 1)).toNat ^ 2).toNat

end

end A318881.P15886659284096681066

/-! ## A318881.P6019728738842099350

`∏{p}[A006530(A319344(n+1)), A000720(#)]`
-/

namespace A318881.P6019728738842099350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A319344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A318881.P6019728738842099350

/-!
# A318882: Total length of transient and terminal cycle if unitary-proper-divisor-sum function f(x) = A063919(x) is iterated and the initial value is n. Number of distinct terms in iteration list.

The programs for A318882, there is no canonical definition to state claims against.
-/

/-! ## A318882.P10771250257320191428

`A097031(n+1)+A318883(n+1)`
-/

namespace A318882.P10771250257320191428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1) + A318883 (n + 1)

end

end A318882.P10771250257320191428

/-! ## A318882.P7699195856686539267

`A097032(n+1)+A318880(n+1)-1`
-/

namespace A318882.P7699195856686539267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (n + 1) + A318880 (n + 1) - 1

end

end A318882.P7699195856686539267

/-! ## A318882.P5029621186587829698

`A318883(n+1)+A097031(A092486(n))`
-/

namespace A318882.P5029621186587829698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318883 (n + 1) + A097031 (A092486 n).toNat

end

end A318882.P5029621186587829698

/-! ## A318882.P12605309571902665548

`A023443(A318880(n+1)+A097032(n+1))`
-/

namespace A318882.P12605309571902665548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A318880 (n + 1) + A097032 (n + 1)).toNat

end

end A318882.P12605309571902665548

/-! ## A318882.P16181631080590506899

`A097032(n+1)+A318883(n+1)-A097033(n+1)`
-/

namespace A318882.P16181631080590506899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (n + 1) + (A318883 (n + 1) - A097033 (n + 1))

end

end A318882.P16181631080590506899

/-! ## A318882.P5859446979354378243

`A097033(n+1)+A097031(n+1)*A318880(n+1)`
-/

namespace A318882.P5859446979354378243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097033 (n + 1) + A097031 (n + 1) * A318880 (n + 1)

end

end A318882.P5859446979354378243

/-!
# A318883: Number of transient terms if unitary-proper-divisor-sum-function f(x) = A063919(x) is iterated and the initial value is n.

The programs for A318883, there is no canonical definition to state claims against.
-/

/-! ## A318883.P14817449264913062737

`A318882(n+1)-A097031(n+1)`
-/

namespace A318883.P14817449264913062737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318882 (n + 1) - A097031 (n + 1)

end

end A318883.P14817449264913062737

/-! ## A318883.P5766236736196216864

`A097033(n+1)+A318880(n+1)-1`
-/

namespace A318883.P5766236736196216864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097033 (n + 1) + A318880 (n + 1) - 1

end

end A318883.P5766236736196216864

/-! ## A318883.P3433597894500699675

`A023443(A318880(n+1)+A097033(n+1))`
-/

namespace A318883.P3433597894500699675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A318880 (n + 1) + A097033 (n + 1)).toNat

end

end A318883.P3433597894500699675

/-! ## A318883.P8940393263986715898

`A097033(n+1)+A318882(n+1)-A097032(n+1)`
-/

namespace A318883.P8940393263986715898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097033 (n + 1) + (A318882 (n + 1) - A097032 (n + 1))

end

end A318883.P8940393263986715898

/-! ## A318883.P3876365844048564964

`A023443(A097032(n+1)+A318880(n+1)-A097031(n+1))`
-/

namespace A318883.P3876365844048564964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A097032 (n + 1) + (A318880 (n + 1) - A097031 (n + 1))).toNat

end

end A318883.P3876365844048564964

/-! ## A318883.P13051074695982048551

`A134824(2*n+3)+A318880(n+1)+A097033(n+1)`
-/

namespace A318883.P13051074695982048551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * n + 3) + (A318880 (n + 1) + A097033 (n + 1))

end

end A318883.P13051074695982048551

/-! ## A318883.P1549613589450953850

`A097033(A063919(n+1))%A170851(n)`
-/

namespace A318883.P1549613589450953850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097033 (A063919 (n + 1)).toNat) (A170851 n)

end

end A318883.P1549613589450953850

/-! ## A318883.P6263994692536826165

`A055400(or(A097033(n+1), A151935(n)))`
-/

namespace A318883.P6263994692536826165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (Int.lor (A097033 (n + 1)) (A151935 n)).toNat

end

end A318883.P6263994692536826165

/-! ## A318883.P17830893386738733336

`A055400(xor(A097033(n+1), A151935(n)))`
-/

namespace A318883.P17830893386738733336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (Int.xor (A097033 (n + 1)) (A151935 n)).toNat

end

end A318883.P17830893386738733336

/-! ## A318883.P15170961581722240981

`A055400(A097033(n+1)+n*A151935(n))`
-/

namespace A318883.P15170961581722240981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A097033 (n + 1) + (n : ℤ) * A151935 n).toNat

end

end A318883.P15170961581722240981

/-!
# A318884: a(n) is the sum of absolute values of the coefficients in the n-th cyclotomic polynomial.

The programs for A318884, there is no canonical definition to state claims against.
-/

/-! ## A318884.P16277233028650733978

`A318886(n+1)+A006530(n+1)`
-/

namespace A318884.P16277233028650733978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A006530 (n + 1)

end

end A318884.P16277233028650733978

/-! ## A318884.P6825485857658040404

`A318886(n+1)+A053585(∏{p}[n+1, #])`
-/

namespace A318884.P6825485857658040404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318884.P6825485857658040404

/-! ## A318884.P15424087968703273412

`A346088(∏{p}[n+1, #])+A318886(n+1)`
-/

namespace A318884.P15424087968703273412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346088 (∏ p ∈ Nat.primeFactors (f1 n), p) + A318886 (n + 1)

end

end A318884.P15424087968703273412

/-! ## A318884.P2162552560064128475

`A318886(n+1)+(n+1)/A052126(n+1)`
-/

namespace A318884.P2162552560064128475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318886 (n + 1) : ℚ) + (n + 1 : ℚ) / (A052126 (n + 1) : ℚ)

end

end A318884.P2162552560064128475

/-! ## A318884.P12694690945460001590

`A318886(n+1)+gcd(n+1, A139171(∏{p}[n+1, #]))`
-/

namespace A318884.P12694690945460001590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + (Int.gcd (n + 1 : ℤ) (A139171 (∏ p ∈ Nat.primeFactors (f1 n), p)) : ℤ)

end

end A318884.P12694690945460001590

/-! ## A318884.P1709498808563870583

`A318886(n+1)+A034699(A007947(n+1))`
-/

namespace A318884.P1709498808563870583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A034699 (A007947 (n + 1)).toNat

end

end A318884.P1709498808563870583

/-! ## A318884.P7396227771477699362

`A318886(n+1)+A014963(A053585(n+1))`
-/

namespace A318884.P7396227771477699362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A014963 (A053585 (n + 1)).toNat

end

end A318884.P7396227771477699362

/-! ## A318884.P7364406767543770026

`A318886(n+1)+A025492(A109395(n+1))`
-/

namespace A318884.P7364406767543770026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A025492 (A109395 (n + 1)).toNat

end

end A318884.P7364406767543770026

/-! ## A318884.P7641349810180744388

`A318886(n+1)+A223491(A088835(n+1))`
-/

namespace A318884.P7641349810180744388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A223491 (A088835 (n + 1)).toNat

end

end A318884.P7641349810180744388

/-! ## A318884.P5868530604104737659

`A318886(n+1)+A014963(A345941(n+1))`
-/

namespace A318884.P5868530604104737659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A014963 (A345941 (n + 1)).toNat

end

end A318884.P5868530604104737659

/-! ## A318884.P779446567404960818

`A318886(n+1)+A008578(A061395(n+1)+1)`
-/

namespace A318884.P779446567404960818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A008578 (A061395 (n + 1) + 1).toNat

end

end A318884.P779446567404960818

/-! ## A318884.P6170595345051264573

`A318886(n+1)+A020639((n+1)/A051119(n+1))`
-/

namespace A318884.P6170595345051264573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A318884.P6170595345051264573

/-! ## A318884.P6921711867951061450

`A318886(n+1)+A000720(A105562(n+1))`
-/

namespace A318884.P6921711867951061450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A000720 (A105562 (n + 1)).toNat

end

end A318884.P6921711867951061450

/-! ## A318884.P5653289450806972948

`A318886(2*(n+1))+A111089(2*(n+1))`
-/

namespace A318884.P5653289450806972948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (2 * (n + 1)) + A111089 (2 * (n + 1))

end

end A318884.P5653289450806972948

/-! ## A318884.P1455094264726847925

`A046665(2*(n+1))+A318886(2*(n+1))+2`
-/

namespace A318884.P1455094264726847925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (2 * (n + 1)) + (A318886 (2 * (n + 1)) + 2)

end

end A318884.P1455094264726847925

/-! ## A318884.P4249501257181490335

`A051664(n+1)+A318886(n+1)-A070536(n+1)`
-/

namespace A318884.P4249501257181490335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) + (A318886 (n + 1) - A070536 (n + 1))

end

end A318884.P4249501257181490335

/-! ## A318884.P1573843276692473808

`A318886(n+1)+A020639(A298268(n+1))`
-/

namespace A318884.P1573843276692473808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A020639 (A298268 (n + 1)).toNat

end

end A318884.P1573843276692473808

/-!
# A318885: If n = p^a * q^b * ... * r^c, with p < q < r primes, with nonzero exponents a, b, c, then a(n) = prime(1+p-p)^a * prime(1+q-p)^b * ... * prime(1+r-p)^c; a(1) = 1.

The programs for A318885, the canonical program `A318885.P344528793777614246` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318885 has offset 1).

The definition of A318885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318885.P344528793777614246

`A348717(A290641(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A318885

/-- `A348717(A290641(n+1))` -/
def P344528793777614246.Spec : Prop :=
  ∀ n, P344528793777614246.a n = A318885 (n + 1)

theorem P344528793777614246.correct : P344528793777614246.Spec := by
  intro n
  simp only [A318885, Nat.add_sub_cancel]

end A318885

/-! ## A318885.P10684659163828474967

`A348717(A064988(n+1))`
-/

namespace A318885.P10684659163828474967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A064988 (n + 1)).toNat

end

end A318885.P10684659163828474967

namespace A318885

/-- `A348717(A064988(n+1))` -/
def P10684659163828474967.Spec : Prop :=
  ∀ n, P10684659163828474967.a n = A318885 (n + 1)

end A318885

/-! ## A318885.P16549531966338683905

`A352892(A064988(2*n+1-n))`
-/

namespace A318885.P16549531966338683905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352892 (A064988 (2 * n + 1 - n)).toNat

end

end A318885.P16549531966338683905

namespace A318885

/-- `A352892(A064988(2*n+1-n))` -/
def P16549531966338683905.Spec : Prop :=
  ∀ n, P16549531966338683905.a n = A318885 (n + 1)

end A318885

/-! ## A318885.P14253629684358685217

`or(A000007(n), A352892(A064988(n+1)))`
-/

namespace A318885.P14253629684358685217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A352892 (A064988 (n + 1)).toNat)

end

end A318885.P14253629684358685217

namespace A318885

/-- `or(A000007(n), A352892(A064988(n+1)))` -/
def P14253629684358685217.Spec : Prop :=
  ∀ n, P14253629684358685217.a n = A318885 (n + 1)

end A318885

/-! ## A318885.P6799250944417608585

`A352892(A064988(n+1))+A000007(n+1)`
-/

namespace A318885.P6799250944417608585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352892 (A064988 (n + 1)).toNat + A000007 (n + 1)

end

end A318885.P6799250944417608585

namespace A318885

/-- `A352892(A064988(n+1))+A000007(n+1)` -/
def P6799250944417608585.Spec : Prop :=
  ∀ n, P6799250944417608585.a n = A318885 (n + 1)

end A318885

/-! ## A318885.P3928205135190856690

`A352892(A064988(n+1))%A064988(n+2)`
-/

namespace A318885.P3928205135190856690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352892 (A064988 (n + 1)).toNat) (A064988 (n + 2))

end

end A318885.P3928205135190856690

namespace A318885

/-- `A352892(A064988(n+1))%A064988(n+2)` -/
def P3928205135190856690.Spec : Prop :=
  ∀ n, P3928205135190856690.a n = A318885 (n + 1)

end A318885

/-! ## A318885.P10261761261884151533

`A087960(2*n)²*A352892(A064988(n+1))`
-/

namespace A318885.P10261761261884151533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) ^ 2 * A352892 (A064988 (n + 1)).toNat

end

end A318885.P10261761261884151533

namespace A318885

/-- `A087960(2*n)²*A352892(A064988(n+1))` -/
def P10261761261884151533.Spec : Prop :=
  ∀ n, P10261761261884151533.a n = A318885 (n + 1)

end A318885

/-! ## A318885.P10746613286114615050

`A352892(A064988(n+1))^A007318(gcd(n, n+1))`
-/

namespace A318885.P10746613286114615050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352892 (A064988 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.gcd n (n + 1)) : ℤ)

end

end A318885.P10746613286114615050

namespace A318885

/-- `A352892(A064988(n+1))^A007318(gcd(n, n+1))` -/
def P10746613286114615050.Spec : Prop :=
  ∀ n, P10746613286114615050.a n = (A318885 (n + 1) : ℚ)

end A318885

/-! ## A318885.P8573826970808458160

`A348717(A064554(n+1))+A004016(2*A018805(n+1))`
-/

namespace A318885.P8573826970808458160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A064554 (n + 1)).toNat + A004016 (2 * A018805 (n + 1)).toNat

end

end A318885.P8573826970808458160

namespace A318885

/-- `A348717(A064554(n+1))+A004016(2*A018805(n+1))` -/
def P8573826970808458160.Spec : Prop :=
  ∀ n, P8573826970808458160.a n = A318885 (n + 1)

end A318885

/-! ## A318885.P10651968793681960984

`A158388(2*A018805(n+1))*A348717(A064554(n+1))`
-/

namespace A318885.P10651968793681960984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (2 * A018805 (n + 1)).toNat * A348717 (A064554 (n + 1)).toNat

end

end A318885.P10651968793681960984

namespace A318885

/-- `A158388(2*A018805(n+1))*A348717(A064554(n+1))` -/
def P10651968793681960984.Spec : Prop :=
  ∀ n, P10651968793681960984.a n = A318885 (n + 1)

end A318885

/-!
# A318886: The sum of absolute values of the coefficients in the n-th cyclotomic polynomial minus the largest prime factor of n; a(1)=1 by convention.

The programs for A318886, there is no canonical definition to state claims against.
-/

/-! ## A318886.P7261212333731958700

`A318884(n+1)-A006530(n+1)`
-/

namespace A318886.P7261212333731958700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A006530 (n + 1)

end

end A318886.P7261212333731958700

/-! ## A318886.P1087061108671556225

`∏{p}[A053585(n+1), A318884(n+1)-#]`
-/

namespace A318886.P1087061108671556225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A318884 (n + 1) - (p : ℤ))

end

end A318886.P1087061108671556225

/-! ## A318886.P3309727452275759574

`A318884(n+1)-(n+1)/A052126(n+1)`
-/

namespace A318886.P3309727452275759574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318884 (n + 1) : ℚ) - (n + 1 : ℚ) / (A052126 (n + 1) : ℚ)

end

end A318886.P3309727452275759574

/-! ## A318886.P10833232035147462937

`A318884(n+1)-A002034(A007947(n+1))`
-/

namespace A318886.P10833232035147462937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A002034 (A007947 (n + 1)).toNat

end

end A318886.P10833232035147462937

/-! ## A318886.P12598877269503514755

`A318884(n+1)-A002034(A109395(n+1))`
-/

namespace A318886.P12598877269503514755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A002034 (A109395 (n + 1)).toNat

end

end A318886.P12598877269503514755

/-! ## A318886.P11152541687758940414

`A318884(n+1)-A020639(A345941(n+1))`
-/

namespace A318886.P11152541687758940414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A020639 (A345941 (n + 1)).toNat

end

end A318886.P11152541687758940414

/-! ## A318886.P11572970191825755323

`A318884(n+1)-A345941(A088835(n+1))`
-/

namespace A318886.P11572970191825755323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A345941 (A088835 (n + 1)).toNat

end

end A318886.P11572970191825755323

/-! ## A318886.P10159322509339366905

`A318884(n+1)-A008578(A061395(n+1)+1)`
-/

namespace A318886.P10159322509339366905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A008578 (A061395 (n + 1) + 1).toNat

end

end A318886.P10159322509339366905

/-! ## A318886.P11012986284822407719

`A318884(n+1)-(A046665(n+1)+A020639(n+1))`
-/

namespace A318886.P11012986284822407719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - (A046665 (n + 1) + A020639 (n + 1))

end

end A318886.P11012986284822407719

/-! ## A318886.P3329366574816013618

`A318884(n+1)-A020639((n+1)/A051119(n+1))`
-/

namespace A318886.P3329366574816013618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A318886.P3329366574816013618

/-! ## A318886.P1807252445953347544

`A070536(n+1)+A318884(n+1)-A051664(n+1)`
-/

namespace A318886.P1807252445953347544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (n + 1) + (A318884 (n + 1) - A051664 (n + 1))

end

end A318886.P1807252445953347544

/-!
# A318888: Filter sequence combining the 2-adic valuation of n (A007814) with the differences between odd primes in the prime factorization of n.

The programs for A318888, there is no canonical definition to state claims against.
-/

/-! ## A318888.P3366147118990730602

`A300240(n+1)+A084360(A015128(n))`
-/

namespace A318888.P3366147118990730602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300240 (n + 1) + A084360 (A015128 n).toNat

end

end A318888.P3366147118990730602

/-! ## A318888.P506058784573434600

`A300240(n+1)+A157928(A029733(n+1))`
-/

namespace A318888.P506058784573434600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300240 (n + 1) + A157928 (A029733 (n + 1)).toNat

end

end A318888.P506058784573434600

/-! ## A318888.P4669333202953351341

`A300240(n+1)-A010051(∑[A118658(n)])+1`
-/

namespace A318888.P4669333202953351341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300240 (n + 1) - A010051 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A318888.P4669333202953351341

/-! ## A318888.P2486224716250216992

`A300240(n+1)+A208576(A006011(n))`
-/

namespace A318888.P2486224716250216992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300240 (n + 1) + A208576 (A006011 n).toNat

end

end A318888.P2486224716250216992

/-!
# A318889: a(n) = A001065(n) - A001065(A252463(n)).

The programs for A318889, the canonical program `A318889.P3452767076121308080` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318889 has offset 1).

The definition of A318889 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318889.P11411534969857853129

`A001065(n+1)-A319699(n+1)`
-/

namespace A318889.P11411534969857853129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A319699 (n + 1)

end

end A318889.P11411534969857853129

namespace A318889

/-- `A001065(n+1)-A319699(n+1)` -/
def P11411534969857853129.Spec : Prop :=
  ∀ n, P11411534969857853129.a n = A318889 (n + 1)

end A318889

/-! ## A318889.P3452767076121308080

`A001065(n+1)-A001065(A252463(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A318889

/-- `A001065(n+1)-A001065(A252463(n+1))` -/
def P3452767076121308080.Spec : Prop :=
  ∀ n, P3452767076121308080.a n = A318889 (n + 1)

theorem P3452767076121308080.correct : P3452767076121308080.Spec := by
  intro n
  simp only [A318889, Nat.add_sub_cancel]

end A318889

/-! ## A318889.P10747434050035024730

`A091818(n+1)/2-A319699(n+1)`
-/

namespace A318889.P10747434050035024730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2 - (A319699 (n + 1) : ℚ)

end

end A318889.P10747434050035024730

namespace A318889

/-- `A091818(n+1)/2-A319699(n+1)` -/
def P10747434050035024730.Spec : Prop :=
  ∀ n, P10747434050035024730.a n = (A318889 (n + 1) : ℚ)

theorem P10747434050035024730.correct : P10747434050035024730.Spec := by
  intro n
  simp only [A318889, Nat.add_sub_cancel, A318889.P10747434050035024730.a, A318889.P3452767076121308080.a, A001065, A001065.P4097147489331274860.a, A091818, A091818.P1536144604709334989.a, A252463, A252463.P9404790189412916411.a, A319699, A319699.P7648533886871432432.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A152271, A152271.P6659965972248271911.a, A243502, A243502.P11791647281875328885.a, A064216, A064216.P5935432423843156478.a, A064989, A064989.P13349672914146769936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318889

/-! ## A318889.P1846402924454943687

`A000203(n+1)-(A319699(n+1)+n+1)`
-/

namespace A318889.P1846402924454943687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A319699 (n + 1) + (n + 1 : ℤ))

end

end A318889.P1846402924454943687

namespace A318889

/-- `A000203(n+1)-(A319699(n+1)+n+1)` -/
def P1846402924454943687.Spec : Prop :=
  ∀ n, P1846402924454943687.a n = A318889 (n + 1)

theorem P1846402924454943687.correct : P1846402924454943687.Spec := by
  intro n
  simp only [A318889, Nat.add_sub_cancel, A318889.P1846402924454943687.a, A318889.P3452767076121308080.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A252463, A252463.P9404790189412916411.a, A319699, A319699.P7648533886871432432.a, A152271, A152271.P6659965972248271911.a, A243502, A243502.P11791647281875328885.a, A064216, A064216.P5935432423843156478.a, A064989, A064989.P13349672914146769936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318889

/-! ## A318889.P7117260412303941673

`A173455(n+1)%∑[A173439(n+1)]-A319699(n+1)`
-/

namespace A318889.P7117260412303941673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173455 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) - A319699 (n + 1)

end

end A318889.P7117260412303941673

namespace A318889

/-- `A173455(n+1)%∑[A173439(n+1)]-A319699(n+1)` -/
def P7117260412303941673.Spec : Prop :=
  ∀ n, P7117260412303941673.a n = A318889 (n + 1)

end A318889

/-! ## A318889.P13876744345097255273

`A319699(2*(n+1))-A319699(n+1)`
-/

namespace A318889.P13876744345097255273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (2 * (n + 1)) - A319699 (n + 1)

end

end A318889.P13876744345097255273

namespace A318889

/-- `A319699(2*(n+1))-A319699(n+1)` -/
def P13876744345097255273.Spec : Prop :=
  ∀ n, P13876744345097255273.a n = A318889 (n + 1)

end A318889

/-!
# A318894: Positions of terms > 1 in A205007, or equally, where A205006(n) != n.

The programs for A318894, there is no canonical definition to state claims against.
-/

/-! ## A318894.P1051379203851719238

`C(A309388(n+1)+1, 2)`
-/

namespace A318894.P1051379203851719238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A309388 (n + 1) + 1).toNat 2

end

end A318894.P1051379203851719238

/-! ## A318894.P8686604657582892940

`lt[1, A205007(n+1)]+1`
-/

namespace A318894.P8686604657582892940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A318894.P8686604657582892940

/-! ## A318894.P5205458288609882026

`record[A205006(n+1)-(n+1)]`
-/

namespace A318894.P5205458288609882026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318894.P5205458288609882026

/-! ## A318894.P6525711838898747185

`A000217(A309388(n+1))`
-/

namespace A318894.P6525711838898747185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A309388 (n + 1)).toNat

end

end A318894.P6525711838898747185

/-! ## A318894.P7396636394769194458

`A161680(A309388(n+1)+1)`
-/

namespace A318894.P7396636394769194458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A309388 (n + 1) + 1).toNat

end

end A318894.P7396636394769194458

/-! ## A318894.P12914558334311049093

`A179865(A309388(n+1)+1)`
-/

namespace A318894.P12914558334311049093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A309388 (n + 1) + 1).toNat

end

end A318894.P12914558334311049093

/-! ## A318894.P9860440364637430508

`A198148(2*A309388(n+1))`
-/

namespace A318894.P9860440364637430508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198148 (2 * A309388 (n + 1)).toNat

end

end A318894.P9860440364637430508

/-! ## A318894.P4369319255414565187

`∑{d}[A309388(n+1), A007438(#)]`
-/

namespace A318894.P4369319255414565187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007438 d

end

end A318894.P4369319255414565187

/-! ## A318894.P1680072633175949641

`A134869(A309388(n+1))-A057427(n)`
-/

namespace A318894.P1680072633175949641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (A309388 (n + 1)).toNat - A057427 n

end

end A318894.P1680072633175949641

/-!
# A318895: Number of isoclinism classes of the groups of order 2^n.

The programs for A318895, there is no canonical definition to state claims against.
-/

/-! ## A318895.P13717749328488773639

`ceil(n!^((n-2)/(n+2)))`
-/

namespace A318895.P13717749328488773639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℝ) ^ (((n : ℤ) - 2 : ℚ) / (n + 2 : ℚ) : ℝ)⌉

end

end A318895.P13717749328488773639

/-! ## A318895.P5712017869126977059

`round(5*(3*(a(n-1)-a(n-3))-a(n-3))/3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A318895.P5712017869126977059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  SequenceMachineLib.roundAway (5 * ((3 * (a (n - 1) - a (n - 3)) - a (n - 3) : ℚ) / 3))

end

end A318895.P5712017869126977059

/-! ## A318895.P10143000782255814182

`ceil(n!/A140190(n))`
-/

namespace A318895.P10143000782255814182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) / (A140190 n : ℚ)⌉

end

end A318895.P10143000782255814182

/-! ## A318895.P4073594053197258738

`ceil(n!/A262923(n))`
-/

namespace A318895.P4073594053197258738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) / (A262923 n : ℚ)⌉

end

end A318895.P4073594053197258738

/-!
# A318896: Numbers k such that k and k+1 are the product of exactly four distinct primes.

The programs for A318896, there is no canonical definition to state claims against.
-/

/-! ## A318896.P14897722330020892686

`∩[A140078(n+1), A274359(n+1)]`
-/

namespace A318896.P14897722330020892686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318896.P14897722330020892686

/-! ## A318896.P471386508496626097

`∩[A046386(n+1)-1, A046386(n+1)]`
-/

namespace A318896.P471386508496626097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318896.P471386508496626097

/-!
# A318898: a(n) = ((-4)^((p-1)/4) - 1)/p, where p is the n-th prime congruent to 1 mod 4.

The programs for A318898, there is no canonical definition to state claims against.
-/

/-! ## A318898.P15226836741301976348

`A321632(p?[4*n+1])/p?[4*n+1]`
-/

namespace A318898.P15226836741301976348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321632 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ)

end

end A318898.P15226836741301976348

/-! ## A318898.P4049636993466159185

`A321632(p?[4*n+1])/A002313(n+2)`
-/

namespace A318898.P4049636993466159185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321632 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / (A002313 (n + 2) : ℚ)

end

end A318898.P4049636993466159185

/-! ## A318898.P1676340763170887975

`A321632(p?[4*n+1])/A280084(n+2)`
-/

namespace A318898.P1676340763170887975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321632 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / (A280084 (n + 2) : ℚ)

end

end A318898.P1676340763170887975

/-! ## A318898.P17751192384429359861

`A321632(A055131(n)/3)/p?[4*n+1]`
-/

namespace A318898.P17751192384429359861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321632 (SequenceMachineLib.roundAway ((A055131 n : ℚ) / 3)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ)

end

end A318898.P17751192384429359861

/-! ## A318898.P9733117104497217361

`A321632(A002313(n+2))/A002313(n+2)`
-/

namespace A318898.P9733117104497217361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321632 (A002313 (n + 2)).toNat : ℚ) / (A002313 (n + 2) : ℚ)

end

end A318898.P9733117104497217361

/-!
# A318899: Number of n-node rooted trees in which three equals the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root.

The programs for A318899, there is no canonical definition to state claims against.
-/

/-! ## A318899.P6360334033845032938

`A052321(n+3)-A002955(n+3)`
-/

namespace A318899.P6360334033845032938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052321 (n + 3) - A002955 (n + 3)

end

end A318899.P6360334033845032938

/-! ## A318899.P3158471734108132755

`A255704(∑[n+2]+4)`
-/

namespace A318899.P3158471734108132755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318899.P3158471734108132755

/-! ## A318899.P15635238034429726470

`A255704(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A318899.P15635238034429726470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255704 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A318899.P15635238034429726470

/-! ## A318899.P4924043837451309928

`gcd(A000038(n), A255704(A167614(n+1)))`
-/

namespace A318899.P4924043837451309928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A255704 (A167614 (n + 1)).toNat)

end

end A318899.P4924043837451309928

/-! ## A318899.P18422593079271624109

`or(A000007(n), A255704(A167614(n+1)))`
-/

namespace A318899.P18422593079271624109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255704 (A167614 (n + 1)).toNat)

end

end A318899.P18422593079271624109

/-! ## A318899.P12628291866126303127

`and(A255704(A046691(n)+7), A260196(n))`
-/

namespace A318899.P12628291866126303127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255704 (A046691 n + 7).toNat) (A260196 n)

end

end A318899.P12628291866126303127

/-! ## A318899.P18427116721546238931

`A255704(A167499(n)+n)%A188161(n)`
-/

namespace A318899.P18427116721546238931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255704 (A167499 n + (n : ℤ)).toNat) (A188161 n)

end

end A318899.P18427116721546238931

/-! ## A318899.P8114920600519466778

`A033999(n)²*A255704(A167614(n+1))`
-/

namespace A318899.P8114920600519466778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A255704 (A167614 (n + 1)).toNat

end

end A318899.P8114920600519466778

/-! ## A318899.P18309263971862113109

`gcd(A000038(n)/2, A255704(A046691(n)+7))`
-/

namespace A318899.P18309263971862113109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2)) (A255704 (A046691 n + 7).toNat)

end

end A318899.P18309263971862113109

/-! ## A318899.P946015242316730378

`A008683(gcd(n, n+1))*A255704(A167614(n+1))`
-/

namespace A318899.P946015242316730378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n (n + 1)) * A255704 (A167614 (n + 1)).toNat

end

end A318899.P946015242316730378

