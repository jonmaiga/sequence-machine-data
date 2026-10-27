import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A145801: Number of islands of ones fitting in an n X n array with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145801, there is no canonical definition to state claims against.
-/

/-! ## A145801.P2371553601424847951

`record[ceil(A345440(n)/3)]`
-/

namespace A145801.P2371553601424847951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A345440 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145801.P2371553601424847951

/-! ## A145801.P9248786797039546367

`record[∑[A029215(n)-1]]`
-/

namespace A145801.P9248786797039546367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029215 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145801.P9248786797039546367

/-! ## A145801.P683894246093183528

`A062299(∑[lcm(2, n)+1])`
-/

namespace A145801.P683894246093183528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145801.P683894246093183528

/-! ## A145801.P6029474384563114641

`record[round(A082017(n+1)/8)]`
-/

namespace A145801.P6029474384563114641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A082017 (n + 1) : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145801.P6029474384563114641

/-! ## A145801.P2903258252013394467

`floor((A286378(n)+∑[n])/2)`
-/

namespace A145801.P2903258252013394467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286378 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2⌋

end

end A145801.P2903258252013394467

/-!
# A145802: Number of islands of ones fitting in an n X n array symmetric under horizontal reflection with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145802, there is no canonical definition to state claims against.
-/

/-! ## A145802.P15781921100823721433

`A111660(A238872(n)+A000217(n))`
-/

namespace A145802.P15781921100823721433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A238872 n + A000217 n).toNat

end

end A145802.P15781921100823721433

/-! ## A145802.P11146681113432492360

`A111660(A000096(n)-A056943(n))`
-/

namespace A145802.P11146681113432492360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A000096 n - A056943 n).toNat

end

end A145802.P11146681113432492360

/-! ## A145802.P2877747624114909616

`A340998(A049697(n))+A194229(n+1)`
-/

namespace A145802.P2877747624114909616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A049697 n).toNat + 140) + A194229 (n + 1)

end

end A145802.P2877747624114909616

/-! ## A145802.P680038526581792442

`A145801(n+1)-A145814(A037027(n))`
-/

namespace A145802.P680038526581792442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145801 (n + 1) - A145814 (A037027 n).toNat

end

end A145802.P680038526581792442

/-! ## A145802.P8994206610105565561

`A194229(n+1)+A082859(A102480(2*n))`
-/

namespace A145802.P8994206610105565561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194229 (n + 1) + A082859 (A102480 (2 * n)).toNat

end

end A145802.P8994206610105565561

/-!
# A145803: 1/2 the number of islands of ones fitting in an n X n array symmetric under horizontal and vertical reflection with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145803, there is no canonical definition to state claims against.
-/

/-! ## A145803.P1259427978405241786

`A036042(A113405(n)*A127757(n+1))`
-/

namespace A145803.P1259427978405241786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A113405 n * A127757 (n + 1)).toNat

end

end A145803.P1259427978405241786

/-! ## A145803.P4282766133350892950

`A172471(A218913(n)-A034836(n+2))`
-/

namespace A145803.P4282766133350892950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A218913 n - A034836 (n + 2)).toNat

end

end A145803.P4282766133350892950

/-!
# A145804: 1/2 the number of islands of ones fitting in an n X n array symmetric about main diagonal with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145804, there is no canonical definition to state claims against.
-/

/-! ## A145804.P216289922629510976

`floor(A213032(2*n+3)/5)`
-/

namespace A145804.P216289922629510976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213032 (2 * n + 3) : ℚ) / 5⌋

end

end A145804.P216289922629510976

/-! ## A145804.P547184578589486105

`A172474(∑[A291290(n+2)])`
-/

namespace A145804.P547184578589486105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291290 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145804.P547184578589486105

/-! ## A145804.P8653795041763402112

`A059995(2*A213032(2*n+3))`
-/

namespace A145804.P8653795041763402112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A213032 (2 * n + 3)).toNat

end

end A145804.P8653795041763402112

/-! ## A145804.P6715503516514940073

`A343609(A078181(n+1)+(n+1)²)`
-/

namespace A145804.P6715503516514940073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A078181 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A145804.P6715503516514940073

/-!
# A145806: 1/4 of the number of islands of ones fitting in an n X n array symmetric under 90-degree rotation with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145806, there is no canonical definition to state claims against.
-/

/-! ## A145806.P15547570540326234975

`round(((char[3*n]+2*n)/8)²)`
-/

namespace A145806.P15547570540326234975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((((if ∃ j, f1 j = n then 1 else 0) + 2 * n : ℕ) : ℚ) / 8) ^ 2)

end

end A145806.P15547570540326234975

/-! ## A145806.P6010012349849915622

`Δ[round(A135503(n)/25)]`
-/

namespace A145806.P6010012349849915622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A135503 n : ℚ) / 25)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145806.P6010012349849915622

/-! ## A145806.P1403165972832775812

`round((n/4)²)+A337604(n)%3`
-/

namespace A145806.P1403165972832775812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 4) ^ 2) + Int.tmod (A337604 n) 3

end

end A145806.P1403165972832775812

/-! ## A145806.P8110251951723142110

`A033183(A299266(n)+10)`
-/

namespace A145806.P8110251951723142110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A299266 n + 10).toNat

end

end A145806.P8110251951723142110

/-! ## A145806.P18383759112269501802

`A333251(n)+A008625(n)`
-/

namespace A145806.P18383759112269501802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333251 n + A008625 n

end

end A145806.P18383759112269501802

/-!
# A145807: 1/2 the number of islands of ones fitting in an n X n array symmetric under 180 degree rotation with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145807, there is no canonical definition to state claims against.
-/

/-! ## A145807.P10176583891855229825

`floor((n+1)*A019446(2*n+1)/10)`
-/

namespace A145807.P10176583891855229825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((A019446 (2 * n + 1) : ℚ) / 10)⌋

end

end A145807.P10176583891855229825

/-! ## A145807.P6599363601332184394

`floor(((n+1)*(∑[A000005(n+1)]+10)+1)/30)`
-/

namespace A145807.P6599363601332184394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 10) + 1 : ℤ) : ℚ) / 30⌋

end

end A145807.P6599363601332184394

/-! ## A145807.P3960254977625324135

`A065515(∑[A286218(n)])-1`
-/

namespace A145807.P3960254977625324135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A145807.P3960254977625324135

/-! ## A145807.P5496825074353871076

`∑[A092278(A337662(n+2))]`
-/

namespace A145807.P5496825074353871076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 (A337662 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145807.P5496825074353871076

/-! ## A145807.P6373792497818286036

`A276797(∑[n]-A008238(n))`
-/

namespace A145807.P6373792497818286036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008238 n).toNat

end

end A145807.P6373792497818286036

/-!
# A145808: Non-palindromic balanced numbers: the first and the last half of digits have the same sum.

The programs for A145808, there is no canonical definition to state claims against.
-/

/-! ## A145808.P17562961069748457508

`filter[A240927(n+1), A145568(#)]`
-/

namespace A145808.P17562961069748457508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A145808.P17562961069748457508

/-!
# A145811: 1/2 of the number of islands of ones fitting in an n X n array symmetric under horizontal and vertical reflection with all ones connected only either three adjacent vertically or three adjacent horizontally.

The programs for A145811, there is no canonical definition to state claims against.
-/

/-! ## A145811.P14638454868333235688

`A000005(A210757(2*(n+1))+A191139(3*n+5))%(n+1)`
-/

namespace A145811.P14638454868333235688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A210757 (2 * (n + 1)) + A191139 (3 * n + 5)).toNat) (n + 1 : ℤ)

end

end A145811.P14638454868333235688

/-!
# A145812: Odd positive integers a(n) such that for every odd integer m > 1 there exists a unique representation of m as a sum of the form a(l) + 2a(s).

The programs for A145812, the canonical program `A145812.P7040268425871068342` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145812 has offset 1).

The definition of A145812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145812.P4651141946752086211

`2*A000695(n)+1`
-/

namespace A145812.P4651141946752086211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000695 n + 1

end

end A145812.P4651141946752086211

namespace A145812

/-- `2*A000695(n)+1` -/
def P4651141946752086211.Spec : Prop :=
  ∀ n, P4651141946752086211.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P6177925387710222019

`a(n-1)+(xor(n, -n)²+2)/3` with `a(0)=1`
-/

namespace A145812.P6177925387710222019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 + 2 : ℚ) / 3

end

end A145812.P6177925387710222019

namespace A145812

/-- `a(n-1)+(xor(n, -n)²+2)/3` -/
def P6177925387710222019.Spec : Prop :=
  ∀ n, P6177925387710222019.a n = (A145812 (n + 1) : ℚ)

end A145812

/-! ## A145812.P15804942811177408157

`2*(2*∑[and(n, -n)²]+n)/3+1`
-/

namespace A145812.P15804942811177408157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3) + 1

end

end A145812.P15804942811177408157

namespace A145812

/-- `2*(2*∑[and(n, -n)²]+n)/3+1` -/
def P15804942811177408157.Spec : Prop :=
  ∀ n, P15804942811177408157.a n = (A145812 (n + 1) : ℚ)

end A145812

/-! ## A145812.P7040268425871068342

`ceil((4*∑[ceil(xor(n, -n)²/3)]+1)/4)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145812

/-- `ceil((4*∑[ceil(xor(n, -n)²/3)]+1)/4)` -/
def P7040268425871068342.Spec : Prop :=
  ∀ n, P7040268425871068342.a n = A145812 (n + 1)

theorem P7040268425871068342.correct : P7040268425871068342.Spec := by
  intro n
  simp only [A145812, Nat.add_sub_cancel]

end A145812

/-! ## A145812.P5271556176885319845

`or(1, 3*a(n-1)+1-2*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A145812.P5271556176885319845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (3 * a (n - 1) + 1 - 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A145812.P5271556176885319845

namespace A145812

/-- `or(1, 3*a(n-1)+1-2*a(and(n, n-1)))` -/
def P5271556176885319845.Spec : Prop :=
  ∀ n, P5271556176885319845.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P13359572165500256455

`xor(1, 3*a(n-1)+1-2*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A145812.P13359572165500256455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (3 * a (n - 1) + 1 - 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A145812.P13359572165500256455

namespace A145812

/-- `xor(1, 3*a(n-1)+1-2*a(and(n, n-1)))` -/
def P13359572165500256455.Spec : Prop :=
  ∀ n, P13359572165500256455.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P1524359967539464146

`A062880(n)+1`
-/

namespace A145812.P1524359967539464146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 n + 1

end

end A145812.P1524359967539464146

namespace A145812

/-- `A062880(n)+1` -/
def P1524359967539464146.Spec : Prop :=
  ∀ n, P1524359967539464146.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P14241101624698425883

`A147568(n)-2`
-/

namespace A145812.P14241101624698425883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147568 n - 2

end

end A145812.P14241101624698425883

namespace A145812

/-- `A147568(n)-2` -/
def P14241101624698425883.Spec : Prop :=
  ∀ n, P14241101624698425883.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P3112723519746913971

`2*A098871(n)-1`
-/

namespace A145812.P3112723519746913971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098871 n - 1

end

end A145812.P3112723519746913971

namespace A145812

/-- `2*A098871(n)-1` -/
def P3112723519746913971.Spec : Prop :=
  ∀ n, P3112723519746913971.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P15031881737769001958

`A127988(n)/4+1`
-/

namespace A145812.P15031881737769001958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127988 n : ℚ) / 4 + 1

end

end A145812.P15031881737769001958

namespace A145812

/-- `A127988(n)/4+1` -/
def P15031881737769001958.Spec : Prop :=
  ∀ n, P15031881737769001958.a n = (A145812 (n + 1) : ℚ)

end A145812

/-! ## A145812.P10023153993051960214

`ceil(A145818(n+1)/2)`
-/

namespace A145812.P10023153993051960214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145818 (n + 1) : ℚ) / 2⌉

end

end A145812.P10023153993051960214

namespace A145812

/-- `ceil(A145818(n+1)/2)` -/
def P10023153993051960214.Spec : Prop :=
  ∀ n, P10023153993051960214.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P5335726976910418647

`2/3*A001196(n)+1`
-/

namespace A145812.P5335726976910418647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A001196 n : ℚ) + 1

end

end A145812.P5335726976910418647

namespace A145812

/-- `2/3*A001196(n)+1` -/
def P5335726976910418647.Spec : Prop :=
  ∀ n, P5335726976910418647.a n = (A145812 (n + 1) : ℚ)

end A145812

/-! ## A145812.P13198645559495232011

`(A145849(n+1)+3)/4`
-/

namespace A145812.P13198645559495232011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145849 (n + 1) + 3 : ℚ) / 4

end

end A145812.P13198645559495232011

namespace A145812

/-- `(A145849(n+1)+3)/4` -/
def P13198645559495232011.Spec : Prop :=
  ∀ n, P13198645559495232011.a n = (A145812 (n + 1) : ℚ)

end A145812

/-! ## A145812.P1044162032489413669

`a(n-1)+A296306(n)+1` with `a(0)=1`
-/

namespace A145812.P1044162032489413669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A296306 n + 1)

end

end A145812.P1044162032489413669

namespace A145812

/-- `a(n-1)+A296306(n)+1` -/
def P1044162032489413669.Spec : Prop :=
  ∀ n, P1044162032489413669.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P14309161427378898037

`A098871(n)+A000695(n)`
-/

namespace A145812.P14309161427378898037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n + A000695 n

end

end A145812.P14309161427378898037

namespace A145812

/-- `A098871(n)+A000695(n)` -/
def P14309161427378898037.Spec : Prop :=
  ∀ n, P14309161427378898037.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P5100974838880538339

`xor(A010696(n), A147568(n))`
-/

namespace A145812.P5100974838880538339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010696 n) (A147568 n)

end

end A145812.P5100974838880538339

namespace A145812

/-- `xor(A010696(n), A147568(n))` -/
def P5100974838880538339.Spec : Prop :=
  ∀ n, P5100974838880538339.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P17452174236935090298

`A001196(n)+1-A000695(n)`
-/

namespace A145812.P17452174236935090298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n + (1 - A000695 n)

end

end A145812.P17452174236935090298

namespace A145812

/-- `A001196(n)+1-A000695(n)` -/
def P17452174236935090298.Spec : Prop :=
  ∀ n, P17452174236935090298.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P3448188126308866637

`2-(A020985(n)²-A062880(n))`
-/

namespace A145812.P3448188126308866637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A020985 n ^ 2 - A062880 n)

end

end A145812.P3448188126308866637

namespace A145812

/-- `2-(A020985(n)²-A062880(n))` -/
def P3448188126308866637.Spec : Prop :=
  ∀ n, P3448188126308866637.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P17107766447159631716

`2*(A145818(n+1)-A001196(n))-1`
-/

namespace A145812.P17107766447159631716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A145818 (n + 1) - A001196 n) - 1

end

end A145812.P17107766447159631716

namespace A145812

/-- `2*(A145818(n+1)-A001196(n))-1` -/
def P17107766447159631716.Spec : Prop :=
  ∀ n, P17107766447159631716.a n = A145812 (n + 1)

end A145812

/-! ## A145812.P13352213295839546973

`A145818(n+1)-(A000695(n)+A000695(n))`
-/

namespace A145812.P13352213295839546973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (n + 1) - (A000695 n + A000695 n)

end

end A145812.P13352213295839546973

namespace A145812

/-- `A145818(n+1)-(A000695(n)+A000695(n))` -/
def P13352213295839546973.Spec : Prop :=
  ∀ n, P13352213295839546973.a n = A145812 (n + 1)

end A145812

/-!
# A145813: 1/2 the number of islands of ones fitting in an n X n array symmetric about main diagonal with all ones connected only either three adjacent vertically or three adjacent horizontally.

The programs for A145813, there is no canonical definition to state claims against.
-/

/-! ## A145813.P2115133212765687370

`ceil(C(n, 3)/(2*n-5))`
-/

namespace A145813.P2115133212765687370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 3 : ℚ) / ((2 * n : ℤ) - 5 : ℚ)⌉

end

end A145813.P2115133212765687370

/-! ## A145813.P4609405453013420368

`round(A096376(n)/25)`
-/

namespace A145813.P4609405453013420368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A096376 n : ℚ) / 25)

end

end A145813.P4609405453013420368

/-! ## A145813.P15380287221382106532

`round(A056109(n)/38)`
-/

namespace A145813.P15380287221382106532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056109 n : ℚ) / 38)

end

end A145813.P15380287221382106532

/-! ## A145813.P5329612753266389169

`round(A141631(n+1)/38)`
-/

namespace A145813.P5329612753266389169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141631 (n + 1) : ℚ) / 38)

end

end A145813.P5329612753266389169

/-! ## A145813.P5461834979139026428

`char[A100214(n)]+round(n²/12)`
-/

namespace A145813.P5461834979139026428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100214 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

end

end A145813.P5461834979139026428

/-!
# A145815: 1/4 of the number of islands of ones fitting in an n X n array symmetric about the diagonal and under 90-degree rotation with all ones connected only either three adjacent vertically or three adjacent horizontally.

The programs for A145815, there is no canonical definition to state claims against.
-/

/-! ## A145815.P4816777940176984627

`A025427(A002865(n)*A228645(n))`
-/

namespace A145815.P4816777940176984627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A002865 n * A228645 n).toNat

end

end A145815.P4816777940176984627

/-! ## A145815.P8407964091658206647

`A161878(n)%A209082(A054519(n))`
-/

namespace A145815.P8407964091658206647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161878 n) (A209082 (A054519 n).toNat)

end

end A145815.P8407964091658206647

/-! ## A145815.P10269167985450685534

`A162346(n)%A209082(A054519(n))`
-/

namespace A145815.P10269167985450685534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162346 n) (A209082 (A054519 n).toNat)

end

end A145815.P10269167985450685534

/-! ## A145815.P1878583946474585582

`A304709(A069800(n+1))%A304706(n)`
-/

namespace A145815.P1878583946474585582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304709 (A069800 (n + 1)).toNat) (A304706 n)

end

end A145815.P1878583946474585582

/-!
# A145816: 1/4 of the number of islands of ones fitting in an n X n array symmetric under 90-degree rotation with all ones connected only either three adjacent vertically or three adjacent horizontally.

The programs for A145816, there is no canonical definition to state claims against.
-/

/-! ## A145816.P7897312792789628166

`round(n*and(62, n)/23)`
-/

namespace A145816.P7897312792789628166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n * Nat.land 62 n : ℚ) / 23)

end

end A145816.P7897312792789628166

/-! ## A145816.P5796219690966570607

`round(n*(or(1, n)-1)/23)`
-/

namespace A145816.P5796219690966570607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) * ((Nat.lor 1 n : ℤ) - 1) : ℚ) / 23)

end

end A145816.P5796219690966570607

/-! ## A145816.P1793628723472906575

`round(C(or(1, n)+n, 2)/47)`
-/

namespace A145816.P1793628723472906575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (Nat.lor 1 n + n) 2 : ℚ) / 47)

end

end A145816.P1793628723472906575

/-! ## A145816.P10744341194778522933

`round(4*or(1, n)*n/98)`
-/

namespace A145816.P10744341194778522933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * Nat.lor 1 n : ℚ) * ((n : ℚ) / 98))

end

end A145816.P10744341194778522933

/-! ## A145816.P7109199971677829589

`round(n*(n-n%2)/23)`
-/

namespace A145816.P7109199971677829589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) * ((n : ℤ) - ((n % 2 : ℕ) : ℤ)) : ℚ) / 23)

end

end A145816.P7109199971677829589

/-!
# A145818: Odd positive integers a(n) such that for every integer m == 3 (mod 4) there exists a unique representation of the form m = a(l) + 2*a(s), but there are no such representations for m == 1 (mod 4).

The programs for A145818, the canonical program `A145818.P3179306849580850996` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145818 has offset 1).

The definition of A145818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145818.P10685353692666968125

`(4*∑[ceil(xor(n, -n)²/3)]+2)/2`
-/

namespace A145818.P10685353692666968125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 2 : ℤ) : ℚ) / 2

end

end A145818.P10685353692666968125

namespace A145818

/-- `(4*∑[ceil(xor(n, -n)²/3)]+2)/2` -/
def P10685353692666968125.Spec : Prop :=
  ∀ n, P10685353692666968125.a n = (A145818 (n + 1) : ℚ)

end A145818

/-! ## A145818.P3179306849580850996

`1-4*(1-(a(floor(n/2))+n%2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145818

/-- `1-4*(1-(a(floor(n/2))+n%2))` -/
def P3179306849580850996.Spec : Prop :=
  ∀ n, P3179306849580850996.a n = A145818 (n + 1)

theorem P3179306849580850996.correct : P3179306849580850996.Spec := by
  intro n
  simp only [A145818, Nat.add_sub_cancel]

end A145818

/-! ## A145818.P18221534271257977200

`2*2*(2*∑[and(n, -n)²]+n)/3+1`
-/

namespace A145818.P18221534271257977200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 * (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3)) + 1

end

end A145818.P18221534271257977200

namespace A145818

/-- `2*2*(2*∑[and(n, -n)²]+n)/3+1` -/
def P18221534271257977200.Spec : Prop :=
  ∀ n, P18221534271257977200.a n = (A145818 (n + 1) : ℚ)

end A145818

/-! ## A145818.P11761513999775996635

`4*(a(floor(n/2))+(1-(-1)^n)/2)-3` with `a(0)=1`
-/

namespace A145818.P11761513999775996635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ) / 2) - 3

end

end A145818.P11761513999775996635

namespace A145818

/-- `4*(a(floor(n/2))+(1-(-1)^n)/2)-3` -/
def P11761513999775996635.Spec : Prop :=
  ∀ n, P11761513999775996635.a n = (A145818 (n + 1) : ℚ)

end A145818

/-! ## A145818.P580735274798421771

`or(1, 3*a(n-1)+1-2*a(and(n, n-1)))+2` with `a(0)=1`
-/

namespace A145818.P580735274798421771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (3 * a (n - 1) + 1 - 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) + 2

end

end A145818.P580735274798421771

namespace A145818

/-- `or(1, 3*a(n-1)+1-2*a(and(n, n-1)))+2` -/
def P580735274798421771.Spec : Prop :=
  ∀ n, P580735274798421771.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P5651176019293219364

`2*A062880(n)+1`
-/

namespace A145818.P5651176019293219364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062880 n + 1

end

end A145818.P5651176019293219364

namespace A145818

/-- `2*A062880(n)+1` -/
def P5651176019293219364.Spec : Prop :=
  ∀ n, P5651176019293219364.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P3187118206436690808

`A127988(n)/2+1`
-/

namespace A145818.P3187118206436690808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127988 n : ℚ) / 2 + 1

end

end A145818.P3187118206436690808

namespace A145818

/-- `A127988(n)/2+1` -/
def P3187118206436690808.Spec : Prop :=
  ∀ n, P3187118206436690808.a n = (A145818 (n + 1) : ℚ)

end A145818

/-! ## A145818.P9093288037347237471

`4*A000695(n)+1`
-/

namespace A145818.P9093288037347237471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000695 n + 1

end

end A145818.P9093288037347237471

namespace A145818

/-- `4*A000695(n)+1` -/
def P9093288037347237471.Spec : Prop :=
  ∀ n, P9093288037347237471.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P14127922146124200234

`2*A147568(n)-5`
-/

namespace A145818.P14127922146124200234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147568 n - 5

end

end A145818.P14127922146124200234

namespace A145818

/-- `2*A147568(n)-5` -/
def P14127922146124200234.Spec : Prop :=
  ∀ n, P14127922146124200234.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P15172764280919411971

`ceil(A145849(n+1)/2)`
-/

namespace A145818.P15172764280919411971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145849 (n + 1) : ℚ) / 2⌉

end

end A145818.P15172764280919411971

namespace A145818

/-- `ceil(A145849(n+1)/2)` -/
def P15172764280919411971.Spec : Prop :=
  ∀ n, P15172764280919411971.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P7052243924680560133

`2*A145812(n+1)-1`
-/

namespace A145818.P7052243924680560133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145812 (n + 1) - 1

end

end A145818.P7052243924680560133

namespace A145818

/-- `2*A145812(n+1)-1` -/
def P7052243924680560133.Spec : Prop :=
  ∀ n, P7052243924680560133.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P8954829856324346529

`(A145850(n+1)+3)/4`
-/

namespace A145818.P8954829856324346529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145850 (n + 1) + 3 : ℚ) / 4

end

end A145818.P8954829856324346529

namespace A145818

/-- `(A145850(n+1)+3)/4` -/
def P8954829856324346529.Spec : Prop :=
  ∀ n, P8954829856324346529.a n = (A145818 (n + 1) : ℚ)

end A145818

/-! ## A145818.P7112071287868998894

`4*A001196(n)/3+1`
-/

namespace A145818.P7112071287868998894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A001196 n : ℚ) / 3) + 1

end

end A145818.P7112071287868998894

namespace A145818

/-- `4*A001196(n)/3+1` -/
def P7112071287868998894.Spec : Prop :=
  ∀ n, P7112071287868998894.a n = (A145818 (n + 1) : ℚ)

end A145818

/-! ## A145818.P13510312594565554857

`A098871(n)+A001196(n)`
-/

namespace A145818.P13510312594565554857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n + A001196 n

end

end A145818.P13510312594565554857

namespace A145818

/-- `A098871(n)+A001196(n)` -/
def P13510312594565554857.Spec : Prop :=
  ∀ n, P13510312594565554857.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P16925398818146741769

`A000695(n)+A001196(n)+1`
-/

namespace A145818.P16925398818146741769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n + (A001196 n + 1)

end

end A145818.P16925398818146741769

namespace A145818

/-- `A000695(n)+A001196(n)+1` -/
def P16925398818146741769.Spec : Prop :=
  ∀ n, P16925398818146741769.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P16729799114116034305

`A145812(n+1)+A062880(n)`
-/

namespace A145818.P16729799114116034305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145812 (n + 1) + A062880 n

end

end A145818.P16729799114116034305

namespace A145818

/-- `A145812(n+1)+A062880(n)` -/
def P16729799114116034305.Spec : Prop :=
  ∀ n, P16729799114116034305.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P6961481640356159079

`xor(1, A062880(2*n)/2)`
-/

namespace A145818.P6961481640356159079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((A062880 (2 * n) : ℚ) / 2))

end

end A145818.P6961481640356159079

namespace A145818

/-- `xor(1, A062880(2*n)/2)` -/
def P6961481640356159079.Spec : Prop :=
  ∀ n, P6961481640356159079.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P1961678035699554422

`A062880(A005843(n))/2+1`
-/

namespace A145818.P1961678035699554422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 (A005843 n).toNat : ℚ) / 2 + 1

end

end A145818.P1961678035699554422

namespace A145818

/-- `A062880(A005843(n))/2+1` -/
def P1961678035699554422.Spec : Prop :=
  ∀ n, P1961678035699554422.a n = (A145818 (n + 1) : ℚ)

end A145818

/-! ## A145818.P6323570520642613661

`A098871(2*n)`
-/

namespace A145818.P6323570520642613661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 (2 * n)

end

end A145818.P6323570520642613661

namespace A145818

/-- `A098871(2*n)` -/
def P6323570520642613661.Spec : Prop :=
  ∀ n, P6323570520642613661.a n = A145818 (n + 1)

end A145818

/-! ## A145818.P7627572587172823145

`A000695(Δ[n²])`
-/

namespace A145818.P7627572587172823145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A145818.P7627572587172823145

namespace A145818

/-- `A000695(Δ[n²])` -/
def P7627572587172823145.Spec : Prop :=
  ∀ n, P7627572587172823145.a n = A145818 (n + 1)

end A145818

/-!
# A145819: Union of A145812 and A145818 with double repetition of 1, so that a(1)=1, a(2)=1.

The programs for A145819, there is no canonical definition to state claims against.
-/

/-! ## A145819.P6533210340277035826

`A065033(A126684(Δ[n²]))`
-/

namespace A145819.P6533210340277035826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A126684 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A145819.P6533210340277035826

/-! ## A145819.P1870641016372814145

`2*A126684(A028310(n))+1`
-/

namespace A145819.P1870641016372814145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126684 (A028310 n).toNat + 1

end

end A145819.P1870641016372814145

/-! ## A145819.P7800131826982857732

`A005408(A126684(floor(acot(n)+n)))`
-/

namespace A145819.P7800131826982857732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A126684 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A145819.P7800131826982857732

/-! ## A145819.P2940384212431953732

`A005408(A126684(round(sqrt(n²+1))))`
-/

namespace A145819.P2940384212431953732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A126684 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A145819.P2940384212431953732

/-! ## A145819.P12123574691690968192

`A004525(A126684(2*n+1)+1)`
-/

namespace A145819.P12123574691690968192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A126684 (2 * n + 1) + 1).toNat

end

end A145819.P12123574691690968192

/-!
# A145820: Numbers n such that 17, n, n+1 are the sides of a Heron triangle, i.e., a triangle with integer sides and integer area.

The programs for A145820, the canonical program `A145820.P17577128106652267316` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145820 has offset 1).

The definition of A145820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145820.P17577128106652267316

`a(n-1)+6*a(n-3)-6*a(n-4)-a(n-6)+a(n-7)` with `a(0)=8, a(1)=9, a(2)=16, a(3)=25, a(4)=40, a(5)=89, a(6)=144`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145820

/-- `a(n-1)+6*a(n-3)-6*a(n-4)-a(n-6)+a(n-7)` -/
def P17577128106652267316.Spec : Prop :=
  ∀ n, P17577128106652267316.a n = A145820 (n + 1)

theorem P17577128106652267316.correct : P17577128106652267316.Spec := by
  intro n
  simp only [A145820, Nat.add_sub_cancel]

end A145820

/-! ## A145820.P2391781663403296681

`floor(A281239(n+1)/4)`
-/

namespace A145820.P2391781663403296681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A281239 (n + 1) : ℚ) / 4⌋

end

end A145820.P2391781663403296681

namespace A145820

/-- `floor(A281239(n+1)/4)` -/
def P2391781663403296681.Spec : Prop :=
  ∀ n, P2391781663403296681.a n = A145820 (n + 1)

end A145820

/-! ## A145820.P7778798575271836913

`floor(A281235(n+1)/8)`
-/

namespace A145820.P7778798575271836913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A281235 (n + 1) : ℚ) / 8⌋

end

end A145820.P7778798575271836913

namespace A145820

/-- `floor(A281235(n+1)/8)` -/
def P7778798575271836913.Spec : Prop :=
  ∀ n, P7778798575271836913.a n = A145820 (n + 1)

end A145820

/-! ## A145820.P17419283392038724240

`ceil(A281235(n+1)/8-A000045((-1)^(2*n)))`
-/

namespace A145820.P17419283392038724240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A281235 (n + 1) : ℚ) / 8 - (A000045 ((-1) ^ (2 * n)).toNat : ℚ)⌉

end

end A145820.P17419283392038724240

namespace A145820

/-- `ceil(A281235(n+1)/8-A000045((-1)^(2*n)))` -/
def P17419283392038724240.Spec : Prop :=
  ∀ n, P17419283392038724240.a n = A145820 (n + 1)

end A145820

/-! ## A145820.P18356854853612376345

`floor(A281241(n+1)/16)`
-/

namespace A145820.P18356854853612376345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A281241 (n + 1) : ℚ) / 16⌋

end

end A145820.P18356854853612376345

namespace A145820

/-- `floor(A281241(n+1)/16)` -/
def P18356854853612376345.Spec : Prop :=
  ∀ n, P18356854853612376345.a n = A145820 (n + 1)

end A145820

/-! ## A145820.P2556630638913628415

`round(A281239(n+1)/4-A007318(C(n+1, 2)))`
-/

namespace A145820.P2556630638913628415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A281239 (n + 1) : ℚ) / 4 - (A007318 (Nat.choose (n + 1) 2) : ℚ))

end

end A145820.P2556630638913628415

namespace A145820

/-- `round(A281239(n+1)/4-A007318(C(n+1, 2)))` -/
def P2556630638913628415.Spec : Prop :=
  ∀ n, P2556630638913628415.a n = A145820 (n + 1)

end A145820

/-!
# A145823: Squares of the form p1 - 1 where p1 is a lower twin prime.

The programs for A145823, there is no canonical definition to state claims against.
-/

/-! ## A145823.P9079879268452670886

`A080149(n+1)²`
-/

namespace A145823.P9079879268452670886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080149 (n + 1) ^ 2

end

end A145823.P9079879268452670886

/-! ## A145823.P13355608892821370230

`A080149(Δ[n²]-n)^2`
-/

namespace A145823.P13355608892821370230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080149 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A145823.P13355608892821370230

/-! ## A145823.P3462746764352591224

`A080149(A000027(n+1))*A080149(n+1)`
-/

namespace A145823.P3462746764352591224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080149 (A000027 (n + 1)).toNat * A080149 (n + 1)

end

end A145823.P3462746764352591224

/-! ## A145823.P11713840159933050495

`A145824(n+1)-1`
-/

namespace A145823.P11713840159933050495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145824 (n + 1) - 1

end

end A145823.P11713840159933050495

/-! ## A145823.P6492464102656875678

`(2*A123232(n+1))²`
-/

namespace A145823.P6492464102656875678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A123232 (n + 1)) ^ 2

end

end A145823.P6492464102656875678

/-! ## A145823.P756788482074719847

`A016742(A123232(n+1))`
-/

namespace A145823.P756788482074719847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A123232 (n + 1)).toNat

end

end A145823.P756788482074719847

/-! ## A145823.P7215089782747708163

`(eq[1, A138205(n+1)]+1)²`
-/

namespace A145823.P7215089782747708163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A145823.P7215089782747708163

/-!
# A145824: Lower twin primes p1 such that p1-1 is a square.

The programs for A145824, there is no canonical definition to state claims against.
-/

/-! ## A145824.P10625595493363079990

`A145823(n+1)+1`
-/

namespace A145824.P10625595493363079990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145823 (n + 1) + 1

end

end A145824.P10625595493363079990

/-! ## A145824.P2046728069549386073

`1+A080149(n+1)²`
-/

namespace A145824.P2046728069549386073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A080149 (n + 1) ^ 2

end

end A145824.P2046728069549386073

/-! ## A145824.P16333234521185632379

`or(1, A080149(Δ[n²]-n)²)`
-/

namespace A145824.P16333234521185632379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A080149 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2)

end

end A145824.P16333234521185632379

/-! ## A145824.P11407265796807372720

`A090001(A071044(n))+A080149(n+1)*A080149(n+1)`
-/

namespace A145824.P11407265796807372720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A071044 n).toNat + A080149 (n + 1) * A080149 (n + 1)

end

end A145824.P11407265796807372720

/-! ## A145824.P3297786966882543491

`A001065(A000040(n+1))+lcm(2, A080149(n+1))^2`
-/

namespace A145824.P3297786966882543491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000040 (n + 1)).toNat + (Int.lcm 2 (A080149 (n + 1)) ^ 2 : ℤ)

end

end A145824.P3297786966882543491

/-! ## A145824.P9416239980457993309

`∩[A049422(n+1), A109807(n+1)]²+1`
-/

namespace A145824.P9416239980457993309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A145824.P9416239980457993309

/-! ## A145824.P1863570170339729288

`(2*A123232(n+1))²+1`
-/

namespace A145824.P1863570170339729288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A123232 (n + 1)) ^ 2 + 1

end

end A145824.P1863570170339729288

/-! ## A145824.P14788163116995408825

`∩[A005574(n+1), A049422(n+1)]²+1`
-/

namespace A145824.P14788163116995408825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A145824.P14788163116995408825

/-! ## A145824.P1277284402372914317

`A053755(A123232(n+1))`
-/

namespace A145824.P1277284402372914317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A123232 (n + 1)).toNat

end

end A145824.P1277284402372914317

/-! ## A145824.P10529894998349041220

`A125256(A080149(n+1))`
-/

namespace A145824.P10529894998349041220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A080149 (n + 1)).toNat

end

end A145824.P10529894998349041220

/-! ## A145824.P16026243487540967707

`A053755(A080149(n+1)/2)`
-/

namespace A145824.P16026243487540967707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (SequenceMachineLib.roundAway ((A080149 (n + 1) : ℚ) / 2)).toNat

end

end A145824.P16026243487540967707

/-! ## A145824.P678423065810114956

`A256970(A080149(n+1)/2)`
-/

namespace A145824.P678423065810114956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (SequenceMachineLib.roundAway ((A080149 (n + 1) : ℚ) / 2)).toNat

end

end A145824.P678423065810114956

/-! ## A145824.P7375058598899845816

`A007491(2*A123232(n+1))`
-/

namespace A145824.P7375058598899845816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (2 * A123232 (n + 1)).toNat

end

end A145824.P7375058598899845816

/-! ## A145824.P8648035826180853898

`A089120(2*A123232(n+1))`
-/

namespace A145824.P8648035826180853898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (2 * A123232 (n + 1)).toNat

end

end A145824.P8648035826180853898

/-! ## A145824.P16299782176799773165

`A259036(2*A123232(n+1))`
-/

namespace A145824.P16299782176799773165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (2 * A123232 (n + 1)).toNat

end

end A145824.P16299782176799773165

/-! ## A145824.P4142140680634089868

`A007491(A080149(2*n+1-n))`
-/

namespace A145824.P4142140680634089868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A080149 (2 * n + 1 - n)).toNat

end

end A145824.P4142140680634089868

/-! ## A145824.P4059945584104376870

`A002522(2*A080149(n+1)-A080149(n+1))`
-/

namespace A145824.P4059945584104376870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (2 * A080149 (n + 1) - A080149 (n + 1)).toNat

end

end A145824.P4059945584104376870

/-!
# A145825: a(n) is in A145818 such that (4n-1-a(n))/2 is in A145818 as well.

The programs for A145825, there is no canonical definition to state claims against.
-/

/-! ## A145825.P13272850716733693229

`and(85, record[xor(3, n)])`
-/

namespace A145825.P13272850716733693229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 85 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A145825.P13272850716733693229

/-! ## A145825.P16426147522379428093

`4*and(21, n)+1`
-/

namespace A145825.P16426147522379428093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.land 21 n + 1

end

end A145825.P16426147522379428093

/-! ## A145825.P6290538237890196713

`or(1, 4*and(21, n))`
-/

namespace A145825.P6290538237890196713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * Nat.land 21 n)

end

end A145825.P6290538237890196713

/-! ## A145825.P8363045040558139317

`xor(1, 4*and(21, n))`
-/

namespace A145825.P8363045040558139317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * Nat.land 21 n)

end

end A145825.P8363045040558139317

/-! ## A145825.P3208330684087589690

`4*or(10, n)-39`
-/

namespace A145825.P3208330684087589690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.lor 10 n : ℤ) - 39

end

end A145825.P3208330684087589690

/-!
# A145826: Arises from critical number of finite Abelian groups.

The programs for A145826, the canonical program `A145826.P8336300222733998085` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145826 has offset 1).

The definition of A145826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145826.P8336300222733998085

`A000040(n+1)+floor(2*sqrt(A000040(n+1)+2))+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145826

/-- `A000040(n+1)+floor(2*sqrt(A000040(n+1)+2))+1` -/
def P8336300222733998085.Spec : Prop :=
  ∀ n, P8336300222733998085.a n = A145826 (n + 1)

theorem P8336300222733998085.correct : P8336300222733998085.Spec := by
  intro n
  simp only [A145826, Nat.add_sub_cancel]

end A145826

/-! ## A145826.P3386306501831119994

`A183868(A008864(n+1))`
-/

namespace A145826.P3386306501831119994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183868 (A008864 (n + 1)).toNat

end

end A145826.P3386306501831119994

namespace A145826

/-- `A183868(A008864(n+1))` -/
def P3386306501831119994.Spec : Prop :=
  ∀ n, P3386306501831119994.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P5331053235952157643

`A183868(A028815(n+1))`
-/

namespace A145826.P5331053235952157643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183868 (A028815 (n + 1)).toNat

end

end A145826.P5331053235952157643

namespace A145826

/-- `A183868(A028815(n+1))` -/
def P5331053235952157643.Spec : Prop :=
  ∀ n, P5331053235952157643.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P9820538114909353646

`A183868(A299763(n+2))`
-/

namespace A145826.P9820538114909353646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183868 (A299763 (n + 2)).toNat

end

end A145826.P9820538114909353646

namespace A145826

/-- `A183868(A299763(n+2))` -/
def P9820538114909353646.Spec : Prop :=
  ∀ n, P9820538114909353646.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P9286689775529480796

`A183868(record[A051698(n)+1])`
-/

namespace A145826.P9286689775529480796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145826.P9286689775529480796

namespace A145826

/-- `A183868(record[A051698(n)+1])` -/
def P9286689775529480796.Spec : Prop :=
  ∀ n, P9286689775529480796.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P7388000736367374240

`A183868(A000040(n+1)+1)`
-/

namespace A145826.P7388000736367374240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183868 (A000040 (n + 1) + 1).toNat

end

end A145826.P7388000736367374240

namespace A145826

/-- `A183868(A000040(n+1)+1)` -/
def P7388000736367374240.Spec : Prop :=
  ∀ n, P7388000736367374240.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P11839516678667827559

`A183869(A000040(n+1)+1)`
-/

namespace A145826.P11839516678667827559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 (A000040 (n + 1) + 1).toNat

end

end A145826.P11839516678667827559

namespace A145826

/-- `A183869(A000040(n+1)+1)` -/
def P11839516678667827559.Spec : Prop :=
  ∀ n, P11839516678667827559.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P8391597855904226284

`A183869(p?[A113790(n+1)]+1)`
-/

namespace A145826.P8391597855904226284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A145826.P8391597855904226284

namespace A145826

/-- `A183869(p?[A113790(n+1)]+1)` -/
def P8391597855904226284.Spec : Prop :=
  ∀ n, P8391597855904226284.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P11004289142186915713

`A183867(A000040(n+1)+2)-1`
-/

namespace A145826.P11004289142186915713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183867 (A000040 (n + 1) + 2).toNat - 1

end

end A145826.P11004289142186915713

namespace A145826

/-- `A183867(A000040(n+1)+2)-1` -/
def P11004289142186915713.Spec : Prop :=
  ∀ n, P11004289142186915713.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P3893073101437712296

`A049068(A000040(n+1)+3)-3`
-/

namespace A145826.P3893073101437712296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (A000040 (n + 1) + 3).toNat - 3

end

end A145826.P3893073101437712296

namespace A145826

/-- `A049068(A000040(n+1)+3)-3` -/
def P3893073101437712296.Spec : Prop :=
  ∀ n, P3893073101437712296.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P5967744802896665924

`A008864(n+1)+A000267(A052147(n+1))`
-/

namespace A145826.P5967744802896665924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000267 (A052147 (n + 1)).toNat

end

end A145826.P5967744802896665924

namespace A145826

/-- `A008864(n+1)+A000267(A052147(n+1))` -/
def P5967744802896665924.Spec : Prop :=
  ∀ n, P5967744802896665924.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P13517807891865905965

`A008864(n+1)+A000267(A008864(n+1)+1)`
-/

namespace A145826.P13517807891865905965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000267 (A008864 (n + 1) + 1).toNat

end

end A145826.P13517807891865905965

namespace A145826

/-- `A008864(n+1)+A000267(A008864(n+1)+1)` -/
def P13517807891865905965.Spec : Prop :=
  ∀ n, P13517807891865905965.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P337336091052687815

`A027434(A000040(n+1)+3)+A000040(n+1)`
-/

namespace A145826.P337336091052687815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A000040 (n + 1) + 3).toNat + A000040 (n + 1)

end

end A145826.P337336091052687815

namespace A145826

/-- `A027434(A000040(n+1)+3)+A000040(n+1)` -/
def P337336091052687815.Spec : Prop :=
  ∀ n, P337336091052687815.a n = A145826 (n + 1)

end A145826

/-! ## A145826.P4307450238382732778

`A027434(A008578(n+2)+3)+A008578(n+2)`
-/

namespace A145826.P4307450238382732778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A008578 (n + 2) + 3).toNat + A008578 (n + 2)

end

end A145826.P4307450238382732778

namespace A145826

/-- `A027434(A008578(n+2)+3)+A008578(n+2)` -/
def P4307450238382732778.Spec : Prop :=
  ∀ n, P4307450238382732778.a n = A145826 (n + 1)

end A145826

/-!
# A145827: Numbers k such that A145768(k) is a square.

The programs for A145827, there is no canonical definition to state claims against.
-/

/-! ## A145827.P1224307245778783584

`lt[0, A000122(A145768(n))]`
-/

namespace A145827.P1224307245778783584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A145768 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A145827.P1224307245778783584

/-!
# A145828: Squares in A145768 (XOR of squares of the numbers 1...n).

The programs for A145828, there is no canonical definition to state claims against.
-/

/-! ## A145828.P1979214676561170396

`(A145829(round(sqrt(n²+1)))-A000007(n))²`
-/

namespace A145828.P1979214676561170396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145829 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A000007 n) ^ 2

end

end A145828.P1979214676561170396

/-! ## A145828.P9112017530696845042

`A145768(A145827(n+1))`
-/

namespace A145828.P9112017530696845042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145768 (A145827 (n + 1)).toNat

end

end A145828.P9112017530696845042

/-! ## A145828.P13849779803441161006

`filter[A145768(n), A010052(#)]`
-/

namespace A145828.P13849779803441161006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A145828.P13849779803441161006

/-! ## A145828.P16897941010168024410

`filter[A145768(n), A266178(#)]`
-/

namespace A145828.P16897941010168024410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266178 (f1 j).toNat = 1) n)

end

end A145828.P16897941010168024410

/-!
# A145829: Square root of squares in A145768 (XOR of squares of the numbers 1..n).

The programs for A145829, there is no canonical definition to state claims against.
-/

/-! ## A145829.P9307436051108643489

`sqrt(A145828(n+2))`
-/

namespace A145829.P9307436051108643489
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145828 (n + 2) : ℝ)

end

end A145829.P9307436051108643489

/-! ## A145829.P11252024112572101900

`A145828(n+2)^(A000041(C(2, n+2))/2)`
-/

namespace A145829.P11252024112572101900
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A145828 (n + 2) : ℝ) ^ ((A000041 (Nat.choose 2 (n + 2)) : ℚ) / 2 : ℝ)

end

end A145829.P11252024112572101900

/-! ## A145829.P5979538407830129088

`A145828(n+2)^(A000034(A222404(n))/2)`
-/

namespace A145829.P5979538407830129088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A145828 (n + 2) : ℝ) ^ ((A000034 (A222404 n).toNat : ℚ) / 2 : ℝ)

end

end A145829.P5979538407830129088

/-! ## A145829.P18389606984808231915

`A145828(n+2)^(A000124(n)/A014206(n))`
-/

namespace A145829.P18389606984808231915
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A145828 (n + 2) : ℝ) ^ ((A000124 n : ℚ) / (A014206 n : ℚ) : ℝ)

end

end A145829.P18389606984808231915

/-! ## A145829.P15099966800697905421

`A145768(A145827(n+2))^log2(sqrt(2))`
-/

namespace A145829.P15099966800697905421
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A145768 (A145827 (n + 2)).toNat : ℝ) ^ (Real.logb 2 (Real.sqrt (2 : ℝ)))

end

end A145829.P15099966800697905421

/-!
# A145832: Numbers k such that for each divisor d of k, d + k/d is "round" ("square-root smooth").

The programs for A145832, there is no canonical definition to state claims against.
-/

/-! ## A145832.P17716726355411179591

`lt[A000040(n+1), A036289(A090329(n+1))]`
-/

namespace A145832.P17716726355411179591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (A090329 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A145832.P17716726355411179591

/-! ## A145832.P15740198071270401610

`lt[A187200(n+1), A003601(A001055(n+1))]`
-/

namespace A145832.P15740198071270401610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (A001055 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A145832.P15740198071270401610

/-! ## A145832.P12583989782393801371

`lt[A052015(n+1), A024166(A342085(n+1))]`
-/

namespace A145832.P12583989782393801371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (A342085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A145832.P12583989782393801371

/-! ## A145832.P4800796666628190346

`lt[A293645(n+1), A048500(A090329(n+1))]`
-/

namespace A145832.P4800796666628190346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048500 (A090329 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A145832.P4800796666628190346

/-! ## A145832.P6166319566980705203

`lt[A360247(n+1), A118277(A342085(n+1))]`
-/

namespace A145832.P6166319566980705203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 (A342085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A145832.P6166319566980705203

/-!
# A145834: a(n) = difference between the n-th composite number and the sum of its prime factors with repetition.

The programs for A145834, the canonical program `A145834.P17774255891438695893` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145834 has offset 1).

The definition of A145834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145834.P17774255891438695893

`A075255(A002808(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145834

/-- `A075255(A002808(n+1))` -/
def P17774255891438695893.Spec : Prop :=
  ∀ n, P17774255891438695893.a n = A145834 (n + 1)

theorem P17774255891438695893.correct : P17774255891438695893.Spec := by
  intro n
  simp only [A145834, Nat.add_sub_cancel]

end A145834

/-! ## A145834.P17484555634374077450

`A002808(n+1)-A046343(n+1)`
-/

namespace A145834.P17484555634374077450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A046343 (n + 1)

end

end A145834.P17484555634374077450

namespace A145834

/-- `A002808(n+1)-A046343(n+1)` -/
def P17484555634374077450.Spec : Prop :=
  ∀ n, P17484555634374077450.a n = A145834 (n + 1)

end A145834

/-! ## A145834.P5957558909831786464

`A018252(n+2)-A046343(n+1)`
-/

namespace A145834.P5957558909831786464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - A046343 (n + 1)

end

end A145834.P5957558909831786464

namespace A145834

/-- `A018252(n+2)-A046343(n+1)` -/
def P5957558909831786464.Spec : Prop :=
  ∀ n, P5957558909831786464.a n = A145834 (n + 1)

end A145834

/-! ## A145834.P144993388680672500

`A141468(n+3)-A046343(n+1)`
-/

namespace A145834.P144993388680672500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) - A046343 (n + 1)

end

end A145834.P144993388680672500

namespace A145834

/-- `A141468(n+3)-A046343(n+1)` -/
def P144993388680672500.Spec : Prop :=
  ∀ n, P144993388680672500.a n = A145834 (n + 1)

end A145834

/-! ## A145834.P11386505033550542268

`A002808(n+1)+A092510(A002808(n+1))-A273227(n+1)`
-/

namespace A145834.P11386505033550542268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A092510 (A002808 (n + 1)).toNat - A273227 (n + 1))

end

end A145834.P11386505033550542268

namespace A145834

/-- `A002808(n+1)+A092510(A002808(n+1))-A273227(n+1)` -/
def P11386505033550542268.Spec : Prop :=
  ∀ n, P11386505033550542268.a n = A145834 (n + 1)

end A145834

/-! ## A145834.P11869104462333434355

`A075255(A018252(n+2))`
-/

namespace A145834.P11869104462333434355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A018252 (n + 2)).toNat

end

end A145834.P11869104462333434355

namespace A145834

/-- `A075255(A018252(n+2))` -/
def P11869104462333434355.Spec : Prop :=
  ∀ n, P11869104462333434355.a n = A145834 (n + 1)

end A145834

/-! ## A145834.P686401032936154882

`A075255(lt[n, A039653(n)])`
-/

namespace A145834.P686401032936154882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A145834.P686401032936154882

namespace A145834

/-- `A075255(lt[n, A039653(n)])` -/
def P686401032936154882.Spec : Prop :=
  ∀ n, P686401032936154882.a n = A145834 (n + 1)

end A145834

/-! ## A145834.P9017032818341302266

`A075255(A072668(n+1)+1)`
-/

namespace A145834.P9017032818341302266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A072668 (n + 1) + 1).toNat

end

end A145834.P9017032818341302266

namespace A145834

/-- `A075255(A072668(n+1)+1)` -/
def P9017032818341302266.Spec : Prop :=
  ∀ n, P9017032818341302266.a n = A145834 (n + 1)

theorem P9017032818341302266.correct : P9017032818341302266.Spec := by
  intro n
  simp only [A145834, Nat.add_sub_cancel, A145834.P9017032818341302266.a, A145834.P17774255891438695893.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A072668, A072668.P5648318357023435289.a, A075255, A075255.P12137973761347593222.a, A000005, A000005.P16091521709108585461.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145834

/-! ## A145834.P4947902443750583374

`A075255(A166460(n+2)+1)`
-/

namespace A145834.P4947902443750583374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A166460 (n + 2) + 1).toNat

end

end A145834.P4947902443750583374

namespace A145834

/-- `A075255(A166460(n+2)+1)` -/
def P4947902443750583374.Spec : Prop :=
  ∀ n, P4947902443750583374.a n = A145834 (n + 1)

end A145834

/-! ## A145834.P16580557113361339279

`A075255(eq[1, A339579(n+1)+1])`
-/

namespace A145834.P16580557113361339279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145834.P16580557113361339279

namespace A145834

/-- `A075255(eq[1, A339579(n+1)+1])` -/
def P16580557113361339279.Spec : Prop :=
  ∀ n, P16580557113361339279.a n = A145834 (n + 1)

end A145834

/-! ## A145834.P7529299149451601047

`A026239(A000040(n+1))-A046343(n+1)`
-/

namespace A145834.P7529299149451601047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A000040 (n + 1)).toNat - A046343 (n + 1)

end

end A145834.P7529299149451601047

namespace A145834

/-- `A026239(A000040(n+1))-A046343(n+1)` -/
def P7529299149451601047.Spec : Prop :=
  ∀ n, P7529299149451601047.a n = A145834 (n + 1)

end A145834

/-!
# A145835: Number of compositions of the n X n grid graph.

The programs for A145835, there is no canonical definition to state claims against.
-/

/-! ## A145835.P18207330138139368012

`A110476((n+1)²+n²)`
-/

namespace A145835.P18207330138139368012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110476 ((n + 1) ^ 2 + n ^ 2)

end

end A145835.P18207330138139368012

/-!
# A145836: Coefficients of a symmetric matrix representation of the 9th falling factorial power, read by antidiagonals.

The programs for A145836, there is no canonical definition to state claims against.
-/

/-! ## A145836.P3846385395089041648

`A046792(n+1)%A064045(n)!`
-/

namespace A145836.P3846385395089041648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046792 (n + 1)) (Nat.factorial (A064045 n).toNat : ℤ)

end

end A145836.P3846385395089041648

/-! ## A145836.P16484743653784580467

`A030029(A007318(n))*A299957(n)`
-/

namespace A145836.P16484743653784580467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030029 (A007318 n).toNat * A299957 n

end

end A145836.P16484743653784580467

/-! ## A145836.P6036324165932944316

`A046792(n+1)*A225099(A046802(n))`
-/

namespace A145836.P6036324165932944316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046792 (n + 1) * A225099 (A046802 n).toNat

end

end A145836.P6036324165932944316

/-! ## A145836.P16318419618131618481

`C(A046792(n+1), A046817(A046760(2*(n+2))))`
-/

namespace A145836.P16318419618131618481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046792 (n + 1)).toNat (A046817 (A046760 (2 * (n + 2))).toNat).toNat

end

end A145836.P16318419618131618481

/-! ## A145836.P3682378508061740729

`(A060854(n+1)*A156584(n))%A009963(A060854(n+1))`
-/

namespace A145836.P3682378508061740729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060854 (n + 1) * A156584 n) (A009963 (A060854 (n + 1)).toNat)

end

end A145836.P3682378508061740729

/-!
# A145837: Indices of primes in A005891(n).

The programs for A145837, the canonical program `A145837.P9524873425089286161` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145837 has offset 1).

The definition of A145837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 907 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145837.P9524873425089286161

`eq[A073093(n+1), A102294(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145837

/-- `eq[A073093(n+1), A102294(n+1)]` -/
def P9524873425089286161.Spec : Prop :=
  ∀ n, (P9524873425089286161.a n : ℤ) = A145837 (n + 1)

theorem P9524873425089286161.correct : P9524873425089286161.Spec := by
  intro n
  simp only [A145837, Nat.add_sub_cancel]

end A145837

/-! ## A145837.P6089718466335763703

`eq[A000005(A165824(n+1)), A102294(n+1)]`
-/

namespace A145837.P6089718466335763703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A165824 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145837.P6089718466335763703

namespace A145837

/-- `eq[A000005(A165824(n+1)), A102294(n+1)]` -/
def P6089718466335763703.Spec : Prop :=
  ∀ n, (P6089718466335763703.a n : ℤ) = A145837 (n + 1)

end A145837

/-! ## A145837.P10682127267148675822

`eq[1, ∑{e}[∑[5*n]+1, #]]`
-/

namespace A145837.P10682127267148675822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145837.P10682127267148675822

namespace A145837

/-- `eq[1, ∑{e}[∑[5*n]+1, #]]` -/
def P10682127267148675822.Spec : Prop :=
  ∀ n, (P10682127267148675822.a n : ℤ) = A145837 (n + 1)

end A145837

/-! ## A145837.P168217469252200464

`eq[1, A062173(A005891(n))]`
-/

namespace A145837.P168217469252200464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (A005891 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145837.P168217469252200464

namespace A145837

/-- `eq[1, A062173(A005891(n))]` -/
def P168217469252200464.Spec : Prop :=
  ∀ n, (P168217469252200464.a n : ℤ) = A145837 (n + 1)

end A145837

/-! ## A145837.P3072868990069185767

`eq[1, A001222(∑[5*n]+1)]`
-/

namespace A145837.P3072868990069185767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145837.P3072868990069185767

namespace A145837

/-- `eq[1, A001222(∑[5*n]+1)]` -/
def P3072868990069185767.Spec : Prop :=
  ∀ n, (P3072868990069185767.a n : ℤ) = A145837 (n + 1)

end A145837

/-!
# A145838: Primes in A005891 = Centered pentagonal numbers: (5n^2 + 5n + 2)/2.

The programs for A145838, the canonical program `A145838.P8091719907699711083` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145838 has offset 1).

The definition of A145838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 907 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145838.P8091719907699711083

`A005891(A145837(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145838

/-- `A005891(A145837(n+1))` -/
def P8091719907699711083.Spec : Prop :=
  ∀ n, P8091719907699711083.a n = A145838 (n + 1)

theorem P8091719907699711083.correct : P8091719907699711083.Spec := by
  intro n
  simp only [A145838, Nat.add_sub_cancel]

end A145838

/-! ## A145838.P9890777478025873506

`A028895(A145837(n+1))+abs(A033999(n))`
-/

namespace A145838.P9890777478025873506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 (A145837 (n + 1)).toNat + |A033999 n|

end

end A145838.P9890777478025873506

namespace A145838

/-- `A028895(A145837(n+1))+abs(A033999(n))` -/
def P9890777478025873506.Spec : Prop :=
  ∀ n, P9890777478025873506.a n = A145838 (n + 1)

end A145838

/-! ## A145838.P9143199402739292938

`A000027(n+1)+A028895(A145837(n+1))-n`
-/

namespace A145838.P9143199402739292938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A028895 (A145837 (n + 1)).toNat - (n : ℤ))

end

end A145838.P9143199402739292938

namespace A145838

/-- `A000027(n+1)+A028895(A145837(n+1))-n` -/
def P9143199402739292938.Spec : Prop :=
  ∀ n, P9143199402739292938.a n = A145838 (n + 1)

end A145838

/-! ## A145838.P8118929934771677112

`A028895(A145837(n+1))+A000005(gcd(n, n+1))`
-/

namespace A145838.P8118929934771677112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 (A145837 (n + 1)).toNat + A000005 (Nat.gcd n (n + 1))

end

end A145838.P8118929934771677112

namespace A145838

/-- `A028895(A145837(n+1))+A000005(gcd(n, n+1))` -/
def P8118929934771677112.Spec : Prop :=
  ∀ n, P8118929934771677112.a n = A145838 (n + 1)

end A145838

/-! ## A145838.P741893034624790266

`lcm(A000002(2*n+1), A028895(A145837(n+1)))+1`
-/

namespace A145838.P741893034624790266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000002 (2 * n + 1)) (A028895 (A145837 (n + 1)).toNat) + 1

end

end A145838.P741893034624790266

namespace A145838

/-- `lcm(A000002(2*n+1), A028895(A145837(n+1)))+1` -/
def P741893034624790266.Spec : Prop :=
  ∀ n, (P741893034624790266.a n : ℤ) = A145838 (n + 1)

end A145838

/-! ## A145838.P411871165358861949

`A028895(A145837(n+1))+A001221(A007918(n))`
-/

namespace A145838.P411871165358861949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 (A145837 (n + 1)).toNat + A001221 (A007918 n).toNat

end

end A145838.P411871165358861949

namespace A145838

/-- `A028895(A145837(n+1))+A001221(A007918(n))` -/
def P411871165358861949.Spec : Prop :=
  ∀ n, P411871165358861949.a n = A145838 (n + 1)

end A145838

/-! ## A145838.P12704890228200895944

`A028895(A145837(n+1))+A014963(A008458(n))`
-/

namespace A145838.P12704890228200895944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 (A145837 (n + 1)).toNat + A014963 (A008458 n).toNat

end

end A145838.P12704890228200895944

namespace A145838

/-- `A028895(A145837(n+1))+A014963(A008458(n))` -/
def P12704890228200895944.Spec : Prop :=
  ∀ n, P12704890228200895944.a n = A145838 (n + 1)

end A145838

/-! ## A145838.P10690957127771094693

`A033999(A005843(n))+A028895(A145837(n+1))`
-/

namespace A145838.P10690957127771094693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A005843 n).toNat + A028895 (A145837 (n + 1)).toNat

end

end A145838.P10690957127771094693

namespace A145838

/-- `A033999(A005843(n))+A028895(A145837(n+1))` -/
def P10690957127771094693.Spec : Prop :=
  ∀ n, P10690957127771094693.a n = A145838 (n + 1)

end A145838

/-! ## A145838.P8566014908585877137

`A028895(A145837(n+1))+A001222(A198273(n+1))`
-/

namespace A145838.P8566014908585877137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 (A145837 (n + 1)).toNat + A001222 (A198273 (n + 1)).toNat

end

end A145838.P8566014908585877137

namespace A145838

/-- `A028895(A145837(n+1))+A001222(A198273(n+1))` -/
def P8566014908585877137.Spec : Prop :=
  ∀ n, P8566014908585877137.a n = A145838 (n + 1)

end A145838

/-! ## A145838.P11639375681883093812

`∩[A005891(n), A030430(n+1)]`
-/

namespace A145838.P11639375681883093812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145838.P11639375681883093812

namespace A145838

/-- `∩[A005891(n), A030430(n+1)]` -/
def P11639375681883093812.Spec : Prop :=
  ∀ n, (P11639375681883093812.a n : ℤ) = A145838 (n + 1)

end A145838

/-! ## A145838.P15202954541420151932

`∩[A030430(n+1), A330133(n)]`
-/

namespace A145838.P15202954541420151932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145838.P15202954541420151932

namespace A145838

/-- `∩[A030430(n+1), A330133(n)]` -/
def P15202954541420151932.Spec : Prop :=
  ∀ n, (P15202954541420151932.a n : ℤ) = A145838 (n + 1)

end A145838

/-! ## A145838.P1042653929893235487

`∩[A030430(n+1), A383025(n+1)]`
-/

namespace A145838.P1042653929893235487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145838.P1042653929893235487

namespace A145838

/-- `∩[A030430(n+1), A383025(n+1)]` -/
def P1042653929893235487.Spec : Prop :=
  ∀ n, (P1042653929893235487.a n : ℤ) = A145838 (n + 1)

end A145838

/-!
# A145839: Number of 3-compositions of n.

The programs for A145839, the canonical program `A145839.P9486898592263434854` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145839 has offset 0).

The definition of A145839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145839.P9486898592263434854

`ogf((1-3x+3x^2-x^3)/(1-6x+6x^2-2x^3))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145839

/-- `ogf((1-3x+3x^2-x^3)/(1-6x+6x^2-2x^3))` -/
def P9486898592263434854.Spec : Prop :=
  ∀ n, P9486898592263434854.a n = A145839 n

theorem P9486898592263434854.correct : P9486898592263434854.Spec := by
  intro n
  simp only [A145839]

end A145839

/-! ## A145839.P9148487259784373684

`record[A261780(abs(4-C(n, 2)))]`
-/

namespace A145839.P9148487259784373684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 |4 - (Nat.choose n 2 : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145839.P9148487259784373684

namespace A145839

/-- `record[A261780(abs(4-C(n, 2)))]` -/
def P9148487259784373684.Spec : Prop :=
  ∀ n, P9148487259784373684.a n = A145839 n

end A145839

/-! ## A145839.P947415474899916865

`A261780(∑[n+3]+n+3)`
-/

namespace A145839.P947415474899916865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A145839.P947415474899916865

namespace A145839

/-- `A261780(∑[n+3]+n+3)` -/
def P947415474899916865.Spec : Prop :=
  ∀ n, P947415474899916865.a n = A145839 n

end A145839

/-! ## A145839.P5655402771788159591

`record[A261780(abs(A046691(n)))]`
-/

namespace A145839.P5655402771788159591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145839.P5655402771788159591

namespace A145839

/-- `record[A261780(abs(A046691(n)))]` -/
def P5655402771788159591.Spec : Prop :=
  ∀ n, P5655402771788159591.a n = A145839 n

end A145839

/-! ## A145839.P1222585463155765368

`record[A261780(lt[A261719(n+4), 3])]`
-/

namespace A145839.P1222585463155765368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145839.P1222585463155765368

namespace A145839

/-- `record[A261780(lt[A261719(n+4), 3])]` -/
def P1222585463155765368.Spec : Prop :=
  ∀ n, P1222585463155765368.a n = A145839 n

end A145839

/-!
# A145840: Number of 4-compositions of n.

The programs for A145840, there is no canonical definition to state claims against.
-/

/-! ## A145840.P11462504005748047425

`record[A261780(A052905(n))]`
-/

namespace A145840.P11462504005748047425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145840.P11462504005748047425

/-! ## A145840.P14383528205753602599

`A261780(A052905(n+2))`
-/

namespace A145840.P14383528205753602599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A052905 (n + 2)).toNat

end

end A145840.P14383528205753602599

/-! ## A145840.P495016939985722370

`A261780(eq[4, A025581(n)])`
-/

namespace A145840.P495016939985722370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145840.P495016939985722370

/-! ## A145840.P9726961010867813859

`A261780(A000096(n+4)-4)`
-/

namespace A145840.P9726961010867813859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000096 (n + 4) - 4).toNat

end

end A145840.P9726961010867813859

/-! ## A145840.P18382681082975646392

`A261780(A000217(n+5)-5)`
-/

namespace A145840.P18382681082975646392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000217 (n + 5) - 5).toNat

end

end A145840.P18382681082975646392

/-! ## A145840.P17684555537591469638

`record[A261780(abs(A046691(n))-1)]`
-/

namespace A145840.P17684555537591469638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145840.P17684555537591469638

/-! ## A145840.P11684859334210560746

`record[A261780(A046691(n+1)-1)]`
-/

namespace A145840.P11684859334210560746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145840.P11684859334210560746

/-! ## A145840.P12842243097578003568

`record[A261780(A034856(n+2)-3)]`
-/

namespace A145840.P12842243097578003568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145840.P12842243097578003568

/-! ## A145840.P8315282220281764153

`record[A010054(n+6)*A261780(n+1)]`
-/

namespace A145840.P8315282220281764153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 6) * A261780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145840.P8315282220281764153

/-!
# A145841: Number of 5-compositions of n.

The programs for A145841, there is no canonical definition to state claims against.
-/

/-! ## A145841.P12575851288236750001

`record[A261780(∑[n+4])]`
-/

namespace A145841.P12575851288236750001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145841.P12575851288236750001

/-! ## A145841.P3472610627724572682

`A261780(A055999(n+3))`
-/

namespace A145841.P3472610627724572682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A055999 (n + 3)).toNat

end

end A145841.P3472610627724572682

/-! ## A145841.P15152104309303829074

`A261780(A052905(n+3)-1)`
-/

namespace A145841.P15152104309303829074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A052905 (n + 3) - 1).toNat

end

end A145841.P15152104309303829074

/-! ## A145841.P1850429936752566286

`A261780(A000096(n+5)-5)`
-/

namespace A145841.P1850429936752566286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000096 (n + 5) - 5).toNat

end

end A145841.P1850429936752566286

/-! ## A145841.P10161180368931025141

`A261780(A000217(n+6)-6)`
-/

namespace A145841.P10161180368931025141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000217 (n + 6) - 6).toNat

end

end A145841.P10161180368931025141

/-! ## A145841.P1735559779124858494

`A261780(A000124(n+6)-7)`
-/

namespace A145841.P1735559779124858494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000124 (n + 6) - 7).toNat

end

end A145841.P1735559779124858494

/-! ## A145841.P18061393537387865024

`record[A010054(n+6)*A261780(n)]`
-/

namespace A145841.P18061393537387865024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 6) * A261780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145841.P18061393537387865024

/-!
# A145842: a(n) = prime(A135025(n)).

The programs for A145842, there is no canonical definition to state claims against.
-/

/-! ## A145842.P3345606617831557683

`A000040(A135025(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145842.P3345606617831557683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A135025 (n + 1)).toNat

end

end A145842.P3345606617831557683

/-! ## A145842.P568662161226780340

`A135026(n+1)-A324782(n+1)`
-/

namespace A145842.P568662161226780340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135026 (n + 1) - A324782 (n + 1)

end

end A145842.P568662161226780340

/-! ## A145842.P14704051002679999180

`A045344(∑[A324783(n)])`
-/

namespace A145842.P14704051002679999180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145842.P14704051002679999180

/-! ## A145842.P14120314255006295350

`A065091(∑[A324783(n)])`
-/

namespace A145842.P14120314255006295350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145842.P14120314255006295350

/-! ## A145842.P4576775463590926384

`A045319(A309226(n+1))`
-/

namespace A145842.P4576775463590926384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A309226 (n + 1)).toNat

end

end A145842.P4576775463590926384

/-!
# A145843: Primes q which are not of the form 6*p*(6*p+x)-1 or 6*p*(6*p+x)+1 with p = prime and -6*p < x < 6*p.

The programs for A145843, there is no canonical definition to state claims against.
-/

/-! ## A145843.P9433277058482862927

`A069556(A115891(n+1))`
-/

namespace A145843.P9433277058482862927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069556 (A115891 (n + 1)).toNat

end

end A145843.P9433277058482862927

/-! ## A145843.P1154780249126990664

`p?[A080000(n)]%A237249(n+1)`
-/

namespace A145843.P1154780249126990664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A237249 (n + 1))

end

end A145843.P1154780249126990664

/-!
# A145844: Number of permutations of length 2n which are invariant under the reverse-complement map and have no decreasing subsequences of length 5.

The programs for A145844, there is no canonical definition to state claims against.
-/

/-! ## A145844.P16481740369906506263

`A001951(A072213(n)+A002530(n))`
-/

namespace A145844.P16481740369906506263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A072213 n + A002530 n).toNat

end

end A145844.P16481740369906506263

/-!
# A145845: Number of permutations of length 2n+1 which are invariant under the reverse-complement map and have no decreasing subsequences of length 5.

The programs for A145845, there is no canonical definition to state claims against.
-/

/-! ## A145845.P2783366240711344284

`A008611(record[A128320(n)+1])`
-/

namespace A145845.P2783366240711344284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128320 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145845.P2783366240711344284

/-! ## A145845.P17558930737262009498

`A002720(n)-A240864(A323293(n))`
-/

namespace A145845.P17558930737262009498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - A240864 (A323293 n).toNat

end

end A145845.P17558930737262009498

/-!
# A145846: Number of permutations of length 2n which are invariant under the reverse-complement map and have no decreasing subsequences of length 6.

The programs for A145846, there is no canonical definition to state claims against.
-/

/-! ## A145846.P11627628298627431676

`A317366(n)-A064458(A015462(n))`
-/

namespace A145846.P11627628298627431676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317366 n - A064458 (A015462 n).toNat

end

end A145846.P11627628298627431676

/-! ## A145846.P2091966907650633744

`A156253(A386229(n)+A324685(2*(n+1)))`
-/

namespace A145846.P2091966907650633744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A386229 n + A324685 (2 * (n + 1))).toNat

end

end A145846.P2091966907650633744

/-!
# A145847: Number of involutions of length 2n which are invariant under the reverse-complement map and have no decreasing subsequences of length 6.

The programs for A145847, there is no canonical definition to state claims against.
-/

/-! ## A145847.P99731192454708084

`A075249(A281347(n+2)+1)`
-/

namespace A145847.P99731192454708084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075249 (A281347 (n + 2) + 1).toNat

end

end A145847.P99731192454708084

/-! ## A145847.P18098479972977407459

`A002266(6*A149976(n)+1)`
-/

namespace A145847.P18098479972977407459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (6 * A149976 n + 1).toNat

end

end A145847.P18098479972977407459

/-! ## A145847.P10664930805024248976

`A075208(n+1)+∏{p}[A150097(n)², #]`
-/

namespace A145847.P10664930805024248976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150097 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075208 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A145847.P10664930805024248976

/-!
# A145848: Squares with an even number of digits, where the first half is a square and the second half is a nonzero square.

The programs for A145848, there is no canonical definition to state claims against.
-/

/-! ## A145848.P995341113687348565

`A146991(n+1)²`
-/

namespace A145848.P995341113687348565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146991 (n + 1) ^ 2

end

end A145848.P995341113687348565

/-! ## A145848.P7507612753617966149

`A146991(1-(n-2*n))^2`
-/

namespace A145848.P7507612753617966149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146991 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat ^ 2

end

end A145848.P7507612753617966149

/-! ## A145848.P8729152457838819070

`record[A146991(A038568(n))²]`
-/

namespace A145848.P8729152457838819070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146991 (A038568 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145848.P8729152457838819070

/-! ## A145848.P26001826710299500

`record[A146991(A065648(n))²]`
-/

namespace A145848.P26001826710299500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146991 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145848.P26001826710299500

/-! ## A145848.P10902066898582514793

`record[A146991(A117407(n))²]`
-/

namespace A145848.P10902066898582514793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146991 (A117407 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145848.P10902066898582514793

/-!
# A145849: a(n) = A145812(2n-1).

The programs for A145849, the canonical program `A145849.P5569228759063161543` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145849 has offset 1).

The definition of A145849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145812, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145849.P5569228759063161543

`A145812(2*n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145849

/-- `A145812(2*n+1)` -/
def P5569228759063161543.Spec : Prop :=
  ∀ n, P5569228759063161543.a n = A145849 (n + 1)

theorem P5569228759063161543.correct : P5569228759063161543.Spec := by
  intro n
  simp only [A145849, Nat.add_sub_cancel]

end A145849

/-! ## A145849.P7344579952778906555

`A145812(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145849.P7344579952778906555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145812 (2 * (n + 1) - 1)

end

end A145849.P7344579952778906555

namespace A145849

/-- `A145812(2*(n+1)-1)` -/
def P7344579952778906555.Spec : Prop :=
  ∀ n, P7344579952778906555.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P8805938667622201052

`4*∑[ceil(xor(n, -n)²/3)]+1`
-/

namespace A145849.P8805938667622201052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A145849.P8805938667622201052

namespace A145849

/-- `4*∑[ceil(xor(n, -n)²/3)]+1` -/
def P8805938667622201052.Spec : Prop :=
  ∀ n, P8805938667622201052.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P13127113507270884375

`or(1, 4*∑[ceil(xor(n, -n)²/3)])`
-/

namespace A145849.P13127113507270884375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A145849.P13127113507270884375

namespace A145849

/-- `or(1, 4*∑[ceil(xor(n, -n)²/3)])` -/
def P13127113507270884375.Spec : Prop :=
  ∀ n, P13127113507270884375.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P5887094312502559041

`xor(1, 4*∑[ceil(xor(n, -n)²/3)])`
-/

namespace A145849.P5887094312502559041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A145849.P5887094312502559041

namespace A145849

/-- `xor(1, 4*∑[ceil(xor(n, -n)²/3)])` -/
def P5887094312502559041.Spec : Prop :=
  ∀ n, P5887094312502559041.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P17646766157559201823

`8*(2*∑[and(n, -n)²]+n)/3+1`
-/

namespace A145849.P17646766157559201823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3) + 1

end

end A145849.P17646766157559201823

namespace A145849

/-- `8*(2*∑[and(n, -n)²]+n)/3+1` -/
def P17646766157559201823.Spec : Prop :=
  ∀ n, P17646766157559201823.a n = (A145849 (n + 1) : ℚ)

end A145849

/-! ## A145849.P10914226402912783241

`A127988(n)+1`
-/

namespace A145849.P10914226402912783241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127988 n + 1

end

end A145849.P10914226402912783241

namespace A145849

/-- `A127988(n)+1` -/
def P10914226402912783241.Spec : Prop :=
  ∀ n, P10914226402912783241.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P11870374081495327664

`4*A062880(n)+1`
-/

namespace A145849.P11870374081495327664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A062880 n + 1

end

end A145849.P11870374081495327664

namespace A145849

/-- `4*A062880(n)+1` -/
def P11870374081495327664.Spec : Prop :=
  ∀ n, P11870374081495327664.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P2222378302573162933

`8*A000695(n)+1`
-/

namespace A145849.P2222378302573162933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000695 n + 1

end

end A145849.P2222378302573162933

namespace A145849

/-- `8*A000695(n)+1` -/
def P2222378302573162933.Spec : Prop :=
  ∀ n, P2222378302573162933.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P9443105112003159302

`2*A145818(n+1)-1`
-/

namespace A145849.P9443105112003159302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145818 (n + 1) - 1

end

end A145849.P9443105112003159302

namespace A145849

/-- `2*A145818(n+1)-1` -/
def P9443105112003159302.Spec : Prop :=
  ∀ n, P9443105112003159302.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P12665044615787985407

`(A145850(n+1)+1)/2`
-/

namespace A145849.P12665044615787985407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145850 (n + 1) + 1 : ℚ) / 2

end

end A145849.P12665044615787985407

namespace A145849

/-- `(A145850(n+1)+1)/2` -/
def P12665044615787985407.Spec : Prop :=
  ∀ n, P12665044615787985407.a n = (A145849 (n + 1) : ℚ)

end A145849

/-! ## A145849.P12148132689221776764

`A145818(n+1)+A001196(n)+A000695(n)`
-/

namespace A145849.P12148132689221776764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (n + 1) + (A001196 n + A000695 n)

end

end A145849.P12148132689221776764

namespace A145849

/-- `A145818(n+1)+A001196(n)+A000695(n)` -/
def P12148132689221776764.Spec : Prop :=
  ∀ n, P12148132689221776764.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P7038436381886593416

`2*A001196(2*n)/3+1`
-/

namespace A145849.P7038436381886593416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A001196 (2 * n) : ℚ) / 3) + 1

end

end A145849.P7038436381886593416

namespace A145849

/-- `2*A001196(2*n)/3+1` -/
def P7038436381886593416.Spec : Prop :=
  ∀ n, P7038436381886593416.a n = (A145849 (n + 1) : ℚ)

end A145849

/-! ## A145849.P9987079089855079142

`A147568(2*n)-2`
-/

namespace A145849.P9987079089855079142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147568 (2 * n) - 2

end

end A145849.P9987079089855079142

namespace A145849

/-- `A147568(2*n)-2` -/
def P9987079089855079142.Spec : Prop :=
  ∀ n, P9987079089855079142.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P9604536535297066238

`2*A098871(2*n)-1`
-/

namespace A145849.P9604536535297066238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098871 (2 * n) - 1

end

end A145849.P9604536535297066238

namespace A145849

/-- `2*A098871(2*n)-1` -/
def P9604536535297066238.Spec : Prop :=
  ∀ n, P9604536535297066238.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P10399966311358103461

`xor(2*A000695(2*n), 1)`
-/

namespace A145849.P10399966311358103461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A000695 (2 * n)) 1

end

end A145849.P10399966311358103461

namespace A145849

/-- `xor(2*A000695(2*n), 1)` -/
def P10399966311358103461.Spec : Prop :=
  ∀ n, P10399966311358103461.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P10526824565867637186

`xor(4, A147568(2*n+1))`
-/

namespace A145849.P10526824565867637186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A147568 (2 * n + 1))

end

end A145849.P10526824565867637186

namespace A145849

/-- `xor(4, A147568(2*n+1))` -/
def P10526824565867637186.Spec : Prop :=
  ∀ n, P10526824565867637186.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P951295671990215470

`A145812(n+2+n)-2`
-/

namespace A145849.P951295671990215470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145812 (n + 2 + n) - 2

end

end A145849.P951295671990215470

namespace A145849

/-- `A145812(n+2+n)-2` -/
def P951295671990215470.Spec : Prop :=
  ∀ n, P951295671990215470.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P3562403270254747141

`ceil(A145818(2*n+1)/2)`
-/

namespace A145849.P3562403270254747141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145818 (2 * n + 1) : ℚ) / 2⌉

end

end A145849.P3562403270254747141

namespace A145849

/-- `ceil(A145818(2*n+1)/2)` -/
def P3562403270254747141.Spec : Prop :=
  ∀ n, P3562403270254747141.a n = A145849 (n + 1)

end A145849

/-! ## A145849.P8184606748971153393

`A383976(2*n+1)-A374625(2*n)`
-/

namespace A145849.P8184606748971153393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383976 (2 * n + 1) - A374625 (2 * n)

end

end A145849.P8184606748971153393

namespace A145849

/-- `A383976(2*n+1)-A374625(2*n)` -/
def P8184606748971153393.Spec : Prop :=
  ∀ n, P8184606748971153393.a n = A145849 (n + 1)

end A145849

/-!
# A145850: a(n) = A145818(2n-1).

The programs for A145850, the canonical program `A145850.P7429573771298434160` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145850 has offset 1).

The definition of A145850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145818, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145850.P7429573771298434160

`A145818(2*n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145850

/-- `A145818(2*n+1)` -/
def P7429573771298434160.Spec : Prop :=
  ∀ n, P7429573771298434160.a n = A145850 (n + 1)

theorem P7429573771298434160.correct : P7429573771298434160.Spec := by
  intro n
  simp only [A145850, Nat.add_sub_cancel]

end A145850

/-! ## A145850.P9953034597802076146

`A145818(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145850.P9953034597802076146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (2 * (n + 1) - 1)

end

end A145850.P9953034597802076146

namespace A145850

/-- `A145818(2*(n+1)-1)` -/
def P9953034597802076146.Spec : Prop :=
  ∀ n, P9953034597802076146.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P16088106462206349355

`2*4*∑[ceil(xor(n, -n)²/3)]+1`
-/

namespace A145850.P16088106462206349355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A145850.P16088106462206349355

namespace A145850

/-- `2*4*∑[ceil(xor(n, -n)²/3)]+1` -/
def P16088106462206349355.Spec : Prop :=
  ∀ n, P16088106462206349355.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P5057125691907553887

`or(1, 2*4*∑[ceil(xor(n, -n)²/3)])`
-/

namespace A145850.P5057125691907553887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A145850.P5057125691907553887

namespace A145850

/-- `or(1, 2*4*∑[ceil(xor(n, -n)²/3)])` -/
def P5057125691907553887.Spec : Prop :=
  ∀ n, P5057125691907553887.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P17183821205537092933

`xor(1, 2*4*∑[ceil(xor(n, -n)²/3)])`
-/

namespace A145850.P17183821205537092933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A145850.P17183821205537092933

namespace A145850

/-- `xor(1, 2*4*∑[ceil(xor(n, -n)²/3)])` -/
def P17183821205537092933.Spec : Prop :=
  ∀ n, P17183821205537092933.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P16557153673582049139

`16*(2*∑[and(n, -n)²]+n)/3+1`
-/

namespace A145850.P16557153673582049139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  16 * (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3) + 1

end

end A145850.P16557153673582049139

namespace A145850

/-- `16*(2*∑[and(n, -n)²]+n)/3+1` -/
def P16557153673582049139.Spec : Prop :=
  ∀ n, P16557153673582049139.a n = (A145850 (n + 1) : ℚ)

end A145850

/-! ## A145850.P1014021382754434153

`2*A127988(n)+1`
-/

namespace A145850.P1014021382754434153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127988 n + 1

end

end A145850.P1014021382754434153

namespace A145850

/-- `2*A127988(n)+1` -/
def P1014021382754434153.Spec : Prop :=
  ∀ n, P1014021382754434153.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P8348586415541974605

`16*A000695(n)+1`
-/

namespace A145850.P8348586415541974605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000695 n + 1

end

end A145850.P8348586415541974605

namespace A145850

/-- `16*A000695(n)+1` -/
def P8348586415541974605.Spec : Prop :=
  ∀ n, P8348586415541974605.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P10542080752612844639

`2*A145849(n+1)-1`
-/

namespace A145850.P10542080752612844639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145849 (n + 1) - 1

end

end A145850.P10542080752612844639

namespace A145850

/-- `2*A145849(n+1)-1` -/
def P10542080752612844639.Spec : Prop :=
  ∀ n, P10542080752612844639.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P9075642375247121605

`A145849(n+1)+A127988(n)`
-/

namespace A145850.P9075642375247121605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145849 (n + 1) + A127988 n

end

end A145850.P9075642375247121605

namespace A145850

/-- `A145849(n+1)+A127988(n)` -/
def P9075642375247121605.Spec : Prop :=
  ∀ n, P9075642375247121605.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P9052097328532287365

`A145812(2*n+1)+A062880(2*n)`
-/

namespace A145850.P9052097328532287365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145812 (2 * n + 1) + A062880 (2 * n)

end

end A145850.P9052097328532287365

namespace A145850

/-- `A145812(2*n+1)+A062880(2*n)` -/
def P9052097328532287365.Spec : Prop :=
  ∀ n, P9052097328532287365.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P4658100340162963526

`A098871(4*n)`
-/

namespace A145850.P4658100340162963526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 (4 * n)

end

end A145850.P4658100340162963526

namespace A145850

/-- `A098871(4*n)` -/
def P4658100340162963526.Spec : Prop :=
  ∀ n, P4658100340162963526.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P12157639273949938023

`A000695(A016813(n))`
-/

namespace A145850.P12157639273949938023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A016813 n).toNat

end

end A145850.P12157639273949938023

namespace A145850

/-- `A000695(A016813(n))` -/
def P12157639273949938023.Spec : Prop :=
  ∀ n, P12157639273949938023.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P3456204694419315671

`A000695(A109613(4*n))`
-/

namespace A145850.P3456204694419315671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A109613 (4 * n)).toNat

end

end A145850.P3456204694419315671

namespace A145850

/-- `A000695(A109613(4*n))` -/
def P3456204694419315671.Spec : Prop :=
  ∀ n, P3456204694419315671.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P3716709772821888033

`A000695(A131098(n+2)-2)`
-/

namespace A145850.P3716709772821888033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A131098 (n + 2) - 2).toNat

end

end A145850.P3716709772821888033

namespace A145850

/-- `A000695(A131098(n+2)-2)` -/
def P3716709772821888033.Spec : Prop :=
  ∀ n, P3716709772821888033.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P16378338314647657711

`A000695(A008585(n)+n+1)`
-/

namespace A145850.P16378338314647657711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A008585 n + (n + 1 : ℤ)).toNat

end

end A145850.P16378338314647657711

namespace A145850

/-- `A000695(A008585(n)+n+1)` -/
def P16378338314647657711.Spec : Prop :=
  ∀ n, P16378338314647657711.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P4250311444967365790

`A215024(A062877(2*n+2*n+1))`
-/

namespace A145850.P4250311444967365790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215024 (A062877 (2 * n + (2 * n + 1))).toNat

end

end A145850.P4250311444967365790

namespace A145850

/-- `A215024(A062877(2*n+2*n+1))` -/
def P4250311444967365790.Spec : Prop :=
  ∀ n, P4250311444967365790.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P13261167055468163617

`A105425(A178482(2*n+2*n+1))`
-/

namespace A145850.P13261167055468163617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105425 (A178482 (2 * n + (2 * n + 1))).toNat

end

end A145850.P13261167055468163617

namespace A145850

/-- `A105425(A178482(2*n+2*n+1))` -/
def P13261167055468163617.Spec : Prop :=
  ∀ n, P13261167055468163617.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P9044991708492048047

`A158057(A000695(n))`
-/

namespace A145850.P9044991708492048047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (A000695 n).toNat

end

end A145850.P9044991708492048047

namespace A145850

/-- `A158057(A000695(n))` -/
def P9044991708492048047.Spec : Prop :=
  ∀ n, P9044991708492048047.a n = A145850 (n + 1)

end A145850

/-! ## A145850.P15978682211175025179

`∩[A098871(n), A158057(n)]`
-/

namespace A145850.P15978682211175025179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145850.P15978682211175025179

namespace A145850

/-- `∩[A098871(n), A158057(n)]` -/
def P15978682211175025179.Spec : Prop :=
  ∀ n, (P15978682211175025179.a n : ℤ) = A145850 (n + 1)

end A145850

/-!
# A145853: Numbers m such that m is a multiple of all integers smaller than the largest prime dividing m.

The programs for A145853, the canonical program `A145853.P8816000319188844872` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145853 has offset 1).

The definition of A145853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145853.P8816000319188844872

`eq[A006530(n+1), A087133(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A145853

/-- `eq[A006530(n+1), A087133(n+1)]+1` -/
def P8816000319188844872.Spec : Prop :=
  ∀ n, (P8816000319188844872.a n : ℤ) = A145853 (n + 1)

theorem P8816000319188844872.correct : P8816000319188844872.Spec := by
  intro n
  simp only [A145853, Nat.add_sub_cancel]

end A145853

/-! ## A145853.P17869910708844804772

`record[A052126(n+1)*A087133(n+1)]`
-/

namespace A145853.P17869910708844804772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A087133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145853.P17869910708844804772

namespace A145853

/-- `record[A052126(n+1)*A087133(n+1)]` -/
def P17869910708844804772.Spec : Prop :=
  ∀ n, P17869910708844804772.a n = A145853 (n + 1)

end A145853

/-! ## A145853.P17079358379154938025

`record[A193267(A055932(n+1))]`
-/

namespace A145853.P17079358379154938025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193267 (A055932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145853.P17079358379154938025

namespace A145853

/-- `record[A193267(A055932(n+1))]` -/
def P17079358379154938025.Spec : Prop :=
  ∀ n, P17079358379154938025.a n = A145853 (n + 1)

end A145853

/-! ## A145853.P1664424024039249198

`record[A193267(A071364(n+1))]`
-/

namespace A145853.P1664424024039249198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193267 (A071364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145853.P1664424024039249198

namespace A145853

/-- `record[A193267(A071364(n+1))]` -/
def P1664424024039249198.Spec : Prop :=
  ∀ n, P1664424024039249198.a n = A145853 (n + 1)

end A145853

/-! ## A145853.P12322431906471854311

`record[A193267(A083259(n+1))]`
-/

namespace A145853.P12322431906471854311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193267 (A083259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145853.P12322431906471854311

namespace A145853

/-- `record[A193267(A083259(n+1))]` -/
def P12322431906471854311.Spec : Prop :=
  ∀ n, P12322431906471854311.a n = A145853 (n + 1)

end A145853

/-! ## A145853.P6066616353564180924

`record[A193267(n+1)/A079068(n+1)]`
-/

namespace A145853.P6066616353564180924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193267 (n + 1) : ℚ) / (A079068 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145853.P6066616353564180924

namespace A145853

/-- `record[A193267(n+1)/A079068(n+1)]` -/
def P6066616353564180924.Spec : Prop :=
  ∀ n, P6066616353564180924.a n = (A145853 (n + 1) : ℚ)

end A145853

/-! ## A145853.P16853316097508792649

`record[A071364(n+1)/A300330(n+1)]`
-/

namespace A145853.P16853316097508792649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071364 (n + 1) : ℚ) / (A300330 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145853.P16853316097508792649

namespace A145853

/-- `record[A071364(n+1)/A300330(n+1)]` -/
def P16853316097508792649.Spec : Prop :=
  ∀ n, P16853316097508792649.a n = (A145853 (n + 1) : ℚ)

end A145853

/-! ## A145853.P4282331912795379231

`record[A193267(eq[1, A286469(2*(n+1))]+1)]`
-/

namespace A145853.P4282331912795379231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193267 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145853.P4282331912795379231

namespace A145853

/-- `record[A193267(eq[1, A286469(2*(n+1))]+1)]` -/
def P4282331912795379231.Spec : Prop :=
  ∀ n, P4282331912795379231.a n = A145853 (n + 1)

end A145853

/-! ## A145853.P2297355068951628398

`A193267(eq[n+1, A193267(n+1)^A286469(n+1)]+1)`
-/

namespace A145853.P2297355068951628398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193267 (n + 1) : ℚ) ^ (A286469 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193267 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A145853.P2297355068951628398

namespace A145853

/-- `A193267(eq[n+1, A193267(n+1)^A286469(n+1)]+1)` -/
def P2297355068951628398.Spec : Prop :=
  ∀ n, P2297355068951628398.a n = A145853 (n + 1)

end A145853

/-!
# A145855: Number of n-element subsets of {1,2,...,2n-1} whose elements sum to a multiple of n.

The programs for A145855, there is no canonical definition to state claims against.
-/

/-! ## A145855.P538427961828542307

`A169888(n+1)/2`
-/

namespace A145855.P538427961828542307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169888 (n + 1) : ℚ) / 2

end

end A145855.P538427961828542307

/-! ## A145855.P15357170131203007679

`A309148(∑[n+2])`
-/

namespace A145855.P15357170131203007679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145855.P15357170131203007679

/-! ## A145855.P10601573666551915680

`A267632(2*(n+1)²)`
-/

namespace A145855.P10601573666551915680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267632 (2 * (n + 1) ^ 2)

end

end A145855.P10601573666551915680

/-! ## A145855.P3040692744361228661

`A061865((n+1)²+n²)`
-/

namespace A145855.P3040692744361228661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061865 ((n + 1) ^ 2 + n ^ 2)

end

end A145855.P3040692744361228661

/-! ## A145855.P8607842811973614473

`A061865(A001105(n+1))/2`
-/

namespace A145855.P8607842811973614473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061865 (A001105 (n + 1)).toNat : ℚ) / 2

end

end A145855.P8607842811973614473

/-! ## A145855.P10231237854369423631

`gcd(A000038(n), A061865(A001844(n)))`
-/

namespace A145855.P10231237854369423631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A061865 (A001844 n).toNat)

end

end A145855.P10231237854369423631

/-! ## A145855.P5940597775368353882

`or(A000007(n), A061865(A001844(n)))`
-/

namespace A145855.P5940597775368353882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A061865 (A001844 n).toNat)

end

end A145855.P5940597775368353882

/-!
# A145856: Least number k>1 such that centered n-gonal number n*k(k-1)/2+1 is a perfect square, or 0 if no such k exists.

The programs for A145856, there is no canonical definition to state claims against.
-/

/-! ## A145856.P5266796007489410481

`A120744(n+1)+1`
-/

namespace A145856.P5266796007489410481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (n + 1) + 1

end

end A145856.P5266796007489410481

/-!
# A145857: Number of n X n binary arrays with all ones connected only in two by two blocks.

The programs for A145857, there is no canonical definition to state claims against.
-/

/-! ## A145857.P841769110492809544

`A183342((n+1)²+n²)`
-/

namespace A145857.P841769110492809544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 ((n + 1) ^ 2 + n ^ 2)

end

end A145857.P841769110492809544

/-! ## A145857.P5295788845268887236

`record[A003982(n)*A183342(n+1)]`
-/

namespace A145857.P5295788845268887236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145857.P5295788845268887236

/-! ## A145857.P3442102289289180111

`A183342(A001844(n))+A178798(n)`
-/

namespace A145857.P3442102289289180111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A001844 n).toNat + A178798 n

end

end A145857.P3442102289289180111

/-! ## A145857.P4258500452538291047

`lcm(A033999(n), A183342(A001844(n)))`
-/

namespace A145857.P4258500452538291047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A183342 (A001844 n).toNat)

end

end A145857.P4258500452538291047

/-! ## A145857.P16254465685596870973

`A183342(A001844(n))+A008683(8*n+4)`
-/

namespace A145857.P16254465685596870973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A001844 n).toNat + A008683 (8 * n + 4)

end

end A145857.P16254465685596870973

/-!
# A145860: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in two by two blocks.

The programs for A145860, there is no canonical definition to state claims against.
-/

/-! ## A145860.P4078010335521515310

`A145862(2*n+3)`
-/

namespace A145860.P4078010335521515310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145862 (2 * n + 3)

end

end A145860.P4078010335521515310

/-! ## A145860.P12455172154069528033

`record[A145862(n^(n%2))]`
-/

namespace A145860.P12455172154069528033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145862 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145860.P12455172154069528033

/-! ## A145860.P15008082199941252294

`record[A145862(lcm(4, n+1)/4)]`
-/

namespace A145860.P15008082199941252294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145862 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145860.P15008082199941252294

/-! ## A145860.P10083521525864423617

`record[A145862(n+1)/(-1)^n]`
-/

namespace A145860.P10083521525864423617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145862 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145860.P10083521525864423617

/-! ## A145860.P5150731238579183987

`record[A145862((n+1)/2^val(n+1, 2))]`
-/

namespace A145860.P5150731238579183987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145862 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145860.P5150731238579183987

/-!
# A145864: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in two by two blocks.

The programs for A145864, there is no canonical definition to state claims against.
-/

/-! ## A145864.P4885313654272817995

`xor(A248327(A274963(n+1)), A274964(n+1))`
-/

namespace A145864.P4885313654272817995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A248327 (A274963 (n + 1)).toNat) (A274964 (n + 1))

end

end A145864.P4885313654272817995

/-!
# A145865: a(0) = 0, a(1) = 1, a(2n) = a(n), a(2n+1) = a(n) - a(n+1).

The programs for A145865, the canonical program `A145865.P8782213362045829021` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145865 has offset 0).

The definition of A145865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145865.P8782213362045829021

`a(floor(n/2))-a(∑[n]%(n+1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145865

/-- `a(floor(n/2))-a(∑[n]%(n+1))` -/
def P8782213362045829021.Spec : Prop :=
  ∀ n, P8782213362045829021.a n = A145865 n

theorem P8782213362045829021.correct : P8782213362045829021.Spec := by
  intro n
  simp only [A145865]

end A145865

/-! ## A145865.P5669098010735289310

`a(floor(n/2))-(1-(-1)^n)*a(floor((n-1)/2)+1)/2` with `a(0)=0, a(1)=1`
-/

namespace A145865.P5669098010735289310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - (1 - (-1) ^ n : ℚ) * a (⌊((n : ℤ) - 1 : ℚ) / 2⌋ + 1).toNat / 2

end

end A145865.P5669098010735289310

namespace A145865

/-- `a(floor(n/2))-(1-(-1)^n)*a(floor((n-1)/2)+1)/2` -/
def P5669098010735289310.Spec : Prop :=
  ∀ n, P5669098010735289310.a n = (A145865 n : ℚ)

end A145865

/-! ## A145865.P12037428124552283402

`A005590(A122155(n))`
-/

namespace A145865.P12037428124552283402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A122155 n).toNat

end

end A145865.P12037428124552283402

namespace A145865

/-- `A005590(A122155(n))` -/
def P12037428124552283402.Spec : Prop :=
  ∀ n, P12037428124552283402.a n = A145865 n

end A145865

/-! ## A145865.P13778160221407187434

`A005590(A337909(n+1))%(n+1)`
-/

namespace A145865.P13778160221407187434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005590 (A337909 (n + 1)).toNat) (n + 1 : ℤ)

end

end A145865.P13778160221407187434

namespace A145865

/-- `A005590(A337909(n+1))%(n+1)` -/
def P13778160221407187434.Spec : Prop :=
  ∀ n, P13778160221407187434.a n = A145865 n

end A145865

/-! ## A145865.P3068201850360674072

`A005590(A337909(n+1)-A000007(n))`
-/

namespace A145865.P3068201850360674072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A337909 (n + 1) - A000007 n).toNat

end

end A145865.P3068201850360674072

namespace A145865

/-- `A005590(A337909(n+1)-A000007(n))` -/
def P3068201850360674072.Spec : Prop :=
  ∀ n, P3068201850360674072.a n = A145865 n

end A145865

/-! ## A145865.P11128937964366253313

`A005590(A337909(n+1)%A008706(n))`
-/

namespace A145865.P11128937964366253313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (Int.tmod (A337909 (n + 1)) (A008706 n)).toNat

end

end A145865.P11128937964366253313

namespace A145865

/-- `A005590(A337909(n+1)%A008706(n))` -/
def P11128937964366253313.Spec : Prop :=
  ∀ n, P11128937964366253313.a n = A145865 n

end A145865

/-! ## A145865.P3651874651143086525

`A005590(A262617(n)/2+n)`
-/

namespace A145865.P3651874651143086525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (SequenceMachineLib.roundAway ((A262617 n : ℚ) / 2 + (n : ℚ))).toNat

end

end A145865.P3651874651143086525

namespace A145865

/-- `A005590(A262617(n)/2+n)` -/
def P3651874651143086525.Spec : Prop :=
  ∀ n, P3651874651143086525.a n = A145865 n

end A145865

/-! ## A145865.P16917798840853789847

`A005590(A337909(2*(n+1))+1)`
-/

namespace A145865.P16917798840853789847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A337909 (2 * (n + 1)) + 1).toNat

end

end A145865.P16917798840853789847

namespace A145865

/-- `A005590(A337909(2*(n+1))+1)` -/
def P16917798840853789847.Spec : Prop :=
  ∀ n, P16917798840853789847.a n = A145865 n

end A145865

/-! ## A145865.P1019044657380829476

`A005590(A054429(2*n+1)+2)`
-/

namespace A145865.P1019044657380829476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A054429 (2 * n + 1) + 2).toNat

end

end A145865.P1019044657380829476

namespace A145865

/-- `A005590(A054429(2*n+1)+2)` -/
def P1019044657380829476.Spec : Prop :=
  ∀ n, P1019044657380829476.a n = A145865 n

end A145865

/-! ## A145865.P2452410372768987533

`A005590(A265026(2*n+1)-2*n)`
-/

namespace A145865.P2452410372768987533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A265026 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A145865.P2452410372768987533

namespace A145865

/-- `A005590(A265026(2*n+1)-2*n)` -/
def P2452410372768987533.Spec : Prop :=
  ∀ n, P2452410372768987533.a n = A145865 n

end A145865

/-! ## A145865.P17792034473605032732

`A005590(A262617(n)+2*n)`
-/

namespace A145865.P17792034473605032732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A262617 n + (2 * n : ℤ)).toNat

end

end A145865.P17792034473605032732

namespace A145865

/-- `A005590(A262617(n)+2*n)` -/
def P17792034473605032732.Spec : Prop :=
  ∀ n, P17792034473605032732.a n = A145865 n

end A145865

/-! ## A145865.P2767285805648733526

`A005590(A262617(n)+n+n)`
-/

namespace A145865.P2767285805648733526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A262617 n + (n : ℤ) + (n : ℤ)).toNat

end

end A145865.P2767285805648733526

namespace A145865

/-- `A005590(A262617(n)+n+n)` -/
def P2767285805648733526.Spec : Prop :=
  ∀ n, P2767285805648733526.a n = A145865 n

end A145865

/-!
# A145866: Number of representations of 2n as a sum of two terms of A145819.

The programs for A145866, there is no canonical definition to state claims against.
-/

/-! ## A145866.P18348373393009750632

`A375736(A005811(n)^A000120(n))`
-/

namespace A145866.P18348373393009750632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375736 (SequenceMachineLib.roundAway ((A005811 n : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A145866.P18348373393009750632

/-! ## A145866.P6796759403477321511

`A001511(gcd(A000108(n), A240883(n)))`
-/

namespace A145866.P6796759403477321511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.gcd (A000108 n) (A240883 n))

end

end A145866.P6796759403477321511

/-! ## A145866.P10514615834476078758

`A001511(or(A097331(n), A240883(n)))`
-/

namespace A145866.P10514615834476078758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A097331 n) (A240883 n)).toNat

end

end A145866.P10514615834476078758

/-! ## A145866.P8698034902045571832

`A165093(A136366(n+1)%A007733(n+1))`
-/

namespace A145866.P8698034902045571832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 (Int.tmod (A136366 (n + 1)) (A007733 (n + 1))).toNat

end

end A145866.P8698034902045571832

/-! ## A145866.P8543252169491447543

`gcd(A103318(n+1), A326624(A293221(n+1)))`
-/

namespace A145866.P8543252169491447543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103318 (n + 1)) (A326624 (A293221 (n + 1)).toNat)

end

end A145866.P8543252169491447543

/-!
# A145867: Number of involutions of length 2n which are invariant under the reverse-complement map and have no decreasing subsequence of length 7.

The programs for A145867, there is no canonical definition to state claims against.
-/

/-! ## A145867.P1272406535992826904

`A032742(A202834(n)+A055775(n))`
-/

namespace A145867.P1272406535992826904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A202834 n + A055775 n).toNat

end

end A145867.P1272406535992826904

/-! ## A145867.P346114827545408586

`A150167(n)-A159632(A212606(n))`
-/

namespace A145867.P346114827545408586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150167 n - A159632 (A212606 n).toNat

end

end A145867.P346114827545408586

/-!
# A145868: Number of involutions of length 2n+1 which are invariant under the reverse-complement map and have no decreasing subsequences of length 7.

The programs for A145868, there is no canonical definition to state claims against.
-/

/-! ## A145868.P1940147852469735954

`A026525(n)+A001221(A001193(n))`
-/

namespace A145868.P1940147852469735954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026525 n + A001221 (A001193 n).toNat

end

end A145868.P1940147852469735954

/-! ## A145868.P10834301466011266579

`A301935(A099398(n))+A184018(n)`
-/

namespace A145868.P10834301466011266579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301935 (A099398 n).toNat + A184018 n

end

end A145868.P10834301466011266579

/-!
# A145870: Number of involutions of length 2n which are invariant under the reverse-complement map and have no decreasing subsequences of length 8.

The programs for A145870, there is no canonical definition to state claims against.
-/

/-! ## A145870.P2156116486597747840

`A167151(A150775(n))`
-/

namespace A145870.P2156116486597747840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (A150775 n).toNat

end

end A145870.P2156116486597747840

/-! ## A145870.P16788322906581841694

`A364368(A008000(n))+n`
-/

namespace A145870.P16788322906581841694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364368 (A008000 n).toNat + (n : ℤ)

end

end A145870.P16788322906581841694

/-!
# A145874: 

The programs for A145874, there is no canonical definition to state claims against.
-/

/-! ## A145874.P17445140200152477644

`A147681(n+1)`
-/

namespace A145874.P17445140200152477644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147681 (n + 1)

end

end A145874.P17445140200152477644

/-! ## A145874.P14047625723928024796

`-Δ[-∑[A147681(n)]]`
-/

namespace A145874.P14047625723928024796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A145874.P14047625723928024796

/-! ## A145874.P13032461442386342869

`or(1, A147681(A348553(n)))`
-/

namespace A145874.P13032461442386342869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147681 (A348553 n).toNat)

end

end A145874.P13032461442386342869

/-! ## A145874.P1174595349157560251

`or(1, A147681(A008619(2*n)))`
-/

namespace A145874.P1174595349157560251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147681 (A008619 (2 * n)).toNat)

end

end A145874.P1174595349157560251

/-! ## A145874.P14203215264041055405

`A215561(A034856(n+2))`
-/

namespace A145874.P14203215264041055405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (A034856 (n + 2)).toNat

end

end A145874.P14203215264041055405

/-!
# A145875: Repdigit Kaprekar numbers.

The programs for A145875, there is no canonical definition to state claims against.
-/

/-! ## A145875.P18064000369028957810

`∩[A010785(n), A053816(n+1)]`
-/

namespace A145875.P18064000369028957810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145875.P18064000369028957810

/-! ## A145875.P5483465126747472959

`∩[A053816(n+1), A193460(n+1)]`
-/

namespace A145875.P5483465126747472959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145875.P5483465126747472959

/-! ## A145875.P2797352979877649567

`∩[A010785(n), A382163(n+1)]`
-/

namespace A145875.P2797352979877649567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145875.P2797352979877649567

/-! ## A145875.P8885658045444501024

`∩[A160818(n+1), A382163(n+1)]`
-/

namespace A145875.P8885658045444501024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145875.P8885658045444501024

/-! ## A145875.P9489449292731830185

`∩[A193460(n+1), A382163(n+1)]`
-/

namespace A145875.P9489449292731830185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145875.P9489449292731830185

/-! ## A145875.P1757234675640243448

`∩[A006886(n+1), A010785(n)]`
-/

namespace A145875.P1757234675640243448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145875.P1757234675640243448

/-! ## A145875.P13258015259242379129

`∩[A006886(n+1), A193460(n+1)]`
-/

namespace A145875.P13258015259242379129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145875.P13258015259242379129

/-! ## A145875.P12032049269281673816

`∩[A006886(n+1), A064222(n)]`
-/

namespace A145875.P12032049269281673816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145875.P12032049269281673816

/-! ## A145875.P14180505541889027331

`∩[A053816(n+1), A064222(n)]`
-/

namespace A145875.P14180505541889027331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145875.P14180505541889027331

/-! ## A145875.P3147486333586363923

`∩[A064222(n), A382163(n+1)]`
-/

namespace A145875.P3147486333586363923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145875.P3147486333586363923

/-!
# A145878: Triangle read by rows: T(n,k) is the number of permutations of [n] having k strong fixed points (0 <= k <= n).

The programs for A145878, there is no canonical definition to state claims against.
-/

/-! ## A145878.P6533392945896409032

`A153112(A101371(n))`
-/

namespace A145878.P6533392945896409032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153112 (A101371 n).toNat

end

end A145878.P6533392945896409032

/-! ## A145878.P416369059491630237

`A122921(A226780(n))`
-/

namespace A145878.P416369059491630237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A226780 n).toNat

end

end A145878.P416369059491630237

/-! ## A145878.P7202209689242537913

`A007377(A171224(n)+1)`
-/

namespace A145878.P7202209689242537913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007377 (A171224 n + 1).toNat

end

end A145878.P7202209689242537913

/-! ## A145878.P10091714036684706768

`ceil(A338466(A114709(n))/2)`
-/

namespace A145878.P10091714036684706768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338466 (A114709 n).toNat : ℚ) / 2⌉

end

end A145878.P10091714036684706768

/-! ## A145878.P16291404897582154688

`A003989(A206700(n+1))*A048993(n+2)`
-/

namespace A145878.P16291404897582154688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A206700 (n + 1)).toNat * A048993 (n + 2)

end

end A145878.P16291404897582154688

/-!
# A145879: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having exactly k entries that are midpoints of 321 patterns (0 <= k <= n-2 for n >= 2; k=0 for n=1).

The programs for A145879, there is no canonical definition to state claims against.
-/

/-! ## A145879.P238367271622535038

`A202992(comp[∑[ceil(C(or(1, n), n)/2)]])`
-/

namespace A145879.P238367271622535038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202992 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A145879.P238367271622535038

/-! ## A145879.P5013537401817340128

`A202992(eq[0, A196389(n)])`
-/

namespace A145879.P5013537401817340128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145879.P5013537401817340128

/-! ## A145879.P5955253893872126876

`A202992(lt[A196389(n), 1])`
-/

namespace A145879.P5955253893872126876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202992 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A145879.P5955253893872126876

/-! ## A145879.P498895344362876956

`A202992(lt[n, A160905(n)])`
-/

namespace A145879.P498895344362876956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A145879.P498895344362876956

/-! ## A145879.P1267105789736450392

`A202992(lt[n, A111536(n)])`
-/

namespace A145879.P1267105789736450392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A145879.P1267105789736450392

/-!
# A145880: Triangle read by rows: T(n,k) is the number of odd permutations of {1,2,...,n} with no fixed points and having k excedances (n>=1; k>=1).

The programs for A145880, there is no canonical definition to state claims against.
-/

/-! ## A145880.P13641161581330786852

`A046739(n+1)-A145881(n+1)`
-/

namespace A145880.P13641161581330786852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046739 (n + 1) - A145881 (n + 1)

end

end A145880.P13641161581330786852

/-! ## A145880.P6287713467634930637

`A271697(comp[A101881(n)]+1)-A145881(n+1)`
-/

namespace A145880.P6287713467634930637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - A145881 (n + 1)

end

end A145880.P6287713467634930637

/-! ## A145880.P17453895472357726753

`A046739(n+1)+A145881(n+1)*A260196(n)`
-/

namespace A145880.P17453895472357726753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046739 (n + 1) + A145881 (n + 1) * A260196 n

end

end A145880.P17453895472357726753

/-! ## A145880.P15881531761349357627

`A271697(lt[A025893(n), A271703(n)])-A145881(n+1)`
-/

namespace A145880.P15881531761349357627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) - A145881 (n + 1)

end

end A145880.P15881531761349357627

/-!
# A145881: Triangle read by rows: T(n,k) is the number of even permutations of {1,2,...,n} with no fixed points and having k excedances (n>=1; k>=1).

The programs for A145881, there is no canonical definition to state claims against.
-/

/-! ## A145881.P9614287189314254890

`A046739(n+1)-A145880(n+1)`
-/

namespace A145881.P9614287189314254890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046739 (n + 1) - A145880 (n + 1)

end

end A145881.P9614287189314254890

/-! ## A145881.P17212492287390563827

`A271697(comp[A101881(n)]+1)-A145880(n+1)`
-/

namespace A145881.P17212492287390563827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - A145880 (n + 1)

end

end A145881.P17212492287390563827

/-!
# A145885: a(n) = (n-1)^2*binomial(2n,n)/(2*(n+1)).

The programs for A145885, the canonical program `A145885.P6159503778852159481` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145885 has offset 1).

The definition of A145885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145885.P17927898506339786209

`A000108(n+1)*n²/2`
-/

namespace A145885.P17927898506339786209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) * (n ^ 2 : ℤ) : ℚ) / 2

end

end A145885.P17927898506339786209

namespace A145885

/-- `A000108(n+1)*n²/2` -/
def P17927898506339786209.Spec : Prop :=
  ∀ n, P17927898506339786209.a n = (A145885 (n + 1) : ℚ)

end A145885

/-! ## A145885.P6159503778852159481

`n²*C(2*(n+1), n+1)/(2*(n+2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145885

/-- `n²*C(2*(n+1), n+1)/(2*(n+2))` -/
def P6159503778852159481.Spec : Prop :=
  ∀ n, P6159503778852159481.a n = (A145885 (n + 1) : ℚ)

end A145885

/-! ## A145885.P13448261102684226232

`n*A116385(2*n)`
-/

namespace A145885.P13448261102684226232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116385 (2 * n)

end

end A145885.P13448261102684226232

namespace A145885

/-- `n*A116385(2*n)` -/
def P13448261102684226232.Spec : Prop :=
  ∀ n, P13448261102684226232.a n = A145885 (n + 1)

end A145885

/-! ## A145885.P735880758834184900

`n*A116400(2*n)`
-/

namespace A145885.P735880758834184900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116400 (2 * n)

end

end A145885.P735880758834184900

namespace A145885

/-- `n*A116400(2*n)` -/
def P735880758834184900.Spec : Prop :=
  ∀ n, P735880758834184900.a n = A145885 (n + 1)

end A145885

/-! ## A145885.P5151489493902395749

`n*A037951(Δ[n²])`
-/

namespace A145885.P5151489493902395749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037951 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A145885.P5151489493902395749

namespace A145885

/-- `n*A037951(Δ[n²])` -/
def P5151489493902395749.Spec : Prop :=
  ∀ n, P5151489493902395749.a n = A145885 (n + 1)

end A145885

/-! ## A145885.P6376339813246246068

`n*A037955(Δ[n²])`
-/

namespace A145885.P6376339813246246068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037955 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A145885.P6376339813246246068

namespace A145885

/-- `n*A037955(Δ[n²])` -/
def P6376339813246246068.Spec : Prop :=
  ∀ n, P6376339813246246068.a n = A145885 (n + 1)

end A145885

/-! ## A145885.P17406198103032730070

`n*Δ[A371965(n+1)]`
-/

namespace A145885.P17406198103032730070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A145885.P17406198103032730070

namespace A145885

/-- `n*Δ[A371965(n+1)]` -/
def P17406198103032730070.Spec : Prop :=
  ∀ n, P17406198103032730070.a n = A145885 (n + 1)

end A145885

/-! ## A145885.P6586781364456050912

`A037955(2*n+1)*n`
-/

namespace A145885.P6586781364456050912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n + 1) * (n : ℤ)

end

end A145885.P6586781364456050912

namespace A145885

/-- `A037955(2*n+1)*n` -/
def P6586781364456050912.Spec : Prop :=
  ∀ n, P6586781364456050912.a n = A145885 (n + 1)

end A145885

/-! ## A145885.P7120246227950743427

`n/2*A276666(n+1)`
-/

namespace A145885.P7120246227950743427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A276666 (n + 1) : ℚ)

end

end A145885.P7120246227950743427

namespace A145885

/-- `n/2*A276666(n+1)` -/
def P7120246227950743427.Spec : Prop :=
  ∀ n, P7120246227950743427.a n = (A145885 (n + 1) : ℚ)

end A145885

/-! ## A145885.P308990339534336669

`n/2*A024483(n+2)`
-/

namespace A145885.P308990339534336669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A024483 (n + 2) : ℚ)

end

end A145885.P308990339534336669

namespace A145885

/-- `n/2*A024483(n+2)` -/
def P308990339534336669.Spec : Prop :=
  ∀ n, P308990339534336669.a n = (A145885 (n + 1) : ℚ)

end A145885

/-! ## A145885.P9328460050174582214

`n*A191529(2*n+3)`
-/

namespace A145885.P9328460050174582214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A191529 (2 * n + 3)

end

end A145885.P9328460050174582214

namespace A145885

/-- `n*A191529(2*n+3)` -/
def P9328460050174582214.Spec : Prop :=
  ∀ n, P9328460050174582214.a n = A145885 (n + 1)

end A145885

/-! ## A145885.P4696995289137507253

`n/4*A246574(n+1)`
-/

namespace A145885.P4696995289137507253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A246574 (n + 1) : ℚ)

end

end A145885.P4696995289137507253

namespace A145885

/-- `n/4*A246574(n+1)` -/
def P4696995289137507253.Spec : Prop :=
  ∀ n, P4696995289137507253.a n = (A145885 (n + 1) : ℚ)

end A145885

/-! ## A145885.P261347675275356856

`n²/2*record[A126120(n)]`
-/

namespace A145885.P261347675275356856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A145885.P261347675275356856

namespace A145885

/-- `n²/2*record[A126120(n)]` -/
def P261347675275356856.Spec : Prop :=
  ∀ n, P261347675275356856.a n = (A145885 (n + 1) : ℚ)

end A145885

/-! ## A145885.P4938930498098334113

`n*A002054(abs(1-n)+1)`
-/

namespace A145885.P4938930498098334113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002054 (|1 - (n : ℤ)| + 1).toNat

end

end A145885.P4938930498098334113

namespace A145885

/-- `n*A002054(abs(1-n)+1)` -/
def P4938930498098334113.Spec : Prop :=
  ∀ n, P4938930498098334113.a n = A145885 (n + 1)

end A145885

/-! ## A145885.P13922073626861117438

`(n/2)²*A228403(n+1)`
-/

namespace A145885.P13922073626861117438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2 * (A228403 (n + 1) : ℚ)

end

end A145885.P13922073626861117438

namespace A145885

/-- `(n/2)²*A228403(n+1)` -/
def P13922073626861117438.Spec : Prop :=
  ∀ n, P13922073626861117438.a n = (A145885 (n + 1) : ℚ)

end A145885

/-! ## A145885.P15005599520051599354

`n*(A047182(2*n+1)+1)`
-/

namespace A145885.P15005599520051599354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A047182 (2 * n + 1) + 1)

end

end A145885.P15005599520051599354

namespace A145885

/-- `n*(A047182(2*n+1)+1)` -/
def P15005599520051599354.Spec : Prop :=
  ∀ n, P15005599520051599354.a n = A145885 (n + 1)

end A145885

/-! ## A145885.P12739972619384143644

`n*A232500(2*(n+1))/2`
-/

namespace A145885.P12739972619384143644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A232500 (2 * (n + 1)) : ℚ) / 2)

end

end A145885.P12739972619384143644

namespace A145885

/-- `n*A232500(2*(n+1))/2` -/
def P12739972619384143644.Spec : Prop :=
  ∀ n, P12739972619384143644.a n = (A145885 (n + 1) : ℚ)

end A145885

/-! ## A145885.P3147016290647575017

`n/(n+1)*A002740(n+2)`
-/

namespace A145885.P3147016290647575017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A002740 (n + 2) : ℚ)

end

end A145885.P3147016290647575017

namespace A145885

/-- `n/(n+1)*A002740(n+2)` -/
def P3147016290647575017.Spec : Prop :=
  ∀ n, P3147016290647575017.a n = (A145885 (n + 1) : ℚ)

end A145885

/-! ## A145885.P16342729908728723358

`A129194(n)*A234040(n)`
-/

namespace A145885.P16342729908728723358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 n * A234040 n

end

end A145885.P16342729908728723358

namespace A145885

/-- `A129194(n)*A234040(n)` -/
def P16342729908728723358.Spec : Prop :=
  ∀ n, P16342729908728723358.a n = A145885 (n + 1)

end A145885

/-! ## A145885.P18055157013455628174

`n*record[A037955(A026741(n))]`
-/

namespace A145885.P18055157013455628174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145885.P18055157013455628174

namespace A145885

/-- `n*record[A037955(A026741(n))]` -/
def P18055157013455628174.Spec : Prop :=
  ∀ n, P18055157013455628174.a n = A145885 (n + 1)

end A145885

/-!
# A145886: Number of excedances in all odd permutations of {1,2,...,n} with no fixed points.

The programs for A145886, there is no canonical definition to state claims against.
-/

/-! ## A145886.P18391025729298507601

`(n+1)/2*A000387(n+1)`
-/

namespace A145886.P18391025729298507601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000387 (n + 1) : ℚ)

end

end A145886.P18391025729298507601

/-! ## A145886.P4802225735260207140

`(n+1)/4*A180189(n+1)`
-/

namespace A145886.P4802225735260207140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A180189 (n + 1) : ℚ)

end

end A145886.P4802225735260207140

/-! ## A145886.P6275057353408187014

`((n+1)/2)²*xor(1, A000166(n))`
-/

namespace A145886.P6275057353408187014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 2) ^ 2 * (Int.xor 1 (A000166 n) : ℚ)

end

end A145886.P6275057353408187014

/-! ## A145886.P5219932685144566237

`A000274(n+2)-A145887(n+1)`
-/

namespace A145886.P5219932685144566237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000274 (n + 2) - A145887 (n + 1)

end

end A145886.P5219932685144566237

/-! ## A145886.P9181565161384866902

`A000274(n+2)-(n+1)/2*A003221(n+1)`
-/

namespace A145886.P9181565161384866902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000274 (n + 2) : ℚ) - (n + 1 : ℚ) / 2 * (A003221 (n + 1) : ℚ)

end

end A145886.P9181565161384866902

/-! ## A145886.P1114765312254345877

`A145887(n+1)-A000217(n)*A033999(n)`
-/

namespace A145886.P1114765312254345877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145887 (n + 1) - A000217 n * A033999 n

end

end A145886.P1114765312254345877

/-!
# A145887: Number of excedances in all even permutations of {1,2,...,n} with no fixed points.

The programs for A145887, there is no canonical definition to state claims against.
-/

/-! ## A145887.P1688227173137526177

`(n+1)/2*A003221(n+1)`
-/

namespace A145887.P1688227173137526177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A003221 (n + 1) : ℚ)

end

end A145887.P1688227173137526177

/-! ## A145887.P2551696175590374482

`A000274(n+2)-A145886(n+1)`
-/

namespace A145887.P2551696175590374482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000274 (n + 2) - A145886 (n + 1)

end

end A145887.P2551696175590374482

/-! ## A145887.P682615251319447916

`(A145222(n+1)+A065087(n))/2`
-/

namespace A145887.P682615251319447916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145222 (n + 1) + A065087 n : ℚ) / 2

end

end A145887.P682615251319447916

/-! ## A145887.P15884895995692847445

`A000274(n+2)-(n+1)/2*A000387(n+1)`
-/

namespace A145887.P15884895995692847445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000274 (n + 2) : ℚ) - (n + 1 : ℚ) / 2 * (A000387 (n + 1) : ℚ)

end

end A145887.P15884895995692847445

/-! ## A145887.P3716274500769354371

`A000274(n+2)-(n+1)/4*A180189(n+1)`
-/

namespace A145887.P3716274500769354371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000274 (n + 2) : ℚ) - (n + 1 : ℚ) / 4 * (A180189 (n + 1) : ℚ)

end

end A145887.P3716274500769354371

/-! ## A145887.P15731764784581040249

`abs(((n+1)/2)²*xor(1, A000166(n))-A000274(n+2))`
-/

namespace A145887.P15731764784581040249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((n + 1 : ℚ) / 2) ^ 2 * (Int.xor 1 (A000166 n) : ℚ) - (A000274 (n + 2) : ℚ)|

end

end A145887.P15731764784581040249

/-! ## A145887.P2913344630056991904

`A145886(n+1)+A000217(n)*A033999(n)`
-/

namespace A145887.P2913344630056991904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145886 (n + 1) + A000217 n * A033999 n

end

end A145887.P2913344630056991904

/-! ## A145887.P15707508074535532602

`A145886(n+1)-A000217(n)*A062157(n)`
-/

namespace A145887.P15707508074535532602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145886 (n + 1) - A000217 n * A062157 n

end

end A145887.P15707508074535532602

/-!
# A145888: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which k is the largest entry in the cycle containing 1 (1 <= k <= n).

The programs for A145888, the canonical program `A145888.P2166201089829665938` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145888 has offset 1).

The definition of A145888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145888.P2166201089829665938

`A136125(∑[char[∑[n]]]²-n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145888

/-- `A136125(∑[char[∑[n]]]²-n)` -/
def P2166201089829665938.Spec : Prop :=
  ∀ n, P2166201089829665938.a n = A145888 (n + 1)

theorem P2166201089829665938.correct : P2166201089829665938.Spec := by
  intro n
  simp only [A145888, Nat.add_sub_cancel]

end A145888

/-! ## A145888.P6166065863012926405

`or(char[1], A136125(A038722(n+1)))`
-/

namespace A145888.P6166065863012926405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A136125 (A038722 (n + 1)).toNat)

end

end A145888.P6166065863012926405

namespace A145888

/-- `or(char[1], A136125(A038722(n+1)))` -/
def P6166065863012926405.Spec : Prop :=
  ∀ n, P6166065863012926405.a n = A145888 (n + 1)

end A145888

/-! ## A145888.P16775888223980050275

`A136125(A038722(n+1))+A048105(A007947(n+1))`
-/

namespace A145888.P16775888223980050275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136125 (A038722 (n + 1)).toNat + A048105 (A007947 (n + 1)).toNat

end

end A145888.P16775888223980050275

namespace A145888

/-- `A136125(A038722(n+1))+A048105(A007947(n+1))` -/
def P16775888223980050275.Spec : Prop :=
  ∀ n, P16775888223980050275.a n = A145888 (n + 1)

end A145888

/-! ## A145888.P18004712075476743132

`A136125(A038722(n+1))+A002133(A027642(2*n+1))`
-/

namespace A145888.P18004712075476743132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136125 (A038722 (n + 1)).toNat + A002133 (A027642 (2 * n + 1)).toNat

end

end A145888.P18004712075476743132

namespace A145888

/-- `A136125(A038722(n+1))+A002133(A027642(2*n+1))` -/
def P18004712075476743132.Spec : Prop :=
  ∀ n, P18004712075476743132.a n = A145888 (n + 1)

end A145888

/-! ## A145888.P14354026731675503947

`gcd(A078921(n+1), A078921(A028310(n)))`
-/

namespace A145888.P14354026731675503947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078921 (n + 1)) (A078921 (A028310 n).toNat)

end

end A145888.P14354026731675503947

namespace A145888

/-- `gcd(A078921(n+1), A078921(A028310(n)))` -/
def P14354026731675503947.Spec : Prop :=
  ∀ n, (P14354026731675503947.a n : ℤ) = A145888 (n + 1)

end A145888

/-! ## A145888.P3140895815063292094

`A136125(A038722(n+1))%A000032(n+2)`
-/

namespace A145888.P3140895815063292094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136125 (A038722 (n + 1)).toNat) (A000032 (n + 2))

end

end A145888.P3140895815063292094

namespace A145888

/-- `A136125(A038722(n+1))%A000032(n+2)` -/
def P3140895815063292094.Spec : Prop :=
  ∀ n, P3140895815063292094.a n = A145888 (n + 1)

end A145888

/-! ## A145888.P13666616726508449589

`A007318(∑[n])*A136125(A038722(n+1))`
-/

namespace A145888.P13666616726508449589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A136125 (A038722 (n + 1)).toNat

end

end A145888.P13666616726508449589

namespace A145888

/-- `A007318(∑[n])*A136125(A038722(n+1))` -/
def P13666616726508449589.Spec : Prop :=
  ∀ n, P13666616726508449589.a n = A145888 (n + 1)

end A145888

/-!
# A145889: Number of even entries that are followed by a smaller entry in all permutations of {1,2,...,n}.

The programs for A145889, there is no canonical definition to state claims against.
-/

/-! ## A145889.P11463672272435217705

`A123108(n)²*A104150(n)`
-/

namespace A145889.P11463672272435217705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n ^ 2 * A104150 n

end

end A145889.P11463672272435217705

/-!
# A145890: Triangle read by rows: T(n,k) = B(k)C(n-k), where B(j) is the central binomial coefficient binomial(2j,j) (A000984) and C(j) is the Catalan number binomial(2j,j)/(j+1) (A000108); 0 <= k <= n.

The programs for A145890, the canonical program `A145890.P5158419414041766201` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145890 has offset 0).

The definition of A145890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145890.P5158419414041766201

`C(2*col(n), col(n))*C(2*row(n)-2*col(n), row(n)-col(n))/(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A145890

/-- `C(2*col(n), col(n))*C(2*row(n)-2*col(n), row(n)-col(n))/(row(n)-col(n)+1)` -/
def P5158419414041766201.Spec : Prop :=
  ∀ n, P5158419414041766201.a n = (A145890 n : ℚ)

end A145890

/-! ## A145890.P8442105536282824536

`C(2*col(n), col(n))*C(2*(row(n)-col(n)), row(n)-col(n))/(row(n)-col(n)+1)`
-/

namespace A145890.P8442105536282824536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * SequenceMachineLib.triCol n) (SequenceMachineLib.triCol n) * Nat.choose (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ)

end

end A145890.P8442105536282824536

namespace A145890

/-- `C(2*col(n), col(n))*C(2*(row(n)-col(n)), row(n)-col(n))/(row(n)-col(n)+1)` -/
def P8442105536282824536.Spec : Prop :=
  ∀ n, P8442105536282824536.a n = (A145890 n : ℚ)

end A145890

/-! ## A145890.P3934385776615653430

`A067804(n)/(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A145890.P3934385776615653430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℚ) / ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ)

end

end A145890.P3934385776615653430

namespace A145890

/-- `A067804(n)/(C(comp[∑[n]]-n, 2)-n)` -/
def P3934385776615653430.Spec : Prop :=
  ∀ n, P3934385776615653430.a n = (A145890 n : ℚ)

end A145890

/-! ## A145890.P13900883338450310467

`(1-C(∑[char[∑[n]]], 2)+n)*A078391(n)`
-/

namespace A145890.P13900883338450310467
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A078391 n

end

end A145890.P13900883338450310467

namespace A145890

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A078391(n)` -/
def P13900883338450310467.Spec : Prop :=
  ∀ n, P13900883338450310467.a n = A145890 n

end A145890

/-! ## A145890.P5053433943932146700

`A002260(n+1)*A078391(n)`
-/

namespace A145890.P5053433943932146700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A078391 n

end

end A145890.P5053433943932146700

namespace A145890

/-- `A002260(n+1)*A078391(n)` -/
def P5053433943932146700.Spec : Prop :=
  ∀ n, P5053433943932146700.a n = A145890 n

end A145890

/-! ## A145890.P4232848010744557100

`(A002262(n)+1)*A078391(n)`
-/

namespace A145890.P4232848010744557100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A078391 n

end

end A145890.P4232848010744557100

namespace A145890

/-- `(A002262(n)+1)*A078391(n)` -/
def P4232848010744557100.Spec : Prop :=
  ∀ n, P4232848010744557100.a n = A145890 n

end A145890

/-! ## A145890.P6014894048454053958

`A067804(n)/A004736(n+1)`
-/

namespace A145890.P6014894048454053958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A145890.P6014894048454053958

namespace A145890

/-- `A067804(n)/A004736(n+1)` -/
def P6014894048454053958.Spec : Prop :=
  ∀ n, P6014894048454053958.a n = (A145890 n : ℚ)

end A145890

/-! ## A145890.P14949114816698929227

`A067804(n)/(A025581(n)+1)`
-/

namespace A145890.P14949114816698929227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℚ) / (A025581 n + 1 : ℚ)

end

end A145890.P14949114816698929227

namespace A145890

/-- `A067804(n)/(A025581(n)+1)` -/
def P14949114816698929227.Spec : Prop :=
  ∀ n, P14949114816698929227.a n = (A145890 n : ℚ)

end A145890

/-! ## A145890.P8515632078747279321

`A067804(n)/sqrt(A055461(n+1))`
-/

namespace A145890.P8515632078747279321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℝ) / Real.sqrt (A055461 (n + 1) : ℝ)

end

end A145890.P8515632078747279321

namespace A145890

/-- `A067804(n)/sqrt(A055461(n+1))` -/
def P8515632078747279321.Spec : Prop :=
  ∀ n, P8515632078747279321.a n = (A145890 n : ℝ)

end A145890

/-! ## A145890.P5486805972820769597

`A067804(n)/A057555(2*(n+1))`
-/

namespace A145890.P5486805972820769597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℚ) / (A057555 (2 * (n + 1)) : ℚ)

end

end A145890.P5486805972820769597

namespace A145890

/-- `A067804(n)/A057555(2*(n+1))` -/
def P5486805972820769597.Spec : Prop :=
  ∀ n, P5486805972820769597.a n = (A145890 n : ℚ)

end A145890

/-!
# A145891: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k adjacent pairs of the form (odd,even) (0<=k<=floor(n/2)).

The programs for A145891, there is no canonical definition to state claims against.
-/

/-! ## A145891.P1677076401208551997

`A145893(eq[0, A060510(n)])`
-/

namespace A145891.P1677076401208551997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145891.P1677076401208551997

/-! ## A145891.P10799122609321835848

`A145893(lt[0, A027555(n)])`
-/

namespace A145891.P10799122609321835848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A145891.P10799122609321835848

/-! ## A145891.P14289490627519897545

`A145893(lt[0, A066667(n)])`
-/

namespace A145891.P14289490627519897545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A145891.P14289490627519897545

/-! ## A145891.P8111103561479849027

`A145893(lt[0, A145893(n)])`
-/

namespace A145891.P8111103561479849027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A145891.P8111103561479849027

/-! ## A145891.P9093401850616360716

`A145893(A028391(n)+n)`
-/

namespace A145891.P9093401850616360716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A028391 n + (n : ℤ)).toNat

end

end A145891.P9093401850616360716

/-!
# A145892: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k adjacent pairs of the form (even,even) (0<=k<=floor(n/2)-1).

The programs for A145892, there is no canonical definition to state claims against.
-/

/-! ## A145892.P616575616103565165

`A062821(n+1)*A062821(A022493(n))`
-/

namespace A145892.P616575616103565165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) * A062821 (A022493 n).toNat

end

end A145892.P616575616103565165

/-! ## A145892.P14108674257172833969

`lcm(A000792(n), A046523(A332791(n+1)))`
-/

namespace A145892.P14108674257172833969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000792 n) (A046523 (A332791 (n + 1)).toNat)

end

end A145892.P14108674257172833969

/-!
# A145893: Triangle read by rows: T(n,k) is the number of permutations p of {1,2,...,n} such that j and p(j) are of opposite parities for k values of j (0<=k<=n).

The programs for A145893, there is no canonical definition to state claims against.
-/

/-! ## A145893.P17463555850659630549

`A145894(A061579(n))`
-/

namespace A145893.P17463555850659630549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (A061579 n).toNat

end

end A145893.P17463555850659630549

/-! ## A145893.P7802589049017662951

`A145894(A114327(n)+n)`
-/

namespace A145893.P7802589049017662951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (A114327 n + (n : ℤ)).toNat

end

end A145893.P7802589049017662951

/-! ## A145893.P16567874725937949883

`A145894(A038722(n+1)-1)`
-/

namespace A145893.P16567874725937949883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (A038722 (n + 1) - 1).toNat

end

end A145893.P16567874725937949883

/-! ## A145893.P13884058469771913692

`A145894(A056011(n+1)-1)`
-/

namespace A145893.P13884058469771913692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (A056011 (n + 1) - 1).toNat

end

end A145893.P13884058469771913692

/-! ## A145893.P8067378046651571451

`A145894(A023443(A038722(n+1)))`
-/

namespace A145893.P8067378046651571451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A145893.P8067378046651571451

/-!
# A145894: Triangle read by rows: T(n,k) is the number of permutations p of {1,2,...,n} such that j and p(j) are of the same parity for k values of j (0<=k<=n).

The programs for A145894, there is no canonical definition to state claims against.
-/

/-! ## A145894.P5336550477488087534

`A145893(A061579(n))`
-/

namespace A145894.P5336550477488087534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A061579 n).toNat

end

end A145894.P5336550477488087534

/-! ## A145894.P13638934878722943677

`A145893(A114327(n)+n)`
-/

namespace A145894.P13638934878722943677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A114327 n + (n : ℤ)).toNat

end

end A145894.P13638934878722943677

/-! ## A145894.P12836713425588043543

`A145893(A038722(n+1)-1)`
-/

namespace A145894.P12836713425588043543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A038722 (n + 1) - 1).toNat

end

end A145894.P12836713425588043543

/-! ## A145894.P13952429662349212821

`A145893(A056011(n+1)-1)`
-/

namespace A145894.P13952429662349212821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A056011 (n + 1) - 1).toNat

end

end A145894.P13952429662349212821

/-! ## A145894.P10680042159486274617

`A145893(∑[2*n]%A014132(n+1))`
-/

namespace A145894.P10680042159486274617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A014132 (n + 1))).toNat

end

end A145894.P10680042159486274617

/-! ## A145894.P5864784963523523397

`A145893(A057944(n)+A025581(n))`
-/

namespace A145894.P5864784963523523397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A057944 n + A025581 n).toNat

end

end A145894.P5864784963523523397

/-! ## A145894.P10618135665615128085

`A145893(A127739(n+1)-(A002262(n)+1))`
-/

namespace A145894.P10618135665615128085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A127739 (n + 1) - (A002262 n + 1)).toNat

end

end A145894.P10618135665615128085

/-! ## A145894.P14569581194096934029

`A145893(A007401(n+1)-A158405(n+1))`
-/

namespace A145894.P14569581194096934029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A007401 (n + 1) - A158405 (n + 1)).toNat

end

end A145894.P14569581194096934029

/-! ## A145894.P16186122817123718991

`A145893(A259361(A038722(n+1)²))`
-/

namespace A145894.P16186122817123718991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (A259361 (A038722 (n + 1) ^ 2).toNat).toNat

end

end A145894.P16186122817123718991

/-!
# A145895: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n and having k UDU and DUD's (here U=(1,1), D=(1,-1); 0 <= k <= 2n-2).

The programs for A145895, there is no canonical definition to state claims against.
-/

/-! ## A145895.P1055908571791520144

`A306518(and(A290598(n), A306510(n+1)))`
-/

namespace A145895.P1055908571791520144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306518 (Int.land (A290598 n) (A306510 (n + 1))).toNat

end

end A145895.P1055908571791520144

/-!
# A145896: Values of m: where m^2 begins a run of consecutive squares satisfying r=p+4*m^2 with a sequence of primes.

The programs for A145896, there is no canonical definition to state claims against.
-/

/-! ## A145896.P10641792999432410228

`A302244(lcm(12, A015913(n+1))/12)`
-/

namespace A145896.P10641792999432410228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (SequenceMachineLib.roundAway ((Int.lcm 12 (A015913 (n + 1)) : ℚ) / 12)).toNat

end

end A145896.P10641792999432410228

/-! ## A145896.P41670992124155143

`A302244(A015913(n+1)^ceil(sin(n)²))`
-/

namespace A145896.P41670992124155143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (SequenceMachineLib.roundAway ((A015913 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A145896.P41670992124155143

/-! ## A145896.P1909542277379768881

`A302244(A029710(gcd(n, n*a(n-1))))` with `a(0)=3`
-/

namespace A145896.P1909542277379768881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A302244 (A029710 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))).toNat

end

end A145896.P1909542277379768881

/-! ## A145896.P4728680261451095893

`A302244(lcm(6, p?[A000040(n+1)-4])/6)`
-/

namespace A145896.P4728680261451095893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (SequenceMachineLib.roundAway ((Int.lcm 6 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / 6)).toNat

end

end A145896.P4728680261451095893

/-! ## A145896.P14500898057319377589

`A302244((A165986(n+1)/2)^round(n/(n+1)))`
-/

namespace A145896.P14500898057319377589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (SequenceMachineLib.roundAway (((A165986 (n + 1) : ℚ) / 2) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) : ℤ))).toNat

end

end A145896.P14500898057319377589

/-! ## A145896.P283305805138477174

`A302244(p?[A000040(n+1)-4]%(2*(n+1)²))`
-/

namespace A145896.P283305805138477174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (2 * (n + 1) ^ 2 : ℤ)).toNat

end

end A145896.P283305805138477174

/-! ## A145896.P7097832367930126397

`A302244(p?[A000040(n+4)-4]^(n²%(n+1)))`
-/

namespace A145896.P7097832367930126397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ (n ^ 2 % (n + 1))).toNat

end

end A145896.P7097832367930126397

/-! ## A145896.P2662076309229310659

`A302244(n-1+p?[A000040(n+4)-4]-abs(1-n))`
-/

namespace A145896.P2662076309229310659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 ((n : ℤ) - 1 + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - |1 - (n : ℤ)|)).toNat

end

end A145896.P2662076309229310659

/-! ## A145896.P2000257157737668702

`A302244(A015913(n+1))+A000007(n)`
-/

namespace A145896.P2000257157737668702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (A015913 (n + 1)).toNat + A000007 n

end

end A145896.P2000257157737668702

/-! ## A145896.P13613686455214776985

`A302244(p?[A000040(n+1)-4]-A000038(n))`
-/

namespace A145896.P13613686455214776985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000038 n).toNat

end

end A145896.P13613686455214776985

/-!
# A145897: Starting prime (and 1): where number of consecutive squares m^2 satisfy r=p+4*m^2, prime.

The programs for A145897, there is no canonical definition to state claims against.
-/

/-! ## A145897.P3078455469894148551

`abs(4-A118590(n+1))`
-/

namespace A145897.P3078455469894148551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A118590 (n + 1)|

end

end A145897.P3078455469894148551

/-! ## A145897.P7105888255378360773

`lcm(12, A015913(n+1))/12`
-/

namespace A145897.P7105888255378360773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 12 (A015913 (n + 1)) : ℚ) / 12

end

end A145897.P7105888255378360773

/-! ## A145897.P5063607444685531287

`A053320(n)+a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A145897.P5063607444685531287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A053320 n + a (n - 1)

end

end A145897.P5063607444685531287

/-! ## A145897.P6526995616158009025

`A029710(n*a(n-1)%2)` with `a(0)=1`
-/

namespace A145897.P6526995616158009025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029710 ((n : ℤ) * Int.tmod (a (n - 1)) 2).toNat

end

end A145897.P6526995616158009025

/-! ## A145897.P11934128807780129549

`A029710(gcd(n, n*a(n-1)))` with `a(0)=1`
-/

namespace A145897.P11934128807780129549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029710 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))

end

end A145897.P11934128807780129549

/-! ## A145897.P1514985073859734066

`p?[A172367(n+1)]-floor(acot(n)²)`
-/

namespace A145897.P1514985073859734066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A145897.P1514985073859734066

/-! ## A145897.P5589076681611038256

`record[A014963(p?[3*(n+1)+2]-4)]`
-/

namespace A145897.P5589076681611038256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145897.P5589076681611038256

/-! ## A145897.P17212637751408320324

`A029710(n^(C(n, a(n-1))+1))` with `a(0)=1`
-/

namespace A145897.P17212637751408320324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029710 (n ^ (Nat.choose n (a (n - 1)).toNat + 1))

end

end A145897.P17212637751408320324

/-! ## A145897.P12014752191834156393

`A029710(floor(acot(3*a(n-1))+n))` with `a(0)=1`
-/

namespace A145897.P12014752191834156393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029710 ⌊SequenceMachineLib.acot (3 * a (n - 1) : ℝ) + (n : ℝ)⌋.toNat

end

end A145897.P12014752191834156393

/-! ## A145897.P4121957316055985423

`p?[A000040(n+3)-4]-floor(acot(n)²)`
-/

namespace A145897.P4121957316055985423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A145897.P4121957316055985423

/-!
# A145898: Ending prime: where number of consecutive squares m^2 satisfy r = p + 4*m^2, prime.

The programs for A145898, there is no canonical definition to state claims against.
-/

/-! ## A145898.P7897703931035034340

`A145897(n+1)+(2*A145896(n+1))²`
-/

namespace A145898.P7897703931035034340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145897 (n + 1) + (2 * A145896 (n + 1)) ^ 2

end

end A145898.P7897703931035034340

/-! ## A145898.P17129007404976759280

`A145897(n+1)+A016742(A145896(n+1))`
-/

namespace A145898.P17129007404976759280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145897 (n + 1) + A016742 (A145896 (n + 1)).toNat

end

end A145898.P17129007404976759280

/-! ## A145898.P13432152745066295358

`A016742(A145896(n+1))+abs(4-A118590(n+1))`
-/

namespace A145898.P13432152745066295358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A145896 (n + 1)).toNat + |4 - A118590 (n + 1)|

end

end A145898.P13432152745066295358

/-! ## A145898.P10515499966652896015

`A016742(A145896(n+1))+lcm(12, A015913(n+1))/12`
-/

namespace A145898.P10515499966652896015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016742 (A145896 (n + 1)).toNat : ℚ) + (Int.lcm 12 (A015913 (n + 1)) : ℚ) / 12

end

end A145898.P10515499966652896015

/-! ## A145898.P16396076329470963509

`A016742(A145896(n+1))+p?[A000040(n+4)-4]^(n²%(n+1))`
-/

namespace A145898.P16396076329470963509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A145896 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ (n ^ 2 % (n + 1))

end

end A145898.P16396076329470963509

/-! ## A145898.P16860826661372489295

`A028253(A015913(n+1))+A016742(A145896(n+1))`
-/

namespace A145898.P16860826661372489295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A015913 (n + 1)).toNat + A016742 (A145896 (n + 1)).toNat

end

end A145898.P16860826661372489295

/-! ## A145898.P11200176922223454003

`A061891(A047847(n+1))+A016742(A145896(n+1))`
-/

namespace A145898.P11200176922223454003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061891 (A047847 (n + 1)).toNat + A016742 (A145896 (n + 1)).toNat

end

end A145898.P11200176922223454003

/-! ## A145898.P6120279607350031584

`A093411(A165986(n+1))+A016742(A145896(n+1))`
-/

namespace A145898.P6120279607350031584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A165986 (n + 1)).toNat + A016742 (A145896 (n + 1)).toNat

end

end A145898.P6120279607350031584

/-! ## A145898.P12321077698584433068

`A051176(A046132(n+1)-4)+A016742(A145896(n+1))`
-/

namespace A145898.P12321077698584433068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A046132 (n + 1) - 4).toNat + A016742 (A145896 (n + 1)).toNat

end

end A145898.P12321077698584433068

/-! ## A145898.P10174691665291063349

`A015913(n+1)+A016742(A145896(n+1))-A000038(n)`
-/

namespace A145898.P10174691665291063349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1) + (A016742 (A145896 (n + 1)).toNat - A000038 n)

end

end A145898.P10174691665291063349

/-!
# A145899: Numbers n such that sigma(x) = n has more solutions x than any smaller n.

The programs for A145899, there is no canonical definition to state claims against.
-/

/-! ## A145899.P18307112245839032860

`A007368(A206027(n+1))`
-/

namespace A145899.P18307112245839032860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007368 (A206027 (n + 1)).toNat

end

end A145899.P18307112245839032860

/-! ## A145899.P7125969846330794450

`record[A206026(n+1)-char[4]]`
-/

namespace A145899.P7125969846330794450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206026 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145899.P7125969846330794450

/-! ## A145899.P16467742545104320920

`record[A206026(round(xor(1, n)/6)+1)]`
-/

namespace A145899.P16467742545104320920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206026 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145899.P16467742545104320920

/-! ## A145899.P3462724108227794650

`record[A206026(gcd(n+1, ceil(n/2)))]`
-/

namespace A145899.P3462724108227794650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206026 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145899.P3462724108227794650

/-! ## A145899.P1232189735116755434

`record[A206026(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A145899.P1232189735116755434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206026 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145899.P1232189735116755434

