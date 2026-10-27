import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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
# A216800: T(n,k)=Number of permutations of an nXk array with each element moving exactly one horizontally or vertically and without 2-loops.

The programs for A216800, there is no canonical definition to state claims against.
-/

/-! ## A216800.P15077144373766705462

`A215462(4*A300380(n+1))`
-/

namespace A216800.P15077144373766705462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215462 (4 * A300380 (n + 1)).toNat

end

end A216800.P15077144373766705462

/-! ## A216800.P2477772364005282767

`A006666(A300089(n+1)^A034852(n))`
-/

namespace A216800.P2477772364005282767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (SequenceMachineLib.roundAway ((A300089 (n + 1) : ℚ) ^ (A034852 n : ℤ))).toNat

end

end A216800.P2477772364005282767

/-! ## A216800.P4719502633997858070

`A032741(A300089(n+1)^A034852(n))`
-/

namespace A216800.P4719502633997858070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A300089 (n + 1) : ℚ) ^ (A034852 n : ℤ))).toNat

end

end A216800.P4719502633997858070

/-! ## A216800.P7681958079847491294

`A243503(A300089(n+1)^A034852(n))`
-/

namespace A216800.P7681958079847491294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (SequenceMachineLib.roundAway ((A300089 (n + 1) : ℚ) ^ (A034852 n : ℤ))).toNat

end

end A216800.P7681958079847491294

/-! ## A216800.P13563679615440847620

`and(A001223(A203984(n+1)), A124975(n+1))`
-/

namespace A216800.P13563679615440847620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001223 (A203984 (n + 1)).toNat) (A124975 (n + 1))

end

end A216800.P13563679615440847620

/-!
# A216802: Govindarajan's triangle F arising in enumeration of multi-dimensional partitions, read by rows.

The programs for A216802, there is no canonical definition to state claims against.
-/

/-! ## A216802.P9037928454953435032

`A216806(A091018(n))+char[19]`
-/

namespace A216802.P9037928454953435032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216806 (A091018 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A216802.P9037928454953435032

/-! ## A216802.P1617524624288970829

`A216806(A056536(n+1)-1)+char[A038943(3*(n+1))]`
-/

namespace A216802.P1617524624288970829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038943 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216806 (A056536 (n + 1) - 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A216802.P1617524624288970829

/-! ## A216802.P5596168540512561547

`A216806(A056536(n+1)-1)+char[A038957(3*(n+1))]`
-/

namespace A216802.P5596168540512561547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038957 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216806 (A056536 (n + 1) - 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A216802.P5596168540512561547

/-! ## A216802.P12543797380756780268

`A316869(A029120(n))+A216806(A091018(n))`
-/

namespace A216802.P12543797380756780268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A029120 n).toNat + A216806 (A091018 n).toNat

end

end A216802.P12543797380756780268

/-! ## A216802.P12355561952841026454

`A216807(A023796(n+1))`
-/

namespace A216802.P12355561952841026454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216807 (A023796 (n + 1)).toNat

end

end A216802.P12355561952841026454

/-!
# A216803: Govindarajan's triangle C arising in enumeration of multi-dimensional partitions, read by rows.

The programs for A216803, there is no canonical definition to state claims against.
-/

/-! ## A216803.P2903674499557189537

`A004525(A316649(n*A061906(n)))`
-/

namespace A216803.P2903674499557189537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A316649 ((n : ℤ) * A061906 n).toNat).toNat

end

end A216803.P2903674499557189537

/-! ## A216803.P7800140334171093206

`A004525(A316649(n)^A061906(n))`
-/

namespace A216803.P7800140334171093206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A316649 n : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A216803.P7800140334171093206

/-! ## A216803.P11875252599179488391

`A004525(C(A316649(n), A061906(n)))`
-/

namespace A216803.P11875252599179488391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Nat.choose (A316649 n).toNat (A061906 n).toNat)

end

end A216803.P11875252599179488391

/-!
# A216806: Govindarajan's triangle C-hat arising in enumeration of multi-dimensional partitions, read by rows.

The programs for A216806, there is no canonical definition to state claims against.
-/

/-! ## A216806.P7911365868040200791

`A216807(A056537(n+1)-1)`
-/

namespace A216806.P7911365868040200791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216807 (A056537 (n + 1) - 1).toNat

end

end A216806.P7911365868040200791

/-! ## A216806.P6353190298406098066

`∑{d}[A327027(n), A194980(#)]-char[12]`
-/

namespace A216806.P6353190298406098066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327027 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A194980 d - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A216806.P6353190298406098066

/-! ## A216806.P495809341348466799

`A290776(n)-A102683(A006822(n))`
-/

namespace A216806.P495809341348466799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 n - A102683 (A006822 n).toNat

end

end A216806.P495809341348466799

/-! ## A216806.P5513626132638059975

`A290776(n)-A185284(A055922(n))`
-/

namespace A216806.P5513626132638059975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 n - A185284 (A055922 n).toNat

end

end A216806.P5513626132638059975

/-! ## A216806.P4039119011283150470

`A290776(n)-A185284(A349061(n))`
-/

namespace A216806.P4039119011283150470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 n - A185284 (A349061 n).toNat

end

end A216806.P4039119011283150470

/-!
# A216807: Govindarajan's triangle F-hat arising in enumeration of multi-dimensional partitions, read by rows.

The programs for A216807, there is no canonical definition to state claims against.
-/

/-! ## A216807.P17067673451264351650

`A216806(A091018(n))`
-/

namespace A216807.P17067673451264351650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216806 (A091018 n).toNat

end

end A216807.P17067673451264351650

/-! ## A216807.P1819839651350872602

`A216806(A056536(n+1)-1)`
-/

namespace A216807.P1819839651350872602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216806 (A056536 (n + 1) - 1).toNat

end

end A216807.P1819839651350872602

/-! ## A216807.P8879116691989879978

`A216802(n+1)-A185037(A257493(n))`
-/

namespace A216807.P8879116691989879978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216802 (n + 1) - A185037 (A257493 n).toNat

end

end A216807.P8879116691989879978

/-!
# A216810: Total number of components of the fruitful tree A_n(y_n).

The programs for A216810, there is no canonical definition to state claims against.
-/

/-! ## A216810.P18073866074869142305

`A060018(A188917(n²+1))`
-/

namespace A216810.P18073866074869142305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A188917 (n ^ 2 + 1)).toNat

end

end A216810.P18073866074869142305

/-! ## A216810.P8523862181910574839

`A000267(A102223(n))+n-1`
-/

namespace A216810.P8523862181910574839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A102223 n).toNat + ((n : ℤ) - 1)

end

end A216810.P8523862181910574839

/-!
# A216811: Total number of components of the fruitful tree A_n(d_n).

The programs for A216811, there is no canonical definition to state claims against.
-/

/-! ## A216811.P8335455893842199540

`n*A055086(A182100(n))`
-/

namespace A216811.P8335455893842199540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055086 (A182100 n).toNat

end

end A216811.P8335455893842199540

/-! ## A216811.P6552827502174494208

`n*A273432(A381772(n))`
-/

namespace A216811.P6552827502174494208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A273432 (A381772 n).toNat

end

end A216811.P6552827502174494208

/-!
# A216812: Smallest positive number divisible by n whose decimal expansion has the form 22...200...0.

The programs for A216812, there is no canonical definition to state claims against.
-/

/-! ## A216812.P14001443459115356710

`lcm(A078241(n+1), A216479(A032567(n+1)))`
-/

namespace A216812.P14001443459115356710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078241 (n + 1)) (A216479 (A032567 (n + 1)).toNat)

end

end A216812.P14001443459115356710

/-! ## A216812.P8736899234176751405

`lcm(A078243(2*(n+1))/2, A216481(A032567(n+1)))`
-/

namespace A216812.P8736899234176751405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A078243 (2 * (n + 1)) : ℚ) / 2)) (A216481 (A032567 (n + 1)).toNat)

end

end A216812.P8736899234176751405

/-! ## A216812.P11544521465866690950

`lcm(A078245(3*(n+1))/3, A216485(A032567(n+1)))`
-/

namespace A216812.P11544521465866690950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A078245 (3 * (n + 1)) : ℚ) / 3)) (A216485 (A032567 (n + 1)).toNat)

end

end A216812.P11544521465866690950

/-! ## A216812.P5741201047385468253

`lcm(A000027(A078241(n+1)), A216479(n+1))`
-/

namespace A216812.P5741201047385468253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A078241 (n + 1)).toNat) (A216479 (n + 1))

end

end A216812.P5741201047385468253

/-!
# A216813: Sum of tail length of S over all 2^n strings S consisting of n 2's and 3's.

The programs for A216813, there is no canonical definition to state claims against.
-/

/-! ## A216813.P16325032762528772498

`A094005(n+1)-(n+1)*2^(n+1)`
-/

namespace A216813.P16325032762528772498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094005 (n + 1) - ((n + 1) * 2 ^ (n + 1) : ℤ)

end

end A216813.P16325032762528772498

/-! ## A216813.P11569089627641178427

`A094005(n+1)%A176900(n)`
-/

namespace A216813.P11569089627641178427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094005 (n + 1)) (A176900 n)

end

end A216813.P11569089627641178427

/-!
# A216814: Given n and a constant C, define a sequence b(m) by the recurrence in the comments; a(n) = smallest positive integer C such that for some prime p the denominators of all b(m) are powers of p (conjectured).

The programs for A216814, there is no canonical definition to state claims against.
-/

/-! ## A216814.P13095795762232387955

`A275325(4*A276586(n))`
-/

namespace A216814.P13095795762232387955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275325 (4 * A276586 n).toNat

end

end A216814.P13095795762232387955

/-! ## A216814.P13625991771608053884

`record[A335866(A242119(n+1))]`
-/

namespace A216814.P13625991771608053884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335866 (A242119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216814.P13625991771608053884

/-!
# A216815: Primes congruent to 1 or 9 mod 20.

The programs for A216815, the canonical program `A216815.P15216159589608017189` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216815 has offset 1).

The definition of A216815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216815.P15216159589608017189

`p?[or(2, 5*n)-1]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216815

/-- `p?[or(2, 5*n)-1]` -/
def P15216159589608017189.Spec : Prop :=
  ∀ n, P15216159589608017189.a n = A216815 (n + 1)

theorem P15216159589608017189.correct : P15216159589608017189.Spec := by
  intro n
  simp only [A216815, Nat.add_sub_cancel]

end A216815

/-! ## A216815.P15696549844979294976

`p?[xor(1, 9*n)+n]`
-/

namespace A216815.P15696549844979294976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (9 * n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216815.P15696549844979294976

namespace A216815

/-- `p?[xor(1, 9*n)+n]` -/
def P15696549844979294976.Spec : Prop :=
  ∀ n, (P15696549844979294976.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P7751393139626776068

`p?[and(10*n+1, -3)]`
-/

namespace A216815.P7751393139626776068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 * n + 1 : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216815.P7751393139626776068

namespace A216815

/-- `p?[and(10*n+1, -3)]` -/
def P7751393139626776068.Spec : Prop :=
  ∀ n, P7751393139626776068.a n = A216815 (n + 1)

end A216815

/-! ## A216815.P13621830554911297095

`p?[(-1)^n+10*n]`
-/

namespace A216815.P13621830554911297095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216815.P13621830554911297095

namespace A216815

/-- `p?[(-1)^n+10*n]` -/
def P13621830554911297095.Spec : Prop :=
  ∀ n, P13621830554911297095.a n = A216815 (n + 1)

end A216815

/-! ## A216815.P13164982256326274731

`∪[A106963(n+2), A047650(n)]`
-/

namespace A216815.P13164982256326274731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P13164982256326274731

namespace A216815

/-- `∪[A106963(n+2), A047650(n)]` -/
def P13164982256326274731.Spec : Prop :=
  ∀ n, (P13164982256326274731.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P14033425976094391654

`A033205(n+2)`
-/

namespace A216815.P14033425976094391654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 2)

end

end A216815.P14033425976094391654

namespace A216815

/-- `A033205(n+2)` -/
def P14033425976094391654.Spec : Prop :=
  ∀ n, P14033425976094391654.a n = A216815 (n + 1)

end A216815

/-! ## A216815.P8402889323533705144

`∩[A008846(n+1), A045468(n+1)]`
-/

namespace A216815.P8402889323533705144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P8402889323533705144

namespace A216815

/-- `∩[A008846(n+1), A045468(n+1)]` -/
def P8402889323533705144.Spec : Prop :=
  ∀ n, (P8402889323533705144.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P3267243326512564834

`∩[A002144(n+1), A045468(n+1)]`
-/

namespace A216815.P3267243326512564834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P3267243326512564834

namespace A216815

/-- `∩[A002144(n+1), A045468(n+1)]` -/
def P3267243326512564834.Spec : Prop :=
  ∀ n, (P3267243326512564834.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P2873877037678434703

`∩[A002313(n+1), A045468(n+1)]`
-/

namespace A216815.P2873877037678434703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P2873877037678434703

namespace A216815

/-- `∩[A002313(n+1), A045468(n+1)]` -/
def P2873877037678434703.Spec : Prop :=
  ∀ n, (P2873877037678434703.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P5027550056644506765

`∩[A002144(n+1), A064739(n+1)]`
-/

namespace A216815.P5027550056644506765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P5027550056644506765

namespace A216815

/-- `∩[A002144(n+1), A064739(n+1)]` -/
def P5027550056644506765.Spec : Prop :=
  ∀ n, (P5027550056644506765.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P16810429670347260695

`∩[A002144(n+2), A038872(n+2)]`
-/

namespace A216815.P16810429670347260695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P16810429670347260695

namespace A216815

/-- `∩[A002144(n+2), A038872(n+2)]` -/
def P16810429670347260695.Spec : Prop :=
  ∀ n, (P16810429670347260695.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P9409862247887377790

`∩[A002313(n+2), A038872(n+2)]`
-/

namespace A216815.P9409862247887377790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P9409862247887377790

namespace A216815

/-- `∩[A002313(n+2), A038872(n+2)]` -/
def P9409862247887377790.Spec : Prop :=
  ∀ n, (P9409862247887377790.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P7512472580968710894

`∩[A002144(n+1), A076518(n+1)]`
-/

namespace A216815.P7512472580968710894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P7512472580968710894

namespace A216815

/-- `∩[A002144(n+1), A076518(n+1)]` -/
def P7512472580968710894.Spec : Prop :=
  ∀ n, (P7512472580968710894.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P7759101990362635691

`∩[A045468(n+1), A055025(n+1)]`
-/

namespace A216815.P7759101990362635691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P7759101990362635691

namespace A216815

/-- `∩[A045468(n+1), A055025(n+1)]` -/
def P7759101990362635691.Spec : Prop :=
  ∀ n, (P7759101990362635691.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P7866174750630511617

`∩[A045468(n+1), A230779(n+1)]`
-/

namespace A216815.P7866174750630511617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P7866174750630511617

namespace A216815

/-- `∩[A045468(n+1), A230779(n+1)]` -/
def P7866174750630511617.Spec : Prop :=
  ∀ n, (P7866174750630511617.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P16649789721952696281

`∩[A064739(n+1), A230779(n+1)]`
-/

namespace A216815.P16649789721952696281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P16649789721952696281

namespace A216815

/-- `∩[A064739(n+1), A230779(n+1)]` -/
def P16649789721952696281.Spec : Prop :=
  ∀ n, (P16649789721952696281.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P9893579034091169274

`∩[A076518(n+1), A230779(n+1)]`
-/

namespace A216815.P9893579034091169274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P9893579034091169274

namespace A216815

/-- `∩[A076518(n+1), A230779(n+1)]` -/
def P9893579034091169274.Spec : Prop :=
  ∀ n, (P9893579034091169274.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P8998124442137710158

`∩[A139513(n+1), A230779(n+1)]`
-/

namespace A216815.P8998124442137710158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P8998124442137710158

namespace A216815

/-- `∩[A139513(n+1), A230779(n+1)]` -/
def P8998124442137710158.Spec : Prop :=
  ∀ n, (P8998124442137710158.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P5914375503894181683

`∩[A002144(n+1), A023173(n+1)]`
-/

namespace A216815.P5914375503894181683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P5914375503894181683

namespace A216815

/-- `∩[A002144(n+1), A023173(n+1)]` -/
def P5914375503894181683.Spec : Prop :=
  ∀ n, (P5914375503894181683.a n : ℤ) = A216815 (n + 1)

end A216815

/-! ## A216815.P17452917438486997770

`∩[A003653(n+1), A045468(n+1)]`
-/

namespace A216815.P17452917438486997770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216815.P17452917438486997770

namespace A216815

/-- `∩[A003653(n+1), A045468(n+1)]` -/
def P17452917438486997770.Spec : Prop :=
  ∀ n, (P17452917438486997770.a n : ℤ) = A216815 (n + 1)

end A216815

/-!
# A216819: Number of simply 8-connected polyominoes of site-perimeter n.

The programs for A216819, there is no canonical definition to state claims against.
-/

/-! ## A216819.P11947731744944644343

`A216820(n+4)-A216805(A208164(n+2))`
-/

namespace A216819.P11947731744944644343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216820 (n + 4) - A216805 (A208164 (n + 2)).toNat

end

end A216819.P11947731744944644343

/-!
# A216820: Number of polyominoes of site-perimeter n with 8-holes allowed.

The programs for A216820, there is no canonical definition to state claims against.
-/

/-! ## A216820.P6399016354594665283

`A216819(A004914(n+1)+4)`
-/

namespace A216820.P6399016354594665283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216819 (A004914 (n + 1) + 4).toNat

end

end A216820.P6399016354594665283

/-! ## A216820.P942732455038120968

`A216819(A330027(2*(n+2))+2)`
-/

namespace A216820.P942732455038120968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216819 (A330027 (2 * (n + 2)) + 2).toNat

end

end A216820.P942732455038120968

/-! ## A216820.P2711151372609006809

`A216819(n+4)%A216819(n+7)`
-/

namespace A216820.P2711151372609006809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216819 (n + 4)) (A216819 (n + 7))

end

end A216820.P2711151372609006809

/-! ## A216820.P9310056496528257707

`A216819(n+4)+A073490(A000142(n))`
-/

namespace A216820.P9310056496528257707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216819 (n + 4) + A073490 (A000142 n).toNat

end

end A216820.P9310056496528257707

/-! ## A216820.P1785310950346446747

`A216819(n+4)+A000007(A084057(n))`
-/

namespace A216820.P1785310950346446747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216819 (n + 4) + A000007 (A084057 n).toNat

end

end A216820.P1785310950346446747

/-!
# A216821: Number of standardized 4-connected side polyominoes of inner site-perimeter n.

The programs for A216821, there is no canonical definition to state claims against.
-/

/-! ## A216821.P5385365752071209764

`A219842(A150807(n))`
-/

namespace A216821.P5385365752071209764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219842 (A150807 n).toNat

end

end A216821.P5385365752071209764

/-! ## A216821.P18206778296036668127

`∑[A241825(∑[A056911(n+1)])]`
-/

namespace A216821.P18206778296036668127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241825 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216821.P18206778296036668127

/-! ## A216821.P14205357281435578860

`∑[A241825(∑[A320056(n+1)])]`
-/

namespace A216821.P14205357281435578860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241825 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216821.P14205357281435578860

/-!
# A216822: Numbers n such that 2^n == 2 (mod n*(n+1)).

The programs for A216822, there is no canonical definition to state claims against.
-/

/-! ## A216822.P2852968832243294626

`filter[A375793(n+1), A290098(#)]`
-/

namespace A216822.P2852968832243294626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A216822.P2852968832243294626

/-! ## A216822.P12824283764217311866

`∩[A039955(n+1), A375793(n+1)]`
-/

namespace A216822.P12824283764217311866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P12824283764217311866

/-! ## A216822.P15486894257437793114

`∩[A375793(n+1), A016813(n)]`
-/

namespace A216822.P15486894257437793114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P15486894257437793114

/-! ## A216822.P16962126628390090044

`∩[A003658(n+1), A375793(n+1)]`
-/

namespace A216822.P16962126628390090044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P16962126628390090044

/-! ## A216822.P13082483092370463541

`∩[A007674(n+1), A375793(n+1)]`
-/

namespace A216822.P13082483092370463541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P13082483092370463541

/-! ## A216822.P9573283682570643980

`∩[A081083(n+1), A375793(n+1)]`
-/

namespace A216822.P9573283682570643980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P9573283682570643980

/-! ## A216822.P3516718377044530521

`∩[A079523(n+1), A375793(n+1)]`
-/

namespace A216822.P3516718377044530521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P3516718377044530521

/-! ## A216822.P11095066780274462907

`∩[A277549(n+1), A375793(n+1)]`
-/

namespace A216822.P11095066780274462907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P11095066780274462907

/-! ## A216822.P12351690305878590424

`∩[A304868(n+1), A375793(n+1)]`
-/

namespace A216822.P12351690305878590424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P12351690305878590424

/-! ## A216822.P4949643917069774659

`∩[A344314(n+1), A375793(n+1)]`
-/

namespace A216822.P4949643917069774659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P4949643917069774659

/-! ## A216822.P2250739556325827630

`∩[A358817(n+1), A375793(n+1)]`
-/

namespace A216822.P2250739556325827630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P2250739556325827630

/-! ## A216822.P738633835576121732

`∩[A026448(n+1), A375793(n+1)]`
-/

namespace A216822.P738633835576121732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P738633835576121732

/-! ## A216822.P3530114574367507239

`∩[A047438(n+1), A375793(n+1)]`
-/

namespace A216822.P3530114574367507239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P3530114574367507239

/-! ## A216822.P9653218054154088598

`∩[A047478(n+1), A375793(n+1)]`
-/

namespace A216822.P9653218054154088598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P9653218054154088598

/-! ## A216822.P1499613378014051149

`∩[A047610(n+1), A375793(n+1)]`
-/

namespace A216822.P1499613378014051149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P1499613378014051149

/-! ## A216822.P5657519341792246232

`∩[A047616(n+1), A375793(n+1)]`
-/

namespace A216822.P5657519341792246232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P5657519341792246232

/-! ## A216822.P11125127434130389481

`∩[A047619(n+1), A375793(n+1)]`
-/

namespace A216822.P11125127434130389481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P11125127434130389481

/-! ## A216822.P16005950112208077936

`∩[A375793(n+1), A398166(n+1)]`
-/

namespace A216822.P16005950112208077936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216822.P16005950112208077936

/-!
# A216823: Prime factors of Giuga numbers A007850 with 8 or fewer prime divisors.

The programs for A216823, there is no canonical definition to state claims against.
-/

/-! ## A216823.P10480567445019335484

`eq[1, char[A236434(n+1)]]`
-/

namespace A216823.P10480567445019335484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236434 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216823.P10480567445019335484

/-! ## A216823.P1178935380649932015

`record[A104887(A210953(n+1)+n)]`
-/

namespace A216823.P1178935380649932015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (A210953 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216823.P1178935380649932015

/-! ## A216823.P13414590306391405453

`A000040(lt[A342097(n+1), ∏{p}[n+1, 3%#²]])`
-/

namespace A216823.P13414590306391405453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342097 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 3 % p ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A216823.P13414590306391405453

/-! ## A216823.P18001395615918478703

`A000040(lt[A035655(3*n+2), ∑{d}[n+1, #]-(n+1)])`
-/

namespace A216823.P18001395615918478703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035655 (3 * n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216823.P18001395615918478703

/-! ## A216823.P14459121286914838907

`A175584(A043316(n+1))`
-/

namespace A216823.P14459121286914838907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175584 (A043316 (n + 1)).toNat

end

end A216823.P14459121286914838907

/-!
# A216824: Largest prime factor of the n-th Giuga number A007850(n).

The programs for A216824, there is no canonical definition to state claims against.
-/

/-! ## A216824.P8355003350399286908

`A236434(∑[A257923(n+1)])`
-/

namespace A216824.P8355003350399286908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216824.P8355003350399286908

/-! ## A216824.P4587812002389625541

`A236434(lt[A236434(n+1), A122553(n)])`
-/

namespace A216824.P4587812002389625541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236434 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216824.P4587812002389625541

/-! ## A216824.P17408421120117989015

`A236434(eq[A036453(n+1), A236434(n+1)])`
-/

namespace A216824.P17408421120117989015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236434 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216824.P17408421120117989015

/-! ## A216824.P2165935502562814790

`A236434(lt[A236434(n+1), A157532(n+1)])`
-/

namespace A216824.P2165935502562814790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236434 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216824.P2165935502562814790

/-!
# A216825: Prime factors of the first 8 primary pseudoperfect numbers A054377.

The programs for A216825, there is no canonical definition to state claims against.
-/

/-! ## A216825.P15772800511993894708

`p?[∑[A105248(A286102(n+1))]]`
-/

namespace A216825.P15772800511993894708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105248 (A286102 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216825.P15772800511993894708

/-! ## A216825.P6517481059948956883

`p?[∑[A102454(A073165(n))]]`
-/

namespace A216825.P6517481059948956883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102454 (A073165 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216825.P6517481059948956883

/-! ## A216825.P7514785313008246107

`p?[lcm(A247180(n+1), A297323(n))]`
-/

namespace A216825.P7514785313008246107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A247180 (n + 1)) (A297323 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216825.P7514785313008246107

/-!
# A216826: Largest prime factor of the n-th primary pseudoperfect number A054377(n).

The programs for A216826, there is no canonical definition to state claims against.
-/

/-! ## A216826.P4639879847072113009

`A236433(A025706(n))`
-/

namespace A216826.P4639879847072113009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236433 (A025706 n).toNat

end

end A216826.P4639879847072113009

/-! ## A216826.P13218431294058498318

`A236433(A025730(n))`
-/

namespace A216826.P13218431294058498318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236433 (A025730 n).toNat

end

end A216826.P13218431294058498318

/-! ## A216826.P16811112986789769905

`A236433(A384328(n))`
-/

namespace A216826.P16811112986789769905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236433 (A384328 n).toNat

end

end A216826.P16811112986789769905

/-! ## A216826.P8567902623388988267

`A236433(A392544(n))`
-/

namespace A216826.P8567902623388988267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236433 (A392544 n).toNat

end

end A216826.P8567902623388988267

/-!
# A216827: Numbers whose squares can be written neither as a^2 + b^2, nor as a^2 + 2*b^2, nor as a^2 + 3*b^2, nor as a^2 + 7*b^2, with a > 0 and b > 0.

The programs for A216827, there is no canonical definition to state claims against.
-/

/-! ## A216827.P14259313278674292101

`sqrt(A216408(n+1))`
-/

namespace A216827.P14259313278674292101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A216408 (n + 1) : ℝ)

end

end A216827.P14259313278674292101

/-! ## A216827.P9772553725520144471

`root(A216408(n+1), 2)*A007318(∑[n])`
-/

namespace A216827.P9772553725520144471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A216408 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A216827.P9772553725520144471

/-! ## A216827.P5262931744588200829

`root(A216408(n+1), 2)*gcd(5, A000032(n))`
-/

namespace A216827.P5262931744588200829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A216408 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (Int.gcd 5 (A000032 n) : ℝ)

end

end A216827.P5262931744588200829

/-! ## A216827.P4183198077000530365

`or(root(A216408(n+1), 2), A001222(n+2))`
-/

namespace A216827.P4183198077000530365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A216408 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A001222 (n + 2))

end

end A216827.P4183198077000530365

/-!
# A216828: Numbers whose squares can be written in all the four forms a^2 + b^2, a^2 + 2*b^2, a^2 + 3*b^2 and a^2 + 7*b^2, with a > 0 and b > 0.

The programs for A216828, there is no canonical definition to state claims against.
-/

/-! ## A216828.P17912103855991288069

`sqrt(A216682(n+1))`
-/

namespace A216828.P17912103855991288069
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A216682 (n + 1) : ℝ)

end

end A216828.P17912103855991288069

/-! ## A216828.P2299179785558818242

`A000027(root(A216682(n+1), 2))`
-/

namespace A216828.P2299179785558818242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A216682 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A216828.P2299179785558818242

/-! ## A216828.P18005431749519640299

`A216682(n+1)^(A007318(∑[n])/2)`
-/

namespace A216828.P18005431749519640299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A216682 (n + 1) : ℝ) ^ ((A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 : ℝ)

end

end A216828.P18005431749519640299

/-! ## A216828.P7514873181439313778

`root(A216682(n+1), 2)*A007318(C(2, n))`
-/

namespace A216828.P7514873181439313778
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A216682 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (Nat.choose 2 n) : ℝ)

end

end A216828.P7514873181439313778

/-! ## A216828.P5959200282218907978

`root(A216682(n+1), 2)*A007318(∑[n+2])`
-/

namespace A216828.P5959200282218907978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A216682 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A216828.P5959200282218907978

/-!
# A216829: 2*a(n) is the multiplicative order of 2 mod 3*(2n-1).

The programs for A216829, there is no canonical definition to state claims against.
-/

/-! ## A216829.P5938669776362813863

`A216833(n+1)/2`
-/

namespace A216829.P5938669776362813863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216833 (n + 1) : ℚ) / 2

end

end A216829.P5938669776362813863

/-! ## A216829.P8728616757051019299

`lcm(A047789(n), A055388(n+1))/2`
-/

namespace A216829.P8728616757051019299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A047789 n) (A055388 (n + 1)) : ℚ) / 2

end

end A216829.P8728616757051019299

/-! ## A216829.P14092620926153431869

`A336843(A243502(n+1))/2`
-/

namespace A216829.P14092620926153431869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336843 (A243502 (n + 1)).toNat : ℚ) / 2

end

end A216829.P14092620926153431869

/-! ## A216829.P4407206804959824184

`A336843(2*A064216(n+1))/2`
-/

namespace A216829.P4407206804959824184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336843 (2 * A064216 (n + 1)).toNat : ℚ) / 2

end

end A216829.P4407206804959824184

/-! ## A216829.P8728466185087973371

`A050976(3*n+1)`
-/

namespace A216829.P8728466185087973371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (3 * n + 1)

end

end A216829.P8728466185087973371

/-! ## A216829.P13605182022623459264

`A002326(3*n+1)/2`
-/

namespace A216829.P13605182022623459264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002326 (3 * n + 1) : ℚ) / 2

end

end A216829.P13605182022623459264

/-! ## A216829.P14115295735626902945

`(A002326(A016777(n))-2)/2+1`
-/

namespace A216829.P14115295735626902945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002326 (A016777 n).toNat - 2 : ℚ) / 2 + 1

end

end A216829.P14115295735626902945

/-! ## A216829.P17948498698651558342

`A003569(3*n+1)`
-/

namespace A216829.P17948498698651558342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (3 * n + 1)

end

end A216829.P17948498698651558342

/-! ## A216829.P4787759359485876588

`A053447(3*n+1)`
-/

namespace A216829.P4787759359485876588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (3 * n + 1)

end

end A216829.P4787759359485876588

/-! ## A216829.P4650131596141937050

`A055388(3*n+2)/2`
-/

namespace A216829.P4650131596141937050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055388 (3 * n + 2) : ℚ) / 2

end

end A216829.P4650131596141937050

/-! ## A216829.P5810298079454514998

`A001281(A216833(n+1))`
-/

namespace A216829.P5810298079454514998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A216833 (n + 1)).toNat

end

end A216829.P5810298079454514998

/-! ## A216829.P9324659349146452905

`A004525(A002326(3*n+1))`
-/

namespace A216829.P9324659349146452905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002326 (3 * n + 1)).toNat

end

end A216829.P9324659349146452905

/-! ## A216829.P1308999186985828804

`A049206(A002326(2*n+1+n))`
-/

namespace A216829.P1308999186985828804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (A002326 (2 * n + 1 + n)).toNat

end

end A216829.P1308999186985828804

/-! ## A216829.P11738953194610008797

`A007735((2*n+1)²/A051724(2*n+1))`
-/

namespace A216829.P11738953194610008797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / (A051724 (2 * n + 1) : ℚ))).toNat

end

end A216829.P11738953194610008797

/-! ## A216829.P14887280466920433430

`A007735(6*n+3)`
-/

namespace A216829.P14887280466920433430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (6 * n + 3)

end

end A216829.P14887280466920433430

/-! ## A216829.P16171901946617679311

`A054705(6*n+3)`
-/

namespace A216829.P16171901946617679311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (6 * n + 3)

end

end A216829.P16171901946617679311

/-! ## A216829.P17888942567344298733

`A007733(6*n+3)/2`
-/

namespace A216829.P17888942567344298733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (6 * n + 3) : ℚ) / 2

end

end A216829.P17888942567344298733

/-! ## A216829.P5914409249450996779

`lcm(2, A323712(2*n+1))/2`
-/

namespace A216829.P5914409249450996779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A323712 (2 * n + 1)) : ℚ) / 2

end

end A216829.P5914409249450996779

/-! ## A216829.P16603450166566117193

`A026741(A323712(2*n+1))`
-/

namespace A216829.P16603450166566117193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A323712 (2 * n + 1)).toNat

end

end A216829.P16603450166566117193

/-!
# A216831: a(n) = Sum_{k=0..n} binomial(n,k)^3 * k!.

The programs for A216831, there is no canonical definition to state claims against.
-/

/-! ## A216831.P10052764150619963892

`A288927((n+2)^n)/2`
-/

namespace A216831.P10052764150619963892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288927 ((n + 2) ^ n) : ℚ) / 2

end

end A216831.P10052764150619963892

/-!
# A216833: Multiplicative order of 2 mod 3*(2n-1).

The programs for A216833, there is no canonical definition to state claims against.
-/

/-! ## A216833.P15425804083623700594

`2*A216829(n+1)`
-/

namespace A216833.P15425804083623700594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216829 (n + 1)

end

end A216833.P15425804083623700594

/-! ## A216833.P4005389905238798395

`lcm(A047789(n), A055388(n+1))`
-/

namespace A216833.P4005389905238798395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047789 n) (A055388 (n + 1))

end

end A216833.P4005389905238798395

/-! ## A216833.P11091091716377289940

`lcm(A004277(A053447(n)), A216829(n+1))`
-/

namespace A216833.P11091091716377289940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004277 (A053447 n).toNat) (A216829 (n + 1))

end

end A216833.P11091091716377289940

/-! ## A216833.P7142500880452603059

`A216829(A000027(n+1))+A216829(n+1)`
-/

namespace A216833.P7142500880452603059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216829 (A000027 (n + 1)).toNat + A216829 (n + 1)

end

end A216833.P7142500880452603059

/-! ## A216833.P15365602532966726587

`A004277(A216829(n+1))`
-/

namespace A216833.P15365602532966726587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A216829 (n + 1)).toNat

end

end A216833.P15365602532966726587

/-! ## A216833.P9184879163405651138

`A005843(A216829(n+1)%A034821(n))`
-/

namespace A216833.P9184879163405651138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A216829 (n + 1)) (A034821 n)).toNat

end

end A216833.P9184879163405651138

/-! ## A216833.P111564981464606175

`A005843(A216829(n+1))%A054723(n+1)`
-/

namespace A216833.P111564981464606175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A216829 (n + 1)).toNat) (A054723 (n + 1))

end

end A216833.P111564981464606175

/-! ## A216833.P6362971175404250851

`A336843(A243502(n+1))`
-/

namespace A216833.P6362971175404250851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A243502 (n + 1)).toNat

end

end A216833.P6362971175404250851

/-! ## A216833.P14033427481918291873

`A336843(2*A064216(n+1))`
-/

namespace A216833.P14033427481918291873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (2 * A064216 (n + 1)).toNat

end

end A216833.P14033427481918291873

/-! ## A216833.P12933487597997580489

`A336843(2*A064989(2*n+1))`
-/

namespace A216833.P12933487597997580489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (2 * A064989 (2 * n + 1)).toNat

end

end A216833.P12933487597997580489

/-! ## A216833.P17691989047721468092

`A002326(3*n+1)`
-/

namespace A216833.P17691989047721468092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (3 * n + 1)

end

end A216833.P17691989047721468092

/-! ## A216833.P8431244287016559685

`A002326(A016777(n))%A004767(n)`
-/

namespace A216833.P8431244287016559685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002326 (A016777 n).toNat) (A004767 n)

end

end A216833.P8431244287016559685

/-! ## A216833.P9944683086637891651

`A055388(3*n+2)`
-/

namespace A216833.P9944683086637891651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (3 * n + 2)

end

end A216833.P9944683086637891651

/-! ## A216833.P18319040113327351211

`2*A003569(3*n+1)`
-/

namespace A216833.P18319040113327351211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003569 (3 * n + 1)

end

end A216833.P18319040113327351211

/-! ## A216833.P7298978508501443529

`2*A053447(3*n+1)`
-/

namespace A216833.P7298978508501443529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053447 (3 * n + 1)

end

end A216833.P7298978508501443529

/-! ## A216833.P11772875001384907157

`A007733(6*n+3)`
-/

namespace A216833.P11772875001384907157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (6 * n + 3)

end

end A216833.P11772875001384907157

/-! ## A216833.P3493789965396575298

`A024222(6*n+3)`
-/

namespace A216833.P3493789965396575298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (6 * n + 3)

end

end A216833.P3493789965396575298

/-! ## A216833.P3714041896372086794

`A054703(6*n+3)`
-/

namespace A216833.P3714041896372086794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (6 * n + 3)

end

end A216833.P3714041896372086794

/-! ## A216833.P13791519923532912064

`2*A007735(3*(2*n+1))`
-/

namespace A216833.P13791519923532912064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007735 (3 * (2 * n + 1))

end

end A216833.P13791519923532912064

/-! ## A216833.P14649553620738797361

`lcm(2, A323712(2*n+1))`
-/

namespace A216833.P14649553620738797361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A323712 (2 * n + 1))

end

end A216833.P14649553620738797361

/-!
# A216834: Number of weak snarks on 2n nodes.

The programs for A216834, there is no canonical definition to state claims against.
-/

/-! ## A216834.P10945538742294381080

`A036865(A107246(n)+2+n)`
-/

namespace A216834.P10945538742294381080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036865 (A107246 n + 2 + (n : ℤ)).toNat

end

end A216834.P10945538742294381080

/-! ## A216834.P14739346961723583106

`A085862(A108658(3*n+2)+5)`
-/

namespace A216834.P14739346961723583106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (A108658 (3 * n + 2) + 5).toNat

end

end A216834.P14739346961723583106

/-! ## A216834.P3890403255176502300

`A334221(A320807(n)-A320806(n))`
-/

namespace A216834.P3890403255176502300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334221 (A320807 n - A320806 n).toNat

end

end A216834.P3890403255176502300

/-! ## A216834.P9147153059740192603

`A259361(A108949(n)^A347728(n))`
-/

namespace A216834.P9147153059740192603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (SequenceMachineLib.roundAway ((A108949 n : ℚ) ^ (A347728 n : ℤ))).toNat

end

end A216834.P9147153059740192603

/-! ## A216834.P788684351710390780

`A306878(A306894(n+2)+A306859(n))`
-/

namespace A216834.P788684351710390780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306878 (A306894 (n + 2) + A306859 n).toNat

end

end A216834.P788684351710390780

/-!
# A216835: Fibonacci + Goldbach (dual sequence to A216275). a(1)=5, a(2)=7 and for n>=3, a(n) = g(a(n-1) + a(n-2)), where for m>=3, g(2*m) is the maximal prime p < 2*m such that 2*m - p is prime.

The programs for A216835, there is no canonical definition to state claims against.
-/

/-! ## A216835.P14454381191697197553

`A216275(n+4)-a(n-1)` with `a(0)=5`
-/

namespace A216835.P14454381191697197553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A216275 (n + 4) - a (n - 1)

end

end A216835.P14454381191697197553

/-! ## A216835.P1611311071179044783

`A335285(a(n-1)+a(n-2))` with `a(0)=5, a(1)=7`
-/

namespace A216835.P1611311071179044783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  A335285 (a (n - 1) + a (n - 2)).toNat

end

end A216835.P1611311071179044783

/-! ## A216835.P7031639702079112671

`A139421(6*A157725(n))`
-/

namespace A216835.P7031639702079112671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (6 * A157725 n).toNat

end

end A216835.P7031639702079112671

/-! ## A216835.P12922807377886042430

`A118751(A336477(n+1)+A000045(n))`
-/

namespace A216835.P12922807377886042430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (A336477 (n + 1) + A000045 n).toNat

end

end A216835.P12922807377886042430

/-! ## A216835.P15502841266189454743

`A007310(A157725(n)%A001216(n+1))`
-/

namespace A216835.P15502841266189454743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (Int.tmod (A157725 n) (A001216 (n + 1))).toNat

end

end A216835.P15502841266189454743

/-!
# A216836: Numbers n such that sum of decimal digits of n divides phi(n).

The programs for A216836, the canonical program `A216836.P6437354700397976852` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216836 has offset 1).

The definition of A216836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216836.P6437354700397976852

`eq[0, A000010(n+1)%A007953(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216836

/-- `eq[0, A000010(n+1)%A007953(n+1)]+1` -/
def P6437354700397976852.Spec : Prop :=
  ∀ n, (P6437354700397976852.a n : ℤ) = A216836 (n + 1)

theorem P6437354700397976852.correct : P6437354700397976852.Spec := by
  intro n
  simp only [A216836, Nat.add_sub_cancel]

end A216836

/-!
# A216837: Number of permutations p of {1,...,n} such that at most one element of {p(1),...,p(i-1)} is between p(i) and p(i+1) for all i from 1 to n-1.

The programs for A216837, there is no canonical definition to state claims against.
-/

/-! ## A216837.P2563477935463402139

`A356861(A351364(n+1))`
-/

namespace A216837.P2563477935463402139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356861 (A351364 (n + 1)).toNat

end

end A216837.P2563477935463402139

/-! ## A216837.P15463843335937151722

`A008620(xor(1-char[1], A149994(n)))`
-/

namespace A216837.P15463843335937151722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.xor (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A149994 n)).toNat

end

end A216837.P15463843335937151722

/-! ## A216837.P3716349359859495855

`A262202(A000088(n))+A049124(n)`
-/

namespace A216837.P3716349359859495855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (A000088 n).toNat + A049124 n

end

end A216837.P3716349359859495855

/-! ## A216837.P7576021961196574306

`A008620(A337485(n)+A149994(n))`
-/

namespace A216837.P7576021961196574306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A337485 n + A149994 n).toNat

end

end A216837.P7576021961196574306

/-!
# A216838: Odd primes for which 2 is not a primitive root.

The programs for A216838, there is no canonical definition to state claims against.
-/

/-! ## A216838.P16000872531018649224

`A045319(lt[2, A001918(n+1)])`
-/

namespace A216838.P16000872531018649224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216838.P16000872531018649224

/-! ## A216838.P11259922141357086479

`A045344(lt[2, A241476(n+1)])`
-/

namespace A216838.P11259922141357086479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216838.P11259922141357086479

/-! ## A216838.P14957423994929492488

`A045319(lt[2, A242242(n+1)])`
-/

namespace A216838.P14957423994929492488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216838.P14957423994929492488

/-! ## A216838.P14046533396292157858

`A045344(lt[2, A242242(n+1)])`
-/

namespace A216838.P14046533396292157858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216838.P14046533396292157858

/-! ## A216838.P4001603938485242592

`A000040(lt[2, A229709(n+1)]+1)`
-/

namespace A216838.P4001603938485242592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A216838.P4001603938485242592

/-! ## A216838.P945666778082292315

`A000040(lt[2, A331506(n+1)]+1)`
-/

namespace A216838.P945666778082292315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A216838.P945666778082292315

/-! ## A216838.P1735707198461554542

`p?[A216848(n+1)]`
-/

namespace A216838.P1735707198461554542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216838.P1735707198461554542

/-! ## A216838.P3406610884691422586

`filter[A216848(n+1), A010051(#)]`
-/

namespace A216838.P3406610884691422586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A216838.P3406610884691422586

/-! ## A216838.P11743216048409605623

`filter[A216848(n+1), A323152(#)]`
-/

namespace A216838.P11743216048409605623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A216838.P11743216048409605623

/-! ## A216838.P7257935187053206547

`filter[A216848(n+1), A323153(#)]`
-/

namespace A216838.P7257935187053206547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A216838.P7257935187053206547

/-! ## A216838.P16061460048645231896

`filter[A216848(n+1), A340371(#)]`
-/

namespace A216838.P16061460048645231896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A216838.P16061460048645231896

/-! ## A216838.P3825250404522207050

`filter[A216848(n+1), A353670(#)]`
-/

namespace A216838.P3825250404522207050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A216838.P3825250404522207050

/-! ## A216838.P1455828301847533588

`filter[A216848(n+1), A365716(#)]`
-/

namespace A216838.P1455828301847533588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A216838.P1455828301847533588

/-! ## A216838.P3957661506360809834

`filter[A216848(n+1), A379969(#)]`
-/

namespace A216838.P3957661506360809834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A216838.P3957661506360809834

/-! ## A216838.P462592721872479961

`∩[A000040(n+1), A216848(n+1)]`
-/

namespace A216838.P462592721872479961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216838.P462592721872479961

/-! ## A216838.P6961008024309047989

`∩[A001751(n+1), A216848(n+1)]`
-/

namespace A216838.P6961008024309047989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216838.P6961008024309047989

/-! ## A216838.P13968284420486394825

`∩[A004139(n+1), A216848(n+1)]`
-/

namespace A216838.P13968284420486394825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216838.P13968284420486394825

/-! ## A216838.P2874816406127374873

`∩[A006005(n+1), A216848(n+1)]`
-/

namespace A216838.P2874816406127374873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216838.P2874816406127374873

/-! ## A216838.P9895322123137846570

`∩[A008578(n+1), A216848(n+1)]`
-/

namespace A216838.P9895322123137846570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216838.P9895322123137846570

/-! ## A216838.P7202490911309585667

`∩[A033946(n+1), A216848(n+1)]`
-/

namespace A216838.P7202490911309585667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216838.P7202490911309585667

/-!
# A216839: E.g.f.: Sum_{n>=0} log(1 + x*exp(n*x))^n / n!.

The programs for A216839, there is no canonical definition to state claims against.
-/

/-! ## A216839.P1308329979629463757

`n*(A077312(a(n-1))-1)` with `a(0)=1`
-/

namespace A216839.P1308329979629463757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A077312 (a (n - 1)).toNat - 1)

end

end A216839.P1308329979629463757

/-! ## A216839.P15936300986433432717

`n*A124223(a(n-1)²+1)` with `a(0)=1`
-/

namespace A216839.P15936300986433432717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A124223 (a (n - 1) ^ 2 + 1).toNat

end

end A216839.P15936300986433432717

/-!
# A216842: Degree of the smallest irreducible polynomial factor for the polynomial (x^(2n+1)+1)/(x+1) over GF(2).

The programs for A216842, there is no canonical definition to state claims against.
-/

/-! ## A216842.P16813003112861595604

`A024222(A020639(2*n+1)^A069293(n+1))`
-/

namespace A216842.P16813003112861595604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (SequenceMachineLib.roundAway ((A020639 (2 * n + 1) : ℚ) ^ (A069293 (n + 1) : ℤ))).toNat

end

end A216842.P16813003112861595604

/-!
# A216844: 4k^2-8k+2 interleaved with 4k^2-4k+2 for k>=0.

The programs for A216844, the canonical program `A216844.P5291793669699034734` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216844 has offset 0).

The definition of A216844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216844.P5291793669699034734

`1/2*(2*n*(n-4)-3*(-1)^n+7)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216844

/-- `1/2*(2*n*(n-4)-3*(-1)^n+7)` -/
def P5291793669699034734.Spec : Prop :=
  ∀ n, P5291793669699034734.a n = (A216844 n : ℚ)

end A216844

/-! ## A216844.P13927615706814872101

`5-or(3, n*(4-n))`
-/

namespace A216844.P13927615706814872101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.lor 3 ((n : ℤ) * (4 - (n : ℤ)))

end

end A216844.P13927615706814872101

namespace A216844

/-- `5-or(3, n*(4-n))` -/
def P13927615706814872101.Spec : Prop :=
  ∀ n, P13927615706814872101.a n = A216844 n

end A216844

/-! ## A216844.P17035667359531733328

`n²-record[or(6, n-2)]`
-/

namespace A216844.P17035667359531733328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216844.P17035667359531733328

namespace A216844

/-- `n²-record[or(6, n-2)]` -/
def P17035667359531733328.Spec : Prop :=
  ∀ n, P17035667359531733328.a n = A216844 n

end A216844

/-! ## A216844.P13978979309173400065

`or(3, (2-n)²-1)-1`
-/

namespace A216844.P13978979309173400065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ((2 - (n : ℤ)) ^ 2 - 1) - 1

end

end A216844.P13978979309173400065

namespace A216844

/-- `or(3, (2-n)²-1)-1` -/
def P13978979309173400065.Spec : Prop :=
  ∀ n, P13978979309173400065.a n = A216844 n

end A216844

/-! ## A216844.P11474995822930196265

`-xor(-(2-n)², gcd(2, n))`
-/

namespace A216844.P11474995822930196265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-((2 - (n : ℤ)) ^ 2)) (Nat.gcd 2 n : ℤ)

end

end A216844.P11474995822930196265

namespace A216844

/-- `-xor(-(2-n)², gcd(2, n))` -/
def P11474995822930196265.Spec : Prop :=
  ∀ n, P11474995822930196265.a n = A216844 n

end A216844

/-! ## A216844.P17003592413641545380

`n²+2-record[and(n, -7)]`
-/

namespace A216844.P17003592413641545380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A216844.P17003592413641545380

namespace A216844

/-- `n²+2-record[and(n, -7)]` -/
def P17003592413641545380.Spec : Prop :=
  ∀ n, P17003592413641545380.a n = A216844 n

end A216844

/-! ## A216844.P3403011680253196679

`∑[a(n-2)+4]` with `a(0)=2, a(1)=0, a(2)=-4`
-/

namespace A216844.P3403011680253196679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, -4] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216844.P3403011680253196679

namespace A216844

/-- `∑[a(n-2)+4]` -/
def P3403011680253196679.Spec : Prop :=
  ∀ n, P3403011680253196679.a n = A216844 n

end A216844

/-! ## A216844.P9554991386093394387

`10-∑[a(n-2)-4]` with `a(0)=8, a(1)=0`
-/

namespace A216844.P9554991386093394387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 0] fun n f1 =>
  f1 (n - 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216844.P9554991386093394387

namespace A216844

/-- `10-∑[a(n-2)-4]` -/
def P9554991386093394387.Spec : Prop :=
  ∀ n, P9554991386093394387.a n = A216844 n

end A216844

/-! ## A216844.P13044296280456980555

`a(n-2)+4*(n-3)` with `a(0)=2, a(1)=2`
-/

namespace A216844.P13044296280456980555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + 4 * ((n : ℤ) - 3)

end

end A216844.P13044296280456980555

namespace A216844

/-- `a(n-2)+4*(n-3)` -/
def P13044296280456980555.Spec : Prop :=
  ∀ n, P13044296280456980555.a n = A216844 n

end A216844

/-! ## A216844.P10805929051593650179

`and((n-1)*(n-3), -4)+2`
-/

namespace A216844.P10805929051593650179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n : ℤ) - 1) * ((n : ℤ) - 3)) (-4) + 2

end

end A216844.P10805929051593650179

namespace A216844

/-- `and((n-1)*(n-3), -4)+2` -/
def P10805929051593650179.Spec : Prop :=
  ∀ n, P10805929051593650179.a n = A216844 n

end A216844

/-! ## A216844.P5621168208289565343

`xor(2, and((n-1)*(n-3), -4))`
-/

namespace A216844.P5621168208289565343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.land (((n : ℤ) - 1) * ((n : ℤ) - 3)) (-4))

end

end A216844.P5621168208289565343

namespace A216844

/-- `xor(2, and((n-1)*(n-3), -4))` -/
def P5621168208289565343.Spec : Prop :=
  ∀ n, P5621168208289565343.a n = A216844 n

end A216844

/-! ## A216844.P17117112054173880818

`floor(a(n-2)-4*(3-n))` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A216844.P17117112054173880818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) - 4 * (3 - (n : ℤ))

end

end A216844.P17117112054173880818

namespace A216844

/-- `floor(a(n-2)-4*(3-n))` -/
def P17117112054173880818.Spec : Prop :=
  ∀ n, P17117112054173880818.a n = A216844 n

end A216844

/-! ## A216844.P17904811983660708813

`xor((n-1)*(n-3), and(1, n)+1)`
-/

namespace A216844.P17904811983660708813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 1) * ((n : ℤ) - 3)) (Nat.land 1 n + 1 : ℤ)

end

end A216844.P17904811983660708813

namespace A216844

/-- `xor((n-1)*(n-3), and(1, n)+1)` -/
def P17904811983660708813.Spec : Prop :=
  ∀ n, P17904811983660708813.a n = A216844 n

end A216844

/-! ## A216844.P16295679548522342122

`4*(n-2)-(4-a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A216844.P16295679548522342122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  4 * ((n : ℤ) - 2) - (4 - a (n - 2))

end

end A216844.P16295679548522342122

namespace A216844

/-- `4*(n-2)-(4-a(n-2))` -/
def P16295679548522342122.Spec : Prop :=
  ∀ n, P16295679548522342122.a n = A216844 n

end A216844

/-! ## A216844.P2185142396704870291

`xor((n-1)*(n-3), (2*and(1, n))!)`
-/

namespace A216844.P2185142396704870291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 1) * ((n : ℤ) - 3)) (Nat.factorial (2 * Nat.land 1 n) : ℤ)

end

end A216844.P2185142396704870291

namespace A216844

/-- `xor((n-1)*(n-3), (2*and(1, n))!)` -/
def P2185142396704870291.Spec : Prop :=
  ∀ n, P2185142396704870291.a n = A216844 n

end A216844

/-! ## A216844.P550988506586502542

`2-(gcd(2*n, (2-n)²)-(2-n)²)`
-/

namespace A216844.P550988506586502542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Int.gcd (2 * n : ℤ) ((2 - (n : ℤ)) ^ 2) : ℤ) - (2 - (n : ℤ)) ^ 2)

end

end A216844.P550988506586502542

namespace A216844

/-- `2-(gcd(2*n, (2-n)²)-(2-n)²)` -/
def P550988506586502542.Spec : Prop :=
  ∀ n, P550988506586502542.a n = A216844 n

end A216844

/-! ## A216844.P14379909769828773479

`(2-n)²-Δ[n+1-a(n-1)]` with `a(0)=0`
-/

namespace A216844.P14379909769828773479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - (f1 (n + 1) - f1 n)

end

end A216844.P14379909769828773479

namespace A216844

/-- `(2-n)²-Δ[n+1-a(n-1)]` -/
def P14379909769828773479.Spec : Prop :=
  ∀ n, P14379909769828773479.a n = A216844 n

end A216844

/-! ## A216844.P12254152321549327127

`A216865(n)/4`
-/

namespace A216844.P12254152321549327127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216865 n : ℚ) / 4

end

end A216844.P12254152321549327127

namespace A216844

/-- `A216865(n)/4` -/
def P12254152321549327127.Spec : Prop :=
  ∀ n, P12254152321549327127.a n = (A216844 n : ℚ)

end A216844

/-! ## A216844.P9673965366949765842

`A216875(n)/5`
-/

namespace A216844.P9673965366949765842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216875 n : ℚ) / 5

end

end A216844.P9673965366949765842

namespace A216844

/-- `A216875(n)/5` -/
def P9673965366949765842.Spec : Prop :=
  ∀ n, P9673965366949765842.a n = (A216844 n : ℚ)

end A216844

/-! ## A216844.P8572974619009380413

`A216875(n)-A216865(n)`
-/

namespace A216844.P8572974619009380413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216875 n - A216865 n

end

end A216844.P8572974619009380413

namespace A216844

/-- `A216875(n)-A216865(n)` -/
def P8572974619009380413.Spec : Prop :=
  ∀ n, P8572974619009380413.a n = A216844 n

end A216844

/-!
# A216845: Numbers n such that the polynomial 1 + x + x^2 + x^3 + x^4 + ... + x^(n-1) is reducible over GF(2).

The programs for A216845, there is no canonical definition to state claims against.
-/

/-! ## A216845.P18059308631197454113

`comp[A071642(n+1)]+1`
-/

namespace A216845.P18059308631197454113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A216845.P18059308631197454113

/-! ## A216845.P9783348975930021054

`comp[C(A204987(n+1), n)]`
-/

namespace A216845.P9783348975930021054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204987 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A216845.P9783348975930021054

/-! ## A216845.P3205713859172262998

`lt[A204987(abs(xor(n, -2))), n]`
-/

namespace A216845.P3205713859172262998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 |Int.xor (n : ℤ) (-2)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216845.P3205713859172262998

/-! ## A216845.P802232493763428763

`lt[1, A277129(n+1)]+1`
-/

namespace A216845.P802232493763428763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A216845.P802232493763428763

/-! ## A216845.P11018894358722476933

`lt[2, A091248(n+1)]+1`
-/

namespace A216845.P11018894358722476933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A216845.P11018894358722476933

/-! ## A216845.P10387296202795966814

`lt[2, A220949(n+1)]+2`
-/

namespace A216845.P10387296202795966814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A216845.P10387296202795966814

/-! ## A216845.P10101158379917573951

`lt[3, A319350(n+1)]+1`
-/

namespace A216845.P10101158379917573951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319350 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A216845.P10101158379917573951

/-! ## A216845.P18354756813367322799

`lt[3, A319351(n+1)]+1`
-/

namespace A216845.P18354756813367322799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319351 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A216845.P18354756813367322799

/-! ## A216845.P17008875629062329592

`lt[A007733(n+1), n]+1`
-/

namespace A216845.P17008875629062329592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A216845.P17008875629062329592

/-! ## A216845.P16759965944084785727

`lt[A024222(n+1), n]+1`
-/

namespace A216845.P16759965944084785727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A216845.P16759965944084785727

/-!
# A216846: Union of the composite numbers and the primes for which 2 is a primitive root.

The programs for A216846, there is no canonical definition to state claims against.
-/

/-! ## A216846.P16629539931116409097

`comp[A216838(n+1)-3]+3`
-/

namespace A216846.P16629539931116409097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A216846.P16629539931116409097

/-! ## A216846.P1463587588365123585

`∪[A001122(n+1), Δ[A053767(n)]]`
-/

namespace A216846.P1463587588365123585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216846.P1463587588365123585

/-! ## A216846.P11559337471618663462

`∪[A001122(n+1), A002808(n+1)]`
-/

namespace A216846.P11559337471618663462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216846.P11559337471618663462

/-! ## A216846.P9099397531978223442

`∪[A002808(n+1), A141231(n+1)]`
-/

namespace A216846.P9099397531978223442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216846.P9099397531978223442

/-! ## A216846.P10154900290344810664

`∪[A002808(n+1), A167791(n+1)]`
-/

namespace A216846.P10154900290344810664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216846.P10154900290344810664

/-! ## A216846.P868957845258666953

`eq[char[A216838(n+1)], A166926(n)]`
-/

namespace A216846.P868957845258666953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A216846.P868957845258666953

/-!
# A216847: Integers n such that 6n - /+ 1 and 30n - /+ 1 are all primes.

The programs for A216847, there is no canonical definition to state claims against.
-/

/-! ## A216847.P16020175359818388974

`ceil(A174922(n+1)/6)`
-/

namespace A216847.P16020175359818388974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174922 (n + 1) : ℚ) / 6⌉

end

end A216847.P16020175359818388974

/-! ## A216847.P825833049984495845

`floor(A001511(2*n+1)+A174922(n+1)/6)`
-/

namespace A216847.P825833049984495845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001511 (2 * n + 1) : ℚ) + (A174922 (n + 1) : ℚ) / 6⌋

end

end A216847.P825833049984495845

/-! ## A216847.P16126096945140874365

`floor(A174922(n+1)/6)+val(A005117(n+2), 3)!`
-/

namespace A216847.P16126096945140874365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174922 (n + 1) : ℚ) / 6⌋ + (Nat.factorial (SequenceMachineLib.valuation (A005117 (n + 2)).toNat 3) : ℤ)

end

end A216847.P16126096945140874365

/-! ## A216847.P10600924769700735230

`floor(2^A133574(A001316(n))+A174922(n+1)/6)`
-/

namespace A216847.P10600924769700735230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) + (A174922 (n + 1) : ℚ) / 6⌋

end

end A216847.P10600924769700735230

/-! ## A216847.P3067756255921130320

`floor(p?[A341215(n+1)+2]/6)`
-/

namespace A216847.P3067756255921130320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌋

end

end A216847.P3067756255921130320

/-! ## A216847.P12256483298529169990

`∩[A002822(n+1), A176114(n+1)]`
-/

namespace A216847.P12256483298529169990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216847.P12256483298529169990

/-! ## A216847.P14618825981984697699

`A353461(A174922(n+1))`
-/

namespace A216847.P14618825981984697699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (A174922 (n + 1)).toNat

end

end A216847.P14618825981984697699

/-! ## A216847.P17110168227004673223

`filter[A176114(n+1), A100923(#)]`
-/

namespace A216847.P17110168227004673223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100923 (f1 j).toNat = 1) n)

end

end A216847.P17110168227004673223

/-!
# A216848: Odd numbers for which 2 is not a primitive root.

The programs for A216848, there is no canonical definition to state claims against.
-/

/-! ## A216848.P11108603099543375220

`∪[A014659(n+1), A333855(n+1)]`
-/

namespace A216848.P11108603099543375220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216848.P11108603099543375220

/-! ## A216848.P9789880671707872557

`2*lt[1, A037226(n)]+1`
-/

namespace A216848.P9789880671707872557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A216848.P9789880671707872557

/-! ## A216848.P1078498500783167428

`2*lt[A002326(n), n+1]+1`
-/

namespace A216848.P1078498500783167428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A216848.P1078498500783167428

/-! ## A216848.P855342638072087863

`A005408(lt[1, A037226(n)])`
-/

namespace A216848.P855342638072087863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216848.P855342638072087863

/-! ## A216848.P12291594826837814837

`A144396(lt[1, A037226(n)])`
-/

namespace A216848.P12291594826837814837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216848.P12291594826837814837

/-! ## A216848.P3876664567446873977

`A130773(lt[1, A037226(n)])`
-/

namespace A216848.P3876664567446873977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216848.P3876664567446873977

/-! ## A216848.P2979987908477646583

`A267873(lt[1, A037226(n)])`
-/

namespace A216848.P2979987908477646583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216848.P2979987908477646583

/-! ## A216848.P14020883314221017781

`A004273(lt[1, A037226(n)]+1)`
-/

namespace A216848.P14020883314221017781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A216848.P14020883314221017781

/-! ## A216848.P1658367940427195164

`lt[1, A318622(n^(n%2))]`
-/

namespace A216848.P1658367940427195164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A216848.P1658367940427195164

/-! ## A216848.P17234432073389761008

`lt[1, A037226(A057979(n))]`
-/

namespace A216848.P17234432073389761008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 (A057979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A216848.P17234432073389761008

/-! ## A216848.P16229941034527661534

`lt[1, A246702(A152271(n))]`
-/

namespace A216848.P16229941034527661534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (A152271 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A216848.P16229941034527661534

/-!
# A216850: Number of distinct infinite sets of primes congruent to a subset of 1..n mod n.

The programs for A216850, the canonical program `A216850.P1387506290551560808` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216850 has offset 1).

The definition of A216850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216850.P1387506290551560808

`(2^A000010(n+1)-1)*2^A001221(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216850

/-- `(2^A000010(n+1)-1)*2^A001221(n+1)` -/
def P1387506290551560808.Spec : Prop :=
  ∀ n, P1387506290551560808.a n = (A216850 (n + 1) : ℚ)

end A216850

/-! ## A216850.P14243807484774658923

`A034444(n+1)*A100371(n+1)`
-/

namespace A216850.P14243807484774658923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A100371 (n + 1)

end

end A216850.P14243807484774658923

namespace A216850

/-- `A034444(n+1)*A100371(n+1)` -/
def P14243807484774658923.Spec : Prop :=
  ∀ n, P14243807484774658923.a n = A216850 (n + 1)

end A216850

/-! ## A216850.P2755249239077229744

`A000005(∏{p}[n+1, #])*A100371(n+1)`
-/

namespace A216850.P2755249239077229744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) * A100371 (n + 1)

end

end A216850.P2755249239077229744

namespace A216850

/-- `A000005(∏{p}[n+1, #])*A100371(n+1)` -/
def P2755249239077229744.Spec : Prop :=
  ∀ n, P2755249239077229744.a n = A216850 (n + 1)

end A216850

/-! ## A216850.P16892320860920720479

`A000005(A007947(n+1))*A100371(n+1)`
-/

namespace A216850.P16892320860920720479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat * A100371 (n + 1)

end

end A216850.P16892320860920720479

namespace A216850

/-- `A000005(A007947(n+1))*A100371(n+1)` -/
def P16892320860920720479.Spec : Prop :=
  ∀ n, P16892320860920720479.a n = A216850 (n + 1)

end A216850

/-! ## A216850.P13700109376350823346

`(A000079(A000010(n+1))-1)*A034444(n+1)`
-/

namespace A216850.P13700109376350823346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (A000010 (n + 1)).toNat - 1) * A034444 (n + 1)

end

end A216850.P13700109376350823346

namespace A216850

/-- `(A000079(A000010(n+1))-1)*A034444(n+1)` -/
def P13700109376350823346.Spec : Prop :=
  ∀ n, P13700109376350823346.a n = A216850 (n + 1)

end A216850

/-! ## A216850.P11199779611085189378

`2^A001221(n+1)*A000225(A000010(n+1))`
-/

namespace A216850.P11199779611085189378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A000225 (A000010 (n + 1)).toNat : ℚ)

end

end A216850.P11199779611085189378

namespace A216850

/-- `2^A001221(n+1)*A000225(A000010(n+1))` -/
def P11199779611085189378.Spec : Prop :=
  ∀ n, P11199779611085189378.a n = (A216850 (n + 1) : ℚ)

end A216850

/-!
# A216851: a(n) = T^(floor(log(n)/log(2)))(n) (see comment).

The programs for A216851, there is no canonical definition to state claims against.
-/

/-! ## A216851.P14407259975642538915

`A285512(A000265(n+1)*A343783(n+1))+6%A000265(n+1)`
-/

namespace A216851.P14407259975642538915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285512 (A000265 (n + 1) * A343783 (n + 1)).toNat + Int.tmod 6 (A000265 (n + 1))

end

end A216851.P14407259975642538915

/-!
# A216852: 18k^2-36k+9 interleaved with 18k^2-18k+9 for k>=0.

The programs for A216852, the canonical program `A216852.P14048646891364453232` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216852 has offset 0).

The definition of A216852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216852.P10135891335699526728

`9/4*(2*n*(n-4)-3*(-1)^n+7)`
-/

namespace A216852.P10135891335699526728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 4 * ((2 * n : ℤ) * ((n : ℤ) - 4) - 3 * (-1) ^ n + 7 : ℚ)

end

end A216852.P10135891335699526728

namespace A216852

/-- `9/4*(2*n*(n-4)-3*(-1)^n+7)` -/
def P10135891335699526728.Spec : Prop :=
  ∀ n, P10135891335699526728.a n = (A216852 n : ℚ)

theorem P10135891335699526728.correct : P10135891335699526728.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A216852, Nat.add_sub_cancel, A216852.P10135891335699526728.a, A216852.P14048646891364453232.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A216852, Nat.add_sub_cancel, A216852.P10135891335699526728.a, A216852.P14048646891364453232.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A216852

/-! ## A216852.P14048646891364453232

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=9, a(1)=9, a(2)=-9, a(3)=9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216852

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P14048646891364453232.Spec : Prop :=
  ∀ n, P14048646891364453232.a n = A216852 n

theorem P14048646891364453232.correct : P14048646891364453232.Spec := by
  intro n
  simp only [A216852]

end A216852

/-! ## A216852.P14977791403562183785

`18*A216844(n)/4`
-/

namespace A216852.P14977791403562183785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 * A216844 n : ℚ) / 4

end

end A216852.P14977791403562183785

namespace A216852

/-- `18*A216844(n)/4` -/
def P14977791403562183785.Spec : Prop :=
  ∀ n, P14977791403562183785.a n = (A216852 n : ℚ)

end A216852

/-! ## A216852.P10016362627543224918

`floor(9/8*A216865(n))`
-/

namespace A216852.P10016362627543224918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) / 8 * (A216865 n : ℚ)⌋

end

end A216852.P10016362627543224918

namespace A216852

/-- `floor(9/8*A216865(n))` -/
def P10016362627543224918.Spec : Prop :=
  ∀ n, P10016362627543224918.a n = A216852 n

end A216852

/-! ## A216852.P12328146682012482108

`A216865(n)+A216844(n)/2`
-/

namespace A216852.P12328146682012482108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216865 n : ℚ) + (A216844 n : ℚ) / 2

end

end A216852.P12328146682012482108

namespace A216852

/-- `A216865(n)+A216844(n)/2` -/
def P12328146682012482108.Spec : Prop :=
  ∀ n, P12328146682012482108.a n = (A216852 n : ℚ)

end A216852

/-! ## A216852.P14768085475696983715

`(A216875(n)+A216865(n))/2`
-/

namespace A216852.P14768085475696983715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216875 n + A216865 n : ℚ) / 2

end

end A216852.P14768085475696983715

namespace A216852

/-- `(A216875(n)+A216865(n))/2` -/
def P14768085475696983715.Spec : Prop :=
  ∀ n, P14768085475696983715.a n = (A216852 n : ℚ)

end A216852

/-! ## A216852.P8290425715623790061

`A216875(n)-A216844(n)/2`
-/

namespace A216852.P8290425715623790061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216875 n : ℚ) - (A216844 n : ℚ) / 2

end

end A216852.P8290425715623790061

namespace A216852

/-- `A216875(n)-A216844(n)/2` -/
def P8290425715623790061.Spec : Prop :=
  ∀ n, P8290425715623790061.a n = (A216852 n : ℚ)

end A216852

/-!
# A216853: 18k^2-12k-7 interleaved with 18k^2+6k+5 for k>=0.

The programs for A216853, the canonical program `A216853.P2100050736032612985` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216853 has offset 0).

The definition of A216853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216853.P2100050736032612985

`(6*n*(3*n-4)-27*(-1)^n-1)/4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216853

/-- `(6*n*(3*n-4)-27*(-1)^n-1)/4` -/
def P2100050736032612985.Spec : Prop :=
  ∀ n, P2100050736032612985.a n = (A216853 n : ℚ)

end A216853

/-! ## A216853.P14593420988996948078

`or(1, ∑[or(1, n+1)])+4*(n*(n-2)+3-(2-n%2)²)-4`
-/

namespace A216853.P14593420988996948078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + (4 * ((n : ℤ) * ((n : ℤ) - 2) + 3 - (2 - ((n % 2 : ℕ) : ℤ)) ^ 2) - 4)

end

end A216853.P14593420988996948078

namespace A216853

/-- `or(1, ∑[or(1, n+1)])+4*(n*(n-2)+3-(2-n%2)²)-4` -/
def P14593420988996948078.Spec : Prop :=
  ∀ n, P14593420988996948078.a n = A216853 n

end A216853

/-! ## A216853.P5187817193424410840

`∑[9*n+10]-A158803(n+1)`
-/

namespace A216853.P5187817193424410840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A158803 (n + 1)

end

end A216853.P5187817193424410840

namespace A216853

/-- `∑[9*n+10]-A158803(n+1)` -/
def P5187817193424410840.Spec : Prop :=
  ∀ n, P5187817193424410840.a n = A216853 n

end A216853

/-! ## A216853.P18080842031221720871

`A178218(n+1)+A216871(n)-4`
-/

namespace A216853.P18080842031221720871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178218 (n + 1) + (A216871 n - 4)

end

end A216853.P18080842031221720871

namespace A216853

/-- `A178218(n+1)+A216871(n)-4` -/
def P18080842031221720871.Spec : Prop :=
  ∀ n, P18080842031221720871.a n = A216853 n

end A216853

/-! ## A216853.P3480811156338884005

`A167499(3*n+1)-A008585(A168418(n+1))`
-/

namespace A216853.P3480811156338884005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (3 * n + 1) - A008585 (A168418 (n + 1)).toNat

end

end A216853.P3480811156338884005

namespace A216853

/-- `A167499(3*n+1)-A008585(A168418(n+1))` -/
def P3480811156338884005.Spec : Prop :=
  ∀ n, P3480811156338884005.a n = A216853 n

end A216853

/-! ## A216853.P1659949249795391515

`A016777(A143689(n))-A017185(A028242(n))`
-/

namespace A216853.P1659949249795391515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A143689 n).toNat - A017185 (A028242 n).toNat

end

end A216853.P1659949249795391515

namespace A216853

/-- `A016777(A143689(n))-A017185(A028242(n))` -/
def P1659949249795391515.Spec : Prop :=
  ∀ n, P1659949249795391515.a n = A216853 n

end A216853

/-!
# A216857: Number of connected functions from {1,2,...,n} into a subset of {1,2,...,n} that have a fixed point summed over all subsets.

The programs for A216857, there is no canonical definition to state claims against.
-/

/-! ## A216857.P16272930286570018154

`n*A349562(A028310(n)-1)`
-/

namespace A216857.P16272930286570018154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A349562 (A028310 n - 1).toNat

end

end A216857.P16272930286570018154

/-! ## A216857.P9031317867096558639

`Δ[A011782(n)]*A100526(A028310(n))`
-/

namespace A216857.P9031317867096558639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A100526 (A028310 n).toNat

end

end A216857.P9031317867096558639

/-! ## A216857.P14819601697961747344

`A011782(A181440(n+1))*A088789(n)`
-/

namespace A216857.P14819601697961747344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A181440 (n + 1)).toNat * A088789 n

end

end A216857.P14819601697961747344

/-! ## A216857.P17285084285138888153

`A038049(round(acot(n)+n))%A074932(n+1)`
-/

namespace A216857.P17285084285138888153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038049 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A074932 (n + 1))

end

end A216857.P17285084285138888153

/-! ## A216857.P4326187985905609995

`A038049(A233583(n+1))%A074932(n+1)`
-/

namespace A216857.P4326187985905609995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038049 (A233583 (n + 1)).toNat) (A074932 (n + 1))

end

end A216857.P4326187985905609995

/-!
# A216858: Number of connected functions from {1,2,...,n} into a subset of {1,2,...,n} summed over all subsets.

The programs for A216858, there is no canonical definition to state claims against.
-/

/-! ## A216858.P16145336577442202540

`A109022(a(n-1)+1)` with `a(0)=0, a(1)=1`
-/

namespace A216858.P16145336577442202540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A109022 (a (n - 1) + 1).toNat

end

end A216858.P16145336577442202540

/-!
# A216859: G.f.: Sum_{n>=0} n!^2 * x^n / Product_{k=1..2*n} (1 + k*x).

The programs for A216859, there is no canonical definition to state claims against.
-/

/-! ## A216859.P6575722845083039002

`A196846(A062177(n))`
-/

namespace A216859.P6575722845083039002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196846 (A062177 n).toNat

end

end A216859.P6575722845083039002

/-! ## A216859.P4544488788269699295

`A196846(Δ[A130867(n+1)])`
-/

namespace A216859.P4544488788269699295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196846 (f1 (n + 1) - f1 n).toNat

end

end A216859.P4544488788269699295

/-!
# A216860: G.f.: Sum_{n>=0} n!^2 * x^n / Product_{k=1..n} (1 + k*x)^2.

The programs for A216860, there is no canonical definition to state claims against.
-/

/-! ## A216860.P744594081011277507

`or(A005250(A341360(n)), A218798(n))`
-/

namespace A216860.P744594081011277507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005250 (A341360 n).toNat) (A218798 n)

end

end A216860.P744594081011277507

/-! ## A216860.P8029228296691809026

`or(A218798(n), A337684(A308329(n)))`
-/

namespace A216860.P8029228296691809026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A218798 n) (A337684 (A308329 n).toNat)

end

end A216860.P8029228296691809026

/-!
# A216861: a(n) = 13*a(n-1) - 65*a(n-2) + 156*a(n-3) - 182*a(n-4) + 91*a(n-5) - 13*a(n-6), with initial terms 0, -2, -9, -44, -215, -1001.

The programs for A216861, there is no canonical definition to state claims against.
-/

/-! ## A216861.P7154725049185912944

`-A002265((n+1)*∑[record[∑{p}[n, 2^#]]])`
-/

namespace A216861.P7154725049185912944
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), 2 ^ p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002265 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A216861.P7154725049185912944

/-!
# A216862: Primes p such that x^5 = 20 has a solution mod p.

The programs for A216862, there is no canonical definition to state claims against.
-/

/-! ## A216862.P6577371771494538455

`p?[abs(A263025(abs((n+3)²-1)+1)-n)]`
-/

namespace A216862.P6577371771494538455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A263025 (|((n + 3) ^ 2 : ℤ) - 1| + 1).toNat - (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216862.P6577371771494538455

/-! ## A216862.P12680743816454468107

`A074828(A040982(n+1)*A040990(n+2))`
-/

namespace A216862.P12680743816454468107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A040982 (n + 1) * A040990 (n + 2)).toNat

end

end A216862.P12680743816454468107

/-! ## A216862.P8530315257505656233

`A074828(A040159(n+1)*A040990(n+2))`
-/

namespace A216862.P8530315257505656233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A040159 (n + 1) * A040990 (n + 2)).toNat

end

end A216862.P8530315257505656233

/-! ## A216862.P528730402691154247

`p?[A304816(n)-A178815(n+1)]`
-/

namespace A216862.P528730402691154247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304816 n - A178815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216862.P528730402691154247

/-! ## A216862.P4381948242946717810

`∩[A040990(n+1), A183106(n+1)]`
-/

namespace A216862.P4381948242946717810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216862.P4381948242946717810

/-!
# A216864: Number of squares that divide the product of divisors of n.

The programs for A216864, the canonical program `A216864.P16380076787172319000` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216864 has offset 1).

The definition of A216864 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216864.P16380076787172319000

`A046951(A007955(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216864

/-- `A046951(A007955(n+1))` -/
def P16380076787172319000.Spec : Prop :=
  ∀ n, P16380076787172319000.a n = A216864 (n + 1)

theorem P16380076787172319000.correct : P16380076787172319000.Spec := by
  intro n
  simp only [A216864, Nat.add_sub_cancel]

end A216864

/-! ## A216864.P15328208277546371652

`∏{e}[n+1, A008621(#*A000005(n+1))]`
-/

namespace A216864.P15328208277546371652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008621 ((Nat.factorization (f1 n) p : ℤ) * A000005 (n + 1)).toNat

end

end A216864.P15328208277546371652

namespace A216864

/-- `∏{e}[n+1, A008621(#*A000005(n+1))]` -/
def P15328208277546371652.Spec : Prop :=
  ∀ n, P15328208277546371652.a n = A216864 (n + 1)

end A216864

/-! ## A216864.P14139077639373772706

`∏{e}[∏{d}[n+1, #], A008619(#)]`
-/

namespace A216864.P14139077639373772706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008619 (Nat.factorization (f1 n) p)

end

end A216864.P14139077639373772706

namespace A216864

/-- `∏{e}[∏{d}[n+1, #], A008619(#)]` -/
def P14139077639373772706.Spec : Prop :=
  ∀ n, P14139077639373772706.a n = A216864 (n + 1)

end A216864

/-! ## A216864.P4373234365965575299

`∏{e}[∏{d}[n+1, #], A092038(#)]`
-/

namespace A216864.P4373234365965575299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A092038 (Nat.factorization (f1 n) p)

end

end A216864.P4373234365965575299

namespace A216864

/-- `∏{e}[∏{d}[n+1, #], A092038(#)]` -/
def P4373234365965575299.Spec : Prop :=
  ∀ n, P4373234365965575299.a n = A216864 (n + 1)

end A216864

/-! ## A216864.P6330499473049308917

`∏{e}[∏{d}[n+1, #], A324473(#)]`
-/

namespace A216864.P6330499473049308917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A324473 (Nat.factorization (f1 n) p)

end

end A216864.P6330499473049308917

namespace A216864

/-- `∏{e}[∏{d}[n+1, #], A324473(#)]` -/
def P6330499473049308917.Spec : Prop :=
  ∀ n, P6330499473049308917.a n = A216864 (n + 1)

end A216864

/-!
# A216865: 16k^2-32k+8 interleaved with 16k^2-16k+8 for k>=0.

The programs for A216865, the canonical program `A216865.P1164825535192347302` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216865 has offset 0).

The definition of A216865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216865.P1164825535192347302

`2*(2*n*(n-4)-3*(-1)^n+7)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216865

/-- `2*(2*n*(n-4)-3*(-1)^n+7)` -/
def P1164825535192347302.Spec : Prop :=
  ∀ n, P1164825535192347302.a n = A216865 n

theorem P1164825535192347302.correct : P1164825535192347302.Spec := by
  intro n
  simp only [A216865]

end A216865

/-! ## A216865.P10805569990581773814

`A216844(n)/(1/2)²`
-/

namespace A216865.P10805569990581773814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216844 n : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A216865.P10805569990581773814

namespace A216865

/-- `A216844(n)/(1/2)²` -/
def P10805569990581773814.Spec : Prop :=
  ∀ n, P10805569990581773814.a n = (A216865 n : ℚ)

end A216865

/-! ## A216865.P17334880902258775224

`A216875(n)-A216844(n)`
-/

namespace A216865.P17334880902258775224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216875 n - A216844 n

end

end A216865.P17334880902258775224

namespace A216865

/-- `A216875(n)-A216844(n)` -/
def P17334880902258775224.Spec : Prop :=
  ∀ n, P17334880902258775224.a n = A216865 n

end A216865

/-! ## A216865.P7432086877941046284

`2*A216852(n)-A216875(n)`
-/

namespace A216865.P7432086877941046284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216852 n - A216875 n

end

end A216865.P7432086877941046284

namespace A216865

/-- `2*A216852(n)-A216875(n)` -/
def P7432086877941046284.Spec : Prop :=
  ∀ n, P7432086877941046284.a n = A216865 n

end A216865

/-! ## A216865.P3109069987685318891

`2*A017113(A004652(n))-A008598(n)`
-/

namespace A216865.P3109069987685318891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017113 (A004652 n).toNat - A008598 n

end

end A216865.P3109069987685318891

namespace A216865

/-- `2*A017113(A004652(n))-A008598(n)` -/
def P3109069987685318891.Spec : Prop :=
  ∀ n, P3109069987685318891.a n = A216865 n

end A216865

/-! ## A216865.P452883527349315686

`A047473(A087475(n))-A047473(A047473(n+1))`
-/

namespace A216865.P452883527349315686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047473 (A087475 n).toNat - A047473 (A047473 (n + 1)).toNat

end

end A216865.P452883527349315686

namespace A216865

/-- `A047473(A087475(n))-A047473(A047473(n+1))` -/
def P452883527349315686.Spec : Prop :=
  ∀ n, P452883527349315686.a n = A216865 n

end A216865

/-! ## A216865.P16645725321375957052

`A047608(A114949(n))-A047608(A047608(n+1))`
-/

namespace A216865.P16645725321375957052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047608 (A114949 n).toNat - A047608 (A047608 (n + 1)).toNat

end

end A216865.P16645725321375957052

namespace A216865

/-- `A047608(A114949(n))-A047608(A047608(n+1))` -/
def P16645725321375957052.Spec : Prop :=
  ∀ n, P16645725321375957052.a n = A216865 n

end A216865

/-! ## A216865.P9635798369617069312

`A047436(A117619(n))-A047436(A047436(n+1))`
-/

namespace A216865.P9635798369617069312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (A117619 n).toNat - A047436 (A047436 (n + 1)).toNat

end

end A216865.P9635798369617069312

namespace A216865

/-- `A047436(A117619(n))-A047436(A047436(n+1))` -/
def P9635798369617069312.Spec : Prop :=
  ∀ n, P9635798369617069312.a n = A216865 n

end A216865

/-! ## A216865.P9388936331192574914

`A047457(A117951(n))-A047457(A047457(n+1))`
-/

namespace A216865.P9388936331192574914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047457 (A117951 n).toNat - A047457 (A047457 (n + 1)).toNat

end

end A216865.P9388936331192574914

namespace A216865

/-- `A047457(A117951(n))-A047457(A047457(n+1))` -/
def P9388936331192574914.Spec : Prop :=
  ∀ n, P9388936331192574914.a n = A216865 n

end A216865

/-! ## A216865.P3839719663930167557

`A047468(A117950(n))-A047468(A047468(n+1))`
-/

namespace A216865.P3839719663930167557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047468 (A117950 n).toNat - A047468 (A047468 (n + 1)).toNat

end

end A216865.P3839719663930167557

namespace A216865

/-- `A047468(A117950(n))-A047468(A047468(n+1))` -/
def P3839719663930167557.Spec : Prop :=
  ∀ n, P3839719663930167557.a n = A216865 n

end A216865

/-! ## A216865.P1917450824848143394

`A047589(A189833(n))-A047589(A047589(n+1))`
-/

namespace A216865.P1917450824848143394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047589 (A189833 n).toNat - A047589 (A047589 (n + 1)).toNat

end

end A216865.P1917450824848143394

namespace A216865

/-- `A047589(A189833(n))-A047589(A047589(n+1))` -/
def P1917450824848143394.Spec : Prop :=
  ∀ n, P1917450824848143394.a n = A216865 n

end A216865

/-!
# A216868: Nicolas's sequence whose positivity is equivalent to the Riemann hypothesis.

The programs for A216868, there is no canonical definition to state claims against.
-/

/-! ## A216868.P5327937526503270498

`A088468(A349291(n))+1`
-/

namespace A216868.P5327937526503270498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (A349291 n).toNat + 1

end

end A216868.P5327937526503270498

/-!
# A216871: 16k^2-16k-4 interleaved with 16k^2+4 for k>=0.

The programs for A216871, the canonical program `A216871.P6683535733891252522` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216871 has offset 0).

The definition of A216871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216871.P6683535733891252522

`2*(2*n*(n-2)-3*(-1)^n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216871

/-- `2*(2*n*(n-2)-3*(-1)^n+1)` -/
def P6683535733891252522.Spec : Prop :=
  ∀ n, P6683535733891252522.a n = A216871 n

theorem P6683535733891252522.correct : P6683535733891252522.Spec := by
  intro n
  simp only [A216871]

end A216871

/-! ## A216871.P9347225160971749183

`A033996(n)-A017569(A052928(n))`
-/

namespace A216871.P9347225160971749183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - A017569 (A052928 n).toNat

end

end A216871.P9347225160971749183

namespace A216871

/-- `A033996(n)-A017569(A052928(n))` -/
def P9347225160971749183.Spec : Prop :=
  ∀ n, P9347225160971749183.a n = A216871 n

end A216871

/-! ## A216871.P4343042831456631284

`A033996(n)-A259755(A109613(n))`
-/

namespace A216871.P4343042831456631284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - A259755 (A109613 n).toNat

end

end A216871.P4343042831456631284

namespace A216871

/-- `A033996(n)-A259755(A109613(n))` -/
def P4343042831456631284.Spec : Prop :=
  ∀ n, P4343042831456631284.a n = A216871 n

end A216871

/-! ## A216871.P15076820990200444639

`A214405(n+1)+A216865(n+1)-A214393(n)`
-/

namespace A216871.P15076820990200444639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214405 (n + 1) + (A216865 (n + 1) - A214393 n)

end

end A216871.P15076820990200444639

namespace A216871

/-- `A214405(n+1)+A216865(n+1)-A214393(n)` -/
def P15076820990200444639.Spec : Prop :=
  ∀ n, P15076820990200444639.a n = A216871 n

theorem P15076820990200444639.correct : P15076820990200444639.Spec := by
  intro n
  simp only [A216871, Nat.add_sub_cancel, A216871.P15076820990200444639.a, A216871.P6683535733891252522.a, A214393, A214393.P6929107440291149389.a, A214405, A214405.P14539094166080315683.a, A216865, A216865.P1164825535192347302.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A216871

/-! ## A216871.P13412714353401826232

`2*A216844(2*n)-A216865(n+1)`
-/

namespace A216871.P13412714353401826232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216844 (2 * n) - A216865 (n + 1)

end

end A216871.P13412714353401826232

namespace A216871

/-- `2*A216844(2*n)-A216865(n+1)` -/
def P13412714353401826232.Spec : Prop :=
  ∀ n, P13412714353401826232.a n = A216871 n

end A216871

/-! ## A216871.P18284192967927490413

`A216865(2*n)/2-A216865(n+1)`
-/

namespace A216871.P18284192967927490413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216865 (2 * n) : ℚ) / 2 - (A216865 (n + 1) : ℚ)

end

end A216871.P18284192967927490413

namespace A216871

/-- `A216865(2*n)/2-A216865(n+1)` -/
def P18284192967927490413.Spec : Prop :=
  ∀ n, P18284192967927490413.a n = (A216871 n : ℚ)

end A216871

/-! ## A216871.P3819775351997716941

`A008598(A004652(n))-A017113(n)`
-/

namespace A216871.P3819775351997716941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A004652 n).toNat - A017113 n

end

end A216871.P3819775351997716941

namespace A216871

/-- `A008598(A004652(n))-A017113(n)` -/
def P3819775351997716941.Spec : Prop :=
  ∀ n, P3819775351997716941.a n = A216871 n

end A216871

/-! ## A216871.P5594153073900010677

`A016825(A142717(n+2))-A016825(8*n+6)`
-/

namespace A216871.P5594153073900010677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A142717 (n + 2)).toNat - A016825 (8 * n + 6)

end

end A216871.P5594153073900010677

namespace A216871

/-- `A016825(A142717(n+2))-A016825(8*n+6)` -/
def P5594153073900010677.Spec : Prop :=
  ∀ n, P5594153073900010677.a n = A216871 n

end A216871

/-! ## A216871.P11647232074958350947

`A216865(A216844(n)+n)/A216844(n)`
-/

namespace A216871.P11647232074958350947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216865 (A216844 n + (n : ℤ)).toNat : ℚ) / (A216844 n : ℚ)

end

end A216871.P11647232074958350947

namespace A216871

/-- `A216865(A216844(n)+n)/A216844(n)` -/
def P11647232074958350947.Spec : Prop :=
  ∀ n, P11647232074958350947.a n = (A216871 n : ℚ)

end A216871

/-!
# A216873: Numbers n such that 2^n in decimal has at least 9 of the digits 0-9 appearing a prime number of times.

The programs for A216873, there is no canonical definition to state claims against.
-/

/-! ## A216873.P17237913809599296010

`A216872(lt[0, A127323(n)])`
-/

namespace A216873.P17237913809599296010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216873.P17237913809599296010

/-!
# A216875: 20k^2-40k+10 interleaved with 20k^2-20k+10 for k>=0.

The programs for A216875, the canonical program `A216875.P14149961566183449616` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216875 has offset 0).

The definition of A216875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216875.P14149961566183449616

`5/2*(2*n*(n-4)-3*(-1)^n+7)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216875

/-- `5/2*(2*n*(n-4)-3*(-1)^n+7)` -/
def P14149961566183449616.Spec : Prop :=
  ∀ n, P14149961566183449616.a n = (A216875 n : ℚ)

end A216875

/-! ## A216875.P5809023263657610080

`A216865(n)+A216844(n)`
-/

namespace A216875.P5809023263657610080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216865 n + A216844 n

end

end A216875.P5809023263657610080

namespace A216875

/-- `A216865(n)+A216844(n)` -/
def P5809023263657610080.Spec : Prop :=
  ∀ n, P5809023263657610080.a n = A216875 n

end A216875

/-! ## A216875.P9967381331108344202

`2*A216852(n)-A216865(n)`
-/

namespace A216875.P9967381331108344202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216852 n - A216865 n

end

end A216875.P9967381331108344202

namespace A216875

/-- `2*A216852(n)-A216865(n)` -/
def P9967381331108344202.Spec : Prop :=
  ∀ n, P9967381331108344202.a n = A216875 n

end A216875

/-! ## A216875.P14431592843411310860

`2*A017329(A004652(n))-A008602(n)`
-/

namespace A216875.P14431592843411310860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017329 (A004652 n).toNat - A008602 n

end

end A216875.P14431592843411310860

namespace A216875

/-- `2*A017329(A004652(n))-A008602(n)` -/
def P14431592843411310860.Spec : Prop :=
  ∀ n, P14431592843411310860.a n = A216875 n

end A216875

/-! ## A216875.P1104183804616811289

`A090773(A027691(n))-A090773(A090773(n+1))`
-/

namespace A216875.P1104183804616811289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (A027691 n).toNat - A090773 (A090773 (n + 1)).toNat

end

end A216875.P1104183804616811289

namespace A216875

/-- `A090773(A027691(n))-A090773(A090773(n+1))` -/
def P1104183804616811289.Spec : Prop :=
  ∀ n, P1104183804616811289.a n = A216875 n

end A216875

/-!
# A216876: 20k^2-20k-5 interleaved with 20k^2+5 for k=>0.

The programs for A216876, the canonical program `A216876.P6049328508055341821` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216876 has offset 0).

The definition of A216876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216876.P6049328508055341821

`5/2*(2*n*(n-2)-3*(-1)^n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216876

/-- `5/2*(2*n*(n-2)-3*(-1)^n+1)` -/
def P6049328508055341821.Spec : Prop :=
  ∀ n, P6049328508055341821.a n = (A216876 n : ℚ)

end A216876

/-! ## A216876.P14284296099770441456

`A216871(n)+A216871(n)/4`
-/

namespace A216876.P14284296099770441456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216871 n : ℚ) + (A216871 n : ℚ) / 4

end

end A216876.P14284296099770441456

namespace A216876

/-- `A216871(n)+A216871(n)/4` -/
def P14284296099770441456.Spec : Prop :=
  ∀ n, P14284296099770441456.a n = (A216876 n : ℚ)

end A216876

/-! ## A216876.P10584200932074639779

`A216871(n)*A216875(n)/A216865(n)`
-/

namespace A216876.P10584200932074639779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216871 n * A216875 n : ℚ) / (A216865 n : ℚ)

end

end A216876.P10584200932074639779

namespace A216876

/-- `A216871(n)*A216875(n)/A216865(n)` -/
def P10584200932074639779.Spec : Prop :=
  ∀ n, P10584200932074639779.a n = (A216876 n : ℚ)

end A216876

/-! ## A216876.P11692015838299019349

`A216875(2*n)/2-A216875(n+1)`
-/

namespace A216876.P11692015838299019349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216875 (2 * n) : ℚ) / 2 - (A216875 (n + 1) : ℚ)

end

end A216876.P11692015838299019349

namespace A216876

/-- `A216875(2*n)/2-A216875(n+1)` -/
def P11692015838299019349.Spec : Prop :=
  ∀ n, P11692015838299019349.a n = (A216876 n : ℚ)

end A216876

/-! ## A216876.P6345616198063337218

`A008602(A004652(n))-A017329(n)`
-/

namespace A216876.P6345616198063337218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 (A004652 n).toNat - A017329 n

end

end A216876.P6345616198063337218

namespace A216876

/-- `A008602(A004652(n))-A017329(n)` -/
def P6345616198063337218.Spec : Prop :=
  ∀ n, P6345616198063337218.a n = A216876 n

end A216876

/-! ## A216876.P1686937077346363882

`A216875(A216844(n)+n)/A216844(n)`
-/

namespace A216876.P1686937077346363882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216875 (A216844 n + (n : ℤ)).toNat : ℚ) / (A216844 n : ℚ)

end

end A216876.P1686937077346363882

namespace A216876

/-- `A216875(A216844(n)+n)/A216844(n)` -/
def P1686937077346363882.Spec : Prop :=
  ∀ n, P1686937077346363882.a n = (A216876 n : ℚ)

end A216876

/-!
# A216877: Number of ordered integers (x,y) satisfying x^(2/3) + y^(2/3) <= n^(2/3).

The programs for A216877, there is no canonical definition to state claims against.
-/

/-! ## A216877.P12723473267764644948

`eq[A244145(n+1), A387120(n+1)]`
-/

namespace A216877.P12723473267764644948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216877.P12723473267764644948

/-! ## A216877.P1690297045988459582

`eq[A245192(n+1), A387120(n+1)]`
-/

namespace A216877.P1690297045988459582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216877.P1690297045988459582

/-! ## A216877.P181121957324068722

`eq[A305831(n+1), A387120(n+1)]`
-/

namespace A216877.P181121957324068722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216877.P181121957324068722

/-! ## A216877.P10970953773783816039

`eq[A305832(n+1), A387120(n+1)]`
-/

namespace A216877.P10970953773783816039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216877.P10970953773783816039

/-!
# A216878: G.f. satisfies: A(x) = 1 / Product_{n>=1} (1 + x^n*A(x)) * (1 + x^n/A(x)) * (1-x^n).

The programs for A216878, there is no canonical definition to state claims against.
-/

/-! ## A216878.P369421174293497851

`(-1)^n*A046155(A107591(n))-A105307(A174006(n+2))`
-/

namespace A216878.P369421174293497851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A046155 (A107591 n).toNat - A105307 (A174006 (n + 2)).toNat

end

end A216878.P369421174293497851

/-!
# A216879: G.f. satisfies: A(x) = sqrt( theta_3(x*A(x)) / theta_4(x*A(x)) ).

The programs for A216879, there is no canonical definition to state claims against.
-/

/-! ## A216879.P17843128819635485877

`A366706(n+1)+A049337(A127819(n+1))`
-/

namespace A216879.P17843128819635485877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366706 (n + 1) + A049337 (A127819 (n + 1)).toNat

end

end A216879.P17843128819635485877

/-! ## A216879.P14107166496128504840

`A366706(n+1)+A048050(A164061(n+1))`
-/

namespace A216879.P14107166496128504840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366706 (n + 1) + A048050 (A164061 (n + 1)).toNat

end

end A216879.P14107166496128504840

/-! ## A216879.P2963857027216545216

`A038712(A199336(n+1))*A366706(n+1)`
-/

namespace A216879.P2963857027216545216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A199336 (n + 1)).toNat * A366706 (n + 1)

end

end A216879.P2963857027216545216

/-!
# A216880: Numbers of the form 3p - 2 where p and 6p + 1 are prime.

The programs for A216880, there is no canonical definition to state claims against.
-/

/-! ## A216880.P1849646785724923939

`3*A007693(n+1)-2`
-/

namespace A216880.P1849646785724923939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007693 (n + 1) - 2

end

end A216880.P1849646785724923939

/-! ## A216880.P4412642009970079516

`(A051644(n+1)-5)/2`
-/

namespace A216880.P4412642009970079516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051644 (n + 1) - 5 : ℚ) / 2

end

end A216880.P4412642009970079516

/-! ## A216880.P16719005585863023314

`(p?[6*A000040(n+1)+1]-5)/2`
-/

namespace A216880.P16719005585863023314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000040 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5 : ℚ) / 2

end

end A216880.P16719005585863023314

/-! ## A216880.P16626045467831464707

`3*p?[A024899(n+1)]-2`
-/

namespace A216880.P16626045467831464707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A216880.P16626045467831464707

/-! ## A216880.P1675378672256968141

`A062380(A007693(n+1))`
-/

namespace A216880.P1675378672256968141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062380 (A007693 (n + 1)).toNat

end

end A216880.P1675378672256968141

/-! ## A216880.P18200509662270745204

`A016777(A007693(n+1)-1)`
-/

namespace A216880.P18200509662270745204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A007693 (n + 1) - 1).toNat

end

end A216880.P18200509662270745204

/-! ## A216880.P2069579010329910587

`A016789(p?[A024899(n+1)])-4`
-/

namespace A216880.P2069579010329910587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 4

end

end A216880.P2069579010329910587

/-! ## A216880.P14061885345121491204

`(p?[A016921(A000040(n+1))]-5)/2`
-/

namespace A216880.P14061885345121491204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A000040 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5 : ℚ) / 2

end

end A216880.P14061885345121491204

/-! ## A216880.P8886845399023004767

`(record[A006530(A178662(n+1))]-5)/2`
-/

namespace A216880.P8886845399023004767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A178662 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 5 : ℚ) / 2

end

end A216880.P8886845399023004767

/-!
# A216882: Primes p such that x^7 = 5 has a solution mod p.

The programs for A216882, there is no canonical definition to state claims against.
-/

/-! ## A216882.P16390056679360211938

`A000040(lt[A054991(n+1), A329362(3*n)])`
-/

namespace A216882.P16390056679360211938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216882.P16390056679360211938

/-! ## A216882.P352856405710647453

`A000040(lt[A194446(2*(n+1)), A018609(n+1)])`
-/

namespace A216882.P352856405710647453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216882.P352856405710647453

/-! ## A216882.P641134234335025579

`A000040(∑[(A381433(2*n+5)%3)!])`
-/

namespace A216882.P641134234335025579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A381433 (2 * n + 5)) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216882.P641134234335025579

/-! ## A216882.P15976198840998893308

`A000040(A074779(n+1)%A376654(2*(n+1)))`
-/

namespace A216882.P15976198840998893308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A074779 (n + 1)) (A376654 (2 * (n + 1)))).toNat

end

end A216882.P15976198840998893308

/-! ## A216882.P5470779348752749574

`A000040(lt[A306798(3*n+4), A359207(n)])`
-/

namespace A216882.P5470779348752749574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306798 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216882.P5470779348752749574

/-!
# A216883: Primes p such that x^31 = 2 has a solution mod p.

The programs for A216883, there is no canonical definition to state claims against.
-/

/-! ## A216883.P1274901739190448848

`eq[A003415(n), A214570(A324500(2*n+3))]`
-/

namespace A216883.P1274901739190448848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214570 (A324500 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216883.P1274901739190448848

/-! ## A216883.P14323252558091806715

`lt[A000040(A061034(2*n+3)), A055671(n)]`
-/

namespace A216883.P14323252558091806715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061034 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216883.P14323252558091806715

/-! ## A216883.P15114994471959495497

`record[A335285(2*(n+1))%A338419(3*n+2)]`
-/

namespace A216883.P15114994471959495497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335285 (2 * (n + 1))) (A338419 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216883.P15114994471959495497

/-! ## A216883.P9405039820395169090

`A000040(A243836(n)+A166719(n+1))`
-/

namespace A216883.P9405039820395169090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A243836 n + A166719 (n + 1)).toNat

end

end A216883.P9405039820395169090

/-! ## A216883.P535806950042939250

`A006530(Δ[A007504(n)]*A179269(n))`
-/

namespace A216883.P535806950042939250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f1 (n + 1) - f1 n) * A179269 n).toNat

end

end A216883.P535806950042939250

/-! ## A216883.P6640962381418192729

`A006530(A000040(n+1)*A179269(n))`
-/

namespace A216883.P6640962381418192729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) * A179269 n).toNat

end

end A216883.P6640962381418192729

/-! ## A216883.P11607505994141535154

`A006530(lcm(A000040(n+1), A179269(n)))`
-/

namespace A216883.P11607505994141535154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A000040 (n + 1)) (A179269 n))

end

end A216883.P11607505994141535154

/-! ## A216883.P3077903026786391441

`A006530(sqrt(A001248(n+1))*A179269(n))`
-/

namespace A216883.P3077903026786391441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) * (A179269 n : ℝ))).toNat

end

end A216883.P3077903026786391441

/-! ## A216883.P130390515315664094

`A335462(A069770(n+1))+A000040(n+1)`
-/

namespace A216883.P130390515315664094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A069770 (n + 1)).toNat + A000040 (n + 1)

end

end A216883.P130390515315664094

/-!
# A216884: Primes p such that x^61 = 2 has a solution mod p.

The programs for A216884, the canonical program `A216884.P17864295657923968855` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216884 has offset 1).

The definition of A216884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216884.P22525553634814879

`eq[A003415(n), A304042(A009994(n+1))]`
-/

namespace A216884.P22525553634814879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A009994 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216884.P22525553634814879

namespace A216884

/-- `eq[A003415(n), A304042(A009994(n+1))]` -/
def P22525553634814879.Spec : Prop :=
  ∀ n, (P22525553634814879.a n : ℤ) = A216884 (n + 1)

end A216884

/-! ## A216884.P17864295657923968855

`A000040(A323048(n+1)+char[A323048(n+1)])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A216884

/-- `A000040(A323048(n+1)+char[A323048(n+1)])` -/
def P17864295657923968855.Spec : Prop :=
  ∀ n, P17864295657923968855.a n = A216884 (n + 1)

theorem P17864295657923968855.correct : P17864295657923968855.Spec := by
  intro n
  simp only [A216884, Nat.add_sub_cancel]

end A216884

/-! ## A216884.P7517873238321855627

`eq[A032741(n), A273866(A241148(n+2))]`
-/

namespace A216884.P7517873238321855627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273866 (A241148 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216884.P7517873238321855627

namespace A216884

/-- `eq[A032741(n), A273866(A241148(n+2))]` -/
def P7517873238321855627.Spec : Prop :=
  ∀ n, (P7517873238321855627.a n : ℤ) = A216884 (n + 1)

end A216884

/-!
# A216885: Primes p such that x^47 = 2 has a solution mod p.

The programs for A216885, there is no canonical definition to state claims against.
-/

/-! ## A216885.P9486586394485042338

`eq[A074206(n), A267922(A007091(n))]`
-/

namespace A216885.P9486586394485042338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267922 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216885.P9486586394485042338

/-! ## A216885.P6668929332498353198

`eq[A003415(n), A102541(A128830(2*n+1))]`
-/

namespace A216885.P6668929332498353198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 (A128830 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216885.P6668929332498353198

/-! ## A216885.P11184182276560144417

`eq[A003415(n), A325133(A084549(3*n+1))]`
-/

namespace A216885.P11184182276560144417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325133 (A084549 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216885.P11184182276560144417

/-! ## A216885.P18440071920976927081

`eq[A018783(n), A071332(A239061(3*(n+1)))]`
-/

namespace A216885.P18440071920976927081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071332 (A239061 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216885.P18440071920976927081

/-! ## A216885.P3750908494958985342

`lt[A328771(n+3), A032741(A055671(n))]`
-/

namespace A216885.P3750908494958985342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216885.P3750908494958985342

/-! ## A216885.P17289324213064418955

`A006530(A000040(n+1)*A325353(n))`
-/

namespace A216885.P17289324213064418955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) * A325353 n).toNat

end

end A216885.P17289324213064418955

/-! ## A216885.P9622653903062562019

`A006530(lcm(A000040(n+1), A325353(n)))`
-/

namespace A216885.P9622653903062562019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A000040 (n + 1)) (A325353 n))

end

end A216885.P9622653903062562019

/-!
# A216887: Primes p such that x^67 = 2 has a solution mod p.

The programs for A216887, the canonical program `A216887.P7016313047720049362` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216887 has offset 1).

The definition of A216887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216887.P13165065443699067015

`eq[A003415(n), A270419(A210719(n+1))]`
-/

namespace A216887.P13165065443699067015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (A210719 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216887.P13165065443699067015

namespace A216887

/-- `eq[A003415(n), A270419(A210719(n+1))]` -/
def P13165065443699067015.Spec : Prop :=
  ∀ n, (P13165065443699067015.a n : ℤ) = A216887 (n + 1)

end A216887

/-! ## A216887.P821378150234618190

`eq[A003415(n), A347131(A069104(n+5))]`
-/

namespace A216887.P821378150234618190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347131 (A069104 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216887.P821378150234618190

namespace A216887

/-- `eq[A003415(n), A347131(A069104(n+5))]` -/
def P821378150234618190.Spec : Prop :=
  ∀ n, (P821378150234618190.a n : ℤ) = A216887 (n + 1)

end A216887

/-! ## A216887.P7016313047720049362

`eq[A003415(A050376(2*(n+2))), A003415(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A216887

/-- `eq[A003415(A050376(2*(n+2))), A003415(n)]` -/
def P7016313047720049362.Spec : Prop :=
  ∀ n, (P7016313047720049362.a n : ℤ) = A216887 (n + 1)

theorem P7016313047720049362.correct : P7016313047720049362.Spec := by
  intro n
  simp only [A216887, Nat.add_sub_cancel]

end A216887

/-! ## A216887.P17842200186875975963

`eq[A071178(A050376(2*(n+2))), A074206(n)]`
-/

namespace A216887.P17842200186875975963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A050376 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216887.P17842200186875975963

namespace A216887

/-- `eq[A071178(A050376(2*(n+2))), A074206(n)]` -/
def P17842200186875975963.Spec : Prop :=
  ∀ n, (P17842200186875975963.a n : ℤ) = A216887 (n + 1)

end A216887

/-! ## A216887.P3767006843498557739

`eq[A078898(A050376(2*(n+2))), A078898(n)]`
-/

namespace A216887.P3767006843498557739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A050376 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216887.P3767006843498557739

namespace A216887

/-- `eq[A078898(A050376(2*(n+2))), A078898(n)]` -/
def P3767006843498557739.Spec : Prop :=
  ∀ n, (P3767006843498557739.a n : ℤ) = A216887 (n + 1)

end A216887

/-! ## A216887.P13826785256853495044

`record[A080891(A325319(n+4))²*A162753(n)]`
-/

namespace A216887.P13826785256853495044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A325319 (n + 4)).toNat ^ 2 * A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216887.P13826785256853495044

namespace A216887

/-- `record[A080891(A325319(n+4))²*A162753(n)]` -/
def P13826785256853495044.Spec : Prop :=
  ∀ n, P13826785256853495044.a n = A216887 (n + 1)

end A216887

/-! ## A216887.P1062942727223057306

`A000040(A085736(n+4)-3)`
-/

namespace A216887.P1062942727223057306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A085736 (n + 4) - 3).toNat

end

end A216887.P1062942727223057306

namespace A216887

/-- `A000040(A085736(n+4)-3)` -/
def P1062942727223057306.Spec : Prop :=
  ∀ n, P1062942727223057306.a n = A216887 (n + 1)

end A216887

/-! ## A216887.P14925524301327757735

`lt[A243854(n+2), A000267(A055671(n))]`
-/

namespace A216887.P14925524301327757735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243854 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216887.P14925524301327757735

namespace A216887

/-- `lt[A243854(n+2), A000267(A055671(n))]` -/
def P14925524301327757735.Spec : Prop :=
  ∀ n, (P14925524301327757735.a n : ℤ) = A216887 (n + 1)

end A216887

/-! ## A216887.P2935606135364045004

`A000040(n+1)+2*A249832(A193845(n))`
-/

namespace A216887.P2935606135364045004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A249832 (A193845 n).toNat

end

end A216887.P2935606135364045004

namespace A216887

/-- `A000040(n+1)+2*A249832(A193845(n))` -/
def P2935606135364045004.Spec : Prop :=
  ∀ n, P2935606135364045004.a n = A216887 (n + 1)

end A216887

/-!
# A216888: Numbers k such that 6*3^k + 1 is prime.

The programs for A216888, there is no canonical definition to state claims against.
-/

/-! ## A216888.P15647854553075801158

`A003306(n+2)-1`
-/

namespace A216888.P15647854553075801158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003306 (n + 2) - 1

end

end A216888.P15647854553075801158

/-! ## A216888.P419903966256274558

`∑[Δ[A003306(n+1)]%∑[2^n]]`
-/

namespace A216888.P419903966256274558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003306 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216888.P419903966256274558

/-! ## A216888.P7130577259936838301

`A057428(n+1)+A003306(n+2)`
-/

namespace A216888.P7130577259936838301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A003306 (n + 2)

end

end A216888.P7130577259936838301

/-! ## A216888.P14996099858323517388

`A153881(n+2)+A003306(n+2)`
-/

namespace A216888.P14996099858323517388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A003306 (n + 2)

end

end A216888.P14996099858323517388

/-! ## A216888.P13449330747362931756

`A033999(Δ[n²])+A003306(n+2)`
-/

namespace A216888.P13449330747362931756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A003306 (n + 2)

end

end A216888.P13449330747362931756

/-!
# A216889: Numbers k such that 12*3^k + 1 is prime.

The programs for A216889, there is no canonical definition to state claims against.
-/

/-! ## A216889.P11750754576890993865

`A005537(n+2)-1`
-/

namespace A216889.P11750754576890993865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005537 (n + 2) - 1

end

end A216889.P11750754576890993865

/-! ## A216889.P11583366044167664364

`∑[Δ[A005537(n+1)]%(4^n)]`
-/

namespace A216889.P11583366044167664364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005537 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216889.P11583366044167664364

/-! ## A216889.P11189096917208172177

`A057428(n+1)+A005537(n+2)`
-/

namespace A216889.P11189096917208172177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A005537 (n + 2)

end

end A216889.P11189096917208172177

/-! ## A216889.P17867432422225442021

`A038608(gcd(n, n+1))+A005537(n+2)`
-/

namespace A216889.P17867432422225442021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (Nat.gcd n (n + 1)) + A005537 (n + 2)

end

end A216889.P17867432422225442021

/-! ## A216889.P15486890942545412172

`A107393(A042988(n))+A005537(n+2)`
-/

namespace A216889.P15486890942545412172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A042988 n).toNat + A005537 (n + 2)

end

end A216889.P15486890942545412172

/-!
# A216890: Numbers n such that 14*3^n + 1 is prime.

The programs for A216890, there is no canonical definition to state claims against.
-/

/-! ## A216890.P2921769963208267036

`∑[A319338(A303801(n+1)+2)]`
-/

namespace A216890.P2921769963208267036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319338 (A303801 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216890.P2921769963208267036

/-!
# A216892: Number of unspecified amplitude coefficients in an n-particle supersymmetric Yang-Mills Lagrangian (with maximum helicity violation, 4 charges) on the three-loop level.

The programs for A216892, there is no canonical definition to state claims against.
-/

/-! ## A216892.P17994454075643488933

`A289182(n+1)+A289182(A299275(n))`
-/

namespace A216892.P17994454075643488933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289182 (n + 1) + A289182 (A299275 n).toNat

end

end A216892.P17994454075643488933

/-! ## A216892.P3101540261549518507

`A005895(2*(n+2))-A240508(A240508(n+3))`
-/

namespace A216892.P3101540261549518507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005895 (2 * (n + 2)) - A240508 (A240508 (n + 3)).toNat

end

end A216892.P3101540261549518507

/-!
# A216893: Fibonacci numbers whose sum of prime divisors equals two times a Fibonacci number.

The programs for A216893, there is no canonical definition to state claims against.
-/

/-! ## A216893.P3577887779134806794

`A000045(A324690(n+2)+A324679(n))`
-/

namespace A216893.P3577887779134806794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A324690 (n + 2) + A324679 n).toNat

end

end A216893.P3577887779134806794

/-! ## A216893.P16046006912291906775

`A000045(A324690(n+2)-A324678(n))`
-/

namespace A216893.P16046006912291906775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A324690 (n + 2) - A324678 n).toNat

end

end A216893.P16046006912291906775

/-! ## A216893.P13136619089964551365

`A000045(A099518(n+1)^A102396(n))`
-/

namespace A216893.P13136619089964551365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A099518 (n + 1) : ℚ) ^ (A102396 n : ℤ))).toNat

end

end A216893.P13136619089964551365

/-!
# A216898: a(n) = smallest number k such that both k - n^2 and k + n^2 are primes.

The programs for A216898, there is no canonical definition to state claims against.
-/

/-! ## A216898.P17159710215758409147

`A087711(n²)`
-/

namespace A216898.P17159710215758409147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (n ^ 2)

end

end A216898.P17159710215758409147

/-! ## A216898.P9478511339082073845

`A020483(n²)+n²`
-/

namespace A216898.P9478511339082073845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (n ^ 2) + (n ^ 2 : ℤ)

end

end A216898.P9478511339082073845

/-! ## A216898.P3996052018856139148

`A020484(n²)-n²`
-/

namespace A216898.P3996052018856139148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (n ^ 2) - (n ^ 2 : ℤ)

end

end A216898.P3996052018856139148

/-! ## A216898.P15804110134662764211

`n-(n*(n+1)-A020484(A000290(n)))`
-/

namespace A216898.P15804110134662764211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n * (n + 1) : ℤ) - A020484 (A000290 n).toNat)

end

end A216898.P15804110134662764211

/-! ## A216898.P4967987739871902630

`abs(A000290(n)-A020484(A000290(n)))`
-/

namespace A216898.P4967987739871902630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n - A020484 (A000290 n).toNat|

end

end A216898.P4967987739871902630

/-! ## A216898.P9767206228813696330

`A000027(A020484(A000290(n))-A000290(n))`
-/

namespace A216898.P9767206228813696330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020484 (A000290 n).toNat - A000290 n).toNat

end

end A216898.P9767206228813696330

/-! ## A216898.P7325053404555744101

`A000007(n+1)+A020484(A000290(n))-A000290(n)`
-/

namespace A216898.P7325053404555744101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A020484 (A000290 n).toNat - A000290 n)

end

end A216898.P7325053404555744101

