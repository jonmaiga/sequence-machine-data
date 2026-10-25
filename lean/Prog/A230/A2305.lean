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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
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
# A230500: Indices of "power odious-evil stability" of odd integers 2*n-1 > 1 (see comment).

The programs for A230500, there is no canonical definition to state claims against.
-/

/-! ## A230500.P1087653596720931126

`A257079((n+1)/and(n+1, -(n+1))*A344223(n+5))`
-/

namespace A230500.P1087653596720931126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) * (A344223 (n + 5) : ℚ))).toNat

end

end A230500.P1087653596720931126

/-! ## A230500.P10781232013986052396

`gcd(A040190(A006820(n)), A159966(n))`
-/

namespace A230500.P10781232013986052396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040190 (A006820 n).toNat) (A159966 n)

end

end A230500.P10781232013986052396

/-! ## A230500.P5915980853486647371

`gcd(A001221(A130095(n+1)), A130089(n+4))`
-/

namespace A230500.P5915980853486647371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A130095 (n + 1)).toNat) (A130089 (n + 4))

end

end A230500.P5915980853486647371

/-! ## A230500.P11855516768363257352

`gcd(A135601(n+1), A135615(A135616(3*n+4)))`
-/

namespace A230500.P11855516768363257352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135601 (n + 1)) (A135615 (A135616 (3 * n + 4)).toNat)

end

end A230500.P11855516768363257352

/-! ## A230500.P12070977118278778380

`A394761(A286659(n))`
-/

namespace A230500.P12070977118278778380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394761 (A286659 n).toNat

end

end A230500.P12070977118278778380

/-!
# A230501: Floor(Sum(d(k), k=1..n)/n), where d(k) is the number of divisors of k.

The programs for A230501, the canonical program `A230501.P15845761254086312235` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230501 has offset 1).

The definition of A230501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230501.P15845761254086312235

`floor(∑[∏{e}[n+1, #+1]]/(n+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230501

/-- `floor(∑[∏{e}[n+1, #+1]]/(n+1))` -/
def P15845761254086312235.Spec : Prop :=
  ∀ n, P15845761254086312235.a n = A230501 (n + 1)

theorem P15845761254086312235.correct : P15845761254086312235.Spec := by
  intro n
  simp only [A230501, Nat.add_sub_cancel]

end A230501

/-! ## A230501.P234703427473632357

`floor(∑[∑{d}[n+1, gcd(n, #)]]/(n+1))`
-/

namespace A230501.P234703427473632357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A230501.P234703427473632357

namespace A230501

/-- `floor(∑[∑{d}[n+1, gcd(n, #)]]/(n+1))` -/
def P234703427473632357.Spec : Prop :=
  ∀ n, P234703427473632357.a n = A230501 (n + 1)

end A230501

/-! ## A230501.P2896614159748809035

`floor(∑[∑{d}[n+1, ceil(1/#)]]/(n+1))`
-/

namespace A230501.P2896614159748809035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A230501.P2896614159748809035

namespace A230501

/-- `floor(∑[∑{d}[n+1, ceil(1/#)]]/(n+1))` -/
def P2896614159748809035.Spec : Prop :=
  ∀ n, P2896614159748809035.a n = A230501 (n + 1)

end A230501

/-! ## A230501.P10497761057533567502

`ceil((∑[∏{e}[n+1, #+1]]-n)/(n+1))`
-/

namespace A230501.P10497761057533567502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A230501.P10497761057533567502

namespace A230501

/-- `ceil((∑[∏{e}[n+1, #+1]]-n)/(n+1))` -/
def P10497761057533567502.Spec : Prop :=
  ∀ n, P10497761057533567502.a n = A230501 (n + 1)

end A230501

/-! ## A230501.P5443596223999001733

`floor(∑[A000005(n+1)]/(n+1))`
-/

namespace A230501.P5443596223999001733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A230501.P5443596223999001733

namespace A230501

/-- `floor(∑[A000005(n+1)]/(n+1))` -/
def P5443596223999001733.Spec : Prop :=
  ∀ n, P5443596223999001733.a n = A230501 (n + 1)

theorem P5443596223999001733.correct : P5443596223999001733.Spec := by
  intro n
  simp only [A230501, Nat.add_sub_cancel, A230501.P5443596223999001733.f1, A230501.P5443596223999001733.a, A230501.P15845761254086312235.f2, A230501.P15845761254086312235.f1, A230501.P15845761254086312235.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230501

/-! ## A230501.P11565216135430846931

`A105209(A167482(n+1))`
-/

namespace A230501.P11565216135430846931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A167482 (n + 1)).toNat

end

end A230501.P11565216135430846931

namespace A230501

/-- `A105209(A167482(n+1))` -/
def P11565216135430846931.Spec : Prop :=
  ∀ n, P11565216135430846931.a n = A230501 (n + 1)

end A230501

/-! ## A230501.P14232683741702813779

`A073458(A328792(n+2))`
-/

namespace A230501.P14232683741702813779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073458 (A328792 (n + 2)).toNat

end

end A230501.P14232683741702813779

namespace A230501

/-- `A073458(A328792(n+2))` -/
def P14232683741702813779.Spec : Prop :=
  ∀ n, P14232683741702813779.a n = A230501 (n + 1)

end A230501

/-! ## A230501.P15788713544147477384

`A262190(A222640(n+1))`
-/

namespace A230501.P15788713544147477384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (A222640 (n + 1)).toNat

end

end A230501.P15788713544147477384

namespace A230501

/-- `A262190(A222640(n+1))` -/
def P15788713544147477384.Spec : Prop :=
  ∀ n, P15788713544147477384.a n = A230501 (n + 1)

end A230501

/-!
# A230503: Irregular triangle read by rows: possible number of interior intersection points of the diagonals of an n-sided convex polygon.

The programs for A230503, there is no canonical definition to state claims against.
-/

/-! ## A230503.P93432591190760313

`lt[∑[n], A132274(A132223(n+3))]`
-/

namespace A230503.P93432591190760313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132274 (A132223 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A230503.P93432591190760313

/-! ## A230503.P1140986487036843149

`lt[A191777(n+1), A191674(n+4)]`
-/

namespace A230503.P1140986487036843149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191674 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230503.P1140986487036843149

/-! ## A230503.P9565896675468802151

`lt[A243971(n+1), A244591(n+4)]`
-/

namespace A230503.P9565896675468802151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244591 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230503.P9565896675468802151

/-! ## A230503.P11197225210685523626

`lt[A329978(n+2)+1, A333777(n+4)]`
-/

namespace A230503.P11197225210685523626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230503.P11197225210685523626

/-! ## A230503.P13808630338336530493

`lt[∑[A325178(2*(n+1))], A329374(n+3)]`
-/

namespace A230503.P13808630338336530493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325178 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329374 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A230503.P13808630338336530493

/-!
# A230506: Numbers n with 2*n + 1 and 2*n^3 + 1 both prime.

The programs for A230506, there is no canonical definition to state claims against.
-/

/-! ## A230506.P1882446442378654759

`record[A195508(A168550(n+1))]`
-/

namespace A230506.P1882446442378654759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (A168550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230506.P1882446442378654759

/-! ## A230506.P1194178298453538567

`filter[A168550(n+1), A101264(#)]`
-/

namespace A230506.P1194178298453538567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A230506.P1194178298453538567

/-! ## A230506.P7341554425190178072

`eq[char[A168550(n+1)], A193773(n)]`
-/

namespace A230506.P7341554425190178072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A230506.P7341554425190178072

/-! ## A230506.P9856869081128390903

`∩[A005097(n+1), A168550(n+1)]`
-/

namespace A230506.P9856869081128390903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230506.P9856869081128390903

/-! ## A230506.P523712950393228594

`∩[A102781(n+1), A168550(n+1)]`
-/

namespace A230506.P523712950393228594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230506.P523712950393228594

/-! ## A230506.P3150428472519075920

`A004524(p?[A005408(A168550(n+1))])`
-/

namespace A230506.P3150428472519075920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A168550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A230506.P3150428472519075920

/-! ## A230506.P12468962078746047530

`A004526(p?[A005408(A168550(n+1))])`
-/

namespace A230506.P12468962078746047530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A168550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A230506.P12468962078746047530

/-! ## A230506.P6857861184966354174

`A213633(p?[A005408(A168550(n+1))])`
-/

namespace A230506.P6857861184966354174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A168550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213633 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A230506.P6857861184966354174

/-!
# A230509: Number of n X 2 0..7 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230509, the canonical program `A230509.P8302200314779590538` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230509 has offset 1).

The definition of A230509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230509.P8302200314779590538

`5*a(n-1)-4*a(n-2)-5*a(n-3)+9*a(n-4)+12*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230509

/-- `5*a(n-1)-4*a(n-2)-5*a(n-3)+9*a(n-4)+12*a(n-5)` -/
def P8302200314779590538.Spec : Prop :=
  ∀ n, P8302200314779590538.a n = A230509 (n + 1)

theorem P8302200314779590538.correct : P8302200314779590538.Spec := by
  intro n
  simp only [A230509, Nat.add_sub_cancel]

end A230509

/-! ## A230509.P3401696290525166025

`A230915(∑[n+2]+3)`
-/

namespace A230509.P3401696290525166025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A230509.P3401696290525166025

namespace A230509

/-- `A230915(∑[n+2]+3)` -/
def P3401696290525166025.Spec : Prop :=
  ∀ n, P3401696290525166025.a n = A230509 (n + 1)

end A230509

/-! ## A230509.P12897869347826618808

`A054977(n)*A230915(A340266(n+1))`
-/

namespace A230509.P12897869347826618808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A230915 (A340266 (n + 1)).toNat

end

end A230509.P12897869347826618808

namespace A230509

/-- `A054977(n)*A230915(A340266(n+1))` -/
def P12897869347826618808.Spec : Prop :=
  ∀ n, P12897869347826618808.a n = A230509 (n + 1)

end A230509

/-! ## A230509.P3576954762180634455

`A230915(n+1)+A230915(A340266(n+1))`
-/

namespace A230509.P3576954762180634455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (n + 1) + A230915 (A340266 (n + 1)).toNat

end

end A230509.P3576954762180634455

namespace A230509

/-- `A230915(n+1)+A230915(A340266(n+1))` -/
def P3576954762180634455.Spec : Prop :=
  ∀ n, P3576954762180634455.a n = A230509 (n + 1)

end A230509

/-! ## A230509.P1942218600923951924

`A230513(∑[n+1]+2)`
-/

namespace A230509.P1942218600923951924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230509.P1942218600923951924

namespace A230509

/-- `A230513(∑[n+1]+2)` -/
def P1942218600923951924.Spec : Prop :=
  ∀ n, P1942218600923951924.a n = A230509 (n + 1)

end A230509

/-!
# A230510: Number of nX3 0..7 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230510, there is no canonical definition to state claims against.
-/

/-! ## A230510.P9955660494236406012

`A230513(∑[n+2]+4)`
-/

namespace A230510.P9955660494236406012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230510.P9955660494236406012

/-! ## A230510.P4777234475813276947

`lcm(2, A230513(A167614(n+1)))`
-/

namespace A230510.P4777234475813276947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230513 (A167614 (n + 1)).toNat)

end

end A230510.P4777234475813276947

/-! ## A230510.P6107870972657984056

`A230513(A167614(n+1))+A059995(n)`
-/

namespace A230510.P6107870972657984056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A167614 (n + 1)).toNat + A059995 n

end

end A230510.P6107870972657984056

/-! ## A230510.P8615348542411814597

`A230513(A167614(n+1))+A066568(n)`
-/

namespace A230510.P8615348542411814597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A167614 (n + 1)).toNat + A066568 n

end

end A230510.P8615348542411814597

/-! ## A230510.P11001088821905313427

`A230513(A167614(n+1))+A079694(n)`
-/

namespace A230510.P11001088821905313427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A167614 (n + 1)).toNat + A079694 n

end

end A230510.P11001088821905313427

/-!
# A230511: Number of nX4 0..7 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230511, there is no canonical definition to state claims against.
-/

/-! ## A230511.P14585767714245607863

`A230513(A374004(n+1))`
-/

namespace A230511.P14585767714245607863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A374004 (n + 1)).toNat

end

end A230511.P14585767714245607863

/-! ## A230511.P4096384031657423303

`A230513(A141214(n)+7)`
-/

namespace A230511.P4096384031657423303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A141214 n + 7).toNat

end

end A230511.P4096384031657423303

/-! ## A230511.P5064864831736217283

`A230513(A052905(n)+9)`
-/

namespace A230511.P5064864831736217283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A052905 n + 9).toNat

end

end A230511.P5064864831736217283

/-! ## A230511.P3460794367321812960

`A230513(A055999(n)+10)`
-/

namespace A230511.P3460794367321812960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A055999 n + 10).toNat

end

end A230511.P3460794367321812960

/-!
# A230512: Number of nX5 0..7 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 8, and upper left element zero.

The programs for A230512, there is no canonical definition to state claims against.
-/

/-! ## A230512.P17289798349389463407

`A230513(A374005(n+1))`
-/

namespace A230512.P17289798349389463407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A374005 (n + 1)).toNat

end

end A230512.P17289798349389463407

/-! ## A230512.P15184399527292289638

`A230513(A167499(n+3))`
-/

namespace A230512.P15184399527292289638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A167499 (n + 3)).toNat

end

end A230512.P15184399527292289638

/-! ## A230512.P5376537868447355924

`A230513(A155212(n)+13)`
-/

namespace A230512.P5376537868447355924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A155212 n + 13).toNat

end

end A230512.P5376537868447355924

/-!
# A230515: Numbers n such that n*(n+1)-1 is a Sophie Germain prime.

The programs for A230515, there is no canonical definition to state claims against.
-/

/-! ## A230515.P1954706891580604914

`record[A127093(A124485(n+2))]`
-/

namespace A230515.P1954706891580604914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A124485 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230515.P1954706891580604914

/-! ## A230515.P14898549619132918648

`record[A131821(A124485(n+1))]`
-/

namespace A230515.P14898549619132918648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (A124485 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230515.P14898549619132918648

/-! ## A230515.P2973971834328353857

`eq[1, A156660((n+1)²+n)]+1`
-/

namespace A230515.P2973971834328353857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 ((n + 1) ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230515.P2973971834328353857

/-! ## A230515.P4230868875400840340

`eq[1, A156660(abs(A110331(n)))]`
-/

namespace A230515.P4230868875400840340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 |A110331 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230515.P4230868875400840340

/-!
# A230517: An irrational x such that the decimal representation of neither x nor sqrt(x) contains the digit 0.

The programs for A230517, there is no canonical definition to state claims against.
-/

/-! ## A230517.P11237474682346922994

`gcd(A040039(A130321(n)), A322948(n+1))`
-/

namespace A230517.P11237474682346922994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040039 (A130321 n).toNat) (A322948 (n + 1))

end

end A230517.P11237474682346922994

/-! ## A230517.P745255013471551513

`A005102(A380368(n+1))`
-/

namespace A230517.P745255013471551513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005102 (A380368 (n + 1)).toNat

end

end A230517.P745255013471551513

/-! ## A230517.P4106180993462754789

`A369030(A131222(n+1))`
-/

namespace A230517.P4106180993462754789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369030 (A131222 (n + 1)).toNat

end

end A230517.P4106180993462754789

/-! ## A230517.P2605124758518820039

`A369010(A293881(n+1))`
-/

namespace A230517.P2605124758518820039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369010 (A293881 (n + 1)).toNat

end

end A230517.P2605124758518820039

/-! ## A230517.P11770668673012529264

`A056926(A157393(n+3)+3)`
-/

namespace A230517.P11770668673012529264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A157393 (n + 3) + 3).toNat

end

end A230517.P11770668673012529264

/-!
# A230518: Smallest prime p = a(n) such that the sum of p and the next prime has n distinct prime factors.

The programs for A230518, there is no canonical definition to state claims against.
-/

/-! ## A230518.P11046795212931587094

`A000040(A251609(n+1))`
-/

namespace A230518.P11046795212931587094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A251609 (n + 1)).toNat

end

end A230518.P11046795212931587094

/-! ## A230518.P12517644141552117070

`A008578(A251609(n+1)+1)`
-/

namespace A230518.P12517644141552117070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A251609 (n + 1) + 1).toNat

end

end A230518.P12517644141552117070

/-!
# A230519: Number of n X n 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230519, there is no canonical definition to state claims against.
-/

/-! ## A230519.P14178925780846348693

`A230526((n+1)²+n²)`
-/

namespace A230519.P14178925780846348693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 ((n + 1) ^ 2 + n ^ 2)

end

end A230519.P14178925780846348693

/-!
# A230520: Number of n X 2 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230520, the canonical program `A230520.P13547399162151227913` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230520 has offset 1).

The definition of A230520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230520.P13547399162151227913

`6*a(n-1)+9*a(n-2)+18*a(n-3)` with `a(0)=0, a(1)=12, a(2)=78`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230520

/-- `6*a(n-1)+9*a(n-2)+18*a(n-3)` -/
def P13547399162151227913.Spec : Prop :=
  ∀ n, (P13547399162151227913.a n : ℤ) = A230520 (n + 1)

theorem P13547399162151227913.correct : P13547399162151227913.Spec := by
  intro n
  simp only [A230520, Nat.add_sub_cancel]

end A230520

/-! ## A230520.P17282775037643669937

`A230526(∑[n+1]+2)`
-/

namespace A230520.P17282775037643669937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230520.P17282775037643669937

namespace A230520

/-- `A230526(∑[n+1]+2)` -/
def P17282775037643669937.Spec : Prop :=
  ∀ n, P17282775037643669937.a n = A230520 (n + 1)

end A230520

/-! ## A230520.P7997722319656560064

`record[Δ[A230526(n+1)]-A230526(n+1)²]`
-/

namespace A230520.P7997722319656560064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A230526 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230520.P7997722319656560064

namespace A230520

/-- `record[Δ[A230526(n+1)]-A230526(n+1)²]` -/
def P7997722319656560064.Spec : Prop :=
  ∀ n, P7997722319656560064.a n = A230520 (n + 1)

end A230520

/-! ## A230520.P15031594735074270476

`record[A230526(∑[A158821(n)])]`
-/

namespace A230520.P15031594735074270476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230520.P15031594735074270476

namespace A230520

/-- `record[A230526(∑[A158821(n)])]` -/
def P15031594735074270476.Spec : Prop :=
  ∀ n, P15031594735074270476.a n = A230520 (n + 1)

end A230520

/-! ## A230520.P6701476683444394908

`record[A230526(record[A158821(n)+n])]`
-/

namespace A230520.P6701476683444394908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230520.P6701476683444394908

namespace A230520

/-- `record[A230526(record[A158821(n)+n])]` -/
def P6701476683444394908.Spec : Prop :=
  ∀ n, P6701476683444394908.a n = A230520 (n + 1)

end A230520

/-!
# A230521: Number of nX3 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230521, there is no canonical definition to state claims against.
-/

/-! ## A230521.P4257268750617922453

`A230526(∑[n+2]+4)`
-/

namespace A230521.P4257268750617922453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230521.P4257268750617922453

/-! ## A230521.P2542928362151882601

`lcm(2, A230526(A167614(n+1)))`
-/

namespace A230521.P2542928362151882601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230526 (A167614 (n + 1)).toNat)

end

end A230521.P2542928362151882601

/-! ## A230521.P4374337191594967401

`A230526(A167614(n+1))+A025466(n)`
-/

namespace A230521.P4374337191594967401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A167614 (n + 1)).toNat + A025466 n

end

end A230521.P4374337191594967401

/-! ## A230521.P2615021173051090836

`A025451(n)*A230526(A167614(n+1))`
-/

namespace A230521.P2615021173051090836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n * A230526 (A167614 (n + 1)).toNat

end

end A230521.P2615021173051090836

/-! ## A230521.P8428193057656083808

`A057427(n)*A230526(A167614(n+1))`
-/

namespace A230521.P8428193057656083808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A230526 (A167614 (n + 1)).toNat

end

end A230521.P8428193057656083808

/-!
# A230522: Number of nX4 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230522, there is no canonical definition to state claims against.
-/

/-! ## A230522.P13806531356794859202

`A230526(A374004(n+1))`
-/

namespace A230522.P13806531356794859202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A374004 (n + 1)).toNat

end

end A230522.P13806531356794859202

/-! ## A230522.P15403189841062762569

`A230526(A141214(n)+7)`
-/

namespace A230522.P15403189841062762569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A141214 n + 7).toNat

end

end A230522.P15403189841062762569

/-! ## A230522.P106654298974527643

`A230526(A052905(n)+9)`
-/

namespace A230522.P106654298974527643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A052905 n + 9).toNat

end

end A230522.P106654298974527643

/-! ## A230522.P15019335529602883760

`A230526(A055999(n)+10)`
-/

namespace A230522.P15019335529602883760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A055999 n + 10).toNat

end

end A230522.P15019335529602883760

/-! ## A230522.P17043211644686690318

`A230526(A167614(n+2)+1)`
-/

namespace A230522.P17043211644686690318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A167614 (n + 2) + 1).toNat

end

end A230522.P17043211644686690318

/-!
# A230523: Number of nX5 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230523, there is no canonical definition to state claims against.
-/

/-! ## A230523.P16329725412371168879

`A230526(A374005(n+1))`
-/

namespace A230523.P16329725412371168879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A374005 (n + 1)).toNat

end

end A230523.P16329725412371168879

/-! ## A230523.P17473137853671166318

`A230526(A167499(n+3))`
-/

namespace A230523.P17473137853671166318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A167499 (n + 3)).toNat

end

end A230523.P17473137853671166318

/-! ## A230523.P16943460237043626305

`A230526(A155212(n)+13)`
-/

namespace A230523.P16943460237043626305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A155212 n + 13).toNat

end

end A230523.P16943460237043626305

/-! ## A230523.P15358409330210615143

`A230526(A000124(n+4)+4)`
-/

namespace A230523.P15358409330210615143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A000124 (n + 4) + 4).toNat

end

end A230523.P15358409330210615143

/-! ## A230523.P262921975008056324

`A230526(A056115(n)+11)`
-/

namespace A230523.P262921975008056324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A056115 n + 11).toNat

end

end A230523.P262921975008056324

/-!
# A230524: Number of nX6 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230524, there is no canonical definition to state claims against.
-/

/-! ## A230524.P1221618149146902295

`A230526(A374007(n+1))`
-/

namespace A230524.P1221618149146902295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A374007 (n + 1)).toNat

end

end A230524.P1221618149146902295

/-! ## A230524.P15668781323009971306

`A230526(eq[5, A309287(n+1)])`
-/

namespace A230524.P15668781323009971306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230524.P15668781323009971306

/-!
# A230525: Number of nX7 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230525, there is no canonical definition to state claims against.
-/

/-! ## A230525.P14720952993500986094

`A230526(A374008(n+1))`
-/

namespace A230525.P14720952993500986094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A374008 (n + 1)).toNat

end

end A230525.P14720952993500986094

/-! ## A230525.P2355954205655522316

`A230526(eq[11, A066657(n)])`
-/

namespace A230525.P2355954205655522316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230525.P2355954205655522316

/-! ## A230525.P10399013702838190889

`A230526(eq[4, A219347(n)])`
-/

namespace A230525.P10399013702838190889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230525.P10399013702838190889

/-! ## A230525.P8764531343114772539

`A230526(eq[7, A200370(n+1)])`
-/

namespace A230525.P8764531343114772539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230525.P8764531343114772539

/-!
# A230526: T(n,k)=Number of nXk 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230526, there is no canonical definition to state claims against.
-/

/-! ## A230526.P12581106133992202767

`6*A351007(A166344(n+1))`
-/

namespace A230526.P12581106133992202767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A351007 (A166344 (n + 1)).toNat

end

end A230526.P12581106133992202767

/-! ## A230526.P4269770618446901596

`A230520(A007318(n)^A146852(n+1))`
-/

namespace A230526.P4269770618446901596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230520 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A146852 (n + 1) : ℤ))).toNat

end

end A230526.P4269770618446901596

/-! ## A230526.P9209943424186371843

`A230520(A007318(n))%A160922(n+1)`
-/

namespace A230526.P9209943424186371843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230520 (A007318 n).toNat) (A160922 (n + 1))

end

end A230526.P9209943424186371843

/-! ## A230526.P9567652251708129679

`A230520(A007318(n)%A045345(n+5))`
-/

namespace A230526.P9567652251708129679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230520 (Int.tmod (A007318 n) (A045345 (n + 5))).toNat

end

end A230526.P9567652251708129679

/-! ## A230526.P11881330894097666682

`A173453(A132777(n+3)-n)`
-/

namespace A230526.P11881330894097666682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173453 (A132777 (n + 3) - (n : ℤ)).toNat

end

end A230526.P11881330894097666682

/-!
# A230527: Numbers n such that 3^6*2^n - 1 is prime.

The programs for A230527, there is no canonical definition to state claims against.
-/

/-! ## A230527.P4046930482986272657

`A232010(a(n-2)+17)` with `a(0)=5, a(1)=17, a(2)=23`
-/

namespace A230527.P4046930482986272657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 17, 23] fun n a =>
  A232010 (a (n - 2) + 17).toNat

end

end A230527.P4046930482986272657

/-!
# A230529: Number of n X 2 0..6 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230529, there is no canonical definition to state claims against.
-/

/-! ## A230529.P12151552282587090661

`A113293(A100134(n))`
-/

namespace A230529.P12151552282587090661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113293 (A100134 n).toNat

end

end A230529.P12151552282587090661

/-! ## A230529.P13734825041958682573

`A113293(A365732(n))`
-/

namespace A230529.P13734825041958682573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113293 (A365732 n).toNat

end

end A230529.P13734825041958682573

/-! ## A230529.P14780596675410321449

`A113293(A365734(n))`
-/

namespace A230529.P14780596675410321449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113293 (A365734 n).toNat

end

end A230529.P14780596675410321449

/-! ## A230529.P15101375637321703444

`A113293(Δ[A102516(n)])`
-/

namespace A230529.P15101375637321703444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113293 (f1 (n + 1) - f1 n).toNat

end

end A230529.P15101375637321703444

/-! ## A230529.P7299441698671955201

`A113293(A101552(n)+1)`
-/

namespace A230529.P7299441698671955201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113293 (A101552 n + 1).toNat

end

end A230529.P7299441698671955201

/-!
# A230530: Number of nX3 0..6 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230530, there is no canonical definition to state claims against.
-/

/-! ## A230530.P12612068664516540062

`A230533(∑[n+2]+4)`
-/

namespace A230530.P12612068664516540062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230530.P12612068664516540062

/-! ## A230530.P7285352047747521540

`lcm(2, A230533(A167614(n+1)))`
-/

namespace A230530.P7285352047747521540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230533 (A167614 (n + 1)).toNat)

end

end A230530.P7285352047747521540

/-! ## A230530.P15594376532345157579

`A230533(A167614(n+1))+A011742(n)`
-/

namespace A230530.P15594376532345157579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (A167614 (n + 1)).toNat + A011742 n

end

end A230530.P15594376532345157579

/-! ## A230530.P14895724276971342190

`A230533(A167614(n+1))+A025437(n)`
-/

namespace A230530.P14895724276971342190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (A167614 (n + 1)).toNat + A025437 n

end

end A230530.P14895724276971342190

/-! ## A230530.P10517474297753254630

`A230533(A167614(n+1))+A025439(n)`
-/

namespace A230530.P10517474297753254630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (A167614 (n + 1)).toNat + A025439 n

end

end A230530.P10517474297753254630

/-!
# A230531: Number of nX4 0..6 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230531, there is no canonical definition to state claims against.
-/

/-! ## A230531.P15876865607745807158

`A230533(A374004(n+1))`
-/

namespace A230531.P15876865607745807158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (A374004 (n + 1)).toNat

end

end A230531.P15876865607745807158

/-! ## A230531.P996457701891831088

`A230533(A141214(n)+7)`
-/

namespace A230531.P996457701891831088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (A141214 n + 7).toNat

end

end A230531.P996457701891831088

/-! ## A230531.P12742244353223365138

`A230533(A052905(n)+9)`
-/

namespace A230531.P12742244353223365138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (A052905 n + 9).toNat

end

end A230531.P12742244353223365138

/-! ## A230531.P17045079289519947358

`A230533(A055999(n)+10)`
-/

namespace A230531.P17045079289519947358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (A055999 n + 10).toNat

end

end A230531.P17045079289519947358

/-!
# A230532: Number of nX5 0..6 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230532, there is no canonical definition to state claims against.
-/

/-! ## A230532.P8041685194871885168

`A230533(A374005(n+1))`
-/

namespace A230532.P8041685194871885168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (A374005 (n + 1)).toNat

end

end A230532.P8041685194871885168

/-! ## A230532.P13846731564936092811

`A230533(A167499(n+3))`
-/

namespace A230532.P13846731564936092811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (A167499 (n + 3)).toNat

end

end A230532.P13846731564936092811

/-! ## A230532.P2153260786965439535

`A230533(A155212(n)+13)`
-/

namespace A230532.P2153260786965439535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (A155212 n + 13).toNat

end

end A230532.P2153260786965439535

/-!
# A230533: T(n,k)=Number of nXk 0..6 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 7, and upper left element zero.

The programs for A230533, there is no canonical definition to state claims against.
-/

/-! ## A230533.P11887611929559629126

`A157322(n)%A003602(A128718(n+1))`
-/

namespace A230533.P11887611929559629126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157322 n) (A003602 (A128718 (n + 1)).toNat)

end

end A230533.P11887611929559629126

/-! ## A230533.P6813524359642516053

`A005843(A034495(A182625(n+1)))`
-/

namespace A230533.P6813524359642516053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A034495 (A182625 (n + 1)).toNat).toNat

end

end A230533.P6813524359642516053

/-! ## A230533.P8533758960045481315

`and(A075224(A072405(n)), A319064(n+1))`
-/

namespace A230533.P8533758960045481315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075224 (A072405 n).toNat) (A319064 (n + 1))

end

end A230533.P8533758960045481315

/-! ## A230533.P2837415207096671734

`A014601(∑{d}[A182625(n+1), A034495(#)])`
-/

namespace A230533.P2837415207096671734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (∑ d ∈ Nat.divisors (f1 n).natAbs, A034495 d).toNat

end

end A230533.P2837415207096671734

/-!
# A230534: Expansion of phi(x) / phi(x^2) * f(-x, -x^7) / f(-x^3, -x^5) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A230534, there is no canonical definition to state claims against.
-/

/-! ## A230534.P455391839421797687

`A029841(n+1)-A245434(n+1)`
-/

namespace A230534.P455391839421797687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 (n + 1) - A245434 (n + 1)

end

end A230534.P455391839421797687

/-! ## A230534.P8819792770554626995

`A245434(n+1)-A208589(n+1)`
-/

namespace A230534.P8819792770554626995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245434 (n + 1) - A208589 (n + 1)

end

end A230534.P8819792770554626995

/-! ## A230534.P5528973019003132741

`A230535(Δ[n²])`
-/

namespace A230534.P5528973019003132741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A230534.P5528973019003132741

/-! ## A230534.P17459909316711413343

`xor(1, xor(1, A230535(2*n+1)))`
-/

namespace A230534.P17459909316711413343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A230535 (2 * n + 1)))

end

end A230534.P17459909316711413343

/-! ## A230534.P12652973973051111912

`A127391(2*n+1)-A092869(n)`
-/

namespace A230534.P12652973973051111912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 (2 * n + 1) - A092869 n

end

end A230534.P12652973973051111912

/-! ## A230534.P8039331651368642479

`A230535(n+1+n)+A034557(A053830(n+1))`
-/

namespace A230534.P8039331651368642479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230535 (n + 1 + n) + A034557 (A053830 (n + 1)).toNat

end

end A230534.P8039331651368642479

/-!
# A230539: a(n) = 3*n*2^(3*n-1).

The programs for A230539, the canonical program `A230539.P16181757329664095899` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230539 has offset 0).

The definition of A230539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*2^(3*n-1)` (program `A230539.P3959004151300143474`, by `A230539.P3959004151300143474.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230539.P3959004151300143474

`3*n*2^(3*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230539.P3959004151300143474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n : ℚ) * (2 : ℚ) ^ ((3 * n : ℤ) - 1 : ℤ)

end

end A230539.P3959004151300143474

namespace A230539

/-- `3*n*2^(3*n-1)` -/
def P3959004151300143474.Spec : Prop :=
  ∀ n, P3959004151300143474.a n = (A230539 n : ℚ)

theorem P3959004151300143474.correct : P3959004151300143474.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A230539, Nat.add_sub_cancel, A230539.P3959004151300143474.a, A230539.P16181757329664095899.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A230539, Nat.add_sub_cancel, A230539.P3959004151300143474.a, A230539.P16181757329664095899.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A230539

/-! ## A230539.P16181757329664095899

`16*a(n-1)-64*a(n-2)` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230539

/-- `16*a(n-1)-64*a(n-2)` -/
def P16181757329664095899.Spec : Prop :=
  ∀ n, P16181757329664095899.a n = A230539 n

theorem P16181757329664095899.correct : P16181757329664095899.Spec := by
  intro n
  simp only [A230539]

end A230539

/-! ## A230539.P10306959101936263713

`A001787(3*n)`
-/

namespace A230539.P10306959101936263713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (3 * n)

end

end A230539.P10306959101936263713

namespace A230539

/-- `A001787(3*n)` -/
def P10306959101936263713.Spec : Prop :=
  ∀ n, P10306959101936263713.a n = A230539 n

end A230539

/-! ## A230539.P4500651911377757759

`Δ[A393175(3*n)]`
-/

namespace A230539.P4500651911377757759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393175 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230539.P4500651911377757759

namespace A230539

/-- `Δ[A393175(3*n)]` -/
def P4500651911377757759.Spec : Prop :=
  ∀ n, P4500651911377757759.a n = A230539 n

end A230539

/-! ## A230539.P7085803407721912580

`A097067(3*n+1)`
-/

namespace A230539.P7085803407721912580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (3 * n + 1)

end

end A230539.P7085803407721912580

namespace A230539

/-- `A097067(3*n+1)` -/
def P7085803407721912580.Spec : Prop :=
  ∀ n, P7085803407721912580.a n = A230539 n

end A230539

/-! ## A230539.P9343224904472038

`A139756(3*n+1)`
-/

namespace A230539.P9343224904472038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (3 * n + 1)

end

end A230539.P9343224904472038

namespace A230539

/-- `A139756(3*n+1)` -/
def P9343224904472038.Spec : Prop :=
  ∀ n, P9343224904472038.a n = A230539 n

end A230539

/-! ## A230539.P4756757924174335497

`A005183(3*n)-1`
-/

namespace A230539.P4756757924174335497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 (3 * n) - 1

end

end A230539.P4756757924174335497

namespace A230539

/-- `A005183(3*n)-1` -/
def P4756757924174335497.Spec : Prop :=
  ∀ n, P4756757924174335497.a n = A230539 n

end A230539

/-! ## A230539.P3197606833553552700

`record[n/2*A104537(n)]`
-/

namespace A230539.P3197606833553552700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A104537 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230539.P3197606833553552700

namespace A230539

/-- `record[n/2*A104537(n)]` -/
def P3197606833553552700.Spec : Prop :=
  ∀ n, P3197606833553552700.a n = (A230539 n : ℚ)

end A230539

/-! ## A230539.P1306710677424801684

`record[n/2*A104538(n)]`
-/

namespace A230539.P1306710677424801684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A104538 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230539.P1306710677424801684

namespace A230539

/-- `record[n/2*A104538(n)]` -/
def P1306710677424801684.Spec : Prop :=
  ∀ n, P1306710677424801684.a n = (A230539 n : ℚ)

end A230539

/-! ## A230539.P7892863854737115671

`A349050(A016921(n))`
-/

namespace A230539.P7892863854737115671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349050 (A016921 n).toNat

end

end A230539.P7892863854737115671

namespace A230539

/-- `A349050(A016921(n))` -/
def P7892863854737115671.Spec : Prop :=
  ∀ n, P7892863854737115671.a n = A230539 n

end A230539

/-! ## A230539.P13966108351452495080

`A036294(n)+A036294(n)/2`
-/

namespace A230539.P13966108351452495080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036294 n : ℚ) + (A036294 n : ℚ) / 2

end

end A230539.P13966108351452495080

namespace A230539

/-- `A036294(n)+A036294(n)/2` -/
def P13966108351452495080.Spec : Prop :=
  ∀ n, P13966108351452495080.a n = (A230539 n : ℚ)

end A230539

/-! ## A230539.P5975992595747367760

`A036289(3*n)/2`
-/

namespace A230539.P5975992595747367760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 (3 * n) : ℚ) / 2

end

end A230539.P5975992595747367760

namespace A230539

/-- `A036289(3*n)/2` -/
def P5975992595747367760.Spec : Prop :=
  ∀ n, P5975992595747367760.a n = (A230539 n : ℚ)

end A230539

/-! ## A230539.P13659787544927955591

`3*A036294(n)/2`
-/

namespace A230539.P13659787544927955591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A036294 n : ℚ) / 2

end

end A230539.P13659787544927955591

namespace A230539

/-- `3*A036294(n)/2` -/
def P13659787544927955591.Spec : Prop :=
  ∀ n, P13659787544927955591.a n = (A230539 n : ℚ)

end A230539

/-! ## A230539.P6769351857299269440

`A128205(3*n)/2`
-/

namespace A230539.P6769351857299269440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128205 (3 * n) : ℚ) / 2

end

end A230539.P6769351857299269440

namespace A230539

/-- `A128205(3*n)/2` -/
def P6769351857299269440.Spec : Prop :=
  ∀ n, P6769351857299269440.a n = (A230539 n : ℚ)

end A230539

/-! ## A230539.P8384820252658994857

`n*Δ[A083713(n)]/2`
-/

namespace A230539.P8384820252658994857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083713 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A230539.P8384820252658994857

namespace A230539

/-- `n*Δ[A083713(n)]/2` -/
def P8384820252658994857.Spec : Prop :=
  ∀ n, P8384820252658994857.a n = (A230539 n : ℚ)

end A230539

/-! ## A230539.P8463552629473027667

`n*A103333(n+1)/2`
-/

namespace A230539.P8463552629473027667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A103333 (n + 1) : ℚ) / 2

end

end A230539.P8463552629473027667

namespace A230539

/-- `n*A103333(n+1)/2` -/
def P8463552629473027667.Spec : Prop :=
  ∀ n, P8463552629473027667.a n = (A230539 n : ℚ)

end A230539

/-! ## A230539.P10204375223613496438

`n*A096886(2*n+1)/2`
-/

namespace A230539.P10204375223613496438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A096886 (2 * n + 1) : ℚ) / 2

end

end A230539.P10204375223613496438

namespace A230539

/-- `n*A096886(2*n+1)/2` -/
def P10204375223613496438.Spec : Prop :=
  ∀ n, P10204375223613496438.a n = (A230539 n : ℚ)

end A230539

/-! ## A230539.P6364738086645470296

`3*n*A094015(2*n)/2`
-/

namespace A230539.P6364738086645470296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * A094015 (2 * n) : ℚ) / 2

end

end A230539.P6364738086645470296

namespace A230539

/-- `3*n*A094015(2*n)/2` -/
def P6364738086645470296.Spec : Prop :=
  ∀ n, P6364738086645470296.a n = (A230539 n : ℚ)

end A230539

/-! ## A230539.P5357576177108803549

`n*A007283(A008585(n))/2`
-/

namespace A230539.P5357576177108803549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A007283 (A008585 n).toNat : ℚ) / 2

end

end A230539.P5357576177108803549

namespace A230539

/-- `n*A007283(A008585(n))/2` -/
def P5357576177108803549.Spec : Prop :=
  ∀ n, P5357576177108803549.a n = (A230539 n : ℚ)

end A230539

/-!
# A230540: a(n) = 2*n*3^(2*n-1).

The programs for A230540, the canonical program `A230540.P16488829525801161885` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230540 has offset 0).

The definition of A230540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*3^(2*n-1)` (program `A230540.P13443678288028612837`, by `A230540.P13443678288028612837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230540.P13443678288028612837

`2*n*3^(2*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230540.P13443678288028612837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * (3 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)

end

end A230540.P13443678288028612837

namespace A230540

/-- `2*n*3^(2*n-1)` -/
def P13443678288028612837.Spec : Prop :=
  ∀ n, P13443678288028612837.a n = (A230540 n : ℚ)

theorem P13443678288028612837.correct : P13443678288028612837.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A230540, Nat.add_sub_cancel, A230540.P13443678288028612837.a, A230540.P16488829525801161885.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A230540, Nat.add_sub_cancel, A230540.P13443678288028612837.a, A230540.P16488829525801161885.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A230540

/-! ## A230540.P16488829525801161885

`18*a(n-1)-81*a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230540

/-- `18*a(n-1)-81*a(n-2)` -/
def P16488829525801161885.Spec : Prop :=
  ∀ n, P16488829525801161885.a n = A230540 n

theorem P16488829525801161885.correct : P16488829525801161885.Spec := by
  intro n
  simp only [A230540]

end A230540

/-! ## A230540.P6179673777454275657

`record[-(n*(-3)^(n-1))]`
-/

namespace A230540.P6179673777454275657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n : ℚ) * (-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230540.P6179673777454275657

namespace A230540

/-- `record[-(n*(-3)^(n-1))]` -/
def P6179673777454275657.Spec : Prop :=
  ∀ n, P6179673777454275657.a n = (A230540 n : ℚ)

end A230540

/-! ## A230540.P8017585929303801012

`ceil(2*n*sqrt(3)^record[lcm(2, n)])`
-/

namespace A230540.P8017585929303801012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) * Real.sqrt (3 : ℝ) ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A230540.P8017585929303801012

namespace A230540

/-- `ceil(2*n*sqrt(3)^record[lcm(2, n)])` -/
def P8017585929303801012.Spec : Prop :=
  ∀ n, P8017585929303801012.a n = A230540 n

end A230540

/-! ## A230540.P15734640131956824933

`A274499(2*n)`
-/

namespace A230540.P15734640131956824933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274499 (2 * n)

end

end A230540.P15734640131956824933

namespace A230540

/-- `A274499(2*n)` -/
def P15734640131956824933.Spec : Prop :=
  ∀ n, P15734640131956824933.a n = A230540 n

end A230540

/-! ## A230540.P12382949245255676273

`A027471(Δ[n²])`
-/

namespace A230540.P12382949245255676273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A230540.P12382949245255676273

namespace A230540

/-- `A027471(Δ[n²])` -/
def P12382949245255676273.Spec : Prop :=
  ∀ n, P12382949245255676273.a n = A230540 n

end A230540

/-! ## A230540.P7331885003153635136

`A036290(2*n)/3`
-/

namespace A230540.P7331885003153635136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036290 (2 * n) : ℚ) / 3

end

end A230540.P7331885003153635136

namespace A230540

/-- `A036290(2*n)/3` -/
def P7331885003153635136.Spec : Prop :=
  ∀ n, P7331885003153635136.a n = (A230540 n : ℚ)

end A230540

/-! ## A230540.P408273746349067042

`A274499(Δ[n²])/3`
-/

namespace A230540.P408273746349067042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274499 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A230540.P408273746349067042

namespace A230540

/-- `A274499(Δ[n²])/3` -/
def P408273746349067042.Spec : Prop :=
  ∀ n, P408273746349067042.a n = (A230540 n : ℚ)

end A230540

/-! ## A230540.P2343796083425546030

`A120908(2*n+1)/4`
-/

namespace A230540.P2343796083425546030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120908 (2 * n + 1) : ℚ) / 4

end

end A230540.P2343796083425546030

namespace A230540

/-- `A120908(2*n+1)/4` -/
def P2343796083425546030.Spec : Prop :=
  ∀ n, P2343796083425546030.a n = (A230540 n : ℚ)

end A230540

/-! ## A230540.P2321341124924353702

`lcm(2, A027471(2*n+1))`
-/

namespace A230540.P2321341124924353702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A027471 (2 * n + 1))

end

end A230540.P2321341124924353702

namespace A230540

/-- `lcm(2, A027471(2*n+1))` -/
def P2321341124924353702.Spec : Prop :=
  ∀ n, (P2321341124924353702.a n : ℤ) = A230540 n

end A230540

/-! ## A230540.P9945763381582354999

`2*n*A001019(n)/3`
-/

namespace A230540.P9945763381582354999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) * A001019 n) : ℚ) / 3

end

end A230540.P9945763381582354999

namespace A230540

/-- `2*n*A001019(n)/3` -/
def P9945763381582354999.Spec : Prop :=
  ∀ n, P9945763381582354999.a n = (A230540 n : ℚ)

end A230540

/-! ## A230540.P7728857898152285511

`2*n*A000244(n)²/3`
-/

namespace A230540.P7728857898152285511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) * A000244 n ^ 2 : ℚ) / 3

end

end A230540.P7728857898152285511

namespace A230540

/-- `2*n*A000244(n)²/3` -/
def P7728857898152285511.Spec : Prop :=
  ∀ n, P7728857898152285511.a n = (A230540 n : ℚ)

end A230540

/-! ## A230540.P2080454150967711961

`2*n*A000244(2*n)/3`
-/

namespace A230540.P2080454150967711961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) * A000244 (2 * n) : ℚ) / 3

end

end A230540.P2080454150967711961

namespace A230540

/-- `2*n*A000244(2*n)/3` -/
def P2080454150967711961.Spec : Prop :=
  ∀ n, P2080454150967711961.a n = (A230540 n : ℚ)

end A230540

/-! ## A230540.P13739412587692652105

`A086972(2*n)-A007051(2*n)`
-/

namespace A230540.P13739412587692652105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086972 (2 * n) - A007051 (2 * n)

end

end A230540.P13739412587692652105

namespace A230540

/-- `A086972(2*n)-A007051(2*n)` -/
def P13739412587692652105.Spec : Prop :=
  ∀ n, P13739412587692652105.a n = A230540 n

end A230540

/-! ## A230540.P6595513851628446938

`A006234(2*n+3)-A000244(n)²`
-/

namespace A230540.P6595513851628446938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (2 * n + 3) - A000244 n ^ 2

end

end A230540.P6595513851628446938

namespace A230540

/-- `A006234(2*n+3)-A000244(n)²` -/
def P6595513851628446938.Spec : Prop :=
  ∀ n, P6595513851628446938.a n = A230540 n

end A230540

/-! ## A230540.P2039555536294192136

`A064017(2*n+1)-A025192(2*n)`
-/

namespace A230540.P2039555536294192136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064017 (2 * n + 1) - A025192 (2 * n)

end

end A230540.P2039555536294192136

namespace A230540

/-- `A064017(2*n+1)-A025192(2*n)` -/
def P2039555536294192136.Spec : Prop :=
  ∀ n, P2039555536294192136.a n = A230540 n

end A230540

/-! ## A230540.P10425149945975476291

`A027261(2*n)-A064017(2*n+1)`
-/

namespace A230540.P10425149945975476291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027261 (2 * n) - A064017 (2 * n + 1)

end

end A230540.P10425149945975476291

namespace A230540

/-- `A027261(2*n)-A064017(2*n+1)` -/
def P10425149945975476291.Spec : Prop :=
  ∀ n, P10425149945975476291.a n = A230540 n

end A230540

/-! ## A230540.P10580510945795038996

`A027471(2*(n+1))-A081038(2*n)`
-/

namespace A230540.P10580510945795038996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (2 * (n + 1)) - A081038 (2 * n)

end

end A230540.P10580510945795038996

namespace A230540

/-- `A027471(2*(n+1))-A081038(2*n)` -/
def P10580510945795038996.Spec : Prop :=
  ∀ n, P10580510945795038996.a n = A230540 n

end A230540

/-! ## A230540.P12637803421266227797

`A120908(2*n+1)-A036290(2*n)`
-/

namespace A230540.P12637803421266227797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (2 * n + 1) - A036290 (2 * n)

end

end A230540.P12637803421266227797

namespace A230540

/-- `A120908(2*n+1)-A036290(2*n)` -/
def P12637803421266227797.Spec : Prop :=
  ∀ n, P12637803421266227797.a n = A230540 n

end A230540

/-! ## A230540.P11706400029805247340

`A080420(2*n)-A036068(2*n)`
-/

namespace A230540.P11706400029805247340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080420 (2 * n) - A036068 (2 * n)

end

end A230540.P11706400029805247340

namespace A230540

/-- `A080420(2*n)-A036068(2*n)` -/
def P11706400029805247340.Spec : Prop :=
  ∀ n, P11706400029805247340.a n = A230540 n

end A230540

/-!
# A230542: Numbers that cannot be divided by their multiplicative projection (A000026).

The programs for A230542, the canonical program `A230542.P15479602818993290102` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230542 has offset 1).

The definition of A230542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230542.P15479602818993290102

`lt[1, (n+2)%A000026(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230542

/-- `lt[1, (n+2)%A000026(n+1)]+1` -/
def P15479602818993290102.Spec : Prop :=
  ∀ n, (P15479602818993290102.a n : ℤ) = A230542 (n + 1)

theorem P15479602818993290102.correct : P15479602818993290102.Spec := by
  intro n
  simp only [A230542, Nat.add_sub_cancel]

end A230542

/-! ## A230542.P15923224924600157367

`record[gcd(A159836(n+1), A185238(n))]`
-/

namespace A230542.P15923224924600157367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159836 (n + 1)) (A185238 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230542.P15923224924600157367

namespace A230542

/-- `record[gcd(A159836(n+1), A185238(n))]` -/
def P15923224924600157367.Spec : Prop :=
  ∀ n, (P15923224924600157367.a n : ℤ) = A230542 (n + 1)

end A230542

/-!
# A230545: Solutions of the equation n' = n + phi(n), where n' is the arithmetic derivative of n.

The programs for A230545, there is no canonical definition to state claims against.
-/

/-! ## A230545.P569936988637550709

`eq[A003415(n), A121048(A028310(n))]`
-/

namespace A230545.P569936988637550709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230545.P569936988637550709

/-! ## A230545.P15611471115003212964

`eq[A000010(A028310(n)), A168036(n)]`
-/

namespace A230545.P15611471115003212964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230545.P15611471115003212964

/-! ## A230545.P7555209311104835585

`eq[A000010(A060000(n+1)), A168036(n)]`
-/

namespace A230545.P7555209311104835585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A060000 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230545.P7555209311104835585

/-!
# A230547: a(n) = 3*binomial(3*n+9, n)/(n+3).

The programs for A230547, the canonical program `A230547.P6627728339677918992` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230547 has offset 0).

The definition of A230547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230547.P6627728339677918992

`3*C(3*n+9, n)/(n+3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230547

/-- `3*C(3*n+9, n)/(n+3)` -/
def P6627728339677918992.Spec : Prop :=
  ∀ n, P6627728339677918992.a n = (A230547 n : ℚ)

end A230547

/-! ## A230547.P8466978884556314342

`A064282(∑[n+3])`
-/

namespace A230547.P8466978884556314342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064282 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230547.P8466978884556314342

namespace A230547

/-- `A064282(∑[n+3])` -/
def P8466978884556314342.Spec : Prop :=
  ∀ n, P8466978884556314342.a n = A230547 n

end A230547

/-! ## A230547.P9380830151975288900

`A127898(∑[n+2]+3)`
-/

namespace A230547.P9380830151975288900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A230547.P9380830151975288900

namespace A230547

/-- `A127898(∑[n+2]+3)` -/
def P9380830151975288900.Spec : Prop :=
  ∀ n, P9380830151975288900.a n = A230547 n

end A230547

/-! ## A230547.P5968579414106315795

`A006631(n+1)-(A233657(n)+A006630(n+1))`
-/

namespace A230547.P5968579414106315795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006631 (n + 1) - (A233657 n + A006630 (n + 1))

end

end A230547.P5968579414106315795

namespace A230547

/-- `A006631(n+1)-(A233657(n)+A006630(n+1))` -/
def P5968579414106315795.Spec : Prop :=
  ∀ n, P5968579414106315795.a n = A230547 n

end A230547

/-! ## A230547.P3099821869513345214

`3/(n+3)*A004321(n+3)`
-/

namespace A230547.P3099821869513345214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 3 : ℚ) * (A004321 (n + 3) : ℚ)

end

end A230547.P3099821869513345214

namespace A230547

/-- `3/(n+3)*A004321(n+3)` -/
def P3099821869513345214.Spec : Prop :=
  ∀ n, P3099821869513345214.a n = (A230547 n : ℚ)

end A230547

/-! ## A230547.P17714079846149635386

`A299427(∑[n+3]-1)`
-/

namespace A230547.P17714079846149635386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299427 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A230547.P17714079846149635386

namespace A230547

/-- `A299427(∑[n+3]-1)` -/
def P17714079846149635386.Spec : Prop :=
  ∀ n, P17714079846149635386.a n = A230547 n

end A230547

/-!
# A230548: Twin hearts patterns packing into n X n coins.

The programs for A230548, the canonical program `A230548.P5656994079022896520` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230548 has offset 2).

The definition of A230548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230548.P5656994079022896520

`A010762(n+2)+Δ[A004523(A004526(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A230548

/-- `A010762(n+2)+Δ[A004523(A004526(n))]` -/
def P5656994079022896520.Spec : Prop :=
  ∀ n, P5656994079022896520.a n = A230548 (n + 2)

theorem P5656994079022896520.correct : P5656994079022896520.Spec := by
  intro n
  simp only [A230548, Nat.add_sub_cancel]

end A230548

/-! ## A230548.P14260156594820916118

`record[and(1, n)+A008615(n)*A008624(n)]`
-/

namespace A230548.P14260156594820916118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + A008615 n * A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230548.P14260156594820916118

namespace A230548

/-- `record[and(1, n)+A008615(n)*A008624(n)]` -/
def P14260156594820916118.Spec : Prop :=
  ∀ n, P14260156594820916118.a n = A230548 (n + 2)

end A230548

/-! ## A230548.P629166142616017443

`record[A000035(n)+A008615(n)*A008624(n)]`
-/

namespace A230548.P629166142616017443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A008615 n * A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230548.P629166142616017443

namespace A230548

/-- `record[A000035(n)+A008615(n)*A008624(n)]` -/
def P629166142616017443.Spec : Prop :=
  ∀ n, P629166142616017443.a n = A230548 (n + 2)

end A230548

/-! ## A230548.P6141290233581405751

`record[A059841(n+1)+A008615(n)*A008624(n)]`
-/

namespace A230548.P6141290233581405751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A008615 n * A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230548.P6141290233581405751

namespace A230548

/-- `record[A059841(n+1)+A008615(n)*A008624(n)]` -/
def P6141290233581405751.Spec : Prop :=
  ∀ n, P6141290233581405751.a n = A230548 (n + 2)

end A230548

/-!
# A230549: Coins left after packing twin hearts patterns into n X n coins.

The programs for A230549, the canonical program `A230549.P11351822998614377782` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230549 has offset 2).

The definition of A230549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230548, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230549.P11351822998614377782

`(n+2)²-4*A230548(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230549

/-- `(n+2)²-4*A230548(n+2)` -/
def P11351822998614377782.Spec : Prop :=
  ∀ n, P11351822998614377782.a n = A230549 (n + 2)

theorem P11351822998614377782.correct : P11351822998614377782.Spec := by
  intro n
  simp only [A230549, Nat.add_sub_cancel]

end A230549

/-! ## A230549.P16464128658147844203

`A103517(A230550(n+2))-n²`
-/

namespace A230549.P16464128658147844203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A230550 (n + 2)).toNat - (n ^ 2 : ℤ)

end

end A230549.P16464128658147844203

namespace A230549

/-- `A103517(A230550(n+2))-n²` -/
def P16464128658147844203.Spec : Prop :=
  ∀ n, P16464128658147844203.a n = A230549 (n + 2)

end A230549

/-! ## A230549.P10024867063019854695

`abs(A103517(A230550(n+2))-A000290(n))`
-/

namespace A230549.P10024867063019854695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103517 (A230550 (n + 2)).toNat - A000290 n|

end

end A230549.P10024867063019854695

namespace A230549

/-- `abs(A103517(A230550(n+2))-A000290(n))` -/
def P10024867063019854695.Spec : Prop :=
  ∀ n, P10024867063019854695.a n = A230549 (n + 2)

end A230549

/-!
# A230550: Voids left after packing twin hearts patterns into n X n coins.

The programs for A230550, the canonical program `A230550.P9251230265839186452` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230550 has offset 2).

The definition of A230550 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230548, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230550.P9251230265839186452

`(n+1)²-2*A230548(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230550

/-- `(n+1)²-2*A230548(n+2)` -/
def P9251230265839186452.Spec : Prop :=
  ∀ n, P9251230265839186452.a n = A230550 (n + 2)

theorem P9251230265839186452.correct : P9251230265839186452.Spec := by
  intro n
  simp only [A230550, Nat.add_sub_cancel]

end A230550

/-! ## A230550.P4533459051575862855

`(n+1)²-A005843(A230548(n+2))`
-/

namespace A230550.P4533459051575862855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A005843 (A230548 (n + 2)).toNat

end

end A230550.P4533459051575862855

namespace A230550

/-- `(n+1)²-A005843(A230548(n+2))` -/
def P4533459051575862855.Spec : Prop :=
  ∀ n, P4533459051575862855.a n = A230550 (n + 2)

end A230550

/-!
# A230551: Number of involutions avoiding the pattern 2431.

The programs for A230551, there is no canonical definition to state claims against.
-/

/-! ## A230551.P2010390805601416218

`A246566(A087019(n+1))-A102681(3*n+1)`
-/

namespace A230551.P2010390805601416218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246566 (A087019 (n + 1)).toNat - A102681 (3 * n + 1)

end

end A230551.P2010390805601416218

/-! ## A230551.P1983692219814085178

`A246566(n+1)-A102681(A075876(n+1))`
-/

namespace A230551.P1983692219814085178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246566 (n + 1) - A102681 (A075876 (n + 1)).toNat

end

end A230551.P1983692219814085178

/-! ## A230551.P4538681323947940916

`A187188(A106182(3*n)+A002476(n+1))`
-/

namespace A230551.P4538681323947940916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A106182 (3 * n) + A002476 (n + 1)).toNat

end

end A230551.P4538681323947940916

/-!
# A230552: Number of involutions avoiding the pattern 2341.

The programs for A230552, there is no canonical definition to state claims against.
-/

/-! ## A230552.P5278094920873223086

`A156562(A209717(n+1))`
-/

namespace A230552.P5278094920873223086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A209717 (n + 1)).toNat

end

end A230552.P5278094920873223086

/-! ## A230552.P13560261872057155370

`A064831(n)+A035154(A000142(n))`
-/

namespace A230552.P13560261872057155370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n + A035154 (A000142 n).toNat

end

end A230552.P13560261872057155370

/-! ## A230552.P761222953621850

`A054846(A072264(n)+A030101(n))`
-/

namespace A230552.P761222953621850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A072264 n + A030101 n).toNat

end

end A230552.P761222953621850

/-!
# A230553: Number of involutions avoiding the pattern 1342.

The programs for A230553, there is no canonical definition to state claims against.
-/

/-! ## A230553.P3869736217279123767

`A243284(A279560(n)+A279553(n))`
-/

namespace A230553.P3869736217279123767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A279560 n + A279553 n).toNat

end

end A230553.P3869736217279123767

/-! ## A230553.P13201949441612581967

`A003602(8*A026597(n))`
-/

namespace A230553.P13201949441612581967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (8 * A026597 n).toNat

end

end A230553.P13201949441612581967

/-! ## A230553.P12044258169447420583

`A231013(char[A120865(n+1)]+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A230553.P12044258169447420583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120865 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A231013 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + a (n - 1)).toNat

end

end A230553.P12044258169447420583

/-! ## A230553.P18083471011592110293

`A121856(A225688(n))-A000041(n)`
-/

namespace A230553.P18083471011592110293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (A225688 n).toNat - A000041 n

end

end A230553.P18083471011592110293

/-!
# A230554: Number of involutions avoiding the pattern 1324.

The programs for A230554, there is no canonical definition to state claims against.
-/

/-! ## A230554.P17595468088902826375

`A001006(n)-A046155(A324088(n+1))`
-/

namespace A230554.P17595468088902826375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A046155 (A324088 (n + 1)).toNat

end

end A230554.P17595468088902826375

/-! ## A230554.P10443248536837940700

`A026806(or(A018026(n), A137451(n+1)))`
-/

namespace A230554.P10443248536837940700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (Int.lor (A018026 n) (A137451 (n + 1))).toNat

end

end A230554.P10443248536837940700

/-! ## A230554.P16317235400322477241

`A086246(n+2)-A046155(A324088(n+1))`
-/

namespace A230554.P16317235400322477241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A046155 (A324088 (n + 1)).toNat

end

end A230554.P16317235400322477241

/-! ## A230554.P16969735824015045709

`A001006(n)-A198318(A112199(2*n+1))`
-/

namespace A230554.P16969735824015045709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A198318 (A112199 (2 * n + 1)).toNat

end

end A230554.P16969735824015045709

/-! ## A230554.P1519821592485229469

`abs(A166587(n+1))-A046155(A324088(n+1))`
-/

namespace A230554.P1519821592485229469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)| - A046155 (A324088 (n + 1)).toNat

end

end A230554.P1519821592485229469

/-!
# A230555: Number of involutions avoiding 3421.

The programs for A230555, there is no canonical definition to state claims against.
-/

/-! ## A230555.P6699308571079970874

`A243284(A149257(n))`
-/

namespace A230555.P6699308571079970874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A149257 n).toNat

end

end A230555.P6699308571079970874

/-! ## A230555.P10723831067181053472

`A033183(9*A000634(n+2))`
-/

namespace A230555.P10723831067181053472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (9 * A000634 (n + 2)).toNat

end

end A230555.P10723831067181053472

/-! ## A230555.P4254229388864495094

`A033182(or(2, A133586(2*(n+2))))`
-/

namespace A230555.P4254229388864495094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (Int.lor 2 (A133586 (2 * (n + 2)))).toNat

end

end A230555.P4254229388864495094

/-! ## A230555.P16698414342662116310

`A334267(A005578(n))+A064189(n)`
-/

namespace A230555.P16698414342662116310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (A005578 n).toNat + A064189 n

end

end A230555.P16698414342662116310

/-!
# A230556: Number of involutions avoiding the pattern 4231.

The programs for A230556, there is no canonical definition to state claims against.
-/

/-! ## A230556.P3753404751139904210

`A243284(A148171(n+1))`
-/

namespace A230556.P3753404751139904210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A148171 (n + 1)).toNat

end

end A230556.P3753404751139904210

/-! ## A230556.P12446955457472502826

`A008617(11*A235496(n))`
-/

namespace A230556.P12446955457472502826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (11 * A235496 n).toNat

end

end A230556.P12446955457472502826

/-! ## A230556.P6896618093809477241

`Δ[A122526(record[A346872(n+1)])]`
-/

namespace A230556.P6896618093809477241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346872 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122526 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230556.P6896618093809477241

/-! ## A230556.P17589560382761423214

`∑[A194698(A000081(n+4))]+1`
-/

namespace A230556.P17589560382761423214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A000081 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230556.P17589560382761423214

/-! ## A230556.P2651364093760487915

`A025458(A033321(n))+A001006(n)`
-/

namespace A230556.P2651364093760487915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (A033321 n).toNat + A001006 n

end

end A230556.P2651364093760487915

/-!
# A230558: Integer areas of extouch triangles of integer-sided triangles.

The programs for A230558, there is no canonical definition to state claims against.
-/

/-! ## A230558.P14919521983252797745

`A248614(A050579(n+2))`
-/

namespace A230558.P14919521983252797745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (A050579 (n + 2)).toNat

end

end A230558.P14919521983252797745

/-!
# A230559: Pseudoprimes n to base 2 such that n-2, n+2 and n+4 are primes.

The programs for A230559, there is no canonical definition to state claims against.
-/

/-! ## A230559.P2973032628791029695

`∩[A230489(n+1), A230715(n+1)+2]`
-/

namespace A230559.P2973032628791029695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230715 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230559.P2973032628791029695

/-! ## A230559.P14032225474162058554

`∩[A057942(n+1), A230489(n+1)]`
-/

namespace A230559.P14032225474162058554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230559.P14032225474162058554

/-! ## A230559.P6715142076720769296

`∩[A057942(n+1), A230808(n+1)]`
-/

namespace A230559.P6715142076720769296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230559.P6715142076720769296

/-!
# A230566: Number of n X n 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230566, there is no canonical definition to state claims against.
-/

/-! ## A230566.P5027653778612810625

`A230571(∑[4*n]+1)`
-/

namespace A230566.P5027653778612810625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230566.P5027653778612810625

/-! ## A230566.P17273598863217969131

`lcm(2, A230571(A001844(n)))`
-/

namespace A230566.P17273598863217969131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230571 (A001844 n).toNat)

end

end A230566.P17273598863217969131

/-! ## A230566.P4508957991940756133

`∑{d}[A001844(n), A230571(#)]`
-/

namespace A230566.P4508957991940756133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230571 d

end

end A230566.P4508957991940756133

/-! ## A230566.P2207386681000419879

`∑{d}[A266723(2*n), A230571(#)]`
-/

namespace A230566.P2207386681000419879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230571 d

end

end A230566.P2207386681000419879

/-!
# A230567: Number of n X 4 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230567, there is no canonical definition to state claims against.
-/

/-! ## A230567.P12159172146198485019

`A230571(A141214(n+1))`
-/

namespace A230567.P12159172146198485019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A141214 (n + 1)).toNat

end

end A230567.P12159172146198485019

/-! ## A230567.P13295620380501670371

`A230571(A055998(n+2))`
-/

namespace A230567.P13295620380501670371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A055998 (n + 2)).toNat

end

end A230567.P13295620380501670371

/-! ## A230567.P14425239062973878028

`A230571(A056000(n)+7)`
-/

namespace A230567.P14425239062973878028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A056000 n + 7).toNat

end

end A230567.P14425239062973878028

/-! ## A230567.P14094663800815447702

`A230571(A052905(n+1)+2)`
-/

namespace A230567.P14094663800815447702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A052905 (n + 1) + 2).toNat

end

end A230567.P14094663800815447702

/-! ## A230567.P493780001636249038

`A230571(A051936(n+4)+6)`
-/

namespace A230567.P493780001636249038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A051936 (n + 4) + 6).toNat

end

end A230567.P493780001636249038

/-!
# A230568: Number of nX5 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230568, there is no canonical definition to state claims against.
-/

/-! ## A230568.P5203624527370419242

`A230571(Δ[A264443(n)])`
-/

namespace A230568.P5203624527370419242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (f1 (n + 1) - f1 n).toNat

end

end A230568.P5203624527370419242

/-! ## A230568.P17711589745421345182

`A230571(A056115(n)+11)`
-/

namespace A230568.P17711589745421345182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A056115 n + 11).toNat

end

end A230568.P17711589745421345182

/-! ## A230568.P5787818392600892105

`A230571(eq[4, A193592(n)])`
-/

namespace A230568.P5787818392600892105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230568.P5787818392600892105

/-! ## A230568.P5311660522601554769

`A230571(Δ[A023545(n+1)])`
-/

namespace A230568.P5311660522601554769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (f1 (n + 1) - f1 n).toNat

end

end A230568.P5311660522601554769

/-! ## A230568.P12604788656092746372

`A230571(A052905(n+2)+1)`
-/

namespace A230568.P12604788656092746372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A052905 (n + 2) + 1).toNat

end

end A230568.P12604788656092746372

/-!
# A230569: Number of nX6 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230569, there is no canonical definition to state claims against.
-/

/-! ## A230569.P7347464884352212517

`A230571(eq[3, A219347(n)])`
-/

namespace A230569.P7347464884352212517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230569.P7347464884352212517

/-! ## A230569.P3654435901838918578

`A230571(A046691(n+4)-1)`
-/

namespace A230569.P3654435901838918578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A046691 (n + 4) - 1).toNat

end

end A230569.P3654435901838918578

/-! ## A230569.P15064036986812704244

`A230571(eq[6, A200370(n+1)])`
-/

namespace A230569.P15064036986812704244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230569.P15064036986812704244

/-! ## A230569.P6342487705170275620

`A230571(eq[8, A185782(n+1)])`
-/

namespace A230569.P6342487705170275620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230569.P6342487705170275620

/-! ## A230569.P16125544864345124862

`A230571(Δ[Δ[A006504(n+1)]])`
-/

namespace A230569.P16125544864345124862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (f1 (n + 1) - f1 n).toNat

end

end A230569.P16125544864345124862

/-!
# A230570: Number of nX7 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230570, there is no canonical definition to state claims against.
-/

/-! ## A230570.P7708115486615756500

`A230571(eq[4, A219347(n)])`
-/

namespace A230570.P7708115486615756500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230570.P7708115486615756500

/-! ## A230570.P11745996824991592886

`A230571(eq[6, A193592(n)])`
-/

namespace A230570.P11745996824991592886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230570.P11745996824991592886

/-! ## A230570.P2321175456311873995

`A230571(A056115(n+2)+9)`
-/

namespace A230570.P2321175456311873995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A056115 (n + 2) + 9).toNat

end

end A230570.P2321175456311873995

/-! ## A230570.P11799332440380556660

`A230571(eq[7, A200370(n+1)])`
-/

namespace A230570.P11799332440380556660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230570.P11799332440380556660

/-! ## A230570.P8531114298620652859

`A230571(eq[10, A185782(n+1)])`
-/

namespace A230570.P8531114298620652859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230570.P8531114298620652859

/-!
# A230571: T(n,k)=Number of nXk 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230571, there is no canonical definition to state claims against.
-/

/-! ## A230571.P181135100224251897

`∑{d}[n, A352661(A228074(#))]`
-/

namespace A230571.P181135100224251897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A352661 (A228074 d).toNat

end

end A230571.P181135100224251897

/-! ## A230571.P18198464649364853170

`A352661(A321936(n)+A228074(n))`
-/

namespace A230571.P18198464649364853170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352661 (A321936 n + A228074 n).toNat

end

end A230571.P18198464649364853170

/-! ## A230571.P11522346637518987301

`A034852(A185813(n)^A180662(n))`
-/

namespace A230571.P11522346637518987301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (SequenceMachineLib.roundAway ((A185813 n : ℚ) ^ (A180662 n : ℤ))).toNat

end

end A230571.P11522346637518987301

/-! ## A230571.P3886094731697183057

`A352661(gcd(A000984(n), A228074(n)))`
-/

namespace A230571.P3886094731697183057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352661 (Int.gcd (A000984 n) (A228074 n))

end

end A230571.P3886094731697183057

/-! ## A230571.P16956695479169746702

`A352661(A228074(or(n, A077267(n))))`
-/

namespace A230571.P16956695479169746702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352661 (A228074 (Int.lor (n : ℤ) (A077267 n)).toNat).toNat

end

end A230571.P16956695479169746702

/-!
# A230572: Number of 3Xn 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230572, there is no canonical definition to state claims against.
-/

/-! ## A230572.P9355489775752890381

`A230571(∑[n+2]+4)`
-/

namespace A230572.P9355489775752890381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230572.P9355489775752890381

/-! ## A230572.P13475895088415729659

`lcm(2, A230571(A167614(n+1)))`
-/

namespace A230572.P13475895088415729659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230571 (A167614 (n + 1)).toNat)

end

end A230572.P13475895088415729659

/-! ## A230572.P3508786939357509313

`A230571(A167614(n+1))+A025443(n)`
-/

namespace A230572.P3508786939357509313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A167614 (n + 1)).toNat + A025443 n

end

end A230572.P3508786939357509313

/-! ## A230572.P6718378334904354795

`A015720(n)*A230571(A167614(n+1))`
-/

namespace A230572.P6718378334904354795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015720 n * A230571 (A167614 (n + 1)).toNat

end

end A230572.P6718378334904354795

/-! ## A230572.P10687405562260333065

`A054977(n)*A230571(A167614(n+1))`
-/

namespace A230572.P10687405562260333065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A230571 (A167614 (n + 1)).toNat

end

end A230572.P10687405562260333065

/-!
# A230573: Number of 4 X n 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230573, there is no canonical definition to state claims against.
-/

/-! ## A230573.P10770198104336429377

`A230571(A141214(n)+7)`
-/

namespace A230573.P10770198104336429377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A141214 n + 7).toNat

end

end A230573.P10770198104336429377

/-! ## A230573.P1364295537496145660

`A230571(A052905(n)+9)`
-/

namespace A230573.P1364295537496145660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A052905 n + 9).toNat

end

end A230573.P1364295537496145660

/-! ## A230573.P12466888765401667602

`A230571(A055999(n)+10)`
-/

namespace A230573.P12466888765401667602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A055999 n + 10).toNat

end

end A230573.P12466888765401667602

/-! ## A230573.P5284368058647764118

`A230571(A167614(n+2)+1)`
-/

namespace A230573.P5284368058647764118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A167614 (n + 2) + 1).toNat

end

end A230573.P5284368058647764118

/-! ## A230573.P12537139148383642663

`A230571(A167499(n+2)-1)`
-/

namespace A230573.P12537139148383642663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A167499 (n + 2) - 1).toNat

end

end A230573.P12537139148383642663

/-!
# A230574: Number of 5Xn 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230574, there is no canonical definition to state claims against.
-/

/-! ## A230574.P13901828322129356348

`A230571(A155212(n)+13)`
-/

namespace A230574.P13901828322129356348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A155212 n + 13).toNat

end

end A230574.P13901828322129356348

/-! ## A230574.P16718948097519846895

`A230571(A056000(n)+15)`
-/

namespace A230574.P16718948097519846895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A056000 n + 15).toNat

end

end A230574.P16718948097519846895

/-! ## A230574.P7866898587574844219

`A230571(eq[7, A066657(n)])`
-/

namespace A230574.P7866898587574844219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230574.P7866898587574844219

/-! ## A230574.P14970659725367036182

`A230571(A055998(n+2)+8)`
-/

namespace A230574.P14970659725367036182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A055998 (n + 2) + 8).toNat

end

end A230574.P14970659725367036182

/-! ## A230574.P6644250698696601712

`A230571(eq[6, A131818(n+1)])`
-/

namespace A230574.P6644250698696601712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230574.P6644250698696601712

/-!
# A230575: Number of 6Xn 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230575, there is no canonical definition to state claims against.
-/

/-! ## A230575.P11460482902263919156

`A230571(A056115(n)+21)`
-/

namespace A230575.P11460482902263919156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A056115 n + 21).toNat

end

end A230575.P11460482902263919156

/-! ## A230575.P14456878482861068025

`A230571(A056000(n+1)+16)`
-/

namespace A230575.P14456878482861068025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A056000 (n + 1) + 16).toNat

end

end A230575.P14456878482861068025

/-! ## A230575.P247359759427188602

`A230571(eq[6, A130270(n+1)])`
-/

namespace A230575.P247359759427188602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230575.P247359759427188602

/-! ## A230575.P10135925586616038637

`A230571(eq[7, A131818(n+1)])`
-/

namespace A230575.P10135925586616038637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230575.P10135925586616038637

/-! ## A230575.P9235457623077668088

`A230571(A000124(n+6)-(n+1))`
-/

namespace A230575.P9235457623077668088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A230575.P9235457623077668088

/-!
# A230576: Number of 7 X n 0..4 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230576, there is no canonical definition to state claims against.
-/

/-! ## A230576.P13500732263961866853

`A230571(eq[11, A066657(n)])`
-/

namespace A230576.P13500732263961866853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230576.P13500732263961866853

/-! ## A230576.P9502388963402651694

`A230571(A167499(n+5)+2)`
-/

namespace A230576.P9502388963402651694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A167499 (n + 5) + 2).toNat

end

end A230576.P9502388963402651694

/-! ## A230576.P3959093025512071281

`A230571(A167614(n+5)+4)`
-/

namespace A230576.P3959093025512071281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A167614 (n + 5) + 4).toNat

end

end A230576.P3959093025512071281

/-! ## A230576.P8188089787220050776

`A230571(A055998(n+4)+10)`
-/

namespace A230576.P8188089787220050776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A055998 (n + 4) + 10).toNat

end

end A230576.P8188089787220050776

/-! ## A230576.P14547612237492718595

`A230571(eq[8, A131818(n+1)])`
-/

namespace A230576.P14547612237492718595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230576.P14547612237492718595

/-!
# A230577: Positive integers that have exactly 6 odd divisors.

The programs for A230577, the canonical program `A230577.P4839669968900257948` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230577 has offset 1).

The definition of A230577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 811 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230577.P4839669968900257948

`eq[5, A069283(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A230577

/-- `eq[5, A069283(n)]` -/
def P4839669968900257948.Spec : Prop :=
  ∀ n, (P4839669968900257948.a n : ℤ) = A230577 (n + 1)

theorem P4839669968900257948.correct : P4839669968900257948.Spec := by
  intro n
  simp only [A230577, Nat.add_sub_cancel]

end A230577

/-! ## A230577.P11895329832105334290

`1+eq[6, A001227(n+1)]`
-/

namespace A230577.P11895329832105334290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230577.P11895329832105334290

namespace A230577

/-- `1+eq[6, A001227(n+1)]` -/
def P11895329832105334290.Spec : Prop :=
  ∀ n, (P11895329832105334290.a n : ℤ) = A230577 (n + 1)

end A230577

/-! ## A230577.P6711061749359601782

`eq[6, A001227(A028310(n))]`
-/

namespace A230577.P6711061749359601782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230577.P6711061749359601782

namespace A230577

/-- `eq[6, A001227(A028310(n))]` -/
def P6711061749359601782.Spec : Prop :=
  ∀ n, (P6711061749359601782.a n : ℤ) = A230577 (n + 1)

end A230577

/-! ## A230577.P4889024937580460791

`eq[6, A320003(A008458(n))]`
-/

namespace A230577.P4889024937580460791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230577.P4889024937580460791

namespace A230577

/-- `eq[6, A320003(A008458(n))]` -/
def P4889024937580460791.Spec : Prop :=
  ∀ n, (P4889024937580460791.a n : ℤ) = A230577 (n + 1)

end A230577

/-! ## A230577.P9926304081842504672

`A153152(eq[6, A001227(n+1)])`
-/

namespace A230577.P9926304081842504672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230577.P9926304081842504672

namespace A230577

/-- `A153152(eq[6, A001227(n+1)])` -/
def P9926304081842504672.Spec : Prop :=
  ∀ n, P9926304081842504672.a n = A230577 (n + 1)

end A230577

/-! ## A230577.P5395858148683549832

`A181569(eq[6, A001227(n+1)])`
-/

namespace A230577.P5395858148683549832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230577.P5395858148683549832

namespace A230577

/-- `A181569(eq[6, A001227(n+1)])` -/
def P5395858148683549832.Spec : Prop :=
  ∀ n, P5395858148683549832.a n = A230577 (n + 1)

end A230577

/-! ## A230577.P8525367872044308838

`eq[A091954(n+1)-4, A000034(n)]+1`
-/

namespace A230577.P8525367872044308838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230577.P8525367872044308838

namespace A230577

/-- `eq[A091954(n+1)-4, A000034(n)]+1` -/
def P8525367872044308838.Spec : Prop :=
  ∀ n, (P8525367872044308838.a n : ℤ) = A230577 (n + 1)

end A230577

/-! ## A230577.P17857512138574830596

`eq[5, A111775(A004277(n))]`
-/

namespace A230577.P17857512138574830596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230577.P17857512138574830596

namespace A230577

/-- `eq[5, A111775(A004277(n))]` -/
def P17857512138574830596.Spec : Prop :=
  ∀ n, (P17857512138574830596.a n : ℤ) = A230577 (n + 1)

end A230577

/-! ## A230577.P2766703311348504032

`A026741(eq[A027379((-1)^n+3)-1, A318874(n+1)]+1)`
-/

namespace A230577.P2766703311348504032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 ((-1) ^ n + 3).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A230577.P2766703311348504032

namespace A230577

/-- `A026741(eq[A027379((-1)^n+3)-1, A318874(n+1)]+1)` -/
def P2766703311348504032.Spec : Prop :=
  ∀ n, P2766703311348504032.a n = A230577 (n + 1)

end A230577

/-! ## A230577.P9046900857232688085

`eq[6, A001227(A008574(n))]`
-/

namespace A230577.P9046900857232688085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230577.P9046900857232688085

namespace A230577

/-- `eq[6, A001227(A008574(n))]` -/
def P9046900857232688085.Spec : Prop :=
  ∀ n, (P9046900857232688085.a n : ℤ) = A230577 (n + 1)

end A230577

/-!
# A230578: Smallest number larger than 1 such that multiplying n-th highly composite number by a(n) will give a highly composite number.

The programs for A230578, there is no canonical definition to state claims against.
-/

/-! ## A230578.P12157643469964431508

`p?[gcd(A291046(n+1), A291085(2*(n+1)))]`
-/

namespace A230578.P12157643469964431508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A291046 (n + 1)) (A291085 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230578.P12157643469964431508

/-! ## A230578.P7035785026454747606

`p?[A081373(A108104(A286468(n+1)))]`
-/

namespace A230578.P7035785026454747606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A108104 (A286468 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230578.P7035785026454747606

/-! ## A230578.P4765030525074068408

`p?[A257669(A257689(n+1)+A257671(n+1))]`
-/

namespace A230578.P4765030525074068408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (A257689 (n + 1) + A257671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230578.P4765030525074068408

/-!
# A230579: a(n) = 2^n mod 341.

The programs for A230579, there is no canonical definition to state claims against.
-/

/-! ## A230579.P16390282997476975236

`A000079(n)%A090086(A020639(2*(n+1)))`
-/

namespace A230579.P16390282997476975236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A090086 (A020639 (2 * (n + 1))).toNat)

end

end A230579.P16390282997476975236

/-!
# A230580: a(n) = round( (e/2)^n ).

The programs for A230580, there is no canonical definition to state claims against.
-/

/-! ## A230580.P15182109878918349881

`Δ[A257639(A116714(n+1))]`
-/

namespace A230580.P15182109878918349881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A116714 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230580.P15182109878918349881

/-! ## A230580.P8598967385849334480

`A320278(A064492(n+1)+n)`
-/

namespace A230580.P8598967385849334480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A064492 (n + 1) + (n : ℤ)).toNat

end

end A230580.P8598967385849334480

/-! ## A230580.P6484893834962479477

`floor(A137734(∑[A036378(n)])/2)`
-/

namespace A230580.P6484893834962479477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137734 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋

end

end A230580.P6484893834962479477

/-! ## A230580.P14140873044411209411

`Δ[A257639(∑[A100683(n+1)])]`
-/

namespace A230580.P14140873044411209411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230580.P14140873044411209411

/-! ## A230580.P15525180997732060874

`round(A026378(n+1)/A220167(n+1))`
-/

namespace A230580.P15525180997732060874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A026378 (n + 1) : ℚ) / (A220167 (n + 1) : ℚ))

end

end A230580.P15525180997732060874

/-!
# A230583: a(n) = floor(s(n) - n*(log(n) + 2*Gamma - 1)), where s(n) = sum_{k=1..n} tau(k), where tau(k) is the number of divisors of k.

The programs for A230583, there is no canonical definition to state claims against.
-/

/-! ## A230583.P17550104995074599270

`A073093(n+1)-A016016(A115991(n))`
-/

namespace A230583.P17550104995074599270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A016016 (A115991 n).toNat

end

end A230583.P17550104995074599270

/-! ## A230583.P8089430805933905409

`A001222(n+1)-A287790(A136737(n))`
-/

namespace A230583.P8089430805933905409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A287790 (A136737 n).toNat

end

end A230583.P8089430805933905409

/-! ## A230583.P7217682979558002676

`A001222(n+1)+1-A016016(A115991(n))`
-/

namespace A230583.P7217682979558002676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (1 - A016016 (A115991 n).toNat)

end

end A230583.P7217682979558002676

/-! ## A230583.P3832146734281544635

`A001222(n+1)-A074290(A374761(n))`
-/

namespace A230583.P3832146734281544635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A074290 (A374761 n).toNat

end

end A230583.P3832146734281544635

/-! ## A230583.P15758874538750238608

`A102669(A195264(n+1)%A046258(n+1))`
-/

namespace A230583.P15758874538750238608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (Int.tmod (A195264 (n + 1)) (A046258 (n + 1))).toNat

end

end A230583.P15758874538750238608

/-!
# A230584: Either two less than a square or two more than a square.

The programs for A230584, the canonical program `A230584.P1388991491743192012` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230584 has offset 1).

The definition of A230584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230584.P1388991491743192012

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=7, a(4)=11, a(5)=14, a(6)=18`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230584

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1388991491743192012.Spec : Prop :=
  ∀ n, P1388991491743192012.a n = A230584 (n + 1)

theorem P1388991491743192012.correct : P1388991491743192012.Spec := by
  intro n
  simp only [A230584, Nat.add_sub_cancel]

end A230584

/-! ## A230584.P17002189417056405850

`record[ceil(n²/2)-a(n-1)]` with `a(0)=2`
-/

namespace A230584.P17002189417056405850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230584.P17002189417056405850

namespace A230584

/-- `record[ceil(n²/2)-a(n-1)]` -/
def P17002189417056405850.Spec : Prop :=
  ∀ n, P17002189417056405850.a n = A230584 (n + 1)

end A230584

/-! ## A230584.P2055747186761836020

`or(2, A118000(n+1)-a(n-1))` with `a(0)=2`
-/

namespace A230584.P2055747186761836020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor 2 (A118000 (n + 1) - a (n - 1))

end

end A230584.P2055747186761836020

namespace A230584

/-- `or(2, A118000(n+1)-a(n-1))` -/
def P2055747186761836020.Spec : Prop :=
  ∀ n, P2055747186761836020.a n = A230584 (n + 1)

end A230584

/-! ## A230584.P2905980054329906484

`record[A099392(n+2)-(a(n-1)+n+1)]` with `a(0)=2`
-/

namespace A230584.P2905980054329906484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A099392 (n + 2) - (f1 (n - 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230584.P2905980054329906484

namespace A230584

/-- `record[A099392(n+2)-(a(n-1)+n+1)]` -/
def P2905980054329906484.Spec : Prop :=
  ∀ n, P2905980054329906484.a n = A230584 (n + 1)

end A230584

/-! ## A230584.P7093660814518644445

`A363268(n+1)+A266662(n)`
-/

namespace A230584.P7093660814518644445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363268 (n + 1) + A266662 n

end

end A230584.P7093660814518644445

namespace A230584

/-- `A363268(n+1)+A266662(n)` -/
def P7093660814518644445.Spec : Prop :=
  ∀ n, P7093660814518644445.a n = A230584 (n + 1)

end A230584

/-! ## A230584.P15899574933849279215

`∪[A028872(n+2), A002522(n)]+1`
-/

namespace A230584.P15899574933849279215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A230584.P15899574933849279215

namespace A230584

/-- `∪[A028872(n+2), A002522(n)]+1` -/
def P15899574933849279215.Spec : Prop :=
  ∀ n, (P15899574933849279215.a n : ℤ) = A230584 (n + 1)

end A230584

/-! ## A230584.P16063339264928570395

`record[A007590(n+1)-(a(n-1)+n)]` with `a(0)=2`
-/

namespace A230584.P16063339264928570395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A007590 (n + 1) - (f1 (n - 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230584.P16063339264928570395

namespace A230584

/-- `record[A007590(n+1)-(a(n-1)+n)]` -/
def P16063339264928570395.Spec : Prop :=
  ∀ n, P16063339264928570395.a n = A230584 (n + 1)

end A230584

/-! ## A230584.P4851624492667066139

`eq[1, A088226(n+1)]`
-/

namespace A230584.P4851624492667066139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230584.P4851624492667066139

namespace A230584

/-- `eq[1, A088226(n+1)]` -/
def P4851624492667066139.Spec : Prop :=
  ∀ n, (P4851624492667066139.a n : ℤ) = A230584 (n + 1)

end A230584

/-! ## A230584.P3354180777394325977

`eq[A265186(n), A333275(n+1)]`
-/

namespace A230584.P3354180777394325977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230584.P3354180777394325977

namespace A230584

/-- `eq[A265186(n), A333275(n+1)]` -/
def P3354180777394325977.Spec : Prop :=
  ∀ n, (P3354180777394325977.a n : ℤ) = A230584 (n + 1)

end A230584

/-! ## A230584.P2058268471405867910

`eq[A068527(n), A264769(A068527(n))]+2`
-/

namespace A230584.P2058268471405867910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 (A068527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A230584.P2058268471405867910

namespace A230584

/-- `eq[A068527(n), A264769(A068527(n))]+2` -/
def P2058268471405867910.Spec : Prop :=
  ∀ n, (P2058268471405867910.a n : ℤ) = A230584 (n + 1)

end A230584

/-! ## A230584.P244913052116979631

`lt[A006704(n+2), n/A006704(n+2)]`
-/

namespace A230584.P244913052116979631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (n + 2)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A006704 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A230584.P244913052116979631

namespace A230584

/-- `lt[A006704(n+2), n/A006704(n+2)]` -/
def P244913052116979631.Spec : Prop :=
  ∀ n, (P244913052116979631.a n : ℤ) = A230584 (n + 1)

end A230584

/-! ## A230584.P1930278421446346226

`lt[A006704(n+2)², n]`
-/

namespace A230584.P1930278421446346226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230584.P1930278421446346226

namespace A230584

/-- `lt[A006704(n+2)², n]` -/
def P1930278421446346226.Spec : Prop :=
  ∀ n, (P1930278421446346226.a n : ℤ) = A230584 (n + 1)

end A230584

/-!
# A230585: First terms of first rows of zigzag matrices as defined in A088961.

The programs for A230585, the canonical program `A230585.P6348763636375271191` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230585 has offset 1).

The definition of A230585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230585.P16855025389343272384

`record[(4-6/n)*a(n-1)]` with `a(0)=3, a(1)=1`
-/

namespace A230585.P16855025389343272384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230585.P16855025389343272384

namespace A230585

/-- `record[(4-6/n)*a(n-1)]` -/
def P16855025389343272384.Spec : Prop :=
  ∀ n, P16855025389343272384.a n = (A230585 (n + 1) : ℚ)

end A230585

/-! ## A230585.P11545425736857741920

`A289652(n+2)+2`
-/

namespace A230585.P11545425736857741920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289652 (n + 2) + 2

end

end A230585.P11545425736857741920

namespace A230585

/-- `A289652(n+2)+2` -/
def P11545425736857741920.Spec : Prop :=
  ∀ n, P11545425736857741920.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P358572688410237323

`record[abs(A246432(n+1))]`
-/

namespace A230585.P358572688410237323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246432 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230585.P358572688410237323

namespace A230585

/-- `record[abs(A246432(n+1))]` -/
def P358572688410237323.Spec : Prop :=
  ∀ n, P358572688410237323.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P6348763636375271191

`record[abs(A120304(n))+2]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230585

/-- `record[abs(A120304(n))+2]` -/
def P6348763636375271191.Spec : Prop :=
  ∀ n, P6348763636375271191.a n = A230585 (n + 1)

theorem P6348763636375271191.correct : P6348763636375271191.Spec := by
  intro n
  simp only [A230585, Nat.add_sub_cancel]

end A230585

/-! ## A230585.P2372048432403917821

`record[round(A000108(n)+acot(n))]`
-/

namespace A230585.P2372048432403917821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000108 n : ℝ) + SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230585.P2372048432403917821

namespace A230585

/-- `record[round(A000108(n)+acot(n))]` -/
def P2372048432403917821.Spec : Prop :=
  ∀ n, P2372048432403917821.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P10552139810057149

`record[round(A120588(n)+acot(n))]`
-/

namespace A230585.P10552139810057149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A120588 n : ℝ) + SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230585.P10552139810057149

namespace A230585

/-- `record[round(A120588(n)+acot(n))]` -/
def P10552139810057149.Spec : Prop :=
  ∀ n, P10552139810057149.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P4161006047937634065

`A000108(n+2)+floor(acot(n))`
-/

namespace A230585.P4161006047937634065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A230585.P4161006047937634065

namespace A230585

/-- `A000108(n+2)+floor(acot(n))` -/
def P4161006047937634065.Spec : Prop :=
  ∀ n, P4161006047937634065.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P14762321407050536792

`A000108(2%a(n-1)+n)` with `a(0)=3`
-/

namespace A230585.P14762321407050536792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000108 (Int.tmod 2 (a (n - 1)) + (n : ℤ)).toNat

end

end A230585.P14762321407050536792

namespace A230585

/-- `A000108(2%a(n-1)+n)` -/
def P14762321407050536792.Spec : Prop :=
  ∀ n, P14762321407050536792.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P16936482702798167250

`A000108(2*n-(n-2)%a(n-1))` with `a(0)=3`
-/

namespace A230585.P16936482702798167250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000108 ((2 * n : ℤ) - Int.tmod ((n : ℤ) - 2) (a (n - 1))).toNat

end

end A230585.P16936482702798167250

namespace A230585

/-- `A000108(2*n-(n-2)%a(n-1))` -/
def P16936482702798167250.Spec : Prop :=
  ∀ n, P16936482702798167250.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P5112126229305715350

`A026008(A051755(n+2))`
-/

namespace A230585.P5112126229305715350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (A051755 (n + 2)).toNat

end

end A230585.P5112126229305715350

namespace A230585

/-- `A026008(A051755(n+2))` -/
def P5112126229305715350.Spec : Prop :=
  ∀ n, P5112126229305715350.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P5722337231642567840

`A126324(A103517(n)+2)`
-/

namespace A230585.P5722337231642567840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (A103517 n + 2).toNat

end

end A230585.P5722337231642567840

namespace A230585

/-- `A126324(A103517(n)+2)` -/
def P5722337231642567840.Spec : Prop :=
  ∀ n, P5722337231642567840.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P10584771802002898142

`record[A000108(n)+A000038(n)]`
-/

namespace A230585.P10584771802002898142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230585.P10584771802002898142

namespace A230585

/-- `record[A000108(n)+A000038(n)]` -/
def P10584771802002898142.Spec : Prop :=
  ∀ n, P10584771802002898142.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P7632023055497920721

`A026008(A004275(n+1)+2)`
-/

namespace A230585.P7632023055497920721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (A004275 (n + 1) + 2).toNat

end

end A230585.P7632023055497920721

namespace A230585

/-- `A026008(A004275(n+1)+2)` -/
def P7632023055497920721.Spec : Prop :=
  ∀ n, P7632023055497920721.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P10394713698255616712

`A000108(n+2)+A000007(n)`
-/

namespace A230585.P10394713698255616712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) + A000007 n

end

end A230585.P10394713698255616712

namespace A230585

/-- `A000108(n+2)+A000007(n)` -/
def P10394713698255616712.Spec : Prop :=
  ∀ n, P10394713698255616712.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P9703686582348735279

`A054977(n)+A001453(n+2)`
-/

namespace A230585.P9703686582348735279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A001453 (n + 2)

end

end A230585.P9703686582348735279

namespace A230585

/-- `A054977(n)+A001453(n+2)` -/
def P9703686582348735279.Spec : Prop :=
  ∀ n, P9703686582348735279.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P16699732445745260693

`A220902(n+2)+A071724(n)`
-/

namespace A230585.P16699732445745260693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 2) + A071724 n

end

end A230585.P16699732445745260693

namespace A230585

/-- `A220902(n+2)+A071724(n)` -/
def P16699732445745260693.Spec : Prop :=
  ∀ n, P16699732445745260693.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P18075303083264934152

`A141351(n+2)-A057427(n)`
-/

namespace A230585.P18075303083264934152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 (n + 2) - A057427 n

end

end A230585.P18075303083264934152

namespace A230585

/-- `A141351(n+2)-A057427(n)` -/
def P18075303083264934152.Spec : Prop :=
  ∀ n, P18075303083264934152.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P5150286875410234055

`A071718(n)+2*A000108(n)`
-/

namespace A230585.P5150286875410234055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n + 2 * A000108 n

end

end A230585.P5150286875410234055

namespace A230585

/-- `A071718(n)+2*A000108(n)` -/
def P5150286875410234055.Spec : Prop :=
  ∀ n, P5150286875410234055.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P8169881137853340408

`A063524(n+1)+A000108(n+2)`
-/

namespace A230585.P8169881137853340408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A000108 (n + 2)

end

end A230585.P8169881137853340408

namespace A230585

/-- `A063524(n+1)+A000108(n+2)` -/
def P8169881137853340408.Spec : Prop :=
  ∀ n, P8169881137853340408.a n = A230585 (n + 1)

end A230585

/-! ## A230585.P957350900975175340

`A019590(n+2)+A000108(n+2)`
-/

namespace A230585.P957350900975175340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + A000108 (n + 2)

end

end A230585.P957350900975175340

namespace A230585

/-- `A019590(n+2)+A000108(n+2)` -/
def P957350900975175340.Spec : Prop :=
  ∀ n, P957350900975175340.a n = A230585 (n + 1)

end A230585

/-!
# A230586: a(n) = n^5 - 5*n^3 + 5*n.

The programs for A230586, the canonical program `A230586.P15207071587540228582` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230586 has offset 1).

The definition of A230586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^5-5*(n+1)^3+5*(n+1)` (program `A230586.P15207071587540228582`, by `A230586.P15207071587540228582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230586.P15207071587540228582

`(n+1)^5-5*(n+1)^3+5*(n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230586

/-- `(n+1)^5-5*(n+1)^3+5*(n+1)` -/
def P15207071587540228582.Spec : Prop :=
  ∀ n, P15207071587540228582.a n = A230586 (n + 1)

theorem P15207071587540228582.correct : P15207071587540228582.Spec := by
  intro n
  simp only [A230586, Nat.add_sub_cancel]

end A230586

/-! ## A230586.P12057831986769432119

`∑[abs(Δ[A001095(n+2)])]`
-/

namespace A230586.P12057831986769432119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230586.P12057831986769432119

namespace A230586

/-- `∑[abs(Δ[A001095(n+2)])]` -/
def P12057831986769432119.Spec : Prop :=
  ∀ n, P12057831986769432119.a n = A230586 (n + 1)

end A230586

/-! ## A230586.P3414525364186787630

`record[A113679(n)+A001095(n)]`
-/

namespace A230586.P3414525364186787630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n + A001095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230586.P3414525364186787630

namespace A230586

/-- `record[A113679(n)+A001095(n)]` -/
def P3414525364186787630.Spec : Prop :=
  ∀ n, P3414525364186787630.a n = A230586 (n + 1)

end A230586

/-! ## A230586.P9131244372489934032

`∑[Δ[A001095(n+2)]*A033999(2*n)]`
-/

namespace A230586.P9131244372489934032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230586.P9131244372489934032

namespace A230586

/-- `∑[Δ[A001095(n+2)]*A033999(2*n)]` -/
def P9131244372489934032.Spec : Prop :=
  ∀ n, P9131244372489934032.a n = A230586 (n + 1)

end A230586

/-! ## A230586.P4882971189257572988

`record[A052787(n+1)+A028242(A004273(n))]`
-/

namespace A230586.P4882971189257572988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 (n + 1) + A028242 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230586.P4882971189257572988

namespace A230586

/-- `record[A052787(n+1)+A028242(A004273(n))]` -/
def P4882971189257572988.Spec : Prop :=
  ∀ n, P4882971189257572988.a n = A230586 (n + 1)

end A230586

/-! ## A230586.P3216929395105222170

`∑[A195317(A028310(∑[n]))]`
-/

namespace A230586.P3216929395105222170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195317 (A028310 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230586.P3216929395105222170

namespace A230586

/-- `∑[A195317(A028310(∑[n]))]` -/
def P3216929395105222170.Spec : Prop :=
  ∀ n, P3216929395105222170.a n = A230586 (n + 1)

end A230586

/-! ## A230586.P11370365289457718439

`∑[A195317(A007318(A027379(n)))]`
-/

namespace A230586.P11370365289457718439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195317 (A007318 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230586.P11370365289457718439

namespace A230586

/-- `∑[A195317(A007318(A027379(n)))]` -/
def P11370365289457718439.Spec : Prop :=
  ∀ n, P11370365289457718439.a n = A230586 (n + 1)

end A230586

/-! ## A230586.P2927090621790511556

`sqrt(A001095((n+1)²))`
-/

namespace A230586.P2927090621790511556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001095 ((n + 1) ^ 2) : ℝ)

end

end A230586.P2927090621790511556

namespace A230586

/-- `sqrt(A001095((n+1)²))` -/
def P2927090621790511556.Spec : Prop :=
  ∀ n, P2927090621790511556.a n = (A230586 (n + 1) : ℝ)

end A230586

/-! ## A230586.P13570813685441187569

`record[A060964(∑[n+4])]`
-/

namespace A230586.P13570813685441187569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230586.P13570813685441187569

namespace A230586

/-- `record[A060964(∑[n+4])]` -/
def P13570813685441187569.Spec : Prop :=
  ∀ n, P13570813685441187569.a n = A230586 (n + 1)

end A230586

/-! ## A230586.P1940131193982354018

`A060964(A000124(n+7)-7)`
-/

namespace A230586.P1940131193982354018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (A000124 (n + 7) - 7).toNat

end

end A230586.P1940131193982354018

namespace A230586

/-- `A060964(A000124(n+7)-7)` -/
def P1940131193982354018.Spec : Prop :=
  ∀ n, P1940131193982354018.a n = A230586 (n + 1)

end A230586

/-!
# A230588: Number of n X 2 0..5 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230588, the canonical program `A230588.P2682658349601618090` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230588 has offset 1).

The definition of A230588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230588.P2682658349601618090

`5*a(n-1)-5*a(n-2)+5*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230588

/-- `5*a(n-1)-5*a(n-2)+5*a(n-3)+8*a(n-4)` -/
def P2682658349601618090.Spec : Prop :=
  ∀ n, P2682658349601618090.a n = A230588 (n + 1)

theorem P2682658349601618090.correct : P2682658349601618090.Spec := by
  intro n
  simp only [A230588, Nat.add_sub_cancel]

end A230588

/-! ## A230588.P2541542969836399723

`A230730(∑[n+2]+3)`
-/

namespace A230588.P2541542969836399723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A230588.P2541542969836399723

namespace A230588

/-- `A230730(∑[n+2]+3)` -/
def P2541542969836399723.Spec : Prop :=
  ∀ n, P2541542969836399723.a n = A230588 (n + 1)

end A230588

/-! ## A230588.P7452422186451703096

`lcm(2, A230730(A340266(n+1)))`
-/

namespace A230588.P7452422186451703096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230730 (A340266 (n + 1)).toNat)

end

end A230588.P7452422186451703096

namespace A230588

/-- `lcm(2, A230730(A340266(n+1)))` -/
def P7452422186451703096.Spec : Prop :=
  ∀ n, (P7452422186451703096.a n : ℤ) = A230588 (n + 1)

end A230588

/-! ## A230588.P14893503950362647

`A054977(n)*A230730(A340266(n+1))`
-/

namespace A230588.P14893503950362647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A230730 (A340266 (n + 1)).toNat

end

end A230588.P14893503950362647

namespace A230588

/-- `A054977(n)*A230730(A340266(n+1))` -/
def P14893503950362647.Spec : Prop :=
  ∀ n, P14893503950362647.a n = A230588 (n + 1)

end A230588

/-! ## A230588.P11273716206451790779

`A230730(A340266(n+1))%A002913(n)`
-/

namespace A230588.P11273716206451790779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230730 (A340266 (n + 1)).toNat) (A002913 n)

end

end A230588.P11273716206451790779

namespace A230588

/-- `A230730(A340266(n+1))%A002913(n)` -/
def P11273716206451790779.Spec : Prop :=
  ∀ n, P11273716206451790779.a n = A230588 (n + 1)

end A230588

/-!
# A230589: Number of nX3 0..5 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230589, there is no canonical definition to state claims against.
-/

/-! ## A230589.P863762181636348055

`A230592(∑[n+2]+4)`
-/

namespace A230589.P863762181636348055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230592 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230589.P863762181636348055

/-! ## A230589.P16415343831852585978

`lcm(2, A230592(A167614(n+1)))`
-/

namespace A230589.P16415343831852585978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230592 (A167614 (n + 1)).toNat)

end

end A230589.P16415343831852585978

/-! ## A230589.P2617264782689820812

`A230592(A167614(n+1))+A055967(n)`
-/

namespace A230589.P2617264782689820812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230592 (A167614 (n + 1)).toNat + A055967 n

end

end A230589.P2617264782689820812

/-! ## A230589.P5426221668962238238

`A230592(A167614(n+1))+A086080(n)`
-/

namespace A230589.P5426221668962238238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230592 (A167614 (n + 1)).toNat + A086080 n

end

end A230589.P5426221668962238238

/-! ## A230589.P2959538962245501789

`A230592(A167614(n+1))+A088116(n)`
-/

namespace A230589.P2959538962245501789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230592 (A167614 (n + 1)).toNat + A088116 n

end

end A230589.P2959538962245501789

/-!
# A230590: Number of nX4 0..5 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230590, there is no canonical definition to state claims against.
-/

/-! ## A230590.P9155053318770160427

`A230592(∑[n+3]+7)`
-/

namespace A230590.P9155053318770160427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230592 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A230590.P9155053318770160427

/-! ## A230590.P3447953769719191549

`A230592(A055999(n)+10)%A095372(n)`
-/

namespace A230590.P3447953769719191549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230592 (A055999 n + 10).toNat) (A095372 n)

end

end A230590.P3447953769719191549

/-!
# A230591: Number of nX5 0..5 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230591, there is no canonical definition to state claims against.
-/

/-! ## A230591.P985965126164160310

`record[A230592(A315253(n))]`
-/

namespace A230591.P985965126164160310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230592 (A315253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230591.P985965126164160310

/-! ## A230591.P6520271454073423514

`A230592(A167499(n+3))`
-/

namespace A230591.P6520271454073423514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230592 (A167499 (n + 3)).toNat

end

end A230591.P6520271454073423514

/-! ## A230591.P6572576216518224025

`A230592(A155212(n)+13)`
-/

namespace A230591.P6572576216518224025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230592 (A155212 n + 13).toNat

end

end A230591.P6572576216518224025

/-! ## A230591.P1441579023787604867

`A230592(A056000(n)+15)`
-/

namespace A230591.P1441579023787604867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230592 (A056000 n + 15).toNat

end

end A230591.P1441579023787604867

/-!
# A230593: a(n) = n * Sum_{q|n} 1 / q, where q are noncomposite numbers (A008578) dividing n.

The programs for A230593, the canonical program `A230593.P566366063280719726` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230593 has offset 1).

The definition of A230593 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230593.P566366063280719726

`A069359(n+1)+n+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A230593

/-- `A069359(n+1)+n+1` -/
def P566366063280719726.Spec : Prop :=
  ∀ n, P566366063280719726.a n = A230593 (n + 1)

theorem P566366063280719726.correct : P566366063280719726.Spec := by
  intro n
  simp only [A230593, Nat.add_sub_cancel]

end A230593

/-! ## A230593.P8549703127187654943

`A129283(n+1)-A329039(n+1)`
-/

namespace A230593.P8549703127187654943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) - A329039 (n + 1)

end

end A230593.P8549703127187654943

namespace A230593

/-- `A129283(n+1)-A329039(n+1)` -/
def P8549703127187654943.Spec : Prop :=
  ∀ n, P8549703127187654943.a n = A230593 (n + 1)

theorem P8549703127187654943.correct : P8549703127187654943.Spec := by
  intro n
  simp only [A230593, Nat.add_sub_cancel, A230593.P8549703127187654943.a, A230593.P566366063280719726.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A129283, A129283.P3962818557550655141.a, A329039, A329039.P4210899274647080376.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A230593

/-! ## A230593.P15152315150711951608

`∑{p}[n+1, ceil(n/#)]+1+n`
-/

namespace A230593.P15152315150711951608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ + 1 + (n : ℤ)

end

end A230593.P15152315150711951608

namespace A230593

/-- `∑{p}[n+1, ceil(n/#)]+1+n` -/
def P15152315150711951608.Spec : Prop :=
  ∀ n, P15152315150711951608.a n = A230593 (n + 1)

theorem P15152315150711951608.correct : P15152315150711951608.Spec := by
  intro n
  simp only [A230593, Nat.add_sub_cancel, A230593.P15152315150711951608.f1, A230593.P15152315150711951608.a, A230593.P566366063280719726.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230593

/-! ## A230593.P10087809282424706818

`∑{p}[n+1, round(n/#)]+n+1`
-/

namespace A230593.P10087809282424706818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway ((n : ℚ) / (p : ℚ)) + (n + 1 : ℤ)

end

end A230593.P10087809282424706818

namespace A230593

/-- `∑{p}[n+1, round(n/#)]+n+1` -/
def P10087809282424706818.Spec : Prop :=
  ∀ n, P10087809282424706818.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P14880216978934122857

`(∑{p}[n+1, 1/#]+1)*(n+1)`
-/

namespace A230593.P14880216978934122857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ) + 1) * (n + 1 : ℚ)

end

end A230593.P14880216978934122857

namespace A230593

/-- `(∑{p}[n+1, 1/#]+1)*(n+1)` -/
def P14880216978934122857.Spec : Prop :=
  ∀ n, P14880216978934122857.a n = (A230593 (n + 1) : ℚ)

end A230593

/-! ## A230593.P10565842279463344531

`floor(∑{p}[n+1, (n+1)/#]+n+1)`
-/

namespace A230593.P10565842279463344531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ) + (n + 1 : ℚ)⌋

end

end A230593.P10565842279463344531

namespace A230593

/-- `floor(∑{p}[n+1, (n+1)/#]+n+1)` -/
def P10565842279463344531.Spec : Prop :=
  ∀ n, P10565842279463344531.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P17698771771147886051

`∑{d}[n+1, A349338(#)]`
-/

namespace A230593.P17698771771147886051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349338 d

end

end A230593.P17698771771147886051

namespace A230593

/-- `∑{d}[n+1, A349338(#)]` -/
def P17698771771147886051.Spec : Prop :=
  ∀ n, P17698771771147886051.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P9149155980741122132

`∑{d}[n+1, #*A080339((n+1)/#)]`
-/

namespace A230593.P9149155980741122132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A080339 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A230593.P9149155980741122132

namespace A230593

/-- `∑{d}[n+1, #*A080339((n+1)/#)]` -/
def P9149155980741122132.Spec : Prop :=
  ∀ n, P9149155980741122132.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P1558077184428100104

`A348203(n+1)+A001221(n+1)`
-/

namespace A230593.P1558077184428100104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348203 (n + 1) + A001221 (n + 1)

end

end A230593.P1558077184428100104

namespace A230593

/-- `A348203(n+1)+A001221(n+1)` -/
def P1558077184428100104.Spec : Prop :=
  ∀ n, P1558077184428100104.a n = A230593 (n + 1)

theorem P1558077184428100104.correct : P1558077184428100104.Spec := by
  intro n
  simp only [A230593, Nat.add_sub_cancel, A230593.P1558077184428100104.a, A230593.P566366063280719726.a, A001221, A001221.P10258181745752134128.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A348203, A348203.P13239406140819049741.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230593

/-! ## A230593.P8946366655399812400

`A306369(n+1)+A051953(n+1)`
-/

namespace A230593.P8946366655399812400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306369 (n + 1) + A051953 (n + 1)

end

end A230593.P8946366655399812400

namespace A230593

/-- `A306369(n+1)+A051953(n+1)` -/
def P8946366655399812400.Spec : Prop :=
  ∀ n, P8946366655399812400.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P15170649379775533090

`∑{d}[n+1, A000010(#)*A083399((n+1)/#)]`
-/

namespace A230593.P15170649379775533090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A083399 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A230593.P15170649379775533090

namespace A230593

/-- `∑{d}[n+1, A000010(#)*A083399((n+1)/#)]` -/
def P15170649379775533090.Spec : Prop :=
  ∀ n, P15170649379775533090.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P13122489094740620342

`∑{d}[n+1, A129283(#)*A349435((n+1)/#)]`
-/

namespace A230593.P13122489094740620342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129283 d * A349435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A230593.P13122489094740620342

namespace A230593

/-- `∑{d}[n+1, A129283(#)*A349435((n+1)/#)]` -/
def P13122489094740620342.Spec : Prop :=
  ∀ n, P13122489094740620342.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P4704050422984725832

`∑{d}[n+1, A000010(#)*A001221((n+1)/#)]+1+n`
-/

namespace A230593.P4704050422984725832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + 1 + (n : ℤ)

end

end A230593.P4704050422984725832

namespace A230593

/-- `∑{d}[n+1, A000010(#)*A001221((n+1)/#)]+1+n` -/
def P4704050422984725832.Spec : Prop :=
  ∀ n, P4704050422984725832.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P7500693048273018929

`A003557(n+1)*A129283(A007947(n+1))`
-/

namespace A230593.P7500693048273018929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A129283 (A007947 (n + 1)).toNat

end

end A230593.P7500693048273018929

namespace A230593

/-- `A003557(n+1)*A129283(A007947(n+1))` -/
def P7500693048273018929.Spec : Prop :=
  ∀ n, P7500693048273018929.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P11474447518645416695

`(A336551(n+1)+1)*A129283(A007947(n+1))`
-/

namespace A230593.P11474447518645416695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336551 (n + 1) + 1) * A129283 (A007947 (n + 1)).toNat

end

end A230593.P11474447518645416695

namespace A230593

/-- `(A336551(n+1)+1)*A129283(A007947(n+1))` -/
def P11474447518645416695.Spec : Prop :=
  ∀ n, P11474447518645416695.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P4381618330486434604

`A068719(n+1)-(A329039(n+1)+A003415(n+1))`
-/

namespace A230593.P4381618330486434604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068719 (n + 1) - (A329039 (n + 1) + A003415 (n + 1))

end

end A230593.P4381618330486434604

namespace A230593

/-- `A068719(n+1)-(A329039(n+1)+A003415(n+1))` -/
def P4381618330486434604.Spec : Prop :=
  ∀ n, P4381618330486434604.a n = A230593 (n + 1)

theorem P4381618330486434604.correct : P4381618330486434604.Spec := by
  intro n
  simp only [A230593, Nat.add_sub_cancel, A230593.P4381618330486434604.a, A230593.P566366063280719726.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A068719, A068719.P3996091434166805245.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A329039, A329039.P4210899274647080376.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A230593

/-! ## A230593.P14461545517739426101

`(A028235(n+1)+A007947(n+1))*A003557(n+1)`
-/

namespace A230593.P14461545517739426101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028235 (n + 1) + A007947 (n + 1)) * A003557 (n + 1)

end

end A230593.P14461545517739426101

namespace A230593

/-- `(A028235(n+1)+A007947(n+1))*A003557(n+1)` -/
def P14461545517739426101.Spec : Prop :=
  ∀ n, P14461545517739426101.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P11650965005724861527

`(A300719(n+1)+A300717(n+1))*A129283(A007947(n+1))`
-/

namespace A230593.P11650965005724861527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A300719 (n + 1) + A300717 (n + 1)) * A129283 (A007947 (n + 1)).toNat

end

end A230593.P11650965005724861527

namespace A230593

/-- `(A300719(n+1)+A300717(n+1))*A129283(A007947(n+1))` -/
def P11650965005724861527.Spec : Prop :=
  ∀ n, P11650965005724861527.a n = A230593 (n + 1)

end A230593

/-! ## A230593.P16948148032459917602

`A001615(n+1)*A129283(A007947(n+1))/A048250(n+1)`
-/

namespace A230593.P16948148032459917602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) * A129283 (A007947 (n + 1)).toNat : ℚ) / (A048250 (n + 1) : ℚ)

end

end A230593.P16948148032459917602

namespace A230593

/-- `A001615(n+1)*A129283(A007947(n+1))/A048250(n+1)` -/
def P16948148032459917602.Spec : Prop :=
  ∀ n, P16948148032459917602.a n = (A230593 (n + 1) : ℚ)

end A230593

/-! ## A230593.P10280632652259165841

`Δ[A322068(n)]+n+1`
-/

namespace A230593.P10280632652259165841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A230593.P10280632652259165841

namespace A230593

/-- `Δ[A322068(n)]+n+1` -/
def P10280632652259165841.Spec : Prop :=
  ∀ n, P10280632652259165841.a n = A230593 (n + 1)

end A230593

/-!
# A230594: Number of ways to write n as n = x*y, where x, y = noncomposite numbers (A008578), 1 <= x <= n, 1 <= y <= n.

The programs for A230594, the canonical program `A230594.P14479731149764464359` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230594 has offset 1).

The definition of A230594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230594.P11060999701079755483

`11%(11%(A046523(n+1)+2))`
-/

namespace A230594.P11060999701079755483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (Int.tmod 11 (A046523 (n + 1) + 2))

end

end A230594.P11060999701079755483

namespace A230594

/-- `11%(11%(A046523(n+1)+2))` -/
def P11060999701079755483.Spec : Prop :=
  ∀ n, P11060999701079755483.a n = A230594 (n + 1)

end A230594

/-! ## A230594.P5911365050470144529

`A102669(C(8, A046523(n+1)))`
-/

namespace A230594.P5911365050470144529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (Nat.choose 8 (A046523 (n + 1)).toNat)

end

end A230594.P5911365050470144529

namespace A230594

/-- `A102669(C(8, A046523(n+1)))` -/
def P5911365050470144529.Spec : Prop :=
  ∀ n, P5911365050470144529.a n = A230594 (n + 1)

end A230594

/-! ## A230594.P7469756116874561842

`C(2, A001222(n+1))*A008480(n+1)`
-/

namespace A230594.P7469756116874561842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A001222 (n + 1)).toNat : ℤ) * A008480 (n + 1)

end

end A230594.P7469756116874561842

namespace A230594

/-- `C(2, A001222(n+1))*A008480(n+1)` -/
def P7469756116874561842.Spec : Prop :=
  ∀ n, P7469756116874561842.a n = A230594 (n + 1)

end A230594

/-! ## A230594.P9009454601086792367

`C(2, A001222(n+1))*A050320(n+1)`
-/

namespace A230594.P9009454601086792367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A001222 (n + 1)).toNat : ℤ) * A050320 (n + 1)

end

end A230594.P9009454601086792367

namespace A230594

/-- `C(2, A001222(n+1))*A050320(n+1)` -/
def P9009454601086792367.Spec : Prop :=
  ∀ n, P9009454601086792367.a n = A230594 (n + 1)

end A230594

/-! ## A230594.P14479731149764464359

`∑{d}[n+1, A080339(#)*A080339((n+1)/#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A230594

/-- `∑{d}[n+1, A080339(#)*A080339((n+1)/#)]` -/
def P14479731149764464359.Spec : Prop :=
  ∀ n, P14479731149764464359.a n = A230594 (n + 1)

theorem P14479731149764464359.correct : P14479731149764464359.Spec := by
  intro n
  simp only [A230594, Nat.add_sub_cancel]

end A230594

/-! ## A230594.P557310031004560988

`C(2, A130780(A001222(n+1))+A087049(n+1))`
-/

namespace A230594.P557310031004560988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A130780 (A001222 (n + 1)).toNat + A087049 (n + 1)).toNat

end

end A230594.P557310031004560988

namespace A230594

/-- `C(2, A130780(A001222(n+1))+A087049(n+1))` -/
def P557310031004560988.Spec : Prop :=
  ∀ n, (P557310031004560988.a n : ℤ) = A230594 (n + 1)

end A230594

/-! ## A230594.P10516725046953724581

`A234538(C(2, A001222(n+1))*A000005(n+1))`
-/

namespace A230594.P10516725046953724581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 ((Nat.choose 2 (A001222 (n + 1)).toNat : ℤ) * A000005 (n + 1)).toNat

end

end A230594.P10516725046953724581

namespace A230594

/-- `A234538(C(2, A001222(n+1))*A000005(n+1))` -/
def P10516725046953724581.Spec : Prop :=
  ∀ n, P10516725046953724581.a n = A230594 (n + 1)

end A230594

/-! ## A230594.P7564445863170510559

`A277130(2*C(4, A277130(n+1))+1)`
-/

namespace A230594.P7564445863170510559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277130 (2 * Nat.choose 4 (A277130 (n + 1)).toNat + 1)

end

end A230594.P7564445863170510559

namespace A230594

/-- `A277130(2*C(4, A277130(n+1))+1)` -/
def P7564445863170510559.Spec : Prop :=
  ∀ n, P7564445863170510559.a n = A230594 (n + 1)

end A230594

/-! ## A230594.P18013759324719351019

`A324202(n+1)%5`
-/

namespace A230594.P18013759324719351019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324202 (n + 1)) 5

end

end A230594.P18013759324719351019

namespace A230594

/-- `A324202(n+1)%5` -/
def P18013759324719351019.Spec : Prop :=
  ∀ n, P18013759324719351019.a n = A230594 (n + 1)

end A230594

/-! ## A230594.P16243741164147521185

`A181821(A071364(n+1))%5`
-/

namespace A230594.P16243741164147521185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181821 (A071364 (n + 1)).toNat) 5

end

end A230594.P16243741164147521185

namespace A230594

/-- `A181821(A071364(n+1))%5` -/
def P16243741164147521185.Spec : Prop :=
  ∀ n, P16243741164147521185.a n = A230594 (n + 1)

end A230594

/-! ## A230594.P18415952714012085094

`A108069(A067824(n+1))`
-/

namespace A230594.P18415952714012085094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108069 (A067824 (n + 1)).toNat

end

end A230594.P18415952714012085094

namespace A230594

/-- `A108069(A067824(n+1))` -/
def P18415952714012085094.Spec : Prop :=
  ∀ n, P18415952714012085094.a n = A230594 (n + 1)

end A230594

/-! ## A230594.P10746350576372053150

`A109810(n+1)/A050363(A050363(n+1)²)`
-/

namespace A230594.P10746350576372053150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109810 (n + 1) : ℚ) / (A050363 (A050363 (n + 1) ^ 2).toNat : ℚ)

end

end A230594.P10746350576372053150

namespace A230594

/-- `A109810(n+1)/A050363(A050363(n+1)²)` -/
def P10746350576372053150.Spec : Prop :=
  ∀ n, P10746350576372053150.a n = (A230594 (n + 1) : ℚ)

end A230594

/-!
# A230595: Number of ways to write n as n = x*y, where x and y are primes, 1 <= x <= n, 1 <= y <= n.

The programs for A230595, the canonical program `A230595.P9035268919760195541` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230595 has offset 1).

The definition of A230595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230595.P2065384424662280749

`A091731(A046523(n+1))`
-/

namespace A230595.P2065384424662280749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091731 (A046523 (n + 1)).toNat

end

end A230595.P2065384424662280749

namespace A230595

/-- `A091731(A046523(n+1))` -/
def P2065384424662280749.Spec : Prop :=
  ∀ n, P2065384424662280749.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P11259899462805517167

`A091731(A071364(n+1))`
-/

namespace A230595.P11259899462805517167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091731 (A071364 (n + 1)).toNat

end

end A230595.P11259899462805517167

namespace A230595

/-- `A091731(A071364(n+1))` -/
def P11259899462805517167.Spec : Prop :=
  ∀ n, P11259899462805517167.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P16705270000130531271

`A139251(A318326(n+1))%4`
-/

namespace A230595.P16705270000130531271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139251 (A318326 (n + 1)).toNat) 4

end

end A230595.P16705270000130531271

namespace A230595

/-- `A139251(A318326(n+1))%4` -/
def P16705270000130531271.Spec : Prop :=
  ∀ n, P16705270000130531271.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P11346729577962113507

`C(2, A308180(A181819(n+1)))`
-/

namespace A230595.P11346729577962113507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308180 (A181819 (n + 1)).toNat).toNat

end

end A230595.P11346729577962113507

namespace A230595

/-- `C(2, A308180(A181819(n+1)))` -/
def P11346729577962113507.Spec : Prop :=
  ∀ n, (P11346729577962113507.a n : ℤ) = A230595 (n + 1)

end A230595

/-! ## A230595.P9035268919760195541

`A008615(C(5, A305809(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A230595

/-- `A008615(C(5, A305809(n+1)))` -/
def P9035268919760195541.Spec : Prop :=
  ∀ n, P9035268919760195541.a n = A230595 (n + 1)

theorem P9035268919760195541.correct : P9035268919760195541.Spec := by
  intro n
  simp only [A230595, Nat.add_sub_cancel]

end A230595

/-! ## A230595.P12785269873818151167

`A072670(n)*A230594(n+1)`
-/

namespace A230595.P12785269873818151167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n * A230594 (n + 1)

end

end A230595.P12785269873818151167

namespace A230595

/-- `A072670(n)*A230594(n+1)` -/
def P12785269873818151167.Spec : Prop :=
  ∀ n, P12785269873818151167.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P6513116795245286880

`A064911(n+1)*A275437(n)`
-/

namespace A230595.P6513116795245286880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A275437 n

end

end A230595.P6513116795245286880

namespace A230595

/-- `A064911(n+1)*A275437(n)` -/
def P6513116795245286880.Spec : Prop :=
  ∀ n, P6513116795245286880.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P15190930787817326752

`A280710(n+1)+A064911(n+1)`
-/

namespace A230595.P15190930787817326752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1) + A064911 (n + 1)

end

end A230595.P15190930787817326752

namespace A230595

/-- `A280710(n+1)+A064911(n+1)` -/
def P15190930787817326752.Spec : Prop :=
  ∀ n, P15190930787817326752.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P6549617306017764840

`A001221(n+1)*A064911(n+1)`
-/

namespace A230595.P6549617306017764840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A064911 (n + 1)

end

end A230595.P6549617306017764840

namespace A230595

/-- `A001221(n+1)*A064911(n+1)` -/
def P6549617306017764840.Spec : Prop :=
  ∀ n, P6549617306017764840.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P10788975040474875274

`A007423(n+1)*A064911(n+1)`
-/

namespace A230595.P10788975040474875274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) * A064911 (n + 1)

end

end A230595.P10788975040474875274

namespace A230595

/-- `A007423(n+1)*A064911(n+1)` -/
def P10788975040474875274.Spec : Prop :=
  ∀ n, P10788975040474875274.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P12374000306288905604

`A007875(n+1)*A064911(n+1)`
-/

namespace A230595.P12374000306288905604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1) * A064911 (n + 1)

end

end A230595.P12374000306288905604

namespace A230595

/-- `A007875(n+1)*A064911(n+1)` -/
def P12374000306288905604.Spec : Prop :=
  ∀ n, P12374000306288905604.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P18443190346911217131

`A008480(n+1)*A064911(n+1)`
-/

namespace A230595.P18443190346911217131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A064911 (n + 1)

end

end A230595.P18443190346911217131

namespace A230595

/-- `A008480(n+1)*A064911(n+1)` -/
def P18443190346911217131.Spec : Prop :=
  ∀ n, P18443190346911217131.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P344558178626817446

`A007423(n+1)*A101040(n+1)`
-/

namespace A230595.P344558178626817446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) * A101040 (n + 1)

end

end A230595.P344558178626817446

namespace A230595

/-- `A007423(n+1)*A101040(n+1)` -/
def P344558178626817446.Spec : Prop :=
  ∀ n, P344558178626817446.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P33486755441781175

`A045778(n+1)*A064911(n+1)`
-/

namespace A230595.P33486755441781175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) * A064911 (n + 1)

end

end A230595.P33486755441781175

namespace A230595

/-- `A045778(n+1)*A064911(n+1)` -/
def P33486755441781175.Spec : Prop :=
  ∀ n, P33486755441781175.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P17788113789317080329

`A050320(n+1)*A064911(n+1)`
-/

namespace A230595.P17788113789317080329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (n + 1) * A064911 (n + 1)

end

end A230595.P17788113789317080329

namespace A230595

/-- `A050320(n+1)*A064911(n+1)` -/
def P17788113789317080329.Spec : Prop :=
  ∀ n, P17788113789317080329.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P11213200018133913011

`A050334(n+1)*A064911(n+1)`
-/

namespace A230595.P11213200018133913011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (n + 1) * A064911 (n + 1)

end

end A230595.P11213200018133913011

namespace A230595

/-- `A050334(n+1)*A064911(n+1)` -/
def P11213200018133913011.Spec : Prop :=
  ∀ n, P11213200018133913011.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P10805177078891934218

`A051709(n+1)*A064911(n+1)`
-/

namespace A230595.P10805177078891934218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) * A064911 (n + 1)

end

end A230595.P10805177078891934218

namespace A230595

/-- `A051709(n+1)*A064911(n+1)` -/
def P10805177078891934218.Spec : Prop :=
  ∀ n, P10805177078891934218.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P18010294220950574742

`A056924(n+1)*A064911(n+1)`
-/

namespace A230595.P18010294220950574742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) * A064911 (n + 1)

end

end A230595.P18010294220950574742

namespace A230595

/-- `A056924(n+1)*A064911(n+1)` -/
def P18010294220950574742.Spec : Prop :=
  ∀ n, P18010294220950574742.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P12364634308437425712

`A058061(n+1)*A064911(n+1)`
-/

namespace A230595.P12364634308437425712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (n + 1) * A064911 (n + 1)

end

end A230595.P12364634308437425712

namespace A230595

/-- `A058061(n+1)*A064911(n+1)` -/
def P12364634308437425712.Spec : Prop :=
  ∀ n, P12364634308437425712.a n = A230595 (n + 1)

end A230595

/-! ## A230595.P10652928549536419023

`A064372(n+1)*A064911(n+1)`
-/

namespace A230595.P10652928549536419023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (n + 1) * A064911 (n + 1)

end

end A230595.P10652928549536419023

namespace A230595

/-- `A064372(n+1)*A064911(n+1)` -/
def P10652928549536419023.Spec : Prop :=
  ∀ n, P10652928549536419023.a n = A230595 (n + 1)

end A230595

/-!
# A230596: Number of ways to write n = x + y + z with 0 < x <= y <= z such that x*y*z is a triangular number, and that x is a triangular number of the form (p^2 - 1)/8 with p an odd prime.

The programs for A230596, there is no canonical definition to state claims against.
-/

/-! ## A230596.P4361357870057615994

`A037824(lcm(3, A053191(n+1)))`
-/

namespace A230596.P4361357870057615994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (Int.lcm 3 (A053191 (n + 1)))

end

end A230596.P4361357870057615994

/-! ## A230596.P15715552413248756196

`val(A000010(A331606(n+3)), 4)`
-/

namespace A230596.P15715552413248756196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A331606 (n + 3)).toNat).toNat 4

end

end A230596.P15715552413248756196

/-! ## A230596.P8531819048408332145

`A005087(A329701(n)+C(n+1, 2))`
-/

namespace A230596.P8531819048408332145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A329701 n + (Nat.choose (n + 1) 2 : ℤ)).toNat

end

end A230596.P8531819048408332145

/-! ## A230596.P17206071551041554173

`A180026(∑[n]+1-A259481(∑[n]))`
-/

namespace A230596.P17206071551041554173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180026 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A259481 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A230596.P17206071551041554173

/-! ## A230596.P376410867394844151

`A005087(A329701(n)+round((2*n+1)²/8))`
-/

namespace A230596.P376410867394844151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A329701 n + SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8)).toNat

end

end A230596.P376410867394844151

/-!
# A230597: Numbers n such that (the binary weight of n) = (the ternary weight of n).

The programs for A230597, the canonical program `A230597.P16336454087684677726` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230597 has offset 1).

The definition of A230597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230597.P16336454087684677726

`eq[A000120(n), A062756(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230597

/-- `eq[A000120(n), A062756(n)]` -/
def P16336454087684677726.Spec : Prop :=
  ∀ n, (P16336454087684677726.a n : ℤ) = A230597 (n + 1)

theorem P16336454087684677726.correct : P16336454087684677726.Spec := by
  intro n
  simp only [A230597, Nat.add_sub_cancel]

end A230597

/-! ## A230597.P9983557360925703202

`eq[A001316(n), A120880(n)]`
-/

namespace A230597.P9983557360925703202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230597.P9983557360925703202

namespace A230597

/-- `eq[A001316(n), A120880(n)]` -/
def P9983557360925703202.Spec : Prop :=
  ∀ n, (P9983557360925703202.a n : ℤ) = A230597 (n + 1)

end A230597

/-! ## A230597.P11708938394264308675

`eq[log2(A001316(n)), A062756(n)]`
-/

namespace A230597.P11708938394264308675
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A230597.P11708938394264308675

namespace A230597

/-- `eq[log2(A001316(n)), A062756(n)]` -/
def P11708938394264308675.Spec : Prop :=
  ∀ n, (P11708938394264308675.a n : ℤ) = A230597 (n + 1)

end A230597

/-! ## A230597.P1959926645361855191

`eq[n, A062756(n)+A011371(n)]`
-/

namespace A230597.P1959926645361855191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + A011371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230597.P1959926645361855191

namespace A230597

/-- `eq[n, A062756(n)+A011371(n)]` -/
def P1959926645361855191.Spec : Prop :=
  ∀ n, (P1959926645361855191.a n : ℤ) = A230597 (n + 1)

end A230597

/-! ## A230597.P12976860109247102909

`eq[3*n+1-∑[A089080(n+1)], A062756(n)]`
-/

namespace A230597.P12976860109247102909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A230597.P12976860109247102909

namespace A230597

/-- `eq[3*n+1-∑[A089080(n+1)], A062756(n)]` -/
def P12976860109247102909.Spec : Prop :=
  ∀ n, (P12976860109247102909.a n : ℤ) = A230597 (n + 1)

end A230597

/-! ## A230597.P7553203800656145813

`eq[A001222(A071044(n)), A062756(n)]`
-/

namespace A230597.P7553203800656145813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230597.P7553203800656145813

namespace A230597

/-- `eq[A001222(A071044(n)), A062756(n)]` -/
def P7553203800656145813.Spec : Prop :=
  ∀ n, (P7553203800656145813.a n : ℤ) = A230597 (n + 1)

end A230597

/-! ## A230597.P17191315506582507062

`eq[A000120(n), A000120(A289813(n))]`
-/

namespace A230597.P17191315506582507062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230597.P17191315506582507062

namespace A230597

/-- `eq[A000120(n), A000120(A289813(n))]` -/
def P17191315506582507062.Spec : Prop :=
  ∀ n, (P17191315506582507062.a n : ℤ) = A230597 (n + 1)

end A230597

/-! ## A230597.P2186330620437067307

`eq[A160385(n)+A160383(n), A062756(n)]`
-/

namespace A230597.P2186330620437067307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230597.P2186330620437067307

namespace A230597

/-- `eq[A160385(n)+A160383(n), A062756(n)]` -/
def P2186330620437067307.Spec : Prop :=
  ∀ n, (P2186330620437067307.a n : ℤ) = A230597 (n + 1)

end A230597

/-! ## A230597.P18415347161770826709

`eq[A324467(n)/3, A062756(n)]`
-/

namespace A230597.P18415347161770826709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A230597.P18415347161770826709

namespace A230597

/-- `eq[A324467(n)/3, A062756(n)]` -/
def P18415347161770826709.Spec : Prop :=
  ∀ n, (P18415347161770826709.a n : ℤ) = A230597 (n + 1)

end A230597

/-! ## A230597.P2285778413237064806

`eq[A037861(2*A001316(n)), A062756(n)]`
-/

namespace A230597.P2285778413237064806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230597.P2285778413237064806

namespace A230597

/-- `eq[A037861(2*A001316(n)), A062756(n)]` -/
def P2285778413237064806.Spec : Prop :=
  ∀ n, (P2285778413237064806.a n : ℤ) = A230597 (n + 1)

end A230597

/-! ## A230597.P5678701108102204627

`eq[A001222(A278222(n)), A062756(n)]`
-/

namespace A230597.P5678701108102204627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230597.P5678701108102204627

namespace A230597

/-- `eq[A001222(A278222(n)), A062756(n)]` -/
def P5678701108102204627.Spec : Prop :=
  ∀ n, (P5678701108102204627.a n : ℤ) = A230597 (n + 1)

end A230597

/-! ## A230597.P5883738665396336366

`eq[log2(A071044(2*n)), A062756(n)]`
-/

namespace A230597.P5883738665396336366
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A071044 (2 * n) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A230597.P5883738665396336366

namespace A230597

/-- `eq[log2(A071044(2*n)), A062756(n)]` -/
def P5883738665396336366.Spec : Prop :=
  ∀ n, (P5883738665396336366.a n : ℤ) = A230597 (n + 1)

end A230597

