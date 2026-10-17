import SequenceMachineLib
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

/-!
# A280800: a(n) = A049501(cototient(n)).

The programs for A280800, the canonical program `A280800.P15800914194620614988` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280800 has offset 1).

The definition of A280800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280800.P15800914194620614988

`A049501(A051953(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A280800

/-- `A049501(A051953(n+1))` -/
def P15800914194620614988.Spec : Prop :=
  ∀ n, P15800914194620614988.a n = A280800 (n + 1)

theorem P15800914194620614988.correct : P15800914194620614988.Spec := by
  intro n
  simp only [A280800, Nat.add_sub_cancel]

end A280800

/-! ## A280800.P15077944594071814020

`A049501(1-Δ[A002088(n)]+n)`
-/

namespace A280800.P15077944594071814020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (1 - (f1 (n + 1) - f1 n) + (n : ℤ)).toNat

end

end A280800.P15077944594071814020

namespace A280800

/-- `A049501(1-Δ[A002088(n)]+n)` -/
def P15077944594071814020.Spec : Prop :=
  ∀ n, P15077944594071814020.a n = A280800 (n + 1)

end A280800

/-! ## A280800.P12718740438081451518

`A049501(1-(Δ[A002088(n)]-n))`
-/

namespace A280800.P12718740438081451518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (1 - (f1 (n + 1) - f1 n - (n : ℤ))).toNat

end

end A280800.P12718740438081451518

namespace A280800

/-- `A049501(1-(Δ[A002088(n)]-n))` -/
def P12718740438081451518.Spec : Prop :=
  ∀ n, P12718740438081451518.a n = A280800 (n + 1)

end A280800

/-! ## A280800.P3502488253078900354

`A049501(1-A000010(n+1)+n)`
-/

namespace A280800.P3502488253078900354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (1 - A000010 (n + 1) + (n : ℤ)).toNat

end

end A280800.P3502488253078900354

namespace A280800

/-- `A049501(1-A000010(n+1)+n)` -/
def P3502488253078900354.Spec : Prop :=
  ∀ n, P3502488253078900354.a n = A280800 (n + 1)

end A280800

/-! ## A280800.P18036896672153462600

`A049501(Δ[A000217(n)-A002088(n)])`
-/

namespace A280800.P18036896672153462600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (f1 (n + 1) - f1 n).toNat

end

end A280800.P18036896672153462600

namespace A280800

/-- `A049501(Δ[A000217(n)-A002088(n)])` -/
def P18036896672153462600.Spec : Prop :=
  ∀ n, P18036896672153462600.a n = A280800 (n + 1)

end A280800

/-!
# A280801: Least k > 0 such that (2*n)^k is in A002202, or 0 if no such k exists.

The programs for A280801, there is no canonical definition to state claims against.
-/

/-! ## A280801.P8739454852181955818

`∏{e}[A245606(A141459(n)), #]`
-/

namespace A280801.P8739454852181955818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245606 (A141459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A280801.P8739454852181955818

/-! ## A280801.P9463851925921570977

`gcd(A179531(A027642(n)), A262689(n))`
-/

namespace A280801.P9463851925921570977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A179531 (A027642 n).toNat) (A262689 n)

end

end A280801.P9463851925921570977

/-! ## A280801.P6254305426420615722

`∏{e}[A054019(A141056(n)), A006950(#)]`
-/

namespace A280801.P6254305426420615722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054019 (A141056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006950 (Nat.factorization (f1 n).natAbs p)

end

end A280801.P6254305426420615722

/-! ## A280801.P15921743790862880786

`gcd(A002850(n+1), A002850(A027642(n)))`
-/

namespace A280801.P15921743790862880786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002850 (n + 1)) (A002850 (A027642 n).toNat)

end

end A280801.P15921743790862880786

/-! ## A280801.P2809760500270594730

`gcd(n, A115577(A316428(n+5)))`
-/

namespace A280801.P2809760500270594730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A115577 (A316428 (n + 5)).toNat)

end

end A280801.P2809760500270594730

/-!
# A280803: Number of n X n 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280803, there is no canonical definition to state claims against.
-/

/-! ## A280803.P6501473986545221730

`A280810(∑[4*n]+1)`
-/

namespace A280803.P6501473986545221730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280803.P6501473986545221730

/-! ## A280803.P16258366676945373917

`record[A280810(Δ[A235355(n)])]`
-/

namespace A280803.P16258366676945373917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280803.P16258366676945373917

/-! ## A280803.P11527713773468071504

`record[A280810(A330613(n+1))]`
-/

namespace A280803.P11527713773468071504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280803.P11527713773468071504

/-! ## A280803.P737016872025384462

`record[A280810(A334320(n+2))]`
-/

namespace A280803.P737016872025384462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A334320 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280803.P737016872025384462

/-! ## A280803.P7685714509959946825

`A280810(A001844(n))+char[17]`
-/

namespace A280803.P7685714509959946825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280803.P7685714509959946825

/-!
# A280804: Number of nX2 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280804, there is no canonical definition to state claims against.
-/

/-! ## A280804.P15496185365500821003

`A280810(∑[n+1]+2)`
-/

namespace A280804.P15496185365500821003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A280804.P15496185365500821003

/-! ## A280804.P13005963292603129218

`record[A280810(A252460(n+1))]`
-/

namespace A280804.P13005963292603129218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280804.P13005963292603129218

/-! ## A280804.P10577793014122948142

`record[A280810(record[A194977(n+1)])]`
-/

namespace A280804.P10577793014122948142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194977 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280804.P10577793014122948142

/-! ## A280804.P5486401968631328759

`record[A280810(A286245(n+1)+1)]`
-/

namespace A280804.P5486401968631328759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A286245 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280804.P5486401968631328759

/-! ## A280804.P7186952733455493532

`record[A280810(n+1)/A118390(n)]`
-/

namespace A280804.P7186952733455493532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280810 (n + 1) : ℚ) / (A118390 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280804.P7186952733455493532

/-!
# A280805: Number of nX3 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280805, there is no canonical definition to state claims against.
-/

/-! ## A280805.P14514837594934243561

`A280810(∑[n+2]+4)`
-/

namespace A280805.P14514837594934243561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280805.P14514837594934243561

/-! ## A280805.P10886134638805622578

`record[A280810(A128489(n+1)+3)]`
-/

namespace A280805.P10886134638805622578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A128489 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280805.P10886134638805622578

/-! ## A280805.P13845619257388598896

`or(char[1], A280810(A167614(n+1)))`
-/

namespace A280805.P13845619257388598896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280810 (A167614 (n + 1)).toNat)

end

end A280805.P13845619257388598896

/-! ## A280805.P184116802693827700

`record[A010054(n)*A280810(n+3)]`
-/

namespace A280805.P184116802693827700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A280810 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280805.P184116802693827700

/-! ## A280805.P7670971593737872971

`or(char[1], A280810(A167499(n)+n))`
-/

namespace A280805.P7670971593737872971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280810 (A167499 n + (n : ℤ)).toNat)

end

end A280805.P7670971593737872971

/-!
# A280806: Number of nX4 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280806, there is no canonical definition to state claims against.
-/

/-! ## A280806.P5094878075172018215

`A280810(∑[n+3]+7)`
-/

namespace A280806.P5094878075172018215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280806.P5094878075172018215

/-! ## A280806.P16148046580967160095

`A280810(A055999(n)+10)+char[24]`
-/

namespace A280806.P16148046580967160095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280806.P16148046580967160095

/-! ## A280806.P3462463156175439428

`A007318(C(2, n))*A280810(A055999(n)+10)`
-/

namespace A280806.P3462463156175439428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A280810 (A055999 n + 10).toNat

end

end A280806.P3462463156175439428

/-! ## A280806.P10278391507795921603

`A007318(C(n, 2))+A280810(A055999(n)+10)-1`
-/

namespace A280806.P10278391507795921603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) + (A280810 (A055999 n + 10).toNat - 1)

end

end A280806.P10278391507795921603

/-! ## A280806.P3887054480554473350

`A000041(C(2, n+2))*A280810(A055999(n)+10)`
-/

namespace A280806.P3887054480554473350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A280810 (A055999 n + 10).toNat

end

end A280806.P3887054480554473350

/-!
# A280807: Number of nX5 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280807, there is no canonical definition to state claims against.
-/

/-! ## A280807.P2099786555203222380

`A280810(A374005(n+1))`
-/

namespace A280807.P2099786555203222380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A374005 (n + 1)).toNat

end

end A280807.P2099786555203222380

/-! ## A280807.P6510645469642974433

`A280810(A167499(n+3))`
-/

namespace A280807.P6510645469642974433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A167499 (n + 3)).toNat

end

end A280807.P6510645469642974433

/-! ## A280807.P17714141231421181377

`A280810(A155212(n)+13)`
-/

namespace A280807.P17714141231421181377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A155212 n + 13).toNat

end

end A280807.P17714141231421181377

/-! ## A280807.P13845979307108283478

`A280810(A056000(n)+15)`
-/

namespace A280807.P13845979307108283478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A056000 n + 15).toNat

end

end A280807.P13845979307108283478

/-! ## A280807.P18173266599860769938

`A280810(eq[7, A066657(n)])`
-/

namespace A280807.P18173266599860769938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280807.P18173266599860769938

/-!
# A280808: Number of nX6 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280808, there is no canonical definition to state claims against.
-/

/-! ## A280808.P17820992034066065259

`A280810(A374007(n+1))`
-/

namespace A280808.P17820992034066065259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A374007 (n + 1)).toNat

end

end A280808.P17820992034066065259

/-! ## A280808.P5602825800742968216

`A280810(Δ[A264443(n)]+10)`
-/

namespace A280808.P5602825800742968216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (f1 (n + 1) - f1 n + 10).toNat

end

end A280808.P5602825800742968216

/-! ## A280808.P2172456900422952276

`A280810(A167499(n+4)+1)`
-/

namespace A280808.P2172456900422952276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A167499 (n + 4) + 1).toNat

end

end A280808.P2172456900422952276

/-! ## A280808.P14646850205665969027

`A280810(A000124(n+5)+5)`
-/

namespace A280808.P14646850205665969027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A000124 (n + 5) + 5).toNat

end

end A280808.P14646850205665969027

/-! ## A280808.P1812418333024588404

`A280810(A000096(n+4)+7)`
-/

namespace A280808.P1812418333024588404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A000096 (n + 4) + 7).toNat

end

end A280808.P1812418333024588404

/-!
# A280809: Number of nX7 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280809, there is no canonical definition to state claims against.
-/

/-! ## A280809.P771995952779158068

`A280810(A374008(n+1))`
-/

namespace A280809.P771995952779158068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A374008 (n + 1)).toNat

end

end A280809.P771995952779158068

/-! ## A280809.P17367738668607330458

`A280810(eq[11, A066657(n)])`
-/

namespace A280809.P17367738668607330458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280809.P17367738668607330458

/-! ## A280809.P15022962593115837186

`A280810(A000124(n+6)+6)`
-/

namespace A280809.P15022962593115837186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A000124 (n + 6) + 6).toNat

end

end A280809.P15022962593115837186

/-! ## A280809.P14876328844461985346

`A280810(A000096(n+5)+8)`
-/

namespace A280809.P14876328844461985346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A000096 (n + 5) + 8).toNat

end

end A280809.P14876328844461985346

/-! ## A280809.P15474122958919655543

`A280810(A000217(n+6)+7)`
-/

namespace A280809.P15474122958919655543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (A000217 (n + 6) + 7).toNat

end

end A280809.P15474122958919655543

/-!
# A280810: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280810, there is no canonical definition to state claims against.
-/

/-! ## A280810.P2517810948279635918

`(A271486(3*n+4)+11)%A015110(n)`
-/

namespace A280810.P2517810948279635918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271486 (3 * n + 4) + 11) (A015110 n)

end

end A280810.P2517810948279635918

/-! ## A280810.P6307257885708903377

`A143997(A038754(n))%A008292(n+1)`
-/

namespace A280810.P6307257885708903377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143997 (A038754 n).toNat) (A008292 (n + 1))

end

end A280810.P6307257885708903377

/-!
# A280814: The maximum number of squares among the partial sums of any permutation of the integers [1..n].

The programs for A280814, there is no canonical definition to state claims against.
-/

/-! ## A280814.P1882786787287960547

`ceil(A271508(n+1)/sqrt(69))`
-/

namespace A280814.P1882786787287960547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A271508 (n + 1) : ℝ) / Real.sqrt (69 : ℝ)⌉

end

end A280814.P1882786787287960547

/-! ## A280814.P183705176456422488

`floor(A287775(n+3)/3)-1`
-/

namespace A280814.P183705176456422488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287775 (n + 3) : ℚ) / 3⌋ - 1

end

end A280814.P183705176456422488

/-! ## A280814.P6514582767508464317

`A172474(floor(sqrt(∑[n+1])+1+n)+1)`
-/

namespace A280814.P6514582767508464317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 1 + (n : ℝ)⌋ + 1).toNat

end

end A280814.P6514582767508464317

/-! ## A280814.P11384029421207568220

`A002264(A287775(n+3))-1`
-/

namespace A280814.P11384029421207568220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A287775 (n + 3)).toNat - 1

end

end A280814.P11384029421207568220

/-! ## A280814.P5587307427265990806

`A172474(A003152(n+10))-5`
-/

namespace A280814.P5587307427265990806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A003152 (n + 10)).toNat - 5

end

end A280814.P5587307427265990806

/-! ## A280814.P16536345577456472765

`floor(∑[A108103(A020705(n))]/3)`
-/

namespace A280814.P16536345577456472765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A280814.P16536345577456472765

/-! ## A280814.P12664585963887452216

`A002265(A086377(n+2)-and(1, n))`
-/

namespace A280814.P12664585963887452216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A086377 (n + 2) - (Nat.land 1 n : ℤ)).toNat

end

end A280814.P12664585963887452216

/-! ## A280814.P362915221343998797

`floor((A061288(n+1)+A008619(n))/2)`
-/

namespace A280814.P362915221343998797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061288 (n + 1) + A008619 n : ℚ) / 2⌋

end

end A280814.P362915221343998797

/-! ## A280814.P9098986698312737908

`A065033(A061288(n+1)+floor(n/2))`
-/

namespace A280814.P9098986698312737908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A061288 (n + 1) + ⌊(n : ℚ) / 2⌋).toNat

end

end A280814.P9098986698312737908

/-! ## A280814.P5968205175435684383

`A110654(A061288(n+1)+floor(n/2))`
-/

namespace A280814.P5968205175435684383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A061288 (n + 1) + ⌊(n : ℚ) / 2⌋).toNat

end

end A280814.P5968205175435684383

/-!
# A280815: a(n) = A049502(cototient(n)).

The programs for A280815, the canonical program `A280815.P16401283528998720651` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280815 has offset 1).

The definition of A280815 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280815.P16401283528998720651

`A049502(A051953(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A280815

/-- `A049502(A051953(n+1))` -/
def P16401283528998720651.Spec : Prop :=
  ∀ n, P16401283528998720651.a n = A280815 (n + 1)

theorem P16401283528998720651.correct : P16401283528998720651.Spec := by
  intro n
  simp only [A280815, Nat.add_sub_cancel]

end A280815

/-! ## A280815.P3849817087824479129

`A049502(A016035(n+1)+1)`
-/

namespace A280815.P3849817087824479129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A016035 (n + 1) + 1).toNat

end

end A280815.P3849817087824479129

namespace A280815

/-- `A049502(A016035(n+1)+1)` -/
def P3849817087824479129.Spec : Prop :=
  ∀ n, P3849817087824479129.a n = A280815 (n + 1)

end A280815

/-! ## A280815.P6684842724628096613

`A049502(1-A000010(n+1)+n)`
-/

namespace A280815.P6684842724628096613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (1 - A000010 (n + 1) + (n : ℤ)).toNat

end

end A280815.P6684842724628096613

namespace A280815

/-- `A049502(1-A000010(n+1)+n)` -/
def P6684842724628096613.Spec : Prop :=
  ∀ n, P6684842724628096613.a n = A280815 (n + 1)

end A280815

/-! ## A280815.P4469781043978058828

`A049502(n+1-A002618(n+1)/(n+1))`
-/

namespace A280815.P4469781043978058828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A280815.P4469781043978058828

namespace A280815

/-- `A049502(n+1-A002618(n+1)/(n+1))` -/
def P4469781043978058828.Spec : Prop :=
  ∀ n, P4469781043978058828.a n = A280815 (n + 1)

end A280815

/-! ## A280815.P16078070586249313500

`A049502(Δ[A000217(n)-A002088(n)])`
-/

namespace A280815.P16078070586249313500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (f1 (n + 1) - f1 n).toNat

end

end A280815.P16078070586249313500

namespace A280815

/-- `A049502(Δ[A000217(n)-A002088(n)])` -/
def P16078070586249313500.Spec : Prop :=
  ∀ n, P16078070586249313500.a n = A280815 (n + 1)

end A280815

/-!
# A280816: A pseudorandom binary sequence with maximal uniformity of the distribution of all subsequences.

The programs for A280816, there is no canonical definition to state claims against.
-/

/-! ## A280816.P14949774538846094703

`A089809(p?[A287658(A078615(n+1))])`
-/

namespace A280816.P14949774538846094703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (A078615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280816.P14949774538846094703

/-! ## A280816.P15086889964060444119

`A350070(A036035(n+3)*A214455(n+3))`
-/

namespace A280816.P15086889964060444119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (A036035 (n + 3) * A214455 (n + 3)).toNat

end

end A280816.P15086889964060444119

/-! ## A280816.P12237018246443680928

`A010052(A006577(n+5)^A342788(n+4))`
-/

namespace A280816.P12237018246443680928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (SequenceMachineLib.roundAway ((A006577 (n + 5) : ℚ) ^ (A342788 (n + 4) : ℤ))).toNat

end

end A280816.P12237018246443680928

/-! ## A280816.P6090158745602567886

`A187950(xor(A046660(n+1), A064125(n+1)))`
-/

namespace A280816.P6090158745602567886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (Int.xor (A046660 (n + 1)) (A064125 (n + 1))).toNat

end

end A280816.P6090158745602567886

/-! ## A280816.P695175951466801347

`A380561(A029718(n+2))-1`
-/

namespace A280816.P695175951466801347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380561 (A029718 (n + 2)).toNat - 1

end

end A280816.P695175951466801347

/-!
# A280817: a(n) = A049501(sigma(n)).

The programs for A280817, the canonical program `A280817.P4263899432578162346` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280817 has offset 1).

The definition of A280817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280817.P4263899432578162346

`A049501(A000203(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A280817

/-- `A049501(A000203(n+1))` -/
def P4263899432578162346.Spec : Prop :=
  ∀ n, P4263899432578162346.a n = A280817 (n + 1)

theorem P4263899432578162346.correct : P4263899432578162346.Spec := by
  intro n
  simp only [A280817, Nat.add_sub_cancel]

end A280817

/-! ## A280817.P4650522087459685184

`A049501(∑{d}[n+1, #])`
-/

namespace A280817.P4650522087459685184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A280817.P4650522087459685184

namespace A280817

/-- `A049501(∑{d}[n+1, #])` -/
def P4650522087459685184.Spec : Prop :=
  ∀ n, P4650522087459685184.a n = A280817 (n + 1)

end A280817

/-! ## A280817.P8016278256437417506

`A049501(Δ[A160664(n)])`
-/

namespace A280817.P8016278256437417506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (f1 (n + 1) - f1 n).toNat

end

end A280817.P8016278256437417506

namespace A280817

/-- `A049501(Δ[A160664(n)])` -/
def P8016278256437417506.Spec : Prop :=
  ∀ n, P8016278256437417506.a n = A280817 (n + 1)

end A280817

/-! ## A280817.P1500219941960104226

`A049501(abs(A143348(n+1)))`
-/

namespace A280817.P1500219941960104226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 |A143348 (n + 1)|.toNat

end

end A280817.P1500219941960104226

namespace A280817

/-- `A049501(abs(A143348(n+1)))` -/
def P1500219941960104226.Spec : Prop :=
  ∀ n, P1500219941960104226.a n = A280817 (n + 1)

end A280817

/-! ## A280817.P11058149530656026196

`A049501(sqrt(A072861(n+1)))`
-/

namespace A280817.P11058149530656026196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A280817.P11058149530656026196

namespace A280817

/-- `A049501(sqrt(A072861(n+1)))` -/
def P11058149530656026196.Spec : Prop :=
  ∀ n, P11058149530656026196.a n = A280817 (n + 1)

end A280817

/-! ## A280817.P8368277937129358201

`A049501(∑[A340793(n+1)])`
-/

namespace A280817.P8368277937129358201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280817.P8368277937129358201

namespace A280817

/-- `A049501(∑[A340793(n+1)])` -/
def P8368277937129358201.Spec : Prop :=
  ∀ n, P8368277937129358201.a n = A280817 (n + 1)

end A280817

/-! ## A280817.P7106778062887717242

`A049501(A319528(n+1)/8)`
-/

namespace A280817.P7106778062887717242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 8)).toNat

end

end A280817.P7106778062887717242

namespace A280817

/-- `A049501(A319528(n+1)/8)` -/
def P7106778062887717242.Spec : Prop :=
  ∀ n, P7106778062887717242.a n = A280817 (n + 1)

end A280817

/-! ## A280817.P9037428854601126581

`A049501(A001065(n+1)+1+n)`
-/

namespace A280817.P9037428854601126581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A280817.P9037428854601126581

namespace A280817

/-- `A049501(A001065(n+1)+1+n)` -/
def P9037428854601126581.Spec : Prop :=
  ∀ n, P9037428854601126581.a n = A280817 (n + 1)

end A280817

/-! ## A280817.P11873509410706259085

`A049501(∑[n+1]-A024816(n+1))`
-/

namespace A280817.P11873509410706259085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A024816 (n + 1)).toNat

end

end A280817.P11873509410706259085

namespace A280817

/-- `A049501(∑[n+1]-A024816(n+1))` -/
def P11873509410706259085.Spec : Prop :=
  ∀ n, P11873509410706259085.a n = A280817 (n + 1)

end A280817

/-! ## A280817.P9583027726966600995

`A049501(A152991(n+1)+A000720(n+1))`
-/

namespace A280817.P9583027726966600995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A152991 (n + 1) + A000720 (n + 1)).toNat

end

end A280817.P9583027726966600995

namespace A280817

/-- `A049501(A152991(n+1)+A000720(n+1))` -/
def P9583027726966600995.Spec : Prop :=
  ∀ n, P9583027726966600995.a n = A280817 (n + 1)

end A280817

/-!
# A280818: a(0)=1; for n > 0, if 4n+1 is prime, then a(n)=4n+1, otherwise a(n)=(4n+1)/LPF(4n+1).

The programs for A280818, there is no canonical definition to state claims against.
-/

/-! ## A280818.P11644024654743683891

`A117818(4*n+1)`
-/

namespace A280818.P11644024654743683891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (4 * n + 1)

end

end A280818.P11644024654743683891

/-! ## A280818.P255746092333583495

`or(1, A220096(4*n+1))`
-/

namespace A280818.P255746092333583495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220096 (4 * n + 1))

end

end A280818.P255746092333583495

/-! ## A280818.P11192885119778590482

`or(1, A117818(Δ[C(2*n, 2)]))`
-/

namespace A280818.P11192885119778590482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A117818 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A280818.P11192885119778590482

/-! ## A280818.P11237801288951727628

`(4*n+1)/A281680(2*n)`
-/

namespace A280818.P11237801288951727628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) / (A281680 (2 * n) : ℚ)

end

end A280818.P11237801288951727628

/-! ## A280818.P8604969655044008692

`(4*n+1)/A107286(4*n+1)`
-/

namespace A280818.P8604969655044008692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) / (A107286 (4 * n + 1) : ℚ)

end

end A280818.P8604969655044008692

/-! ## A280818.P6000780550102001118

`or(1, A117818(A016813(n)))`
-/

namespace A280818.P6000780550102001118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A117818 (A016813 n).toNat)

end

end A280818.P6000780550102001118

/-! ## A280818.P16596275294022646048

`A000265(A117818(Δ[C(2*n, 2)]))`
-/

namespace A280818.P16596275294022646048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A117818 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A280818.P16596275294022646048

/-! ## A280818.P9814987174359191727

`or(1, A117818(A004273(n+1+n)))`
-/

namespace A280818.P9814987174359191727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A117818 (A004273 (n + 1 + n)).toNat)

end

end A280818.P9814987174359191727

/-! ## A280818.P8975791080240411177

`A117818(A016813(n))%A002476(n+1)`
-/

namespace A280818.P8975791080240411177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117818 (A016813 n).toNat) (A002476 (n + 1))

end

end A280818.P8975791080240411177

/-!
# A280820: Partial sums of A001783.

The programs for A280820, there is no canonical definition to state claims against.
-/

/-! ## A280820.P8660276174447875167

`∑[A001783(n+1)]`
-/

namespace A280820.P8660276174447875167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280820.P8660276174447875167

/-! ## A280820.P12706212630631166604

`A001783(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A280820.P12706212630631166604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001783 (n + 1) + a (A023443 n).toNat

end

end A280820.P12706212630631166604

/-! ## A280820.P2629417714429776378

`∑[A038610(n+1)*A128247(n+1)]`
-/

namespace A280820.P2629417714429776378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038610 (n + 1) * A128247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280820.P2629417714429776378

/-! ## A280820.P1874216057702361457

`∑[A124441(n+1)*A124442(n+1)]`
-/

namespace A280820.P1874216057702361457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124441 (n + 1) * A124442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280820.P1874216057702361457

/-! ## A280820.P11843601984985719209

`∑[A051696(n+1)/A066570(n+1)*A095996(n+1)]`
-/

namespace A280820.P11843601984985719209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051696 (n + 1) : ℚ) / (A066570 (n + 1) : ℚ) * (A095996 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280820.P11843601984985719209

/-! ## A280820.P2317521597018328328

`∑[A056855(n+1)/A093600(n+1)*A069220(n+1)]`
-/

namespace A280820.P2317521597018328328
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056855 (n + 1) : ℚ) / (A093600 (n + 1) : ℚ) * (A069220 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280820.P2317521597018328328

/-! ## A280820.P5294193299456383023

`∑[A062763(n+2)/A066570(n+1)*A095996(n+2)]`
-/

namespace A280820.P5294193299456383023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062763 (n + 2) : ℚ) / (A066570 (n + 1) : ℚ) * (A095996 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280820.P5294193299456383023

/-!
# A280821: Partial products of A001783.

The programs for A280821, there is no canonical definition to state claims against.
-/

/-! ## A280821.P13512592641075452796

`∏[A001783(n+1)]`
-/

namespace A280821.P13512592641075452796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280821.P13512592641075452796

/-! ## A280821.P13704099028528627824

`∏[(n+1)!/A066570(n+1)]`
-/

namespace A280821.P13704099028528627824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A066570 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280821.P13704099028528627824

/-! ## A280821.P298947771606508033

`∏[A216919(A001844(n))]`
-/

namespace A280821.P298947771606508033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216919 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280821.P298947771606508033

/-! ## A280821.P18343568083120514163

`∏[A216919(∑[A008574(n)])]`
-/

namespace A280821.P18343568083120514163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216919 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280821.P18343568083120514163

/-! ## A280821.P3282995550941998339

`a(A023443(n))*A001783(n+1)` with `a(0)=1`
-/

namespace A280821.P3282995550941998339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat * A001783 (n + 1)

end

end A280821.P3282995550941998339

/-!
# A280822: Expansion of phi(-x) * f(-x)^2 * f(-x^6)^3 in powers of x where phi(), chi(), f() are Ramanujan theta functions.

The programs for A280822, there is no canonical definition to state claims against.
-/

/-! ## A280822.P3581608834489989611

`-A122407(2*n+1)/3`
-/

namespace A280822.P3581608834489989611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A122407 (2 * n + 1) : ℚ) / 3)

end

end A280822.P3581608834489989611

/-! ## A280822.P1246260838330854183

`A122407(2*n+1)/A122407(A057979(2*n))`
-/

namespace A280822.P1246260838330854183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122407 (2 * n + 1) : ℚ) / (A122407 (A057979 (2 * n)).toNat : ℚ)

end

end A280822.P1246260838330854183

/-! ## A280822.P1409482760950270062

`A122407(2*n+1)/A122407(A266303(2*n))`
-/

namespace A280822.P1409482760950270062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122407 (2 * n + 1) : ℚ) / (A122407 (A266303 (2 * n)).toNat : ℚ)

end

end A280822.P1409482760950270062

/-! ## A280822.P5280610556008989303

`A122407(2*n+1)/A122407(A003484(2*n+1))`
-/

namespace A280822.P5280610556008989303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122407 (2 * n + 1) : ℚ) / (A122407 (A003484 (2 * n + 1)).toNat : ℚ)

end

end A280822.P5280610556008989303

/-! ## A280822.P3269022522956422611

`A116418(4*n+3)/6`
-/

namespace A280822.P3269022522956422611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116418 (4 * n + 3) : ℚ) / 6

end

end A280822.P3269022522956422611

/-! ## A280822.P14478848346133500332

`A208385(A016969(n))/6`
-/

namespace A280822.P14478848346133500332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208385 (A016969 n).toNat : ℚ) / 6

end

end A280822.P14478848346133500332

/-!
# A280823: Numbers with an odd number of digits and with an odd number of distinct digits.

The programs for A280823, there is no canonical definition to state claims against.
-/

/-! ## A280823.P16256407514384031284

`eq[0, A081603(A139337(n))]`
-/

namespace A280823.P16256407514384031284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280823.P16256407514384031284

/-! ## A280823.P7096333700857145978

`eq[0, A329647(A332550(n))]`
-/

namespace A280823.P7096333700857145978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329647 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280823.P7096333700857145978

/-! ## A280823.P861331613559283390

`A201982(A216556(n))`
-/

namespace A280823.P861331613559283390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201982 (A216556 n).toNat

end

end A280823.P861331613559283390

/-! ## A280823.P12822203560699276076

`A328447(A137667(n))`
-/

namespace A280823.P12822203560699276076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A137667 n).toNat

end

end A280823.P12822203560699276076

/-! ## A280823.P15353905640636578158

`∩[A043095(n+1), A201982(n+1)]`
-/

namespace A280823.P15353905640636578158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280823.P15353905640636578158

/-!
# A280825: Numbers with an odd number of digits and with an even number of distinct digits.

The programs for A280825, there is no canonical definition to state claims against.
-/

/-! ## A280825.P15686285987658607507

`A031955(n+82)`
-/

namespace A280825.P15686285987658607507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 82)

end

end A280825.P15686285987658607507

/-! ## A280825.P1334891892159367016

`comp[A266279(n+1)]`
-/

namespace A280825.P1334891892159367016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A280825.P1334891892159367016

/-! ## A280825.P12824335766060910296

`eq[5, dr(A139337(n))]`
-/

namespace A280825.P12824335766060910296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139337 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280825.P12824335766060910296

/-! ## A280825.P7033325941394099034

`comp[and(n, A320485(n))]`
-/

namespace A280825.P7033325941394099034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A320485 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A280825.P7033325941394099034

/-! ## A280825.P12045236803241011194

`floor(A291269(n+1)/10)`
-/

namespace A280825.P12045236803241011194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A291269 (n + 1) : ℚ) / 10⌋

end

end A280825.P12045236803241011194

/-! ## A280825.P2219479515781379623

`eq[4, round(A332550(n)/4)]`
-/

namespace A280825.P2219479515781379623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332550 n : ℚ) / 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280825.P2219479515781379623

/-! ## A280825.P7496695205900040149

`A210666(n+1)+char[(4*n+3)²²]`
-/

namespace A280825.P7496695205900040149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((4 * n + 3) ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280825.P7496695205900040149

/-! ## A280825.P1072018768187893109

`eq[2, A196564(A332550(n))]`
-/

namespace A280825.P1072018768187893109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280825.P1072018768187893109

/-! ## A280825.P772692485010328014

`eq[A107846(n), A124601(n)]`
-/

namespace A280825.P772692485010328014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280825.P772692485010328014

/-! ## A280825.P8680965165184663435

`lt[A227362(n), A151949(n)]`
-/

namespace A280825.P8680965165184663435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280825.P8680965165184663435

/-!
# A280826: Numbers with an even number of digits and with an odd number of distinct digits.

The programs for A280826, there is no canonical definition to state claims against.
-/

/-! ## A280826.P12601037448269258430

`A283871(n+1)+C(A333440(n+1), 99)`
-/

namespace A280826.P12601037448269258430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283871 (n + 1) + (Nat.choose (A333440 (n + 1)).toNat 99 : ℤ)

end

end A280826.P12601037448269258430

/-! ## A280826.P17679901490557652125

`A056524(n+1)+A014083(A001249(n))`
-/

namespace A280826.P17679901490557652125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1) + A014083 (A001249 n).toNat

end

end A280826.P17679901490557652125

/-! ## A280826.P5257538108906705573

`A056524(n+1)+A011672(A022014(n))`
-/

namespace A280826.P5257538108906705573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1) + A011672 (A022014 n).toNat

end

end A280826.P5257538108906705573

/-! ## A280826.P4171608765653877327

`A056524(n+1)+A038189(A013416(n))`
-/

namespace A280826.P4171608765653877327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1) + A038189 (A013416 n).toNat

end

end A280826.P4171608765653877327

/-! ## A280826.P8567087707447144080

`A287372(A000108(n))+A056524(n+1)`
-/

namespace A280826.P8567087707447144080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A000108 n).toNat + A056524 (n + 1)

end

end A280826.P8567087707447144080

/-!
# A280827: a(n) = A076649(n) - A055642(n).

The programs for A280827, the canonical program `A280827.P9212601761894822098` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280827 has offset 1).

The definition of A280827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280827.P9212601761894822098

`A076649(n+1)-A055642(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A280827

/-- `A076649(n+1)-A055642(n+1)` -/
def P9212601761894822098.Spec : Prop :=
  ∀ n, P9212601761894822098.a n = A280827 (n + 1)

theorem P9212601761894822098.correct : P9212601761894822098.Spec := by
  intro n
  simp only [A280827, Nat.add_sub_cancel]

end A280827

/-! ## A280827.P15230368218940542600

`A076649(n+1)-(A004216(n+1)+1)`
-/

namespace A280827.P15230368218940542600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1) - (A004216 (n + 1) + 1)

end

end A280827.P15230368218940542600

namespace A280827

/-- `A076649(n+1)-(A004216(n+1)+1)` -/
def P15230368218940542600.Spec : Prop :=
  ∀ n, P15230368218940542600.a n = A280827 (n + 1)

end A280827

/-! ## A280827.P17219521277647445518

`A095408(n+1)+A076649(A003557(n+1))`
-/

namespace A280827.P17219521277647445518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (n + 1) + A076649 (A003557 (n + 1)).toNat

end

end A280827.P17219521277647445518

namespace A280827

/-- `A095408(n+1)+A076649(A003557(n+1))` -/
def P17219521277647445518.Spec : Prop :=
  ∀ n, P17219521277647445518.a n = A280827 (n + 1)

end A280827

/-! ## A280827.P1455413360573889097

`A076649(n+1)-A004218(n+2)`
-/

namespace A280827.P1455413360573889097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1) - A004218 (n + 2)

end

end A280827.P1455413360573889097

namespace A280827

/-- `A076649(n+1)-A004218(n+2)` -/
def P1455413360573889097.Spec : Prop :=
  ∀ n, P1455413360573889097.a n = A280827 (n + 1)

end A280827

/-! ## A280827.P11626634580385348922

`A076649(n+1)-dr(A348783(n+1))`
-/

namespace A280827.P11626634580385348922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1) - (SequenceMachineLib.digitalRoot (A348783 (n + 1)) : ℤ)

end

end A280827.P11626634580385348922

namespace A280827

/-- `A076649(n+1)-dr(A348783(n+1))` -/
def P11626634580385348922.Spec : Prop :=
  ∀ n, P11626634580385348922.a n = A280827 (n + 1)

end A280827

/-! ## A280827.P2579321959653043780

`A076649(n+1)-A040001(A108576(n+1)/2)`
-/

namespace A280827.P2579321959653043780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1) - A040001 (SequenceMachineLib.roundAway ((A108576 (n + 1) : ℚ) / 2)).toNat

end

end A280827.P2579321959653043780

namespace A280827

/-- `A076649(n+1)-A040001(A108576(n+1)/2)` -/
def P2579321959653043780.Spec : Prop :=
  ∀ n, P2579321959653043780.a n = A280827 (n + 1)

end A280827

/-! ## A280827.P9604339376655722804

`A076649(n+1)-A040001(A108576(n+1))`
-/

namespace A280827.P9604339376655722804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1) - A040001 (A108576 (n + 1)).toNat

end

end A280827.P9604339376655722804

namespace A280827

/-- `A076649(n+1)-A040001(A108576(n+1))` -/
def P9604339376655722804.Spec : Prop :=
  ∀ n, P9604339376655722804.a n = A280827 (n + 1)

end A280827

/-!
# A280829: Number of partitions of n into two squarefree semiprimes.

The programs for A280829, there is no canonical definition to state claims against.
-/

/-! ## A280829.P11809121376517617608

`ceil(A280683(n+1)/2)`
-/

namespace A280829.P11809121376517617608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280683 (n + 1) : ℚ) / 2⌉

end

end A280829.P11809121376517617608

/-! ## A280829.P16397445840031384029

`A280832(n+1)/(n+1)`
-/

namespace A280829.P16397445840031384029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280832 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A280829.P16397445840031384029

/-! ## A280829.P15968085026147918249

`round(A280683(abs(1-n)+2)/2)`
-/

namespace A280829.P15968085026147918249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A280683 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 2)

end

end A280829.P15968085026147918249

/-! ## A280829.P6837879446798700859

`A110654(A280683(n+1))`
-/

namespace A280829.P6837879446798700859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A280683 (n + 1)).toNat

end

end A280829.P6837879446798700859

/-! ## A280829.P10570962425114347418

`A004526(A280683(n+1)+1)`
-/

namespace A280829.P10570962425114347418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A280683 (n + 1) + 1).toNat

end

end A280829.P10570962425114347418

/-! ## A280829.P6170872172989625108

`A123108(A280683(n+1)+1)`
-/

namespace A280829.P6170872172989625108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A280683 (n + 1) + 1).toNat

end

end A280829.P6170872172989625108

/-! ## A280829.P11882656669759078601

`A028242(xor(1, A280683(n+1)))`
-/

namespace A280829.P11882656669759078601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A280683 (n + 1))).toNat

end

end A280829.P11882656669759078601

/-! ## A280829.P17353759154013916500

`A280832(n+1)%A028310(n)`
-/

namespace A280829.P17353759154013916500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280832 (n + 1)) (A028310 n)

end

end A280829.P17353759154013916500

/-! ## A280829.P3371613062917642936

`ceil(acot(A000027(n+1))*A280832(n+1))`
-/

namespace A280829.P3371613062917642936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A000027 (n + 1) : ℝ) * (A280832 (n + 1) : ℝ)⌉

end

end A280829.P3371613062917642936

/-! ## A280829.P9256347445755544073

`round(acot(A065475(n+1))*A280832(n+1))`
-/

namespace A280829.P9256347445755544073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A065475 (n + 1) : ℝ) * (A280832 (n + 1) : ℝ))

end

end A280829.P9256347445755544073

/-! ## A280829.P12140020601630248025

`A005843(A280832(n+1))%A005408(n)`
-/

namespace A280829.P12140020601630248025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A280832 (n + 1)).toNat) (A005408 n)

end

end A280829.P12140020601630248025

/-! ## A280829.P11182189800702498224

`(A005843(A280832(n+1))-A000007(n))%(2*n+1)`
-/

namespace A280829.P11182189800702498224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A280832 (n + 1)).toNat - A000007 n) (2 * n + 1 : ℤ)

end

end A280829.P11182189800702498224

/-! ## A280829.P828403365679386641

`(A005843(A280832(n+1))-char[A016915(n)])%(2*n+1)`
-/

namespace A280829.P828403365679386641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016915 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A280832 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (2 * n + 1 : ℤ)

end

end A280829.P828403365679386641

/-!
# A280830: Number of partitions of n into two products-of-three-primes.

The programs for A280830, there is no canonical definition to state claims against.
-/

/-! ## A280830.P14839373292813530740

`A289025(A271831(n))`
-/

namespace A280830.P14839373292813530740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (A271831 n).toNat

end

end A280830.P14839373292813530740

/-! ## A280830.P12505942235595106666

`A275305(A074397(n+1)^A008612(n))`
-/

namespace A280830.P12505942235595106666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275305 (SequenceMachineLib.roundAway ((A074397 (n + 1) : ℚ) ^ (A008612 n : ℤ))).toNat

end

end A280830.P12505942235595106666

/-! ## A280830.P10912914626957160868

`A103675(lcm(A168077(n), A319700(n+1)))`
-/

namespace A280830.P10912914626957160868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 (Int.lcm (A168077 n) (A319700 (n + 1)))

end

end A280830.P10912914626957160868

/-! ## A280830.P10167424505310095651

`A069291(n+1)-A242718(A186974(n+5))`
-/

namespace A280830.P10167424505310095651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) - A242718 (A186974 (n + 5)).toNat

end

end A280830.P10167424505310095651

/-! ## A280830.P16701143912503980420

`val(A332462(A285001(n+1)), 10)`
-/

namespace A280830.P16701143912503980420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A332462 (A285001 (n + 1)).toNat).toNat 10

end

end A280830.P16701143912503980420

/-!
# A280831: Number of ways to write 8*n+7 as x^2 + y^2 + z^2 + w^2 with x^4 + 1680*y^3*z a square, where x,y,z,w are positive integers.

The programs for A280831, there is no canonical definition to state claims against.
-/

/-! ## A280831.P1859701794111285895

`A039953(A064989(2*(n+2))*A366168(n+2))`
-/

namespace A280831.P1859701794111285895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039953 (A064989 (2 * (n + 2)) * A366168 (n + 2)).toNat

end

end A280831.P1859701794111285895

/-! ## A280831.P16160776101693961807

`A166240(or(A001965(n), 4*n+1))`
-/

namespace A280831.P16160776101693961807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166240 (Int.lor (A001965 n) (4 * n + 1 : ℤ)).toNat

end

end A280831.P16160776101693961807

/-! ## A280831.P15676997191078948997

`A072078(A216031(floor(n*log2(6))+1))`
-/

namespace A280831.P15676997191078948997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A216031 (⌊(n : ℝ) * Real.logb 2 (6 : ℝ)⌋ + 1).toNat).toNat

end

end A280831.P15676997191078948997

/-! ## A280831.P5914747013769303817

`A337323(A017991(n)-A230128(n+1))`
-/

namespace A280831.P5914747013769303817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337323 (A017991 n - A230128 (n + 1)).toNat

end

end A280831.P5914747013769303817

/-! ## A280831.P9394401363230197884

`A166240(or(A016813(n), A037918(n+1)))`
-/

namespace A280831.P9394401363230197884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166240 (Int.lor (A016813 n) (A037918 (n + 1))).toNat

end

end A280831.P9394401363230197884

/-!
# A280832: Sum of the parts in the partitions of n into two squarefree semiprimes.

The programs for A280832, there is no canonical definition to state claims against.
-/

/-! ## A280832.P16069188106684536294

`(n+1)*A280829(n+1)`
-/

namespace A280832.P16069188106684536294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A280829 (n + 1)

end

end A280832.P16069188106684536294

/-! ## A280832.P15263583574688229476

`(n+1)*round(A280683(n+1)/2)`
-/

namespace A280832.P15263583574688229476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A280683 (n + 1) : ℚ) / 2)

end

end A280832.P15263583574688229476

/-! ## A280832.P10342854252935478704

`A280829(n+1)*A326178(n)`
-/

namespace A280832.P10342854252935478704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280829 (n + 1) * A326178 n

end

end A280832.P10342854252935478704

/-! ## A280832.P4792484373261266640

`(n+1)*A110654(A280683(n+1))`
-/

namespace A280832.P4792484373261266640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110654 (A280683 (n + 1)).toNat

end

end A280832.P4792484373261266640

/-! ## A280832.P18099688636455436095

`(n+1)*A004526(A280683(n+1)+1)`
-/

namespace A280832.P18099688636455436095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A280683 (n + 1) + 1).toNat

end

end A280832.P18099688636455436095

/-! ## A280832.P5749415838458395550

`(n+1)*A123108(A280683(n+1)+1)`
-/

namespace A280832.P5749415838458395550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123108 (A280683 (n + 1) + 1).toNat

end

end A280832.P5749415838458395550

/-! ## A280832.P7505229142780894443

`floor(A280829(n+1)/acot(A000027(n+1)))`
-/

namespace A280832.P7505229142780894443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280829 (n + 1) : ℝ) / SequenceMachineLib.acot (A000027 (n + 1) : ℝ)⌋

end

end A280832.P7505229142780894443

/-!
# A280833: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A280833, there is no canonical definition to state claims against.
-/

/-! ## A280833.P2373037356007713739

`A007088(A280835(n))`
-/

namespace A280833.P2373037356007713739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280835 n).toNat

end

end A280833.P2373037356007713739

/-! ## A280833.P9019120039762634777

`A185544(2*A280835(n))`
-/

namespace A280833.P9019120039762634777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280835 n).toNat

end

end A280833.P9019120039762634777

/-! ## A280833.P17901306500467764987

`A280565(A233249(n+1))^A022173(n)`
-/

namespace A280833.P17901306500467764987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280565 (A233249 (n + 1)).toNat : ℚ) ^ (A022173 n : ℤ)

end

end A280833.P17901306500467764987

/-!
# A280834: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A280834, there is no canonical definition to state claims against.
-/

/-! ## A280834.P824143610689088242

`A007088(A280836(n))`
-/

namespace A280834.P824143610689088242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280836 n).toNat

end

end A280834.P824143610689088242

/-! ## A280834.P15886647438844116293

`A185544(2*A280836(n))`
-/

namespace A280834.P15886647438844116293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280836 n).toNat

end

end A280834.P15886647438844116293

/-!
# A280835: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A280835, there is no canonical definition to state claims against.
-/

/-! ## A280835.P15865178335758807674

`A340988(A280568(n))+A280567(n)`
-/

namespace A280835.P15865178335758807674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A280568 n).toNat + 91) + A280567 n

end

end A280835.P15865178335758807674

/-! ## A280835.P879343863159445255

`or(A280567(n), A306550(A002447(n)))`
-/

namespace A280835.P879343863159445255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280567 n) (A306550 (A002447 n).toNat)

end

end A280835.P879343863159445255

/-! ## A280835.P11265788942677735201

`or(A280567(n), A333397(A320665(n+1)))`
-/

namespace A280835.P11265788942677735201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280567 n) (A333397 (A320665 (n + 1)).toNat)

end

end A280835.P11265788942677735201

/-! ## A280835.P3201533322504923254

`A280567(floor(A156951(3*n)/(A016876(2*(n+2))+1)+n))`
-/

namespace A280835.P3201533322504923254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280567 ⌊(A156951 (3 * n) : ℚ) / (A016876 (2 * (n + 2)) + 1 : ℚ) + (n : ℚ)⌋.toNat

end

end A280835.P3201533322504923254

/-!
# A280836: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 299", based on the 5-celled von Neumann neighborhood.

The programs for A280836, there is no canonical definition to state claims against.
-/

/-! ## A280836.P13699960919797368088

`or(A089858(A242426(n+1)), A280568(n))`
-/

namespace A280836.P13699960919797368088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089858 (A242426 (n + 1)).toNat) (A280568 n)

end

end A280836.P13699960919797368088

/-! ## A280836.P12397171513841887793

`or(A280568(n), A280579(A241456(n+1)))`
-/

namespace A280836.P12397171513841887793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280568 n) (A280579 (A241456 (n + 1)).toNat)

end

end A280836.P12397171513841887793

/-!
# A280837: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A280837, there is no canonical definition to state claims against.
-/

/-! ## A280837.P7942734412027344361

`A007088(A280839(n))`
-/

namespace A280837.P7942734412027344361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280839 n).toNat

end

end A280837.P7942734412027344361

/-! ## A280837.P13979638603023955786

`A007088(record[A302029(n+3)]-A282776(n+1))`
-/

namespace A280837.P13979638603023955786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A282776 (n + 1)).toNat

end

end A280837.P13979638603023955786

/-! ## A280837.P852112864602982040

`A007088(A095121(n+1)+1-A282776(n+1))`
-/

namespace A280837.P852112864602982040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 (n + 1) + (1 - A282776 (n + 1))).toNat

end

end A280837.P852112864602982040

/-! ## A280837.P1139815888413142241

`A256078(A282776(n+1))`
-/

namespace A280837.P1139815888413142241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A282776 (n + 1)).toNat

end

end A280837.P1139815888413142241

/-! ## A280837.P17010450193612669793

`A185544(2*A280839(n))`
-/

namespace A280837.P17010450193612669793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280839 n).toNat

end

end A280837.P17010450193612669793

/-!
# A280838: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A280838, there is no canonical definition to state claims against.
-/

/-! ## A280838.P14031299708432858348

`A007088(A280840(n))`
-/

namespace A280838.P14031299708432858348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280840 n).toNat

end

end A280838.P14031299708432858348

/-! ## A280838.P5866701730501940089

`A305989(A280839(n))`
-/

namespace A280838.P5866701730501940089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A280839 n).toNat

end

end A280838.P5866701730501940089

/-! ## A280838.P18146143372779737901

`A185544(2*A280840(n))`
-/

namespace A280838.P18146143372779737901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280840 n).toNat

end

end A280838.P18146143372779737901

/-! ## A280838.P15972477546818666151

`A185544(lcm(2, A280840(n)))`
-/

namespace A280838.P15972477546818666151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A280840 n))

end

end A280838.P15972477546818666151

/-! ## A280838.P7153392902006828559

`A305989(record[A302029(n+3)]-A282776(n+1))`
-/

namespace A280838.P7153392902006828559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A282776 (n + 1)).toNat

end

end A280838.P7153392902006828559

/-!
# A280839: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A280839, there is no canonical definition to state claims against.
-/

/-! ## A280839.P14122617003190621518

`∑[A000079(n+1)-Δ[A282776(n)]]`
-/

namespace A280839.P14122617003190621518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280839.P14122617003190621518

/-! ## A280839.P1358863188913525464

`record[A302029(n+3)]-A282776(n+1)`
-/

namespace A280839.P1358863188913525464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A282776 (n + 1)

end

end A280839.P1358863188913525464

/-! ## A280839.P7483839789217238895

`A095121(n+1)+1-A282776(n+1)`
-/

namespace A280839.P7483839789217238895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (n + 1) + (1 - A282776 (n + 1))

end

end A280839.P7483839789217238895

/-! ## A280839.P6313088908254775604

`record[A302029(A116966(n)+1)]%A282776(n+1)`
-/

namespace A280839.P6313088908254775604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (A116966 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282776 (n + 1))

end

end A280839.P6313088908254775604

/-! ## A280839.P7354372674006125531

`record[A302029(A008619(n)+2)]%A282776(n+1)`
-/

namespace A280839.P7354372674006125531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (A008619 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282776 (n + 1))

end

end A280839.P7354372674006125531

/-! ## A280839.P6447709245798468614

`record[A302029(A233583(n+1)+1)]%A282776(n+1)`
-/

namespace A280839.P6447709245798468614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (A233583 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282776 (n + 1))

end

end A280839.P6447709245798468614

/-!
# A280840: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 302", based on the 5-celled von Neumann neighborhood.

The programs for A280840, there is no canonical definition to state claims against.
-/

/-! ## A280840.P11248190488116676147

`A325401(A280839(n))`
-/

namespace A280840.P11248190488116676147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A280839 n).toNat

end

end A280840.P11248190488116676147

/-! ## A280840.P2779717788305805251

`A030101(lcm(2, A280839(n))/2)`
-/

namespace A280840.P2779717788305805251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((Int.lcm 2 (A280839 n) : ℚ) / 2)).toNat

end

end A280840.P2779717788305805251

/-! ## A280840.P16813686062940800641

`A325401(record[A302029(n+3)]-A282776(n+1))`
-/

namespace A280840.P16813686062940800641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A282776 (n + 1)).toNat

end

end A280840.P16813686062940800641

/-! ## A280840.P5928668984666582300

`A325401(A095121(n+1)+1-A282776(n+1))`
-/

namespace A280840.P5928668984666582300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A095121 (n + 1) + (1 - A282776 (n + 1))).toNat

end

end A280840.P5928668984666582300

/-! ## A280840.P13377392038337556643

`A030101(lcm(2, A280839(n)))`
-/

namespace A280840.P13377392038337556643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A280839 n))

end

end A280840.P13377392038337556643

/-!
# A280843: a(n) = A049502(sigma(n)).

The programs for A280843, the canonical program `A280843.P6908964579885282676` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280843 has offset 1).

The definition of A280843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280843.P6908964579885282676

`A049502(A000203(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A280843

/-- `A049502(A000203(n+1))` -/
def P6908964579885282676.Spec : Prop :=
  ∀ n, P6908964579885282676.a n = A280843 (n + 1)

theorem P6908964579885282676.correct : P6908964579885282676.Spec := by
  intro n
  simp only [A280843, Nat.add_sub_cancel]

end A280843

/-! ## A280843.P11683432286272725161

`A049502(∑{d}[n+1, #])`
-/

namespace A280843.P11683432286272725161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A280843.P11683432286272725161

namespace A280843

/-- `A049502(∑{d}[n+1, #])` -/
def P11683432286272725161.Spec : Prop :=
  ∀ n, P11683432286272725161.a n = A280843 (n + 1)

end A280843

/-! ## A280843.P785916858531558837

`A049502(A242962(n+1))`
-/

namespace A280843.P785916858531558837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A242962 (n + 1)).toNat

end

end A280843.P785916858531558837

namespace A280843

/-- `A049502(A242962(n+1))` -/
def P785916858531558837.Spec : Prop :=
  ∀ n, P785916858531558837.a n = A280843 (n + 1)

end A280843

/-! ## A280843.P14301326378138855382

`A049502(∑[A340793(n+1)])`
-/

namespace A280843.P14301326378138855382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280843.P14301326378138855382

namespace A280843

/-- `A049502(∑[A340793(n+1)])` -/
def P14301326378138855382.Spec : Prop :=
  ∀ n, P14301326378138855382.a n = A280843 (n + 1)

end A280843

/-! ## A280843.P13574110897054040895

`A049502(A001065(n+1)+1+n)`
-/

namespace A280843.P13574110897054040895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A280843.P13574110897054040895

namespace A280843

/-- `A049502(A001065(n+1)+1+n)` -/
def P13574110897054040895.Spec : Prop :=
  ∀ n, P13574110897054040895.a n = A280843 (n + 1)

end A280843

/-! ## A280843.P17567477824450406031

`A049502(A062354(n+1)/A067541(2*n+1))`
-/

namespace A280843.P17567477824450406031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (SequenceMachineLib.roundAway ((A062354 (n + 1) : ℚ) / (A067541 (2 * n + 1) : ℚ))).toNat

end

end A280843.P17567477824450406031

namespace A280843

/-- `A049502(A062354(n+1)/A067541(2*n+1))` -/
def P17567477824450406031.Spec : Prop :=
  ∀ n, P17567477824450406031.a n = A280843 (n + 1)

end A280843

/-!
# A280845: a(n) = 16^n * n * (n!)^4.

The programs for A280845, the canonical program `A280845.P2409155256928837505` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280845 has offset 0).

The definition of A280845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16^n*n*n!^4` (program `A280845.P2409155256928837505`, by `A280845.P2409155256928837505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280845.P2409155256928837505

`16^n*n*n!^4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A280845

/-- `16^n*n*n!^4` -/
def P2409155256928837505.Spec : Prop :=
  ∀ n, (P2409155256928837505.a n : ℤ) = A280845 n

theorem P2409155256928837505.correct : P2409155256928837505.Spec := by
  intro n
  simp only [A280845]

end A280845

/-! ## A280845.P16848698748623286545

`n*∏[floor(2/acot(n))²]²`
-/

namespace A280845.P16848698748623286545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A280845.P16848698748623286545

namespace A280845

/-- `n*∏[floor(2/acot(n))²]²` -/
def P16848698748623286545.Spec : Prop :=
  ∀ n, P16848698748623286545.a n = A280845 n

end A280845

/-! ## A280845.P13980105226845128170

`n*∏[log2(lcm(2, 4^n))]²²`
-/

namespace A280845.P13980105226845128170
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * ((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A280845.P13980105226845128170

namespace A280845

/-- `n*∏[log2(lcm(2, 4^n))]²²` -/
def P13980105226845128170.Spec : Prop :=
  ∀ n, P13980105226845128170.a n = (A280845 n : ℝ)

end A280845

/-! ## A280845.P2759555198545944685

`n*∏[(floor(acot(n))+2*n)²]²`
-/

namespace A280845.P2759555198545944685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A280845.P2759555198545944685

namespace A280845

/-- `n*∏[(floor(acot(n))+2*n)²]²` -/
def P2759555198545944685.Spec : Prop :=
  ∀ n, P2759555198545944685.a n = A280845 n

end A280845

/-! ## A280845.P12699038792405749529

`n*A002454(n)²`
-/

namespace A280845.P12699038792405749529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002454 n ^ 2

end

end A280845.P12699038792405749529

namespace A280845

/-- `n*A002454(n)²` -/
def P12699038792405749529.Spec : Prop :=
  ∀ n, P12699038792405749529.a n = A280845 n

end A280845

/-!
# A280847: Number of directed Hamiltonian cycles in the n-folded cube graph.

The programs for A280847, there is no canonical definition to state claims against.
-/

/-! ## A280847.P549299618896906059

`2*A307925(n+2)`
-/

namespace A280847.P549299618896906059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307925 (n + 2)

end

end A280847.P549299618896906059

/-!
# A280851: Irregular triangle read by rows in which row n lists the subparts of the symmetric representation of sigma(n), ordered by order of appearance in the structure, from left to right.

The programs for A280851, there is no canonical definition to state claims against.
-/

/-! ## A280851.P14168638619254718110

`A296508(record[(n+1)%(A296508(n+1)+n+1)])`
-/

namespace A280851.P14168638619254718110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A296508 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296508 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280851.P14168638619254718110

/-! ## A280851.P1934525848660732060

`A279391(n+1)%A082111(A115085(n))`
-/

namespace A280851.P1934525848660732060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279391 (n + 1)) (A082111 (A115085 n).toNat)

end

end A280851.P1934525848660732060

/-! ## A280851.P17891009951377072674

`gcd(A061358(A185037(n)), A279391(n+1))`
-/

namespace A280851.P17891009951377072674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061358 (A185037 n).toNat) (A279391 (n + 1))

end

end A280851.P17891009951377072674

/-! ## A280851.P1168337802389105558

`A279391(A090106(n+1))`
-/

namespace A280851.P1168337802389105558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279391 (A090106 (n + 1)).toNat

end

end A280851.P1168337802389105558

/-! ## A280851.P10862753185671744286

`A279391(n+1)+A000007(A066739(n))`
-/

namespace A280851.P10862753185671744286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279391 (n + 1) + A000007 (A066739 n).toNat

end

end A280851.P10862753185671744286

/-!
# A280852: Number of n X n 0..2 arrays with no element equal to more than one of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280852, there is no canonical definition to state claims against.
-/

/-! ## A280852.P228689444214874625

`A280859(∑[4*n]+1)`
-/

namespace A280852.P228689444214874625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280852.P228689444214874625

/-! ## A280852.P15862000764119077291

`record[A003982(n)*A280859(n+1)]`
-/

namespace A280852.P15862000764119077291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A280859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280852.P15862000764119077291

/-! ## A280852.P772541943544694037

`record[gcd(A080232(n), A280859(n+1))]`
-/

namespace A280852.P772541943544694037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080232 n) (A280859 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280852.P772541943544694037

/-! ## A280852.P10213414408946659872

`record[A077606(n+1)*A280859(n+1)]`
-/

namespace A280852.P10213414408946659872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A280859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280852.P10213414408946659872

/-! ## A280852.P8483311274499859130

`A014963(32*n+14)*A280859(A001844(n))`
-/

namespace A280852.P8483311274499859130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (32 * n + 14) * A280859 (A001844 n).toNat

end

end A280852.P8483311274499859130

/-!
# A280853: Number of n X 2 0..2 arrays with no element equal to more than one of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280853, the canonical program `A280853.P8450922974818610694` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280853 has offset 1).

The definition of A280853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280853.P8450922974818610694

`4*a(n-1)-2*a(n-2)+8*a(n-3)-8*a(n-4)` with `a(0)=2, a(1)=9, a(2)=29, a(3)=110, a(4)=442`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A280853

/-- `4*a(n-1)-2*a(n-2)+8*a(n-3)-8*a(n-4)` -/
def P8450922974818610694.Spec : Prop :=
  ∀ n, P8450922974818610694.a n = A280853 (n + 1)

theorem P8450922974818610694.correct : P8450922974818610694.Spec := by
  intro n
  simp only [A280853, Nat.add_sub_cancel]

end A280853

/-! ## A280853.P9008957984408637464

`A280859(A133263(n+1))`
-/

namespace A280853.P9008957984408637464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A133263 (n + 1)).toNat

end

end A280853.P9008957984408637464

namespace A280853

/-- `A280859(A133263(n+1))` -/
def P9008957984408637464.Spec : Prop :=
  ∀ n, P9008957984408637464.a n = A280853 (n + 1)

end A280853

/-! ## A280853.P13907313811501941742

`A280859(A373662(n+1))`
-/

namespace A280853.P13907313811501941742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A373662 (n + 1)).toNat

end

end A280853.P13907313811501941742

namespace A280853

/-- `A280859(A373662(n+1))` -/
def P13907313811501941742.Spec : Prop :=
  ∀ n, P13907313811501941742.a n = A280853 (n + 1)

end A280853

/-! ## A280853.P18265431106072344073

`A280859(A000096(n)+3)`
-/

namespace A280853.P18265431106072344073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A000096 n + 3).toNat

end

end A280853.P18265431106072344073

namespace A280853

/-- `A280859(A000096(n)+3)` -/
def P18265431106072344073.Spec : Prop :=
  ∀ n, P18265431106072344073.a n = A280853 (n + 1)

end A280853

/-! ## A280853.P14106953175135555281

`A280859(A000124(n+1)+1)`
-/

namespace A280853.P14106953175135555281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A000124 (n + 1) + 1).toNat

end

end A280853.P14106953175135555281

namespace A280853

/-- `A280859(A000124(n+1)+1)` -/
def P14106953175135555281.Spec : Prop :=
  ∀ n, P14106953175135555281.a n = A280853 (n + 1)

end A280853

/-!
# A280854: Number of n X 3 0..2 arrays with no element equal to more than one of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280854, there is no canonical definition to state claims against.
-/

/-! ## A280854.P2370053515009141496

`A280859(A167614(n+1))`
-/

namespace A280854.P2370053515009141496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A167614 (n + 1)).toNat

end

end A280854.P2370053515009141496

/-! ## A280854.P7690411343715223289

`A280859(A373663(n+1))`
-/

namespace A280854.P7690411343715223289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A373663 (n + 1)).toNat

end

end A280854.P7690411343715223289

/-! ## A280854.P6116528351548191279

`A280859(A055998(n)+6)`
-/

namespace A280854.P6116528351548191279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A055998 n + 6).toNat

end

end A280854.P6116528351548191279

/-! ## A280854.P11737533805006338145

`A280859(A046691(n)+7)`
-/

namespace A280854.P11737533805006338145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A046691 n + 7).toNat

end

end A280854.P11737533805006338145

/-! ## A280854.P2699569579599632166

`A280859(A167499(n)+n)`
-/

namespace A280854.P2699569579599632166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A167499 n + (n : ℤ)).toNat

end

end A280854.P2699569579599632166

/-!
# A280855: Number of nX4 0..2 arrays with no element equal to more than one of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280855, there is no canonical definition to state claims against.
-/

/-! ## A280855.P9293680187959359343

`A280859(A374004(n+1))`
-/

namespace A280855.P9293680187959359343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A374004 (n + 1)).toNat

end

end A280855.P9293680187959359343

/-! ## A280855.P14697229824787218409

`A280859(A052905(n)+9)`
-/

namespace A280855.P14697229824787218409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A052905 n + 9).toNat

end

end A280855.P14697229824787218409

/-! ## A280855.P10640493252979482121

`A280859(A167614(n+2)+1)`
-/

namespace A280855.P10640493252979482121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A167614 (n + 2) + 1).toNat

end

end A280855.P10640493252979482121

/-! ## A280855.P17398065990032489706

`A280859(A167487(n+2)-3)`
-/

namespace A280855.P17398065990032489706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A167487 (n + 2) - 3).toNat

end

end A280855.P17398065990032489706

/-! ## A280855.P15165845645726317137

`A280859(A055998(n+1)+7)`
-/

namespace A280855.P15165845645726317137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A055998 (n + 1) + 7).toNat

end

end A280855.P15165845645726317137

/-!
# A280856: Number of nX5 0..2 arrays with no element equal to more than one of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280856, there is no canonical definition to state claims against.
-/

/-! ## A280856.P9710206312600684144

`A280859(A374005(n+1))`
-/

namespace A280856.P9710206312600684144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A374005 (n + 1)).toNat

end

end A280856.P9710206312600684144

/-! ## A280856.P13259937458026742666

`A280859(A167499(n+3))`
-/

namespace A280856.P13259937458026742666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A167499 (n + 3)).toNat

end

end A280856.P13259937458026742666

/-! ## A280856.P2428028005733377457

`A280859(A000124(n+4)+4)`
-/

namespace A280856.P2428028005733377457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A000124 (n + 4) + 4).toNat

end

end A280856.P2428028005733377457

/-! ## A280856.P9718279152553847181

`A280859(A055998(n+2)+8)`
-/

namespace A280856.P9718279152553847181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A055998 (n + 2) + 8).toNat

end

end A280856.P9718279152553847181

/-! ## A280856.P1694484384510134394

`A280859(A046691(n+2)+9)`
-/

namespace A280856.P1694484384510134394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A046691 (n + 2) + 9).toNat

end

end A280856.P1694484384510134394

/-!
# A280857: Number of nX6 0..2 arrays with no element equal to more than one of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280857, there is no canonical definition to state claims against.
-/

/-! ## A280857.P4955928045177042526

`A280859(A374007(n+1))`
-/

namespace A280857.P4955928045177042526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A374007 (n + 1)).toNat

end

end A280857.P4955928045177042526

/-! ## A280857.P15108058105573230059

`A280859(A000124(n+5)+5)`
-/

namespace A280857.P15108058105573230059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A000124 (n + 5) + 5).toNat

end

end A280857.P15108058105573230059

/-! ## A280857.P14479231862364636559

`A280859(A052905(n+2)+11)`
-/

namespace A280857.P14479231862364636559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A052905 (n + 2) + 11).toNat

end

end A280857.P14479231862364636559

/-! ## A280857.P1420470369204706131

`A280859(Δ[A023545(n+1)]+10)`
-/

namespace A280857.P1420470369204706131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (f1 (n + 1) - f1 n + 10).toNat

end

end A280857.P1420470369204706131

/-! ## A280857.P3453599188938268190

`A280859(Δ[A060488(n+5)]-(2*n+1))`
-/

namespace A280857.P3453599188938268190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A280857.P3453599188938268190

/-!
# A280858: Number of nX7 0..2 arrays with no element equal to more than one of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280858, there is no canonical definition to state claims against.
-/

/-! ## A280858.P10398783400365037080

`A280859(A374008(n+1))`
-/

namespace A280858.P10398783400365037080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A374008 (n + 1)).toNat

end

end A280858.P10398783400365037080

/-! ## A280858.P12342571827348538482

`A280859(A000217(n+6)+7)`
-/

namespace A280858.P12342571827348538482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A000217 (n + 6) + 7).toNat

end

end A280858.P12342571827348538482

/-! ## A280858.P509155024603730368

`A280859(eq[6, A002262(n)]+1)`
-/

namespace A280858.P509155024603730368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A280858.P509155024603730368

/-! ## A280858.P3877805534142038696

`A280859(A167487(A020710(n)))`
-/

namespace A280858.P3877805534142038696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A167487 (A020710 n).toNat).toNat

end

end A280858.P3877805534142038696

/-! ## A280858.P13164817258674652407

`A280859(A055999(n+4))`
-/

namespace A280858.P13164817258674652407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280859 (A055999 (n + 4)).toNat

end

end A280858.P13164817258674652407

/-!
# A280860: Expansion of Product_{k>=1} ((1-x^(3*k)) * (1-x^(12*k)) / ((1-x^(6*k-5)) * (1-x^(6*k-1)) * (1-x^(4*k)))).

The programs for A280860, there is no canonical definition to state claims against.
-/

/-! ## A280860.P2844892202707901964

`∑{digits}[A325256(n), A261718(#)]`
-/

namespace A280860.P2844892202707901964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A261718 x).sum

end

end A280860.P2844892202707901964

/-! ## A280860.P4935140800234354118

`∑{digits}[A325256(n), A261780(#)]`
-/

namespace A280860.P4935140800234354118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A261780 x).sum

end

end A280860.P4935140800234354118

/-! ## A280860.P14071271076132154957

`∑{digits}[A325256(n), A342120(#)]`
-/

namespace A280860.P14071271076132154957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A342120 x).sum

end

end A280860.P14071271076132154957

/-! ## A280860.P16019529514932888470

`A137900(A018252(n+1)%A242128(n+1))`
-/

namespace A280860.P16019529514932888470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137900 (Int.tmod (A018252 (n + 1)) (A242128 (n + 1))).toNat

end

end A280860.P16019529514932888470

/-!
# A280861: Numbers k such that (4*10^k + 83)/3 is prime.

The programs for A280861, there is no canonical definition to state claims against.
-/

/-! ## A280861.P11603074335512373268

`eq[A124560(n), A333528(A300245(n+4))]`
-/

namespace A280861.P11603074335512373268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333528 (A300245 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280861.P11603074335512373268

/-! ## A280861.P16275027088058269603

`eq[A000005(3*n+2), A000122(A026082(n+3))]`
-/

namespace A280861.P16275027088058269603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A026082 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280861.P16275027088058269603

/-! ## A280861.P5077811545224653396

`lt[A006530(A049748(n+2)), 12]`
-/

namespace A280861.P5077811545224653396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049748 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A280861.P5077811545224653396

/-! ## A280861.P575636891131849092

`record[A247282(n²)%A052938(n)]`
-/

namespace A280861.P575636891131849092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247282 (n ^ 2)) (A052938 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280861.P575636891131849092

/-! ## A280861.P5557581592881004698

`lt[A003071(A341946(n+3)), A055620(2*n)]`
-/

namespace A280861.P5557581592881004698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A341946 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055620 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280861.P5557581592881004698

/-!
# A280862: Numbers n such that A258409(n) * A002322(n) = A000010(n), where A258409(1) = 1.

The programs for A280862, there is no canonical definition to state claims against.
-/

/-! ## A280862.P7641378380176525001

`eq[A000035(n), A010894(A046146(n))]`
-/

namespace A280862.P7641378380176525001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A046146 n).toNat + 21)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280862.P7641378380176525001

/-!
# A280863: Expansion of 1/(1 - Sum_{k>=0} x^((2*k+1)^2)).

The programs for A280863, there is no canonical definition to state claims against.
-/

/-! ## A280863.P4929979434014455955

`A322856(n)+A006924(A185037(n))`
-/

namespace A280863.P4929979434014455955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322856 n + A006924 (A185037 n).toNat

end

end A280863.P4929979434014455955

/-! ## A280863.P4636042139954603706

`gcd(A322855(n)!, A322856(n))`
-/

namespace A280863.P4636042139954603706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A322855 n).toNat : ℤ) (A322856 n)

end

end A280863.P4636042139954603706

/-! ## A280863.P15169657649625906742

`A322856(n)%A001214(n+1)`
-/

namespace A280863.P15169657649625906742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322856 n) (A001214 (n + 1))

end

end A280863.P15169657649625906742

/-! ## A280863.P16687778297661469788

`∑[A017903(n)%A163863(n+1)]`
-/

namespace A280863.P16687778297661469788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017903 n) (A163863 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280863.P16687778297661469788

/-! ## A280863.P16365649557842729565

`A322856(n)+A000038(A068921(n))`
-/

namespace A280863.P16365649557842729565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322856 n + A000038 (A068921 n).toNat

end

end A280863.P16365649557842729565

/-!
# A280864: Lexicographically earliest infinite sequence of distinct positive terms such that, for any prime p, any run of consecutive multiples of p has length exactly 2.

The programs for A280864, there is no canonical definition to state claims against.
-/

/-! ## A280864.P959332204889393362

`A338359(n)+a(n-1)` with `a(0)=1`
-/

namespace A280864.P959332204889393362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338359 n + a (n - 1)

end

end A280864.P959332204889393362

/-! ## A280864.P16078771765011649626

`∑[A338359(A028310(n))]`
-/

namespace A280864.P16078771765011649626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280864.P16078771765011649626

/-! ## A280864.P11247742648341842297

`∑[A338359(and(1, A096727(n))+n)]`
-/

namespace A280864.P11247742648341842297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (Int.land 1 (A096727 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280864.P11247742648341842297

/-! ## A280864.P12066966865257398541

`A372063(n+1)+A280866(n+1)`
-/

namespace A280864.P12066966865257398541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372063 (n + 1) + A280866 (n + 1)

end

end A280864.P12066966865257398541

/-! ## A280864.P321675875383828808

`∑[A338359(n+1)]+1-A338359(n+1)`
-/

namespace A280864.P321675875383828808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A338359 (n + 1))

end

end A280864.P321675875383828808

/-! ## A280864.P9905944921274636146

`∑[A338359(A123108(2*n))]`
-/

namespace A280864.P9905944921274636146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280864.P9905944921274636146

/-! ## A280864.P12232478157632140783

`∑[A338359(A008621(A111284(n+1)))]`
-/

namespace A280864.P12232478157632140783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (A008621 (A111284 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280864.P12232478157632140783

/-! ## A280864.P1357396135232664957

`∑[A338359(A007318(A000124(n)))]`
-/

namespace A280864.P1357396135232664957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280864.P1357396135232664957

/-!
# A280865: Expansion of 1/(1 - Sum_{k>=0} x^((2*k+1)^3)).

The programs for A280865, there is no canonical definition to state claims against.
-/

/-! ## A280865.P7148817709406600432

`∑[A287091(n)-A287091(A098175(a(n-1)+1))]` with `a(0)=1`
-/

namespace A280865.P7148817709406600432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A287091 n - A287091 (A098175 (f1 (n - 1) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280865.P7148817709406600432

/-! ## A280865.P17672748073120261436

`∑[log2(A287091(n))^∑[n]]`
-/

namespace A280865.P17672748073120261436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A287091 n : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280865.P17672748073120261436

/-! ## A280865.P10295444398652132009

`∑[A010892(A292563(n)!)]`
-/

namespace A280865.P10295444398652132009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (Nat.factorial (A292563 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280865.P10295444398652132009

/-! ## A280865.P4646275048866555549

`∑[A000290((A287091(n)-1)^n)]`
-/

namespace A280865.P4646275048866555549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((A287091 n - 1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280865.P4646275048866555549

/-! ## A280865.P732307528953785222

`∑[A009227(A048766(n)%A177763(n+2))]`
-/

namespace A280865.P732307528953785222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009227 (Int.tmod (A048766 n) (A177763 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280865.P732307528953785222

/-! ## A280865.P10740904948459847870

`lt[A001057(n+2), A022996(n)]-A023443(n)`
-/

namespace A280865.P10740904948459847870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - A023443 n

end

end A280865.P10740904948459847870

/-!
# A280866: Lexicographically earliest sequence of distinct terms such that, for any prime p, any run of consecutive multiples of p has at least length 2.

The programs for A280866, there is no canonical definition to state claims against.
-/

/-! ## A280866.P7631812448733522437

`A280864(n+1)-A372063(n+1)`
-/

namespace A280866.P7631812448733522437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1) - A372063 (n + 1)

end

end A280866.P7631812448733522437

/-! ## A280866.P4681799855865470532

`∑[A338359(A028310(n))]-A372063(n+1)`
-/

namespace A280866.P4681799855865470532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A372063 (n + 1)

end

end A280866.P4681799855865470532

/-! ## A280866.P7349662227095401873

`∑[A338359(A123108(2*n))]-A372063(n+1)`
-/

namespace A280866.P7349662227095401873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A372063 (n + 1)

end

end A280866.P7349662227095401873

/-!
# A280867: Least k such that k is the sum of two totient numbers (A002202) in exactly n ways, or 0 if no such k exists.

The programs for A280867, there is no canonical definition to state claims against.
-/

/-! ## A280867.P9853281928019754831

`A008458(n)+A007920(A119786(n+1))`
-/

namespace A280867.P9853281928019754831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + A007920 (A119786 (n + 1)).toNat

end

end A280867.P9853281928019754831

/-!
# A280869: Expansion of E_6(q)^2 in powers of q.

The programs for A280869, there is no canonical definition to state claims against.
-/

/-! ## A280869.P11823424178786053598

`A008408(n)+A008702(n)-A008688(n)`
-/

namespace A280869.P11823424178786053598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008408 n + (A008702 n - A008688 n)

end

end A280869.P11823424178786053598

/-! ## A280869.P14230640992232238694

`A008703(n)+A056947(n)-A008688(n)`
-/

namespace A280869.P14230640992232238694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008703 n + (A056947 n - A008688 n)

end

end A280869.P14230640992232238694

/-! ## A280869.P203778986558548456

`2*A008697(n)-A008691(n)+A008702(n)-A008688(n)`
-/

namespace A280869.P203778986558548456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008691 n + (A008702 n - A008688 n)

end

end A280869.P203778986558548456

/-! ## A280869.P8060686786724927857

`2*A008698(n)-A008692(n)+A008702(n)-A008688(n)`
-/

namespace A280869.P8060686786724927857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008692 n + (A008702 n - A008688 n)

end

end A280869.P8060686786724927857

/-! ## A280869.P11745522589266644920

`2*A008703(n)-A008700(n)+A008702(n)-A008688(n)`
-/

namespace A280869.P11745522589266644920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008703 n - A008700 n + (A008702 n - A008688 n)

end

end A280869.P11745522589266644920

/-! ## A280869.P10869800203204850165

`2*A008704(n)-A008688(n)`
-/

namespace A280869.P10869800203204850165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008704 n - A008688 n

end

end A280869.P10869800203204850165

/-! ## A280869.P15045021018273400701

`A056946(4*n)+A008702(n)-A008688(n)`
-/

namespace A280869.P15045021018273400701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056946 (4 * n) + (A008702 n - A008688 n)

end

end A280869.P15045021018273400701

/-!
# A280870: Numerator of the mediant of prime(n) / prime(n+1) and prime(n+2) / prime(n+3).

The programs for A280870, the canonical program `A280870.P3114633600401885937` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280870 has offset 1).

The definition of A280870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280870.P3114633600401885937

`lcm(A048448(n+2), A048448(n+3))/A048448(n+3)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280870

/-- `lcm(A048448(n+2), A048448(n+3))/A048448(n+3)` -/
def P3114633600401885937.Spec : Prop :=
  ∀ n, P3114633600401885937.a n = (A280870 (n + 1) : ℚ)

end A280870

/-!
# A280871: Denominator of the mediant of prime(n) / prime(n+1) and prime(n+2) / prime(n+3).

The programs for A280871, the canonical program `A280871.P12402160092927728937` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280871 has offset 1).

The definition of A280871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280871.P12402160092927728937

`lcm(A048448(n+2), A048448(n+3))/A048448(n+2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280871

/-- `lcm(A048448(n+2), A048448(n+3))/A048448(n+2)` -/
def P12402160092927728937.Spec : Prop :=
  ∀ n, P12402160092927728937.a n = (A280871 (n + 1) : ℚ)

end A280871

/-!
# A280872: Primes that have exactly 7 zeros and 7 ones in their binary expansion.

The programs for A280872, there is no canonical definition to state claims against.
-/

/-! ## A280872.P7479837911796334376

`A066196(n+53)`
-/

namespace A280872.P7479837911796334376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066196 (n + 53)

end

end A280872.P7479837911796334376

/-!
# A280873: Numbers whose binary expansion does not begin 10 and does not contain 2 adjacent 0's; Ahnentafel numbers of X-chromosome inheritance of a male.

The programs for A280873, the canonical program `A280873.P97774756625147265` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280873 has offset 0).

The definition of A280873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280873.P4201096602725312200

`eq[A267584(n), A324183(n)]`
-/

namespace A280873.P4201096602725312200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280873.P4201096602725312200

namespace A280873

/-- `eq[A267584(n), A324183(n)]` -/
def P4201096602725312200.Spec : Prop :=
  ∀ n, (P4201096602725312200.a n : ℤ) = A280873 n

end A280873

/-! ## A280873.P97774756625147265

`∩[A004760(n+1), A107909(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A280873

/-- `∩[A004760(n+1), A107909(n)]` -/
def P97774756625147265.Spec : Prop :=
  ∀ n, (P97774756625147265.a n : ℤ) = A280873 n

theorem P97774756625147265.correct : P97774756625147265.Spec := by
  intro n
  simp only [A280873]

end A280873

/-! ## A280873.P6512846135089219682

`∩[A003754(n+1), A004760(n+1)]`
-/

namespace A280873.P6512846135089219682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280873.P6512846135089219682

namespace A280873

/-- `∩[A003754(n+1), A004760(n+1)]` -/
def P6512846135089219682.Spec : Prop :=
  ∀ n, (P6512846135089219682.a n : ℤ) = A280873 n

end A280873

/-! ## A280873.P15456495561726620410

`A088697(A358654(n))`
-/

namespace A280873.P15456495561726620410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088697 (A358654 n).toNat

end

end A280873.P15456495561726620410

namespace A280873

/-- `A088697(A358654(n))` -/
def P15456495561726620410.Spec : Prop :=
  ∀ n, P15456495561726620410.a n = A280873 n

end A280873

/-! ## A280873.P4107225215770379283

`record[or(A032766(n), A292272(n))]`
-/

namespace A280873.P4107225215770379283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032766 n) (A292272 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280873.P4107225215770379283

namespace A280873

/-- `record[or(A032766(n), A292272(n))]` -/
def P4107225215770379283.Spec : Prop :=
  ∀ n, P4107225215770379283.a n = A280873 n

end A280873

/-! ## A280873.P13618137938985294484

`2*A180200(A060142(n))-A060142(n)`
-/

namespace A280873.P13618137938985294484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180200 (A060142 n).toNat - A060142 n

end

end A280873.P13618137938985294484

namespace A280873

/-- `2*A180200(A060142(n))-A060142(n)` -/
def P13618137938985294484.Spec : Prop :=
  ∀ n, P13618137938985294484.a n = A280873 n

end A280873

/-! ## A280873.P13245296286100630914

`record[A180200(A063946(n))]`
-/

namespace A280873.P13245296286100630914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A063946 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280873.P13245296286100630914

namespace A280873

/-- `record[A180200(A063946(n))]` -/
def P13245296286100630914.Spec : Prop :=
  ∀ n, P13245296286100630914.a n = A280873 n

end A280873

/-! ## A280873.P3567148210074948936

`record[A335858(A030101(n))]`
-/

namespace A280873.P3567148210074948936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A030101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280873.P3567148210074948936

namespace A280873

/-- `record[A335858(A030101(n))]` -/
def P3567148210074948936.Spec : Prop :=
  ∀ n, P3567148210074948936.a n = A280873 n

end A280873

/-! ## A280873.P9677338916744277566

`record[A341916(A056539(n))]`
-/

namespace A280873.P9677338916744277566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A056539 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280873.P9677338916744277566

namespace A280873

/-- `record[A341916(A056539(n))]` -/
def P9677338916744277566.Spec : Prop :=
  ∀ n, P9677338916744277566.a n = A280873 n

end A280873

/-! ## A280873.P7613739254511035933

`record[or(n, A002264(A054429(n+1)+1))]`
-/

namespace A280873.P7613739254511035933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A002264 (A054429 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280873.P7613739254511035933

namespace A280873

/-- `record[or(n, A002264(A054429(n+1)+1))]` -/
def P7613739254511035933.Spec : Prop :=
  ∀ n, P7613739254511035933.a n = A280873 n

end A280873

/-! ## A280873.P9567542808635715696

`record[A180200(2*n)-n]`
-/

namespace A280873.P9567542808635715696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280873.P9567542808635715696

namespace A280873

/-- `record[A180200(2*n)-n]` -/
def P9567542808635715696.Spec : Prop :=
  ∀ n, P9567542808635715696.a n = A280873 n

end A280873

/-! ## A280873.P6820579696555705971

`record[A035327(xor(n, A038572(n)+1+n))]`
-/

namespace A280873.P6820579696555705971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.xor (n : ℤ) (A038572 n + 1 + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280873.P6820579696555705971

namespace A280873

/-- `record[A035327(xor(n, A038572(n)+1+n))]` -/
def P6820579696555705971.Spec : Prop :=
  ∀ n, P6820579696555705971.a n = A280873 n

end A280873

/-! ## A280873.P6779405659909672809

`lt[A087117(2*n+1)²², A090996(2*n+1)]`
-/

namespace A280873.P6779405659909672809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087117 (2 * n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280873.P6779405659909672809

namespace A280873

/-- `lt[A087117(2*n+1)²², A090996(2*n+1)]` -/
def P6779405659909672809.Spec : Prop :=
  ∀ n, (P6779405659909672809.a n : ℤ) = A280873 n

end A280873

/-! ## A280873.P9416558692734629256

`record[A154435(n)]`
-/

namespace A280873.P9416558692734629256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280873.P9416558692734629256

namespace A280873

/-- `record[A154435(n)]` -/
def P9416558692734629256.Spec : Prop :=
  ∀ n, P9416558692734629256.a n = A280873 n

end A280873

/-! ## A280873.P11842420230941740408

`eq[A154436(n), A292264(n)]`
-/

namespace A280873.P11842420230941740408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280873.P11842420230941740408

namespace A280873

/-- `eq[A154436(n), A292264(n)]` -/
def P11842420230941740408.Spec : Prop :=
  ∀ n, (P11842420230941740408.a n : ℤ) = A280873 n

end A280873

/-! ## A280873.P10017059149373016051

`record[A006068(A154436(A006068(n)))]`
-/

namespace A280873.P10017059149373016051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A154436 (A006068 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280873.P10017059149373016051

namespace A280873

/-- `record[A006068(A154436(A006068(n)))]` -/
def P10017059149373016051.Spec : Prop :=
  ∀ n, P10017059149373016051.a n = A280873 n

end A280873

/-! ## A280873.P526714067750522274

`record[A165199(A233279(n))]`
-/

namespace A280873.P526714067750522274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A233279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280873.P526714067750522274

namespace A280873

/-- `record[A165199(A233279(n))]` -/
def P526714067750522274.Spec : Prop :=
  ∀ n, P526714067750522274.a n = A280873 n

end A280873

/-!
# A280874: Expansion of Product_{k>=1} (1 - x^(6*k)) * (1 + x^k) / (1 - x^k).

The programs for A280874, there is no canonical definition to state claims against.
-/

/-! ## A280874.P16908887193784654381

`A070106(Δ[Δ[A070070(2*n)]])`
-/

namespace A280874.P16908887193784654381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070070 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (f1 (n + 1) - f1 n).toNat

end

end A280874.P16908887193784654381

/-! ## A280874.P984487061823037165

`A134131(6*n)%A134102(n+2)`
-/

namespace A280874.P984487061823037165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134131 (6 * n)) (A134102 (n + 2))

end

end A280874.P984487061823037165

/-! ## A280874.P415745884611466385

`∑[A085736(A309173(n))]`
-/

namespace A280874.P415745884611466385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A309173 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280874.P415745884611466385

/-! ## A280874.P5623193146302448258

`A134131(6*A004916(n+1))`
-/

namespace A280874.P5623193146302448258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134131 (6 * A004916 (n + 1)).toNat

end

end A280874.P5623193146302448258

/-! ## A280874.P4611285377653500497

`A112178(18*A004916(n+1))`
-/

namespace A280874.P4611285377653500497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112178 (18 * A004916 (n + 1)).toNat

end

end A280874.P4611285377653500497

/-!
# A280875: Set a(1)=0, a(2)=1, a(3)=3; b(1)=1, b(2)=2; c(1)=3. Thereafter, a(n) is the smallest positive integer m such that m is not yet in sequence a, m-a(n-1) is not yet in sequence b, and m-a(n-2) is not yet in sequence c; set b(n-1)=m-a(n-1), c(n-2)=m-a(n-2).

The programs for A280875, there is no canonical definition to state claims against.
-/

/-! ## A280875.P12126954584030610361

`∑[A308000(A028310(n))]-1`
-/

namespace A280875.P12126954584030610361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308000 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A280875.P12126954584030610361

/-! ## A280875.P4646601285359223802

`∑[A308000(A000007(n)+n)]-1`
-/

namespace A280875.P4646601285359223802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308000 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A280875.P4646601285359223802

/-! ## A280875.P18292574852428056377

`∑[A057427(n)*A308000(A028310(n))]`
-/

namespace A280875.P18292574852428056377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A308000 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280875.P18292574852428056377

/-! ## A280875.P15002360125688103922

`∑[A308000(A028310(n))%A000124(n)]`
-/

namespace A280875.P15002360125688103922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308000 (A028310 n).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280875.P15002360125688103922

/-! ## A280875.P5968298568797352640

`∑[A308000(n+1)]-A308000(n+1)`
-/

namespace A280875.P5968298568797352640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A308000 (n + 1)

end

end A280875.P5968298568797352640

/-!
# A280876: Palindromic primes with prime subscripts.

The programs for A280876, there is no canonical definition to state claims against.
-/

/-! ## A280876.P5379572798536839409

`∩[A002385(n+1), A006450(n+1)]`
-/

namespace A280876.P5379572798536839409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280876.P5379572798536839409

/-! ## A280876.P4430595463266425283

`∩[A002113(n+1), A006450(n+1)]`
-/

namespace A280876.P4430595463266425283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280876.P4430595463266425283

/-! ## A280876.P7860131282079879936

`∩[A006450(n+1), A188650(n+1)]`
-/

namespace A280876.P7860131282079879936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280876.P7860131282079879936

/-! ## A280876.P7938285670632339139

`∩[A006450(n+1), A029950(n+1)]`
-/

namespace A280876.P7938285670632339139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280876.P7938285670632339139

/-! ## A280876.P11320495859688063448

`∩[A006450(n+1), A061917(n+1)]`
-/

namespace A280876.P11320495859688063448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280876.P11320495859688063448

/-!
# A280877: Occurrences of decrease of the probability density P(a(n)) of coprime numbers k,m, satisfying 1 <= k <= a(n) and 1 <= m <= a(n); i.e., P(a(n)) < P(a(n)-1).

The programs for A280877, the canonical program `A280877.P16270623710386896264` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280877 has offset 1).

The definition of A280877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280877.P14139575955681593728

`lt[A000010(round(acot(n)+n)), A256502(n+1)]`
-/

namespace A280877.P14139575955681593728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280877.P14139575955681593728

namespace A280877

/-- `lt[A000010(round(acot(n)+n)), A256502(n+1)]` -/
def P14139575955681593728.Spec : Prop :=
  ∀ n, (P14139575955681593728.a n : ℤ) = A280877 (n + 1)

end A280877

/-! ## A280877.P16270623710386896264

`lt[A000010(A028310(n)), A256502(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280877

/-- `lt[A000010(A028310(n)), A256502(n+1)]` -/
def P16270623710386896264.Spec : Prop :=
  ∀ n, (P16270623710386896264.a n : ℤ) = A280877 (n + 1)

theorem P16270623710386896264.correct : P16270623710386896264.Spec := by
  intro n
  simp only [A280877, Nat.add_sub_cancel]

end A280877

/-! ## A280877.P10372075486848010253

`lt[A000010(A029579(n)), A256502(n+1)]`
-/

namespace A280877.P10372075486848010253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A029579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280877.P10372075486848010253

namespace A280877

/-- `lt[A000010(A029579(n)), A256502(n+1)]` -/
def P10372075486848010253.Spec : Prop :=
  ∀ n, (P10372075486848010253.a n : ℤ) = A280877 (n + 1)

end A280877

/-! ## A280877.P11571706226218437442

`lt[A000010((n-1)%A184526(n+1)+1), A256502(n+1)]`
-/

namespace A280877.P11571706226218437442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod ((n : ℤ) - 1) (A184526 (n + 1)) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280877.P11571706226218437442

namespace A280877

/-- `lt[A000010((n-1)%A184526(n+1)+1), A256502(n+1)]` -/
def P11571706226218437442.Spec : Prop :=
  ∀ n, (P11571706226218437442.a n : ℤ) = A280877 (n + 1)

end A280877

/-! ## A280877.P4928083754495412725

`lt[A000010(A233583(n+1)), A256502(n+1)]`
-/

namespace A280877.P4928083754495412725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280877.P4928083754495412725

namespace A280877

/-- `lt[A000010(A233583(n+1)), A256502(n+1)]` -/
def P4928083754495412725.Spec : Prop :=
  ∀ n, (P4928083754495412725.a n : ℤ) = A280877 (n + 1)

end A280877

/-! ## A280877.P8049982704193896290

`lt[A225530(n), A256502(n+1)]`
-/

namespace A280877.P8049982704193896290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280877.P8049982704193896290

namespace A280877

/-- `lt[A225530(n), A256502(n+1)]` -/
def P8049982704193896290.Spec : Prop :=
  ∀ n, (P8049982704193896290.a n : ℤ) = A280877 (n + 1)

end A280877

/-!
# A280878: Occurrences of decrease of the probability density P(n) of coprime numbers k,m, satisfying 1 <= k <= a(n) and 1 <= m <= a(n), and a(n) congruent to 1(mod 2) and a(n) congruent to {3,9,21,27}(mod 30).

The programs for A280878, the canonical program `A280878.P12461695525565810277` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280878 has offset 1).

The definition of A280878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280878.P12461695525565810277

`∩[A280877(n+1), A100490(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A280878

/-- `∩[A280877(n+1), A100490(n)]` -/
def P12461695525565810277.Spec : Prop :=
  ∀ n, (P12461695525565810277.a n : ℤ) = A280878 (n + 1)

theorem P12461695525565810277.correct : P12461695525565810277.Spec := by
  intro n
  simp only [A280878, Nat.add_sub_cancel]

end A280878

/-! ## A280878.P11979457908478829642

`∩[A045572(n+1), A280877(n+1)]`
-/

namespace A280878.P11979457908478829642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280878.P11979457908478829642

namespace A280878

/-- `∩[A045572(n+1), A280877(n+1)]` -/
def P11979457908478829642.Spec : Prop :=
  ∀ n, (P11979457908478829642.a n : ℤ) = A280878 (n + 1)

end A280878

/-! ## A280878.P1333613838295983648

`∩[A053795(n+1), A280877(n+1)]`
-/

namespace A280878.P1333613838295983648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280878.P1333613838295983648

namespace A280878

/-- `∩[A053795(n+1), A280877(n+1)]` -/
def P1333613838295983648.Spec : Prop :=
  ∀ n, (P1333613838295983648.a n : ℤ) = A280878 (n + 1)

end A280878

/-! ## A280878.P9347938732572298924

`∩[A079814(n+1), A173250(n+1)]`
-/

namespace A280878.P9347938732572298924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280878.P9347938732572298924

namespace A280878

/-- `∩[A079814(n+1), A173250(n+1)]` -/
def P9347938732572298924.Spec : Prop :=
  ∀ n, (P9347938732572298924.a n : ℤ) = A280878 (n + 1)

end A280878

/-! ## A280878.P9933103917022307337

`∩[A079814(n+1), A364414(n+1)]`
-/

namespace A280878.P9933103917022307337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280878.P9933103917022307337

namespace A280878

/-- `∩[A079814(n+1), A364414(n+1)]` -/
def P9933103917022307337.Spec : Prop :=
  ∀ n, (P9933103917022307337.a n : ℤ) = A280878 (n + 1)

end A280878

/-!
# A280879: Occurrences of decrease of the probability density P(n) of coprime numbers k,m, satisfying 1 <= k <= a(n) and 1 <= m <= a(n), and a(n) congruent to 1 (mod 2) and a(n) not congruent to 3 (mod 6).

The programs for A280879, there is no canonical definition to state claims against.
-/

/-! ## A280879.P15526347710004314443

`A046391(n+1)/3%A057727(n)`
-/

namespace A280879.P15526347710004314443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046391 (n + 1) : ℚ) / (Int.tmod 3 (A057727 n) : ℚ)

end

end A280879.P15526347710004314443

/-! ## A280879.P17420489504933341040

`(A046391(n+1)/3)%A120935(n+5)`
-/

namespace A280879.P17420489504933341040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A046391 (n + 1) : ℚ) / 3)) (A120935 (n + 5))

end

end A280879.P17420489504933341040

/-!
# A280880: Number T(n,k) of set partitions of [n] into exactly k blocks where sizes of distinct blocks are coprime; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A280880, there is no canonical definition to state claims against.
-/

/-! ## A280880.P715339847000098703

`A053836(A048993(n)^A144374(n+1))`
-/

namespace A280880.P715339847000098703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (SequenceMachineLib.roundAway ((A048993 n : ℚ) ^ (A144374 (n + 1) : ℤ))).toNat

end

end A280880.P715339847000098703

/-! ## A280880.P12375739955833196965

`A053836(A151511(n)^A144374(n+1))`
-/

namespace A280880.P12375739955833196965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (SequenceMachineLib.roundAway ((A151511 n : ℚ) ^ (A144374 (n + 1) : ℤ))).toNat

end

end A280880.P12375739955833196965

/-! ## A280880.P18034230160650514593

`∑{e}[A018010(A048993(n)), #]`
-/

namespace A280880.P18034230160650514593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018010 (A048993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A280880.P18034230160650514593

/-! ## A280880.P15863998633745383280

`∑{e}[A018010(A151509(n)), #]`
-/

namespace A280880.P15863998633745383280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018010 (A151509 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A280880.P15863998633745383280

/-! ## A280880.P17467682586278871499

`∑{e}[A018010(A151511(n)), #]`
-/

namespace A280880.P17467682586278871499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018010 (A151511 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A280880.P17467682586278871499

/-!
# A280881: Number of set partitions of [n] into exactly three blocks where sizes of distinct blocks are coprime.

The programs for A280881, there is no canonical definition to state claims against.
-/

/-! ## A280881.P5666088213482150026

`A280880(A167614(n+2))`
-/

namespace A280881.P5666088213482150026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A167614 (n + 2)).toNat

end

end A280881.P5666088213482150026

/-! ## A280881.P15785489802275477183

`A280880(A052905(n)+8)`
-/

namespace A280881.P15785489802275477183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A052905 n + 8).toNat

end

end A280881.P15785489802275477183

/-! ## A280881.P1905949825112724640

`A280880(A055999(n)+9)`
-/

namespace A280881.P1905949825112724640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A055999 n + 9).toNat

end

end A280881.P1905949825112724640

/-! ## A280881.P5888934491466356120

`A280880(eq[3, A002262(n)])`
-/

namespace A280881.P5888934491466356120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280881.P5888934491466356120

/-! ## A280881.P10408307799091416851

`A280880(A340266(n+2)+1)`
-/

namespace A280881.P10408307799091416851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A340266 (n + 2) + 1).toNat

end

end A280881.P10408307799091416851

/-! ## A280881.P11514105521533317395

`A280880(A000096(n+2)+4)`
-/

namespace A280881.P11514105521533317395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A000096 (n + 2) + 4).toNat

end

end A280881.P11514105521533317395

/-! ## A280881.P7318485320711203519

`A280880(eq[2, A002260(n+1)-2])`
-/

namespace A280881.P7318485320711203519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280881.P7318485320711203519

/-! ## A280881.P2416288609066773455

`A280880(eq[2, A002260(n+1)/2])`
-/

namespace A280881.P2416288609066773455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A280881.P2416288609066773455

/-! ## A280881.P1815505313415455579

`A280880(A133263(n+1)+2*(n+3))`
-/

namespace A280881.P1815505313415455579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A133263 (n + 1) + (2 * (n + 3) : ℤ)).toNat

end

end A280881.P1815505313415455579

/-! ## A280881.P14963614772446315742

`A280880(A167487(n)+A005408(n))`
-/

namespace A280881.P14963614772446315742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A167487 n + A005408 n).toNat

end

end A280881.P14963614772446315742

/-!
# A280882: Number of set partitions of [n] into exactly four blocks where sizes of distinct blocks are coprime.

The programs for A280882, there is no canonical definition to state claims against.
-/

/-! ## A280882.P16095090476325977343

`A280880(A145018(n+5))`
-/

namespace A280882.P16095090476325977343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A145018 (n + 5)).toNat

end

end A280882.P16095090476325977343

/-! ## A280882.P8816577148966619152

`A280880(A155212(n)+12)`
-/

namespace A280882.P8816577148966619152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A155212 n + 12).toNat

end

end A280882.P8816577148966619152

/-! ## A280882.P18095792752185618161

`A280880(A167499(n+3)-1)`
-/

namespace A280882.P18095792752185618161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A167499 (n + 3) - 1).toNat

end

end A280882.P18095792752185618161

/-! ## A280882.P163444785502140808

`A280880(A133263(n+4)+2)`
-/

namespace A280882.P163444785502140808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A133263 (n + 4) + 2).toNat

end

end A280882.P163444785502140808

/-! ## A280882.P11448038065737850706

`A280880(A000124(n+4)+3)`
-/

namespace A280882.P11448038065737850706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A000124 (n + 4) + 3).toNat

end

end A280882.P11448038065737850706

/-!
# A280883: Number of set partitions of [n] into exactly five blocks where sizes of distinct blocks are coprime.

The programs for A280883, there is no canonical definition to state claims against.
-/

/-! ## A280883.P2062099470633161700

`A280880(eq[5, A002262(n)])`
-/

namespace A280883.P2062099470633161700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280883.P2062099470633161700

/-! ## A280883.P8190596658610306488

`A280880(A145018(n+6)+1)`
-/

namespace A280883.P8190596658610306488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A145018 (n + 6) + 1).toNat

end

end A280883.P8190596658610306488

/-! ## A280883.P5117570064560098008

`A280880(A000124(n+5)+4)`
-/

namespace A280883.P5117570064560098008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A000124 (n + 5) + 4).toNat

end

end A280883.P5117570064560098008

/-! ## A280883.P11955609350471682554

`A280880(A000096(n+4)+6)`
-/

namespace A280883.P11955609350471682554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A000096 (n + 4) + 6).toNat

end

end A280883.P11955609350471682554

/-! ## A280883.P13710098998488775696

`A280880(A000217(n+5)+5)`
-/

namespace A280883.P13710098998488775696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A000217 (n + 5) + 5).toNat

end

end A280883.P13710098998488775696

/-!
# A280884: Number of set partitions of [n] into exactly six blocks where sizes of distinct blocks are coprime.

The programs for A280884, there is no canonical definition to state claims against.
-/

/-! ## A280884.P10842985179434940726

`A280880(eq[6, A002262(n)])`
-/

namespace A280884.P10842985179434940726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280884.P10842985179434940726

/-! ## A280884.P5060293770279505325

`A280880(A167499(n+5)+1)`
-/

namespace A280884.P5060293770279505325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A167499 (n + 5) + 1).toNat

end

end A280884.P5060293770279505325

/-! ## A280884.P9328288336451089243

`A280880(A000217(n+6)+6)`
-/

namespace A280884.P9328288336451089243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A000217 (n + 6) + 6).toNat

end

end A280884.P9328288336451089243

/-! ## A280884.P9100507210752653362

`A280880(eq[7, A002260(n+1)])`
-/

namespace A280884.P9100507210752653362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280884.P9100507210752653362

/-! ## A280884.P5686743178167709764

`A280880(A133263(n+5)+n+10)`
-/

namespace A280884.P5686743178167709764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A133263 (n + 5) + (n + 10 : ℤ)).toNat

end

end A280884.P5686743178167709764

/-!
# A280885: Number of set partitions of [n] into exactly seven blocks where sizes of distinct blocks are coprime.

The programs for A280885, there is no canonical definition to state claims against.
-/

/-! ## A280885.P8297584846577513989

`A280880(A167499(n+6)+2)`
-/

namespace A280885.P8297584846577513989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A167499 (n + 6) + 2).toNat

end

end A280885.P8297584846577513989

/-! ## A280885.P5391952332860916501

`A280880(A145018(n+8)+3)`
-/

namespace A280885.P5391952332860916501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A145018 (n + 8) + 3).toNat

end

end A280885.P5391952332860916501

/-! ## A280885.P5556058533073501778

`A280880(A000217(n+7)+7)`
-/

namespace A280885.P5556058533073501778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A000217 (n + 7) + 7).toNat

end

end A280885.P5556058533073501778

/-! ## A280885.P13338946818617201002

`A280880(A133263(n+6)+n+12)`
-/

namespace A280885.P13338946818617201002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A133263 (n + 6) + (n + 12 : ℤ)).toNat

end

end A280885.P13338946818617201002

/-! ## A280885.P12377476589582705795

`A280880(A167614(n+9)-A016789(n+7))`
-/

namespace A280885.P12377476589582705795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A167614 (n + 9) - A016789 (n + 7)).toNat

end

end A280885.P12377476589582705795

/-!
# A280886: Number of set partitions of [n] into exactly eight blocks where sizes of distinct blocks are coprime.

The programs for A280886, there is no canonical definition to state claims against.
-/

/-! ## A280886.P5399599041390471625

`A280880(A145018(n+9)+4)`
-/

namespace A280886.P5399599041390471625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A145018 (n + 9) + 4).toNat

end

end A280886.P5399599041390471625

/-! ## A280886.P11003014593547080705

`A280880(A000217(n+8)+8)`
-/

namespace A280886.P11003014593547080705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A000217 (n + 8) + 8).toNat

end

end A280886.P11003014593547080705

/-! ## A280886.P9569129678101198383

`A280880(A133263(n+7)+A020710(n+9))`
-/

namespace A280886.P9569129678101198383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A133263 (n + 7) + A020710 (n + 9)).toNat

end

end A280886.P9569129678101198383

/-! ## A280886.P9609342819885251204

`A280880(A056000(n+6)+1-A005843(n+1))`
-/

namespace A280886.P9609342819885251204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A056000 (n + 6) + 1 - A005843 (n + 1)).toNat

end

end A280886.P9609342819885251204

/-!
# A280887: Number of set partitions of [n] into exactly nine blocks where sizes of distinct blocks are coprime.

The programs for A280887, there is no canonical definition to state claims against.
-/

/-! ## A280887.P8052962931923763688

`A280880(A167499(n+8)+4)`
-/

namespace A280887.P8052962931923763688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A167499 (n + 8) + 4).toNat

end

end A280887.P8052962931923763688

/-! ## A280887.P1201665342218666095

`A280880(A000096(n+8)+10)`
-/

namespace A280887.P1201665342218666095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A000096 (n + 8) + 10).toNat

end

end A280887.P1201665342218666095

/-! ## A280887.P11336620795578010540

`A280880(A046691(n+7)+13)`
-/

namespace A280887.P11336620795578010540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A046691 (n + 7) + 13).toNat

end

end A280887.P11336620795578010540

/-! ## A280887.P14758173192343131016

`A280880(A000217(n+10)-(n+1))`
-/

namespace A280887.P14758173192343131016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A280887.P14758173192343131016

/-! ## A280887.P11425167142779893872

`A280880(A055999(n)+A008458(n+9))`
-/

namespace A280887.P11425167142779893872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A055999 n + A008458 (n + 9)).toNat

end

end A280887.P11425167142779893872

/-!
# A280888: Number of set partitions of [n] into exactly ten blocks where sizes of distinct blocks are coprime.

The programs for A280888, there is no canonical definition to state claims against.
-/

/-! ## A280888.P16199489375289533620

`A280880(eq[10, A002262(n)])`
-/

namespace A280888.P16199489375289533620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280888.P16199489375289533620

/-! ## A280888.P2155047535199310973

`A280880(A167614(n+9)+7)`
-/

namespace A280888.P2155047535199310973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A167614 (n + 9) + 7).toNat

end

end A280888.P2155047535199310973

/-! ## A280888.P4655851655374829840

`A280880(A133263(n+10)+8)`
-/

namespace A280888.P4655851655374829840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A133263 (n + 10) + 8).toNat

end

end A280888.P4655851655374829840

/-! ## A280888.P17788671979066754461

`A280880(A027379(n+8)+13)`
-/

namespace A280888.P17788671979066754461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A027379 (n + 8) + 13).toNat

end

end A280888.P17788671979066754461

/-! ## A280888.P570568419790900634

`A280880(eq[11, A002260(n+1)])`
-/

namespace A280888.P570568419790900634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280888.P570568419790900634

/-!
# A280889: Number of set partitions of [2n] into exactly n blocks where sizes of distinct blocks are coprime.

The programs for A280889, there is no canonical definition to state claims against.
-/

/-! ## A280889.P13259727857996673353

`A280880(∑[4*n])`
-/

namespace A280889.P13259727857996673353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280889.P13259727857996673353

/-! ## A280889.P9682501609520814932

`A280880(A046092(n))^(A000040(n+1)%2)`
-/

namespace A280889.P9682501609520814932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280880 (A046092 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A280889.P9682501609520814932

/-! ## A280889.P12195429580368113743

`A014963(lcm(6, n+1))*A280880(A046092(n))`
-/

namespace A280889.P12195429580368113743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lcm 6 (n + 1)) * A280880 (A046092 n).toNat

end

end A280889.P12195429580368113743

/-! ## A280889.P8638637514198698277

`A000032(gcd(n, n+1))*A280880(A046092(n))`
-/

namespace A280889.P8638637514198698277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.gcd n (n + 1)) * A280880 (A046092 n).toNat

end

end A280889.P8638637514198698277

/-! ## A280889.P7985906555069152689

`A000045(((-1)^n)²)*A280880(A046092(n))`
-/

namespace A280889.P7985906555069152689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A280880 (A046092 n).toNat

end

end A280889.P7985906555069152689

/-!
# A280891: Number of certain noncrossing set partitions.

The programs for A280891, the canonical program `A280891.P1764150059183000184` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280891 has offset 1).

The definition of A280891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280891.P6093067893604504127

`A289601(n+2)+n`
-/

namespace A280891.P6093067893604504127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289601 (n + 2) + (n : ℤ)

end

end A280891.P6093067893604504127

namespace A280891

/-- `A289601(n+2)+n` -/
def P6093067893604504127.Spec : Prop :=
  ∀ n, P6093067893604504127.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P5441464969422975983

`A026012(n)+Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=2`
-/

namespace A280891.P5441464969422975983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026012 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A280891.P5441464969422975983

namespace A280891

/-- `A026012(n)+Δ[(4-6/(n+1))*a(n-1)]` -/
def P5441464969422975983.Spec : Prop :=
  ∀ n, P5441464969422975983.a n = (A280891 (n + 1) : ℚ)

end A280891

/-! ## A280891.P1764150059183000184

`A000245(n)+∑[A026012(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280891

/-- `A000245(n)+∑[A026012(n)]` -/
def P1764150059183000184.Spec : Prop :=
  ∀ n, P1764150059183000184.a n = A280891 (n + 1)

theorem P1764150059183000184.correct : P1764150059183000184.Spec := by
  intro n
  simp only [A280891, Nat.add_sub_cancel]

end A280891

/-! ## A280891.P8868624640588430850

`A071721(n)+Δ[A071724(n)]`
-/

namespace A280891.P8868624640588430850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n + (f1 (n + 1) - f1 n)

end

end A280891.P8868624640588430850

namespace A280891

/-- `A071721(n)+Δ[A071724(n)]` -/
def P8868624640588430850.Spec : Prop :=
  ∀ n, P8868624640588430850.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P9475690660750506682

`A000245(n+1)+A000245(n)`
-/

namespace A280891.P9475690660750506682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + A000245 n

end

end A280891.P9475690660750506682

namespace A280891

/-- `A000245(n+1)+A000245(n)` -/
def P9475690660750506682.Spec : Prop :=
  ∀ n, P9475690660750506682.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P13995607989340866832

`A099376(n)+A000782(n+1)`
-/

namespace A280891.P13995607989340866832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A000782 (n + 1)

end

end A280891.P13995607989340866832

namespace A280891

/-- `A099376(n)+A000782(n+1)` -/
def P13995607989340866832.Spec : Prop :=
  ∀ n, P13995607989340866832.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P11385701799249810749

`A000108(n+2)-A000108(n)`
-/

namespace A280891.P11385701799249810749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) - A000108 n

end

end A280891.P11385701799249810749

namespace A280891

/-- `A000108(n+2)-A000108(n)` -/
def P11385701799249810749.Spec : Prop :=
  ∀ n, P11385701799249810749.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P1877372995786051095

`A120304(n+2)-A120304(n)`
-/

namespace A280891.P1877372995786051095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (n + 2) - A120304 n

end

end A280891.P1877372995786051095

namespace A280891

/-- `A120304(n+2)-A120304(n)` -/
def P1877372995786051095.Spec : Prop :=
  ∀ n, P1877372995786051095.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P13070546295618219721

`A115140(n+1)+A000108(n+2)`
-/

namespace A280891.P13070546295618219721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 1) + A000108 (n + 2)

end

end A280891.P13070546295618219721

namespace A280891

/-- `A115140(n+1)+A000108(n+2)` -/
def P13070546295618219721.Spec : Prop :=
  ∀ n, P13070546295618219721.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P13880814927720209680

`A071724(n+1)-A115142(n+2)`
-/

namespace A280891.P13880814927720209680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) - A115142 (n + 2)

end

end A280891.P13880814927720209680

namespace A280891

/-- `A071724(n+1)-A115142(n+2)` -/
def P13880814927720209680.Spec : Prop :=
  ∀ n, P13880814927720209680.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P1380301584298887996

`A115140(n+1)-A115140(n+3)`
-/

namespace A280891.P1380301584298887996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 1) - A115140 (n + 3)

end

end A280891.P1380301584298887996

namespace A280891

/-- `A115140(n+1)-A115140(n+3)` -/
def P1380301584298887996.Spec : Prop :=
  ∀ n, P1380301584298887996.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P14609544743977740619

`A120588(n+3)-A120588(n+1)`
-/

namespace A280891.P14609544743977740619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 3) - A120588 (n + 1)

end

end A280891.P14609544743977740619

namespace A280891

/-- `A120588(n+3)-A120588(n+1)` -/
def P14609544743977740619.Spec : Prop :=
  ∀ n, P14609544743977740619.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P13287581295128701634

`Δ[A000108(n+1)]+Δ[A000108(n)]`
-/

namespace A280891.P13287581295128701634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A280891.P13287581295128701634

namespace A280891

/-- `Δ[A000108(n+1)]+Δ[A000108(n)]` -/
def P13287581295128701634.Spec : Prop :=
  ∀ n, P13287581295128701634.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P16665657009415058782

`A210628(2*n+1)+A000108(n+2)`
-/

namespace A280891.P16665657009415058782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (2 * n + 1) + A000108 (n + 2)

end

end A280891.P16665657009415058782

namespace A280891

/-- `A210628(2*n+1)+A000108(n+2)` -/
def P16665657009415058782.Spec : Prop :=
  ∀ n, P16665657009415058782.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P9113701055130590548

`2*A000958(n+2)-A135339(n+1)`
-/

namespace A280891.P9113701055130590548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000958 (n + 2) - A135339 (n + 1)

end

end A280891.P9113701055130590548

namespace A280891

/-- `2*A000958(n+2)-A135339(n+1)` -/
def P9113701055130590548.Spec : Prop :=
  ∀ n, P9113701055130590548.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P4211769874323584681

`A026008(2*n+1)-A115142(n+2)`
-/

namespace A280891.P4211769874323584681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n + 1) - A115142 (n + 2)

end

end A280891.P4211769874323584681

namespace A280891

/-- `A026008(2*n+1)-A115142(n+2)` -/
def P4211769874323584681.Spec : Prop :=
  ∀ n, P4211769874323584681.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P8011919312547672887

`A208355(2*(n+2))-A208355(2*n)`
-/

namespace A280891.P8011919312547672887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * (n + 2)) - A208355 (2 * n)

end

end A280891.P8011919312547672887

namespace A280891

/-- `A208355(2*(n+2))-A208355(2*n)` -/
def P8011919312547672887.Spec : Prop :=
  ∀ n, P8011919312547672887.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P15847770096771346375

`A028304(2*(n+2))-abs(A182492(4*n+3))`
-/

namespace A280891.P15847770096771346375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * (n + 2)) - |A182492 (4 * n + 3)|

end

end A280891.P15847770096771346375

namespace A280891

/-- `A028304(2*(n+2))-abs(A182492(4*n+3))` -/
def P15847770096771346375.Spec : Prop :=
  ∀ n, P15847770096771346375.a n = A280891 (n + 1)

end A280891

/-! ## A280891.P7771039794144305192

`A028304(2*(n+2))-A028304(A004277(n))`
-/

namespace A280891.P7771039794144305192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * (n + 2)) - A028304 (A004277 n).toNat

end

end A280891.P7771039794144305192

namespace A280891

/-- `A028304(2*(n+2))-A028304(A004277(n))` -/
def P7771039794144305192.Spec : Prop :=
  ∀ n, P7771039794144305192.a n = A280891 (n + 1)

end A280891

/-!
# A280892: Squareful numbers with both neighbors squarefree.

The programs for A280892, the canonical program `A280892.P10778792925638718684` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280892 has offset 1).

The definition of A280892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280892.P16630618934612085270

`filter[A053806(n+1), A379971(#)]`
-/

namespace A280892.P16630618934612085270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280892.P16630618934612085270

namespace A280892

/-- `filter[A053806(n+1), A379971(#)]` -/
def P16630618934612085270.Spec : Prop :=
  ∀ n, P16630618934612085270.a n = A280892 (n + 1)

end A280892

/-! ## A280892.P10778792925638718684

`filter[A376164(n+1), A379971(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A280892

/-- `filter[A376164(n+1), A379971(#)]` -/
def P10778792925638718684.Spec : Prop :=
  ∀ n, P10778792925638718684.a n = A280892 (n + 1)

theorem P10778792925638718684.correct : P10778792925638718684.Spec := by
  intro n
  simp only [A280892, Nat.add_sub_cancel]

end A280892

/-! ## A280892.P15639482762232997971

`A053806(eq[1, A053797(n+1)]+1)`
-/

namespace A280892.P15639482762232997971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A280892.P15639482762232997971

namespace A280892

/-- `A053806(eq[1, A053797(n+1)]+1)` -/
def P15639482762232997971.Spec : Prop :=
  ∀ n, P15639482762232997971.a n = A280892 (n + 1)

end A280892

/-! ## A280892.P8404984125681465753

`∩[A053806(n+1), A376164(n+1)]`
-/

namespace A280892.P8404984125681465753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280892.P8404984125681465753

namespace A280892

/-- `∩[A053806(n+1), A376164(n+1)]` -/
def P8404984125681465753.Spec : Prop :=
  ∀ n, (P8404984125681465753.a n : ℤ) = A280892 (n + 1)

end A280892

/-! ## A280892.P17695780826554142457

`∩[A053806(n+1), A072284(n+1)-1]`
-/

namespace A280892.P17695780826554142457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280892.P17695780826554142457

namespace A280892

/-- `∩[A053806(n+1), A072284(n+1)-1]` -/
def P17695780826554142457.Spec : Prop :=
  ∀ n, (P17695780826554142457.a n : ℤ) = A280892 (n + 1)

end A280892

/-! ## A280892.P10684417337483868075

`filter[A067874(n+1), A087049(#)]`
-/

namespace A280892.P10684417337483868075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A280892.P10684417337483868075

namespace A280892

/-- `filter[A067874(n+1), A087049(#)]` -/
def P10684417337483868075.Spec : Prop :=
  ∀ n, P10684417337483868075.a n = A280892 (n + 1)

end A280892

/-! ## A280892.P14304753253175560943

`filter[A067874(n+1), A105234(#)]`
-/

namespace A280892.P14304753253175560943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A280892.P14304753253175560943

namespace A280892

/-- `filter[A067874(n+1), A105234(#)]` -/
def P14304753253175560943.Spec : Prop :=
  ∀ n, P14304753253175560943.a n = A280892 (n + 1)

end A280892

/-! ## A280892.P8747353436217320988

`∩[A053806(n+1), A067874(n+1)]`
-/

namespace A280892.P8747353436217320988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280892.P8747353436217320988

namespace A280892

/-- `∩[A053806(n+1), A067874(n+1)]` -/
def P8747353436217320988.Spec : Prop :=
  ∀ n, (P8747353436217320988.a n : ℤ) = A280892 (n + 1)

end A280892

/-! ## A280892.P7962891727340109951

`∩[A067874(n+1), A376164(n+1)]`
-/

namespace A280892.P7962891727340109951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280892.P7962891727340109951

namespace A280892

/-- `∩[A067874(n+1), A376164(n+1)]` -/
def P7962891727340109951.Spec : Prop :=
  ∀ n, (P7962891727340109951.a n : ℤ) = A280892 (n + 1)

end A280892

/-! ## A280892.P6746101673915695955

`filter[A013929(n+1), A379971(#)]`
-/

namespace A280892.P6746101673915695955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280892.P6746101673915695955

namespace A280892

/-- `filter[A013929(n+1), A379971(#)]` -/
def P6746101673915695955.Spec : Prop :=
  ∀ n, P6746101673915695955.a n = A280892 (n + 1)

end A280892

/-! ## A280892.P7588184774775823013

`∩[A013929(n+1), A067874(n+1)]`
-/

namespace A280892.P7588184774775823013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280892.P7588184774775823013

namespace A280892

/-- `∩[A013929(n+1), A067874(n+1)]` -/
def P7588184774775823013.Spec : Prop :=
  ∀ n, (P7588184774775823013.a n : ℤ) = A280892 (n + 1)

end A280892

/-! ## A280892.P5458700034308299589

`filter[A162966(n+1), A379971(#)]`
-/

namespace A280892.P5458700034308299589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280892.P5458700034308299589

namespace A280892

/-- `filter[A162966(n+1), A379971(#)]` -/
def P5458700034308299589.Spec : Prop :=
  ∀ n, P5458700034308299589.a n = A280892 (n + 1)

end A280892

/-! ## A280892.P3573040324517744018

`∩[A067874(n+1), A162966(n+1)]`
-/

namespace A280892.P3573040324517744018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280892.P3573040324517744018

namespace A280892

/-- `∩[A067874(n+1), A162966(n+1)]` -/
def P3573040324517744018.Spec : Prop :=
  ∀ n, (P3573040324517744018.a n : ℤ) = A280892 (n + 1)

end A280892

/-! ## A280892.P6672464821963304314

`filter[A363597(n+3), A379971(#)]`
-/

namespace A280892.P6672464821963304314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280892.P6672464821963304314

namespace A280892

/-- `filter[A363597(n+3), A379971(#)]` -/
def P6672464821963304314.Spec : Prop :=
  ∀ n, P6672464821963304314.a n = A280892 (n + 1)

end A280892

/-! ## A280892.P12599982618375962260

`filter[A162902(n+1), A379971(#)]`
-/

namespace A280892.P12599982618375962260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280892.P12599982618375962260

namespace A280892

/-- `filter[A162902(n+1), A379971(#)]` -/
def P12599982618375962260.Spec : Prop :=
  ∀ n, P12599982618375962260.a n = A280892 (n + 1)

end A280892

/-! ## A280892.P8701627520332813077

`∩[A067874(n+1), A162902(n+1)]`
-/

namespace A280892.P8701627520332813077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280892.P8701627520332813077

namespace A280892

/-- `∩[A067874(n+1), A162902(n+1)]` -/
def P8701627520332813077.Spec : Prop :=
  ∀ n, (P8701627520332813077.a n : ℤ) = A280892 (n + 1)

end A280892

/-! ## A280892.P14962630672980265730

`∩[A162902(n+1), A376164(n+1)]`
-/

namespace A280892.P14962630672980265730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280892.P14962630672980265730

namespace A280892

/-- `∩[A162902(n+1), A376164(n+1)]` -/
def P14962630672980265730.Spec : Prop :=
  ∀ n, (P14962630672980265730.a n : ℤ) = A280892 (n + 1)

end A280892

/-! ## A280892.P1891406594377957791

`eq[2, A076260(n+1)]+1`
-/

namespace A280892.P1891406594377957791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280892.P1891406594377957791

namespace A280892

/-- `eq[2, A076260(n+1)]+1` -/
def P1891406594377957791.Spec : Prop :=
  ∀ n, (P1891406594377957791.a n : ℤ) = A280892 (n + 1)

end A280892

/-! ## A280892.P3444264958874438795

`filter[A088610(2*(n+1)), A379971(#)]`
-/

namespace A280892.P3444264958874438795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280892.P3444264958874438795

namespace A280892

/-- `filter[A088610(2*(n+1)), A379971(#)]` -/
def P3444264958874438795.Spec : Prop :=
  ∀ n, P3444264958874438795.a n = A280892 (n + 1)

end A280892

/-! ## A280892.P8211558180848510510

`filter[A075378(2*n+1), A379971(#)]`
-/

namespace A280892.P8211558180848510510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A280892.P8211558180848510510

namespace A280892

/-- `filter[A075378(2*n+1), A379971(#)]` -/
def P8211558180848510510.Spec : Prop :=
  ∀ n, P8211558180848510510.a n = A280892 (n + 1)

end A280892

/-!
# A280893: a(n) is the maximum prime factor of the concatenation of all the previous terms, with a(1)=1, a(2)=2.

The programs for A280893, there is no canonical definition to state claims against.
-/

/-! ## A280893.P3617014104120723000

`∪[A008578(n+1), A243429(A127084(n+1))]`
-/

namespace A280893.P3617014104120723000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243429 (A127084 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280893.P3617014104120723000

/-!
# A280894: a(n) is the largest prime factor of the concatenation of a(n-2) and a(n-1), with a(1)=1 and a(2)=2.

The programs for A280894, there is no canonical definition to state claims against.
-/

/-! ## A280894.P12518776399113536582

`A383723(n+1)+A067840(A369214(n))`
-/

namespace A280894.P12518776399113536582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (n + 1) + A067840 (A369214 n).toNat

end

end A280894.P12518776399113536582

/-!
# A280895: For any n>=0, least prime k = p^d-2*n, where p is a prime and d is its number of digits.

The programs for A280895, there is no canonical definition to state claims against.
-/

/-! ## A280895.P11686782194310621307

`A088444(A357671(n)-n)`
-/

namespace A280895.P11686782194310621307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088444 (A357671 n - (n : ℤ)).toNat

end

end A280895.P11686782194310621307

/-!
# A280896: Number of n X 2 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280896, there is no canonical definition to state claims against.
-/

/-! ## A280896.P2199282834674924286

`A280309(2*(n+1))`
-/

namespace A280896.P2199282834674924286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280309 (2 * (n + 1))

end

end A280896.P2199282834674924286

/-! ## A280896.P9063066894457019845

`record[and((-1)^n, A280309(n+1))]`
-/

namespace A280896.P9063066894457019845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A280309 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280896.P9063066894457019845

/-! ## A280896.P8711892590505837566

`record[A280309(Δ[A236453(n)])]`
-/

namespace A280896.P8711892590505837566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280309 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280896.P8711892590505837566

/-! ## A280896.P9477386092370320352

`record[A280309(A014681(n+1))]`
-/

namespace A280896.P9477386092370320352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280309 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280896.P9477386092370320352

/-!
# A280897: Number of n X 3 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280897, there is no canonical definition to state claims against.
-/

/-! ## A280897.P12045446393217553844

`A280902(∑[n+3]+1)`
-/

namespace A280897.P12045446393217553844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280897.P12045446393217553844

/-! ## A280897.P8831382355523519350

`lcm(2, A280902(A034856(n+2)))`
-/

namespace A280897.P8831382355523519350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A280902 (A034856 (n + 2)).toNat)

end

end A280897.P8831382355523519350

/-! ## A280897.P6722676673953939318

`record[A280902(A034856(val(n+1, 2)+1))]`
-/

namespace A280897.P6722676673953939318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A034856 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280897.P6722676673953939318

/-! ## A280897.P11828927340174726708

`A280902(A034856(n+2))+A185238(n)`
-/

namespace A280897.P11828927340174726708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A034856 (n + 2)).toNat + A185238 n

end

end A280897.P11828927340174726708

/-! ## A280897.P13532629911703003437

`A280902(A034856(n+2))%A280898(n+1)`
-/

namespace A280897.P13532629911703003437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280902 (A034856 (n + 2)).toNat) (A280898 (n + 1))

end

end A280897.P13532629911703003437

/-!
# A280898: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280898, there is no canonical definition to state claims against.
-/

/-! ## A280898.P6177146362922589082

`A280902(A141214(n+1))`
-/

namespace A280898.P6177146362922589082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A141214 (n + 1)).toNat

end

end A280898.P6177146362922589082

/-! ## A280898.P2339383289126958408

`A280902(A155212(n)+5)`
-/

namespace A280898.P2339383289126958408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A155212 n + 5).toNat

end

end A280898.P2339383289126958408

/-! ## A280898.P18423088523574248242

`A280902(A056000(n)+7)`
-/

namespace A280898.P18423088523574248242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (A056000 n + 7).toNat

end

end A280898.P18423088523574248242

/-! ## A280898.P13246674111346331311

`A280902(eq[3, A193592(n)])`
-/

namespace A280898.P13246674111346331311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280898.P13246674111346331311

/-! ## A280898.P13963639824580931168

`A280902(eq[5, A001404(n)])`
-/

namespace A280898.P13963639824580931168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280898.P13963639824580931168

/-!
# A280899: Number of nX5 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280899, there is no canonical definition to state claims against.
-/

/-! ## A280899.P12916956009164567311

`A280902(Δ[A264443(n)])`
-/

namespace A280899.P12916956009164567311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (f1 (n + 1) - f1 n).toNat

end

end A280899.P12916956009164567311

/-! ## A280899.P9911052853933553831

`A280902(eq[2, A092921(n)])`
-/

namespace A280899.P9911052853933553831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280899.P9911052853933553831

/-! ## A280899.P10873065302745651983

`A280902(eq[4, A193592(n)])`
-/

namespace A280899.P10873065302745651983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280899.P10873065302745651983

/-! ## A280899.P6775316216584084093

`A280902(Δ[A023545(n+1)])`
-/

namespace A280899.P6775316216584084093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (f1 (n + 1) - f1 n).toNat

end

end A280899.P6775316216584084093

/-! ## A280899.P13917732801557657054

`A280902(eq[8, A057728(n+1)])`
-/

namespace A280899.P13917732801557657054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280899.P13917732801557657054

