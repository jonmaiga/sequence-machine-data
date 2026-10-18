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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B012.C000
import Seq.B013.C000
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
# A255800: Number of (n+2) X (7+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 3.

The programs for A255800, there is no canonical definition to state claims against.
-/

/-! ## A255800.P473975771306382952

`A255801(A167499(n+5)+2)`
-/

namespace A255800.P473975771306382952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A167499 (n + 5) + 2).toNat

end

end A255800.P473975771306382952

/-! ## A255800.P7707141052831065706

`A255801(A374008(n+1))`
-/

namespace A255800.P7707141052831065706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A374008 (n + 1)).toNat

end

end A255800.P7707141052831065706

/-! ## A255800.P10527813723429376247

`A255801(A055999(n+4))`
-/

namespace A255800.P10527813723429376247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A055999 (n + 4)).toNat

end

end A255800.P10527813723429376247

/-! ## A255800.P8665732128652882352

`A255801(Δ[A023551(n+2)])`
-/

namespace A255800.P8665732128652882352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (f1 (n + 1) - f1 n).toNat

end

end A255800.P8665732128652882352

/-! ## A255800.P10232134452904506614

`A255801(A000124(n+7)-7)`
-/

namespace A255800.P10232134452904506614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000124 (n + 7) - 7).toNat

end

end A255800.P10232134452904506614

/-! ## A255800.P4261134558551801103

`A255801(A125577(n+6)+A004442(n+1))`
-/

namespace A255800.P4261134558551801103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A125577 (n + 6) + A004442 (n + 1)).toNat

end

end A255800.P4261134558551801103

/-!
# A255802: G.f.: Product_{k>=1} 1/(1-x^k)^(2*k+3).

The programs for A255802, there is no canonical definition to state claims against.
-/

/-! ## A255802.P3130374929361851128

`A196508(n)+A006530(A199695(n))`
-/

namespace A255802.P3130374929361851128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196508 n + A006530 (A199695 n).toNat

end

end A255802.P3130374929361851128

/-!
# A255803: G.f.: Product_{k>=1} 1/(1-x^k)^(3*k+2).

The programs for A255803, there is no canonical definition to state claims against.
-/

/-! ## A255803.P5368758928841999545

`floor(sqrt(∑[A319427(n)]))`
-/

namespace A255803.P5368758928841999545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319427 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255803.P5368758928841999545

/-!
# A255805: Numbers with no zeros in base-8 representation.

The programs for A255805, the canonical program `A255805.P14998431550882228973` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255805 has offset 1).

The definition of A255805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255805.P14998431550882228973

`lt[0, A309959(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A255805

/-- `lt[0, A309959(n)]` -/
def P14998431550882228973.Spec : Prop :=
  ∀ n, (P14998431550882228973.a n : ℤ) = A255805 (n + 1)

theorem P14998431550882228973.correct : P14998431550882228973.Spec := by
  intro n
  simp only [A255805, Nat.add_sub_cancel]

end A255805

/-! ## A255805.P35827222076232151

`eq[A309959(n), A338881(n)]`
-/

namespace A255805.P35827222076232151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255805.P35827222076232151

namespace A255805

/-- `eq[A309959(n), A338881(n)]` -/
def P35827222076232151.Spec : Prop :=
  ∀ n, (P35827222076232151.a n : ℤ) = A255805 (n + 1)

end A255805

/-! ## A255805.P1590803931905846172

`A028903(A214677(n+1))`
-/

namespace A255805.P1590803931905846172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A214677 (n + 1)).toNat

end

end A255805.P1590803931905846172

namespace A255805

/-- `A028903(A214677(n+1))` -/
def P1590803931905846172.Spec : Prop :=
  ∀ n, P1590803931905846172.a n = A255805 (n + 1)

end A255805

/-! ## A255805.P14811566003072067827

`lt[0, A007954(A007094(n))]`
-/

namespace A255805.P14811566003072067827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255805.P14811566003072067827

namespace A255805

/-- `lt[0, A007954(A007094(n))]` -/
def P14811566003072067827.Spec : Prop :=
  ∀ n, (P14811566003072067827.a n : ℤ) = A255805 (n + 1)

end A255805

/-! ## A255805.P16893311689687505901

`lt[A050605(n), A007954(A008541(n+1))]`
-/

namespace A255805.P16893311689687505901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A008541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255805.P16893311689687505901

namespace A255805

/-- `lt[A050605(n), A007954(A008541(n+1))]` -/
def P16893311689687505901.Spec : Prop :=
  ∀ n, (P16893311689687505901.a n : ℤ) = A255805 (n + 1)

end A255805

/-!
# A255806: Expansion of e.g.f.: exp(Sum_{k>=1} 3*x^k).

The programs for A255806, the canonical program `A255806.P6341303290883344919` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255806 has offset 0).

The definition of A255806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255806.P6341303290883344919

`(2*n+1)*a(n-1)-(n-2)*(n-1)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255806

/-- `(2*n+1)*a(n-1)-(n-2)*(n-1)*a(n-2)` -/
def P6341303290883344919.Spec : Prop :=
  ∀ n, P6341303290883344919.a n = A255806 n

theorem P6341303290883344919.correct : P6341303290883344919.Spec := by
  intro n
  simp only [A255806]

end A255806

/-! ## A255806.P969205302955374123

`record[A253286(∑[a(n-1)+1]+1)]` with `a(0)=3, a(1)=2`
-/

namespace A255806.P969205302955374123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255806.P969205302955374123

namespace A255806

/-- `record[A253286(∑[a(n-1)+1]+1)]` -/
def P969205302955374123.Spec : Prop :=
  ∀ n, P969205302955374123.a n = A255806 n

end A255806

/-! ## A255806.P770312829702627487

`A253286(A167614(n+2))`
-/

namespace A255806.P770312829702627487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (A167614 (n + 2)).toNat

end

end A255806.P770312829702627487

namespace A255806

/-- `A253286(A167614(n+2))` -/
def P770312829702627487.Spec : Prop :=
  ∀ n, P770312829702627487.a n = A255806 n

end A255806

/-! ## A255806.P5665495618552035340

`A253286(Δ[A008778(n)]+5)`
-/

namespace A255806.P5665495618552035340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (f1 (n + 1) - f1 n + 5).toNat

end

end A255806.P5665495618552035340

namespace A255806

/-- `A253286(Δ[A008778(n)]+5)` -/
def P5665495618552035340.Spec : Prop :=
  ∀ n, P5665495618552035340.a n = A255806 n

end A255806

/-! ## A255806.P1912735319642692321

`record[A253286(∑[A233583(n+1)])]`
-/

namespace A255806.P1912735319642692321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255806.P1912735319642692321

namespace A255806

/-- `record[A253286(∑[A233583(n+1)])]` -/
def P1912735319642692321.Spec : Prop :=
  ∀ n, P1912735319642692321.a n = A255806 n

end A255806

/-! ## A255806.P14030431100225507731

`record[A253286(A000124(n+1)+2)]`
-/

namespace A255806.P14030431100225507731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (A000124 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255806.P14030431100225507731

namespace A255806

/-- `record[A253286(A000124(n+1)+2)]` -/
def P14030431100225507731.Spec : Prop :=
  ∀ n, P14030431100225507731.a n = A255806 n

end A255806

/-! ## A255806.P5699176800884794942

`record[A253286((n+1)%A289192(n))]`
-/

namespace A255806.P5699176800884794942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (Int.tmod (n + 1 : ℤ) (A289192 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255806.P5699176800884794942

namespace A255806

/-- `record[A253286((n+1)%A289192(n))]` -/
def P5699176800884794942.Spec : Prop :=
  ∀ n, P5699176800884794942.a n = A255806 n

end A255806

/-! ## A255806.P2606751052433651454

`record[and(A253286(n+2), A294289(n))]`
-/

namespace A255806.P2606751052433651454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253286 (n + 2)) (A294289 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255806.P2606751052433651454

namespace A255806

/-- `record[and(A253286(n+2), A294289(n))]` -/
def P2606751052433651454.Spec : Prop :=
  ∀ n, P2606751052433651454.a n = A255806 n

end A255806

/-!
# A255807: Expansion of e.g.f.: exp(Sum_{k>=1} k^2 * x^k).

The programs for A255807, there is no canonical definition to state claims against.
-/

/-! ## A255807.P6538637107234100507

`A293785(∑[n+3]+n+3)`
-/

namespace A255807.P6538637107234100507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293785 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A255807.P6538637107234100507

/-! ## A255807.P98675866843724616

`A293724(2*n²)`
-/

namespace A255807.P98675866843724616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (2 * n ^ 2)

end

end A255807.P98675866843724616

/-! ## A255807.P5910154040528712616

`or(1, A293724(A046092(n)))`
-/

namespace A255807.P5910154040528712616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293724 (A046092 n).toNat)

end

end A255807.P5910154040528712616

/-! ## A255807.P13262622965962897154

`or(1, A293724(A106232(n+1)))`
-/

namespace A255807.P13262622965962897154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293724 (A106232 (n + 1)).toNat)

end

end A255807.P13262622965962897154

/-! ## A255807.P6991781936238779340

`gcd(A000038(n), A293724(A106232(n+1)))`
-/

namespace A255807.P6991781936238779340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293724 (A106232 (n + 1)).toNat)

end

end A255807.P6991781936238779340

/-!
# A255808: Numbers with no zeros in base-9 representation.

The programs for A255808, the canonical program `A255808.P14703978000163478120` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255808 has offset 1).

The definition of A255808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255808.P5478449388249549038

`lt[0, A309788(n)]`
-/

namespace A255808.P5478449388249549038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255808.P5478449388249549038

namespace A255808

/-- `lt[0, A309788(n)]` -/
def P5478449388249549038.Spec : Prop :=
  ∀ n, (P5478449388249549038.a n : ℤ) = A255808 (n + 1)

end A255808

/-! ## A255808.P14703978000163478120

`record[A052382(n+1)+n+1-A007095(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A255808

/-- `record[A052382(n+1)+n+1-A007095(n+1)]` -/
def P14703978000163478120.Spec : Prop :=
  ∀ n, P14703978000163478120.a n = A255808 (n + 1)

theorem P14703978000163478120.correct : P14703978000163478120.Spec := by
  intro n
  simp only [A255808, Nat.add_sub_cancel]

end A255808

/-! ## A255808.P14747176321258118878

`eq[A309788(n), A338882(n)]`
-/

namespace A255808.P14747176321258118878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255808.P14747176321258118878

namespace A255808

/-- `eq[A309788(n), A338882(n)]` -/
def P14747176321258118878.Spec : Prop :=
  ∀ n, (P14747176321258118878.a n : ℤ) = A255808 (n + 1)

end A255808

/-! ## A255808.P17124749297947629044

`A028904(A214678(n+1))`
-/

namespace A255808.P17124749297947629044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A214678 (n + 1)).toNat

end

end A255808.P17124749297947629044

namespace A255808

/-- `A028904(A214678(n+1))` -/
def P17124749297947629044.Spec : Prop :=
  ∀ n, P17124749297947629044.a n = A255808 (n + 1)

end A255808

/-! ## A255808.P15179494071316796772

`eq[0, A067898(A007095(n))]`
-/

namespace A255808.P15179494071316796772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255808.P15179494071316796772

namespace A255808

/-- `eq[0, A067898(A007095(n))]` -/
def P15179494071316796772.Spec : Prop :=
  ∀ n, (P15179494071316796772.a n : ℤ) = A255808 (n + 1)

end A255808

/-! ## A255808.P460773949444674805

`record[(n+1)%A004719(A007095(n)+2)]`
-/

namespace A255808.P460773949444674805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A004719 (A007095 n + 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255808.P460773949444674805

namespace A255808

/-- `record[(n+1)%A004719(A007095(n)+2)]` -/
def P460773949444674805.Spec : Prop :=
  ∀ n, P460773949444674805.a n = A255808 (n + 1)

end A255808

/-! ## A255808.P10407340416728216228

`record[n%A004719(A052413(n+1)+1)+1]`
-/

namespace A255808.P10407340416728216228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A004719 (A052413 (n + 1) + 1).toNat) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255808.P10407340416728216228

namespace A255808

/-- `record[n%A004719(A052413(n+1)+1)+1]` -/
def P10407340416728216228.Spec : Prop :=
  ∀ n, P10407340416728216228.a n = A255808 (n + 1)

end A255808

/-! ## A255808.P14257886365372169213

`lt[A004176(n), A098736(A007095(n))]`
-/

namespace A255808.P14257886365372169213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255808.P14257886365372169213

namespace A255808

/-- `lt[A004176(n), A098736(A007095(n))]` -/
def P14257886365372169213.Spec : Prop :=
  ∀ n, (P14257886365372169213.a n : ℤ) = A255808 (n + 1)

end A255808

/-! ## A255808.P6240398209760980443

`lt[A067898(n), A098736(A007095(n))]`
-/

namespace A255808.P6240398209760980443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255808.P6240398209760980443

namespace A255808

/-- `lt[A067898(n), A098736(A007095(n))]` -/
def P6240398209760980443.Spec : Prop :=
  ∀ n, (P6240398209760980443.a n : ℤ) = A255808 (n + 1)

end A255808

/-! ## A255808.P12792999099945929856

`lt[A102683(n), A098736(A007095(n))]`
-/

namespace A255808.P12792999099945929856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255808.P12792999099945929856

namespace A255808

/-- `lt[A102683(n), A098736(A007095(n))]` -/
def P12792999099945929856.Spec : Prop :=
  ∀ n, (P12792999099945929856.a n : ℤ) = A255808 (n + 1)

end A255808

/-! ## A255808.P4755383898224687219

`eq[A004719(A007095(n)+1), A007095(n+1)]+1`
-/

namespace A255808.P4755383898224687219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A007095 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255808.P4755383898224687219

namespace A255808

/-- `eq[A004719(A007095(n)+1), A007095(n+1)]+1` -/
def P4755383898224687219.Spec : Prop :=
  ∀ n, (P4755383898224687219.a n : ℤ) = A255808 (n + 1)

end A255808

/-!
# A255809: Infinite tree (flattened) generated as follows: generation g(1) = (1); thereafter, putting h = 2^n, each (1,x(2),...,x(h)) in generation g(n) has 1st and 2nd offspring, namely (1,x(2),...,x(h),x(h)+1) and (1,x(2),...,x(h),x(h)+2).

The programs for A255809, there is no canonical definition to state claims against.
-/

/-! ## A255809.P6226313831536596997

`A074279(A119632(n+1))%A119642(n+1)`
-/

namespace A255809.P6226313831536596997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074279 (A119632 (n + 1)).toNat) (A119642 (n + 1))

end

end A255809.P6226313831536596997

/-! ## A255809.P18066220642732928790

`A074279(A119632(n+1)%A323740(n+1))`
-/

namespace A255809.P18066220642732928790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (Int.tmod (A119632 (n + 1)) (A323740 (n + 1))).toNat

end

end A255809.P18066220642732928790

/-! ## A255809.P6137890532028999003

`A115574(A109515(n+1)-1)`
-/

namespace A255809.P6137890532028999003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (A109515 (n + 1) - 1).toNat

end

end A255809.P6137890532028999003

/-! ## A255809.P1691150022973356265

`A115574(xor(1, A109515(n+1)))`
-/

namespace A255809.P1691150022973356265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (Int.xor 1 (A109515 (n + 1))).toNat

end

end A255809.P1691150022973356265

/-! ## A255809.P2704851202983338610

`A372471(A246337(n+1)+floor(1/(n+1)))`
-/

namespace A255809.P2704851202983338610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372471 (A246337 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A255809.P2704851202983338610

/-!
# A255810: Infinite tree (flattened) generated as follows: generation g(1) = (1); thereafter, putting h = 3^n, each (1,x(2),...,x(h)) in generation g(n) has 1st, 2nd, and 3rd offspring, namely (1,x(2),...,x(h),x(h)+1), (1,x(2),...,x(h),x(h)+2) and (1,x(2),...,h(h),x(h)+3).

The programs for A255810, there is no canonical definition to state claims against.
-/

/-! ## A255810.P307824291434282066

`A077609(lt[A101048(n), A077609(n+1)])`
-/

namespace A255810.P307824291434282066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255810.P307824291434282066

/-! ## A255810.P11603787506291017429

`A222266(lt[A204389(n), A222266(n+1)])`
-/

namespace A255810.P11603787506291017429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255810.P11603787506291017429

/-! ## A255810.P13575868680313489769

`A292997(n+1)+A025469(A218522(n+1))`
-/

namespace A255810.P13575868680313489769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292997 (n + 1) + A025469 (A218522 (n + 1)).toNat

end

end A255810.P13575868680313489769

/-! ## A255810.P17757657530439758680

`gcd(A089050(3*n+2), A189029(A000079(n)))`
-/

namespace A255810.P17757657530439758680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089050 (3 * n + 2)) (A189029 (A000079 n).toNat)

end

end A255810.P17757657530439758680

/-! ## A255810.P14055125160346032764

`A078680(A370582(n+1)+A135585(n))`
-/

namespace A255810.P14055125160346032764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (A370582 (n + 1) + A135585 n).toNat

end

end A255810.P14055125160346032764

/-!
# A255811: Rectangular array: row n gives the numerators in the positive convolutory n-th root of (1,1,1,...).

The programs for A255811, there is no canonical definition to state claims against.
-/

/-! ## A255811.P10661994630306554009

`gcd(A005187(n+3), A071576(A029653(n)))`
-/

namespace A255811.P10661994630306554009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005187 (n + 3)) (A071576 (A029653 n).toNat)

end

end A255811.P10661994630306554009

/-! ## A255811.P9920298068553715934

`A096294(A173018(n))%A327473(n+5)`
-/

namespace A255811.P9920298068553715934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096294 (A173018 n).toNat) (A327473 (n + 5))

end

end A255811.P9920298068553715934

/-! ## A255811.P1336884383152897437

`gcd(A241829(A095693(n)), A374849(3*n+5))`
-/

namespace A255811.P1336884383152897437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241829 (A095693 n).toNat) (A374849 (3 * n + 5))

end

end A255811.P1336884383152897437

/-!
# A255812: Rectangular array: row n gives the denominators in the positive convolutory n-th root of (1,1,1,...).

The programs for A255812, the canonical program `A255812.P10331550004199229261` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255812 has offset 1).

The definition of A255812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255812.P10331550004199229261

`A009998(n)/A152656(n)*A119502(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A255812

/-- `A009998(n)/A152656(n)*A119502(n)` -/
def P10331550004199229261.Spec : Prop :=
  ∀ n, P10331550004199229261.a n = (A255812 (n + 1) : ℚ)

end A255812

/-! ## A255812.P2501876387988021356

`A009998(n)²/A152650(n)`
-/

namespace A255812.P2501876387988021356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n ^ 2 : ℚ) / (A152650 n : ℚ)

end

end A255812.P2501876387988021356

namespace A255812

/-- `A009998(n)²/A152650(n)` -/
def P2501876387988021356.Spec : Prop :=
  ∀ n, P2501876387988021356.a n = (A255812 (n + 1) : ℚ)

end A255812

/-! ## A255812.P18279765139325421589

`A000027(A009998(n)/A152650(n)*A009998(n))`
-/

namespace A255812.P18279765139325421589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A009998 n : ℚ) / (A152650 n : ℚ) * (A009998 n : ℚ))).toNat

end

end A255812.P18279765139325421589

namespace A255812

/-- `A000027(A009998(n)/A152650(n)*A009998(n))` -/
def P18279765139325421589.Spec : Prop :=
  ∀ n, P18279765139325421589.a n = A255812 (n + 1)

end A255812

/-! ## A255812.P12226113361177624270

`A000290(A009998(2*n-n))/A152650(n)`
-/

namespace A255812.P12226113361177624270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A009998 (2 * n - n)).toNat : ℚ) / (A152650 n : ℚ)

end

end A255812.P12226113361177624270

namespace A255812

/-- `A000290(A009998(2*n-n))/A152650(n)` -/
def P12226113361177624270.Spec : Prop :=
  ∀ n, P12226113361177624270.a n = (A255812 (n + 1) : ℚ)

end A255812

/-! ## A255812.P1790128878705186370

`A000027(A000290(A009998(n))/A152650(n))`
-/

namespace A255812.P1790128878705186370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A000290 (A009998 n).toNat : ℚ) / (A152650 n : ℚ))).toNat

end

end A255812.P1790128878705186370

namespace A255812

/-- `A000027(A000290(A009998(n))/A152650(n))` -/
def P1790128878705186370.Spec : Prop :=
  ∀ n, P1790128878705186370.a n = A255812 (n + 1)

end A255812

/-! ## A255812.P11976955069833829995

`(A000290(A009998(n))/A152650(n))%A020695(n)`
-/

namespace A255812.P11976955069833829995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000290 (A009998 n).toNat : ℚ) / (A152650 n : ℚ))) (A020695 n)

end

end A255812.P11976955069833829995

namespace A255812

/-- `(A000290(A009998(n))/A152650(n))%A020695(n)` -/
def P11976955069833829995.Spec : Prop :=
  ∀ n, P11976955069833829995.a n = A255812 (n + 1)

end A255812

/-! ## A255812.P13498091509167116805

`A008683(4*(n+1))+A000290(A009998(n))/A152650(n)`
-/

namespace A255812.P13498091509167116805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (4 * (n + 1)) : ℚ) + (A000290 (A009998 n).toNat : ℚ) / (A152650 n : ℚ)

end

end A255812.P13498091509167116805

namespace A255812

/-- `A008683(4*(n+1))+A000290(A009998(n))/A152650(n)` -/
def P13498091509167116805.Spec : Prop :=
  ∀ n, P13498091509167116805.a n = (A255812 (n + 1) : ℚ)

end A255812

/-! ## A255812.P9781997653447822646

`A000290(A009998(n))/A152650(n)*A014963(6*(n+1))`
-/

namespace A255812.P9781997653447822646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A009998 n).toNat : ℚ) / (A152650 n : ℚ) * (A014963 (6 * (n + 1)) : ℚ)

end

end A255812.P9781997653447822646

namespace A255812

/-- `A000290(A009998(n))/A152650(n)*A014963(6*(n+1))` -/
def P9781997653447822646.Spec : Prop :=
  ∀ n, P9781997653447822646.a n = (A255812 (n + 1) : ℚ)

end A255812

/-!
# A255813: Numbers of words on {0,1,2,3} having no isolated zeros.

The programs for A255813, the canonical program `A255813.P10242691851473888526` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255813 has offset 0).

The definition of A255813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255813.P10242691851473888526

`4*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255813

/-- `4*a(n-1)-3*a(n-2)+3*a(n-3)` -/
def P10242691851473888526.Spec : Prop :=
  ∀ n, P10242691851473888526.a n = A255813 n

theorem P10242691851473888526.correct : P10242691851473888526.Spec := by
  intro n
  simp only [A255813]

end A255813

/-! ## A255813.P1091057615100673436

`ogf((1-x+x^2)/(1-4x+3x^2-3x^3))`
-/

namespace A255813.P1091057615100673436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -4, 3, -3] n

end

end A255813.P1091057615100673436

namespace A255813

/-- `ogf((1-x+x^2)/(1-4x+3x^2-3x^3))` -/
def P1091057615100673436.Spec : Prop :=
  ∀ n, P1091057615100673436.a n = A255813 n

end A255813

/-! ## A255813.P17641128808863145936

`A029916(4*a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A255813.P17641128808863145936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029916 (4 * a (n - 1)).toNat - a (n - 1)

end

end A255813.P17641128808863145936

namespace A255813

/-- `A029916(4*a(n-1))-a(n-1)` -/
def P17641128808863145936.Spec : Prop :=
  ∀ n, P17641128808863145936.a n = A255813 n

end A255813

/-! ## A255813.P13815040845904720058

`A037915(A189471(2*a(n-1)))` with `a(0)=1`
-/

namespace A255813.P13815040845904720058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037915 (A189471 (2 * a (n - 1)).toNat).toNat

end

end A255813.P13815040845904720058

namespace A255813

/-- `A037915(A189471(2*a(n-1)))` -/
def P13815040845904720058.Spec : Prop :=
  ∀ n, P13815040845904720058.a n = A255813 n

end A255813

/-!
# A255814: Numbers of words on {0,1,2,3,4,} having no isolated zeros.

The programs for A255814, the canonical program `A255814.P14792678278012952661` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255814 has offset 0).

The definition of A255814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255814.P14792678278012952661

`5*a(n-1)-4*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=17`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255814

/-- `5*a(n-1)-4*a(n-2)+4*a(n-3)` -/
def P14792678278012952661.Spec : Prop :=
  ∀ n, P14792678278012952661.a n = A255814 n

theorem P14792678278012952661.correct : P14792678278012952661.Spec := by
  intro n
  simp only [A255814]

end A255814

/-! ## A255814.P408803131299179547

`ogf((1-x+x^2)/(1-5x+4x^2-4x^3))`
-/

namespace A255814.P408803131299179547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -5, 4, -4] n

end

end A255814.P408803131299179547

namespace A255814

/-- `ogf((1-x+x^2)/(1-5x+4x^2-4x^3))` -/
def P408803131299179547.Spec : Prop :=
  ∀ n, P408803131299179547.a n = A255814 n

end A255814

/-! ## A255814.P1450406618783221479

`Δ[Δ[A275903(n)/16]]`
-/

namespace A255814.P1450406618783221479
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275903 n : ℚ) / 16

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255814.P1450406618783221479

namespace A255814

/-- `Δ[Δ[A275903(n)/16]]` -/
def P1450406618783221479.Spec : Prop :=
  ∀ n, P1450406618783221479.a n = (A255814 n : ℚ)

end A255814

/-!
# A255815: Numbers of words on {0,1,2,3,4,5} having no isolated zeros.

The programs for A255815, the canonical program `A255815.P8420085449742843384` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255815 has offset 0).

The definition of A255815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255815.P8420085449742843384

`6*a(n-1)-5*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=5, a(2)=26`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255815

/-- `6*a(n-1)-5*a(n-2)+5*a(n-3)` -/
def P8420085449742843384.Spec : Prop :=
  ∀ n, P8420085449742843384.a n = A255815 n

theorem P8420085449742843384.correct : P8420085449742843384.Spec := by
  intro n
  simp only [A255815]

end A255815

/-! ## A255815.P4451600181196490084

`ogf((1-x+x^2)/(1-6x+5x^2-5x^3))`
-/

namespace A255815.P4451600181196490084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -6, 5, -5] n

end

end A255815.P4451600181196490084

namespace A255815

/-- `ogf((1-x+x^2)/(1-6x+5x^2-5x^3))` -/
def P4451600181196490084.Spec : Prop :=
  ∀ n, P4451600181196490084.a n = A255815 n

end A255815

/-!
# A255816: Number of primes in A065381 less than 10^n.

The programs for A255816, there is no canonical definition to state claims against.
-/

/-! ## A255816.P1031839429032979206

`A074940(A366647(n))-1`
-/

namespace A255816.P1031839429032979206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (A366647 n).toNat - 1

end

end A255816.P1031839429032979206

/-!
# A255817: Parity of A000788, which is the total number of ones in 0..n in binary.

The programs for A255817, the canonical program `A255817.P8865558033794289611` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255817 has offset 0).

The definition of A255817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255817.P2227657159591098608

`∑[char[xor(n, Δ[n²])]]%2`
-/

namespace A255817.P2227657159591098608
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A255817.P2227657159591098608

namespace A255817

/-- `∑[char[xor(n, Δ[n²])]]%2` -/
def P2227657159591098608.Spec : Prop :=
  ∀ n, (P2227657159591098608.a n : ℤ) = A255817 n

end A255817

/-! ## A255817.P10487967364753079014

`∑[char[comp[xor(n, 2*n)]]]%2`
-/

namespace A255817.P10487967364753079014
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A255817.P10487967364753079014

namespace A255817

/-- `∑[char[comp[xor(n, 2*n)]]]%2` -/
def P10487967364753079014.Spec : Prop :=
  ∀ n, (P10487967364753079014.a n : ℤ) = A255817 n

end A255817

/-! ## A255817.P3407297564149755081

`and(1, ∑[char[comp[xor(n, 2*n)]]])`
-/

namespace A255817.P3407297564149755081
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255817.P3407297564149755081

namespace A255817

/-- `and(1, ∑[char[comp[xor(n, 2*n)]]])` -/
def P3407297564149755081.Spec : Prop :=
  ∀ n, (P3407297564149755081.a n : ℤ) = A255817 n

end A255817

/-! ## A255817.P8865558033794289611

`∑[∑[∑{e}[xor(n, -n), #]]]%2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255817

/-- `∑[∑[∑{e}[xor(n, -n), #]]]%2` -/
def P8865558033794289611.Spec : Prop :=
  ∀ n, (P8865558033794289611.a n : ℤ) = A255817 n

theorem P8865558033794289611.correct : P8865558033794289611.Spec := by
  intro n
  simp only [A255817]

end A255817

/-! ## A255817.P8129733806581060497

`and(1, ∑[∑[∑{e}[xor(n, -n), #]]])`
-/

namespace A255817.P8129733806581060497
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255817.P8129733806581060497

namespace A255817

/-- `and(1, ∑[∑[∑{e}[xor(n, -n), #]]])` -/
def P8129733806581060497.Spec : Prop :=
  ∀ n, (P8129733806581060497.a n : ℤ) = A255817 n

theorem P8129733806581060497.correct : P8129733806581060497.Spec := by
  intro n
  simp only [A255817, Nat.add_sub_cancel, A255817.P8129733806581060497.f3, A255817.P8129733806581060497.f2, A255817.P8129733806581060497.f1, A255817.P8129733806581060497.a, A255817.P8865558033794289611.f3, A255817.P8865558033794289611.f2, A255817.P8865558033794289611.f1, A255817.P8865558033794289611.a, SequenceMachineLib.memo_apply]
  try simp

end A255817

/-! ## A255817.P6400205146251556444

`∑[a(floor(n/2))+n]%2` with `a(0)=0`
-/

namespace A255817.P6400205146251556444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A255817.P6400205146251556444

namespace A255817

/-- `∑[a(floor(n/2))+n]%2` -/
def P6400205146251556444.Spec : Prop :=
  ∀ n, (P6400205146251556444.a n : ℤ) = A255817 n

end A255817

/-! ## A255817.P2733641576771574491

`and(1, ∑[a(floor(n/2))+n])` with `a(0)=0`
-/

namespace A255817.P2733641576771574491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255817.P2733641576771574491

namespace A255817

/-- `and(1, ∑[a(floor(n/2))+n])` -/
def P2733641576771574491.Spec : Prop :=
  ∀ n, (P2733641576771574491.a n : ℤ) = A255817 n

end A255817

/-! ## A255817.P4819588967070718004

`∑[a(and(n, n-1))+1]²%2` with `a(0)=0`
-/

namespace A255817.P4819588967070718004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 2

end

end A255817.P4819588967070718004

namespace A255817

/-- `∑[a(and(n, n-1))+1]²%2` -/
def P4819588967070718004.Spec : Prop :=
  ∀ n, (P4819588967070718004.a n : ℤ) = A255817 n

end A255817

/-! ## A255817.P6387211159186306940

`and(1, ∑[a(and(n, n-1))+1]²)` with `a(0)=0`
-/

namespace A255817.P6387211159186306940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A255817.P6387211159186306940

namespace A255817

/-- `and(1, ∑[a(and(n, n-1))+1]²)` -/
def P6387211159186306940.Spec : Prop :=
  ∀ n, (P6387211159186306940.a n : ℤ) = A255817 n

end A255817

/-! ## A255817.P11907120740963234363

`A000788(n)%2`
-/

namespace A255817.P11907120740963234363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000788 n) 2

end

end A255817.P11907120740963234363

namespace A255817

/-- `A000788(n)%2` -/
def P11907120740963234363.Spec : Prop :=
  ∀ n, P11907120740963234363.a n = A255817 n

end A255817

/-! ## A255817.P12206741123632911923

`A005536(n)%2`
-/

namespace A255817.P12206741123632911923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005536 n) 2

end

end A255817.P12206741123632911923

namespace A255817

/-- `A005536(n)%2` -/
def P12206741123632911923.Spec : Prop :=
  ∀ n, P12206741123632911923.a n = A255817 n

end A255817

/-! ## A255817.P14378805417068519773

`A115384(n)%2`
-/

namespace A255817.P14378805417068519773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115384 n) 2

end

end A255817.P14378805417068519773

namespace A255817

/-- `A115384(n)%2` -/
def P14378805417068519773.Spec : Prop :=
  ∀ n, P14378805417068519773.a n = A255817 n

end A255817

/-! ## A255817.P4768533044799708041

`A122247(n)%2`
-/

namespace A255817.P4768533044799708041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122247 n) 2

end

end A255817.P4768533044799708041

namespace A255817

/-- `A122247(n)%2` -/
def P4768533044799708041.Spec : Prop :=
  ∀ n, P4768533044799708041.a n = A255817 n

end A255817

/-! ## A255817.P184239139232754686

`A163095(n)%2`
-/

namespace A255817.P184239139232754686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163095 n) 2

end

end A255817.P184239139232754686

namespace A255817

/-- `A163095(n)%2` -/
def P184239139232754686.Spec : Prop :=
  ∀ n, P184239139232754686.a n = A255817 n

end A255817

/-! ## A255817.P9167828715404883742

`A231500(n)%2`
-/

namespace A255817.P9167828715404883742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231500 n) 2

end

end A255817.P9167828715404883742

namespace A255817

/-- `A231500(n)%2` -/
def P9167828715404883742.Spec : Prop :=
  ∀ n, P9167828715404883742.a n = A255817 n

end A255817

/-! ## A255817.P11769021468196165894

`A231501(n)%2`
-/

namespace A255817.P11769021468196165894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231501 n) 2

end

end A255817.P11769021468196165894

namespace A255817

/-- `A231501(n)%2` -/
def P11769021468196165894.Spec : Prop :=
  ∀ n, P11769021468196165894.a n = A255817 n

end A255817

/-! ## A255817.P16468578560965406356

`A231502(n)%2`
-/

namespace A255817.P16468578560965406356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231502 n) 2

end

end A255817.P16468578560965406356

namespace A255817

/-- `A231502(n)%2` -/
def P16468578560965406356.Spec : Prop :=
  ∀ n, P16468578560965406356.a n = A255817 n

end A255817

/-! ## A255817.P8716805382417753007

`A274604(n)%2`
-/

namespace A255817.P8716805382417753007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274604 n) 2

end

end A255817.P8716805382417753007

namespace A255817

/-- `A274604(n)%2` -/
def P8716805382417753007.Spec : Prop :=
  ∀ n, P8716805382417753007.a n = A255817 n

end A255817

/-!
# A255818: a(n) = 2*B*C*(n mod A) + A*C*(n mod B) + A*B*(n mod C) with A=3, B=5, C=7.

The programs for A255818, the canonical program `A255818.P9582444811318780816` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255818 has offset 1).

The definition of A255818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255818.P9582444811318780816

`70*(n+1)%3+21*(n+1)%5+15*(n+1)%7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255818

/-- `70*(n+1)%3+21*(n+1)%5+15*(n+1)%7` -/
def P9582444811318780816.Spec : Prop :=
  ∀ n, (P9582444811318780816.a n : ℤ) = A255818 (n + 1)

theorem P9582444811318780816.correct : P9582444811318780816.Spec := by
  intro n
  simp only [A255818, Nat.add_sub_cancel]

end A255818

/-!
# A255819: Expansion of e.g.f. exp(Sum_{k>=1} k^3 * x^k).

The programs for A255819, there is no canonical definition to state claims against.
-/

/-! ## A255819.P9839340204671417107

`A293785(A052905(n+2))`
-/

namespace A255819.P9839340204671417107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293785 (A052905 (n + 2)).toNat

end

end A255819.P9839340204671417107

/-! ## A255819.P8237726891995833630

`A293785(eq[4, A025581(n)])`
-/

namespace A255819.P8237726891995833630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255819.P8237726891995833630

/-! ## A255819.P6418997473267180166

`A293785(eq[5, A193739(n)])`
-/

namespace A255819.P6418997473267180166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255819.P6418997473267180166

/-! ## A255819.P14980886400178266679

`A293785(eq[9, A099375(n)])`
-/

namespace A255819.P14980886400178266679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255819.P14980886400178266679

/-! ## A255819.P14278643868006495094

`A293785(eq[5, A004736(n+1)])`
-/

namespace A255819.P14278643868006495094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255819.P14278643868006495094

/-!
# A255822: Number of nonzero terms in A117943 up to index 2^n: a(n) = Sum_{k=1..2^n} A117943(k).

The programs for A255822, there is no canonical definition to state claims against.
-/

/-! ## A255822.P15402181665229640791

`A071996(2^n)`
-/

namespace A255822.P15402181665229640791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (2 ^ n)

end

end A255822.P15402181665229640791

/-! ## A255822.P1347815218495808773

`2^n-A071991(2^n)`
-/

namespace A255822.P1347815218495808773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A071991 (2 ^ n)

end

end A255822.P1347815218495808773

/-! ## A255822.P8251952648958534395

`(2^n-A071995(2^n))/2`
-/

namespace A255822.P8251952648958534395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A071995 (2 ^ n) : ℚ) / 2

end

end A255822.P8251952648958534395

/-! ## A255822.P2040437043476963587

`xor(-A071991(xor(-1, -2^n)+1), -2^n)`
-/

namespace A255822.P2040437043476963587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A071991 (Int.xor (-1) (-(2 ^ n : ℤ)) + 1).toNat) (-(2 ^ n : ℤ))

end

end A255822.P2040437043476963587

/-! ## A255822.P17684483202872337919

`A071996(A000079(n))+char[14]`
-/

namespace A255822.P17684483202872337919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A255822.P17684483202872337919

/-!
# A255824: a(n) = n for n < 4; a(4n) = a(n); if every 4th term (a(4), a(8), a(12), ...) is deleted, this gives back the original sequence.

The programs for A255824, there is no canonical definition to state claims against.
-/

/-! ## A255824.P15755075987910568280

`A161916(A183211(n+1)^abs(A330025(n)))`
-/

namespace A255824.P15755075987910568280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161916 (SequenceMachineLib.roundAway ((A183211 (n + 1) : ℚ) ^ (|A330025 n| : ℤ))).toNat

end

end A255824.P15755075987910568280

/-! ## A255824.P12382856233269101185

`A161916(or(A117943(n+1), A183211(n+1)))`
-/

namespace A255824.P12382856233269101185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161916 (Int.lor (A117943 (n + 1)) (A183211 (n + 1))).toNat

end

end A255824.P12382856233269101185

/-! ## A255824.P17954714290125895755

`A161916(or(A161916(n)²², A183211(n+1)))`
-/

namespace A255824.P17954714290125895755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161916 (Int.lor ((A161916 n ^ 2) ^ 2) (A183211 (n + 1))).toNat

end

end A255824.P17954714290125895755

/-! ## A255824.P15144645661798318292

`gcd(A001221(A110334(n)), A037459(n+1))`
-/

namespace A255824.P15144645661798318292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A110334 n).toNat) (A037459 (n + 1))

end

end A255824.P15144645661798318292

/-! ## A255824.P15904188732677190868

`A106795(A193511(2*n+5)+A016910(n))`
-/

namespace A255824.P15904188732677190868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106795 (A193511 (2 * n + 5) + A016910 n).toNat

end

end A255824.P15904188732677190868

/-!
# A255825: A self-generating sequence: a(n) = n for n < 5; a(5n) = a(n); if every 5th term (a(5), a(10), a(15),...) is deleted, this gives back the original sequence.

The programs for A255825, there is no canonical definition to state claims against.
-/

/-! ## A255825.P11023614864596501236

`gcd(A118759(A032571(n+1)), A277543(n+1))`
-/

namespace A255825.P11023614864596501236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118759 (A032571 (n + 1)).toNat) (A277543 (n + 1))

end

end A255825.P11023614864596501236

/-! ## A255825.P4882790663823215161

`gcd(A002837(A083477(n+1)), A120507(n+1))`
-/

namespace A255825.P4882790663823215161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002837 (A083477 (n + 1)).toNat) (A120507 (n + 1))

end

end A255825.P4882790663823215161

/-! ## A255825.P16272919434047956819

`gcd(A001221(A003426(n+1)), A002377(n+1))`
-/

namespace A255825.P16272919434047956819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A003426 (n + 1)).toNat) (A002377 (n + 1))

end

end A255825.P16272919434047956819

/-!
# A255826: a(n) = n for n < 6; a(6n) = a(n); if every 6th term (a(6), a(12), a(18),...) is deleted, this gives back the original sequence.

The programs for A255826, there is no canonical definition to state claims against.
-/

/-! ## A255826.P17149304209311527222

`gcd(A121229(n+1), A358373(A358373(n+1)))`
-/

namespace A255826.P17149304209311527222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121229 (n + 1)) (A358373 (A358373 (n + 1)).toNat)

end

end A255826.P17149304209311527222

/-! ## A255826.P17928719084108036910

`gcd(∑[A351241(n+1)], A335137(n+1))`
-/

namespace A255826.P17928719084108036910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A335137 (n + 1))

end

end A255826.P17928719084108036910

/-! ## A255826.P1458104763898359062

`A185284(A089530(n+1))+gcd(n+1, A154364(n+1))`
-/

namespace A255826.P1458104763898359062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A089530 (n + 1)).toNat + (Int.gcd (n + 1 : ℤ) (A154364 (n + 1)) : ℤ)

end

end A255826.P1458104763898359062

/-! ## A255826.P6806632822502893019

`gcd(n+1, ∑[A022930(A129852(n))])`
-/

namespace A255826.P6806632822502893019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022930 (A129852 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255826.P6806632822502893019

/-! ## A255826.P4697687381957959840

`gcd(A000005(A164191(n)), A161055(n+1))`
-/

namespace A255826.P4697687381957959840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A164191 n).toNat) (A161055 (n + 1))

end

end A255826.P4697687381957959840

/-!
# A255827: a(n) = n for n < 7; a(7n) = a(n); if every 7th term (a(7), a(14), a(21),...) is deleted, this gives back the original sequence.

The programs for A255827, there is no canonical definition to state claims against.
-/

/-! ## A255827.P169557650174908935

`A255829(A007093(n+1)%A078778(n+1))`
-/

namespace A255827.P169557650174908935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255829 (Int.tmod (A007093 (n + 1)) (A078778 (n + 1))).toNat

end

end A255827.P169557650174908935

/-! ## A255827.P16172596522425460033

`gcd(A067080(n+1), A120240(A064429(3*(n+1))))`
-/

namespace A255827.P16172596522425460033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067080 (n + 1)) (A120240 (A064429 (3 * (n + 1))).toNat)

end

end A255827.P16172596522425460033

/-! ## A255827.P4162990029201223665

`gcd(∑[A146732(n+1)], A161031(n+1))`
-/

namespace A255827.P4162990029201223665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A161031 (n + 1))

end

end A255827.P4162990029201223665

/-! ## A255827.P11457969051374477050

`gcd(A161082(n+1), A327083(A000124(n)))`
-/

namespace A255827.P11457969051374477050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161082 (n + 1)) (A327083 (A000124 n).toNat)

end

end A255827.P11457969051374477050

/-!
# A255828: a(n) = n for n < 8; a(8n) = a(n); if every 8th term (a(8), a(16), a(24),...) is deleted, this gives back the original sequence.

The programs for A255828, there is no canonical definition to state claims against.
-/

/-! ## A255828.P3322043421229568151

`A126616(A214677(n+1)%A152388(n+1))`
-/

namespace A255828.P3322043421229568151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126616 (Int.tmod (A214677 (n + 1)) (A152388 (n + 1))).toNat

end

end A255828.P3322043421229568151

/-! ## A255828.P166662999942430029

`A126616(and(A152388(n+1), A214677(n+1)))`
-/

namespace A255828.P166662999942430029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126616 (Int.land (A152388 (n + 1)) (A214677 (n + 1))).toNat

end

end A255828.P166662999942430029

/-! ## A255828.P4161697751895087009

`gcd(A161057(n+1), A351831(n+2))`
-/

namespace A255828.P4161697751895087009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161057 (n + 1)) (A351831 (n + 2))

end

end A255828.P4161697751895087009

/-! ## A255828.P9876994257895230796

`A055396(A161032(n+1)+A001248(n+1))`
-/

namespace A255828.P9876994257895230796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A161032 (n + 1) + A001248 (n + 1)).toNat

end

end A255828.P9876994257895230796

/-! ## A255828.P1718811530937753337

`gcd(n+1, A328483(A079262(n)))`
-/

namespace A255828.P1718811530937753337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A328483 (A079262 n).toNat)

end

end A255828.P1718811530937753337

/-!
# A255829: a(n) = n for n < 9; a(9n) = a(n); if every 9th term (a(9), a(18), a(27),...) is deleted, this gives back the original sequence.

The programs for A255829, there is no canonical definition to state claims against.
-/

/-! ## A255829.P12071214561983251621

`gcd(n+1, A036042(A299473(n)))`
-/

namespace A255829.P12071214561983251621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A036042 (A299473 n).toNat)

end

end A255829.P12071214561983251621

/-! ## A255829.P1123060208329438179

`gcd(A037479(n+1), A090106(n+1))`
-/

namespace A255829.P1123060208329438179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037479 (n + 1)) (A090106 (n + 1))

end

end A255829.P1123060208329438179

/-! ## A255829.P13414263594212726402

`gcd(A052423(A037479(n+1)), A064653(n+1))`
-/

namespace A255829.P13414263594212726402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052423 (A037479 (n + 1)).toNat) (A064653 (n + 1))

end

end A255829.P13414263594212726402

/-! ## A255829.P544824642199506785

`gcd(A160979(n+1), A396000(n+1))`
-/

namespace A255829.P544824642199506785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160979 (n + 1)) (A396000 (n + 1))

end

end A255829.P544824642199506785

/-! ## A255829.P11822016860916794800

`gcd(A085736(n+1), A088481(A090106(n+1)))`
-/

namespace A255829.P11822016860916794800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085736 (n + 1)) (A088481 (A090106 (n + 1)).toNat)

end

end A255829.P11822016860916794800

/-!
# A255831: Square array A(m,n) = Resultant(X^m+n,(X+1)^m+n), read by (falling) antidiagonals, m >= 1, n >= 0.

The programs for A255831, there is no canonical definition to state claims against.
-/

/-! ## A255831.P15027928338128077141

`A191839(A083075(n))+A083075(n)`
-/

namespace A255831.P15027928338128077141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191839 (A083075 n).toNat + A083075 n

end

end A255831.P15027928338128077141

/-!
# A255832: Least m > 0 such that gcd(m^(2n+1)+2, (m+1)^(2n+1)+2) > 1.

The programs for A255832, there is no canonical definition to state claims against.
-/

/-! ## A255832.P8698568601745750579

`A255852(2*(n+1)+1)`
-/

namespace A255832.P8698568601745750579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 (2 * (n + 1) + 1)

end

end A255832.P8698568601745750579

/-! ## A255832.P12785385409475297131

`or(floor(acot(n)), A255852(A144396(n+1)))`
-/

namespace A255832.P12785385409475297131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A255852 (A144396 (n + 1)).toNat)

end

end A255832.P12785385409475297131

/-! ## A255832.P9419323388419225084

`or(A000007(n), A255852(A005408(n+1)))`
-/

namespace A255832.P9419323388419225084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255852 (A005408 (n + 1)).toNat)

end

end A255832.P9419323388419225084

/-! ## A255832.P4096266806416700782

`or(A000038(n), A255852(A005408(n+1)))`
-/

namespace A255832.P4096266806416700782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A255852 (A005408 (n + 1)).toNat)

end

end A255832.P4096266806416700782

/-! ## A255832.P15423695545619206213

`or(A000007(n), A255852(A144396(n+1)))`
-/

namespace A255832.P15423695545619206213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255852 (A144396 (n + 1)).toNat)

end

end A255832.P15423695545619206213

/-!
# A255833: Index i such that A166133(i)=n, or 0 if no such i exists.

The programs for A255833, there is no canonical definition to state claims against.
-/

/-! ## A255833.P8099361809421118621

`A166133(n+1)%lt[1, A329070(n)]`
-/

namespace A255833.P8099361809421118621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166133 (n + 1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A255833.P8099361809421118621

/-! ## A255833.P11039096935257069220

`A166133(n+1)%A094378(A106609(n))`
-/

namespace A255833.P11039096935257069220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166133 (n + 1)) (A094378 (A106609 n).toNat)

end

end A255833.P11039096935257069220

/-!
# A255834: G.f.: Product_{k>=1} (1+x^k)^(2*k+1).

The programs for A255834, there is no canonical definition to state claims against.
-/

/-! ## A255834.P12967522275482661538

`A127979(n+1)-A099544(A042464(n))`
-/

namespace A255834.P12967522275482661538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127979 (n + 1) - A099544 (A042464 n).toNat

end

end A255834.P12967522275482661538

/-! ## A255834.P16128449106890649160

`A000006(A118658(3*n+2)-A002835(n))`
-/

namespace A255834.P16128449106890649160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A118658 (3 * n + 2) - A002835 n).toNat

end

end A255834.P16128449106890649160

/-!
# A255835: G.f.: Product_{k>=1} (1+x^k)^(2*k-1).

The programs for A255835, there is no canonical definition to state claims against.
-/

/-! ## A255835.P4097278352274033978

`A332578(n)+A024317(A052961(n))`
-/

namespace A255835.P4097278352274033978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332578 n + A024317 (A052961 n).toNat

end

end A255835.P4097278352274033978

/-! ## A255835.P14408133809226578050

`A116111(A266769(n)+A035083(n))`
-/

namespace A255835.P14408133809226578050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116111 (A266769 n + A035083 n).toNat

end

end A255835.P14408133809226578050

/-! ## A255835.P6338935739981716105

`A053735(A375682(n))+A000225(n)`
-/

namespace A255835.P6338935739981716105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A375682 n).toNat + A000225 n

end

end A255835.P6338935739981716105

/-! ## A255835.P3803944491911643609

`A032234(n)-A067169(A005142(n))`
-/

namespace A255835.P3803944491911643609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032234 n - A067169 ((A005142 n).toNat + 11)

end

end A255835.P3803944491911643609

/-!
# A255836: G.f.: Product_{k>=1} (1+x^k)^(3*k+1).

The programs for A255836, there is no canonical definition to state claims against.
-/

/-! ## A255836.P1037059590523278239

`A347655(A005893(n))`
-/

namespace A255836.P1037059590523278239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (A005893 n).toNat

end

end A255836.P1037059590523278239

/-! ## A255836.P4723285393230677478

`A347655(A103517(n²))`
-/

namespace A255836.P4723285393230677478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (A103517 (n ^ 2)).toNat

end

end A255836.P4723285393230677478

/-!
# A255837: G.f.: Product_{k>=1} (1+x^k)^(3*k+2).

The programs for A255837, there is no canonical definition to state claims against.
-/

/-! ## A255837.P2346612860791016361

`A001873(n)-A001222(A158831(n+1))`
-/

namespace A255837.P2346612860791016361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 n - A001222 (A158831 (n + 1)).toNat

end

end A255837.P2346612860791016361

/-! ## A255837.P9352067995047716626

`A160528(n)-A231347(A000226(n+3))`
-/

namespace A255837.P9352067995047716626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160528 n - A231347 (A000226 (n + 3)).toNat

end

end A255837.P9352067995047716626

/-!
# A255839: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..3*n} binomial(3*n,k)^2 * x^k] / A(x)^n * x^n/n ).

The programs for A255839, there is no canonical definition to state claims against.
-/

/-! ## A255839.P99470516659803614

`A003963(A084120(n)+A001108(n))`
-/

namespace A255839.P99470516659803614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A084120 n + A001108 n).toNat

end

end A255839.P99470516659803614

/-! ## A255839.P11684307071659593855

`A001462(A074501(n))-A268670(n+1)`
-/

namespace A255839.P11684307071659593855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A074501 n).toNat - A268670 (n + 1)

end

end A255839.P11684307071659593855

/-!
# A255840: a(n) = (4*n^2 - 4*n + 1 - (-1)^n)/2.

The programs for A255840, the canonical program `A255840.P2570140526271724415` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255840 has offset 0).

The definition of A255840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n²-4*n+1-(-1)^n)/2` (program `A255840.P15814127492501537823`, by `A255840.P15814127492501537823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255840.P15814127492501537823

`(4*n²-4*n+1-(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255840.P15814127492501537823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 2 : ℤ) - (4 * n : ℤ) + (1 - (-1) ^ n) : ℚ) / 2

end

end A255840.P15814127492501537823

namespace A255840

/-- `(4*n²-4*n+1-(-1)^n)/2` -/
def P15814127492501537823.Spec : Prop :=
  ∀ n, P15814127492501537823.a n = (A255840 n : ℚ)

theorem P15814127492501537823.correct : P15814127492501537823.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A255840, Nat.add_sub_cancel, A255840.P15814127492501537823.a, A255840.P2570140526271724415.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A255840, Nat.add_sub_cancel, A255840.P15814127492501537823.a, A255840.P2570140526271724415.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A255840

/-! ## A255840.P2570140526271724415

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=13`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255840

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2570140526271724415.Spec : Prop :=
  ∀ n, P2570140526271724415.a n = A255840 n

theorem P2570140526271724415.correct : P2570140526271724415.Spec := by
  intro n
  simp only [A255840]

end A255840

/-! ## A255840.P943086770352410612

`n%2+4*C(n, 2)`
-/

namespace A255840.P943086770352410612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 4 * Nat.choose n 2

end

end A255840.P943086770352410612

namespace A255840

/-- `n%2+4*C(n, 2)` -/
def P943086770352410612.Spec : Prop :=
  ∀ n, (P943086770352410612.a n : ℤ) = A255840 n

end A255840

/-! ## A255840.P17886934376136845067

`and(1, n)+4*C(n, 2)`
-/

namespace A255840.P17886934376136845067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 4 * Nat.choose n 2

end

end A255840.P17886934376136845067

namespace A255840

/-- `and(1, n)+4*C(n, 2)` -/
def P17886934376136845067.Spec : Prop :=
  ∀ n, (P17886934376136845067.a n : ℤ) = A255840 n

end A255840

/-! ## A255840.P17051997857440991238

`or(4*C(n, 2), and(1, n))`
-/

namespace A255840.P17051997857440991238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 * Nat.choose n 2) (Nat.land 1 n)

end

end A255840.P17051997857440991238

namespace A255840

/-- `or(4*C(n, 2), and(1, n))` -/
def P17051997857440991238.Spec : Prop :=
  ∀ n, (P17051997857440991238.a n : ℤ) = A255840 n

end A255840

/-! ## A255840.P15666710050506496475

`xor(4*C(n, 2), and(1, n))`
-/

namespace A255840.P15666710050506496475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (4 * Nat.choose n 2) (Nat.land 1 n)

end

end A255840.P15666710050506496475

namespace A255840

/-- `xor(4*C(n, 2), and(1, n))` -/
def P15666710050506496475.Spec : Prop :=
  ∀ n, (P15666710050506496475.a n : ℤ) = A255840 n

end A255840

/-! ## A255840.P5876297040006533822

`2*n²-comp[or(2, n)]`
-/

namespace A255840.P5876297040006533822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A255840.P5876297040006533822

namespace A255840

/-- `2*n²-comp[or(2, n)]` -/
def P5876297040006533822.Spec : Prop :=
  ∀ n, P5876297040006533822.a n = A255840 n

end A255840

/-! ## A255840.P18005667454189666579

`∑[a(n-2)+8]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A255840.P18005667454189666579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255840.P18005667454189666579

namespace A255840

/-- `∑[a(n-2)+8]` -/
def P18005667454189666579.Spec : Prop :=
  ∀ n, (P18005667454189666579.a n : ℤ) = A255840 n

end A255840

/-! ## A255840.P4535743932127205077

`C(2*n, 2)-and(n, -2)`
-/

namespace A255840.P4535743932127205077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) - Int.land (n : ℤ) (-2)

end

end A255840.P4535743932127205077

namespace A255840

/-- `C(2*n, 2)-and(n, -2)` -/
def P4535743932127205077.Spec : Prop :=
  ∀ n, P4535743932127205077.a n = A255840 n

end A255840

/-! ## A255840.P16726788480505522614

`and(-2, (1-n)²)+n²`
-/

namespace A255840.P16726788480505522614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((1 - (n : ℤ)) ^ 2) + (n ^ 2 : ℤ)

end

end A255840.P16726788480505522614

namespace A255840

/-- `and(-2, (1-n)²)+n²` -/
def P16726788480505522614.Spec : Prop :=
  ∀ n, P16726788480505522614.a n = A255840 n

end A255840

/-! ## A255840.P15597635740507067814

`(1-n)²-or(1, -n²)`
-/

namespace A255840.P15597635740507067814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - Int.lor 1 (-(n ^ 2 : ℤ))

end

end A255840.P15597635740507067814

namespace A255840

/-- `(1-n)²-or(1, -n²)` -/
def P15597635740507067814.Spec : Prop :=
  ∀ n, P15597635740507067814.a n = A255840 n

end A255840

/-! ## A255840.P5784404280108729031

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A255840.P5784404280108729031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255840.P5784404280108729031

namespace A255840

/-- `∑[∑[8-a(n-1)]]` -/
def P5784404280108729031.Spec : Prop :=
  ∀ n, P5784404280108729031.a n = A255840 n

end A255840

/-! ## A255840.P8134986067886134033

`C(2*n, 2)-(n-and(1, n))`
-/

namespace A255840.P8134986067886134033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) - ((n : ℤ) - (Nat.land 1 n : ℤ))

end

end A255840.P8134986067886134033

namespace A255840

/-- `C(2*n, 2)-(n-and(1, n))` -/
def P8134986067886134033.Spec : Prop :=
  ∀ n, P8134986067886134033.a n = A255840 n

end A255840

/-! ## A255840.P8407098105074326095

`or((n-1)*2*n, and(1, n))`
-/

namespace A255840.P8407098105074326095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n : ℤ) - 1) * (2 * n : ℤ)) (Nat.land 1 n : ℤ)

end

end A255840.P8407098105074326095

namespace A255840

/-- `or((n-1)*2*n, and(1, n))` -/
def P8407098105074326095.Spec : Prop :=
  ∀ n, P8407098105074326095.a n = A255840 n

end A255840

/-! ## A255840.P2803423651270626277

`xor((n-1)*2*n, and(1, n))`
-/

namespace A255840.P2803423651270626277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 1) * (2 * n : ℤ)) (Nat.land 1 n : ℤ)

end

end A255840.P2803423651270626277

namespace A255840

/-- `xor((n-1)*2*n, and(1, n))` -/
def P2803423651270626277.Spec : Prop :=
  ∀ n, P2803423651270626277.a n = A255840 n

end A255840

/-! ## A255840.P11148773747022116923

`2*n²-record[and(n, n+2)]`
-/

namespace A255840.P11148773747022116923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A255840.P11148773747022116923

namespace A255840

/-- `2*n²-record[and(n, n+2)]` -/
def P11148773747022116923.Spec : Prop :=
  ∀ n, P11148773747022116923.a n = A255840 n

end A255840

/-! ## A255840.P6189768554474043755

`∑[∑[∑[ogf((x+2x^2+5x^3)/(1+x))]]]`
-/

namespace A255840.P6189768554474043755
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 5] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255840.P6189768554474043755

namespace A255840

/-- `∑[∑[∑[ogf((x+2x^2+5x^3)/(1+x))]]]` -/
def P6189768554474043755.Spec : Prop :=
  ∀ n, P6189768554474043755.a n = A255840 n

end A255840

/-! ## A255840.P8735723096938282391

`ogf((x+2x^2+5x^3)/(1-2x+2x^3-x^4))`
-/

namespace A255840.P8735723096938282391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 5] [1, -2, 0, 2, -1] n

end

end A255840.P8735723096938282391

namespace A255840

/-- `ogf((x+2x^2+5x^3)/(1-2x+2x^3-x^4))` -/
def P8735723096938282391.Spec : Prop :=
  ∀ n, P8735723096938282391.a n = A255840 n

end A255840

/-! ## A255840.P6925791471898392807

`and(1, n)²+(n-1)*2*n`
-/

namespace A255840.P6925791471898392807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n ^ 2 : ℤ) + ((n : ℤ) - 1) * (2 * n : ℤ)

end

end A255840.P6925791471898392807

namespace A255840

/-- `and(1, n)²+(n-1)*2*n` -/
def P6925791471898392807.Spec : Prop :=
  ∀ n, P6925791471898392807.a n = A255840 n

end A255840

/-! ## A255840.P11457300622785139916

`xor(1, a(n-1)+4*(n-1))` with `a(0)=0`
-/

namespace A255840.P11457300622785139916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 1 (a (n - 1) + 4 * ((n : ℤ) - 1))

end

end A255840.P11457300622785139916

namespace A255840

/-- `xor(1, a(n-1)+4*(n-1))` -/
def P11457300622785139916.Spec : Prop :=
  ∀ n, P11457300622785139916.a n = A255840 n

end A255840

/-!
# A255841: The number of unordered binary trees that contain n distinct subtrees.

The programs for A255841, there is no canonical definition to state claims against.
-/

/-! ## A255841.P469571818982368645

`A095775(∑[A000203(n!)])`
-/

namespace A255841.P469571818982368645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095775 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255841.P469571818982368645

/-! ## A255841.P15348966732621182934

`A212619(A000110(n))+A084784(n+1)`
-/

namespace A255841.P15348966732621182934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A000110 n).toNat + A084784 (n + 1)

end

end A255841.P15348966732621182934

/-!
# A255842: a(n) = 2*n^2 + 12.

The programs for A255842, the canonical program `A255842.P11874424700944633966` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255842 has offset 0).

The definition of A255842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+12` (program `A255842.P11874424700944633966`, by `A255842.P11874424700944633966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255842.P11874424700944633966

`2*n²+12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255842

/-- `2*n²+12` -/
def P11874424700944633966.Spec : Prop :=
  ∀ n, (P11874424700944633966.a n : ℤ) = A255842 n

theorem P11874424700944633966.correct : P11874424700944633966.Spec := by
  intro n
  simp only [A255842]

end A255842

/-! ## A255842.P16355072930806081220

`2*A114949(n)`
-/

namespace A255842.P16355072930806081220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114949 n

end

end A255842.P16355072930806081220

namespace A255842

/-- `2*A114949(n)` -/
def P16355072930806081220.Spec : Prop :=
  ∀ n, P16355072930806081220.a n = A255842 n

end A255842

/-! ## A255842.P11137309594119907763

`∑[a(n-1)+4]` with `a(0)=12, a(1)=2`
-/

namespace A255842.P11137309594119907763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255842.P11137309594119907763

namespace A255842

/-- `∑[a(n-1)+4]` -/
def P11137309594119907763.Spec : Prop :=
  ∀ n, (P11137309594119907763.a n : ℤ) = A255842 n

end A255842

/-!
# A255843: a(n) = 2*n^2 + 4.

The programs for A255843, the canonical program `A255843.P3680005169566530454` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255843 has offset 0).

The definition of A255843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+4` (program `A255843.P3680005169566530454`, by `A255843.P3680005169566530454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255843.P3680005169566530454

`2*n²+4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255843

/-- `2*n²+4` -/
def P3680005169566530454.Spec : Prop :=
  ∀ n, (P3680005169566530454.a n : ℤ) = A255843 n

theorem P3680005169566530454.correct : P3680005169566530454.Spec := by
  intro n
  simp only [A255843]

end A255843

/-! ## A255843.P2142313683072320433

`2*A059100(n)`
-/

namespace A255843.P2142313683072320433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059100 n

end

end A255843.P2142313683072320433

namespace A255843

/-- `2*A059100(n)` -/
def P2142313683072320433.Spec : Prop :=
  ∀ n, P2142313683072320433.a n = A255843 n

end A255843

/-! ## A255843.P8886634136457532564

`or(4, 2*n²)`
-/

namespace A255843.P8886634136457532564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (2 * n ^ 2)

end

end A255843.P8886634136457532564

namespace A255843

/-- `or(4, 2*n²)` -/
def P8886634136457532564.Spec : Prop :=
  ∀ n, (P8886634136457532564.a n : ℤ) = A255843 n

end A255843

/-! ## A255843.P6954684045063988243

`xor(4, 2*n²)`
-/

namespace A255843.P6954684045063988243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (2 * n ^ 2)

end

end A255843.P6954684045063988243

namespace A255843

/-- `xor(4, 2*n²)` -/
def P6954684045063988243.Spec : Prop :=
  ∀ n, (P6954684045063988243.a n : ℤ) = A255843 n

end A255843

/-! ## A255843.P4473587325333877663

`floor(2*(n²-tan(2)))`
-/

namespace A255843.P4473587325333877663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n ^ 2 : ℝ) - Real.tan (2 : ℝ))⌋

end

end A255843.P4473587325333877663

namespace A255843

/-- `floor(2*(n²-tan(2)))` -/
def P4473587325333877663.Spec : Prop :=
  ∀ n, P4473587325333877663.a n = A255843 n

end A255843

/-! ## A255843.P8008473952571913926

`round(2*(n²-tan(2)))`
-/

namespace A255843.P8008473952571913926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n ^ 2 : ℝ) - Real.tan (2 : ℝ)))

end

end A255843.P8008473952571913926

namespace A255843

/-- `round(2*(n²-tan(2)))` -/
def P8008473952571913926.Spec : Prop :=
  ∀ n, P8008473952571913926.a n = A255843 n

end A255843

/-! ## A255843.P17781496420945105430

`floor(2/acot(n²+2))`
-/

namespace A255843.P17781496420945105430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n ^ 2 + 2 : ℝ)⌋

end

end A255843.P17781496420945105430

namespace A255843

/-- `floor(2/acot(n²+2))` -/
def P17781496420945105430.Spec : Prop :=
  ∀ n, P17781496420945105430.a n = A255843 n

end A255843

/-! ## A255843.P11480251131976213845

`round(2/acot(n²+2))`
-/

namespace A255843.P11480251131976213845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n ^ 2 + 2 : ℝ))

end

end A255843.P11480251131976213845

namespace A255843

/-- `round(2/acot(n²+2))` -/
def P11480251131976213845.Spec : Prop :=
  ∀ n, P11480251131976213845.a n = A255843 n

end A255843

/-! ## A255843.P9630246646889439118

`2/tan(acot(n²+2))`
-/

namespace A255843.P9630246646889439118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.tan (SequenceMachineLib.acot (n ^ 2 + 2 : ℝ))

end

end A255843.P9630246646889439118

namespace A255843

/-- `2/tan(acot(n²+2))` -/
def P9630246646889439118.Spec : Prop :=
  ∀ n, P9630246646889439118.a n = (A255843 n : ℝ)

end A255843

/-! ## A255843.P12818333002902849925

`(n²+2)/cot(atan(2))`
-/

namespace A255843.P12818333002902849925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 2 : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A255843.P12818333002902849925

namespace A255843

/-- `(n²+2)/cot(atan(2))` -/
def P12818333002902849925.Spec : Prop :=
  ∀ n, P12818333002902849925.a n = (A255843 n : ℝ)

end A255843

/-! ## A255843.P12605987539507601676

`∑[a(n-1)+4]` with `a(0)=4, a(1)=2`
-/

namespace A255843.P12605987539507601676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255843.P12605987539507601676

namespace A255843

/-- `∑[a(n-1)+4]` -/
def P12605987539507601676.Spec : Prop :=
  ∀ n, (P12605987539507601676.a n : ℤ) = A255843 n

end A255843

/-!
# A255844: a(n) = 2*n^2 + 6.

The programs for A255844, the canonical program `A255844.P1265613718038489590` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255844 has offset 0).

The definition of A255844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+6` (program `A255844.P1265613718038489590`, by `A255844.P1265613718038489590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255844.P1265613718038489590

`2*n²+6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255844

/-- `2*n²+6` -/
def P1265613718038489590.Spec : Prop :=
  ∀ n, (P1265613718038489590.a n : ℤ) = A255844 n

theorem P1265613718038489590.correct : P1265613718038489590.Spec := by
  intro n
  simp only [A255844]

end A255844

/-! ## A255844.P12001367913992711602

`2*A117950(n)`
-/

namespace A255844.P12001367913992711602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117950 n

end

end A255844.P12001367913992711602

namespace A255844

/-- `2*A117950(n)` -/
def P12001367913992711602.Spec : Prop :=
  ∀ n, P12001367913992711602.a n = A255844 n

end A255844

/-! ## A255844.P7630767759198219352

`abs(2*xor(-3, n²))`
-/

namespace A255844.P7630767759198219352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * Int.xor (-3) (n ^ 2 : ℤ)|

end

end A255844.P7630767759198219352

namespace A255844

/-- `abs(2*xor(-3, n²))` -/
def P7630767759198219352.Spec : Prop :=
  ∀ n, P7630767759198219352.a n = A255844 n

end A255844

/-! ## A255844.P11062723119139160046

`-2*xor(-3, n²)`
-/

namespace A255844.P11062723119139160046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * Int.xor (-3) (n ^ 2 : ℤ))

end

end A255844.P11062723119139160046

namespace A255844

/-- `-2*xor(-3, n²)` -/
def P11062723119139160046.Spec : Prop :=
  ∀ n, P11062723119139160046.a n = A255844 n

end A255844

/-! ## A255844.P3180611979127880415

`floor(2/acot(n²+3))`
-/

namespace A255844.P3180611979127880415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n ^ 2 + 3 : ℝ)⌋

end

end A255844.P3180611979127880415

namespace A255844

/-- `floor(2/acot(n²+3))` -/
def P3180611979127880415.Spec : Prop :=
  ∀ n, P3180611979127880415.a n = A255844 n

end A255844

/-! ## A255844.P16105143059046256434

`round(2/acot(n²+3))`
-/

namespace A255844.P16105143059046256434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n ^ 2 + 3 : ℝ))

end

end A255844.P16105143059046256434

namespace A255844

/-- `round(2/acot(n²+3))` -/
def P16105143059046256434.Spec : Prop :=
  ∀ n, P16105143059046256434.a n = A255844 n

end A255844

/-! ## A255844.P2171812785116091937

`2/tan(acot(n²+3))`
-/

namespace A255844.P2171812785116091937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.tan (SequenceMachineLib.acot (n ^ 2 + 3 : ℝ))

end

end A255844.P2171812785116091937

namespace A255844

/-- `2/tan(acot(n²+3))` -/
def P2171812785116091937.Spec : Prop :=
  ∀ n, P2171812785116091937.a n = (A255844 n : ℝ)

end A255844

/-! ## A255844.P10961269643134174243

`(n²+3)/cot(atan(2))`
-/

namespace A255844.P10961269643134174243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 3 : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A255844.P10961269643134174243

namespace A255844

/-- `(n²+3)/cot(atan(2))` -/
def P10961269643134174243.Spec : Prop :=
  ∀ n, P10961269643134174243.a n = (A255844 n : ℝ)

end A255844

/-! ## A255844.P904615215678816679

`∑[a(n-1)+4]` with `a(0)=6, a(1)=2`
-/

namespace A255844.P904615215678816679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255844.P904615215678816679

namespace A255844

/-- `∑[a(n-1)+4]` -/
def P904615215678816679.Spec : Prop :=
  ∀ n, (P904615215678816679.a n : ℤ) = A255844 n

end A255844

/-! ## A255844.P18330858061899760341

`abs(xor(n*2*n, -6))`
-/

namespace A255844.P18330858061899760341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n * (2 * n) : ℤ) (-6)|

end

end A255844.P18330858061899760341

namespace A255844

/-- `abs(xor(n*2*n, -6))` -/
def P18330858061899760341.Spec : Prop :=
  ∀ n, P18330858061899760341.a n = A255844 n

end A255844

/-! ## A255844.P14336920506405279907

`-xor(n*2*n, -6)`
-/

namespace A255844.P14336920506405279907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n * (2 * n) : ℤ) (-6)

end

end A255844.P14336920506405279907

namespace A255844

/-- `-xor(n*2*n, -6)` -/
def P14336920506405279907.Spec : Prop :=
  ∀ n, P14336920506405279907.a n = A255844 n

end A255844

/-! ## A255844.P6783490842497219993

`∑[ogf((6-10x+8x^2)/(1-2x+x^2))]`
-/

namespace A255844.P6783490842497219993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -10, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255844.P6783490842497219993

namespace A255844

/-- `∑[ogf((6-10x+8x^2)/(1-2x+x^2))]` -/
def P6783490842497219993.Spec : Prop :=
  ∀ n, P6783490842497219993.a n = A255844 n

end A255844

/-!
# A255845: a(n) = 2*n^2 + 10.

The programs for A255845, the canonical program `A255845.P11291727531540105328` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255845 has offset 0).

The definition of A255845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+10` (program `A255845.P11291727531540105328`, by `A255845.P11291727531540105328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255845.P11291727531540105328

`2*n²+10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255845

/-- `2*n²+10` -/
def P11291727531540105328.Spec : Prop :=
  ∀ n, (P11291727531540105328.a n : ℤ) = A255845 n

theorem P11291727531540105328.correct : P11291727531540105328.Spec := by
  intro n
  simp only [A255845]

end A255845

/-! ## A255845.P753046350437747937

`2*A117951(n)`
-/

namespace A255845.P753046350437747937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117951 n

end

end A255845.P753046350437747937

namespace A255845

/-- `2*A117951(n)` -/
def P753046350437747937.Spec : Prop :=
  ∀ n, P753046350437747937.a n = A255845 n

end A255845

/-! ## A255845.P18413908189339162764

`∑[a(n-1)+4]` with `a(0)=10, a(1)=2`
-/

namespace A255845.P18413908189339162764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255845.P18413908189339162764

namespace A255845

/-- `∑[a(n-1)+4]` -/
def P18413908189339162764.Spec : Prop :=
  ∀ n, (P18413908189339162764.a n : ℤ) = A255845 n

end A255845

/-!
# A255846: a(n) = 2*n^2 + 14.

The programs for A255846, the canonical program `A255846.P7500436505653346500` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255846 has offset 0).

The definition of A255846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+14` (program `A255846.P7500436505653346500`, by `A255846.P7500436505653346500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255846.P7500436505653346500

`2*n²+14`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255846

/-- `2*n²+14` -/
def P7500436505653346500.Spec : Prop :=
  ∀ n, (P7500436505653346500.a n : ℤ) = A255846 n

theorem P7500436505653346500.correct : P7500436505653346500.Spec := by
  intro n
  simp only [A255846]

end A255846

/-! ## A255846.P12308627972491661278

`2*A117619(n)`
-/

namespace A255846.P12308627972491661278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117619 n

end

end A255846.P12308627972491661278

namespace A255846

/-- `2*A117619(n)` -/
def P12308627972491661278.Spec : Prop :=
  ∀ n, P12308627972491661278.a n = A255846 n

end A255846

/-! ## A255846.P9127302266953568933

`round(2*(n²-cot(3)))`
-/

namespace A255846.P9127302266953568933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n ^ 2 : ℝ) - Real.cot (3 : ℝ)))

end

end A255846.P9127302266953568933

namespace A255846

/-- `round(2*(n²-cot(3)))` -/
def P9127302266953568933.Spec : Prop :=
  ∀ n, P9127302266953568933.a n = A255846 n

end A255846

/-! ## A255846.P12560442385566982950

`∑[a(n-1)+4]` with `a(0)=14, a(1)=2`
-/

namespace A255846.P12560442385566982950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255846.P12560442385566982950

namespace A255846

/-- `∑[a(n-1)+4]` -/
def P12560442385566982950.Spec : Prop :=
  ∀ n, (P12560442385566982950.a n : ℤ) = A255846 n

end A255846

/-!
# A255847: a(n) = 2*n^2 + 16.

The programs for A255847, the canonical program `A255847.P17165447478790126126` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255847 has offset 0).

The definition of A255847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+16` (program `A255847.P17165447478790126126`, by `A255847.P17165447478790126126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255847.P17165447478790126126

`2*n²+16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255847

/-- `2*n²+16` -/
def P17165447478790126126.Spec : Prop :=
  ∀ n, (P17165447478790126126.a n : ℤ) = A255847 n

theorem P17165447478790126126.correct : P17165447478790126126.Spec := by
  intro n
  simp only [A255847]

end A255847

/-! ## A255847.P8635120872545387185

`2*A189833(n)`
-/

namespace A255847.P8635120872545387185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189833 n

end

end A255847.P8635120872545387185

namespace A255847

/-- `2*A189833(n)` -/
def P8635120872545387185.Spec : Prop :=
  ∀ n, P8635120872545387185.a n = A255847 n

end A255847

/-! ## A255847.P10061791731605592326

`∑[a(n-1)+4]` with `a(0)=16, a(1)=2`
-/

namespace A255847.P10061791731605592326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255847.P10061791731605592326

namespace A255847

/-- `∑[a(n-1)+4]` -/
def P10061791731605592326.Spec : Prop :=
  ∀ n, (P10061791731605592326.a n : ℤ) = A255847 n

end A255847

/-!
# A255848: a(n) = 2*n^2 + 18.

The programs for A255848, the canonical program `A255848.P17893162786090119965` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255848 has offset 0).

The definition of A255848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+18` (program `A255848.P17893162786090119965`, by `A255848.P17893162786090119965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255848.P17893162786090119965

`2*n²+18`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255848

/-- `2*n²+18` -/
def P17893162786090119965.Spec : Prop :=
  ∀ n, (P17893162786090119965.a n : ℤ) = A255848 n

theorem P17893162786090119965.correct : P17893162786090119965.Spec := by
  intro n
  simp only [A255848]

end A255848

/-! ## A255848.P17294671585800819037

`2*A189834(n)`
-/

namespace A255848.P17294671585800819037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189834 n

end

end A255848.P17294671585800819037

namespace A255848

/-- `2*A189834(n)` -/
def P17294671585800819037.Spec : Prop :=
  ∀ n, P17294671585800819037.a n = A255848 n

end A255848

/-! ## A255848.P2637210572910381775

`∑[a(n-1)+4]` with `a(0)=18, a(1)=2`
-/

namespace A255848.P2637210572910381775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255848.P2637210572910381775

namespace A255848

/-- `∑[a(n-1)+4]` -/
def P2637210572910381775.Spec : Prop :=
  ∀ n, (P2637210572910381775.a n : ℤ) = A255848 n

end A255848

/-!
# A255849: Characteristic function of pentagonal numbers.

The programs for A255849, the canonical program `A255849.P18420982419730115799` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255849 has offset 0).

The definition of A255849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255849.P6266021641142462371

`char[C(n, 2)+n²]`
-/

namespace A255849.P6266021641142462371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A255849.P6266021641142462371

namespace A255849

/-- `char[C(n, 2)+n²]` -/
def P6266021641142462371.Spec : Prop :=
  ∀ n, (P6266021641142462371.a n : ℤ) = A255849 n

end A255849

/-! ## A255849.P6264056833329579319

`char[3*C(n, 2)+n]`
-/

namespace A255849.P6264056833329579319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A255849.P6264056833329579319

namespace A255849

/-- `char[3*C(n, 2)+n]` -/
def P6264056833329579319.Spec : Prop :=
  ∀ n, (P6264056833329579319.a n : ℤ) = A255849 n

end A255849

/-! ## A255849.P11843126301961874024

`char[2*n²-∑[n]]`
-/

namespace A255849.P11843126301961874024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A255849.P11843126301961874024

namespace A255849

/-- `char[2*n²-∑[n]]` -/
def P11843126301961874024.Spec : Prop :=
  ∀ n, (P11843126301961874024.a n : ℤ) = A255849 n

end A255849

/-! ## A255849.P9497624849356597148

`and(1, char[A000326(n)])`
-/

namespace A255849.P9497624849356597148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A255849.P9497624849356597148

namespace A255849

/-- `and(1, char[A000326(n)])` -/
def P9497624849356597148.Spec : Prop :=
  ∀ n, (P9497624849356597148.a n : ℤ) = A255849 n

end A255849

/-! ## A255849.P3069538029224751813

`1-char[A183217(n+1)]`
-/

namespace A255849.P3069538029224751813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183217 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A255849.P3069538029224751813

namespace A255849

/-- `1-char[A183217(n+1)]` -/
def P3069538029224751813.Spec : Prop :=
  ∀ n, P3069538029224751813.a n = A255849 n

end A255849

/-! ## A255849.P10808201757698627118

`and(A080995(n), A246179(n))`
-/

namespace A255849.P10808201757698627118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080995 n) (A246179 n)

end

end A255849.P10808201757698627118

namespace A255849

/-- `and(A080995(n), A246179(n))` -/
def P10808201757698627118.Spec : Prop :=
  ∀ n, P10808201757698627118.a n = A255849 n

end A255849

/-! ## A255849.P3013403952253425147

`and(A080995(n), A246186(n))`
-/

namespace A255849.P3013403952253425147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080995 n) (A246186 n)

end

end A255849.P3013403952253425147

namespace A255849

/-- `and(A080995(n), A246186(n))` -/
def P3013403952253425147.Spec : Prop :=
  ∀ n, P3013403952253425147.a n = A255849 n

end A255849

/-! ## A255849.P18420982419730115799

`A080995(A080995(A180446(n))+n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A255849

/-- `A080995(A080995(A180446(n))+n)` -/
def P18420982419730115799.Spec : Prop :=
  ∀ n, P18420982419730115799.a n = A255849 n

theorem P18420982419730115799.correct : P18420982419730115799.Spec := by
  intro n
  simp only [A255849]

end A255849

/-! ## A255849.P14684392837902875969

`log2(Δ[comp[A104249(n)]])`
-/

namespace A255849.P14684392837902875969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A255849.P14684392837902875969

namespace A255849

/-- `log2(Δ[comp[A104249(n)]])` -/
def P14684392837902875969.Spec : Prop :=
  ∀ n, P14684392837902875969.a n = (A255849 n : ℝ)

end A255849

/-! ## A255849.P5112388378495526691

`A001221(Δ[comp[A104249(n)]])`
-/

namespace A255849.P5112388378495526691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A255849.P5112388378495526691

namespace A255849

/-- `A001221(Δ[comp[A104249(n)]])` -/
def P5112388378495526691.Spec : Prop :=
  ∀ n, P5112388378495526691.a n = A255849 n

end A255849

/-! ## A255849.P3190781321181456328

`A104244(Δ[comp[A104249(n)]])`
-/

namespace A255849.P3190781321181456328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A255849.P3190781321181456328

namespace A255849

/-- `A104244(Δ[comp[A104249(n)]])` -/
def P3190781321181456328.Spec : Prop :=
  ∀ n, P3190781321181456328.a n = A255849 n

end A255849

/-! ## A255849.P13969374628139391805

`A104289(Δ[comp[A104249(n)]])`
-/

namespace A255849.P13969374628139391805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A255849.P13969374628139391805

namespace A255849

/-- `A104289(Δ[comp[A104249(n)]])` -/
def P13969374628139391805.Spec : Prop :=
  ∀ n, P13969374628139391805.a n = A255849 n

end A255849

/-! ## A255849.P3548470364726113387

`A080995(A183294(A183294(A183294(n+1))))`
-/

namespace A255849.P3548470364726113387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A183294 (A183294 (A183294 (n + 1)).toNat).toNat).toNat

end

end A255849.P3548470364726113387

namespace A255849

/-- `A080995(A183294(A183294(A183294(n+1))))` -/
def P3548470364726113387.Spec : Prop :=
  ∀ n, P3548470364726113387.a n = A255849 n

end A255849

/-! ## A255849.P11110113512633679858

`A089806(A143062(n)+2*n+1)`
-/

namespace A255849.P11110113512633679858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 (A143062 n + (2 * n + 1 : ℤ)).toNat

end

end A255849.P11110113512633679858

namespace A255849

/-- `A089806(A143062(n)+2*n+1)` -/
def P11110113512633679858.Spec : Prop :=
  ∀ n, P11110113512633679858.a n = A255849 n

end A255849

/-! ## A255849.P6042636004067981691

`A065748(n+1)%2`
-/

namespace A255849.P6042636004067981691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065748 (n + 1)) 2

end

end A255849.P6042636004067981691

namespace A255849

/-- `A065748(n+1)%2` -/
def P6042636004067981691.Spec : Prop :=
  ∀ n, P6042636004067981691.a n = A255849 n

end A255849

/-! ## A255849.P12144254014232246980

`and(A080995(n), A186756(n))`
-/

namespace A255849.P12144254014232246980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080995 n) (A186756 n)

end

end A255849.P12144254014232246980

namespace A255849

/-- `and(A080995(n), A186756(n))` -/
def P12144254014232246980.Spec : Prop :=
  ∀ n, P12144254014232246980.a n = A255849 n

end A255849

/-! ## A255849.P6906340962107694729

`and(A080995(n), A187244(n))`
-/

namespace A255849.P6906340962107694729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080995 n) (A187244 n)

end

end A255849.P6906340962107694729

namespace A255849

/-- `and(A080995(n), A187244(n))` -/
def P6906340962107694729.Spec : Prop :=
  ∀ n, P6906340962107694729.a n = A255849 n

end A255849

/-! ## A255849.P2104754434832300922

`and(A080995(n), A242819(n))`
-/

namespace A255849.P2104754434832300922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080995 n) (A242819 n)

end

end A255849.P2104754434832300922

namespace A255849

/-- `and(A080995(n), A242819(n))` -/
def P2104754434832300922.Spec : Prop :=
  ∀ n, P2104754434832300922.a n = A255849 n

end A255849

/-! ## A255849.P12495170644351825416

`A143062(n*(A143062(n)+1))`
-/

namespace A255849.P12495170644351825416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 ((n : ℤ) * (A143062 n + 1)).toNat

end

end A255849.P12495170644351825416

namespace A255849

/-- `A143062(n*(A143062(n)+1))` -/
def P12495170644351825416.Spec : Prop :=
  ∀ n, P12495170644351825416.a n = A255849 n

end A255849

/-!
# A255851: Number of n-digit squares which remain squares if every digit is decreased by 1 (cf. A061844).

The programs for A255851, there is no canonical definition to state claims against.
-/

/-! ## A255851.P18360423344210284737

`A326453(A325828(n)+A260595(n+1))`
-/

namespace A255851.P18360423344210284737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326453 (A325828 n + A260595 (n + 1)).toNat

end

end A255851.P18360423344210284737

/-! ## A255851.P8969374289881504036

`A180262(3*(n+1))%A180257(A180264(n+1))`
-/

namespace A255851.P8969374289881504036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180262 (3 * (n + 1))) (A180257 (A180264 (n + 1)).toNat)

end

end A255851.P8969374289881504036

/-! ## A255851.P12234980447216461922

`A320656(A337602(n)+A181450(n+1))`
-/

namespace A255851.P12234980447216461922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A337602 n + A181450 (n + 1)).toNat

end

end A255851.P12234980447216461922

/-! ## A255851.P1477586293112942726

`A007814(A336956(n)+A275401(n+3))`
-/

namespace A255851.P1477586293112942726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A336956 n + A275401 (n + 3)).toNat

end

end A255851.P1477586293112942726

/-! ## A255851.P1471677846998505307

`and(A050205(n+2), A242464(A343991(n+1)))`
-/

namespace A255851.P1471677846998505307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050205 (n + 2)) (A242464 (A343991 (n + 1)).toNat)

end

end A255851.P1471677846998505307

/-!
# A255865: Least m > 0 such that gcd(m^n+15, (m+1)^n+15) > 1, or 0 if there is no such m.

The programs for A255865, there is no canonical definition to state claims against.
-/

/-! ## A255865.P1220596199189284200

`a(n-1)!` with `a(0)=1, a(1)=0, a(2)=30, a(3)=5`
-/

namespace A255865.P1220596199189284200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 30, 5] fun n a =>
  Nat.factorial (a (n - 1))

end

end A255865.P1220596199189284200

/-!
# A255866: Least m > 0 such that gcd(m^n+16, (m+1)^n+16) > 1, or 0 if there is no such m.

The programs for A255866, there is no canonical definition to state claims against.
-/

/-! ## A255866.P13135537193713755787

`A340854(round(3^n/2))-(n²+n)`
-/

namespace A255866.P13135537193713755787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (SequenceMachineLib.roundAway ((3 ^ n : ℚ) / 2)).toNat - (n ^ 2 + n : ℤ)

end

end A255866.P13135537193713755787

/-!
# A255870: a(n) is the total number of pentagrams in a pentagram fractal after n iterations.

The programs for A255870, there is no canonical definition to state claims against.
-/

/-! ## A255870.P6704277477714942620

`or(A108613(A061137(n)), A175898(n))`
-/

namespace A255870.P6704277477714942620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108613 (A061137 n).toNat) (A175898 n)

end

end A255870.P6704277477714942620

/-! ## A255870.P9030691305186088511

`or(A108613(A061138(n)), A175898(n))`
-/

namespace A255870.P9030691305186088511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108613 (A061138 n).toNat) (A175898 n)

end

end A255870.P9030691305186088511

/-!
# A255871: Numbers prime(n) such that the determinant of the matrix [prime(n), prime(n+1); prime(n+2), prime(n+3)] is positive.

The programs for A255871, there is no canonical definition to state claims against.
-/

/-! ## A255871.P15046384122956562302

`A045319(lt[1, A117301(n+1)])`
-/

namespace A255871.P15046384122956562302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A255871.P15046384122956562302

/-! ## A255871.P16636978237627980888

`A045344(lt[1, A117301(n+1)])`
-/

namespace A255871.P16636978237627980888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A255871.P16636978237627980888

/-! ## A255871.P17828760021539144538

`A065091(lt[1, A117301(n+1)])`
-/

namespace A255871.P17828760021539144538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A255871.P17828760021539144538

/-! ## A255871.P5308702701178116623

`A000040(lt[1, A117301(n+1)]+1)`
-/

namespace A255871.P5308702701178116623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A255871.P5308702701178116623

/-! ## A255871.P13457341666372371396

`A045319(lt[2, n*A261470(n+1)])`
-/

namespace A255871.P13457341666372371396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A255871.P13457341666372371396

/-! ## A255871.P11746124302144859257

`A045344(lt[2, n*A261470(n+1)])`
-/

namespace A255871.P11746124302144859257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A255871.P11746124302144859257

/-! ## A255871.P4096458154103633418

`A065091(lt[2, n*A261470(n+1)])`
-/

namespace A255871.P4096458154103633418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A255871.P4096458154103633418

/-! ## A255871.P1006929491257729368

`A000040(lt[2, n*A261470(n+1)]+1)`
-/

namespace A255871.P1006929491257729368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A261470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A255871.P1006929491257729368

/-! ## A255871.P16827224556534526767

`A000040(lt[C(2, n), A261470(n+1)]+1)`
-/

namespace A255871.P16827224556534526767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A255871.P16827224556534526767

/-! ## A255871.P3561851927234483009

`A045319(lt[A141044(n), A261470(n+1)])`
-/

namespace A255871.P3561851927234483009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255871.P3561851927234483009

/-!
# A255872: Smallest Rhonda number to base b = n-th composite number, A002808(n).

The programs for A255872, there is no canonical definition to state claims against.
-/

/-! ## A255872.P285177584596051394

`A291925(∑[n]+1)`
-/

namespace A255872.P285177584596051394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255872.P285177584596051394

/-! ## A255872.P259300375123626659

`A291925(C(n+2, 2)-n)/log2(4/2)`
-/

namespace A255872.P259300375123626659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291925 (Nat.choose (n + 2) 2 - n) : ℝ) / Real.logb 2 ((4 : ℚ) / 2 : ℝ)

end

end A255872.P259300375123626659

/-! ## A255872.P14509092644201267776

`and(-1, A291925(A000124(n)))`
-/

namespace A255872.P14509092644201267776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A291925 (A000124 n).toNat)

end

end A255872.P14509092644201267776

/-! ## A255872.P7041195857053479024

`abs(1-A291925(A000217(n)+1))+1`
-/

namespace A255872.P7041195857053479024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A291925 (A000217 n + 1).toNat| + 1

end

end A255872.P7041195857053479024

/-! ## A255872.P16430289775348249745

`A291925(A000217(n+1)-n)+4/2-2`
-/

namespace A255872.P16430289775348249745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291925 (A000217 (n + 1) - (n : ℤ)).toNat : ℚ) + ((4 : ℚ) / 2 - 2)

end

end A255872.P16430289775348249745

/-! ## A255872.P12402123692674615398

`A291925(A000124(n))%A017479(n)`
-/

namespace A255872.P12402123692674615398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291925 (A000124 n).toNat) (A017479 n)

end

end A255872.P12402123692674615398

/-! ## A255872.P14325361954122439702

`A291925(A000124(n))+A000007(n+1)`
-/

namespace A255872.P14325361954122439702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000124 n).toNat + A000007 (n + 1)

end

end A255872.P14325361954122439702

/-! ## A255872.P2480648929498101295

`A291925(A000124(n))+A000038(n+1)`
-/

namespace A255872.P2480648929498101295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000124 n).toNat + A000038 (n + 1)

end

end A255872.P2480648929498101295

/-! ## A255872.P7469472652713087935

`A057427(n+1)*A291925(A000124(n))`
-/

namespace A255872.P7469472652713087935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A291925 (A000124 n).toNat

end

end A255872.P7469472652713087935

/-! ## A255872.P320419395856852772

`A000034(2*n)*A291925(A000124(n))`
-/

namespace A255872.P320419395856852772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A291925 (A000124 n).toNat

end

end A255872.P320419395856852772

/-! ## A255872.P12868996518891556887

`A007318(C(2, n))*A291925(A000124(n))`
-/

namespace A255872.P12868996518891556887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A291925 (A000124 n).toNat

end

end A255872.P12868996518891556887

/-! ## A255872.P15441345288604730234

`A001511(2*n+1)*A291925(A000124(n))`
-/

namespace A255872.P15441345288604730234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A291925 (A000124 n).toNat

end

end A255872.P15441345288604730234

/-! ## A255872.P15321452272377504227

`A014963(10*(n+1))*A291925(A000124(n))`
-/

namespace A255872.P15321452272377504227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A291925 (A000124 n).toNat

end

end A255872.P15321452272377504227

/-! ## A255872.P4221752980664363089

`A007318(-or(n, -3))*A291925(A000124(n))`
-/

namespace A255872.P4221752980664363089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (-Int.lor (n : ℤ) (-3)).toNat * A291925 (A000124 n).toNat

end

end A255872.P4221752980664363089

/-! ## A255872.P15652913488160563463

`lcm((-1)^A000040(n+2), A291925(A000124(n)))`
-/

namespace A255872.P15652913488160563463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000040 (n + 2) : ℤ))) (A291925 (A000124 n).toNat)

end

end A255872.P15652913488160563463

/-! ## A255872.P11400993554453340938

`A007318(A000217(n))*A291925(A000124(n))`
-/

namespace A255872.P11400993554453340938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A291925 (A000124 n).toNat

end

end A255872.P11400993554453340938

/-! ## A255872.P2597475613594555520

`A051953(A000040(n+1))*A291925(A000124(n))`
-/

namespace A255872.P2597475613594555520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000040 (n + 1)).toNat * A291925 (A000124 n).toNat

end

end A255872.P2597475613594555520

/-! ## A255872.P4200976512114533494

`A001221(A065091(2*n+1))*A291925(A000124(n))`
-/

namespace A255872.P4200976512114533494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A065091 (2 * n + 1)).toNat * A291925 (A000124 n).toNat

end

end A255872.P4200976512114533494

/-!
# A255873: The first nonzero digit of n/7.

The programs for A255873, the canonical program `A255873.P6927099802111548466` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255873 has offset 1).

The definition of A255873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255873.P6927099802111548466

`A000030(ceil(A017317(n)/7))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A255873

/-- `A000030(ceil(A017317(n)/7))` -/
def P6927099802111548466.Spec : Prop :=
  ∀ n, P6927099802111548466.a n = A255873 (n + 1)

theorem P6927099802111548466.correct : P6927099802111548466.Spec := by
  intro n
  simp only [A255873, Nat.add_sub_cancel]

end A255873

/-! ## A255873.P7990167026760211405

`A000030(A057359(Δ[A002378(n)]))`
-/

namespace A255873.P7990167026760211405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A057359 (f1 (n + 1) - f1 n).toNat).toNat

end

end A255873.P7990167026760211405

namespace A255873

/-- `A000030(A057359(Δ[A002378(n)]))` -/
def P7990167026760211405.Spec : Prop :=
  ∀ n, P7990167026760211405.a n = A255873 (n + 1)

end A255873

/-! ## A255873.P5434314331605029029

`A000030(A057359(2*n)+Δ[A057359(2*n)])`
-/

namespace A255873.P5434314331605029029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A057359 (2 * n) + (f1 (n + 1) - f1 n)).toNat

end

end A255873.P5434314331605029029

namespace A255873

/-- `A000030(A057359(2*n)+Δ[A057359(2*n)])` -/
def P5434314331605029029.Spec : Prop :=
  ∀ n, P5434314331605029029.a n = A255873 (n + 1)

end A255873

/-! ## A255873.P12230632877774859832

`A000030(A257645(n)-A057359(n))`
-/

namespace A255873.P12230632877774859832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A257645 n - A057359 n).toNat

end

end A255873.P12230632877774859832

namespace A255873

/-- `A000030(A257645(n)-A057359(n))` -/
def P12230632877774859832.Spec : Prop :=
  ∀ n, P12230632877774859832.a n = A255873 (n + 1)

end A255873

/-! ## A255873.P7928455734617975383

`A000030(A016969(A190004(n+1)))`
-/

namespace A255873.P7928455734617975383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A016969 (A190004 (n + 1)).toNat).toNat

end

end A255873.P7928455734617975383

namespace A255873

/-- `A000030(A016969(A190004(n+1)))` -/
def P7928455734617975383.Spec : Prop :=
  ∀ n, P7928455734617975383.a n = A255873 (n + 1)

end A255873

/-! ## A255873.P9228870646469887618

`A000030(A257645(n)-A049472(n))`
-/

namespace A255873.P9228870646469887618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A257645 n - A049472 n).toNat

end

end A255873.P9228870646469887618

namespace A255873

/-- `A000030(A257645(n)-A049472(n))` -/
def P9228870646469887618.Spec : Prop :=
  ∀ n, P9228870646469887618.a n = A255873 (n + 1)

end A255873

/-! ## A255873.P13927173918672449204

`A094560(A121925(n+1))`
-/

namespace A255873.P13927173918672449204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094560 (A121925 (n + 1)).toNat

end

end A255873.P13927173918672449204

namespace A255873

/-- `A094560(A121925(n+1))` -/
def P13927173918672449204.Spec : Prop :=
  ∀ n, P13927173918672449204.a n = A255873 (n + 1)

end A255873

/-! ## A255873.P14613597901435650903

`A094560(A121929(n+1))`
-/

namespace A255873.P14613597901435650903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094560 (A121929 (n + 1)).toNat

end

end A255873.P14613597901435650903

namespace A255873

/-- `A094560(A121929(n+1))` -/
def P14613597901435650903.Spec : Prop :=
  ∀ n, P14613597901435650903.a n = A255873 (n + 1)

end A255873

/-! ## A255873.P4135382251758513960

`A120843(A184523(n+1))`
-/

namespace A255873.P4135382251758513960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120843 (A184523 (n + 1)).toNat

end

end A255873.P4135382251758513960

namespace A255873

/-- `A120843(A184523(n+1))` -/
def P4135382251758513960.Spec : Prop :=
  ∀ n, P4135382251758513960.a n = A255873 (n + 1)

end A255873

/-! ## A255873.P985253824131026727

`A120843(A184525(n+1))`
-/

namespace A255873.P985253824131026727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120843 (A184525 (n + 1)).toNat

end

end A255873.P985253824131026727

namespace A255873

/-- `A120843(A184525(n+1))` -/
def P985253824131026727.Spec : Prop :=
  ∀ n, P985253824131026727.a n = A255873 (n + 1)

end A255873

/-! ## A255873.P7201066761788702056

`A120843(A184822(n+1))`
-/

namespace A255873.P7201066761788702056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120843 (A184822 (n + 1)).toNat

end

end A255873.P7201066761788702056

namespace A255873

/-- `A120843(A184822(n+1))` -/
def P7201066761788702056.Spec : Prop :=
  ∀ n, P7201066761788702056.a n = A255873 (n + 1)

end A255873

/-! ## A255873.P17891866190134783186

`A120843(A001950(2*(n+1))+n)`
-/

namespace A255873.P17891866190134783186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120843 (A001950 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A255873.P17891866190134783186

namespace A255873

/-- `A120843(A001950(2*(n+1))+n)` -/
def P17891866190134783186.Spec : Prop :=
  ∀ n, P17891866190134783186.a n = A255873 (n + 1)

end A255873

/-!
# A255874: Triangular array T: T(n,k) = number of subset S of {1,2,...,n+1} such that |S| > 1 and max(S*) = k, where S* is the set {x(2)-x(1), x(3)-x(2), ..., x(h+1)-x(h)} when the elements of S are written as x(1) < x(2) < ... < x(h+1).

The programs for A255874, there is no canonical definition to state claims against.
-/

/-! ## A255874.P3192805192339555858

`A185944(n)-A086015(A027383(2*n))`
-/

namespace A255874.P3192805192339555858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185944 n - A086015 (A027383 (2 * n)).toNat

end

end A255874.P3192805192339555858

/-!
# A255875: a(n) = Fibonacci(n+2) + n - 2.

The programs for A255875, the canonical program `A255875.P8052505566076897999` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255875 has offset 1).

The definition of A255875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255875.P8052505566076897999

`A232896(n+2)-2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A255875

/-- `A232896(n+2)-2` -/
def P8052505566076897999.Spec : Prop :=
  ∀ n, P8052505566076897999.a n = A255875 (n + 1)

theorem P8052505566076897999.correct : P8052505566076897999.Spec := by
  intro n
  simp only [A255875, Nat.add_sub_cancel]

end A255875

/-! ## A255875.P16189300296795490597

`∑[floor(ϕ*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A255875.P16189300296795490597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255875.P16189300296795490597

namespace A255875

/-- `∑[floor(ϕ*a(n-1))]` -/
def P16189300296795490597.Spec : Prop :=
  ∀ n, P16189300296795490597.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P1668886813558069349

`ogf((1-x^2-x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A255875.P1668886813558069349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1] [1, -3, 2, 1, -1] n

end

end A255875.P1668886813558069349

namespace A255875

/-- `ogf((1-x^2-x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P1668886813558069349.Spec : Prop :=
  ∀ n, P1668886813558069349.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P338124314139934768

`∑[floor(a(n-1)/(ϕ-1))]` with `a(0)=1, a(1)=2`
-/

namespace A255875.P338124314139934768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255875.P338124314139934768

namespace A255875

/-- `∑[floor(a(n-1)/(ϕ-1))]` -/
def P338124314139934768.Spec : Prop :=
  ∀ n, P338124314139934768.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P6679862419795531979

`∑[a(n-1)+a(n-2)]+n` with `a(0)=1, a(1)=1`
-/

namespace A255875.P6679862419795531979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A255875.P6679862419795531979

namespace A255875

/-- `∑[a(n-1)+a(n-2)]+n` -/
def P6679862419795531979.Spec : Prop :=
  ∀ n, (P6679862419795531979.a n : ℤ) = A255875 (n + 1)

end A255875

/-! ## A255875.P5317488038246247002

`n+2-floor(ϕ*(n-a(n-1)))` with `a(0)=1`
-/

namespace A255875.P5317488038246247002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - ⌊Real.goldenRatio * ((n : ℤ) - a (n - 1) : ℝ)⌋

end

end A255875.P5317488038246247002

namespace A255875

/-- `n+2-floor(ϕ*(n-a(n-1)))` -/
def P5317488038246247002.Spec : Prop :=
  ∀ n, P5317488038246247002.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P4149679932828367137

`∑[a(n-1)-(1-a(n-2))]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A255875.P4149679932828367137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255875.P4149679932828367137

namespace A255875

/-- `∑[a(n-1)-(1-a(n-2))]` -/
def P4149679932828367137.Spec : Prop :=
  ∀ n, P4149679932828367137.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P4028555611167727070

`4-n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A255875.P4028555611167727070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - (n : ℤ) + (a (n - 1) + a (n - 2))

end

end A255875.P4028555611167727070

namespace A255875

/-- `4-n+a(n-1)+a(n-2)` -/
def P4028555611167727070.Spec : Prop :=
  ∀ n, P4028555611167727070.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P5115742136011901123

`4-(n-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A255875.P5115742136011901123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - ((n : ℤ) - a (n - 1) - a (n - 2))

end

end A255875.P5115742136011901123

namespace A255875

/-- `4-(n-a(n-1)-a(n-2))` -/
def P5115742136011901123.Spec : Prop :=
  ∀ n, P5115742136011901123.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P12675427607966811504

`∑[A288603(n)/2]`
-/

namespace A255875.P12675427607966811504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288603 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255875.P12675427607966811504

namespace A255875

/-- `∑[A288603(n)/2]` -/
def P12675427607966811504.Spec : Prop :=
  ∀ n, P12675427607966811504.a n = (A255875 (n + 1) : ℚ)

end A255875

/-! ## A255875.P2856508156559644292

`A081659(n+2)-3`
-/

namespace A255875.P2856508156559644292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 (n + 2) - 3

end

end A255875.P2856508156559644292

namespace A255875

/-- `A081659(n+2)-3` -/
def P2856508156559644292.Spec : Prop :=
  ∀ n, P2856508156559644292.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P9389146852695233270

`A002062(n+3)-4`
-/

namespace A255875.P9389146852695233270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (n + 3) - 4

end

end A255875.P9389146852695233270

namespace A255875

/-- `A002062(n+3)-4` -/
def P9389146852695233270.Spec : Prop :=
  ∀ n, P9389146852695233270.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P11106912625761926282

`A001911(n)+1+n`
-/

namespace A255875.P11106912625761926282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + 1 + (n : ℤ)

end

end A255875.P11106912625761926282

namespace A255875

/-- `A001911(n)+1+n` -/
def P11106912625761926282.Spec : Prop :=
  ∀ n, P11106912625761926282.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P15190202747743804281

`A020695(n)-1+n`
-/

namespace A255875.P15190202747743804281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - 1 + (n : ℤ)

end

end A255875.P15190202747743804281

namespace A255875

/-- `A020695(n)-1+n` -/
def P15190202747743804281.Spec : Prop :=
  ∀ n, P15190202747743804281.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P2212324281783816055

`A000071(n+3)+n`
-/

namespace A255875.P2212324281783816055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) + (n : ℤ)

end

end A255875.P2212324281783816055

namespace A255875

/-- `A000071(n+3)+n` -/
def P2212324281783816055.Spec : Prop :=
  ∀ n, P2212324281783816055.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P8780521663915614881

`A048577(n)-2+n`
-/

namespace A255875.P8780521663915614881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - 2 + (n : ℤ)

end

end A255875.P8780521663915614881

namespace A255875

/-- `A048577(n)-2+n` -/
def P8780521663915614881.Spec : Prop :=
  ∀ n, P8780521663915614881.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P12382062976695322397

`A018910(n)-3+n`
-/

namespace A255875.P12382062976695322397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - 3 + (n : ℤ)

end

end A255875.P12382062976695322397

namespace A255875

/-- `A018910(n)-3+n` -/
def P12382062976695322397.Spec : Prop :=
  ∀ n, P12382062976695322397.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P5016440673284342793

`A226538(2*n)+n`
-/

namespace A255875.P5016440673284342793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (2 * n) + (n : ℤ)

end

end A255875.P5016440673284342793

namespace A255875

/-- `A226538(2*n)+n` -/
def P5016440673284342793.Spec : Prop :=
  ∀ n, P5016440673284342793.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P2808829702901575594

`∑[record[A053602(n)+1]]`
-/

namespace A255875.P2808829702901575594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255875.P2808829702901575594

namespace A255875

/-- `∑[record[A053602(n)+1]]` -/
def P2808829702901575594.Spec : Prop :=
  ∀ n, P2808829702901575594.a n = A255875 (n + 1)

end A255875

/-! ## A255875.P17328849004398980740

`∑[record[A103610(n)+1]]`
-/

namespace A255875.P17328849004398980740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255875.P17328849004398980740

namespace A255875

/-- `∑[record[A103610(n)+1]]` -/
def P17328849004398980740.Spec : Prop :=
  ∀ n, P17328849004398980740.a n = A255875 (n + 1)

end A255875

/-!
# A255876: a(n) = (4*n^2 + 4*n - 3 - 3*(-1)^n)/2.

The programs for A255876, the canonical program `A255876.P828473122947864929` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255876 has offset 1).

The definition of A255876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255876.P828473122947864929

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=4, a(1)=9, a(2)=24, a(3)=37`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255876

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P828473122947864929.Spec : Prop :=
  ∀ n, P828473122947864929.a n = A255876 (n + 1)

theorem P828473122947864929.correct : P828473122947864929.Spec := by
  intro n
  simp only [A255876, Nat.add_sub_cancel]

end A255876

/-! ## A255876.P13041085374346718214

`A000290(n+2)+4*A198442(n+1)`
-/

namespace A255876.P13041085374346718214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 2) + 4 * A198442 (n + 1)

end

end A255876.P13041085374346718214

namespace A255876

/-- `A000290(n+2)+4*A198442(n+1)` -/
def P13041085374346718214.Spec : Prop :=
  ∀ n, P13041085374346718214.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P12896610369526137620

`∑[a(n-2)+8]` with `a(0)=4, a(1)=5, a(2)=15`
-/

namespace A255876.P12896610369526137620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5, 15] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255876.P12896610369526137620

namespace A255876

/-- `∑[a(n-2)+8]` -/
def P12896610369526137620.Spec : Prop :=
  ∀ n, (P12896610369526137620.a n : ℤ) = A255876 (n + 1)

end A255876

/-! ## A255876.P6827478464352906283

`∑[∑[8-a(n-1)]]` with `a(0)=4, a(1)=1, a(2)=10`
-/

namespace A255876.P6827478464352906283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 10] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255876.P6827478464352906283

namespace A255876

/-- `∑[∑[8-a(n-1)]]` -/
def P6827478464352906283.Spec : Prop :=
  ∀ n, P6827478464352906283.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P16383013333244893262

`a(n-2)+8*n+4` with `a(0)=4, a(1)=9`
-/

namespace A255876.P16383013333244893262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 9] fun n a =>
  a (n - 2) + (8 * n + 4)

end

end A255876.P16383013333244893262

namespace A255876

/-- `a(n-2)+8*n+4` -/
def P16383013333244893262.Spec : Prop :=
  ∀ n, (P16383013333244893262.a n : ℤ) = A255876 (n + 1)

end A255876

/-! ## A255876.P10368673771235726618

`∑[4*(n+1)]-3*n%2`
-/

namespace A255876.P10368673771235726618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((3 * (n % 2) : ℕ) : ℤ)

end

end A255876.P10368673771235726618

namespace A255876

/-- `∑[4*(n+1)]-3*n%2` -/
def P10368673771235726618.Spec : Prop :=
  ∀ n, P10368673771235726618.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P5808944087843335784

`gcd(2, n)²+(n+3)*2*n`
-/

namespace A255876.P5808944087843335784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2 + (n + 3) * (2 * n)

end

end A255876.P5808944087843335784

namespace A255876

/-- `gcd(2, n)²+(n+3)*2*n` -/
def P5808944087843335784.Spec : Prop :=
  ∀ n, (P5808944087843335784.a n : ℤ) = A255876 (n + 1)

end A255876

/-! ## A255876.P5073580158404278116

`3*or(1, n)+1+∑[4*n]+n`
-/

namespace A255876.P5073580158404278116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 1 n + 1 + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A255876.P5073580158404278116

namespace A255876

/-- `3*or(1, n)+1+∑[4*n]+n` -/
def P5073580158404278116.Spec : Prop :=
  ∀ n, (P5073580158404278116.a n : ℤ) = A255876 (n + 1)

end A255876

/-! ## A255876.P12008530237266029624

`(2*n+1)*(n+1)+3*or(1, n)`
-/

namespace A255876.P12008530237266029624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 1) + 3 * Nat.lor 1 n

end

end A255876.P12008530237266029624

namespace A255876

/-- `(2*n+1)*(n+1)+3*or(1, n)` -/
def P12008530237266029624.Spec : Prop :=
  ∀ n, (P12008530237266029624.a n : ℤ) = A255876 (n + 1)

end A255876

/-! ## A255876.P11527428370209249572

`gcd((n+2)*(n-2), 2*n)+(n+3)*2*n`
-/

namespace A255876.P11527428370209249572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 2 : ℤ) * ((n : ℤ) - 2)) (2 * n : ℤ) + (n + 3) * (2 * n)

end

end A255876.P11527428370209249572

namespace A255876

/-- `gcd((n+2)*(n-2), 2*n)+(n+3)*2*n` -/
def P11527428370209249572.Spec : Prop :=
  ∀ n, (P11527428370209249572.a n : ℤ) = A255876 (n + 1)

end A255876

/-! ## A255876.P6897200076129449899

`A082109(n)-a(n-1)` with `a(0)=4`
-/

namespace A255876.P6897200076129449899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A082109 n - a (n - 1)

end

end A255876.P6897200076129449899

namespace A255876

/-- `A082109(n)-a(n-1)` -/
def P6897200076129449899.Spec : Prop :=
  ∀ n, P6897200076129449899.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P17290130758925949082

`A142717(n+1)+(n+1)²`
-/

namespace A255876.P17290130758925949082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142717 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A255876.P17290130758925949082

namespace A255876

/-- `A142717(n+1)+(n+1)²` -/
def P17290130758925949082.Spec : Prop :=
  ∀ n, P17290130758925949082.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P15733301796950399156

`A258717(n+2)+2*(n+2)`
-/

namespace A255876.P15733301796950399156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258717 (n + 2) + (2 * (n + 2) : ℤ)

end

end A255876.P15733301796950399156

namespace A255876

/-- `A258717(n+2)+2*(n+2)` -/
def P15733301796950399156.Spec : Prop :=
  ∀ n, P15733301796950399156.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P7025619697493823486

`A046092(n+1)-(4-gcd(2, n)²)`
-/

namespace A255876.P7025619697493823486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1) - (4 - (Nat.gcd 2 n ^ 2 : ℤ))

end

end A255876.P7025619697493823486

namespace A255876

/-- `A046092(n+1)-(4-gcd(2, n)²)` -/
def P7025619697493823486.Spec : Prop :=
  ∀ n, P7025619697493823486.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P5053592154401534271

`A047457(n+1)+∑[4*n]+1`
-/

namespace A255876.P5053592154401534271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047457 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A255876.P5053592154401534271

namespace A255876

/-- `A047457(n+1)+∑[4*n]+1` -/
def P5053592154401534271.Spec : Prop :=
  ∀ n, P5053592154401534271.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P8235995863862572875

`A168329(n+1)+lcm(2*n+1, n+1)`
-/

namespace A255876.P8235995863862572875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168329 (n + 1) + (Nat.lcm (2 * n + 1) (n + 1) : ℤ)

end

end A255876.P8235995863862572875

namespace A255876

/-- `A168329(n+1)+lcm(2*n+1, n+1)` -/
def P8235995863862572875.Spec : Prop :=
  ∀ n, P8235995863862572875.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P6918183227631578021

`A000032(and(1, n-2))²+(n+3)*2*n`
-/

namespace A255876.P6918183227631578021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 1 ((n : ℤ) - 2)).toNat ^ 2 + ((n + 3) * (2 * n) : ℤ)

end

end A255876.P6918183227631578021

namespace A255876

/-- `A000032(and(1, n-2))²+(n+3)*2*n` -/
def P6918183227631578021.Spec : Prop :=
  ∀ n, P6918183227631578021.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P8431763943891066229

`A047608(n+1)+A046092(n)`
-/

namespace A255876.P8431763943891066229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047608 (n + 1) + A046092 n

end

end A255876.P8431763943891066229

namespace A255876

/-- `A047608(n+1)+A046092(n)` -/
def P8431763943891066229.Spec : Prop :=
  ∀ n, P8431763943891066229.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P18047985049557015618

`A090773(n+1)+A014105(n)`
-/

namespace A255876.P18047985049557015618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (n + 1) + A014105 n

end

end A255876.P18047985049557015618

namespace A255876

/-- `A090773(n+1)+A014105(n)` -/
def P18047985049557015618.Spec : Prop :=
  ∀ n, P18047985049557015618.a n = A255876 (n + 1)

end A255876

/-! ## A255876.P16548751555657849438

`A092259(n+1)+A077221(n)`
-/

namespace A255876.P16548751555657849438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1) + A077221 n

end

end A255876.P16548751555657849438

namespace A255876

/-- `A092259(n+1)+A077221(n)` -/
def P16548751555657849438.Spec : Prop :=
  ∀ n, P16548751555657849438.a n = A255876 (n + 1)

end A255876

/-!
# A255877: a(n) = (2n-2)^3 + (2n-2) - 1.

The programs for A255877, the canonical program `A255877.P10558065304208268518` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255877 has offset 1).

The definition of A255877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255877.P10558065304208268518

`8*(n+1)^3-24*(n+1)²+26*(n+1)-11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A255877

/-- `8*(n+1)^3-24*(n+1)²+26*(n+1)-11` -/
def P10558065304208268518.Spec : Prop :=
  ∀ n, P10558065304208268518.a n = A255877 (n + 1)

theorem P10558065304208268518.correct : P10558065304208268518.Spec := by
  intro n
  simp only [A255877, Nat.add_sub_cancel]

end A255877

/-! ## A255877.P10814584858180741917

`record[n-xor(1, -n)^3]`
-/

namespace A255877.P10814584858180741917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor 1 (-(n : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255877.P10814584858180741917

namespace A255877

/-- `record[n-xor(1, -n)^3]` -/
def P10814584858180741917.Spec : Prop :=
  ∀ n, P10814584858180741917.a n = A255877 (n + 1)

end A255877

/-! ## A255877.P3227394061323423353

`Δ[(1-n)²*xor(1, 2*n²)]`
-/

namespace A255877.P3227394061323423353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * (Nat.xor 1 (2 * n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255877.P3227394061323423353

namespace A255877

/-- `Δ[(1-n)²*xor(1, 2*n²)]` -/
def P3227394061323423353.Spec : Prop :=
  ∀ n, P3227394061323423353.a n = A255877 (n + 1)

end A255877

/-! ## A255877.P7000351049907450467

`or(1, 2*n+(2*n)^3-1)`
-/

namespace A255877.P7000351049907450467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 * n : ℤ) + (((2 * n) ^ 3 : ℤ) - 1))

end

end A255877.P7000351049907450467

namespace A255877

/-- `or(1, 2*n+(2*n)^3-1)` -/
def P7000351049907450467.Spec : Prop :=
  ∀ n, P7000351049907450467.a n = A255877 (n + 1)

end A255877

/-! ## A255877.P13344491660301584917

`(A144965(n)-2)/2`
-/

namespace A255877.P13344491660301584917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144965 n - 2 : ℚ) / 2

end

end A255877.P13344491660301584917

namespace A255877

/-- `(A144965(n)-2)/2` -/
def P13344491660301584917.Spec : Prop :=
  ∀ n, P13344491660301584917.a n = (A255877 (n + 1) : ℚ)

end A255877

/-! ## A255877.P5031793224266247827

`Δ[(1-n)²*A058331(n)]`
-/

namespace A255877.P5031793224266247827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * A058331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255877.P5031793224266247827

namespace A255877

/-- `Δ[(1-n)²*A058331(n)]` -/
def P5031793224266247827.Spec : Prop :=
  ∀ n, P5031793224266247827.a n = A255877 (n + 1)

end A255877

/-! ## A255877.P10447586969862150595

`Δ[(A084849(n)-n)*(1-n)²]`
-/

namespace A255877.P10447586969862150595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084849 n - (n : ℤ)) * (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255877.P10447586969862150595

namespace A255877

/-- `Δ[(A084849(n)-n)*(1-n)²]` -/
def P10447586969862150595.Spec : Prop :=
  ∀ n, P10447586969862150595.a n = A255877 (n + 1)

end A255877

/-! ## A255877.P17293504199009980084

`record[A054602(n-and(1, n))-(n+1)]`
-/

namespace A255877.P17293504199009980084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 (n - Nat.land 1 n) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255877.P17293504199009980084

namespace A255877

/-- `record[A054602(n-and(1, n))-(n+1)]` -/
def P17293504199009980084.Spec : Prop :=
  ∀ n, P17293504199009980084.a n = A255877 (n + 1)

end A255877

/-! ## A255877.P18006943817636086633

`record[(∑[A003215(n)]+n)*A033999(n+1)]`
-/

namespace A255877.P18006943817636086633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255877.P18006943817636086633

namespace A255877

/-- `record[(∑[A003215(n)]+n)*A033999(n+1)]` -/
def P18006943817636086633.Spec : Prop :=
  ∀ n, P18006943817636086633.a n = A255877 (n + 1)

end A255877

/-! ## A255877.P12191459957359206098

`Δ[A000217(4*C(n, 2))-n]`
-/

namespace A255877.P12191459957359206098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (4 * Nat.choose n 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255877.P12191459957359206098

namespace A255877

/-- `Δ[A000217(4*C(n, 2))-n]` -/
def P12191459957359206098.Spec : Prop :=
  ∀ n, P12191459957359206098.a n = A255877 (n + 1)

end A255877

/-! ## A255877.P4277043681007684596

`Δ[A000217(A000384(n)-n)-n]`
-/

namespace A255877.P4277043681007684596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000384 n - (n : ℤ)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255877.P4277043681007684596

namespace A255877

/-- `Δ[A000217(A000384(n)-n)-n]` -/
def P4277043681007684596.Spec : Prop :=
  ∀ n, P4277043681007684596.a n = A255877 (n + 1)

end A255877

/-! ## A255877.P10996485111313499211

`record[A034262(n)-A221367(n)]`
-/

namespace A255877.P10996485111313499211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n - A221367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255877.P10996485111313499211

namespace A255877

/-- `record[A034262(n)-A221367(n)]` -/
def P10996485111313499211.Spec : Prop :=
  ∀ n, P10996485111313499211.a n = A255877 (n + 1)

end A255877

/-! ## A255877.P3134854945160949154

`Δ[(1-n)²*A005408(n²)]`
-/

namespace A255877.P3134854945160949154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * A005408 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255877.P3134854945160949154

namespace A255877

/-- `Δ[(1-n)²*A005408(n²)]` -/
def P3134854945160949154.Spec : Prop :=
  ∀ n, P3134854945160949154.a n = A255877 (n + 1)

end A255877

/-!
# A255878: First differences of A256188.

The programs for A255878, there is no canonical definition to state claims against.
-/

/-! ## A255878.P6191399679568301228

`Δ[A256188(n+1)]`
-/

namespace A255878.P6191399679568301228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255878.P6191399679568301228

/-! ## A255878.P14475646625813617070

`A256188(n+2)-A256188(n+1)`
-/

namespace A255878.P14475646625813617070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256188 (n + 2) - A256188 (n + 1)

end

end A255878.P14475646625813617070

/-!
# A255879: Partial sums of A256188.

The programs for A255879, there is no canonical definition to state claims against.
-/

/-! ## A255879.P9806923949568343855

`∑[A256188(n+1)]`
-/

namespace A255879.P9806923949568343855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255879.P9806923949568343855

/-! ## A255879.P10176012908758536541

`∑[A255878(n)+a(n-1)]` with `a(0)=1`
-/

namespace A255879.P10176012908758536541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A255878 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255879.P10176012908758536541

/-! ## A255879.P12421723811448756599

`∑[∑[A255878(A028310(n))]]`
-/

namespace A255879.P12421723811448756599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255878 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255879.P12421723811448756599

/-! ## A255879.P13483852104137108392

`∑[∑[A255878(n^and(1, A045321(n+1)))]]`
-/

namespace A255879.P13483852104137108392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255878 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.land 1 (A045321 (n + 1)) : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255879.P13483852104137108392

/-! ## A255879.P5626170639691196193

`∑[∑[A255878(A123108(2*n))]]`
-/

namespace A255879.P5626170639691196193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255878 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255879.P5626170639691196193

/-!
# A255880: a(n) = n-th Rhonda number to base b = n-th composite number, cf. A002808.

The programs for A255880, there is no canonical definition to state claims against.
-/

/-! ## A255880.P8964430023556732567

`A291925(∑[4*n]+1)`
-/

namespace A255880.P8964430023556732567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255880.P8964430023556732567

/-! ## A255880.P9828218809223424183

`root(A291925((n+1)²+n²), 4)²²`
-/

namespace A255880.P9828218809223424183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((A291925 ((n + 1) ^ 2 + n ^ 2) : ℝ) ^ (1 / (4 : ℝ))) ^ 2) ^ 2

end

end A255880.P9828218809223424183

/-! ## A255880.P10181042545188325691

`A291925(C(2*(n+1), 2)-n)/log2(4/2)`
-/

namespace A255880.P10181042545188325691
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291925 (Nat.choose (2 * (n + 1)) 2 - n) : ℝ) / Real.logb 2 ((4 : ℚ) / 2 : ℝ)

end

end A255880.P10181042545188325691

/-! ## A255880.P16236360768813635233

`and(-1, A291925(A001844(n)))`
-/

namespace A255880.P16236360768813635233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A291925 (A001844 n).toNat)

end

end A255880.P16236360768813635233

/-! ## A255880.P13330126452537322311

`Δ[A291925(A001844(n-1))+a(n-1)]` with `a(0)=0`
-/

namespace A255880.P13330126452537322311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A291925 (A001844 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255880.P13330126452537322311

/-! ## A255880.P4025575428142418817

`A291925((n+1)²+n²)+A007814(2*n+1)`
-/

namespace A255880.P4025575428142418817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 ((n + 1) ^ 2 + n ^ 2) + A007814 (2 * n + 1)

end

end A255880.P4025575428142418817

/-! ## A255880.P17942245684170070169

`A291925((n+1)²+n²)+A008683(4*(n+1))`
-/

namespace A255880.P17942245684170070169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 ((n + 1) ^ 2 + n ^ 2) + A008683 (4 * (n + 1))

end

end A255880.P17942245684170070169

/-! ## A255880.P795517536538154329

`A291925(A001844(n))%A023348(n+1)`
-/

namespace A255880.P795517536538154329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291925 (A001844 n).toNat) (A023348 (n + 1))

end

end A255880.P795517536538154329

/-! ## A255880.P11480978402054371935

`A007318(C(2, n))*A291925(A001844(n))`
-/

namespace A255880.P11480978402054371935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A291925 (A001844 n).toNat

end

end A255880.P11480978402054371935

/-!
# A255881: Expansion of exp( Sum_{n >= 1} A000364(n)*x^n/n ).

The programs for A255881, there is no canonical definition to state claims against.
-/

/-! ## A255881.P9760928414312532927

`A255905(∑[n])`
-/

namespace A255881.P9760928414312532927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255905 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255881.P9760928414312532927

/-! ## A255881.P2473385440287996952

`A262143(∑[n+1])`
-/

namespace A255881.P2473385440287996952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262143 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255881.P2473385440287996952

/-! ## A255881.P17694119310148125044

`or(1, A255905(A000217(n)))`
-/

namespace A255881.P17694119310148125044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255905 (A000217 n).toNat)

end

end A255881.P17694119310148125044

/-! ## A255881.P6903206461995588815

`or(1, A262143(A261422(n)))`
-/

namespace A255881.P6903206461995588815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262143 (A261422 n).toNat)

end

end A255881.P6903206461995588815

/-! ## A255881.P14245656523694282670

`or(1, A262143(A000217(n+1)))`
-/

namespace A255881.P14245656523694282670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262143 (A000217 (n + 1)).toNat)

end

end A255881.P14245656523694282670

/-!
# A255882: Expansion of exp( Sum_{n >= 1} A210657(n)*(-x)^n/n ).

The programs for A255882, there is no canonical definition to state claims against.
-/

/-! ## A255882.P8556078140823252048

`A163915(n)+A163915(A365341(n))`
-/

namespace A255882.P8556078140823252048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163915 n + A163915 (A365341 n).toNat

end

end A255882.P8556078140823252048

/-!
# A255883: Expansion of exp( Sum_{n >= 1} A000281(n)*x^n/n ).

The programs for A255883, there is no canonical definition to state claims against.
-/

/-! ## A255883.P13740648407538737107

`A262143(∑[n+2])`
-/

namespace A255883.P13740648407538737107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262143 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255883.P13740648407538737107

/-! ## A255883.P10557671717936686315

`record[A262143(∑[A158821(n)])]`
-/

namespace A255883.P10557671717936686315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262143 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255883.P10557671717936686315

/-! ## A255883.P112326310946813604

`record[A262143(A101881(n)+1)]`
-/

namespace A255883.P112326310946813604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262143 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255883.P112326310946813604

/-! ## A255883.P843969431061055825

`record[A262143(A117142(n+1))]`
-/

namespace A255883.P843969431061055825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262143 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255883.P843969431061055825

/-!
# A255886: Number of orderings of the edges of the labeled complete graph K_n such that the graph induced by the first k edges is connected for every k = 1,2,...,binomial(n,2).

The programs for A255886, there is no canonical definition to state claims against.
-/

/-! ## A255886.P10579628275299864772

`A344181(A194271(n!))`
-/

namespace A255886.P10579628275299864772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344181 (A194271 (Nat.factorial n)).toNat

end

end A255886.P10579628275299864772

/-!
# A255887: a(n) = 1 if the n-th prime is the sum of three squares, otherwise a(n) = 0.

The programs for A255887, the canonical program `A255887.P1885334426485951398` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255887 has offset 1).

The definition of A255887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255887.P14520164110653088207

`ceil(sin(A100876(n+1)))`
-/

namespace A255887.P14520164110653088207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A100876 (n + 1) : ℝ)⌉

end

end A255887.P14520164110653088207

namespace A255887

/-- `ceil(sin(A100876(n+1)))` -/
def P14520164110653088207.Spec : Prop :=
  ∀ n, P14520164110653088207.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P1164467154348137639

`round(1/A088192(n+1))`
-/

namespace A255887.P1164467154348137639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A088192 (n + 1) : ℚ))

end

end A255887.P1164467154348137639

namespace A255887

/-- `round(1/A088192(n+1))` -/
def P1164467154348137639.Spec : Prop :=
  ∀ n, P1164467154348137639.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P2677785157081354290

`round(1/A218459(n+1))`
-/

namespace A255887.P2677785157081354290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A218459 (n + 1) : ℚ))

end

end A255887.P2677785157081354290

namespace A255887

/-- `round(1/A218459(n+1))` -/
def P2677785157081354290.Spec : Prop :=
  ∀ n, P2677785157081354290.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P16616037820615684749

`char[lt[A023512(n+1), 3]]`
-/

namespace A255887.P16616037820615684749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023512 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A255887.P16616037820615684749

namespace A255887

/-- `char[lt[A023512(n+1), 3]]` -/
def P16616037820615684749.Spec : Prop :=
  ∀ n, (P16616037820615684749.a n : ℤ) = A255887 (n + 1)

end A255887

/-! ## A255887.P9188330842867703838

`char[lt[A039706(n+1), 6]]`
-/

namespace A255887.P9188330842867703838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039706 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A255887.P9188330842867703838

namespace A255887

/-- `char[lt[A039706(n+1), 6]]` -/
def P9188330842867703838.Spec : Prop :=
  ∀ n, (P9188330842867703838.a n : ℤ) = A255887 (n + 1)

end A255887

/-! ## A255887.P9344000419028808082

`log2(gcd(2, C(A000040(n+1), 6)))`
-/

namespace A255887.P9344000419028808082
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (Nat.choose (A000040 (n + 1)).toNat 6) : ℝ)

end

end A255887.P9344000419028808082

namespace A255887

/-- `log2(gcd(2, C(A000040(n+1), 6)))` -/
def P9344000419028808082.Spec : Prop :=
  ∀ n, P9344000419028808082.a n = (A255887 (n + 1) : ℝ)

end A255887

/-! ## A255887.P9634602304715420241

`1-A072401(p?[xor(1, n)+1])`
-/

namespace A255887.P9634602304715420241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072401 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A255887.P9634602304715420241

namespace A255887

/-- `1-A072401(p?[xor(1, n)+1])` -/
def P9634602304715420241.Spec : Prop :=
  ∀ n, P9634602304715420241.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P6441760145089013425

`and(1, A051722(p?[xor(1, n)+1]))`
-/

namespace A255887.P6441760145089013425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051722 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A255887.P6441760145089013425

namespace A255887

/-- `and(1, A051722(p?[xor(1, n)+1]))` -/
def P6441760145089013425.Spec : Prop :=
  ∀ n, P6441760145089013425.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P1885334426485951398

`round(1/A089309(p?[xor(1, n)+1]))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A255887

/-- `round(1/A089309(p?[xor(1, n)+1]))` -/
def P1885334426485951398.Spec : Prop :=
  ∀ n, P1885334426485951398.a n = A255887 (n + 1)

theorem P1885334426485951398.correct : P1885334426485951398.Spec := by
  intro n
  simp only [A255887, Nat.add_sub_cancel]

end A255887

/-! ## A255887.P17224553087703004294

`A060819(p?[abs(2*n-3)]+1)%2`
-/

namespace A255887.P17224553087703004294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060819 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat) 2

end

end A255887.P17224553087703004294

namespace A255887

/-- `A060819(p?[abs(2*n-3)]+1)%2` -/
def P17224553087703004294.Spec : Prop :=
  ∀ n, P17224553087703004294.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P15677833990875058949

`A299286(p?[round(8*n/7)]-2)%2`
-/

namespace A255887.P15677833990875058949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299286 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2).toNat) 2

end

end A255887.P15677833990875058949

namespace A255887

/-- `A299286(p?[round(8*n/7)]-2)%2` -/
def P15677833990875058949.Spec : Prop :=
  ∀ n, P15677833990875058949.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P15927447944333592548

`floor(4/A010148(p?[abs(2*n-3)]+1))`
-/

namespace A255887.P15927447944333592548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / (A010148 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat : ℚ)⌋

end

end A255887.P15927447944333592548

namespace A255887

/-- `floor(4/A010148(p?[abs(2*n-3)]+1))` -/
def P15927447944333592548.Spec : Prop :=
  ∀ n, P15927447944333592548.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P9057432214343383813

`A048766(and(6, -(p?[round(8*n/7)]+1)))`
-/

namespace A255887.P9057432214343383813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.land 6 (-(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1))).toNat

end

end A255887.P9057432214343383813

namespace A255887

/-- `A048766(and(6, -(p?[round(8*n/7)]+1)))` -/
def P9057432214343383813.Spec : Prop :=
  ∀ n, P9057432214343383813.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P13575962914219782362

`A014042(A023512(n+1))`
-/

namespace A255887.P13575962914219782362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014042 (A023512 (n + 1)).toNat

end

end A255887.P13575962914219782362

namespace A255887

/-- `A014042(A023512(n+1))` -/
def P13575962914219782362.Spec : Prop :=
  ∀ n, P13575962914219782362.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P14193064308344947443

`A022932(A039714(n+1))`
-/

namespace A255887.P14193064308344947443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 (A039714 (n + 1)).toNat

end

end A255887.P14193064308344947443

namespace A255887

/-- `A022932(A039714(n+1))` -/
def P14193064308344947443.Spec : Prop :=
  ∀ n, P14193064308344947443.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P12491713510335211101

`A071374(A000040(n+1))`
-/

namespace A255887.P12491713510335211101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 (A000040 (n + 1)).toNat

end

end A255887.P12491713510335211101

namespace A255887

/-- `A071374(A000040(n+1))` -/
def P12491713510335211101.Spec : Prop :=
  ∀ n, P12491713510335211101.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P15142309845652500435

`A071374(A001749(n+1))`
-/

namespace A255887.P15142309845652500435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 (A001749 (n + 1)).toNat

end

end A255887.P15142309845652500435

namespace A255887

/-- `A071374(A001749(n+1))` -/
def P15142309845652500435.Spec : Prop :=
  ∀ n, P15142309845652500435.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P4551418008491703043

`A071374(A006005(n+1))`
-/

namespace A255887.P4551418008491703043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 (A006005 (n + 1)).toNat

end

end A255887.P4551418008491703043

namespace A255887

/-- `A071374(A006005(n+1))` -/
def P4551418008491703043.Spec : Prop :=
  ∀ n, P4551418008491703043.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P16813629242623811963

`A014064(A068504(n+1))`
-/

namespace A255887.P16813629242623811963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014064 (A068504 (n + 1)).toNat

end

end A255887.P16813629242623811963

namespace A255887

/-- `A014064(A068504(n+1))` -/
def P16813629242623811963.Spec : Prop :=
  ∀ n, P16813629242623811963.a n = A255887 (n + 1)

end A255887

/-! ## A255887.P1199073077195893728

`A112713(A004682(n+1))`
-/

namespace A255887.P1199073077195893728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112713 (A004682 (n + 1)).toNat

end

end A255887.P1199073077195893728

namespace A255887

/-- `A112713(A004682(n+1))` -/
def P1199073077195893728.Spec : Prop :=
  ∀ n, P1199073077195893728.a n = A255887 (n + 1)

end A255887

/-!
# A255889: Primes equal to the sum of three successive semiprimes.

The programs for A255889, the canonical program `A255889.P1347165104086116078` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255889 has offset 1).

The definition of A255889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255889.P1347165104086116078

`p?[A001358(n+1)+A001358(n+2)+A001358(n+3)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A255889

/-- `p?[A001358(n+1)+A001358(n+2)+A001358(n+3)]` -/
def P1347165104086116078.Spec : Prop :=
  ∀ n, P1347165104086116078.a n = A255889 (n + 1)

theorem P1347165104086116078.correct : P1347165104086116078.Spec := by
  intro n
  simp only [A255889, Nat.add_sub_cancel]

end A255889

/-! ## A255889.P16419466719631537863

`p?[A118717(n+2)+A001358(n+1)]`
-/

namespace A255889.P16419466719631537863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) + A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255889.P16419466719631537863

namespace A255889

/-- `p?[A118717(n+2)+A001358(n+1)]` -/
def P16419466719631537863.Spec : Prop :=
  ∀ n, P16419466719631537863.a n = A255889 (n + 1)

end A255889

/-! ## A255889.P24968213890429754

`p?[A118717(n+2)+A186621(n+1)+1]`
-/

namespace A255889.P24968213890429754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) + (A186621 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255889.P24968213890429754

namespace A255889

/-- `p?[A118717(n+2)+A186621(n+1)+1]` -/
def P24968213890429754.Spec : Prop :=
  ∀ n, P24968213890429754.a n = A255889 (n + 1)

end A255889

/-! ## A255889.P5024452881100607198

`p?[A118717(n+2)+A088707(n+1)-1]`
-/

namespace A255889.P5024452881100607198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) + (A088707 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255889.P5024452881100607198

namespace A255889

/-- `p?[A118717(n+2)+A088707(n+1)-1]` -/
def P5024452881100607198.Spec : Prop :=
  ∀ n, P5024452881100607198.a n = A255889 (n + 1)

end A255889

/-! ## A255889.P15879979911225544105

`p?[A118717(n+2)+eq[2, A050379(n+1)]+1]`
-/

namespace A255889.P15879979911225544105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255889.P15879979911225544105

namespace A255889

/-- `p?[A118717(n+2)+eq[2, A050379(n+1)]+1]` -/
def P15879979911225544105.Spec : Prop :=
  ∀ n, P15879979911225544105.a n = A255889 (n + 1)

end A255889

/-! ## A255889.P13558681675737382170

`p?[A118717(n+2)+A175708(n+1)+1+n]`
-/

namespace A255889.P13558681675737382170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) + (A175708 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255889.P13558681675737382170

namespace A255889

/-- `p?[A118717(n+2)+A175708(n+1)+1+n]` -/
def P13558681675737382170.Spec : Prop :=
  ∀ n, P13558681675737382170.a n = A255889 (n + 1)

end A255889

/-! ## A255889.P12965279007014359829

`p?[A118717(n+2)+A000040(n+1)-A065870(n+1)]`
-/

namespace A255889.P12965279007014359829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) + (A000040 (n + 1) - A065870 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255889.P12965279007014359829

namespace A255889

/-- `p?[A118717(n+2)+A000040(n+1)-A065870(n+1)]` -/
def P12965279007014359829.Spec : Prop :=
  ∀ n, P12965279007014359829.a n = A255889 (n + 1)

end A255889

/-! ## A255889.P8163641182881093670

`p?[A118717(n+2)+A000720(A106349(n+1))]`
-/

namespace A255889.P8163641182881093670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) + A000720 (A106349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255889.P8163641182881093670

namespace A255889

/-- `p?[A118717(n+2)+A000720(A106349(n+1))]` -/
def P8163641182881093670.Spec : Prop :=
  ∀ n, P8163641182881093670.a n = A255889 (n + 1)

end A255889

/-!
# A255890: Polyomino Family Planners: a(n) is the least number of children of a polyomino of size n.

The programs for A255890, there is no canonical definition to state claims against.
-/

/-! ## A255890.P12939125788380955803

`A001222(eq[A292861(n), A350673(n)])`
-/

namespace A255890.P12939125788380955803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A255890.P12939125788380955803

/-! ## A255890.P9988955114229850617

`A048766(A303822(n+1)+A076536(n+1))`
-/

namespace A255890.P9988955114229850617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A303822 (n + 1) + A076536 (n + 1)).toNat

end

end A255890.P9988955114229850617

/-! ## A255890.P179234099996765672

`A319443(A187809(n+2)*A187835(n+1))`
-/

namespace A255890.P179234099996765672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319443 (A187809 (n + 2) * A187835 (n + 1)).toNat

end

end A255890.P179234099996765672

/-! ## A255890.P11803843894316922632

`A001221(A008966(n+1)+A004250(3*(n+1)))`
-/

namespace A255890.P11803843894316922632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008966 (n + 1) + A004250 (3 * (n + 1))).toNat

end

end A255890.P11803843894316922632

/-! ## A255890.P6710436219206098636

`A342749(∑[A342749(3*n+2)*A345933(n+1)+1])`
-/

namespace A255890.P6710436219206098636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342749 (3 * n + 2) * A345933 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255890.P6710436219206098636

/-!
# A255892: Primes p such that each decimal digit of p is equal to the difference of two other digits of p.

The programs for A255892, there is no canonical definition to state claims against.
-/

/-! ## A255892.P10303633030734197625

`p?[A255966(n+1)]`
-/

namespace A255892.P10303633030734197625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255892.P10303633030734197625

/-! ## A255892.P1019036507707102722

`∩[A120533(n+1), A255966(n+1)]`
-/

namespace A255892.P1019036507707102722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255892.P1019036507707102722

/-! ## A255892.P15444418570646269968

`A000265(record[A020639(A255966(n+1))])`
-/

namespace A255892.P15444418570646269968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A255966 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255892.P15444418570646269968

/-! ## A255892.P1109628706337736879

`record[A020639(A255966(n+1))%A017500(n)]`
-/

namespace A255892.P1109628706337736879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A255966 (n + 1)).toNat) (A017500 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255892.P1109628706337736879

/-! ## A255892.P3381801860157042731

`A000007(n+1)+record[A020639(A255966(n+1))]`
-/

namespace A255892.P3381801860157042731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A255966 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255892.P3381801860157042731

/-! ## A255892.P12736474297305499865

`record[A020639(A255966(n+1))]*A134430((2*n)²)`
-/

namespace A255892.P12736474297305499865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A255966 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A134430 ((2 * n) ^ 2)

end

end A255892.P12736474297305499865

/-!
# A255894: Polyiamond Family Planners: a(n) is the least number of children of a polyiamond of size n.

The programs for A255894, there is no canonical definition to state claims against.
-/

/-! ## A255894.P1353725199915086267

`A023135(n%∑[char[n!]]!+3)`
-/

namespace A255894.P1353725199915086267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023135 (n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) + 3)

end

end A255894.P1353725199915086267

/-! ## A255894.P6498637309055142619

`A246869(A271531(n+2))`
-/

namespace A255894.P6498637309055142619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246869 (A271531 (n + 2)).toNat

end

end A255894.P6498637309055142619

/-! ## A255894.P8170923041254159828

`A023135(A257687(n)+3)`
-/

namespace A255894.P8170923041254159828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023135 (A257687 n + 3).toNat

end

end A255894.P8170923041254159828

/-! ## A255894.P14623126713900292200

`A297930(2*A257687(n))`
-/

namespace A255894.P14623126713900292200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297930 (2 * A257687 n).toNat

end

end A255894.P14623126713900292200

/-! ## A255894.P8956187864523019904

`A333940(n)+A218604(n)`
-/

namespace A255894.P8956187864523019904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333940 n + A218604 n

end

end A255894.P8956187864523019904

/-!
# A255897: Primes equal to the sum of both two and three successive semiprimes.

The programs for A255897, there is no canonical definition to state claims against.
-/

/-! ## A255897.P5229468899346873196

`∩[A108183(n+1), A255889(n+1)]`
-/

namespace A255897.P5229468899346873196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255897.P5229468899346873196

/-! ## A255897.P18090056680118445012

`∩[p?[A118717(n+1)], A255889(n+1)]`
-/

namespace A255897.P18090056680118445012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A255897.P18090056680118445012

/-! ## A255897.P687723786664430460

`∩[A118717(n+1), A255889(n+1)]`
-/

namespace A255897.P687723786664430460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255897.P687723786664430460

/-!
# A255898: Minimum prime p such that p^n is a concatenation of two primes.

The programs for A255898, there is no canonical definition to state claims against.
-/

/-! ## A255898.P18340913478255032550

`A281923(n+1)-char[4]`
-/

namespace A255898.P18340913478255032550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281923 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A255898.P18340913478255032550

/-! ## A255898.P4674360573854656477

`xor(A185014(n), A281923(n+1))`
-/

namespace A255898.P4674360573854656477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185014 n) (A281923 (n + 1))

end

end A255898.P4674360573854656477

/-! ## A255898.P16500145095811412580

`A006530(A281923(n+1)+char[4])`
-/

namespace A255898.P16500145095811412580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A281923 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A255898.P16500145095811412580

/-! ## A255898.P11429736897063025494

`A007947(A281923(n+1)+char[4])`
-/

namespace A255898.P11429736897063025494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A281923 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A255898.P11429736897063025494

/-! ## A255898.P13340254608410027800

`A008472(A281923(n+1)+char[4])`
-/

namespace A255898.P13340254608410027800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A281923 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A255898.P13340254608410027800

/-! ## A255898.P12254172226205442724

`A014963(A281923(n+1)+char[4])`
-/

namespace A255898.P12254172226205442724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A281923 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A255898.P12254172226205442724

/-! ## A255898.P13058780446870131703

`A019554(A281923(n+1)+char[4])`
-/

namespace A255898.P13058780446870131703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A281923 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A255898.P13058780446870131703

/-! ## A255898.P16339192657761335633

`A020639(A281923(n+1)+char[4])`
-/

namespace A255898.P16339192657761335633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A281923 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A255898.P16339192657761335633

