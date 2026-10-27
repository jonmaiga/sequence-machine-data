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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A153100: Decimal expansion of log_24 (3).

The programs for A153100, there is no canonical definition to state claims against.
-/

/-! ## A153100.P17791444344927956282

`9-A154007(n)`
-/

namespace A153100.P17791444344927956282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154007 n

end

end A153100.P17791444344927956282

/-!
# A153101: Decimal expansion of log_5 (4).

The programs for A153101, there is no canonical definition to state claims against.
-/

/-! ## A153101.P17828179371619778764

`A155184(n+1)`
-/

namespace A153101.P17828179371619778764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155184 (n + 1 + 1)

end

end A153101.P17828179371619778764

/-!
# A153102: Decimal expansion of log_6 (4).

The programs for A153102, there is no canonical definition to state claims against.
-/

/-! ## A153102.P14148753238319998435

`A155959(n+1)`
-/

namespace A153102.P14148753238319998435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155959 (n + 1 + 1)

end

end A153102.P14148753238319998435

/-! ## A153102.P2236805072036141707

`9-A154009(n+1)`
-/

namespace A153102.P2236805072036141707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154009 (n + 1 + 1)

end

end A153102.P2236805072036141707

/-!
# A153105: Decimal expansion of log_12 (4).

The programs for A153105, there is no canonical definition to state claims against.
-/

/-! ## A153105.P4578641447534724548

`9-A153015(n)`
-/

namespace A153105.P4578641447534724548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153015 n

end

end A153105.P4578641447534724548

/-!
# A153110: Period 6: repeat [1, 5, 7, 2, 4, 8].

The programs for A153110, the canonical program `A153110.P14601261203352377880` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153110 has offset 0).

The definition of A153110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153110.P14601261203352377880

`dr(or(1, 3*n+1))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153110

/-- `dr(or(1, 3*n+1))` -/
def P14601261203352377880.Spec : Prop :=
  ∀ n, (P14601261203352377880.a n : ℤ) = A153110 n

theorem P14601261203352377880.correct : P14601261203352377880.Spec := by
  intro n
  simp only [A153110]

end A153110

/-!
# A153111: Solutions of the Pell-like equation 1 + 6*A*A = 7*B*B, with A, B integers.

The programs for A153111, the canonical program `A153111.P13111447201502058640` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153111 has offset 1).

The definition of A153111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153111.P13111447201502058640

`26*a(n-1)-a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153111

/-- `26*a(n-1)-a(n-2)` -/
def P13111447201502058640.Spec : Prop :=
  ∀ n, P13111447201502058640.a n = A153111 (n + 1)

theorem P13111447201502058640.correct : P13111447201502058640.Spec := by
  intro n
  simp only [A153111, Nat.add_sub_cancel]

end A153111

/-! ## A153111.P10839307270315517861

`A041071(2*n)`
-/

namespace A153111.P10839307270315517861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041071 (2 * n)

end

end A153111.P10839307270315517861

namespace A153111

/-- `A041071(2*n)` -/
def P10839307270315517861.Spec : Prop :=
  ∀ n, P10839307270315517861.a n = A153111 (n + 1)

end A153111

/-! ## A153111.P3549480470866524701

`A041311(2*n)`
-/

namespace A153111.P3549480470866524701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041311 (2 * n)

end

end A153111.P3549480470866524701

namespace A153111

/-- `A041311(2*n)` -/
def P3549480470866524701.Spec : Prop :=
  ∀ n, P3549480470866524701.a n = A153111 (n + 1)

end A153111

/-! ## A153111.P3773304999928920642

`Δ[A174779(n+1)/2]`
-/

namespace A153111.P3773304999928920642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174779 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153111.P3773304999928920642

namespace A153111

/-- `Δ[A174779(n+1)/2]` -/
def P3773304999928920642.Spec : Prop :=
  ∀ n, P3773304999928920642.a n = (A153111 (n + 1) : ℚ)

end A153111

/-! ## A153111.P9238939528516429394

`2*A253458(n+1)-1`
-/

namespace A153111.P9238939528516429394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253458 (n + 1) - 1

end

end A153111.P9238939528516429394

namespace A153111

/-- `2*A253458(n+1)-1` -/
def P9238939528516429394.Spec : Prop :=
  ∀ n, P9238939528516429394.a n = A153111 (n + 1)

end A153111

/-! ## A153111.P12728000343571322830

`record[A041311(A014681(n))]`
-/

namespace A153111.P12728000343571322830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041311 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153111.P12728000343571322830

namespace A153111

/-- `record[A041311(A014681(n))]` -/
def P12728000343571322830.Spec : Prop :=
  ∀ n, P12728000343571322830.a n = A153111 (n + 1)

end A153111

/-! ## A153111.P14305399498464170325

`record[A041071(A153733(n))]`
-/

namespace A153111.P14305399498464170325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041071 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153111.P14305399498464170325

namespace A153111

/-- `record[A041071(A153733(n))]` -/
def P14305399498464170325.Spec : Prop :=
  ∀ n, P14305399498464170325.a n = A153111 (n + 1)

end A153111

/-! ## A153111.P15871413394978519224

`record[A041311(n)/A094024(n)]`
-/

namespace A153111.P15871413394978519224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041311 n : ℚ) / (A094024 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153111.P15871413394978519224

namespace A153111

/-- `record[A041311(n)/A094024(n)]` -/
def P15871413394978519224.Spec : Prop :=
  ∀ n, P15871413394978519224.a n = (A153111 (n + 1) : ℚ)

end A153111

/-!
# A153112: a(0) = 0 and a(1)=a(2)=1; a(n) = a(a(n-1)) + a(n-a(n-1)) unless floor( sum_{i=0..n-1} a(i)/2) mod 16*A069705(n) = 1 in which case a(n) = A010882(n).

The programs for A153112, there is no canonical definition to state claims against.
-/

/-! ## A153112.P17865453345990762276

`A005350(A028310(n))-A192687(A010006(n))`
-/

namespace A153112.P17865453345990762276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (A028310 n).toNat - A192687 (A010006 n).toNat

end

end A153112.P17865453345990762276

/-! ## A153112.P4553011791252159020

`A005350(A028310(n))-A010054(A312315(n)²)`
-/

namespace A153112.P4553011791252159020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (A028310 n).toNat - A010054 (A312315 n ^ 2).toNat

end

end A153112.P4553011791252159020

/-! ## A153112.P1665819546501934250

`A290739(A050596(n+1))+A005350(A028310(n))`
-/

namespace A153112.P1665819546501934250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 (A050596 (n + 1)).toNat + A005350 (A028310 n).toNat

end

end A153112.P1665819546501934250

/-!
# A153114: Integers with the same number of zeros in base 10 and base 2.

The programs for A153114, there is no canonical definition to state claims against.
-/

/-! ## A153114.P1813689420471545965

`eq[A023416(n), A055641(n)]`
-/

namespace A153114.P1813689420471545965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153114.P1813689420471545965

/-! ## A153114.P12024457534803355982

`eq[A000120(A035327(n)), A055641(n)]`
-/

namespace A153114.P12024457534803355982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153114.P12024457534803355982

/-! ## A153114.P8267595365811723152

`eq[A055641(A028310(n)), A080791(n)]`
-/

namespace A153114.P8267595365811723152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153114.P8267595365811723152

/-! ## A153114.P12256717539066471421

`eq[A000007(A336682(n)), A023416(n)]`
-/

namespace A153114.P12256717539066471421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A336682 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153114.P12256717539066471421

/-! ## A153114.P24513032640683707

`record[A348366(A233279(n))]`
-/

namespace A153114.P24513032640683707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348366 (A233279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153114.P24513032640683707

/-!
# A153115: Positive integers with the same number of 1s in base 10 and base 2.

The programs for A153115, there is no canonical definition to state claims against.
-/

/-! ## A153115.P6040231808375237269

`eq[A000120(n)!, A268643(n)]`
-/

namespace A153115.P6040231808375237269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153115.P6040231808375237269

/-! ## A153115.P2162722395128672407

`eq[A000010(A001316(n)), A268643(n)]`
-/

namespace A153115.P2162722395128672407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153115.P2162722395128672407

/-! ## A153115.P58883454927005963

`eq[A042581(A324466(n)), A268643(n)]`
-/

namespace A153115.P58883454927005963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042581 (A324466 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153115.P58883454927005963

/-! ## A153115.P8682682387914773146

`eq[A000010(A278222(n)), A268643(n)]`
-/

namespace A153115.P8682682387914773146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A278222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153115.P8682682387914773146

/-!
# A153118: Primes p such that p^2 +- 18 are also primes.

The programs for A153118, there is no canonical definition to state claims against.
-/

/-! ## A153118.P306305619960718829

`record[A006530(∩[n², A156104(n+1)+18])]`
-/

namespace A153118.P306305619960718829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1) + 18

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153118.P306305619960718829

/-! ## A153118.P15713008657618756390

`p?[∑[A030298(A260556(n+1))]]`
-/

namespace A153118.P15713008657618756390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A260556 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153118.P15713008657618756390

/-! ## A153118.P16781535140997387213

`A077800(record[Δ[A350304(n+1)]])`
-/

namespace A153118.P16781535140997387213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350304 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153118.P16781535140997387213

/-! ## A153118.P5731783369239247025

`filter[A319315(2*(n+1)), A164292(#)]`
-/

namespace A153118.P5731783369239247025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319315 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A153118.P5731783369239247025

/-! ## A153118.P13974376370122417298

`record[A328579(A252753(n)+A006950(n))]`
-/

namespace A153118.P13974376370122417298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A252753 n + A006950 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153118.P13974376370122417298

/-!
# A153119: Primes p such that p^2 +- 30 are also primes.

The programs for A153119, there is no canonical definition to state claims against.
-/

/-! ## A153119.P8593384435262618979

`A091578(or(A004488(n), A215425(n+1)))`
-/

namespace A153119.P8593384435262618979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091578 (Int.lor (A004488 n) (A215425 (n + 1))).toNat

end

end A153119.P8593384435262618979

/-! ## A153119.P371956857231776514

`A006530(A120274(n+2)*A172310(2*n+3))`
-/

namespace A153119.P371956857231776514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A120274 (n + 2) * A172310 (2 * n + 3)).toNat

end

end A153119.P371956857231776514

/-!
# A153120: Primes p such that p^2 +- 42 are also primes.

The programs for A153120, there is no canonical definition to state claims against.
-/

/-! ## A153120.P15729291608704972172

`p?[A187108(2*n+1)-A085303(n+1)]`
-/

namespace A153120.P15729291608704972172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187108 (2 * n + 1) - A085303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153120.P15729291608704972172

/-! ## A153120.P7875925763658249644

`filter[A386347(n+3), A089939(#)]`
-/

namespace A153120.P7875925763658249644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089939 (f1 j).toNat = 1) n)

end

end A153120.P7875925763658249644

/-!
# A153121: Primes p such that p^2 +- 12 and p^2 +- 18 are also primes.

The programs for A153121, there is no canonical definition to state claims against.
-/

/-! ## A153121.P4808400825380908963

`∩[A153116(n+1), A153118(n+1)]`
-/

namespace A153121.P4808400825380908963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153121.P4808400825380908963

/-!
# A153122: G.f.: 1/p(x) where p(x)=x^5 + 2x^4 - 2x^3 - x^2 + 2x - 1.

The programs for A153122, the canonical program `A153122.P12616999417133241308` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153122 has offset 0).

The definition of A153122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153122.P12616999417133241308

`ogf(1/(1+2x-2x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153122

/-- `ogf(1/(1+2x-2x^2-x^3+2x^4-x^5))` -/
def P12616999417133241308.Spec : Prop :=
  ∀ n, P12616999417133241308.a n = A153122 n

theorem P12616999417133241308.correct : P12616999417133241308.Spec := by
  intro n
  simp only [A153122]

end A153122

/-! ## A153122.P3404924864401432967

`A122112(n)-A122179(A122082(n))`
-/

namespace A153122.P3404924864401432967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 n - A122179 (A122082 n).toNat

end

end A153122.P3404924864401432967

namespace A153122

/-- `A122112(n)-A122179(A122082(n))` -/
def P3404924864401432967.Spec : Prop :=
  ∀ n, P3404924864401432967.a n = A153122 n

end A153122

/-!
# A153124: Decimal expansion of log_20 (4).

The programs for A153124, there is no canonical definition to state claims against.
-/

/-! ## A153124.P12392033801478273106

`9-A153454(n)`
-/

namespace A153124.P12392033801478273106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153454 n

end

end A153124.P12392033801478273106

/-!
# A153125: Triangle read by rows: T(n,k) = maximal number of squares that can be covered by a queen on an n X k chessboard, 1<=k<=n.

The programs for A153125, there is no canonical definition to state claims against.
-/

/-! ## A153125.P343882563189406597

`A061282(Δ[A023745(n+1)²])`
-/

namespace A153125.P343882563189406597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023745 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061282 (f1 (n + 1) - f1 n).toNat

end

end A153125.P343882563189406597

/-!
# A153126: Sums of rows of the triangle in A153125.

The programs for A153126, the canonical program `A153126.P18375658979025609741` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153126 has offset 0).

The definition of A153126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153126.P16890032163842025412

`n*(5*n+7)/2+1-n%2`
-/

namespace A153126.P16890032163842025412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (5 * n + 7) : ℚ) / 2 + 1 - ((n % 2 : ℕ) : ℚ)

end

end A153126.P16890032163842025412

namespace A153126

/-- `n*(5*n+7)/2+1-n%2` -/
def P16890032163842025412.Spec : Prop :=
  ∀ n, P16890032163842025412.a n = (A153126 n : ℚ)

end A153126

/-! ## A153126.P14031742153951315470

`(1+(-1)^n+7*n+5*n²)/2`
-/

namespace A153126.P14031742153951315470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ n + (7 * n : ℤ) + (5 * n ^ 2 : ℤ) : ℚ) / 2

end

end A153126.P14031742153951315470

namespace A153126

/-- `(1+(-1)^n+7*n+5*n²)/2` -/
def P14031742153951315470.Spec : Prop :=
  ∀ n, P14031742153951315470.a n = (A153126 n : ℚ)

theorem P14031742153951315470.correct : P14031742153951315470.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A153126, Nat.add_sub_cancel, A153126.P14031742153951315470.a, A153126.P18375658979025609741.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A153126, Nat.add_sub_cancel, A153126.P14031742153951315470.a, A153126.P18375658979025609741.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153126

/-! ## A153126.P18375658979025609741

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=33`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153126

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P18375658979025609741.Spec : Prop :=
  ∀ n, P18375658979025609741.a n = A153126 n

theorem P18375658979025609741.correct : P18375658979025609741.Spec := by
  intro n
  simp only [A153126]

end A153126

/-! ## A153126.P8178215701628280258

`or(1, n)+∑[5*n]`
-/

namespace A153126.P8178215701628280258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153126.P8178215701628280258

namespace A153126

/-- `or(1, n)+∑[5*n]` -/
def P8178215701628280258.Spec : Prop :=
  ∀ n, (P8178215701628280258.a n : ℤ) = A153126 n

end A153126

/-! ## A153126.P6169633725972129435

`∑[xor(1, 5*n)]+n`
-/

namespace A153126.P6169633725972129435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A153126.P6169633725972129435

namespace A153126

/-- `∑[xor(1, 5*n)]+n` -/
def P6169633725972129435.Spec : Prop :=
  ∀ n, (P6169633725972129435.a n : ℤ) = A153126 n

end A153126

/-! ## A153126.P14931877964655052085

`∑[a(n-2)+10]` with `a(0)=1, a(1)=5, a(2)=12`
-/

namespace A153126.P14931877964655052085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 12] fun n f1 =>
  f1 (n - 2) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153126.P14931877964655052085

namespace A153126

/-- `∑[a(n-2)+10]` -/
def P14931877964655052085.Spec : Prop :=
  ∀ n, (P14931877964655052085.a n : ℤ) = A153126 n

end A153126

/-! ## A153126.P12351444945458970568

`∑[∑[10-a(n-1)]]` with `a(0)=1, a(1)=4, a(2)=7`
-/

namespace A153126.P12351444945458970568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 7] fun n f2 =>
  10 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153126.P12351444945458970568

namespace A153126

/-- `∑[∑[10-a(n-1)]]` -/
def P12351444945458970568.Spec : Prop :=
  ∀ n, P12351444945458970568.a n = A153126 n

end A153126

/-! ## A153126.P1385426226324186642

`n*(5*n+2)-a(n-1)` with `a(0)=1`
-/

namespace A153126.P1385426226324186642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n * (5 * n + 2) : ℤ) - a (n - 1)

end

end A153126.P1385426226324186642

namespace A153126

/-- `n*(5*n+2)-a(n-1)` -/
def P1385426226324186642.Spec : Prop :=
  ∀ n, P1385426226324186642.a n = A153126 n

end A153126

/-! ## A153126.P172876663497362712

`∑[xor(1, A008706(n))+1]`
-/

namespace A153126.P172876663497362712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008706 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153126.P172876663497362712

namespace A153126

/-- `∑[xor(1, A008706(n))+1]` -/
def P172876663497362712.Spec : Prop :=
  ∀ n, P172876663497362712.a n = A153126 n

end A153126

/-! ## A153126.P3017367793773042684

`∑[A271508(n+1)]+n`
-/

namespace A153126.P3017367793773042684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A153126.P3017367793773042684

namespace A153126

/-- `∑[A271508(n+1)]+n` -/
def P3017367793773042684.Spec : Prop :=
  ∀ n, P3017367793773042684.a n = A153126 n

end A153126

/-! ## A153126.P8256290060176159589

`∑[6*n+1-A014681(n)]`
-/

namespace A153126.P8256290060176159589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) - A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153126.P8256290060176159589

namespace A153126

/-- `∑[6*n+1-A014681(n)]` -/
def P8256290060176159589.Spec : Prop :=
  ∀ n, P8256290060176159589.a n = A153126 n

end A153126

/-! ## A153126.P16866838431410908599

`A052928(n)+A005891(n)`
-/

namespace A153126.P16866838431410908599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n + A005891 n

end

end A153126.P16866838431410908599

namespace A153126

/-- `A052928(n)+A005891(n)` -/
def P16866838431410908599.Spec : Prop :=
  ∀ n, P16866838431410908599.a n = A153126 n

end A153126

/-! ## A153126.P15366217333337305382

`A084263(n)+A014106(n)`
-/

namespace A153126.P15366217333337305382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084263 n + A014106 n

end

end A153126.P15366217333337305382

namespace A153126

/-- `A084263(n)+A014106(n)` -/
def P15366217333337305382.Spec : Prop :=
  ∀ n, P15366217333337305382.a n = A153126 n

end A153126

/-! ## A153126.P7831586601447441737

`A077221(n)+A052905(n)`
-/

namespace A153126.P7831586601447441737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n + A052905 n

end

end A153126.P7831586601447441737

namespace A153126

/-- `A077221(n)+A052905(n)` -/
def P7831586601447441737.Spec : Prop :=
  ∀ n, P7831586601447441737.a n = A153126 n

end A153126

/-! ## A153126.P13660585717483304727

`A084265(n)+A046092(n)`
-/

namespace A153126.P13660585717483304727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n + A046092 n

end

end A153126.P13660585717483304727

namespace A153126

/-- `A084265(n)+A046092(n)` -/
def P13660585717483304727.Spec : Prop :=
  ∀ n, P13660585717483304727.a n = A153126 n

end A153126

/-! ## A153126.P10487895772899437990

`A109613(n)+A028895(n)`
-/

namespace A153126.P10487895772899437990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A028895 n

end

end A153126.P10487895772899437990

namespace A153126

/-- `A109613(n)+A028895(n)` -/
def P10487895772899437990.Spec : Prop :=
  ∀ n, P10487895772899437990.a n = A153126 n

end A153126

/-! ## A153126.P14831849459408664928

`A195016(n)+A033999(n)`
-/

namespace A153126.P14831849459408664928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195016 n + A033999 n

end

end A153126.P14831849459408664928

namespace A153126

/-- `A195016(n)+A033999(n)` -/
def P14831849459408664928.Spec : Prop :=
  ∀ n, P14831849459408664928.a n = A153126 n

end A153126

/-! ## A153126.P14861590317712114499

`A139596(n)+A125577(n)`
-/

namespace A153126.P14861590317712114499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139596 n + A125577 n

end

end A153126.P14861590317712114499

namespace A153126

/-- `A139596(n)+A125577(n)` -/
def P14861590317712114499.Spec : Prop :=
  ∀ n, P14861590317712114499.a n = A153126 n

end A153126

/-! ## A153126.P9382833649295033366

`A192136(n)+A146763(n)`
-/

namespace A153126.P9382833649295033366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n + A146763 n

end

end A153126.P9382833649295033366

namespace A153126

/-- `A192136(n)+A146763(n)` -/
def P9382833649295033366.Spec : Prop :=
  ∀ n, P9382833649295033366.a n = A153126 n

end A153126

/-! ## A153126.P1884877776633349629

`A317298(n)+A055998(n)`
-/

namespace A153126.P1884877776633349629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n + A055998 n

end

end A153126.P1884877776633349629

namespace A153126

/-- `A317298(n)+A055998(n)` -/
def P1884877776633349629.Spec : Prop :=
  ∀ n, P1884877776633349629.a n = A153126 n

end A153126

/-!
# A153127: a(n) = (2*n + 1)*(5*n + 6).

The programs for A153127, the canonical program `A153127.P1999301690800901438` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153127 has offset 0).

The definition of A153127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(5*n+6)` (program `A153127.P1999301690800901438`, by `A153127.P1999301690800901438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153127.P1999301690800901438

`(2*n+1)*(5*n+6)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153127

/-- `(2*n+1)*(5*n+6)` -/
def P1999301690800901438.Spec : Prop :=
  ∀ n, (P1999301690800901438.a n : ℤ) = A153127 n

theorem P1999301690800901438.correct : P1999301690800901438.Spec := by
  intro n
  simp only [A153127]

end A153127

/-! ## A153127.P1455748727250444195

`A153126(2*n+1)`
-/

namespace A153127.P1455748727250444195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153126 (2 * n + 1)

end

end A153127.P1455748727250444195

namespace A153127

/-- `A153126(2*n+1)` -/
def P1455748727250444195.Spec : Prop :=
  ∀ n, P1455748727250444195.a n = A153127 n

end A153127

/-! ## A153127.P2372791872080591572

`A000566(2*(n+1))-1`
-/

namespace A153127.P2372791872080591572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (2 * (n + 1)) - 1

end

end A153127.P2372791872080591572

namespace A153127

/-- `A000566(2*(n+1))-1` -/
def P2372791872080591572.Spec : Prop :=
  ∀ n, P2372791872080591572.a n = A153127 n

end A153127

/-! ## A153127.P5406891154776513700

`∑[a(n-1)+20]` with `a(0)=6, a(1)=27`
-/

namespace A153127.P5406891154776513700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 27] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153127.P5406891154776513700

namespace A153127

/-- `∑[a(n-1)+20]` -/
def P5406891154776513700.Spec : Prop :=
  ∀ n, (P5406891154776513700.a n : ℤ) = A153127 n

end A153127

/-! ## A153127.P10391686455646955330

`A195018(n+1)-1`
-/

namespace A153127.P10391686455646955330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195018 (n + 1) - 1

end

end A153127.P10391686455646955330

namespace A153127

/-- `A195018(n+1)-1` -/
def P10391686455646955330.Spec : Prop :=
  ∀ n, P10391686455646955330.a n = A153127 n

theorem P10391686455646955330.correct : P10391686455646955330.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P10391686455646955330.a, A153127.P1999301690800901438.a, A195018, A195018.P10780825552711397623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P1796474862917843874

`∑[A063144(n+1)]-2`
-/

namespace A153127.P1796474862917843874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A153127.P1796474862917843874

namespace A153127

/-- `∑[A063144(n+1)]-2` -/
def P1796474862917843874.Spec : Prop :=
  ∀ n, P1796474862917843874.a n = A153127 n

end A153127

/-! ## A153127.P4347658855980091806

`(n+1)*A017353(n)-1`
-/

namespace A153127.P4347658855980091806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017353 n - 1

end

end A153127.P4347658855980091806

namespace A153127

/-- `(n+1)*A017353(n)-1` -/
def P4347658855980091806.Spec : Prop :=
  ∀ n, P4347658855980091806.a n = A153127 n

theorem P4347658855980091806.correct : P4347658855980091806.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P4347658855980091806.a, A153127.P1999301690800901438.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P13036949542712623074

`(n+1)*A017341(n)+n`
-/

namespace A153127.P13036949542712623074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017341 n + (n : ℤ)

end

end A153127.P13036949542712623074

namespace A153127

/-- `(n+1)*A017341(n)+n` -/
def P13036949542712623074.Spec : Prop :=
  ∀ n, P13036949542712623074.a n = A153127 n

theorem P13036949542712623074.correct : P13036949542712623074.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P13036949542712623074.a, A153127.P1999301690800901438.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P3334820944956711569

`A158447(n+1)-3*(n+1)`
-/

namespace A153127.P3334820944956711569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158447 (n + 1) - (3 * (n + 1) : ℤ)

end

end A153127.P3334820944956711569

namespace A153127

/-- `A158447(n+1)-3*(n+1)` -/
def P3334820944956711569.Spec : Prop :=
  ∀ n, P3334820944956711569.a n = A153127 n

theorem P3334820944956711569.correct : P3334820944956711569.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P3334820944956711569.a, A153127.P1999301690800901438.a, A158447, A158447.P7721528758655696785.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P12098160155739872887

`A033571(n)+A017329(n)`
-/

namespace A153127.P12098160155739872887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033571 n + A017329 n

end

end A153127.P12098160155739872887

namespace A153127

/-- `A033571(n)+A017329(n)` -/
def P12098160155739872887.Spec : Prop :=
  ∀ n, P12098160155739872887.a n = A153127 n

theorem P12098160155739872887.correct : P12098160155739872887.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P12098160155739872887.a, A153127.P1999301690800901438.a, A017329, A017329.P13641332030280969901.a, A033571, A033571.P11165558806189646725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P3745087875009902310

`A080860(n)+A017581(n)`
-/

namespace A153127.P3745087875009902310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080860 n + A017581 n

end

end A153127.P3745087875009902310

namespace A153127

/-- `A080860(n)+A017581(n)` -/
def P3745087875009902310.Spec : Prop :=
  ∀ n, P3745087875009902310.a n = A153127 n

theorem P3745087875009902310.correct : P3745087875009902310.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P3745087875009902310.a, A153127.P1999301690800901438.a, A017581, A017581.P8854877261644846518.a, A080860, A080860.P16619193845645420021.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P1659803401332301135

`A078371(n)+A033570(n)`
-/

namespace A153127.P1659803401332301135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 n + A033570 n

end

end A153127.P1659803401332301135

namespace A153127

/-- `A078371(n)+A033570(n)` -/
def P1659803401332301135.Spec : Prop :=
  ∀ n, P1659803401332301135.a n = A153127 n

theorem P1659803401332301135.correct : P1659803401332301135.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P1659803401332301135.a, A153127.P1999301690800901438.a, A033570, A033570.P8308357737011808276.a, A078371, A078371.P2557264616226656584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P7322709608269727320

`A163761(n)+A017053(n)`
-/

namespace A153127.P7322709608269727320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163761 n + A017053 n

end

end A153127.P7322709608269727320

namespace A153127

/-- `A163761(n)+A017053(n)` -/
def P7322709608269727320.Spec : Prop :=
  ∀ n, P7322709608269727320.a n = A153127 n

theorem P7322709608269727320.correct : P7322709608269727320.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P7322709608269727320.a, A153127.P1999301690800901438.a, A017053, A017053.P7458143650627556555.a, A163761, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P1152511690968498723

`A160749(n)+A081271(n)`
-/

namespace A153127.P1152511690968498723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160749 n + A081271 n

end

end A153127.P1152511690968498723

namespace A153127

/-- `A160749(n)+A081271(n)` -/
def P1152511690968498723.Spec : Prop :=
  ∀ n, P1152511690968498723.a n = A153127 n

end A153127

/-! ## A153127.P13397479310352687020

`A273366(n)+A017029(n)`
-/

namespace A153127.P13397479310352687020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273366 n + A017029 n

end

end A153127.P13397479310352687020

namespace A153127

/-- `A273366(n)+A017029(n)` -/
def P13397479310352687020.Spec : Prop :=
  ∀ n, P13397479310352687020.a n = A153127 n

theorem P13397479310352687020.correct : P13397479310352687020.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P13397479310352687020.a, A153127.P1999301690800901438.a, A017029, A017029.P18040034652068019793.a, A273366, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P9475375925102680629

`A259055(n)+A165900(n)`
-/

namespace A153127.P9475375925102680629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n + A165900 n

end

end A153127.P9475375925102680629

namespace A153127

/-- `A259055(n)+A165900(n)` -/
def P9475375925102680629.Spec : Prop :=
  ∀ n, P9475375925102680629.a n = A153127 n

theorem P9475375925102680629.correct : P9475375925102680629.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P9475375925102680629.a, A153127.P1999301690800901438.a, A165900, A165900.P16246243669433487557.a, A259055, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P2023352237312142736

`A272039(n)+A154609(n)`
-/

namespace A153127.P2023352237312142736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 n + A154609 n

end

end A153127.P2023352237312142736

namespace A153127

/-- `A272039(n)+A154609(n)` -/
def P2023352237312142736.Spec : Prop :=
  ∀ n, P2023352237312142736.a n = A153127 n

theorem P2023352237312142736.correct : P2023352237312142736.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P2023352237312142736.a, A153127.P1999301690800901438.a, A154609, A154609.P1978391777600562763.a, A272039, A272039.P16521876396814227489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P11479547595328857859

`A235332(n)+A211013(n)`
-/

namespace A153127.P11479547595328857859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235332 n + A211013 n

end

end A153127.P11479547595328857859

namespace A153127

/-- `A235332(n)+A211013(n)` -/
def P11479547595328857859.Spec : Prop :=
  ∀ n, P11479547595328857859.a n = A153127 n

end A153127

/-! ## A153127.P4245045763153770043

`A154105(n)-A084849(n)`
-/

namespace A153127.P4245045763153770043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154105 n - A084849 n

end

end A153127.P4245045763153770043

namespace A153127

/-- `A154105(n)-A084849(n)` -/
def P4245045763153770043.Spec : Prop :=
  ∀ n, P4245045763153770043.a n = A153127 n

theorem P4245045763153770043.correct : P4245045763153770043.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P4245045763153770043.a, A153127.P1999301690800901438.a, A084849, A084849.P10620509709519408572.a, A154105, A154105.P6664719848169599409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-! ## A153127.P7754658616130032443

`A164016(n)-A139275(n)`
-/

namespace A153127.P7754658616130032443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164016 n - A139275 n

end

end A153127.P7754658616130032443

namespace A153127

/-- `A164016(n)-A139275(n)` -/
def P7754658616130032443.Spec : Prop :=
  ∀ n, P7754658616130032443.a n = A153127 n

theorem P7754658616130032443.correct : P7754658616130032443.Spec := by
  intro n
  simp only [A153127, Nat.add_sub_cancel, A153127.P7754658616130032443.a, A153127.P1999301690800901438.a, A139275, A139275.P8551963079479354628.a, A164016, A164016.P9958735219434589405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153127

/-!
# A153128: Prime numbers such that the sum of any 2 or 4 consecutive terms are averages of twin prime pairs and sum of any 3 or 5 consecutive terms are primes.

The programs for A153128, there is no canonical definition to state claims against.
-/

/-! ## A153128.P7056226987403414653

`p?[A175515(2*(n+1))-24]`
-/

namespace A153128.P7056226987403414653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175515 (2 * (n + 1)) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153128.P7056226987403414653

/-!
# A153129: Numbers n such that 8*n + 5 is not prime.

The programs for A153129, the canonical program `A153129.P13567585466040387804` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153129 has offset 1).

The definition of A153129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153129.P13567585466040387804

`comp[A105133(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153129

/-- `comp[A105133(n+1)]` -/
def P13567585466040387804.Spec : Prop :=
  ∀ n, (P13567585466040387804.a n : ℤ) = A153129 (n + 1)

theorem P13567585466040387804.correct : P13567585466040387804.Spec := by
  intro n
  simp only [A153129, Nat.add_sub_cancel]

end A153129

/-! ## A153129.P1813469204272085191

`comp[A005125(n+1)-1]`
-/

namespace A153129.P1813469204272085191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005125 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153129.P1813469204272085191

namespace A153129

/-- `comp[A005125(n+1)-1]` -/
def P1813469204272085191.Spec : Prop :=
  ∀ n, (P1813469204272085191.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P8608800818387956726

`lt[1, A001222(8*n+5)]`
-/

namespace A153129.P8608800818387956726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153129.P8608800818387956726

namespace A153129

/-- `lt[1, A001222(8*n+5)]` -/
def P8608800818387956726.Spec : Prop :=
  ∀ n, (P8608800818387956726.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P14375197849793384850

`lt[2, A000005(8*n+5)]`
-/

namespace A153129.P14375197849793384850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153129.P14375197849793384850

namespace A153129

/-- `lt[2, A000005(8*n+5)]` -/
def P14375197849793384850.Spec : Prop :=
  ∀ n, (P14375197849793384850.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P1181445207856841592

`lt[A020639(8*n+5), n+2]`
-/

namespace A153129.P1181445207856841592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153129.P1181445207856841592

namespace A153129

/-- `lt[A020639(8*n+5), n+2]` -/
def P1181445207856841592.Spec : Prop :=
  ∀ n, (P1181445207856841592.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P12934854512101161470

`lt[2, A175462(n)]`
-/

namespace A153129.P12934854512101161470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153129.P12934854512101161470

namespace A153129

/-- `lt[2, A175462(n)]` -/
def P12934854512101161470.Spec : Prop :=
  ∀ n, (P12934854512101161470.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P13073257431116654223

`lt[A006530(8*n+5), A016813(n)]`
-/

namespace A153129.P13073257431116654223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153129.P13073257431116654223

namespace A153129

/-- `lt[A006530(8*n+5), A016813(n)]` -/
def P13073257431116654223.Spec : Prop :=
  ∀ n, (P13073257431116654223.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P11259904686148502411

`eq[1, A107393(A017221(n)-n)]`
-/

namespace A153129.P11259904686148502411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A017221 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153129.P11259904686148502411

namespace A153129

/-- `eq[1, A107393(A017221(n)-n)]` -/
def P11259904686148502411.Spec : Prop :=
  ∀ n, (P11259904686148502411.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P9274051097249789832

`eq[0, A080908(2*n+1)]`
-/

namespace A153129.P9274051097249789832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080908 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153129.P9274051097249789832

namespace A153129

/-- `eq[0, A080908(2*n+1)]` -/
def P9274051097249789832.Spec : Prop :=
  ∀ n, (P9274051097249789832.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P5379838649361485025

`eq[1, A260821(2*n+1)]`
-/

namespace A153129.P5379838649361485025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260821 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153129.P5379838649361485025

namespace A153129

/-- `eq[1, A260821(2*n+1)]` -/
def P5379838649361485025.Spec : Prop :=
  ∀ n, (P5379838649361485025.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P3478290145365676086

`lt[1, A037039(2*n+1)]`
-/

namespace A153129.P3478290145365676086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037039 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153129.P3478290145365676086

namespace A153129

/-- `lt[1, A037039(2*n+1)]` -/
def P3478290145365676086.Spec : Prop :=
  ∀ n, (P3478290145365676086.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P17620014019361620485

`lt[1, A345468(2*n+1)]`
-/

namespace A153129.P17620014019361620485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345468 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153129.P17620014019361620485

namespace A153129

/-- `lt[1, A345468(2*n+1)]` -/
def P17620014019361620485.Spec : Prop :=
  ∀ n, (P17620014019361620485.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P9693713633634550851

`lt[2, A278223(A267872(2*n+1))]`
-/

namespace A153129.P9693713633634550851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A267872 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153129.P9693713633634550851

namespace A153129

/-- `lt[2, A278223(A267872(2*n+1))]` -/
def P9693713633634550851.Spec : Prop :=
  ∀ n, (P9693713633634550851.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P17758695450531089707

`lt[A051541(2*n+1), A051533(2*n+1)]`
-/

namespace A153129.P17758695450531089707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051541 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153129.P17758695450531089707

namespace A153129

/-- `lt[A051541(2*n+1), A051533(2*n+1)]` -/
def P17758695450531089707.Spec : Prop :=
  ∀ n, (P17758695450531089707.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P5880254019645814639

`eq[A096500(A008574(2*n+1)), A096500(2*n+1)]`
-/

namespace A153129.P5880254019645814639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (A008574 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153129.P5880254019645814639

namespace A153129

/-- `eq[A096500(A008574(2*n+1)), A096500(2*n+1)]` -/
def P5880254019645814639.Spec : Prop :=
  ∀ n, (P5880254019645814639.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P17330467727464805673

`eq[1, A088423(4*n+1)]+1`
-/

namespace A153129.P17330467727464805673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088423 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153129.P17330467727464805673

namespace A153129

/-- `eq[1, A088423(4*n+1)]+1` -/
def P17330467727464805673.Spec : Prop :=
  ∀ n, (P17330467727464805673.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P8616666027295230000

`lt[2, A099774(4*n+3)]`
-/

namespace A153129.P8616666027295230000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153129.P8616666027295230000

namespace A153129

/-- `lt[2, A099774(4*n+3)]` -/
def P8616666027295230000.Spec : Prop :=
  ∀ n, (P8616666027295230000.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P15310704146147010975

`lt[1, A107286(8*n+5)]`
-/

namespace A153129.P15310704146147010975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153129.P15310704146147010975

namespace A153129

/-- `lt[1, A107286(8*n+5)]` -/
def P15310704146147010975.Spec : Prop :=
  ∀ n, (P15310704146147010975.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P15485081045959453851

`lt[1, A016014(A130824(n+1))]`
-/

namespace A153129.P15485081045959453851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A130824 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153129.P15485081045959453851

namespace A153129

/-- `lt[1, A016014(A130824(n+1))]` -/
def P15485081045959453851.Spec : Prop :=
  ∀ n, (P15485081045959453851.a n : ℤ) = A153129 (n + 1)

end A153129

/-! ## A153129.P5441835934265810177

`lt[1, A193773(2*A005408(n))]`
-/

namespace A153129.P5441835934265810177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 (2 * A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153129.P5441835934265810177

namespace A153129

/-- `lt[1, A193773(2*A005408(n))]` -/
def P5441835934265810177.Spec : Prop :=
  ∀ n, (P5441835934265810177.a n : ℤ) = A153129 (n + 1)

end A153129

/-!
# A153130: Period 6: repeat [1, 2, 4, 8, 7, 5].

The programs for A153130, the canonical program `A153130.P4449503062511694943` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153130 has offset 0).

The definition of A153130 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A153130.anchor (n : ℕ) : A153130 n = (([1, 2, 4, 8, 7, 5].getD (n % 6) 0 : ℕ) : ℤ)` in `Proof.A153.A153130`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153130.P4449503062511694943

`a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=7, a(5)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153130

/-- `a(n-6)` -/
def P4449503062511694943.Spec : Prop :=
  ∀ n, (P4449503062511694943.a n : ℤ) = A153130 n

theorem P4449503062511694943.correct : P4449503062511694943.Spec := by
  intro n
  simp only [A153130]

end A153130

/-!
# A153133: Primes of the form 2^k+3^(k-1).

The programs for A153133, there is no canonical definition to state claims against.
-/

/-! ## A153133.P6813694133725982215

`A085279(A082400(n+1))`
-/

namespace A153133.P6813694133725982215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 (A082400 (n + 1)).toNat

end

end A153133.P6813694133725982215

/-! ## A153133.P13230417737841790237

`A085279(A123924(n+1)+1)`
-/

namespace A153133.P13230417737841790237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 (A123924 (n + 1) + 1).toNat

end

end A153133.P13230417737841790237

/-! ## A153133.P11454833835873499151

`∩[A004051(n+1), A085279(n)]`
-/

namespace A153133.P11454833835873499151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153133.P11454833835873499151

/-! ## A153133.P6616795424148357566

`A254028(A082400(n+1)-1)-3`
-/

namespace A153133.P6616795424148357566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254028 (A082400 (n + 1) - 1).toNat - 3

end

end A153133.P6616795424148357566

/-! ## A153133.P4123993194802363180

`A123601(A123924(n+1))`
-/

namespace A153133.P4123993194802363180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123601 (A123924 (n + 1)).toNat

end

end A153133.P4123993194802363180

/-!
# A153134: Numbers k such that 6k - 7 is prime.

The programs for A153134, the canonical program `A153134.P3803390437604555717` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153134 has offset 1).

The definition of A153134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153134.P3803390437604555717

`A024898(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153134

/-- `A024898(n+1)+1` -/
def P3803390437604555717.Spec : Prop :=
  ∀ n, P3803390437604555717.a n = A153134 (n + 1)

theorem P3803390437604555717.correct : P3803390437604555717.Spec := by
  intro n
  simp only [A153134, Nat.add_sub_cancel]

end A153134

/-! ## A153134.P255992081001490511

`A059325(n+1)+2`
-/

namespace A153134.P255992081001490511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) + 2

end

end A153134.P255992081001490511

namespace A153134

/-- `A059325(n+1)+2` -/
def P255992081001490511.Spec : Prop :=
  ∀ n, P255992081001490511.a n = A153134 (n + 1)

theorem P255992081001490511.correct : P255992081001490511.Spec := by
  intro n
  simp only [A153134, Nat.add_sub_cancel, A153134.P255992081001490511.a, A153134.P3803390437604555717.a, A024898, A024898.P2838277204682131429.a, A059325, A059325.P16762475601172180159.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153134

/-! ## A153134.P12079850356056327612

`(A173178(n+1)+5)/3`
-/

namespace A153134.P12079850356056327612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173178 (n + 1) + 5 : ℚ) / 3

end

end A153134.P12079850356056327612

namespace A153134

/-- `(A173178(n+1)+5)/3` -/
def P12079850356056327612.Spec : Prop :=
  ∀ n, P12079850356056327612.a n = (A153134 (n + 1) : ℚ)

theorem P12079850356056327612.correct : P12079850356056327612.Spec := by
  intro n
  simp only [A153134, Nat.add_sub_cancel, A153134.P12079850356056327612.a, A153134.P3803390437604555717.a, A024898, A024898.P2838277204682131429.a, A173178, A173178.P13841244607503590073.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A059325, A059325.P16762475601172180159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153134

/-! ## A153134.P10613593593973138361

`floor(A007528(n+1)/6)+2`
-/

namespace A153134.P10613593593973138361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007528 (n + 1) : ℚ) / 6⌋ + 2

end

end A153134.P10613593593973138361

namespace A153134

/-- `floor(A007528(n+1)/6)+2` -/
def P10613593593973138361.Spec : Prop :=
  ∀ n, P10613593593973138361.a n = A153134 (n + 1)

end A153134

/-! ## A153134.P7273660040876520909

`eq[1, A245839(2*n+1)]+2`
-/

namespace A153134.P7273660040876520909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245839 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153134.P7273660040876520909

namespace A153134

/-- `eq[1, A245839(2*n+1)]+2` -/
def P7273660040876520909.Spec : Prop :=
  ∀ n, (P7273660040876520909.a n : ℤ) = A153134 (n + 1)

end A153134

/-! ## A153134.P9452864677588901216

`A358565(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A153134.P9452864677588901216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A358565 (n + 1) + a (n - 1)

end

end A153134.P9452864677588901216

namespace A153134

/-- `A358565(n+1)+a(n-1)` -/
def P9452864677588901216.Spec : Prop :=
  ∀ n, P9452864677588901216.a n = A153134 (n + 1)

end A153134

/-! ## A153134.P16767512120590768074

`A022760(n+1)-A153218(n+1)`
-/

namespace A153134.P16767512120590768074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022760 (n + 1) - A153218 (n + 1)

end

end A153134.P16767512120590768074

namespace A153134

/-- `A022760(n+1)-A153218(n+1)` -/
def P16767512120590768074.Spec : Prop :=
  ∀ n, P16767512120590768074.a n = A153134 (n + 1)

theorem P16767512120590768074.correct : P16767512120590768074.Spec := by
  intro n
  simp only [A153134, Nat.add_sub_cancel, A153134.P16767512120590768074.a, A153134.P3803390437604555717.a, A022760, A022760.P12074805106371372305.a, A024898, A024898.P2838277204682131429.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153134

/-! ## A153134.P2779629148414364772

`A022760(n+1)+1-A024899(n+1)`
-/

namespace A153134.P2779629148414364772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022760 (n + 1) + (1 - A024899 (n + 1))

end

end A153134.P2779629148414364772

namespace A153134

/-- `A022760(n+1)+1-A024899(n+1)` -/
def P2779629148414364772.Spec : Prop :=
  ∀ n, P2779629148414364772.a n = A153134 (n + 1)

end A153134

/-! ## A153134.P989953383447534463

`A024899(n+1)+1-A139394(n+1)`
-/

namespace A153134.P989953383447534463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) + (1 - A139394 (n + 1))

end

end A153134.P989953383447534463

namespace A153134

/-- `A024899(n+1)+1-A139394(n+1)` -/
def P989953383447534463.Spec : Prop :=
  ∀ n, P989953383447534463.a n = A153134 (n + 1)

theorem P989953383447534463.correct : P989953383447534463.Spec := by
  intro n
  simp only [A153134, Nat.add_sub_cancel, A153134.P989953383447534463.a, A153134.P3803390437604555717.a, A024898, A024898.P2838277204682131429.a, A024899, A024899.P11184081980913290394.a, A139394, A139394.P5885882405696362686.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A024892, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153134

/-! ## A153134.P2409519586861172926

`A153218(n+1)+2-A139394(n+1)`
-/

namespace A153134.P2409519586861172926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + (2 - A139394 (n + 1))

end

end A153134.P2409519586861172926

namespace A153134

/-- `A153218(n+1)+2-A139394(n+1)` -/
def P2409519586861172926.Spec : Prop :=
  ∀ n, P2409519586861172926.a n = A153134 (n + 1)

end A153134

/-! ## A153134.P6380226824664212024

`∪[A002822(n+1), A121763(n+1)]+1`
-/

namespace A153134.P6380226824664212024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A153134.P6380226824664212024

namespace A153134

/-- `∪[A002822(n+1), A121763(n+1)]+1` -/
def P6380226824664212024.Spec : Prop :=
  ∀ n, (P6380226824664212024.a n : ℤ) = A153134 (n + 1)

end A153134

/-! ## A153134.P10394758837547380527

`A087370(n+2)/2+1`
-/

namespace A153134.P10394758837547380527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087370 (n + 2) : ℚ) / 2 + 1

end

end A153134.P10394758837547380527

namespace A153134

/-- `A087370(n+2)/2+1` -/
def P10394758837547380527.Spec : Prop :=
  ∀ n, P10394758837547380527.a n = (A153134 (n + 1) : ℚ)

end A153134

/-! ## A153134.P10140250291049735713

`(A228121(n+2)+1)/2`
-/

namespace A153134.P10140250291049735713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228121 (n + 2) + 1 : ℚ) / 2

end

end A153134.P10140250291049735713

namespace A153134

/-- `(A228121(n+2)+1)/2` -/
def P10140250291049735713.Spec : Prop :=
  ∀ n, P10140250291049735713.a n = (A153134 (n + 1) : ℚ)

end A153134

/-! ## A153134.P4848225277961135807

`A088879(n+2)/2+2`
-/

namespace A153134.P4848225277961135807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088879 (n + 2) : ℚ) / 2 + 2

end

end A153134.P4848225277961135807

namespace A153134

/-- `A088879(n+2)/2+2` -/
def P4848225277961135807.Spec : Prop :=
  ∀ n, P4848225277961135807.a n = (A153134 (n + 1) : ℚ)

end A153134

/-! ## A153134.P15170108151896474313

`(A024893(n+2)+3)/2`
-/

namespace A153134.P15170108151896474313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024893 (n + 2) + 3 : ℚ) / 2

end

end A153134.P15170108151896474313

namespace A153134

/-- `(A024893(n+2)+3)/2` -/
def P15170108151896474313.Spec : Prop :=
  ∀ n, P15170108151896474313.a n = (A153134 (n + 1) : ℚ)

end A153134

/-! ## A153134.P14991949655567598372

`A034934(n+2)-A173178(n+1)`
-/

namespace A153134.P14991949655567598372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 2) - A173178 (n + 1)

end

end A153134.P14991949655567598372

namespace A153134

/-- `A034934(n+2)-A173178(n+1)` -/
def P14991949655567598372.Spec : Prop :=
  ∀ n, P14991949655567598372.a n = A153134 (n + 1)

end A153134

/-! ## A153134.P724117299833195196

`A116579(A091177(n+2))+2`
-/

namespace A153134.P724117299833195196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116579 (A091177 (n + 2)).toNat + 2

end

end A153134.P724117299833195196

namespace A153134

/-- `A116579(A091177(n+2))+2` -/
def P724117299833195196.Spec : Prop :=
  ∀ n, P724117299833195196.a n = A153134 (n + 1)

end A153134

/-! ## A153134.P8484921640195631121

`eq[1, A075743(2*n+1)]+2`
-/

namespace A153134.P8484921640195631121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153134.P8484921640195631121

namespace A153134

/-- `eq[1, A075743(2*n+1)]+2` -/
def P8484921640195631121.Spec : Prop :=
  ∀ n, (P8484921640195631121.a n : ℤ) = A153134 (n + 1)

end A153134

/-! ## A153134.P12507351884924455982

`eq[2, A000005(6*n+5)]+2`
-/

namespace A153134.P12507351884924455982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153134.P12507351884924455982

namespace A153134

/-- `eq[2, A000005(6*n+5)]+2` -/
def P12507351884924455982.Spec : Prop :=
  ∀ n, (P12507351884924455982.a n : ℤ) = A153134 (n + 1)

end A153134

/-! ## A153134.P15418766677109402133

`eq[1, A001222(3*(2*n+1)+2)]+2`
-/

namespace A153134.P15418766677109402133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (2 * n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153134.P15418766677109402133

namespace A153134

/-- `eq[1, A001222(3*(2*n+1)+2)]+2` -/
def P15418766677109402133.Spec : Prop :=
  ∀ n, (P15418766677109402133.a n : ℤ) = A153134 (n + 1)

end A153134

/-!
# A153135: Primes p such that 6*p - 7 is also prime.

The programs for A153135, the canonical program `A153135.P6228416679283072176` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153135 has offset 1).

The definition of A153135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153135.P6228416679283072176

`p?[A153134(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153135

/-- `p?[A153134(n+1)]` -/
def P6228416679283072176.Spec : Prop :=
  ∀ n, P6228416679283072176.a n = A153135 (n + 1)

theorem P6228416679283072176.correct : P6228416679283072176.Spec := by
  intro n
  simp only [A153135, Nat.add_sub_cancel]

end A153135

/-! ## A153135.P18262206074380700216

`p?[A024898(n+1)+1]`
-/

namespace A153135.P18262206074380700216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153135.P18262206074380700216

namespace A153135

/-- `p?[A024898(n+1)+1]` -/
def P18262206074380700216.Spec : Prop :=
  ∀ n, P18262206074380700216.a n = A153135 (n + 1)

end A153135

/-! ## A153135.P3329072395325336269

`p?[A059325(n+1)+2]`
-/

namespace A153135.P3329072395325336269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153135.P3329072395325336269

namespace A153135

/-- `p?[A059325(n+1)+2]` -/
def P3329072395325336269.Spec : Prop :=
  ∀ n, P3329072395325336269.a n = A153135 (n + 1)

theorem P3329072395325336269.correct : P3329072395325336269.Spec := by
  intro n
  simp only [A153135, Nat.add_sub_cancel, A153135.P3329072395325336269.f1, A153135.P3329072395325336269.a, A153135.P6228416679283072176.f1, A153135.P6228416679283072176.a, A059325, A059325.P16762475601172180159.a, A153134, A153134.P3803390437604555717.a, A024898, A024898.P2838277204682131429.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153135

/-! ## A153135.P9262640685066630194

`filter[A153134(n+1), A010051(#)]`
-/

namespace A153135.P9262640685066630194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153135.P9262640685066630194

namespace A153135

/-- `filter[A153134(n+1), A010051(#)]` -/
def P9262640685066630194.Spec : Prop :=
  ∀ n, P9262640685066630194.a n = A153135 (n + 1)

end A153135

/-! ## A153135.P10390149950663005926

`record[A006530(A024898(n+1)+1)]`
-/

namespace A153135.P10390149950663005926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024898 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153135.P10390149950663005926

namespace A153135

/-- `record[A006530(A024898(n+1)+1)]` -/
def P10390149950663005926.Spec : Prop :=
  ∀ n, P10390149950663005926.a n = A153135 (n + 1)

end A153135

/-! ## A153135.P16736228486910270056

`record[A020639(A024898(n+1)+1)]`
-/

namespace A153135.P16736228486910270056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024898 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153135.P16736228486910270056

namespace A153135

/-- `record[A020639(A024898(n+1)+1)]` -/
def P16736228486910270056.Spec : Prop :=
  ∀ n, P16736228486910270056.a n = A153135 (n + 1)

end A153135

/-! ## A153135.P15925946611461044214

`record[A006530(A059325(n+1)+2)]`
-/

namespace A153135.P15925946611461044214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059325 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153135.P15925946611461044214

namespace A153135

/-- `record[A006530(A059325(n+1)+2)]` -/
def P15925946611461044214.Spec : Prop :=
  ∀ n, P15925946611461044214.a n = A153135 (n + 1)

end A153135

/-! ## A153135.P624816582143712846

`record[A006530(A087370(n+2)+2)]`
-/

namespace A153135.P624816582143712846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087370 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153135.P624816582143712846

namespace A153135

/-- `record[A006530(A087370(n+2)+2)]` -/
def P624816582143712846.Spec : Prop :=
  ∀ n, P624816582143712846.a n = A153135 (n + 1)

end A153135

/-! ## A153135.P2856050810659543929

`∩[A000040(n+1), A153134(n+1)]`
-/

namespace A153135.P2856050810659543929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153135.P2856050810659543929

namespace A153135

/-- `∩[A000040(n+1), A153134(n+1)]` -/
def P2856050810659543929.Spec : Prop :=
  ∀ n, (P2856050810659543929.a n : ℤ) = A153135 (n + 1)

end A153135

/-! ## A153135.P5392976044465949536

`∩[A008578(n+1), A153134(n+1)]`
-/

namespace A153135.P5392976044465949536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153135.P5392976044465949536

namespace A153135

/-- `∩[A008578(n+1), A153134(n+1)]` -/
def P5392976044465949536.Spec : Prop :=
  ∀ n, (P5392976044465949536.a n : ℤ) = A153135 (n + 1)

end A153135

/-! ## A153135.P16797093823815764519

`∩[A153134(n+1), A158611(n+1)]`
-/

namespace A153135.P16797093823815764519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153135.P16797093823815764519

namespace A153135

/-- `∩[A153134(n+1), A158611(n+1)]` -/
def P16797093823815764519.Spec : Prop :=
  ∀ n, (P16797093823815764519.a n : ℤ) = A153135 (n + 1)

end A153135

/-! ## A153135.P16916625475748508207

`∩[A153134(n+1), A182986(n+1)]`
-/

namespace A153135.P16916625475748508207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153135.P16916625475748508207

namespace A153135

/-- `∩[A153134(n+1), A182986(n+1)]` -/
def P16916625475748508207.Spec : Prop :=
  ∀ n, (P16916625475748508207.a n : ℤ) = A153135 (n + 1)

end A153135

/-! ## A153135.P2395846438215281865

`∩[A153134(n+1), A372059(n+1)]`
-/

namespace A153135.P2395846438215281865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153135.P2395846438215281865

namespace A153135

/-- `∩[A153134(n+1), A372059(n+1)]` -/
def P2395846438215281865.Spec : Prop :=
  ∀ n, (P2395846438215281865.a n : ℤ) = A153135 (n + 1)

end A153135

/-! ## A153135.P4265005326477137059

`∩[A000040(n+1), A024898(n+1)+1]`
-/

namespace A153135.P4265005326477137059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153135.P4265005326477137059

namespace A153135

/-- `∩[A000040(n+1), A024898(n+1)+1]` -/
def P4265005326477137059.Spec : Prop :=
  ∀ n, (P4265005326477137059.a n : ℤ) = A153135 (n + 1)

end A153135

/-! ## A153135.P13739989819546634059

`∩[A000040(n+1), A059325(n+1)+2]`
-/

namespace A153135.P13739989819546634059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153135.P13739989819546634059

namespace A153135

/-- `∩[A000040(n+1), A059325(n+1)+2]` -/
def P13739989819546634059.Spec : Prop :=
  ∀ n, (P13739989819546634059.a n : ℤ) = A153135 (n + 1)

end A153135

/-! ## A153135.P17025645951626414973

`eq[A001222(n+2), A075743(2*n+1)]+2`
-/

namespace A153135.P17025645951626414973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A153135.P17025645951626414973

namespace A153135

/-- `eq[A001222(n+2), A075743(2*n+1)]+2` -/
def P17025645951626414973.Spec : Prop :=
  ∀ n, (P17025645951626414973.a n : ℤ) = A153135 (n + 1)

end A153135

/-! ## A153135.P12042489151281070853

`eq[A075743(2*n+1), A078896(n+2)]+2`
-/

namespace A153135.P12042489151281070853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A153135.P12042489151281070853

namespace A153135

/-- `eq[A075743(2*n+1), A078896(n+2)]+2` -/
def P12042489151281070853.Spec : Prop :=
  ∀ n, (P12042489151281070853.a n : ℤ) = A153135 (n + 1)

end A153135

/-! ## A153135.P7450730423804908414

`filter[A153134(n+1), A080339(#)]`
-/

namespace A153135.P7450730423804908414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A153135.P7450730423804908414

namespace A153135

/-- `filter[A153134(n+1), A080339(#)]` -/
def P7450730423804908414.Spec : Prop :=
  ∀ n, P7450730423804908414.a n = A153135 (n + 1)

end A153135

/-! ## A153135.P3400953048505487759

`record[A014963(A024898(n+1)+1)]`
-/

namespace A153135.P3400953048505487759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A024898 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153135.P3400953048505487759

namespace A153135

/-- `record[A014963(A024898(n+1)+1)]` -/
def P3400953048505487759.Spec : Prop :=
  ∀ n, P3400953048505487759.a n = A153135 (n + 1)

end A153135

/-! ## A153135.P2075531303289825421

`record[A014963(A059325(n+1)+2)]`
-/

namespace A153135.P2075531303289825421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A059325 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153135.P2075531303289825421

namespace A153135

/-- `record[A014963(A059325(n+1)+2)]` -/
def P2075531303289825421.Spec : Prop :=
  ∀ n, P2075531303289825421.a n = A153135 (n + 1)

end A153135

/-!
# A153137: Smallest sequence of noncomposite numbers such that no sum of at least two terms is prime.

The programs for A153137, there is no canonical definition to state claims against.
-/

/-! ## A153137.P2610054567789364884

`A006530(∑[ratio[-floor(n²/2)!]])`
-/

namespace A153137.P2610054567789364884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial ⌊(n ^ 2 : ℚ) / 2⌋.toNat : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153137.P2610054567789364884

/-!
# A153138: Smallest sequence of odd primes such that no sum of at least two terms is prime.

The programs for A153138, there is no canonical definition to state claims against.
-/

/-! ## A153138.P7496286732394730324

`A254925(A100793(n))`
-/

namespace A153138.P7496286732394730324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254925 (A100793 n).toNat

end

end A153138.P7496286732394730324

/-! ## A153138.P5571518147009312975

`A006530(C(A254925(n+1), 2))`
-/

namespace A153138.P5571518147009312975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A254925 (n + 1)).toNat 2)

end

end A153138.P5571518147009312975

/-!
# A153140: Coefficients of the second order mock theta function B(q).

The programs for A153140, there is no canonical definition to state claims against.
-/

/-! ## A153140.P13485348600581024430

`A153176(Δ[n²])/2`
-/

namespace A153140.P13485348600581024430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153176 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A153140.P13485348600581024430

/-! ## A153140.P2489424148341080678

`record[A153176(n)/A061393(n)]`
-/

namespace A153140.P2489424148341080678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153176 n : ℚ) / (A061393 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153140.P2489424148341080678

/-! ## A153140.P11980945103490774554

`record[A153176(n)/A072996(n)]`
-/

namespace A153140.P11980945103490774554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153176 n : ℚ) / (A072996 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153140.P11980945103490774554

/-! ## A153140.P11283705538142884853

`record[A153176(n)/A176591(n)]`
-/

namespace A153140.P11283705538142884853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153176 n : ℚ) / (A176591 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153140.P11283705538142884853

/-! ## A153140.P4426049500926370847

`1/2*A153176(A005408(n))`
-/

namespace A153140.P4426049500926370847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A153176 (A005408 n).toNat : ℚ)

end

end A153140.P4426049500926370847

/-! ## A153140.P4365895208703148591

`record[A153176(n+1)/A027760(n+1)]`
-/

namespace A153140.P4365895208703148591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153176 (n + 1) : ℚ) / (A027760 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153140.P4365895208703148591

/-!
# A153141: Permutation of nonnegative integers: A059893-conjugate of A153151.

The programs for A153141, the canonical program `A153141.P2352624869990070463` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153141 has offset 0).

The definition of A153141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153141.P17178641443933886730

`A154442(A154443(n))`
-/

namespace A153141.P17178641443933886730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154442 (A154443 n).toNat

end

end A153141.P17178641443933886730

namespace A153141

/-- `A154442(A154443(n))` -/
def P17178641443933886730.Spec : Prop :=
  ∀ n, P17178641443933886730.a n = A153141 n

end A153141

/-! ## A153141.P12734260820686414515

`A154440(A154445(n))`
-/

namespace A153141.P12734260820686414515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A154445 n).toNat

end

end A153141.P12734260820686414515

namespace A153141

/-- `A154440(A154445(n))` -/
def P12734260820686414515.Spec : Prop :=
  ∀ n, P12734260820686414515.a n = A153141 n

end A153141

/-! ## A153141.P5377330262759535173

`xor(n, A342126(A292600(n)))`
-/

namespace A153141.P5377330262759535173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A342126 (A292600 n).toNat)

end

end A153141.P5377330262759535173

namespace A153141

/-- `xor(n, A342126(A292600(n)))` -/
def P5377330262759535173.Spec : Prop :=
  ∀ n, P5377330262759535173.a n = A153141 n

end A153141

/-! ## A153141.P10791280972856972538

`A154443(n)+A154445(n)-n`
-/

namespace A153141.P10791280972856972538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 n + (A154445 n - (n : ℤ))

end

end A153141.P10791280972856972538

namespace A153141

/-- `A154443(n)+A154445(n)-n` -/
def P10791280972856972538.Spec : Prop :=
  ∀ n, P10791280972856972538.a n = A153141 n

end A153141

/-! ## A153141.P5946635499719295413

`floor(A059894(A059894(4*n+1)+1)/4)`
-/

namespace A153141.P5946635499719295413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059894 (A059894 (4 * n + 1) + 1).toNat : ℚ) / 4⌋

end

end A153141.P5946635499719295413

namespace A153141

/-- `floor(A059894(A059894(4*n+1)+1)/4)` -/
def P5946635499719295413.Spec : Prop :=
  ∀ n, P5946635499719295413.a n = A153141 n

end A153141

/-! ## A153141.P2352624869990070463

`A006068(n)+n-A153142(A006068(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153141

/-- `A006068(n)+n-A153142(A006068(n))` -/
def P2352624869990070463.Spec : Prop :=
  ∀ n, P2352624869990070463.a n = A153141 n

theorem P2352624869990070463.correct : P2352624869990070463.Spec := by
  intro n
  simp only [A153141]

end A153141

/-! ## A153141.P2324666735777270930

`A154436(n)+n-A153142(A154436(n))`
-/

namespace A153141.P2324666735777270930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 n + ((n : ℤ) - A153142 (A154436 n).toNat)

end

end A153141.P2324666735777270930

namespace A153141

/-- `A154436(n)+n-A153142(A154436(n))` -/
def P2324666735777270930.Spec : Prop :=
  ∀ n, P2324666735777270930.a n = A153141 n

end A153141

/-! ## A153141.P10951818111858500001

`A154436(n)+A154443(n)-A154441(A154436(n))`
-/

namespace A153141.P10951818111858500001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 n + (A154443 n - A154441 (A154436 n).toNat)

end

end A153141.P10951818111858500001

namespace A153141

/-- `A154436(n)+A154443(n)-A154441(A154436(n))` -/
def P10951818111858500001.Spec : Prop :=
  ∀ n, P10951818111858500001.a n = A153141 n

end A153141

/-! ## A153141.P1864657543614770050

`A154440(A154448(A154443(A154440(A154439(n)))))`
-/

namespace A153141.P1864657543614770050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A154448 (A154443 (A154440 (A154439 n).toNat).toNat).toNat).toNat

end

end A153141.P1864657543614770050

namespace A153141

/-- `A154440(A154448(A154443(A154440(A154439(n)))))` -/
def P1864657543614770050.Spec : Prop :=
  ∀ n, P1864657543614770050.a n = A153141 n

end A153141

/-!
# A153142: Permutation of nonnegative integers: A059893-conjugate of A153152.

The programs for A153142, the canonical program `A153142.P15201218157463627631` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153142 has offset 0).

The definition of A153142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153142.P15818871714231598180

`A154446(A154439(n))`
-/

namespace A153142.P15818871714231598180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154446 (A154439 n).toNat

end

end A153142.P15818871714231598180

namespace A153142

/-- `A154446(A154439(n))` -/
def P15818871714231598180.Spec : Prop :=
  ∀ n, P15818871714231598180.a n = A153142 n

end A153142

/-! ## A153142.P12118132554602959065

`A154444(A154441(n))`
-/

namespace A153142.P12118132554602959065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154444 (A154441 n).toNat

end

end A153142.P12118132554602959065

namespace A153142

/-- `A154444(A154441(n))` -/
def P12118132554602959065.Spec : Prop :=
  ∀ n, P12118132554602959065.a n = A153142 n

end A153142

/-! ## A153142.P8681620525154193682

`xor(n, A266341(A342126(n)))`
-/

namespace A153142.P8681620525154193682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A266341 (A342126 n).toNat)

end

end A153142.P8681620525154193682

namespace A153142

/-- `xor(n, A266341(A342126(n)))` -/
def P8681620525154193682.Spec : Prop :=
  ∀ n, P8681620525154193682.a n = A153142 n

end A153142

/-! ## A153142.P2776478790148163961

`A154439(n)+A154441(n)-n`
-/

namespace A153142.P2776478790148163961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 n + (A154441 n - (n : ℤ))

end

end A153142.P2776478790148163961

namespace A153142

/-- `A154439(n)+A154441(n)-n` -/
def P2776478790148163961.Spec : Prop :=
  ∀ n, P2776478790148163961.a n = A153142 n

end A153142

/-! ## A153142.P9732063341882580926

`floor(A145342(A145342(4*n+1)+1)/4)`
-/

namespace A153142.P9732063341882580926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145342 (A145342 (4 * n + 1) + 1).toNat : ℚ) / 4⌋

end

end A153142.P9732063341882580926

namespace A153142

/-- `floor(A145342(A145342(4*n+1)+1)/4)` -/
def P9732063341882580926.Spec : Prop :=
  ∀ n, P9732063341882580926.a n = A153142 n

end A153142

/-! ## A153142.P8075563625748849554

`A030109(A145342(n+1))+(lt[2*n, xor(n, 2*n)]+1)%-(n+1)`
-/

namespace A153142.P8075563625748849554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A145342 (n + 1)).toNat + Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A153142.P8075563625748849554

namespace A153142

/-- `A030109(A145342(n+1))+(lt[2*n, xor(n, 2*n)]+1)%-(n+1)` -/
def P8075563625748849554.Spec : Prop :=
  ∀ n, P8075563625748849554.a n = A153142 n

end A153142

/-! ## A153142.P5237513609611334068

`A053644(n)+A030109(A145342(n+1))`
-/

namespace A153142.P5237513609611334068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + A030109 (A145342 (n + 1)).toNat

end

end A153142.P5237513609611334068

namespace A153142

/-- `A053644(n)+A030109(A145342(n+1))` -/
def P5237513609611334068.Spec : Prop :=
  ∀ n, P5237513609611334068.a n = A153142 n

end A153142

/-! ## A153142.P18055611553320642353

`A003188(n)+n-A153141(A003188(n))`
-/

namespace A153142.P18055611553320642353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n + ((n : ℤ) - A153141 (A003188 n).toNat)

end

end A153142.P18055611553320642353

namespace A153142

/-- `A003188(n)+n-A153141(A003188(n))` -/
def P18055611553320642353.Spec : Prop :=
  ∀ n, P18055611553320642353.a n = A153142 n

end A153142

/-! ## A153142.P15201218157463627631

`A087734(n)+A003188(n-A087734(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153142

/-- `A087734(n)+A003188(n-A087734(n))` -/
def P15201218157463627631.Spec : Prop :=
  ∀ n, P15201218157463627631.a n = A153142 n

theorem P15201218157463627631.correct : P15201218157463627631.Spec := by
  intro n
  simp only [A153142]

end A153142

/-! ## A153142.P16458518592765359532

`A154435(n)+n-A153141(A154435(n))`
-/

namespace A153142.P16458518592765359532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 n + ((n : ℤ) - A153141 (A154435 n).toNat)

end

end A153142.P16458518592765359532

namespace A153142

/-- `A154435(n)+n-A153141(A154435(n))` -/
def P16458518592765359532.Spec : Prop :=
  ∀ n, P16458518592765359532.a n = A153142 n

end A153142

/-! ## A153142.P7900188383426255123

`A154435(n)+A154441(n)-A154443(A154435(n))`
-/

namespace A153142.P7900188383426255123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 n + (A154441 n - A154443 (A154435 n).toNat)

end

end A153142.P7900188383426255123

namespace A153142

/-- `A154435(n)+A154441(n)-A154443(A154435(n))` -/
def P7900188383426255123.Spec : Prop :=
  ∀ n, P7900188383426255123.a n = A153142 n

end A153142

/-! ## A153142.P3932800650965802078

`A003188(n)-(A003188(A087734(n))-A087734(n))`
-/

namespace A153142.P3932800650965802078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - (A003188 (A087734 n).toNat - A087734 n)

end

end A153142.P3932800650965802078

namespace A153142

/-- `A003188(n)-(A003188(A087734(n))-A087734(n))` -/
def P3932800650965802078.Spec : Prop :=
  ∀ n, P3932800650965802078.a n = A153142 n

end A153142

/-! ## A153142.P15169036536183324361

`A154439(n)-(A154436(A154435(n))-A154441(n))`
-/

namespace A153142.P15169036536183324361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 n - (A154436 (A154435 n).toNat - A154441 n)

end

end A153142.P15169036536183324361

namespace A153142

/-- `A154439(n)-(A154436(A154435(n))-A154441(n))` -/
def P15169036536183324361.Spec : Prop :=
  ∀ n, P15169036536183324361.a n = A153142 n

end A153142

/-! ## A153142.P12049108336016876235

`A154439(n)-(A154439(A154440(n))-A154441(n))`
-/

namespace A153142.P12049108336016876235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 n - (A154439 (A154440 n).toNat - A154441 n)

end

end A153142.P12049108336016876235

namespace A153142

/-- `A154439(n)-(A154439(A154440(n))-A154441(n))` -/
def P12049108336016876235.Spec : Prop :=
  ∀ n, P12049108336016876235.a n = A153142 n

end A153142

/-! ## A153142.P8206539325601350966

`A154439(n)-(A154443(n)-A154441(A154443(n)))`
-/

namespace A153142.P8206539325601350966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 n - (A154443 n - A154441 (A154443 n).toNat)

end

end A153142.P8206539325601350966

namespace A153142

/-- `A154439(n)-(A154443(n)-A154441(A154443(n)))` -/
def P8206539325601350966.Spec : Prop :=
  ∀ n, P8206539325601350966.a n = A153142 n

end A153142

/-! ## A153142.P5453648253369061417

`A154445(A154439(n))-(A154445(n)-A154441(n))`
-/

namespace A153142.P5453648253369061417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154445 (A154439 n).toNat - (A154445 n - A154441 n)

end

end A153142.P5453648253369061417

namespace A153142

/-- `A154445(A154439(n))-(A154445(n)-A154441(n))` -/
def P5453648253369061417.Spec : Prop :=
  ∀ n, P5453648253369061417.a n = A153142 n

end A153142

/-! ## A153142.P3805096045723814948

`A154438(A153154(A153141(A154438(A153154(n)))))`
-/

namespace A153142.P3805096045723814948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154438 (A153154 (A153141 (A154438 (A153154 n).toNat).toNat).toNat).toNat

end

end A153142.P3805096045723814948

namespace A153142

/-- `A154438(A153154(A153141(A154438(A153154(n)))))` -/
def P3805096045723814948.Spec : Prop :=
  ∀ n, P3805096045723814948.a n = A153142 n

end A153142

/-! ## A153142.P4190156562198264392

`A153153(A154437(A153141(A153153(A154437(n)))))`
-/

namespace A153142.P4190156562198264392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153153 (A154437 (A153141 (A153153 (A154437 n).toNat).toNat).toNat).toNat

end

end A153142.P4190156562198264392

namespace A153142

/-- `A153153(A154437(A153141(A153153(A154437(n)))))` -/
def P4190156562198264392.Spec : Prop :=
  ∀ n, P4190156562198264392.a n = A153142 n

end A153142

/-! ## A153142.P12342265382285630022

`A154446(A154448(A154441(A154441(A154442(n)))))`
-/

namespace A153142.P12342265382285630022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154446 (A154448 (A154441 (A154441 (A154442 n).toNat).toNat).toNat).toNat

end

end A153142.P12342265382285630022

namespace A153142

/-- `A154446(A154448(A154441(A154441(A154442(n)))))` -/
def P12342265382285630022.Spec : Prop :=
  ∀ n, P12342265382285630022.a n = A153142 n

end A153142

/-! ## A153142.P3067513553154910816

`A154446(A154448(A154441(A154446(A154445(n)))))`
-/

namespace A153142.P3067513553154910816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154446 (A154448 (A154441 (A154446 (A154445 n).toNat).toNat).toNat).toNat

end

end A153142.P3067513553154910816

namespace A153142

/-- `A154446(A154448(A154441(A154446(A154445(n)))))` -/
def P3067513553154910816.Spec : Prop :=
  ∀ n, P3067513553154910816.a n = A153142 n

end A153142

/-!
# A153143: Nonnegative numbers k such that 2k + 19 is prime.

The programs for A153143, the canonical program `A153143.P16912639068039424333` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153143 has offset 1).

The definition of A153143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153143.P10928934697754091808

`A173059(n+2)-1`
-/

namespace A153143.P10928934697754091808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173059 (n + 2) - 1

end

end A153143.P10928934697754091808

namespace A153143

/-- `A173059(n+2)-1` -/
def P10928934697754091808.Spec : Prop :=
  ∀ n, P10928934697754091808.a n = A153143 (n + 1)

end A153143

/-! ## A153143.P16615014309719883555

`A089559(n+2)-2`
-/

namespace A153143.P16615014309719883555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 2) - 2

end

end A153143.P16615014309719883555

namespace A153143

/-- `A089559(n+2)-2` -/
def P16615014309719883555.Spec : Prop :=
  ∀ n, P16615014309719883555.a n = A153143 (n + 1)

end A153143

/-! ## A153143.P1059864015410268421

`A086303(n+2)/2-2`
-/

namespace A153143.P1059864015410268421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086303 (n + 2) : ℚ) / 2 - 2

end

end A153143.P1059864015410268421

namespace A153143

/-- `A086303(n+2)/2-2` -/
def P1059864015410268421.Spec : Prop :=
  ∀ n, P1059864015410268421.a n = (A153143 (n + 1) : ℚ)

end A153143

/-! ## A153143.P16912639068039424333

`A153081(n+3)-3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153143

/-- `A153081(n+3)-3` -/
def P16912639068039424333.Spec : Prop :=
  ∀ n, P16912639068039424333.a n = A153143 (n + 1)

theorem P16912639068039424333.correct : P16912639068039424333.Spec := by
  intro n
  simp only [A153143, Nat.add_sub_cancel]

end A153143

/-! ## A153143.P4853065359298048920

`A101448(n+4)-4`
-/

namespace A153143.P4853065359298048920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 4) - 4

end

end A153143.P4853065359298048920

namespace A153143

/-- `A101448(n+4)-4` -/
def P4853065359298048920.Spec : Prop :=
  ∀ n, P4853065359298048920.a n = A153143 (n + 1)

theorem P4853065359298048920.correct : P4853065359298048920.Spec := by
  intro n
  simp only [A153143, Nat.add_sub_cancel, A153143.P4853065359298048920.a, A153143.P16912639068039424333.a, A101448, A101448.P1558543184600313031.a, A153081, A153081.P13540850000672631907.a, A088967, A088967.P975798610123419620.f1, A088967.P975798610123419620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153143

/-! ## A153143.P5535011675370924867

`A155722(n+4)-5`
-/

namespace A153143.P5535011675370924867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 4) - 5

end

end A153143.P5535011675370924867

namespace A153143

/-- `A155722(n+4)-5` -/
def P5535011675370924867.Spec : Prop :=
  ∀ n, P5535011675370924867.a n = A153143 (n + 1)

theorem P5535011675370924867.correct : P5535011675370924867.Spec := by
  intro n
  simp only [A153143, Nat.add_sub_cancel, A153143.P5535011675370924867.a, A153143.P16912639068039424333.a, A153081, A153081.P13540850000672631907.a, A155722, A155722.P2170865937026942924.a, A101448, A101448.P1558543184600313031.a, A088967, A088967.P975798610123419620.f1, A088967.P975798610123419620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153143

/-! ## A153143.P3512593682949848667

`A105760(n+5)-6`
-/

namespace A153143.P3512593682949848667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 5) - 6

end

end A153143.P3512593682949848667

namespace A153143

/-- `A105760(n+5)-6` -/
def P3512593682949848667.Spec : Prop :=
  ∀ n, P3512593682949848667.a n = A153143 (n + 1)

end A153143

/-! ## A153143.P11246950445392420183

`A008507(A020719(n))-2+n`
-/

namespace A153143.P11246950445392420183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (A020719 n).toNat - 2 + (n : ℤ)

end

end A153143.P11246950445392420183

namespace A153143

/-- `A008507(A020719(n))-2+n` -/
def P11246950445392420183.Spec : Prop :=
  ∀ n, P11246950445392420183.a n = A153143 (n + 1)

end A153143

/-! ## A153143.P2216804859442237931

`eq[2, A000005(2*n+19)]`
-/

namespace A153143.P2216804859442237931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153143.P2216804859442237931

namespace A153143

/-- `eq[2, A000005(2*n+19)]` -/
def P2216804859442237931.Spec : Prop :=
  ∀ n, (P2216804859442237931.a n : ℤ) = A153143 (n + 1)

end A153143

/-! ## A153143.P2120336140366537001

`lt[A001222(2*(n+9)+1), 2]`
-/

namespace A153143.P2120336140366537001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 9) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153143.P2120336140366537001

namespace A153143

/-- `lt[A001222(2*(n+9)+1), 2]` -/
def P2120336140366537001.Spec : Prop :=
  ∀ n, (P2120336140366537001.a n : ℤ) = A153143 (n + 1)

end A153143

/-! ## A153143.P17595633504451518402

`lt[A000005(2*(n+9)+1), 3]`
-/

namespace A153143.P17595633504451518402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 9) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153143.P17595633504451518402

namespace A153143

/-- `lt[A000005(2*(n+9)+1), 3]` -/
def P17595633504451518402.Spec : Prop :=
  ∀ n, (P17595633504451518402.a n : ℤ) = A153143 (n + 1)

end A153143

/-! ## A153143.P7275932587976110644

`record[n+3-3*A000005(2*n+1)²]`
-/

namespace A153143.P7275932587976110644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 3 * A000005 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153143.P7275932587976110644

namespace A153143

/-- `record[n+3-3*A000005(2*n+1)²]` -/
def P7275932587976110644.Spec : Prop :=
  ∀ n, P7275932587976110644.a n = A153143 (n + 1)

end A153143

/-! ## A153143.P10470193537703444007

`comp[A153144(n+1)]`
-/

namespace A153143.P10470193537703444007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153143.P10470193537703444007

namespace A153143

/-- `comp[A153144(n+1)]` -/
def P10470193537703444007.Spec : Prop :=
  ∀ n, (P10470193537703444007.a n : ℤ) = A153143 (n + 1)

end A153143

/-! ## A153143.P17498912826430524702

`A023444(A089559(n+2))`
-/

namespace A153143.P17498912826430524702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A089559 (n + 2)).toNat

end

end A153143.P17498912826430524702

namespace A153143

/-- `A023444(A089559(n+2))` -/
def P17498912826430524702.Spec : Prop :=
  ∀ n, P17498912826430524702.a n = A153143 (n + 1)

end A153143

/-! ## A153143.P11479642278244186972

`A023443(A173059(n+2))`
-/

namespace A153143.P11479642278244186972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A173059 (n + 2)).toNat

end

end A153143.P11479642278244186972

namespace A153143

/-- `A023443(A173059(n+2))` -/
def P11479642278244186972.Spec : Prop :=
  ∀ n, P11479642278244186972.a n = A153143 (n + 1)

end A153143

/-! ## A153143.P9505400587787721638

`A063277(A086303(n+2))`
-/

namespace A153143.P9505400587787721638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063277 (A086303 (n + 2)).toNat

end

end A153143.P9505400587787721638

namespace A153143

/-- `A063277(A086303(n+2))` -/
def P9505400587787721638.Spec : Prop :=
  ∀ n, P9505400587787721638.a n = A153143 (n + 1)

end A153143

/-! ## A153143.P12475484753099880253

`eq[1, A008476(Δ[(n+9)²])]`
-/

namespace A153143.P12475484753099880253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 9) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153143.P12475484753099880253

namespace A153143

/-- `eq[1, A008476(Δ[(n+9)²])]` -/
def P12475484753099880253.Spec : Prop :=
  ∀ n, (P12475484753099880253.a n : ℤ) = A153143 (n + 1)

end A153143

/-! ## A153143.P11915153739492718882

`record[n-A103506(2*(n+1))²]`
-/

namespace A153143.P11915153739492718882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A103506 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153143.P11915153739492718882

namespace A153143

/-- `record[n-A103506(2*(n+1))²]` -/
def P11915153739492718882.Spec : Prop :=
  ∀ n, P11915153739492718882.a n = A153143 (n + 1)

end A153143

/-! ## A153143.P5286907067115437616

`lt[A013632(2*A020723(n)), 2]`
-/

namespace A153143.P5286907067115437616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (2 * A020723 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153143.P5286907067115437616

namespace A153143

/-- `lt[A013632(2*A020723(n)), 2]` -/
def P5286907067115437616.Spec : Prop :=
  ∀ n, (P5286907067115437616.a n : ℤ) = A153143 (n + 1)

end A153143

/-! ## A153143.P12756015892997797487

`record[A028242(n)-A139118(A000005(n+1)²)]`
-/

namespace A153143.P12756015892997797487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n - A139118 (A000005 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153143.P12756015892997797487

namespace A153143

/-- `record[A028242(n)-A139118(A000005(n+1)²)]` -/
def P12756015892997797487.Spec : Prop :=
  ∀ n, P12756015892997797487.a n = A153143 (n + 1)

end A153143

/-!
# A153144: Numbers n such that 2*n+19 is not a prime.

The programs for A153144, the canonical program `A153144.P16852802539869100357` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153144 has offset 1).

The definition of A153144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153144.P4098915159487502931

`comp[A153143(n+1)]`
-/

namespace A153144.P4098915159487502931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153144.P4098915159487502931

namespace A153144

/-- `comp[A153143(n+1)]` -/
def P4098915159487502931.Spec : Prop :=
  ∀ n, (P4098915159487502931.a n : ℤ) = A153144 (n + 1)

end A153144

/-! ## A153144.P12485320426056421714

`A241572(n+1)-1`
-/

namespace A153144.P12485320426056421714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241572 (n + 1) - 1

end

end A153144.P12485320426056421714

namespace A153144

/-- `A241572(n+1)-1` -/
def P12485320426056421714.Spec : Prop :=
  ∀ n, P12485320426056421714.a n = A153144 (n + 1)

theorem P12485320426056421714.correct : P12485320426056421714.Spec := by
  intro n
  simp only [A153144, Nat.add_sub_cancel, A153144.P12485320426056421714.a, A153144.P16852802539869100357.f1, A153144.P16852802539869100357.f2, A153144.P16852802539869100357.a, A006530, A006530.P13372528560459906635.a, A241572, A241572.P128755735048460708.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153144

/-! ## A153144.P15390862692772748776

`comp[A173059(n+1)-1]`
-/

namespace A153144.P15390862692772748776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173059 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153144.P15390862692772748776

namespace A153144

/-- `comp[A173059(n+1)-1]` -/
def P15390862692772748776.Spec : Prop :=
  ∀ n, (P15390862692772748776.a n : ℤ) = A153144 (n + 1)

end A153144

/-! ## A153144.P4003184737467804217

`comp[A089559(n+1)-2]`
-/

namespace A153144.P4003184737467804217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153144.P4003184737467804217

namespace A153144

/-- `comp[A089559(n+1)-2]` -/
def P4003184737467804217.Spec : Prop :=
  ∀ n, (P4003184737467804217.a n : ℤ) = A153144 (n + 1)

end A153144

/-! ## A153144.P9034694924825828309

`comp[A005097(n+1)-9]`
-/

namespace A153144.P9034694924825828309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 9

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153144.P9034694924825828309

namespace A153144

/-- `comp[A005097(n+1)-9]` -/
def P9034694924825828309.Spec : Prop :=
  ∀ n, (P9034694924825828309.a n : ℤ) = A153144 (n + 1)

end A153144

/-! ## A153144.P9797160421357334181

`comp[A098090(n+1)-11]`
-/

namespace A153144.P9797160421357334181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 11

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153144.P9797160421357334181

namespace A153144

/-- `comp[A098090(n+1)-11]` -/
def P9797160421357334181.Spec : Prop :=
  ∀ n, (P9797160421357334181.a n : ℤ) = A153144 (n + 1)

end A153144

/-! ## A153144.P2246710616703071707

`lt[2, A000005(2*n+19)]`
-/

namespace A153144.P2246710616703071707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153144.P2246710616703071707

namespace A153144

/-- `lt[2, A000005(2*n+19)]` -/
def P2246710616703071707.Spec : Prop :=
  ∀ n, (P2246710616703071707.a n : ℤ) = A153144 (n + 1)

end A153144

/-! ## A153144.P13475867220334697864

`lt[2, A319357(2*n+19)]`
-/

namespace A153144.P13475867220334697864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319357 (2 * n + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153144.P13475867220334697864

namespace A153144

/-- `lt[2, A319357(2*n+19)]` -/
def P13475867220334697864.Spec : Prop :=
  ∀ n, (P13475867220334697864.a n : ℤ) = A153144 (n + 1)

end A153144

/-! ## A153144.P6823805951201606247

`comp[n-A163163(2*n+1)²]`
-/

namespace A153144.P6823805951201606247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A163163 (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153144.P6823805951201606247

namespace A153144

/-- `comp[n-A163163(2*n+1)²]` -/
def P6823805951201606247.Spec : Prop :=
  ∀ n, (P6823805951201606247.a n : ℤ) = A153144 (n + 1)

end A153144

/-! ## A153144.P13393086788135789125

`comp[n-A305801(2*n+1)²]`
-/

namespace A153144.P13393086788135789125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A305801 (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153144.P13393086788135789125

namespace A153144

/-- `comp[n-A305801(2*n+1)²]` -/
def P13393086788135789125.Spec : Prop :=
  ∀ n, (P13393086788135789125.a n : ℤ) = A153144 (n + 1)

end A153144

/-! ## A153144.P6018320673336928765

`comp[n-A323369(2*n+1)²]`
-/

namespace A153144.P6018320673336928765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A323369 (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153144.P6018320673336928765

namespace A153144

/-- `comp[n-A323369(2*n+1)²]` -/
def P6018320673336928765.Spec : Prop :=
  ∀ n, (P6018320673336928765.a n : ℤ) = A153144 (n + 1)

end A153144

/-! ## A153144.P16852802539869100357

`lt[A006530(2*n+1), n-2]-9`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A153144

/-- `lt[A006530(2*n+1), n-2]-9` -/
def P16852802539869100357.Spec : Prop :=
  ∀ n, P16852802539869100357.a n = A153144 (n + 1)

theorem P16852802539869100357.correct : P16852802539869100357.Spec := by
  intro n
  simp only [A153144, Nat.add_sub_cancel]

end A153144

/-! ## A153144.P13644796798046590054

`A241571(n+2)-2`
-/

namespace A153144.P13644796798046590054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241571 (n + 2) - 2

end

end A153144.P13644796798046590054

namespace A153144

/-- `A241571(n+2)-2` -/
def P13644796798046590054.Spec : Prop :=
  ∀ n, P13644796798046590054.a n = A153144 (n + 1)

end A153144

/-! ## A153144.P4869784289660280136

`A153082(n+2)-3`
-/

namespace A153144.P4869784289660280136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153082 (n + 2) - 3

end

end A153144.P4869784289660280136

namespace A153144

/-- `A153082(n+2)-3` -/
def P4869784289660280136.Spec : Prop :=
  ∀ n, P4869784289660280136.a n = A153144 (n + 1)

end A153144

/-! ## A153144.P8178049702582946899

`A153083(n+2)-4`
-/

namespace A153144.P8178049702582946899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153083 (n + 2) - 4

end

end A153144.P8178049702582946899

namespace A153144

/-- `A153083(n+2)-4` -/
def P8178049702582946899.Spec : Prop :=
  ∀ n, P8178049702582946899.a n = A153144 (n + 1)

end A153144

/-! ## A153144.P48737779022505159

`A155723(n+3)-5`
-/

namespace A153144.P48737779022505159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 3) - 5

end

end A153144.P48737779022505159

namespace A153144

/-- `A155723(n+3)-5` -/
def P48737779022505159.Spec : Prop :=
  ∀ n, P48737779022505159.a n = A153144 (n + 1)

end A153144

/-! ## A153144.P10952641540639602396

`A153053(n+3)-6`
-/

namespace A153144.P10952641540639602396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 3) - 6

end

end A153144.P10952641540639602396

namespace A153144

/-- `A153053(n+3)-6` -/
def P10952641540639602396.Spec : Prop :=
  ∀ n, P10952641540639602396.a n = A153144 (n + 1)

end A153144

/-! ## A153144.P3846026301355703356

`A153052(n+3)-7`
-/

namespace A153144.P3846026301355703356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 3) - 7

end

end A153144.P3846026301355703356

namespace A153144

/-- `A153052(n+3)-7` -/
def P3846026301355703356.Spec : Prop :=
  ∀ n, P3846026301355703356.a n = A153144 (n + 1)

end A153144

/-! ## A153144.P1272936865350501040

`A153238(n+3)-8`
-/

namespace A153144.P1272936865350501040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 3) - 8

end

end A153144.P1272936865350501040

namespace A153144

/-- `A153238(n+3)-8` -/
def P1272936865350501040.Spec : Prop :=
  ∀ n, P1272936865350501040.a n = A153144 (n + 1)

end A153144

/-! ## A153144.P7495671234314742994

`A104275(n+4)-10`
-/

namespace A153144.P7495671234314742994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 4) - 10

end

end A153144.P7495671234314742994

namespace A153144

/-- `A104275(n+4)-10` -/
def P7495671234314742994.Spec : Prop :=
  ∀ n, P7495671234314742994.a n = A153144 (n + 1)

end A153144

/-!
# A153145: Primes p such that 2*p + 19 is also prime.

The programs for A153145, the canonical program `A153145.P323281744238047457` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153145 has offset 1).

The definition of A153145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153145.P323281744238047457

`p?[A104279(n+1)-9]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A153145

/-- `p?[A104279(n+1)-9]` -/
def P323281744238047457.Spec : Prop :=
  ∀ n, P323281744238047457.a n = A153145 (n + 1)

theorem P323281744238047457.correct : P323281744238047457.Spec := by
  intro n
  simp only [A153145, Nat.add_sub_cancel]

end A153145

/-! ## A153145.P9702641278110613091

`p?[A034784(n+1)-9]`
-/

namespace A153145.P9702641278110613091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153145.P9702641278110613091

namespace A153145

/-- `p?[A034784(n+1)-9]` -/
def P9702641278110613091.Spec : Prop :=
  ∀ n, P9702641278110613091.a n = A153145 (n + 1)

end A153145

/-! ## A153145.P12293481253621249843

`p?[A153143(n+1)]`
-/

namespace A153145.P12293481253621249843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153145.P12293481253621249843

namespace A153145

/-- `p?[A153143(n+1)]` -/
def P12293481253621249843.Spec : Prop :=
  ∀ n, P12293481253621249843.a n = A153145 (n + 1)

end A153145

/-! ## A153145.P15707853792405170766

`record[A006530(A153143(n+2))]`
-/

namespace A153145.P15707853792405170766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153143 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153145.P15707853792405170766

namespace A153145

/-- `record[A006530(A153143(n+2))]` -/
def P15707853792405170766.Spec : Prop :=
  ∀ n, P15707853792405170766.a n = A153145 (n + 1)

end A153145

/-! ## A153145.P2083921063724588823

`filter[A153143(n+2), A010051(#)]`
-/

namespace A153145.P2083921063724588823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153145.P2083921063724588823

namespace A153145

/-- `filter[A153143(n+2), A010051(#)]` -/
def P2083921063724588823.Spec : Prop :=
  ∀ n, P2083921063724588823.a n = A153145 (n + 1)

end A153145

/-! ## A153145.P6631334850696985033

`∩[A000040(n+1), A153143(n+1)]`
-/

namespace A153145.P6631334850696985033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P6631334850696985033

namespace A153145

/-- `∩[A000040(n+1), A153143(n+1)]` -/
def P6631334850696985033.Spec : Prop :=
  ∀ n, (P6631334850696985033.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P7127929417622251728

`∩[A003627(n+1), A153143(n+1)]`
-/

namespace A153145.P7127929417622251728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P7127929417622251728

namespace A153145

/-- `∩[A003627(n+1), A153143(n+1)]` -/
def P7127929417622251728.Spec : Prop :=
  ∀ n, (P7127929417622251728.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P15294970640268674548

`∩[A008578(n+1), A153143(n+1)]`
-/

namespace A153145.P15294970640268674548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P15294970640268674548

namespace A153145

/-- `∩[A008578(n+1), A153143(n+1)]` -/
def P15294970640268674548.Spec : Prop :=
  ∀ n, (P15294970640268674548.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P1164716817071415658

`∩[A040028(n+1), A153143(n+1)]`
-/

namespace A153145.P1164716817071415658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P1164716817071415658

namespace A153145

/-- `∩[A040028(n+1), A153143(n+1)]` -/
def P1164716817071415658.Spec : Prop :=
  ∀ n, (P1164716817071415658.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P16989460826857989189

`∩[A040036(n+1), A153143(n+1)]`
-/

namespace A153145.P16989460826857989189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P16989460826857989189

namespace A153145

/-- `∩[A040036(n+1), A153143(n+1)]` -/
def P16989460826857989189.Spec : Prop :=
  ∀ n, (P16989460826857989189.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P7168639218153590651

`∩[A040044(n+1), A153143(n+1)]`
-/

namespace A153145.P7168639218153590651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P7168639218153590651

namespace A153145

/-- `∩[A040044(n+1), A153143(n+1)]` -/
def P7168639218153590651.Spec : Prop :=
  ∀ n, (P7168639218153590651.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P11612725975966479022

`∩[A040046(n+1), A153143(n+1)]`
-/

namespace A153145.P11612725975966479022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P11612725975966479022

namespace A153145

/-- `∩[A040046(n+1), A153143(n+1)]` -/
def P11612725975966479022.Spec : Prop :=
  ∀ n, (P11612725975966479022.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P6957079635295952104

`∩[A040049(n+1), A153143(n+1)]`
-/

namespace A153145.P6957079635295952104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P6957079635295952104

namespace A153145

/-- `∩[A040049(n+1), A153143(n+1)]` -/
def P6957079635295952104.Spec : Prop :=
  ∀ n, (P6957079635295952104.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P2432463803847837668

`∩[A040054(n+1), A153143(n+1)]`
-/

namespace A153145.P2432463803847837668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P2432463803847837668

namespace A153145

/-- `∩[A040054(n+1), A153143(n+1)]` -/
def P2432463803847837668.Spec : Prop :=
  ∀ n, (P2432463803847837668.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P5520229487295435312

`∩[A040060(n+1), A153143(n+1)]`
-/

namespace A153145.P5520229487295435312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P5520229487295435312

namespace A153145

/-- `∩[A040060(n+1), A153143(n+1)]` -/
def P5520229487295435312.Spec : Prop :=
  ∀ n, (P5520229487295435312.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P7502955904820709271

`∩[A040062(n+1), A153143(n+1)]`
-/

namespace A153145.P7502955904820709271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P7502955904820709271

namespace A153145

/-- `∩[A040062(n+1), A153143(n+1)]` -/
def P7502955904820709271.Spec : Prop :=
  ∀ n, (P7502955904820709271.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P6126583127162526533

`∩[A040065(n+1), A153143(n+1)]`
-/

namespace A153145.P6126583127162526533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P6126583127162526533

namespace A153145

/-- `∩[A040065(n+1), A153143(n+1)]` -/
def P6126583127162526533.Spec : Prop :=
  ∀ n, (P6126583127162526533.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P6141136547901226530

`∩[A040078(n+1), A153143(n+1)]`
-/

namespace A153145.P6141136547901226530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P6141136547901226530

namespace A153145

/-- `∩[A040078(n+1), A153143(n+1)]` -/
def P6141136547901226530.Spec : Prop :=
  ∀ n, (P6141136547901226530.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P7320325439472683172

`∩[A040083(n+1), A153143(n+1)]`
-/

namespace A153145.P7320325439472683172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P7320325439472683172

namespace A153145

/-- `∩[A040083(n+1), A153143(n+1)]` -/
def P7320325439472683172.Spec : Prop :=
  ∀ n, (P7320325439472683172.a n : ℤ) = A153145 (n + 1)

end A153145

/-! ## A153145.P8871749787589265504

`∩[A040085(n+1), A153143(n+1)]`
-/

namespace A153145.P8871749787589265504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153145.P8871749787589265504

namespace A153145

/-- `∩[A040085(n+1), A153143(n+1)]` -/
def P8871749787589265504.Spec : Prop :=
  ∀ n, (P8871749787589265504.a n : ℤ) = A153145 (n + 1)

end A153145

/-!
# A153146: Numbers n such that 2*n + 19 and 2*n - 19 are prime.

The programs for A153146, the canonical program `A153146.P7490805428586605407` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153146 has offset 1).

The definition of A153146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153146.P7490805428586605407

`(A271347(n+1)+19)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A153146

/-- `(A271347(n+1)+19)/2` -/
def P7490805428586605407.Spec : Prop :=
  ∀ n, P7490805428586605407.a n = (A153146 (n + 1) : ℚ)

end A153146

/-! ## A153146.P8686687798252261938

`∩[A097932(n+1), A153143(n+1)]`
-/

namespace A153146.P8686687798252261938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153146.P8686687798252261938

namespace A153146

/-- `∩[A097932(n+1), A153143(n+1)]` -/
def P8686687798252261938.Spec : Prop :=
  ∀ n, (P8686687798252261938.a n : ℤ) = A153146 (n + 1)

end A153146

/-! ## A153146.P5265492377696646923

`∩[A006254(n+1)+9, A153081(n+3)-3]`
-/

namespace A153146.P5265492377696646923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 3) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153146.P5265492377696646923

namespace A153146

/-- `∩[A006254(n+1)+9, A153081(n+3)-3]` -/
def P5265492377696646923.Spec : Prop :=
  ∀ n, (P5265492377696646923.a n : ℤ) = A153146 (n + 1)

end A153146

/-! ## A153146.P5089547567932393652

`∩[ceil(A065091(n+1)/2)+9, A153081(n+3)-3]`
-/

namespace A153146.P5089547567932393652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065091 (n + 1) : ℚ) / 2⌉ + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 3) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153146.P5089547567932393652

namespace A153146

/-- `∩[ceil(A065091(n+1)/2)+9, A153081(n+3)-3]` -/
def P5089547567932393652.Spec : Prop :=
  ∀ n, (P5089547567932393652.a n : ℤ) = A153146 (n + 1)

end A153146

/-! ## A153146.P17054787777488401105

`∩[A045344(n+1)-A097932(n+1), A097932(n+1)]`
-/

namespace A153146.P17054787777488401105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) - A097932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153146.P17054787777488401105

namespace A153146

/-- `∩[A045344(n+1)-A097932(n+1), A097932(n+1)]` -/
def P17054787777488401105.Spec : Prop :=
  ∀ n, (P17054787777488401105.a n : ℤ) = A153146 (n + 1)

end A153146

/-! ## A153146.P16833990540471965886

`∩[A065091(n+1)-A097932(n+1), A097932(n+1)]`
-/

namespace A153146.P16833990540471965886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A097932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153146.P16833990540471965886

namespace A153146

/-- `∩[A065091(n+1)-A097932(n+1), A097932(n+1)]` -/
def P16833990540471965886.Spec : Prop :=
  ∀ n, (P16833990540471965886.a n : ℤ) = A153146 (n + 1)

end A153146

/-! ## A153146.P5920183787361813580

`A014682(A271347(n+1)+19)`
-/

namespace A153146.P5920183787361813580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A271347 (n + 1) + 19).toNat

end

end A153146.P5920183787361813580

namespace A153146

/-- `A014682(A271347(n+1)+19)` -/
def P5920183787361813580.Spec : Prop :=
  ∀ n, P5920183787361813580.a n = A153146 (n + 1)

end A153146

/-! ## A153146.P3869535126676192059

`A322809(A271347(n+1)+15)`
-/

namespace A153146.P3869535126676192059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A271347 (n + 1) + 15).toNat

end

end A153146.P3869535126676192059

namespace A153146

/-- `A322809(A271347(n+1)+15)` -/
def P3869535126676192059.Spec : Prop :=
  ∀ n, P3869535126676192059.a n = A153146 (n + 1)

end A153146

/-! ## A153146.P8461731279940150283

`A328399(A271347(n+1)+17)`
-/

namespace A153146.P8461731279940150283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A271347 (n + 1) + 17).toNat

end

end A153146.P8461731279940150283

namespace A153146

/-- `A328399(A271347(n+1)+17)` -/
def P8461731279940150283.Spec : Prop :=
  ∀ n, P8461731279940150283.a n = A153146 (n + 1)

end A153146

/-! ## A153146.P4891895614179705509

`A175126(A271347(n+1)+19)`
-/

namespace A153146.P4891895614179705509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A271347 (n + 1) + 19).toNat

end

end A153146.P4891895614179705509

namespace A153146

/-- `A175126(A271347(n+1)+19)` -/
def P4891895614179705509.Spec : Prop :=
  ∀ n, P4891895614179705509.a n = A153146 (n + 1)

end A153146

/-! ## A153146.P14870883693636619288

`A052938(A271347(n+1)+14)`
-/

namespace A153146.P14870883693636619288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A271347 (n + 1) + 14).toNat

end

end A153146.P14870883693636619288

namespace A153146

/-- `A052938(A271347(n+1)+14)` -/
def P14870883693636619288.Spec : Prop :=
  ∀ n, P14870883693636619288.a n = A153146 (n + 1)

end A153146

/-! ## A153146.P3190311873685583272

`A008619(A271347(n+1)+17)`
-/

namespace A153146.P3190311873685583272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A271347 (n + 1) + 17).toNat

end

end A153146.P3190311873685583272

namespace A153146

/-- `A008619(A271347(n+1)+17)` -/
def P3190311873685583272.Spec : Prop :=
  ∀ n, P3190311873685583272.a n = A153146 (n + 1)

end A153146

/-! ## A153146.P6583401127748660158

`A131732(A271347(n+1)+17)`
-/

namespace A153146.P6583401127748660158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A271347 (n + 1) + 17).toNat

end

end A153146.P6583401127748660158

namespace A153146

/-- `A131732(A271347(n+1)+17)` -/
def P6583401127748660158.Spec : Prop :=
  ∀ n, P6583401127748660158.a n = A153146 (n + 1)

end A153146

/-! ## A153146.P2433069261243006322

`A000463(A271347(n+1)+18)`
-/

namespace A153146.P2433069261243006322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A271347 (n + 1) + 18).toNat

end

end A153146.P2433069261243006322

namespace A153146

/-- `A000463(A271347(n+1)+18)` -/
def P2433069261243006322.Spec : Prop :=
  ∀ n, P2433069261243006322.a n = A153146 (n + 1)

end A153146

/-! ## A153146.P12082847748000615548

`A003602(A271347(n+1)+18)`
-/

namespace A153146.P12082847748000615548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A271347 (n + 1) + 18).toNat

end

end A153146.P12082847748000615548

namespace A153146

/-- `A003602(A271347(n+1)+18)` -/
def P12082847748000615548.Spec : Prop :=
  ∀ n, P12082847748000615548.a n = A153146 (n + 1)

end A153146

/-! ## A153146.P4958370818041378872

`A213634(A271347(n+1)+18)`
-/

namespace A153146.P4958370818041378872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213634 (A271347 (n + 1) + 18).toNat

end

end A153146.P4958370818041378872

namespace A153146

/-- `A213634(A271347(n+1)+18)` -/
def P4958370818041378872.Spec : Prop :=
  ∀ n, P4958370818041378872.a n = A153146 (n + 1)

end A153146

/-! ## A153146.P18267649976908301908

`A004525(A271347(n+1)+19)`
-/

namespace A153146.P18267649976908301908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A271347 (n + 1) + 19).toNat

end

end A153146.P18267649976908301908

namespace A153146

/-- `A004525(A271347(n+1)+19)` -/
def P18267649976908301908.Spec : Prop :=
  ∀ n, P18267649976908301908.a n = A153146 (n + 1)

end A153146

/-!
# A153147: a(n) = A007916(n)^3.

The programs for A153147, the canonical program `A153147.P16009883647393615735` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153147 has offset 1).

The definition of A153147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153147.P16009883647393615735

`A007916(n+1)^3`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153147

/-- `A007916(n+1)^3` -/
def P16009883647393615735.Spec : Prop :=
  ∀ n, P16009883647393615735.a n = A153147 (n + 1)

theorem P16009883647393615735.correct : P16009883647393615735.Spec := by
  intro n
  simp only [A153147, Nat.add_sub_cancel]

end A153147

/-! ## A153147.P14631249122217151603

`comp[floor(n/(xor(n, n+1)+1))^(val(n+1, 2)+2)]^3`
-/

namespace A153147.P14631249122217151603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ ^ (SequenceMachineLib.valuation (n + 1) 2 + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A153147.P14631249122217151603

namespace A153147

/-- `comp[floor(n/(xor(n, n+1)+1))^(val(n+1, 2)+2)]^3` -/
def P14631249122217151603.Spec : Prop :=
  ∀ n, (P14631249122217151603.a n : ℤ) = A153147 (n + 1)

end A153147

/-! ## A153147.P14547298717041473894

`sqrt(A153160(n+1))`
-/

namespace A153147.P14547298717041473894
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153160 (n + 1) : ℝ)

end

end A153147.P14547298717041473894

namespace A153147

/-- `sqrt(A153160(n+1))` -/
def P14547298717041473894.Spec : Prop :=
  ∀ n, P14547298717041473894.a n = (A153147 (n + 1) : ℝ)

end A153147

/-! ## A153147.P8389735020199634730

`sqrt(A153158(n+1)^3)`
-/

namespace A153147.P8389735020199634730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153158 (n + 1) ^ 3 : ℝ)

end

end A153147.P8389735020199634730

namespace A153147

/-- `sqrt(A153158(n+1)^3)` -/
def P8389735020199634730.Spec : Prop :=
  ∀ n, P8389735020199634730.a n = (A153147 (n + 1) : ℝ)

end A153147

/-! ## A153147.P9895947453222708628

`record[A052410(n+2)^3]`
-/

namespace A153147.P9895947453222708628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153147.P9895947453222708628

namespace A153147

/-- `record[A052410(n+2)^3]` -/
def P9895947453222708628.Spec : Prop :=
  ∀ n, P9895947453222708628.a n = A153147 (n + 1)

end A153147

/-! ## A153147.P6368553105235463658

`A007916(n+1)*A153158(n+1)`
-/

namespace A153147.P6368553105235463658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) * A153158 (n + 1)

end

end A153147.P6368553105235463658

namespace A153147

/-- `A007916(n+1)*A153158(n+1)` -/
def P6368553105235463658.Spec : Prop :=
  ∀ n, P6368553105235463658.a n = A153147 (n + 1)

theorem P6368553105235463658.correct : P6368553105235463658.Spec := by
  intro n
  simp only [A153147, Nat.add_sub_cancel, A153147.P6368553105235463658.a, A153147.P16009883647393615735.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153158, A153158.P10760581293550198804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153147

/-! ## A153147.P10185076162006265323

`A153157(n+1)/A007916(n+1)`
-/

namespace A153147.P10185076162006265323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153157 (n + 1) : ℚ) / (A007916 (n + 1) : ℚ)

end

end A153147.P10185076162006265323

namespace A153147

/-- `A153157(n+1)/A007916(n+1)` -/
def P10185076162006265323.Spec : Prop :=
  ∀ n, P10185076162006265323.a n = (A153147 (n + 1) : ℚ)

end A153147

/-! ## A153147.P15439214773040548584

`A153159(n+1)/A153158(n+1)`
-/

namespace A153147.P15439214773040548584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153159 (n + 1) : ℚ) / (A153158 (n + 1) : ℚ)

end

end A153147.P15439214773040548584

namespace A153147

/-- `A153159(n+1)/A153158(n+1)` -/
def P15439214773040548584.Spec : Prop :=
  ∀ n, P15439214773040548584.a n = (A153147 (n + 1) : ℚ)

end A153147

/-! ## A153147.P2471751473172030144

`A153159(n+1)/A007916(n+1)²`
-/

namespace A153147.P2471751473172030144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153159 (n + 1) : ℚ) / (A007916 (n + 1) ^ 2 : ℚ)

end

end A153147.P2471751473172030144

namespace A153147

/-- `A153159(n+1)/A007916(n+1)²` -/
def P2471751473172030144.Spec : Prop :=
  ∀ n, P2471751473172030144.a n = (A153147 (n + 1) : ℚ)

end A153147

/-! ## A153147.P1328796858883453896

`A153157(n+1)²/A153159(n+1)`
-/

namespace A153147.P1328796858883453896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153157 (n + 1) ^ 2 : ℚ) / (A153159 (n + 1) : ℚ)

end

end A153147.P1328796858883453896

namespace A153147

/-- `A153157(n+1)²/A153159(n+1)` -/
def P1328796858883453896.Spec : Prop :=
  ∀ n, P1328796858883453896.a n = (A153147 (n + 1) : ℚ)

end A153147

/-! ## A153147.P16523159578839772299

`(A037450(n+1)+1)*A007916(n+1)`
-/

namespace A153147.P16523159578839772299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037450 (n + 1) + 1) * A007916 (n + 1)

end

end A153147.P16523159578839772299

namespace A153147

/-- `(A037450(n+1)+1)*A007916(n+1)` -/
def P16523159578839772299.Spec : Prop :=
  ∀ n, P16523159578839772299.a n = A153147 (n + 1)

theorem P16523159578839772299.correct : P16523159578839772299.Spec := by
  intro n
  simp only [A153147, Nat.add_sub_cancel, A153147.P16523159578839772299.a, A153147.P16009883647393615735.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A037450, A037450.P975231576386369614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153147

/-! ## A153147.P5463534977799511997

`A153159(n+1)/(A037450(n+1)+1)`
-/

namespace A153147.P5463534977799511997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153159 (n + 1) : ℚ) / (A037450 (n + 1) + 1 : ℚ)

end

end A153147.P5463534977799511997

namespace A153147

/-- `A153159(n+1)/(A037450(n+1)+1)` -/
def P5463534977799511997.Spec : Prop :=
  ∀ n, P5463534977799511997.a n = (A153147 (n + 1) : ℚ)

end A153147

/-! ## A153147.P11818887807098965955

`A052410(root(A153158(n+1), 2))*A153158(n+1)`
-/

namespace A153147.P11818887807098965955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.roundAway ((A153158 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat * A153158 (n + 1)

end

end A153147.P11818887807098965955

namespace A153147

/-- `A052410(root(A153158(n+1), 2))*A153158(n+1)` -/
def P11818887807098965955.Spec : Prop :=
  ∀ n, P11818887807098965955.a n = A153147 (n + 1)

end A153147

/-! ## A153147.P11938405694001522226

`A153157(n+1)*A153159(n+1)/A153160(n+1)`
-/

namespace A153147.P11938405694001522226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153157 (n + 1) * A153159 (n + 1) : ℚ) / (A153160 (n + 1) : ℚ)

end

end A153147.P11938405694001522226

namespace A153147

/-- `A153157(n+1)*A153159(n+1)/A153160(n+1)` -/
def P11938405694001522226.Spec : Prop :=
  ∀ n, P11938405694001522226.a n = (A153147 (n + 1) : ℚ)

end A153147

/-! ## A153147.P2685005184029324566

`A153160(n+1)/(A007916(n+1)²*A007916(n+1))`
-/

namespace A153147.P2685005184029324566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153160 (n + 1) : ℚ) / (A007916 (n + 1) ^ 2 * A007916 (n + 1) : ℚ)

end

end A153147.P2685005184029324566

namespace A153147

/-- `A153160(n+1)/(A007916(n+1)²*A007916(n+1))` -/
def P2685005184029324566.Spec : Prop :=
  ∀ n, P2685005184029324566.a n = (A153147 (n + 1) : ℚ)

end A153147

/-! ## A153147.P16377212239312735733

`A175082(n+2)^3`
-/

namespace A153147.P16377212239312735733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 2) ^ 3

end

end A153147.P16377212239312735733

namespace A153147

/-- `A175082(n+2)^3` -/
def P16377212239312735733.Spec : Prop :=
  ∀ n, P16377212239312735733.a n = A153147 (n + 1)

end A153147

/-! ## A153147.P3443963475948012156

`A007916(n+1)*A007916(n+1)*A175082(n+2)`
-/

namespace A153147.P3443963475948012156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) * A007916 (n + 1) * A175082 (n + 2)

end

end A153147.P3443963475948012156

namespace A153147

/-- `A007916(n+1)*A007916(n+1)*A175082(n+2)` -/
def P3443963475948012156.Spec : Prop :=
  ∀ n, P3443963475948012156.a n = A153147 (n + 1)

end A153147

/-! ## A153147.P14762115956949983462

`(lt[A075802(n+1), 1]+1)^3`
-/

namespace A153147.P14762115956949983462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 3

end

end A153147.P14762115956949983462

namespace A153147

/-- `(lt[A075802(n+1), 1]+1)^3` -/
def P14762115956949983462.Spec : Prop :=
  ∀ n, (P14762115956949983462.a n : ℤ) = A153147 (n + 1)

end A153147

/-! ## A153147.P13465816134480130312

`A000578(A007916(n+1))`
-/

namespace A153147.P13465816134480130312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A007916 (n + 1)).toNat

end

end A153147.P13465816134480130312

namespace A153147

/-- `A000578(A007916(n+1))` -/
def P13465816134480130312.Spec : Prop :=
  ∀ n, P13465816134480130312.a n = A153147 (n + 1)

end A153147

/-! ## A153147.P14967781005736489395

`A000578(A175082(n+2))`
-/

namespace A153147.P14967781005736489395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A175082 (n + 2)).toNat

end

end A153147.P14967781005736489395

namespace A153147

/-- `A000578(A175082(n+2))` -/
def P14967781005736489395.Spec : Prop :=
  ∀ n, P14967781005736489395.a n = A153147 (n + 1)

end A153147

/-!
# A153148: Coefficients of the eighth-order mock theta function S_0(q).

The programs for A153148, there is no canonical definition to state claims against.
-/

/-! ## A153148.P16565964010443154317

`(A260313(2*n)+A006306(2*n))/2`
-/

namespace A153148.P16565964010443154317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260313 (2 * n) + A006306 (2 * n) : ℚ) / 2

end

end A153148.P16565964010443154317

/-! ## A153148.P13788941350987169916

`A153172(2*n)`
-/

namespace A153148.P13788941350987169916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153172 (2 * n)

end

end A153148.P13788941350987169916

/-! ## A153148.P7639753391420569026

`A153172(n+n)%60`
-/

namespace A153148.P7639753391420569026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153172 (n + n)) 60

end

end A153148.P7639753391420569026

/-! ## A153148.P9508762688584507815

`A153172(n+n)/A007318(C(2, n)+1)`
-/

namespace A153148.P9508762688584507815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153172 (n + n) : ℚ) / (A007318 (Nat.choose 2 n + 1) : ℚ)

end

end A153148.P9508762688584507815

/-! ## A153148.P12403233181306704585

`A153172(Δ[n²]-1)^A007318(C(n, 2))`
-/

namespace A153148.P12403233181306704585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A153148.P12403233181306704585

/-!
# A153149: Coefficients of the eighth-order mock theta function S_1(q).

The programs for A153149, there is no canonical definition to state claims against.
-/

/-! ## A153149.P7583363798714747879

`(A260313(2*n+1)+A006306(2*n+1))/2`
-/

namespace A153149.P7583363798714747879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260313 (2 * n + 1) + A006306 (2 * n + 1) : ℚ) / 2

end

end A153149.P7583363798714747879

/-! ## A153149.P1940171466651905952

`A153172(Δ[n²])`
-/

namespace A153149.P1940171466651905952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153149.P1940171466651905952

/-! ## A153149.P4771202769388621465

`A153172(2*n+1)%8`
-/

namespace A153149.P4771202769388621465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153172 (2 * n + 1)) 8

end

end A153149.P4771202769388621465

/-! ## A153149.P4120169927346634663

`and(-1, A153172((n+1)²-n²))`
-/

namespace A153149.P4120169927346634663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A153172 ((n + 1) ^ 2 - n ^ 2))

end

end A153149.P4120169927346634663

/-! ## A153149.P1366284193093516700

`A153172(2*n+1)*A361338(n)`
-/

namespace A153149.P1366284193093516700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153172 (2 * n + 1) * A361338 n

end

end A153149.P1366284193093516700

/-!
# A153150: Self-inverse permutation of natural numbers: A059893-conjugate of A056539.

The programs for A153150, the canonical program `A153150.P14859093954344078196` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153150 has offset 0).

The definition of A153150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153150.P14859093954344078196

`A341915(A064707(A153153(n)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A153150

/-- `A341915(A064707(A153153(n)))` -/
def P14859093954344078196.Spec : Prop :=
  ∀ n, P14859093954344078196.a n = A153150 n

theorem P14859093954344078196.correct : P14859093954344078196.Spec := by
  intro n
  simp only [A153150]

end A153150

/-! ## A153150.P5430612460834870901

`A180201(A335858(A056539(A180201(A335858(n)))))`
-/

namespace A153150.P5430612460834870901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A335858 (A056539 (A180201 (A335858 n).toNat).toNat).toNat).toNat

end

end A153150.P5430612460834870901

namespace A153150

/-- `A180201(A335858(A056539(A180201(A335858(n)))))` -/
def P5430612460834870901.Spec : Prop :=
  ∀ n, P5430612460834870901.a n = A153150 n

end A153150

/-! ## A153150.P6466164544052591163

`A069766(lt[A069766(n), 16])`
-/

namespace A153150.P6466164544052591163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069766 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069766 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A153150.P6466164544052591163

namespace A153150

/-- `A069766(lt[A069766(n), 16])` -/
def P6466164544052591163.Spec : Prop :=
  ∀ n, P6466164544052591163.a n = A153150 n

end A153150

/-!
# A153151: Rotated binary decrementing: For n<2 a(n) = n, if n=2^k, a(n) = 2*n-1, otherwise a(n) = n-1.

The programs for A153151, the canonical program `A153151.P8879406724937797492` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153151 has offset 0).

The definition of A153151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153151.P18278308588698977583

`lt[xor(n, 2*n), 2*(n+1)]%(2^ceil(log2(n+1)))`
-/

namespace A153151.P18278308588698977583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A153151.P18278308588698977583

namespace A153151

/-- `lt[xor(n, 2*n), 2*(n+1)]%(2^ceil(log2(n+1)))` -/
def P18278308588698977583.Spec : Prop :=
  ∀ n, P18278308588698977583.a n = A153151 n

end A153151

/-! ## A153151.P12803591381522296344

`A004760(n+1)%(2^ceil(log2(n+1)))`
-/

namespace A153151.P12803591381522296344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004760 (n + 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A153151.P12803591381522296344

namespace A153151

/-- `A004760(n+1)%(2^ceil(log2(n+1)))` -/
def P12803591381522296344.Spec : Prop :=
  ∀ n, P12803591381522296344.a n = A153151 n

end A153151

/-! ## A153151.P7641494585889411125

`A028310(n)+A048298(n)-1`
-/

namespace A153151.P7641494585889411125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A048298 n - 1)

end

end A153151.P7641494585889411125

namespace A153151

/-- `A028310(n)+A048298(n)-1` -/
def P7641494585889411125.Spec : Prop :=
  ∀ n, P7641494585889411125.a n = A153151 n

end A153151

/-! ## A153151.P8879406724937797492

`and(A003817(n), A004760(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153151

/-- `and(A003817(n), A004760(n+1))` -/
def P8879406724937797492.Spec : Prop :=
  ∀ n, P8879406724937797492.a n = A153151 n

theorem P8879406724937797492.correct : P8879406724937797492.Spec := by
  intro n
  simp only [A153151]

end A153151

/-! ## A153151.P17667675230287533567

`A004273(n)+A048298(n)-n`
-/

namespace A153151.P17667675230287533567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A048298 n - (n : ℤ))

end

end A153151.P17667675230287533567

namespace A153151

/-- `A004273(n)+A048298(n)-n` -/
def P17667675230287533567.Spec : Prop :=
  ∀ n, P17667675230287533567.a n = A153151 n

end A153151

/-! ## A153151.P890975499111704798

`A004273(n)-n*A347523(n)`
-/

namespace A153151.P890975499111704798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - (n : ℤ) * A347523 n

end

end A153151.P890975499111704798

namespace A153151

/-- `A004273(n)-n*A347523(n)` -/
def P890975499111704798.Spec : Prop :=
  ∀ n, P890975499111704798.a n = A153151 n

end A153151

/-! ## A153151.P9667532803786816243

`(char[A000079(n)]+1)*A028310(n)-1`
-/

namespace A153151.P9667532803786816243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A028310 n - 1

end

end A153151.P9667532803786816243

namespace A153151

/-- `(char[A000079(n)]+1)*A028310(n)-1` -/
def P9667532803786816243.Spec : Prop :=
  ∀ n, P9667532803786816243.a n = A153151 n

end A153151

/-! ## A153151.P10133607753645033344

`n*A081729(2*n)-A019425(2*n)`
-/

namespace A153151.P10133607753645033344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081729 (2 * n) - A019425 (2 * n)

end

end A153151.P10133607753645033344

namespace A153151

/-- `n*A081729(2*n)-A019425(2*n)` -/
def P10133607753645033344.Spec : Prop :=
  ∀ n, P10133607753645033344.a n = A153151 n

end A153151

/-! ## A153151.P11108971536640945493

`n*A081729(2*n)-A019426(2*n)`
-/

namespace A153151.P11108971536640945493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081729 (2 * n) - A019426 (2 * n)

end

end A153151.P11108971536640945493

namespace A153151

/-- `n*A081729(2*n)-A019426(2*n)` -/
def P11108971536640945493.Spec : Prop :=
  ∀ n, P11108971536640945493.a n = A153151 n

end A153151

/-! ## A153151.P10311328887990724108

`n*A081729(2*n)-A019427(2*n)`
-/

namespace A153151.P10311328887990724108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081729 (2 * n) - A019427 (2 * n)

end

end A153151.P10311328887990724108

namespace A153151

/-- `n*A081729(2*n)-A019427(2*n)` -/
def P10311328887990724108.Spec : Prop :=
  ∀ n, P10311328887990724108.a n = A153151 n

end A153151

/-! ## A153151.P16391824871266986472

`n*A081729(2*n)-A019428(2*n)`
-/

namespace A153151.P16391824871266986472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081729 (2 * n) - A019428 (2 * n)

end

end A153151.P16391824871266986472

namespace A153151

/-- `n*A081729(2*n)-A019428(2*n)` -/
def P16391824871266986472.Spec : Prop :=
  ∀ n, P16391824871266986472.a n = A153151 n

end A153151

/-! ## A153151.P9981782301095490281

`n*A081729(2*n)-A019429(2*n)`
-/

namespace A153151.P9981782301095490281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081729 (2 * n) - A019429 (2 * n)

end

end A153151.P9981782301095490281

namespace A153151

/-- `n*A081729(2*n)-A019429(2*n)` -/
def P9981782301095490281.Spec : Prop :=
  ∀ n, P9981782301095490281.a n = A153151 n

end A153151

/-! ## A153151.P1722125357479537046

`n*A081729(2*n)-A019430(2*n)`
-/

namespace A153151.P1722125357479537046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081729 (2 * n) - A019430 (2 * n)

end

end A153151.P1722125357479537046

namespace A153151

/-- `n*A081729(2*n)-A019430(2*n)` -/
def P1722125357479537046.Spec : Prop :=
  ∀ n, P1722125357479537046.a n = A153151 n

end A153151

/-! ## A153151.P3474363583322431804

`n*A081729(2*n)-A019431(2*n)`
-/

namespace A153151.P3474363583322431804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081729 (2 * n) - A019431 (2 * n)

end

end A153151.P3474363583322431804

namespace A153151

/-- `n*A081729(2*n)-A019431(2*n)` -/
def P3474363583322431804.Spec : Prop :=
  ∀ n, P3474363583322431804.a n = A153151 n

end A153151

/-! ## A153151.P6431210682816015383

`n*A081729(2*n)-A019432(2*n)`
-/

namespace A153151.P6431210682816015383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081729 (2 * n) - A019432 (2 * n)

end

end A153151.P6431210682816015383

namespace A153151

/-- `n*A081729(2*n)-A019432(2*n)` -/
def P6431210682816015383.Spec : Prop :=
  ∀ n, P6431210682816015383.a n = A153151 n

end A153151

/-! ## A153151.P17059828494399191372

`A289207(n+1)+A048298(n)`
-/

namespace A153151.P17059828494399191372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (n + 1) + A048298 n

end

end A153151.P17059828494399191372

namespace A153151

/-- `A289207(n+1)+A048298(n)` -/
def P17059828494399191372.Spec : Prop :=
  ∀ n, P17059828494399191372.a n = A153151 n

end A153151

/-! ## A153151.P428569212401483454

`Δ[A004760(n+1)-A004277(n)]+n`
-/

namespace A153151.P428569212401483454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A153151.P428569212401483454

namespace A153151

/-- `Δ[A004760(n+1)-A004277(n)]+n` -/
def P428569212401483454.Spec : Prop :=
  ∀ n, P428569212401483454.a n = A153151 n

end A153151

/-! ## A153151.P16241521582740785258

`A370791(A303767(n))`
-/

namespace A153151.P16241521582740785258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370791 (A303767 n).toNat

end

end A153151.P16241521582740785258

namespace A153151

/-- `A370791(A303767(n))` -/
def P16241521582740785258.Spec : Prop :=
  ∀ n, P16241521582740785258.a n = A153151 n

end A153151

/-! ## A153151.P5273498351633686189

`or(n*char[2^n], A078898(comp[2*n+3]))`
-/

namespace A153151.P5273498351633686189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A078898 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

end

end A153151.P5273498351633686189

namespace A153151

/-- `or(n*char[2^n], A078898(comp[2*n+3]))` -/
def P5273498351633686189.Spec : Prop :=
  ∀ n, P5273498351633686189.a n = A153151 n

end A153151

/-! ## A153151.P2966909820576469380

`A014681(2*n)-n*A347523(n)`
-/

namespace A153151.P2966909820576469380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * n) - (n : ℤ) * A347523 n

end

end A153151.P2966909820576469380

namespace A153151

/-- `A014681(2*n)-n*A347523(n)` -/
def P2966909820576469380.Spec : Prop :=
  ∀ n, P2966909820576469380.a n = A153151 n

end A153151

/-!
# A153152: Rotated binary incrementing: For n<2 a(n)=n, if n=(2^k)-1, a(n)=(n+1)/2, otherwise a(n)=n+1.

The programs for A153152, the canonical program `A153152.P16824677220979759351` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153152 has offset 0).

The definition of A153152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153152.P16824677220979759351

`n+1-Δ[A053644(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153152

/-- `n+1-Δ[A053644(n)]` -/
def P16824677220979759351.Spec : Prop :=
  ∀ n, P16824677220979759351.a n = A153152 n

theorem P16824677220979759351.correct : P16824677220979759351.Spec := by
  intro n
  simp only [A153152]

end A153152

/-! ## A153152.P8663447555351868311

`(n+1)/2*A201219(n+1)`
-/

namespace A153152.P8663447555351868311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A201219 (n + 1) : ℚ)

end

end A153152.P8663447555351868311

namespace A153152

/-- `(n+1)/2*A201219(n+1)` -/
def P8663447555351868311.Spec : Prop :=
  ∀ n, P8663447555351868311.a n = (A153152 n : ℚ)

end A153152

/-! ## A153152.P13375585293013261059

`floor((n+1)/gcd(2, A006530(2*(n+1))))`
-/

namespace A153152.P13375585293013261059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Int.gcd 2 (A006530 (2 * (n + 1))) : ℚ)⌋

end

end A153152.P13375585293013261059

namespace A153152

/-- `floor((n+1)/gcd(2, A006530(2*(n+1))))` -/
def P13375585293013261059.Spec : Prop :=
  ∀ n, P13375585293013261059.a n = A153152 n

end A153152

/-! ## A153152.P6140615993516348006

`floor((n+1)/(C(2, A006530(n+1))+1))`
-/

namespace A153152.P6140615993516348006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Nat.choose 2 (A006530 (n + 1)).toNat + 1 : ℚ)⌋

end

end A153152.P6140615993516348006

namespace A153152

/-- `floor((n+1)/(C(2, A006530(n+1))+1))` -/
def P6140615993516348006.Spec : Prop :=
  ∀ n, P6140615993516348006.a n = A153152 n

end A153152

/-! ## A153152.P2460262176244594445

`(n+1)/gcd(2*a(n-1), A014963(n+1))` with `a(0)=0`
-/

namespace A153152.P2460262176244594445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway (2 * a (n - 1))) (A014963 (n + 1)) : ℚ)

end

end A153152.P2460262176244594445

namespace A153152

/-- `(n+1)/gcd(2*a(n-1), A014963(n+1))` -/
def P2460262176244594445.Spec : Prop :=
  ∀ n, P2460262176244594445.a n = (A153152 n : ℚ)

end A153152

/-! ## A153152.P16648616075074221145

`A303768(A370790(n))`
-/

namespace A153152.P16648616075074221145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303768 (A370790 n).toNat

end

end A153152.P16648616075074221145

namespace A153152

/-- `A303768(A370790(n))` -/
def P16648616075074221145.Spec : Prop :=
  ∀ n, P16648616075074221145.a n = A153152 n

end A153152

/-! ## A153152.P3974940384825540507

`A053645(n+1)+A053644(n)`
-/

namespace A153152.P3974940384825540507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1) + A053644 n

end

end A153152.P3974940384825540507

namespace A153152

/-- `A053645(n+1)+A053644(n)` -/
def P3974940384825540507.Spec : Prop :=
  ∀ n, P3974940384825540507.a n = A153152 n

end A153152

/-! ## A153152.P14692264958406175536

`1-A072376(A099894(n))+n`
-/

namespace A153152.P14692264958406175536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072376 (A099894 n).toNat + (n : ℤ)

end

end A153152.P14692264958406175536

namespace A153152

/-- `1-A072376(A099894(n))+n` -/
def P14692264958406175536.Spec : Prop :=
  ∀ n, P14692264958406175536.a n = A153152 n

end A153152

/-! ## A153152.P11264797184162010904

`gcd(A131738(n), A270306(n+1))`
-/

namespace A153152.P11264797184162010904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A270306 (n + 1))

end

end A153152.P11264797184162010904

namespace A153152

/-- `gcd(A131738(n), A270306(n+1))` -/
def P11264797184162010904.Spec : Prop :=
  ∀ n, (P11264797184162010904.a n : ℤ) = A153152 n

end A153152

/-! ## A153152.P16833108603101535983

`A087156(n+1)/A297382(n+1)`
-/

namespace A153152.P16833108603101535983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087156 (n + 1) : ℚ) / (A297382 (n + 1) : ℚ)

end

end A153152.P16833108603101535983

namespace A153152

/-- `A087156(n+1)/A297382(n+1)` -/
def P16833108603101535983.Spec : Prop :=
  ∀ n, P16833108603101535983.a n = (A153152 n : ℚ)

end A153152

/-! ## A153152.P13878353701637117174

`A053644(n+1)+A053644(n)-A080079(n+1)`
-/

namespace A153152.P13878353701637117174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + (A053644 n - A080079 (n + 1))

end

end A153152.P13878353701637117174

namespace A153152

/-- `A053644(n+1)+A053644(n)-A080079(n+1)` -/
def P13878353701637117174.Spec : Prop :=
  ∀ n, P13878353701637117174.a n = A153152 n

end A153152

/-! ## A153152.P1196970519686619201

`Δ[∑[n]-A053644(n)]`
-/

namespace A153152.P1196970519686619201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153152.P1196970519686619201

namespace A153152

/-- `Δ[∑[n]-A053644(n)]` -/
def P1196970519686619201.Spec : Prop :=
  ∀ n, P1196970519686619201.a n = A153152 n

end A153152

/-! ## A153152.P818950725212119795

`xor(n+1, A099892(n+1))`
-/

namespace A153152.P818950725212119795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A099892 (n + 1))

end

end A153152.P818950725212119795

namespace A153152

/-- `xor(n+1, A099892(n+1))` -/
def P818950725212119795.Spec : Prop :=
  ∀ n, P818950725212119795.a n = A153152 n

end A153152

/-! ## A153152.P14065181446675416512

`A053645(n+1)+A256999(n)-A257697(n)`
-/

namespace A153152.P14065181446675416512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1) + (A256999 n - A257697 n)

end

end A153152.P14065181446675416512

namespace A153152

/-- `A053645(n+1)+A256999(n)-A257697(n)` -/
def P14065181446675416512.Spec : Prop :=
  ∀ n, P14065181446675416512.a n = A153152 n

end A153152

/-! ## A153152.P7047545193911214007

`A072376(2*n)+A053645(n+1)`
-/

namespace A153152.P7047545193911214007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (2 * n) + A053645 (n + 1)

end

end A153152.P7047545193911214007

namespace A153152

/-- `A072376(2*n)+A053645(n+1)` -/
def P7047545193911214007.Spec : Prop :=
  ∀ n, P7047545193911214007.a n = A153152 n

end A153152

/-! ## A153152.P12886012659665392549

`Δ[∑[n]-A072376(2*n)]`
-/

namespace A153152.P12886012659665392549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A072376 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153152.P12886012659665392549

namespace A153152

/-- `Δ[∑[n]-A072376(2*n)]` -/
def P12886012659665392549.Spec : Prop :=
  ∀ n, P12886012659665392549.a n = A153152 n

end A153152

/-! ## A153152.P9726177715156809398

`floor(A048671(2*(n+1))/2)`
-/

namespace A153152.P9726177715156809398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048671 (2 * (n + 1)) : ℚ) / 2⌋

end

end A153152.P9726177715156809398

namespace A153152

/-- `floor(A048671(2*(n+1))/2)` -/
def P9726177715156809398.Spec : Prop :=
  ∀ n, P9726177715156809398.a n = A153152 n

end A153152

/-! ## A153152.P13610097930340813149

`floor((n+1)/A014963(2*(n+1)))`
-/

namespace A153152.P13610097930340813149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A014963 (2 * (n + 1)) : ℚ)⌋

end

end A153152.P13610097930340813149

namespace A153152

/-- `floor((n+1)/A014963(2*(n+1)))` -/
def P13610097930340813149.Spec : Prop :=
  ∀ n, P13610097930340813149.a n = A153152 n

end A153152

/-! ## A153152.P757367949239395732

`Δ[a(n-1)+n/A014963(2*n)]` with `a(0)=0, a(1)=0`
-/

namespace A153152.P757367949239395732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (n : ℚ) / (A014963 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153152.P757367949239395732

namespace A153152

/-- `Δ[a(n-1)+n/A014963(2*n)]` -/
def P757367949239395732.Spec : Prop :=
  ∀ n, P757367949239395732.a n = (A153152 n : ℚ)

end A153152

/-!
# A153153: Permutation of natural numbers: A059893-conjugate of A003188.

The programs for A153153, the canonical program `A153153.P13380444019182590244` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153153 has offset 0).

The definition of A153153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153153.P12519399523888932116

`floor(A231550(2*n+1)/2)`
-/

namespace A153153.P12519399523888932116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231550 (2 * n + 1) : ℚ) / 2⌋

end

end A153153.P12519399523888932116

namespace A153153

/-- `floor(A231550(2*n+1)/2)` -/
def P12519399523888932116.Spec : Prop :=
  ∀ n, P12519399523888932116.a n = A153153 n

end A153153

/-! ## A153153.P261545866963033867

`A092569(A154438(n))`
-/

namespace A153153.P261545866963033867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A154438 n).toNat

end

end A153153.P261545866963033867

namespace A153153

/-- `A092569(A154438(n))` -/
def P261545866963033867.Spec : Prop :=
  ∀ n, P261545866963033867.a n = A153153 n

end A153153

/-! ## A153153.P3835502024115488558

`xor(A157928(n), A231550(n))`
-/

namespace A153153.P3835502024115488558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157928 n) (A231550 n)

end

end A153153.P3835502024115488558

namespace A153153

/-- `xor(A157928(n), A231550(n))` -/
def P3835502024115488558.Spec : Prop :=
  ∀ n, P3835502024115488558.a n = A153153 n

end A153153

/-! ## A153153.P13874105200961708215

`A341915(A145342(n+1)-1)`
-/

namespace A153153.P13874105200961708215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A145342 (n + 1) - 1).toNat

end

end A153153.P13874105200961708215

namespace A153153

/-- `A341915(A145342(n+1)-1)` -/
def P13874105200961708215.Spec : Prop :=
  ∀ n, P13874105200961708215.a n = A153153 n

end A153153

/-! ## A153153.P2982972194664533019

`A341915(A030109(2*n+1))`
-/

namespace A153153.P2982972194664533019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A030109 (2 * n + 1)).toNat

end

end A153153.P2982972194664533019

namespace A153153

/-- `A341915(A030109(2*n+1))` -/
def P2982972194664533019.Spec : Prop :=
  ∀ n, P2982972194664533019.a n = A153153 n

end A153153

/-! ## A153153.P12467708500249215741

`A231550(A092569(2*n)/2)`
-/

namespace A153153.P12467708500249215741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A153153.P12467708500249215741

namespace A153153

/-- `A231550(A092569(2*n)/2)` -/
def P12467708500249215741.Spec : Prop :=
  ∀ n, P12467708500249215741.a n = A153153 n

end A153153

/-! ## A153153.P4061372074669404321

`A341915(A049773(2*n+1)-1)`
-/

namespace A153153.P4061372074669404321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A049773 (2 * n + 1) - 1).toNat

end

end A153153.P4061372074669404321

namespace A153153

/-- `A341915(A049773(2*n+1)-1)` -/
def P4061372074669404321.Spec : Prop :=
  ∀ n, P4061372074669404321.a n = A153153 n

end A153153

/-! ## A153153.P6430449242639480440

`A341915((A145341(n+1)-1)/2)`
-/

namespace A153153.P6430449242639480440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (SequenceMachineLib.roundAway ((A145341 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A153153.P6430449242639480440

namespace A153153

/-- `A341915((A145341(n+1)-1)/2)` -/
def P6430449242639480440.Spec : Prop :=
  ∀ n, P6430449242639480440.a n = A153153 n

end A153153

/-! ## A153153.P13380444019182590244

`or(A038554(2*n+1), A053644(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153153

/-- `or(A038554(2*n+1), A053644(n))` -/
def P13380444019182590244.Spec : Prop :=
  ∀ n, P13380444019182590244.a n = A153153 n

theorem P13380444019182590244.correct : P13380444019182590244.Spec := by
  intro n
  simp only [A153153]

end A153153

/-! ## A153153.P10199448803637021099

`A292944(2*n+1)+2*A229762(n)`
-/

namespace A153153.P10199448803637021099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292944 (2 * n + 1) + 2 * A229762 n

end

end A153153.P10199448803637021099

namespace A153153

/-- `A292944(2*n+1)+2*A229762(n)` -/
def P10199448803637021099.Spec : Prop :=
  ∀ n, P10199448803637021099.a n = A153153 n

end A153153

/-! ## A153153.P10372671549749640433

`A269170(2*n+1)-A292264(2*n+1)`
-/

namespace A153153.P10372671549749640433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (2 * n + 1) - A292264 (2 * n + 1)

end

end A153153.P10372671549749640433

namespace A153153

/-- `A269170(2*n+1)-A292264(2*n+1)` -/
def P10372671549749640433.Spec : Prop :=
  ∀ n, P10372671549749640433.a n = A153153 n

end A153153

/-! ## A153153.P2291297269263782419

`A292944(2*n+1)-A048735(2*n+1)+n`
-/

namespace A153153.P2291297269263782419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292944 (2 * n + 1) - A048735 (2 * n + 1) + (n : ℤ)

end

end A153153.P2291297269263782419

namespace A153153

/-- `A292944(2*n+1)-A048735(2*n+1)+n` -/
def P2291297269263782419.Spec : Prop :=
  ∀ n, P2291297269263782419.a n = A153153 n

end A153153

/-! ## A153153.P3844885834844436412

`A292272(2*n+1)-A292264(2*n+1)+n`
-/

namespace A153153.P3844885834844436412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (2 * n + 1) - A292264 (2 * n + 1) + (n : ℤ)

end

end A153153.P3844885834844436412

namespace A153153

/-- `A292272(2*n+1)-A292264(2*n+1)+n` -/
def P3844885834844436412.Spec : Prop :=
  ∀ n, P3844885834844436412.a n = A153153 n

end A153153

/-! ## A153153.P15721575437933614705

`A231550(A154435(A180201(n)))`
-/

namespace A153153.P15721575437933614705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A154435 (A180201 n).toNat).toNat

end

end A153153.P15721575437933614705

namespace A153153

/-- `A231550(A154435(A180201(n)))` -/
def P15721575437933614705.Spec : Prop :=
  ∀ n, P15721575437933614705.a n = A153153 n

end A153153

/-! ## A153153.P8571684441882294137

`A231550(A153154(A231550(n)))`
-/

namespace A153153.P8571684441882294137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A153154 (A231550 n).toNat).toNat

end

end A153153.P8571684441882294137

namespace A153153

/-- `A231550(A153154(A231550(n)))` -/
def P8571684441882294137.Spec : Prop :=
  ∀ n, P8571684441882294137.a n = A153153 n

end A153153

/-! ## A153153.P8107074854712742079

`A231550(A231550(A154437(n)))`
-/

namespace A153153.P8107074854712742079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A231550 (A154437 n).toNat).toNat

end

end A153153.P8107074854712742079

namespace A153153

/-- `A231550(A231550(A154437(n)))` -/
def P8107074854712742079.Spec : Prop :=
  ∀ n, P8107074854712742079.a n = A153153 n

end A153153

/-! ## A153153.P13487138363539250015

`A341915(A003188(A341916(n)))`
-/

namespace A153153.P13487138363539250015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A003188 (A341916 n).toNat).toNat

end

end A153153.P13487138363539250015

namespace A153153

/-- `A341915(A003188(A341916(n)))` -/
def P13487138363539250015.Spec : Prop :=
  ∀ n, P13487138363539250015.a n = A153153 n

end A153153

/-! ## A153153.P979723906817231932

`A341915(A341915(A006068(n)))`
-/

namespace A153153.P979723906817231932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A341915 (A006068 n).toNat).toNat

end

end A153153.P979723906817231932

namespace A153153

/-- `A341915(A341915(A006068(n)))` -/
def P979723906817231932.Spec : Prop :=
  ∀ n, P979723906817231932.a n = A153153 n

end A153153

/-! ## A153153.P17476862274193871520

`A341915(A153154(A341915(n)))`
-/

namespace A153153.P17476862274193871520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A153154 (A341915 n).toNat).toNat

end

end A153153.P17476862274193871520

namespace A153153

/-- `A341915(A153154(A341915(n)))` -/
def P17476862274193871520.Spec : Prop :=
  ∀ n, P17476862274193871520.a n = A153153 n

end A153153

/-! ## A153153.P6212442154312460904

`or(A003188(A006257(n)), A053644(n))`
-/

namespace A153153.P6212442154312460904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003188 (A006257 n).toNat) (A053644 n)

end

end A153153.P6212442154312460904

namespace A153153

/-- `or(A003188(A006257(n)), A053644(n))` -/
def P6212442154312460904.Spec : Prop :=
  ∀ n, P6212442154312460904.a n = A153153 n

end A153153

/-!
# A153154: Permutation of natural numbers: A059893-conjugate of A006068.

The programs for A153154, the canonical program `A153154.P7572810253408837238` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153154 has offset 0).

The definition of A153154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153154.P11579807251342361581

`floor(A231551(2*n+1)/2)`
-/

namespace A153154.P11579807251342361581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231551 (2 * n + 1) : ℚ) / 2⌋

end

end A153154.P11579807251342361581

namespace A153154

/-- `floor(A231551(2*n+1)/2)` -/
def P11579807251342361581.Spec : Prop :=
  ∀ n, P11579807251342361581.a n = A153154 n

end A153154

/-! ## A153154.P11768316767506096888

`A154437(A092569(n))`
-/

namespace A153154.P11768316767506096888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (A092569 n).toNat

end

end A153154.P11768316767506096888

namespace A153154

/-- `A154437(A092569(n))` -/
def P11768316767506096888.Spec : Prop :=
  ∀ n, P11768316767506096888.a n = A153154 n

end A153154

/-! ## A153154.P13041214203067066315

`A393980(A233279(n))`
-/

namespace A153154.P13041214203067066315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393980 (A233279 n).toNat

end

end A153154.P13041214203067066315

namespace A153154

/-- `A393980(A233279(n))` -/
def P13041214203067066315.Spec : Prop :=
  ∀ n, P13041214203067066315.a n = A153154 n

end A153154

/-! ## A153154.P8357650458180375434

`A245710(A231551(2*n+1))`
-/

namespace A153154.P8357650458180375434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 (A231551 (2 * n + 1)).toNat

end

end A153154.P8357650458180375434

namespace A153154

/-- `A245710(A231551(2*n+1))` -/
def P8357650458180375434.Spec : Prop :=
  ∀ n, P8357650458180375434.a n = A153154 n

end A153154

/-! ## A153154.P8962685963049982339

`A092569(A231551(2*n))/2`
-/

namespace A153154.P8962685963049982339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (A231551 (2 * n)).toNat : ℚ) / 2

end

end A153154.P8962685963049982339

namespace A153154

/-- `A092569(A231551(2*n))/2` -/
def P8962685963049982339.Spec : Prop :=
  ∀ n, P8962685963049982339.a n = (A153154 n : ℚ)

end A153154

/-! ## A153154.P5168344957044881801

`A154437(A153153(A154437(n)))`
-/

namespace A153154.P5168344957044881801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (A153153 (A154437 n).toNat).toNat

end

end A153154.P5168344957044881801

namespace A153154

/-- `A154437(A153153(A154437(n)))` -/
def P5168344957044881801.Spec : Prop :=
  ∀ n, P5168344957044881801.a n = A153154 n

end A153154

/-! ## A153154.P5643797137426044221

`A231551(A153153(A231551(n)))`
-/

namespace A153154.P5643797137426044221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A153153 (A231551 n).toNat).toNat

end

end A153154.P5643797137426044221

namespace A153154

/-- `A231551(A153153(A231551(n)))` -/
def P5643797137426044221.Spec : Prop :=
  ∀ n, P5643797137426044221.a n = A153154 n

end A153154

/-! ## A153154.P7572810253408837238

`A003188(A341916(A341916(n)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A153154

/-- `A003188(A341916(A341916(n)))` -/
def P7572810253408837238.Spec : Prop :=
  ∀ n, P7572810253408837238.a n = A153154 n

theorem P7572810253408837238.correct : P7572810253408837238.Spec := by
  intro n
  simp only [A153154]

end A153154

/-! ## A153154.P3050248237832070038

`A341915(A006068(A341916(2*n-n)))`
-/

namespace A153154.P3050248237832070038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A006068 (A341916 (2 * n - n)).toNat).toNat

end

end A153154.P3050248237832070038

namespace A153154

/-- `A341915(A006068(A341916(2*n-n)))` -/
def P3050248237832070038.Spec : Prop :=
  ∀ n, P3050248237832070038.a n = A153154 n

end A153154

/-! ## A153154.P5477544527611899625

`A003188(A154435(A154437(A003188(A154435(n)))))`
-/

namespace A153154.P5477544527611899625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A154435 (A154437 (A003188 (A154435 n).toNat).toNat).toNat).toNat

end

end A153154.P5477544527611899625

namespace A153154

/-- `A003188(A154435(A154437(A003188(A154435(n)))))` -/
def P5477544527611899625.Spec : Prop :=
  ∀ n, P5477544527611899625.a n = A153154 n

end A153154

/-! ## A153154.P5843778781445088547

`A154436(A006068(A154437(A154436(A006068(n)))))`
-/

namespace A153154.P5843778781445088547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A006068 (A154437 (A154436 (A006068 n).toNat).toNat).toNat).toNat

end

end A153154.P5843778781445088547

namespace A153154

/-- `A154436(A006068(A154437(A154436(A006068(n)))))` -/
def P5843778781445088547.Spec : Prop :=
  ∀ n, P5843778781445088547.a n = A153154 n

end A153154

/-! ## A153154.P17591654854246484505

`A154438(A231551(A231551(A154437(A154438(n)))))`
-/

namespace A153154.P17591654854246484505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154438 (A231551 (A231551 (A154437 (A154438 n).toNat).toNat).toNat).toNat

end

end A153154.P17591654854246484505

namespace A153154

/-- `A154438(A231551(A231551(A154437(A154438(n)))))` -/
def P17591654854246484505.Spec : Prop :=
  ∀ n, P17591654854246484505.a n = A153154 n

end A153154

/-!
# A153155: Coefficients of the eighth-order mock theta function T_0(q).

The programs for A153155, there is no canonical definition to state claims against.
-/

/-! ## A153155.P14245974663571739068

`(A260313(2*n)-A006306(2*n))/4`
-/

namespace A153155.P14245974663571739068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260313 (2 * n) - A006306 (2 * n) : ℚ) / 4

end

end A153155.P14245974663571739068

/-! ## A153155.P168037039532427362

`(A153172(2*n)-A006306(2*n))/2`
-/

namespace A153155.P168037039532427362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153172 (2 * n) - A006306 (2 * n) : ℚ) / 2

end

end A153155.P168037039532427362

/-! ## A153155.P2084551240727336174

`(A260313(2*n)-A153172(2*n))/2`
-/

namespace A153155.P2084551240727336174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260313 (2 * n) - A153172 (2 * n) : ℚ) / 2

end

end A153155.P2084551240727336174

/-! ## A153155.P8304074892849052794

`A153174(2*n)`
-/

namespace A153155.P8304074892849052794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153174 (2 * n)

end

end A153155.P8304074892849052794

/-! ## A153155.P14587903081783865808

`A153174(Δ[n²]-1)%A000108(n)`
-/

namespace A153155.P14587903081783865808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153174 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat) (A000108 n)

end

end A153155.P14587903081783865808

/-!
# A153156: Coefficients of the eighth-order mock theta function T_1(q).

The programs for A153156, there is no canonical definition to state claims against.
-/

/-! ## A153156.P4097880394461287328

`(A153172(2*n+1)-A006306(2*n+1))/2`
-/

namespace A153156.P4097880394461287328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153172 (2 * n + 1) - A006306 (2 * n + 1) : ℚ) / 2

end

end A153156.P4097880394461287328

/-! ## A153156.P18008204778114041222

`(A260313(2*n+1)-A153172(2*n+1))/2`
-/

namespace A153156.P18008204778114041222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260313 (2 * n + 1) - A153172 (2 * n + 1) : ℚ) / 2

end

end A153156.P18008204778114041222

/-! ## A153156.P12093282549672744211

`A153174(Δ[n²])`
-/

namespace A153156.P12093282549672744211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153174 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153156.P12093282549672744211

/-! ## A153156.P12395222713241737109

`or(char[1], A153174(2*n+1))`
-/

namespace A153156.P12395222713241737109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A153174 (2 * n + 1))

end

end A153156.P12395222713241737109

/-! ## A153156.P4928112193009506900

`A153174(2*n+1)%A008776(n)`
-/

namespace A153156.P4928112193009506900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153174 (2 * n + 1)) (A008776 n)

end

end A153156.P4928112193009506900

/-!
# A153157: a(n) = A007916(n)^4.

The programs for A153157, the canonical program `A153157.P12649901259669527371` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153157 has offset 1).

The definition of A153157 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153157.P12649901259669527371

`A007916(n+1)^4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153157

/-- `A007916(n+1)^4` -/
def P12649901259669527371.Spec : Prop :=
  ∀ n, P12649901259669527371.a n = A153157 (n + 1)

theorem P12649901259669527371.correct : P12649901259669527371.Spec := by
  intro n
  simp only [A153157, Nat.add_sub_cancel]

end A153157

/-! ## A153157.P2888153668508448970

`A153158(n+1)²`
-/

namespace A153157.P2888153668508448970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153158 (n + 1) ^ 2

end

end A153157.P2888153668508448970

namespace A153157

/-- `A153158(n+1)²` -/
def P2888153668508448970.Spec : Prop :=
  ∀ n, P2888153668508448970.a n = A153157 (n + 1)

theorem P2888153668508448970.correct : P2888153668508448970.Spec := by
  intro n
  simp only [A153157, Nat.add_sub_cancel, A153157.P2888153668508448970.a, A153157.P12649901259669527371.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153158, A153158.P10760581293550198804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153157

/-! ## A153157.P8438117434397688127

`(A037450(n+1)+1)²`
-/

namespace A153157.P8438117434397688127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037450 (n + 1) + 1) ^ 2

end

end A153157.P8438117434397688127

namespace A153157

/-- `(A037450(n+1)+1)²` -/
def P8438117434397688127.Spec : Prop :=
  ∀ n, P8438117434397688127.a n = A153157 (n + 1)

theorem P8438117434397688127.correct : P8438117434397688127.Spec := by
  intro n
  simp only [A153157, Nat.add_sub_cancel, A153157.P8438117434397688127.a, A153157.P12649901259669527371.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A037450, A037450.P975231576386369614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153157

/-! ## A153157.P1823412535809035052

`root(A153160(n+1), 3)²`
-/

namespace A153157.P1823412535809035052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A153160 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2

end

end A153157.P1823412535809035052

namespace A153157

/-- `root(A153160(n+1), 3)²` -/
def P1823412535809035052.Spec : Prop :=
  ∀ n, P1823412535809035052.a n = (A153157 (n + 1) : ℝ)

end A153157

/-! ## A153157.P17065289351777262189

`record[A052410(n+2)²²]`
-/

namespace A153157.P17065289351777262189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153157.P17065289351777262189

namespace A153157

/-- `record[A052410(n+2)²²]` -/
def P17065289351777262189.Spec : Prop :=
  ∀ n, P17065289351777262189.a n = A153157 (n + 1)

end A153157

/-! ## A153157.P12048210702095955505

`A007916(n+1)*A153147(n+1)`
-/

namespace A153157.P12048210702095955505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) * A153147 (n + 1)

end

end A153157.P12048210702095955505

namespace A153157

/-- `A007916(n+1)*A153147(n+1)` -/
def P12048210702095955505.Spec : Prop :=
  ∀ n, P12048210702095955505.a n = A153157 (n + 1)

theorem P12048210702095955505.correct : P12048210702095955505.Spec := by
  intro n
  simp only [A153157, Nat.add_sub_cancel, A153157.P12048210702095955505.a, A153157.P12649901259669527371.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153147, A153147.P16009883647393615735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153157

/-! ## A153157.P6662019626929599397

`A153159(n+1)/A007916(n+1)`
-/

namespace A153157.P6662019626929599397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153159 (n + 1) : ℚ) / (A007916 (n + 1) : ℚ)

end

end A153157.P6662019626929599397

namespace A153157

/-- `A153159(n+1)/A007916(n+1)` -/
def P6662019626929599397.Spec : Prop :=
  ∀ n, P6662019626929599397.a n = (A153157 (n + 1) : ℚ)

end A153157

/-! ## A153157.P4388293716278600853

`A153160(n+1)/A153158(n+1)`
-/

namespace A153157.P4388293716278600853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153160 (n + 1) : ℚ) / (A153158 (n + 1) : ℚ)

end

end A153157.P4388293716278600853

namespace A153157

/-- `A153160(n+1)/A153158(n+1)` -/
def P4388293716278600853.Spec : Prop :=
  ∀ n, P4388293716278600853.a n = (A153157 (n + 1) : ℚ)

end A153157

/-! ## A153157.P1998234670641667070

`(A153159(n+1)/A153147(n+1))²`
-/

namespace A153157.P1998234670641667070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153159 (n + 1) : ℚ) / (A153147 (n + 1) : ℚ)) ^ 2

end

end A153157.P1998234670641667070

namespace A153157

/-- `(A153159(n+1)/A153147(n+1))²` -/
def P1998234670641667070.Spec : Prop :=
  ∀ n, P1998234670641667070.a n = (A153157 (n + 1) : ℚ)

end A153157

/-! ## A153157.P15950720216260314239

`A153159(n+1)²/A153160(n+1)`
-/

namespace A153157.P15950720216260314239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153159 (n + 1) ^ 2 : ℚ) / (A153160 (n + 1) : ℚ)

end

end A153157.P15950720216260314239

namespace A153157

/-- `A153159(n+1)²/A153160(n+1)` -/
def P15950720216260314239.Spec : Prop :=
  ∀ n, P15950720216260314239.a n = (A153157 (n + 1) : ℚ)

end A153157

/-! ## A153157.P5754613664253384321

`∪[A000040(n+1), A106543(n+1)]²²`
-/

namespace A153157.P5754613664253384321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2) ^ 2

end

end A153157.P5754613664253384321

namespace A153157

/-- `∪[A000040(n+1), A106543(n+1)]²²` -/
def P5754613664253384321.Spec : Prop :=
  ∀ n, (P5754613664253384321.a n : ℤ) = A153157 (n + 1)

end A153157

/-! ## A153157.P15048668392524961968

`A007916(n+1)*A007916(n+1)*A153158(n+1)`
-/

namespace A153157.P15048668392524961968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) * A007916 (n + 1) * A153158 (n + 1)

end

end A153157.P15048668392524961968

namespace A153157

/-- `A007916(n+1)*A007916(n+1)*A153158(n+1)` -/
def P15048668392524961968.Spec : Prop :=
  ∀ n, P15048668392524961968.a n = A153157 (n + 1)

theorem P15048668392524961968.correct : P15048668392524961968.Spec := by
  intro n
  simp only [A153157, Nat.add_sub_cancel, A153157.P15048668392524961968.a, A153157.P12649901259669527371.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153158, A153158.P10760581293550198804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153157

/-! ## A153157.P13887712932895539380

`A153160(n+1)/(A007916(n+1)*A007916(n+1))`
-/

namespace A153157.P13887712932895539380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153160 (n + 1) : ℚ) / (A007916 (n + 1) * A007916 (n + 1) : ℚ)

end

end A153157.P13887712932895539380

namespace A153157

/-- `A153160(n+1)/(A007916(n+1)*A007916(n+1))` -/
def P13887712932895539380.Spec : Prop :=
  ∀ n, P13887712932895539380.a n = (A153157 (n + 1) : ℚ)

end A153157

/-! ## A153157.P9592158899876889838

`A153147(n+1)*A153147(n+1)/A153158(n+1)`
-/

namespace A153157.P9592158899876889838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153147 (n + 1) * A153147 (n + 1) : ℚ) / (A153158 (n + 1) : ℚ)

end

end A153157.P9592158899876889838

namespace A153157

/-- `A153147(n+1)*A153147(n+1)/A153158(n+1)` -/
def P9592158899876889838.Spec : Prop :=
  ∀ n, P9592158899876889838.a n = (A153157 (n + 1) : ℚ)

end A153157

/-! ## A153157.P12340744862675741662

`A153147(n+1)/A153159(n+1)*A153160(n+1)`
-/

namespace A153157.P12340744862675741662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153147 (n + 1) : ℚ) / (A153159 (n + 1) : ℚ) * (A153160 (n + 1) : ℚ)

end

end A153157.P12340744862675741662

namespace A153157

/-- `A153147(n+1)/A153159(n+1)*A153160(n+1)` -/
def P12340744862675741662.Spec : Prop :=
  ∀ n, P12340744862675741662.a n = (A153157 (n + 1) : ℚ)

end A153157

/-! ## A153157.P1315233813141712049

`A175082(n+2)^4`
-/

namespace A153157.P1315233813141712049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 2) ^ 4

end

end A153157.P1315233813141712049

namespace A153157

/-- `A175082(n+2)^4` -/
def P1315233813141712049.Spec : Prop :=
  ∀ n, P1315233813141712049.a n = A153157 (n + 1)

end A153157

/-! ## A153157.P681775860919707130

`A357579(A357986(n+1))²²`
-/

namespace A153157.P681775860919707130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A357579 (A357986 (n + 1)).toNat ^ 2) ^ 2

end

end A153157.P681775860919707130

namespace A153157

/-- `A357579(A357986(n+1))²²` -/
def P681775860919707130.Spec : Prop :=
  ∀ n, P681775860919707130.a n = A153157 (n + 1)

end A153157

/-! ## A153157.P15425777955138097010

`A153147(n+1)*A357579(A357986(n+1))`
-/

namespace A153157.P15425777955138097010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1) * A357579 (A357986 (n + 1)).toNat

end

end A153157.P15425777955138097010

namespace A153157

/-- `A153147(n+1)*A357579(A357986(n+1))` -/
def P15425777955138097010.Spec : Prop :=
  ∀ n, P15425777955138097010.a n = A153157 (n + 1)

end A153157

/-! ## A153157.P10411414590343475453

`record[A073843(n+2)²]`
-/

namespace A153157.P10411414590343475453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073843 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153157.P10411414590343475453

namespace A153157

/-- `record[A073843(n+2)²]` -/
def P10411414590343475453.Spec : Prop :=
  ∀ n, P10411414590343475453.a n = A153157 (n + 1)

end A153157

/-! ## A153157.P5012336516257479688

`record[A175781(n+2)²²]`
-/

namespace A153157.P5012336516257479688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175781 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153157.P5012336516257479688

namespace A153157

/-- `record[A175781(n+2)²²]` -/
def P5012336516257479688.Spec : Prop :=
  ∀ n, P5012336516257479688.a n = A153157 (n + 1)

end A153157

/-!
# A153158: a(n) = A007916(n)^2.

The programs for A153158, the canonical program `A153158.P10760581293550198804` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153158 has offset 1).

The definition of A153158 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153158.P10760581293550198804

`A007916(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153158

/-- `A007916(n+1)²` -/
def P10760581293550198804.Spec : Prop :=
  ∀ n, P10760581293550198804.a n = A153158 (n + 1)

theorem P10760581293550198804.correct : P10760581293550198804.Spec := by
  intro n
  simp only [A153158, Nat.add_sub_cancel]

end A153158

/-! ## A153158.P18042847209043047151

`comp[floor(n/(xor(n, n+1)+1))^(val(n+1, 2)+2)]²`
-/

namespace A153158.P18042847209043047151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ ^ (SequenceMachineLib.valuation (n + 1) 2 + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A153158.P18042847209043047151

namespace A153158

/-- `comp[floor(n/(xor(n, n+1)+1))^(val(n+1, 2)+2)]²` -/
def P18042847209043047151.Spec : Prop :=
  ∀ n, (P18042847209043047151.a n : ℤ) = A153158 (n + 1)

end A153158

/-! ## A153158.P16612730197236702564

`sqrt(A153157(n+1))`
-/

namespace A153158.P16612730197236702564
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153157 (n + 1) : ℝ)

end

end A153158.P16612730197236702564

namespace A153158

/-- `sqrt(A153157(n+1))` -/
def P16612730197236702564.Spec : Prop :=
  ∀ n, P16612730197236702564.a n = (A153158 (n + 1) : ℝ)

end A153158

/-! ## A153158.P7436811729822722183

`A037450(n+1)+1`
-/

namespace A153158.P7436811729822722183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037450 (n + 1) + 1

end

end A153158.P7436811729822722183

namespace A153158

/-- `A037450(n+1)+1` -/
def P7436811729822722183.Spec : Prop :=
  ∀ n, P7436811729822722183.a n = A153158 (n + 1)

theorem P7436811729822722183.correct : P7436811729822722183.Spec := by
  intro n
  simp only [A153158, Nat.add_sub_cancel, A153158.P7436811729822722183.a, A153158.P10760581293550198804.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A037450, A037450.P975231576386369614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153158

/-! ## A153158.P7832691045631304504

`root(A153160(n+1), 3)`
-/

namespace A153158.P7832691045631304504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A153160 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A153158.P7832691045631304504

namespace A153158

/-- `root(A153160(n+1), 3)` -/
def P7832691045631304504.Spec : Prop :=
  ∀ n, P7832691045631304504.a n = (A153158 (n + 1) : ℝ)

end A153158

/-! ## A153158.P1760035556341971807

`record[A052410(n+2)²]`
-/

namespace A153158.P1760035556341971807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153158.P1760035556341971807

namespace A153158

/-- `record[A052410(n+2)²]` -/
def P1760035556341971807.Spec : Prop :=
  ∀ n, P1760035556341971807.a n = A153158 (n + 1)

end A153158

/-! ## A153158.P17947928886497027342

`A153147(n+1)^(2/3)`
-/

namespace A153158.P17947928886497027342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A153147 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A153158.P17947928886497027342

namespace A153158

/-- `A153147(n+1)^(2/3)` -/
def P17947928886497027342.Spec : Prop :=
  ∀ n, P17947928886497027342.a n = (A153158 (n + 1) : ℝ)

end A153158

/-! ## A153158.P18190928912544576462

`(eq[1, A052409(n+1)]+1)²`
-/

namespace A153158.P18190928912544576462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A153158.P18190928912544576462

namespace A153158

/-- `(eq[1, A052409(n+1)]+1)²` -/
def P18190928912544576462.Spec : Prop :=
  ∀ n, (P18190928912544576462.a n : ℤ) = A153158 (n + 1)

end A153158

/-! ## A153158.P1757011096861400276

`(eq[1, A288636(n+1)]+1)²`
-/

namespace A153158.P1757011096861400276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A153158.P1757011096861400276

namespace A153158

/-- `(eq[1, A288636(n+1)]+1)²` -/
def P1757011096861400276.Spec : Prop :=
  ∀ n, (P1757011096861400276.a n : ℤ) = A153158 (n + 1)

end A153158

/-! ## A153158.P3417187630924349662

`(eq[1, A304495(n+1)]+1)²`
-/

namespace A153158.P3417187630924349662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304495 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A153158.P3417187630924349662

namespace A153158

/-- `(eq[1, A304495(n+1)]+1)²` -/
def P3417187630924349662.Spec : Prop :=
  ∀ n, (P3417187630924349662.a n : ℤ) = A153158 (n + 1)

end A153158

/-! ## A153158.P10046118115774080353

`(comp[A001597(n+1)-1]+1)²`
-/

namespace A153158.P10046118115774080353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2

end

end A153158.P10046118115774080353

namespace A153158

/-- `(comp[A001597(n+1)-1]+1)²` -/
def P10046118115774080353.Spec : Prop :=
  ∀ n, (P10046118115774080353.a n : ℤ) = A153158 (n + 1)

end A153158

/-! ## A153158.P5949578174854516082

`(lt[A089723(n+1), abs(sin(n))+1]+1)²`
-/

namespace A153158.P5949578174854516082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin (n : ℝ)| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1) ^ 2

end

end A153158.P5949578174854516082

namespace A153158

/-- `(lt[A089723(n+1), abs(sin(n))+1]+1)²` -/
def P5949578174854516082.Spec : Prop :=
  ∀ n, (P5949578174854516082.a n : ℤ) = A153158 (n + 1)

end A153158

/-! ## A153158.P12036174066106762731

`A153147(n+1)/A007916(n+1)`
-/

namespace A153158.P12036174066106762731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153147 (n + 1) : ℚ) / (A007916 (n + 1) : ℚ)

end

end A153158.P12036174066106762731

namespace A153158

/-- `A153147(n+1)/A007916(n+1)` -/
def P12036174066106762731.Spec : Prop :=
  ∀ n, P12036174066106762731.a n = (A153158 (n + 1) : ℚ)

end A153158

/-! ## A153158.P8014767631739519984

`A153159(n+1)/A153147(n+1)`
-/

namespace A153158.P8014767631739519984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153159 (n + 1) : ℚ) / (A153147 (n + 1) : ℚ)

end

end A153158.P8014767631739519984

namespace A153158

/-- `A153159(n+1)/A153147(n+1)` -/
def P8014767631739519984.Spec : Prop :=
  ∀ n, P8014767631739519984.a n = (A153158 (n + 1) : ℚ)

end A153158

/-! ## A153158.P7866860538813261195

`A153160(n+1)/A153157(n+1)`
-/

namespace A153158.P7866860538813261195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153160 (n + 1) : ℚ) / (A153157 (n + 1) : ℚ)

end

end A153158.P7866860538813261195

namespace A153158

/-- `A153160(n+1)/A153157(n+1)` -/
def P7866860538813261195.Spec : Prop :=
  ∀ n, P7866860538813261195.a n = (A153158 (n + 1) : ℚ)

end A153158

/-! ## A153158.P9836457102635493687

`(A153159(n+1)/A153157(n+1))²`
-/

namespace A153158.P9836457102635493687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153159 (n + 1) : ℚ) / (A153157 (n + 1) : ℚ)) ^ 2

end

end A153158.P9836457102635493687

namespace A153158

/-- `(A153159(n+1)/A153157(n+1))²` -/
def P9836457102635493687.Spec : Prop :=
  ∀ n, P9836457102635493687.a n = (A153158 (n + 1) : ℚ)

end A153158

/-! ## A153158.P17238123829532038223

`∪[A000040(n+1), A106543(n+1)]²`
-/

namespace A153158.P17238123829532038223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A153158.P17238123829532038223

namespace A153158

/-- `∪[A000040(n+1), A106543(n+1)]²` -/
def P17238123829532038223.Spec : Prop :=
  ∀ n, (P17238123829532038223.a n : ℤ) = A153158 (n + 1)

end A153158

/-! ## A153158.P3435542471047422177

`A153160(n+1)²/A153159(n+1)²`
-/

namespace A153158.P3435542471047422177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153160 (n + 1) ^ 2 : ℚ) / (A153159 (n + 1) ^ 2 : ℚ)

end

end A153158.P3435542471047422177

namespace A153158

/-- `A153160(n+1)²/A153159(n+1)²` -/
def P3435542471047422177.Spec : Prop :=
  ∀ n, P3435542471047422177.a n = (A153158 (n + 1) : ℚ)

end A153158

/-!
# A153159: a(n) = A007916(n)^5.

The programs for A153159, the canonical program `A153159.P9854970002727943914` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153159 has offset 1).

The definition of A153159 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153159.P9854970002727943914

`A007916(n+1)^5`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153159

/-- `A007916(n+1)^5` -/
def P9854970002727943914.Spec : Prop :=
  ∀ n, P9854970002727943914.a n = A153159 (n + 1)

theorem P9854970002727943914.correct : P9854970002727943914.Spec := by
  intro n
  simp only [A153159, Nat.add_sub_cancel]

end A153159

/-! ## A153159.P6169513188546855523

`sqrt(A153158(n+1)^5)`
-/

namespace A153159.P6169513188546855523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153158 (n + 1) ^ 5 : ℝ)

end

end A153159.P6169513188546855523

namespace A153159

/-- `sqrt(A153158(n+1)^5)` -/
def P6169513188546855523.Spec : Prop :=
  ∀ n, P6169513188546855523.a n = (A153159 (n + 1) : ℝ)

end A153159

/-! ## A153159.P2731309247936366843

`A007916(n+1)*A153157(n+1)`
-/

namespace A153159.P2731309247936366843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) * A153157 (n + 1)

end

end A153159.P2731309247936366843

namespace A153159

/-- `A007916(n+1)*A153157(n+1)` -/
def P2731309247936366843.Spec : Prop :=
  ∀ n, P2731309247936366843.a n = A153159 (n + 1)

theorem P2731309247936366843.correct : P2731309247936366843.Spec := by
  intro n
  simp only [A153159, Nat.add_sub_cancel, A153159.P2731309247936366843.a, A153159.P9854970002727943914.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153157, A153157.P12649901259669527371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153159

/-! ## A153159.P8355878074621706218

`A153147(n+1)*A153158(n+1)`
-/

namespace A153159.P8355878074621706218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1) * A153158 (n + 1)

end

end A153159.P8355878074621706218

namespace A153159

/-- `A153147(n+1)*A153158(n+1)` -/
def P8355878074621706218.Spec : Prop :=
  ∀ n, P8355878074621706218.a n = A153159 (n + 1)

theorem P8355878074621706218.correct : P8355878074621706218.Spec := by
  intro n
  simp only [A153159, Nat.add_sub_cancel, A153159.P8355878074621706218.a, A153159.P9854970002727943914.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153147, A153147.P16009883647393615735.a, A153158, A153158.P10760581293550198804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153159

/-! ## A153159.P13176181406652761537

`A153160(n+1)/A007916(n+1)`
-/

namespace A153159.P13176181406652761537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153160 (n + 1) : ℚ) / (A007916 (n + 1) : ℚ)

end

end A153159.P13176181406652761537

namespace A153159

/-- `A153160(n+1)/A007916(n+1)` -/
def P13176181406652761537.Spec : Prop :=
  ∀ n, P13176181406652761537.a n = (A153159 (n + 1) : ℚ)

end A153159

/-! ## A153159.P6683576866596856371

`A007916(n+1)²*A153147(n+1)`
-/

namespace A153159.P6683576866596856371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) ^ 2 * A153147 (n + 1)

end

end A153159.P6683576866596856371

namespace A153159

/-- `A007916(n+1)²*A153147(n+1)` -/
def P6683576866596856371.Spec : Prop :=
  ∀ n, P6683576866596856371.a n = A153159 (n + 1)

theorem P6683576866596856371.correct : P6683576866596856371.Spec := by
  intro n
  simp only [A153159, Nat.add_sub_cancel, A153159.P6683576866596856371.a, A153159.P9854970002727943914.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153147, A153147.P16009883647393615735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153159

/-! ## A153159.P817472370008203192

`A153158(n+1)²*A007916(n+1)`
-/

namespace A153159.P817472370008203192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153158 (n + 1) ^ 2 * A007916 (n + 1)

end

end A153159.P817472370008203192

namespace A153159

/-- `A153158(n+1)²*A007916(n+1)` -/
def P817472370008203192.Spec : Prop :=
  ∀ n, P817472370008203192.a n = A153159 (n + 1)

theorem P817472370008203192.correct : P817472370008203192.Spec := by
  intro n
  simp only [A153159, Nat.add_sub_cancel, A153159.P817472370008203192.a, A153159.P9854970002727943914.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153158, A153158.P10760581293550198804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153159

/-! ## A153159.P15301980113650218263

`A153157(n+1)²/A153147(n+1)`
-/

namespace A153159.P15301980113650218263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153157 (n + 1) ^ 2 : ℚ) / (A153147 (n + 1) : ℚ)

end

end A153159.P15301980113650218263

namespace A153159

/-- `A153157(n+1)²/A153147(n+1)` -/
def P15301980113650218263.Spec : Prop :=
  ∀ n, P15301980113650218263.a n = (A153159 (n + 1) : ℚ)

end A153159

/-! ## A153159.P1298380197309864295

`sqrt(A153160(n+1))*A153158(n+1)`
-/

namespace A153159.P1298380197309864295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153160 (n + 1) : ℝ) * (A153158 (n + 1) : ℝ)

end

end A153159.P1298380197309864295

namespace A153159

/-- `sqrt(A153160(n+1))*A153158(n+1)` -/
def P1298380197309864295.Spec : Prop :=
  ∀ n, P1298380197309864295.a n = (A153159 (n + 1) : ℝ)

end A153159

/-! ## A153159.P1469934428834777729

`(A037450(n+1)+1)*A153147(n+1)`
-/

namespace A153159.P1469934428834777729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037450 (n + 1) + 1) * A153147 (n + 1)

end

end A153159.P1469934428834777729

namespace A153159

/-- `(A037450(n+1)+1)*A153147(n+1)` -/
def P1469934428834777729.Spec : Prop :=
  ∀ n, P1469934428834777729.a n = A153159 (n + 1)

theorem P1469934428834777729.correct : P1469934428834777729.Spec := by
  intro n
  simp only [A153159, Nat.add_sub_cancel, A153159.P1469934428834777729.a, A153159.P9854970002727943914.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A037450, A037450.P975231576386369614.a, A153147, A153147.P16009883647393615735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153159

/-! ## A153159.P10197500490181956974

`A153147(n+1)/A153157(n+1)*A153160(n+1)`
-/

namespace A153159.P10197500490181956974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153147 (n + 1) : ℚ) / (A153157 (n + 1) : ℚ) * (A153160 (n + 1) : ℚ)

end

end A153159.P10197500490181956974

namespace A153159

/-- `A153147(n+1)/A153157(n+1)*A153160(n+1)` -/
def P10197500490181956974.Spec : Prop :=
  ∀ n, P10197500490181956974.a n = (A153159 (n + 1) : ℚ)

end A153159

/-! ## A153159.P11042227208823953202

`A175082(n+2)^5`
-/

namespace A153159.P11042227208823953202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 2) ^ 5

end

end A153159.P11042227208823953202

namespace A153159

/-- `A175082(n+2)^5` -/
def P11042227208823953202.Spec : Prop :=
  ∀ n, P11042227208823953202.a n = A153159 (n + 1)

end A153159

/-! ## A153159.P14017767331873708128

`A153160(n+1)/A357579(A357986(n+1))`
-/

namespace A153159.P14017767331873708128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153160 (n + 1) : ℚ) / (A357579 (A357986 (n + 1)).toNat : ℚ)

end

end A153159.P14017767331873708128

namespace A153159

/-- `A153160(n+1)/A357579(A357986(n+1))` -/
def P14017767331873708128.Spec : Prop :=
  ∀ n, P14017767331873708128.a n = (A153159 (n + 1) : ℚ)

end A153159

/-! ## A153159.P6082934125747734582

`A357579(A357986(n+1))²*A153147(n+1)`
-/

namespace A153159.P6082934125747734582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357579 (A357986 (n + 1)).toNat ^ 2 * A153147 (n + 1)

end

end A153159.P6082934125747734582

namespace A153159

/-- `A357579(A357986(n+1))²*A153147(n+1)` -/
def P6082934125747734582.Spec : Prop :=
  ∀ n, P6082934125747734582.a n = A153159 (n + 1)

end A153159

/-! ## A153159.P12916832168065756765

`A000584(A007916(n+1))`
-/

namespace A153159.P12916832168065756765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A007916 (n + 1)).toNat

end

end A153159.P12916832168065756765

namespace A153159

/-- `A000584(A007916(n+1))` -/
def P12916832168065756765.Spec : Prop :=
  ∀ n, P12916832168065756765.a n = A153159 (n + 1)

end A153159

/-! ## A153159.P5549135891620193863

`A000584(A175082(n+2))`
-/

namespace A153159.P5549135891620193863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A175082 (n + 2)).toNat

end

end A153159.P5549135891620193863

namespace A153159

/-- `A000584(A175082(n+2))` -/
def P5549135891620193863.Spec : Prop :=
  ∀ n, P5549135891620193863.a n = A153159 (n + 1)

end A153159

/-! ## A153159.P632086123650492593

`record[A025478(n+2)^5]`
-/

namespace A153159.P632086123650492593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 2) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153159.P632086123650492593

namespace A153159

/-- `record[A025478(n+2)^5]` -/
def P632086123650492593.Spec : Prop :=
  ∀ n, P632086123650492593.a n = A153159 (n + 1)

end A153159

/-! ## A153159.P10030875797914245065

`A007916(n+1)²*A175068(A007916(n+1)²)`
-/

namespace A153159.P10030875797914245065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) ^ 2 * A175068 (A007916 (n + 1) ^ 2).toNat

end

end A153159.P10030875797914245065

namespace A153159

/-- `A007916(n+1)²*A175068(A007916(n+1)²)` -/
def P10030875797914245065.Spec : Prop :=
  ∀ n, P10030875797914245065.a n = A153159 (n + 1)

end A153159

/-!
# A153160: a(n) = A007916(n)^6.

The programs for A153160, the canonical program `A153160.P1265359898549205033` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153160 has offset 1).

The definition of A153160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153160.P1265359898549205033

`A007916(n+1)^6`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153160

/-- `A007916(n+1)^6` -/
def P1265359898549205033.Spec : Prop :=
  ∀ n, P1265359898549205033.a n = A153160 (n + 1)

theorem P1265359898549205033.correct : P1265359898549205033.Spec := by
  intro n
  simp only [A153160, Nat.add_sub_cancel]

end A153160

/-! ## A153160.P2913024128187751975

`A153147(n+1)²`
-/

namespace A153160.P2913024128187751975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1) ^ 2

end

end A153160.P2913024128187751975

namespace A153160

/-- `A153147(n+1)²` -/
def P2913024128187751975.Spec : Prop :=
  ∀ n, P2913024128187751975.a n = A153160 (n + 1)

theorem P2913024128187751975.correct : P2913024128187751975.Spec := by
  intro n
  simp only [A153160, Nat.add_sub_cancel, A153160.P2913024128187751975.a, A153160.P1265359898549205033.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153147, A153147.P16009883647393615735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153160

/-! ## A153160.P14166722679542376161

`A153158(n+1)^3`
-/

namespace A153160.P14166722679542376161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153158 (n + 1) ^ 3

end

end A153160.P14166722679542376161

namespace A153160

/-- `A153158(n+1)^3` -/
def P14166722679542376161.Spec : Prop :=
  ∀ n, P14166722679542376161.a n = A153160 (n + 1)

theorem P14166722679542376161.correct : P14166722679542376161.Spec := by
  intro n
  simp only [A153160, Nat.add_sub_cancel, A153160.P14166722679542376161.a, A153160.P1265359898549205033.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153158, A153158.P10760581293550198804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153160

/-! ## A153160.P13890935246992627453

`sqrt(A153157(n+1)^3)`
-/

namespace A153160.P13890935246992627453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153157 (n + 1) ^ 3 : ℝ)

end

end A153160.P13890935246992627453

namespace A153160

/-- `sqrt(A153157(n+1)^3)` -/
def P13890935246992627453.Spec : Prop :=
  ∀ n, P13890935246992627453.a n = (A153160 (n + 1) : ℝ)

end A153160

/-! ## A153160.P5155891090933136879

`(A037450(n+1)+1)^3`
-/

namespace A153160.P5155891090933136879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037450 (n + 1) + 1) ^ 3

end

end A153160.P5155891090933136879

namespace A153160

/-- `(A037450(n+1)+1)^3` -/
def P5155891090933136879.Spec : Prop :=
  ∀ n, P5155891090933136879.a n = A153160 (n + 1)

theorem P5155891090933136879.correct : P5155891090933136879.Spec := by
  intro n
  simp only [A153160, Nat.add_sub_cancel, A153160.P5155891090933136879.a, A153160.P1265359898549205033.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A037450, A037450.P975231576386369614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153160

/-! ## A153160.P17616632667762683931

`A007916(n+1)*A153159(n+1)`
-/

namespace A153160.P17616632667762683931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) * A153159 (n + 1)

end

end A153160.P17616632667762683931

namespace A153160

/-- `A007916(n+1)*A153159(n+1)` -/
def P17616632667762683931.Spec : Prop :=
  ∀ n, P17616632667762683931.a n = A153160 (n + 1)

theorem P17616632667762683931.correct : P17616632667762683931.Spec := by
  intro n
  simp only [A153160, Nat.add_sub_cancel, A153160.P17616632667762683931.a, A153160.P1265359898549205033.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153159, A153159.P9854970002727943914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153160

/-! ## A153160.P16114818458991203287

`A153157(n+1)*A153158(n+1)`
-/

namespace A153160.P16114818458991203287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153157 (n + 1) * A153158 (n + 1)

end

end A153160.P16114818458991203287

namespace A153160

/-- `A153157(n+1)*A153158(n+1)` -/
def P16114818458991203287.Spec : Prop :=
  ∀ n, P16114818458991203287.a n = A153160 (n + 1)

theorem P16114818458991203287.correct : P16114818458991203287.Spec := by
  intro n
  simp only [A153160, Nat.add_sub_cancel, A153160.P16114818458991203287.a, A153160.P1265359898549205033.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153157, A153157.P12649901259669527371.a, A153158, A153158.P10760581293550198804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153160

/-! ## A153160.P16553105581028726138

`(A007916(n+1)*A153158(n+1))²`
-/

namespace A153160.P16553105581028726138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007916 (n + 1) * A153158 (n + 1)) ^ 2

end

end A153160.P16553105581028726138

namespace A153160

/-- `(A007916(n+1)*A153158(n+1))²` -/
def P16553105581028726138.Spec : Prop :=
  ∀ n, P16553105581028726138.a n = A153160 (n + 1)

theorem P16553105581028726138.correct : P16553105581028726138.Spec := by
  intro n
  simp only [A153160, Nat.add_sub_cancel, A153160.P16553105581028726138.a, A153160.P1265359898549205033.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153158, A153158.P10760581293550198804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153160

/-! ## A153160.P10330227192139774797

`A007916(n+1)²*A153157(n+1)`
-/

namespace A153160.P10330227192139774797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) ^ 2 * A153157 (n + 1)

end

end A153160.P10330227192139774797

namespace A153160

/-- `A007916(n+1)²*A153157(n+1)` -/
def P10330227192139774797.Spec : Prop :=
  ∀ n, P10330227192139774797.a n = A153160 (n + 1)

theorem P10330227192139774797.correct : P10330227192139774797.Spec := by
  intro n
  simp only [A153160, Nat.add_sub_cancel, A153160.P10330227192139774797.a, A153160.P1265359898549205033.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A153157, A153157.P12649901259669527371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153160

/-! ## A153160.P5572176917690843183

`(A153159(n+1)/A153158(n+1))²`
-/

namespace A153160.P5572176917690843183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153159 (n + 1) : ℚ) / (A153158 (n + 1) : ℚ)) ^ 2

end

end A153160.P5572176917690843183

namespace A153160

/-- `(A153159(n+1)/A153158(n+1))²` -/
def P5572176917690843183.Spec : Prop :=
  ∀ n, P5572176917690843183.a n = (A153160 (n + 1) : ℚ)

end A153160

/-! ## A153160.P5269604906631922976

`A153159(n+1)²/A153157(n+1)`
-/

namespace A153160.P5269604906631922976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153159 (n + 1) ^ 2 : ℚ) / (A153157 (n + 1) : ℚ)

end

end A153160.P5269604906631922976

namespace A153160

/-- `A153159(n+1)²/A153157(n+1)` -/
def P5269604906631922976.Spec : Prop :=
  ∀ n, P5269604906631922976.a n = (A153160 (n + 1) : ℚ)

end A153160

/-! ## A153160.P13703101281613819891

`A153157(n+1)/A153147(n+1)*A153159(n+1)`
-/

namespace A153160.P13703101281613819891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153157 (n + 1) : ℚ) / (A153147 (n + 1) : ℚ) * (A153159 (n + 1) : ℚ)

end

end A153160.P13703101281613819891

namespace A153160

/-- `A153157(n+1)/A153147(n+1)*A153159(n+1)` -/
def P13703101281613819891.Spec : Prop :=
  ∀ n, P13703101281613819891.a n = (A153160 (n + 1) : ℚ)

end A153160

/-! ## A153160.P3177696220462340788

`A175082(n+2)^6`
-/

namespace A153160.P3177696220462340788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 2) ^ 6

end

end A153160.P3177696220462340788

namespace A153160

/-- `A175082(n+2)^6` -/
def P3177696220462340788.Spec : Prop :=
  ∀ n, P3177696220462340788.a n = A153160 (n + 1)

end A153160

/-! ## A153160.P16040549642805292573

`A001014(A007916(n+1))`
-/

namespace A153160.P16040549642805292573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A007916 (n + 1)).toNat

end

end A153160.P16040549642805292573

namespace A153160

/-- `A001014(A007916(n+1))` -/
def P16040549642805292573.Spec : Prop :=
  ∀ n, P16040549642805292573.a n = A153160 (n + 1)

end A153160

/-! ## A153160.P10797915035485653150

`A001014(A175082(n+2))`
-/

namespace A153160.P10797915035485653150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A175082 (n + 2)).toNat

end

end A153160.P10797915035485653150

namespace A153160

/-- `A001014(A175082(n+2))` -/
def P10797915035485653150.Spec : Prop :=
  ∀ n, P10797915035485653150.a n = A153160 (n + 1)

end A153160

/-! ## A153160.P3072619793335134855

`∩[A093771(n+1), n*n²]²`
-/

namespace A153160.P3072619793335134855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n ^ 2

end

end A153160.P3072619793335134855

namespace A153160

/-- `∩[A093771(n+1), n*n²]²` -/
def P3072619793335134855.Spec : Prop :=
  ∀ n, (P3072619793335134855.a n : ℤ) = A153160 (n + 1)

end A153160

/-! ## A153160.P13293111852124786745

`A175068(A007916(n+1)²)²`
-/

namespace A153160.P13293111852124786745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (A007916 (n + 1) ^ 2).toNat ^ 2

end

end A153160.P13293111852124786745

namespace A153160

/-- `A175068(A007916(n+1)²)²` -/
def P13293111852124786745.Spec : Prop :=
  ∀ n, P13293111852124786745.a n = A153160 (n + 1)

end A153160

/-! ## A153160.P4403753012835194476

`A175068(A175082(n+2)²)²`
-/

namespace A153160.P4403753012835194476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (A175082 (n + 2) ^ 2).toNat ^ 2

end

end A153160.P4403753012835194476

namespace A153160

/-- `A175068(A175082(n+2)²)²` -/
def P4403753012835194476.Spec : Prop :=
  ∀ n, P4403753012835194476.a n = A153160 (n + 1)

end A153160

/-!
# A153161: Numerators of Stern-Brocot tree hanging between 1/3 and 2/3; denominators=A153162.

The programs for A153161, there is no canonical definition to state claims against.
-/

/-! ## A153161.P8703603950831638317

`A002487(2*n+3-2^floor(log2(n+1)))`
-/

namespace A153161.P8703603950831638317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 3 - 2 ^ Nat.log 2 (n + 1))

end

end A153161.P8703603950831638317

/-! ## A153161.P11173176575007914447

`A274515(A191110(n+1))`
-/

namespace A153161.P11173176575007914447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274515 (A191110 (n + 1)).toNat

end

end A153161.P11173176575007914447

/-! ## A153161.P353613168371248048

`A114214(A062050(n+1)+n)`
-/

namespace A153161.P353613168371248048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A062050 (n + 1) + (n : ℤ)).toNat

end

end A153161.P353613168371248048

/-! ## A153161.P3189214769172494381

`A020944(A004758(n+1)+1+n)`
-/

namespace A153161.P3189214769172494381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A004758 (n + 1) + 1 + (n : ℤ)).toNat

end

end A153161.P3189214769172494381

/-! ## A153161.P851810909013084702

`A114214(A053645(n+1)+1+n)`
-/

namespace A153161.P851810909013084702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A053645 (n + 1) + 1 + (n : ℤ)).toNat

end

end A153161.P851810909013084702

/-! ## A153161.P7161526745272667710

`A007306(n+2-A072376(n+1))`
-/

namespace A153161.P7161526745272667710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 ((n + 2 : ℤ) - A072376 (n + 1)).toNat

end

end A153161.P7161526745272667710

/-! ## A153161.P9304201371919965978

`A057432(lt[n, 2*and(n, 2*n)]-A054429(n+1))`
-/

namespace A153161.P9304201371919965978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - A054429 (n + 1)).toNat

end

end A153161.P9304201371919965978

/-! ## A153161.P17464271759072619098

`A070990(A016777(n)-A080079(n+1))`
-/

namespace A153161.P17464271759072619098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (A016777 n - A080079 (n + 1)).toNat

end

end A153161.P17464271759072619098

/-! ## A153161.P3507523665011092451

`A020951(A004758(n+1)+A004755(n+1))`
-/

namespace A153161.P3507523665011092451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A004758 (n + 1) + A004755 (n + 1)).toNat

end

end A153161.P3507523665011092451

/-! ## A153161.P16630886323909960512

`A054390(A147991(n+1)+A132140(n+1))`
-/

namespace A153161.P16630886323909960512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A147991 (n + 1) + A132140 (n + 1)).toNat

end

end A153161.P16630886323909960512

/-!
# A153162: Denominators of Stern-Brocot tree hanging between 1/3 and 2/3; numerators=A153161.

The programs for A153162, there is no canonical definition to state claims against.
-/

/-! ## A153162.P4028525178767809977

`A002487(A004756(n+1)+2+n)`
-/

namespace A153162.P4028525178767809977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A004756 (n + 1) + 2 + (n : ℤ)).toNat

end

end A153162.P4028525178767809977

/-! ## A153162.P5614813555126019873

`A002487(A304588(n+2)+n+1)`
-/

namespace A153162.P5614813555126019873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A304588 (n + 2) + (n + 1 : ℤ)).toNat

end

end A153162.P5614813555126019873

/-! ## A153162.P4333222745434654522

`A002487(A054429(n+1)+3*n+5)`
-/

namespace A153162.P4333222745434654522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A054429 (n + 1) + (3 * n + 5 : ℤ)).toNat

end

end A153162.P4333222745434654522

/-! ## A153162.P1034107805709640936

`A002487(2*n+3)+2*A020944(2*(n+1))`
-/

namespace A153162.P1034107805709640936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 3) + 2 * A020944 (2 * (n + 1))

end

end A153162.P1034107805709640936

/-! ## A153162.P439079784694324916

`A070990(A016777(n)+A004759(n+1))`
-/

namespace A153162.P439079784694324916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (A016777 n + A004759 (n + 1)).toNat

end

end A153162.P439079784694324916

/-! ## A153162.P9368434176258752368

`A002487(A062050(n+1)+A004757(n+1))`
-/

namespace A153162.P9368434176258752368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A062050 (n + 1) + A004757 (n + 1)).toNat

end

end A153162.P9368434176258752368

/-! ## A153162.P1502473281405493036

`A174980(A004757(n+1)+A004756(n+1))`
-/

namespace A153162.P1502473281405493036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (A004757 (n + 1) + A004756 (n + 1)).toNat

end

end A153162.P1502473281405493036

/-! ## A153162.P1956810359931583635

`A174980(A004758(n+1)+A004755(n+1))`
-/

namespace A153162.P1956810359931583635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (A004758 (n + 1) + A004755 (n + 1)).toNat

end

end A153162.P1956810359931583635

/-! ## A153162.P1219056643520120680

`A174980(A004759(n+1)+A004754(n+1))`
-/

namespace A153162.P1219056643520120680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (A004759 (n + 1) + A004754 (n + 1)).toNat

end

end A153162.P1219056643520120680

/-!
# A153165: Primes of form 6k+1 that use only digits 2 and 3.

The programs for A153165, there is no canonical definition to state claims against.
-/

/-! ## A153165.P6598234816368385149

`6*A153166(n+1)+1`
-/

namespace A153165.P6598234816368385149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A153166 (n + 1) + 1

end

end A153165.P6598234816368385149

/-! ## A153165.P1216747060529981170

`∩[A019546(n+1), A152834(n+1)]`
-/

namespace A153165.P1216747060529981170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153165.P1216747060529981170

/-! ## A153165.P17445017392181411899

`∩[A020458(n+1), A152834(n+1)]`
-/

namespace A153165.P17445017392181411899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153165.P17445017392181411899

/-! ## A153165.P8850196320123132908

`∩[A062350(n+1), A152834(n+1)]`
-/

namespace A153165.P8850196320123132908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153165.P8850196320123132908

/-! ## A153165.P6910571865700480832

`∩[A152834(n+1), A199342(n+1)]`
-/

namespace A153165.P6910571865700480832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153165.P6910571865700480832

/-!
# A153166: Numbers k with property that 6*k+1 is prime and uses only digits 2 and 3.

The programs for A153166, there is no canonical definition to state claims against.
-/

/-! ## A153166.P14229773099213714507

`floor(∩[A020458(n+1), A152834(n+1)]/6)`
-/

namespace A153166.P14229773099213714507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152834 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6⌋

end

end A153166.P14229773099213714507

/-! ## A153166.P2740248614937857333

`floor(A153165(n+1)/6)`
-/

namespace A153166.P2740248614937857333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153165 (n + 1) : ℚ) / 6⌋

end

end A153166.P2740248614937857333

/-! ## A153166.P1010156318741141529

`ceil(A153165(n+1)/6-A007318(∑[n]))`
-/

namespace A153166.P1010156318741141529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A153165 (n + 1) : ℚ) / 6 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌉

end

end A153166.P1010156318741141529

/-! ## A153166.P732662893869678964

`A007318(C(2, n))*round(A153165(n+1)/6)`
-/

namespace A153166.P732662893869678964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * SequenceMachineLib.roundAway ((A153165 (n + 1) : ℚ) / 6)

end

end A153166.P732662893869678964

/-! ## A153166.P15724779184105521548

`A000041(C(2, n+2))*round(A153165(n+1)/6)`
-/

namespace A153166.P15724779184105521548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * SequenceMachineLib.roundAway ((A153165 (n + 1) : ℚ) / 6)

end

end A153166.P15724779184105521548

/-!
# A153167: Numbers n such that n+2 is not a Chen prime.

The programs for A153167, there is no canonical definition to state claims against.
-/

/-! ## A153167.P18050303638669137120

`comp[Δ[A118482(n)]-2]`
-/

namespace A153167.P18050303638669137120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153167.P18050303638669137120

/-! ## A153167.P5603860252094769419

`comp[A109611(n+1)-2]`
-/

namespace A153167.P5603860252094769419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153167.P5603860252094769419

/-! ## A153167.P5690974669557888268

`comp[A139690(n+1)-4]`
-/

namespace A153167.P5690974669557888268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153167.P5690974669557888268

/-! ## A153167.P11789497001974596609

`comp[∑[A118776(n+1)]-1]+1`
-/

namespace A153167.P11789497001974596609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153167.P11789497001974596609

/-! ## A153167.P2773625184667090103

`comp[Δ[A109611(A152271(n))]]`
-/

namespace A153167.P2773625184667090103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153167.P2773625184667090103

/-! ## A153167.P10663500485564054810

`comp[Δ[A109611(A158416(n))]]`
-/

namespace A153167.P10663500485564054810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153167.P10663500485564054810

/-! ## A153167.P3253233118049573717

`lt[27, A099306((n+3)²)]+1`
-/

namespace A153167.P3253233118049573717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 ((n + 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A153167.P3253233118049573717

/-! ## A153167.P3448425099772557441

`lt[1, A333751((n+3)²-1)]`
-/

namespace A153167.P3448425099772557441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333751 ((n + 3) ^ 2 - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153167.P3448425099772557441

/-!
# A153169: a(n) = 4*n^2 + 12*n + 3.

The programs for A153169, the canonical program `A153169.P8963340210342088963` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153169 has offset 1).

The definition of A153169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²+12*(n+1)+3` (program `A153169.P8963340210342088963`, by `A153169.P8963340210342088963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153169.P8963340210342088963

`4*(n+1)²+12*(n+1)+3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153169

/-- `4*(n+1)²+12*(n+1)+3` -/
def P8963340210342088963.Spec : Prop :=
  ∀ n, (P8963340210342088963.a n : ℤ) = A153169 (n + 1)

theorem P8963340210342088963.correct : P8963340210342088963.Spec := by
  intro n
  simp only [A153169, Nat.add_sub_cancel]

end A153169

/-! ## A153169.P14008830247325101449

`A028878(2*(n+1))`
-/

namespace A153169.P14008830247325101449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028878 (2 * (n + 1))

end

end A153169.P14008830247325101449

namespace A153169

/-- `A028878(2*(n+1))` -/
def P14008830247325101449.Spec : Prop :=
  ∀ n, P14008830247325101449.a n = A153169 (n + 1)

theorem P14008830247325101449.correct : P14008830247325101449.Spec := by
  intro n
  simp only [A153169, Nat.add_sub_cancel, A153169.P14008830247325101449.a, A153169.P8963340210342088963.a, A028878, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153169

/-! ## A153169.P345289025130317767

`or(3, ∑[8*(n+2)])`
-/

namespace A153169.P345289025130317767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153169.P345289025130317767

namespace A153169

/-- `or(3, ∑[8*(n+2)])` -/
def P345289025130317767.Spec : Prop :=
  ∀ n, (P345289025130317767.a n : ℤ) = A153169 (n + 1)

end A153169

/-! ## A153169.P5181734115500866970

`xor(3, ∑[8*(n+2)])`
-/

namespace A153169.P5181734115500866970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153169.P5181734115500866970

namespace A153169

/-- `xor(3, ∑[8*(n+2)])` -/
def P5181734115500866970.Spec : Prop :=
  ∀ n, (P5181734115500866970.a n : ℤ) = A153169 (n + 1)

end A153169

/-! ## A153169.P5845160069568524420

`∑[a(n-1)+8]` with `a(0)=19, a(1)=24`
-/

namespace A153169.P5845160069568524420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19, 24] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153169.P5845160069568524420

namespace A153169

/-- `∑[a(n-1)+8]` -/
def P5845160069568524420.Spec : Prop :=
  ∀ n, (P5845160069568524420.a n : ℤ) = A153169 (n + 1)

end A153169

/-! ## A153169.P14812992872909144387

`record[(2*n-5)²-6]`
-/

namespace A153169.P14812992872909144387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 5) ^ 2 - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153169.P14812992872909144387

namespace A153169

/-- `record[(2*n-5)²-6]` -/
def P14812992872909144387.Spec : Prop :=
  ∀ n, P14812992872909144387.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P9616999672407836641

`abs(4*lcm(n+2, n+3)-5)`
-/

namespace A153169.P9616999672407836641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * Nat.lcm (n + 2) (n + 3) : ℤ) - 5|

end

end A153169.P9616999672407836641

namespace A153169

/-- `abs(4*lcm(n+2, n+3)-5)` -/
def P9616999672407836641.Spec : Prop :=
  ∀ n, P9616999672407836641.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P2407351083869615009

`abs(7-A069894(n+2))`
-/

namespace A153169.P2407351083869615009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A069894 (n + 2)|

end

end A153169.P2407351083869615009

namespace A153169

/-- `abs(7-A069894(n+2))` -/
def P2407351083869615009.Spec : Prop :=
  ∀ n, P2407351083869615009.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P17452973181173244360

`Δ[A273314(n+1)+Δ[n²]]`
-/

namespace A153169.P17452973181173244360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273314 (n + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153169.P17452973181173244360

namespace A153169

/-- `Δ[A273314(n+1)+Δ[n²]]` -/
def P17452973181173244360.Spec : Prop :=
  ∀ n, P17452973181173244360.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P3287148498757553181

`Δ[A006503(Δ[n²])]`
-/

namespace A153169.P3287148498757553181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153169.P3287148498757553181

namespace A153169

/-- `Δ[A006503(Δ[n²])]` -/
def P3287148498757553181.Spec : Prop :=
  ∀ n, P3287148498757553181.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P17604356570147920064

`Δ[A027378(Δ[n²])]`
-/

namespace A153169.P17604356570147920064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027378 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153169.P17604356570147920064

namespace A153169

/-- `Δ[A027378(Δ[n²])]` -/
def P17604356570147920064.Spec : Prop :=
  ∀ n, P17604356570147920064.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P13584662999584327516

`Δ[A034857(Δ[n²])]`
-/

namespace A153169.P13584662999584327516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153169.P13584662999584327516

namespace A153169

/-- `Δ[A034857(Δ[n²])]` -/
def P13584662999584327516.Spec : Prop :=
  ∀ n, P13584662999584327516.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P16400664106697460880

`Δ[A006416(2*(n+1))]`
-/

namespace A153169.P16400664106697460880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153169.P16400664106697460880

namespace A153169

/-- `Δ[A006416(2*(n+1))]` -/
def P16400664106697460880.Spec : Prop :=
  ∀ n, P16400664106697460880.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P2365948772418948747

`abs(2-A061037(Δ[(n+1)²]+2))`
-/

namespace A153169.P2365948772418948747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A061037 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat|

end

end A153169.P2365948772418948747

namespace A153169

/-- `abs(2-A061037(Δ[(n+1)²]+2))` -/
def P2365948772418948747.Spec : Prop :=
  ∀ n, P2365948772418948747.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P18354925591694865818

`Δ[A005286(2*n+1)-(4*n+3)]`
-/

namespace A153169.P18354925591694865818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (2 * n + 1) - (4 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153169.P18354925591694865818

namespace A153169

/-- `Δ[A005286(2*n+1)-(4*n+3)]` -/
def P18354925591694865818.Spec : Prop :=
  ∀ n, P18354925591694865818.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P13493687369908212606

`Δ[A005586(2*n+1)-(4*n+3)]`
-/

namespace A153169.P13493687369908212606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (2 * n + 1) - (4 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153169.P13493687369908212606

namespace A153169

/-- `Δ[A005586(2*n+1)-(4*n+3)]` -/
def P13493687369908212606.Spec : Prop :=
  ∀ n, P13493687369908212606.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P10427836733033881749

`Δ[A010000(2*n+1)+∑[A010000(2*n+1)]]`
-/

namespace A153169.P10427836733033881749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153169.P10427836733033881749

namespace A153169

/-- `Δ[A010000(2*n+1)+∑[A010000(2*n+1)]]` -/
def P10427836733033881749.Spec : Prop :=
  ∀ n, P10427836733033881749.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P10894211740414481591

`A267882(2*(n+2))`
-/

namespace A153169.P10894211740414481591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267882 (2 * (n + 2))

end

end A153169.P10894211740414481591

namespace A153169

/-- `A267882(2*(n+2))` -/
def P10894211740414481591.Spec : Prop :=
  ∀ n, P10894211740414481591.a n = A153169 (n + 1)

end A153169

/-! ## A153169.P6976558606876135496

`Δ[A005581(2*n+1)+Δ[A005581(2*n)]]`
-/

namespace A153169.P6976558606876135496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153169.P6976558606876135496

namespace A153169

/-- `Δ[A005581(2*n+1)+Δ[A005581(2*n)]]` -/
def P6976558606876135496.Spec : Prop :=
  ∀ n, P6976558606876135496.a n = A153169 (n + 1)

theorem P6976558606876135496.correct : P6976558606876135496.Spec := by
  intro n
  simp only [A153169, Nat.add_sub_cancel, A153169.P6976558606876135496.f2, A153169.P6976558606876135496.f1, A153169.P6976558606876135496.a, A153169.P8963340210342088963.a, A005581, A005581.P11014497433873413039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153169

/-! ## A153169.P7901448756059630368

`A036572(A004767(n+1))`
-/

namespace A153169.P7901448756059630368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036572 (A004767 (n + 1)).toNat

end

end A153169.P7901448756059630368

namespace A153169

/-- `A036572(A004767(n+1))` -/
def P7901448756059630368.Spec : Prop :=
  ∀ n, P7901448756059630368.a n = A153169 (n + 1)

end A153169

/-!
# A153170: Numbers k such that 3*k + 2 is not prime.

The programs for A153170, the canonical program `A153170.P7022726081070073690` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153170 has offset 1).

The definition of A153170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153170.P1041409629467629570

`comp[A024893(n+1)]`
-/

namespace A153170.P1041409629467629570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153170.P1041409629467629570

namespace A153170

/-- `comp[A024893(n+1)]` -/
def P1041409629467629570.Spec : Prop :=
  ∀ n, (P1041409629467629570.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P17588651934413105498

`comp[A088879(n+1)+1]`
-/

namespace A153170.P17588651934413105498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088879 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153170.P17588651934413105498

namespace A153170

/-- `comp[A088879(n+1)+1]` -/
def P17588651934413105498.Spec : Prop :=
  ∀ n, (P17588651934413105498.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P2812089258151176497

`comp[A087370(n+1)-1]`
-/

namespace A153170.P2812089258151176497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153170.P2812089258151176497

namespace A153170

/-- `comp[A087370(n+1)-1]` -/
def P2812089258151176497.Spec : Prop :=
  ∀ n, (P2812089258151176497.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P13935459322182279403

`comp[A228121(n+1)-2]`
-/

namespace A153170.P13935459322182279403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153170.P13935459322182279403

namespace A153170

/-- `comp[A228121(n+1)-2]` -/
def P13935459322182279403.Spec : Prop :=
  ∀ n, (P13935459322182279403.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P9420604916221327392

`lt[1, A001222(3*n+2)]`
-/

namespace A153170.P9420604916221327392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153170.P9420604916221327392

namespace A153170

/-- `lt[1, A001222(3*n+2)]` -/
def P9420604916221327392.Spec : Prop :=
  ∀ n, (P9420604916221327392.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P7431173916250199730

`lt[1, A033273(3*n+2)]`
-/

namespace A153170.P7431173916250199730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153170.P7431173916250199730

namespace A153170

/-- `lt[1, A033273(3*n+2)]` -/
def P7431173916250199730.Spec : Prop :=
  ∀ n, (P7431173916250199730.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P12777646743302072376

`lt[2, A000005(3*n+2)]`
-/

namespace A153170.P12777646743302072376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153170.P12777646743302072376

namespace A153170

/-- `lt[2, A000005(3*n+2)]` -/
def P12777646743302072376.Spec : Prop :=
  ∀ n, (P12777646743302072376.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P7200278760876342406

`lt[A020639(3*n+2), n+1]`
-/

namespace A153170.P7200278760876342406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153170.P7200278760876342406

namespace A153170

/-- `lt[A020639(3*n+2), n+1]` -/
def P7200278760876342406.Spec : Prop :=
  ∀ n, (P7200278760876342406.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P1432485097313237055

`lt[A006530(3*n+2), 2*n]`
-/

namespace A153170.P1432485097313237055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153170.P1432485097313237055

namespace A153170

/-- `lt[A006530(3*n+2), 2*n]` -/
def P1432485097313237055.Spec : Prop :=
  ∀ n, (P1432485097313237055.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P15883955735462828436

`lt[A000010(3*n+2), 3*n]`
-/

namespace A153170.P15883955735462828436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153170.P15883955735462828436

namespace A153170

/-- `lt[A000010(3*n+2), 3*n]` -/
def P15883955735462828436.Spec : Prop :=
  ∀ n, (P15883955735462828436.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P7022726081070073690

`lt[3*(n+1), A000203(3*n+2)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153170

/-- `lt[3*(n+1), A000203(3*n+2)]` -/
def P7022726081070073690.Spec : Prop :=
  ∀ n, (P7022726081070073690.a n : ℤ) = A153170 (n + 1)

theorem P7022726081070073690.correct : P7022726081070073690.Spec := by
  intro n
  simp only [A153170, Nat.add_sub_cancel]

end A153170

/-! ## A153170.P17010795732866255784

`eq[0, C(2, A000005(2*n+n+2))]`
-/

namespace A153170.P17010795732866255784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (2 * n + (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153170.P17010795732866255784

namespace A153170

/-- `eq[0, C(2, A000005(2*n+n+2))]` -/
def P17010795732866255784.Spec : Prop :=
  ∀ n, (P17010795732866255784.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P10293110662568634436

`eq[0, floor(1/A001222(2*n+n+2))]`
-/

namespace A153170.P10293110662568634436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A001222 (2 * n + (n + 2)) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153170.P10293110662568634436

namespace A153170

/-- `eq[0, floor(1/A001222(2*n+n+2))]` -/
def P10293110662568634436.Spec : Prop :=
  ∀ n, (P10293110662568634436.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P103144610167337938

`lt[1, ∑{e}[3*n+2, #]]`
-/

namespace A153170.P103144610167337938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153170.P103144610167337938

namespace A153170

/-- `lt[1, ∑{e}[3*n+2, #]]` -/
def P103144610167337938.Spec : Prop :=
  ∀ n, (P103144610167337938.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P1169365990426719903

`lt[1, A231776(n+1)]`
-/

namespace A153170.P1169365990426719903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153170.P1169365990426719903

namespace A153170

/-- `lt[1, A231776(n+1)]` -/
def P1169365990426719903.Spec : Prop :=
  ∀ n, (P1169365990426719903.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P10144006589033542434

`lt[2, A060324(n+1)]`
-/

namespace A153170.P10144006589033542434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153170.P10144006589033542434

namespace A153170

/-- `lt[2, A060324(n+1)]` -/
def P10144006589033542434.Spec : Prop :=
  ∀ n, (P10144006589033542434.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P4313984693886492684

`lt[(n+2)², ∏{d}[3*n+2, #]]`
-/

namespace A153170.P4313984693886492684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153170.P4313984693886492684

namespace A153170

/-- `lt[(n+2)², ∏{d}[3*n+2, #]]` -/
def P4313984693886492684.Spec : Prop :=
  ∀ n, (P4313984693886492684.a n : ℤ) = A153170 (n + 1)

end A153170

/-! ## A153170.P15956899522298873121

`A275669(n+1)-1`
-/

namespace A153170.P15956899522298873121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275669 (n + 1) - 1

end

end A153170.P15956899522298873121

namespace A153170

/-- `A275669(n+1)-1` -/
def P15956899522298873121.Spec : Prop :=
  ∀ n, P15956899522298873121.a n = A153170 (n + 1)

end A153170

/-! ## A153170.P9646016626767132262

`A023443(A275669(n+1))`
-/

namespace A153170.P9646016626767132262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275669 (n + 1)).toNat

end

end A153170.P9646016626767132262

namespace A153170

/-- `A023443(A275669(n+1))` -/
def P9646016626767132262.Spec : Prop :=
  ∀ n, P9646016626767132262.a n = A153170 (n + 1)

end A153170

/-! ## A153170.P8294101286184130602

`eq[1, A208645(3*n)]`
-/

namespace A153170.P8294101286184130602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153170.P8294101286184130602

namespace A153170

/-- `eq[1, A208645(3*n)]` -/
def P8294101286184130602.Spec : Prop :=
  ∀ n, (P8294101286184130602.a n : ℤ) = A153170 (n + 1)

end A153170

/-!
# A153171: First differences of A046163.

The programs for A153171, the canonical program `A153171.P13892799226477654743` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153171 has offset 0).

The definition of A153171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153171.P13892799226477654743

`Δ[(n*(n+3)+3)/gcd(3, n)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153171

/-- `Δ[(n*(n+3)+3)/gcd(3, n)]` -/
def P13892799226477654743.Spec : Prop :=
  ∀ n, P13892799226477654743.a n = (A153171 n : ℚ)

end A153171

/-! ## A153171.P11475129701319162217

`Δ[lcm(3, (n+1)²+2+n)/3]`
-/

namespace A153171.P11475129701319162217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 ((n + 1) ^ 2 + 2 + n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153171.P11475129701319162217

namespace A153171

/-- `Δ[lcm(3, (n+1)²+2+n)/3]` -/
def P11475129701319162217.Spec : Prop :=
  ∀ n, P11475129701319162217.a n = (A153171 n : ℚ)

end A153171

/-! ## A153171.P16392196591944763111

`A158622(n+2)-A046163(n+1)`
-/

namespace A153171.P16392196591944763111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158622 (n + 2) - A046163 (n + 1)

end

end A153171.P16392196591944763111

namespace A153171

/-- `A158622(n+2)-A046163(n+1)` -/
def P16392196591944763111.Spec : Prop :=
  ∀ n, P16392196591944763111.a n = A153171 n

end A153171

/-! ## A153171.P9815654961161839553

`Δ[A046163(n+1)]`
-/

namespace A153171.P9815654961161839553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153171.P9815654961161839553

namespace A153171

/-- `Δ[A046163(n+1)]` -/
def P9815654961161839553.Spec : Prop :=
  ∀ n, P9815654961161839553.a n = A153171 n

end A153171

/-! ## A153171.P12087434310051955307

`Δ[gcd(A068601(n+1), A220892(n))]`
-/

namespace A153171.P12087434310051955307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068601 (n + 1)) (A220892 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A153171.P12087434310051955307

namespace A153171

/-- `Δ[gcd(A068601(n+1), A220892(n))]` -/
def P12087434310051955307.Spec : Prop :=
  ∀ n, P12087434310051955307.a n = A153171 n

end A153171

/-! ## A153171.P5793486671539036977

`A046163(n+2)-A046163(n+1)`
-/

namespace A153171.P5793486671539036977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (n + 2) - A046163 (n + 1)

end

end A153171.P5793486671539036977

namespace A153171

/-- `A046163(n+2)-A046163(n+1)` -/
def P5793486671539036977.Spec : Prop :=
  ∀ n, P5793486671539036977.a n = A153171 n

end A153171

/-! ## A153171.P2428122336324867647

`Δ[A130770(n+1)]`
-/

namespace A153171.P2428122336324867647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153171.P2428122336324867647

namespace A153171

/-- `Δ[A130770(n+1)]` -/
def P2428122336324867647.Spec : Prop :=
  ∀ n, P2428122336324867647.a n = A153171 n

end A153171

/-! ## A153171.P9027418597638900592

`Δ[A130723(n+1)/3]`
-/

namespace A153171.P9027418597638900592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130723 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153171.P9027418597638900592

namespace A153171

/-- `Δ[A130723(n+1)/3]` -/
def P9027418597638900592.Spec : Prop :=
  ∀ n, P9027418597638900592.a n = (A153171 n : ℚ)

end A153171

/-! ## A153171.P11997337847214435872

`A130770(n+2)-A130770(n+1)`
-/

namespace A153171.P11997337847214435872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (n + 2) - A130770 (n + 1)

end

end A153171.P11997337847214435872

namespace A153171

/-- `A130770(n+2)-A130770(n+1)` -/
def P11997337847214435872.Spec : Prop :=
  ∀ n, P11997337847214435872.a n = A153171 n

end A153171

/-! ## A153171.P13179272590972849543

`Δ[A106610((n+1)²+n+2)]`
-/

namespace A153171.P13179272590972849543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 ((n + 1) ^ 2 + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153171.P13179272590972849543

namespace A153171

/-- `Δ[A106610((n+1)²+n+2)]` -/
def P13179272590972849543.Spec : Prop :=
  ∀ n, P13179272590972849543.a n = A153171 n

end A153171

/-! ## A153171.P15141461216920154906

`Δ[A146535(A000217(n+1)+1)]`
-/

namespace A153171.P15141461216920154906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (A000217 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153171.P15141461216920154906

namespace A153171

/-- `Δ[A146535(A000217(n+1)+1)]` -/
def P15141461216920154906.Spec : Prop :=
  ∀ n, P15141461216920154906.a n = A153171 n

end A153171

/-! ## A153171.P14108531097025941126

`Δ[A342918((n+1)*(n+2))]`
-/

namespace A153171.P14108531097025941126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342918 ((n + 1) * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153171.P14108531097025941126

namespace A153171

/-- `Δ[A342918((n+1)*(n+2))]` -/
def P14108531097025941126.Spec : Prop :=
  ∀ n, P14108531097025941126.a n = A153171 n

end A153171

/-!
# A153172: Coefficients of the eighth-order mock theta function U_0(q).

The programs for A153172, there is no canonical definition to state claims against.
-/

/-! ## A153172.P13985717333663517762

`(A260313(n)+A006306(n))/2`
-/

namespace A153172.P13985717333663517762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260313 n + A006306 n : ℚ) / 2

end

end A153172.P13985717333663517762

/-! ## A153172.P10309371018120602417

`A006306(n)+2*A153174(n)`
-/

namespace A153172.P10309371018120602417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006306 n + 2 * A153174 n

end

end A153172.P10309371018120602417

/-! ## A153172.P4117294765187946713

`A260313(n)-2*A153174(n)`
-/

namespace A153172.P4117294765187946713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260313 n - 2 * A153174 n

end

end A153172.P4117294765187946713

/-! ## A153172.P5662296429207119331

`A260313(n)-A153174(n)-(A260313(n)-A006306(n))/4`
-/

namespace A153172.P5662296429207119331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260313 n - A153174 n : ℚ) - (A260313 n - A006306 n : ℚ) / 4

end

end A153172.P5662296429207119331

/-!
# A153173: a(n) = L(5*n)/L(n) where L(n) = n-th Lucas number A000032(n).

The programs for A153173, the canonical program `A153173.P9514743945125301852` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153173 has offset 0).

The definition of A153173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153173.P9514743945125301852

`1+10*A085695(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153173

/-- `1+10*A085695(n)` -/
def P9514743945125301852.Spec : Prop :=
  ∀ n, P9514743945125301852.a n = A153173 n

theorem P9514743945125301852.correct : P9514743945125301852.Spec := by
  intro n
  simp only [A153173]

end A153173

/-! ## A153173.P1843260962004961165

`1+5*A000045(n)*A000045(3*n)`
-/

namespace A153173.P1843260962004961165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 5 * A000045 n * A000045 (3 * n)

end

end A153173.P1843260962004961165

namespace A153173

/-- `1+5*A000045(n)*A000045(3*n)` -/
def P1843260962004961165.Spec : Prop :=
  ∀ n, P1843260962004961165.a n = A153173 n

end A153173

/-! ## A153173.P16849789061674567146

`1+A056854(n)-(-1)^n*A005248(n)`
-/

namespace A153173.P16849789061674567146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A056854 n - (-1) ^ n * A005248 n

end

end A153173.P16849789061674567146

namespace A153173

/-- `1+A056854(n)-(-1)^n*A005248(n)` -/
def P16849789061674567146.Spec : Prop :=
  ∀ n, P16849789061674567146.a n = A153173 n

end A153173

/-! ## A153173.P18161786888131021433

`A000032(2*n)²-(-1)^n*A000032(2*n)-1`
-/

namespace A153173.P18161786888131021433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) ^ 2 - (-1) ^ n * A000032 (2 * n) - 1

end

end A153173.P18161786888131021433

namespace A153173

/-- `A000032(2*n)²-(-1)^n*A000032(2*n)-1` -/
def P18161786888131021433.Spec : Prop :=
  ∀ n, P18161786888131021433.a n = A153173 n

end A153173

/-! ## A153173.P8813950476226738283

`A000032(5*n)/A000032(n)`
-/

namespace A153173.P8813950476226738283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (5 * n) : ℚ) / (A000032 n : ℚ)

end

end A153173.P8813950476226738283

namespace A153173

/-- `A000032(5*n)/A000032(n)` -/
def P8813950476226738283.Spec : Prop :=
  ∀ n, P8813950476226738283.a n = (A153173 n : ℚ)

end A153173

/-! ## A153173.P13632641422599808454

`A001946(n)/A000032(n)`
-/

namespace A153173.P13632641422599808454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001946 n : ℚ) / (A000032 n : ℚ)

end

end A153173.P13632641422599808454

namespace A153173

/-- `A001946(n)/A000032(n)` -/
def P13632641422599808454.Spec : Prop :=
  ∀ n, P13632641422599808454.a n = (A153173 n : ℚ)

end A153173

/-!
# A153174: Coefficients of the eighth-order mock theta function U_1(q).

The programs for A153174, there is no canonical definition to state claims against.
-/

/-! ## A153174.P18354784991148038220

`(A153172(n)-A006306(n))/2`
-/

namespace A153174.P18354784991148038220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153172 n - A006306 n : ℚ) / 2

end

end A153174.P18354784991148038220

/-! ## A153174.P16454166092720127172

`(A260313(n)-A153172(n))/2`
-/

namespace A153174.P16454166092720127172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260313 n - A153172 n : ℚ) / 2

end

end A153174.P16454166092720127172

/-! ## A153174.P13012521126818229582

`(A260313(n)-A006306(n))/4`
-/

namespace A153174.P13012521126818229582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260313 n - A006306 n : ℚ) / 4

end

end A153174.P13012521126818229582

/-! ## A153174.P72652078758705982

`(A153172(n)-A006306(n))*2^A008683(A007918(n))`
-/

namespace A153174.P72652078758705982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153172 n - A006306 n : ℚ) * (2 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ)

end

end A153174.P72652078758705982

/-! ## A153174.P680522551957514227

`Δ[A077814(n)]-A330025(A174646(n+1))`
-/

namespace A153174.P680522551957514227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A330025 (A174646 (n + 1)).toNat

end

end A153174.P680522551957514227

/-!
# A153175: a(n) = L(7*n)/L(n) where L(n) = Lucas number A000204(n).

The programs for A153175, the canonical program `A153175.P17504426682200025904` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153175 has offset 1).

The definition of A153175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153175.P17504426682200025904

`A005248(n+1)+A087215(n+1)-(-1)^(n+1)*A056854(n+1)-(-1)^(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153175

/-- `A005248(n+1)+A087215(n+1)-(-1)^(n+1)*A056854(n+1)-(-1)^(n+1)` -/
def P17504426682200025904.Spec : Prop :=
  ∀ n, P17504426682200025904.a n = A153175 (n + 1)

theorem P17504426682200025904.correct : P17504426682200025904.Spec := by
  intro n
  simp only [A153175, Nat.add_sub_cancel]

end A153175

/-! ## A153175.P13280935565526715251

`A000032(7*(n+1))/A000032(n+1)`
-/

namespace A153175.P13280935565526715251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (7 * (n + 1)) : ℚ) / (A000032 (n + 1) : ℚ)

end

end A153175.P13280935565526715251

namespace A153175

/-- `A000032(7*(n+1))/A000032(n+1)` -/
def P13280935565526715251.Spec : Prop :=
  ∀ n, P13280935565526715251.a n = (A153175 (n + 1) : ℚ)

end A153175

/-! ## A153175.P8158543187255790016

`A005248(n+1)*A153173(n+1)-A110391(n+1)`
-/

namespace A153175.P8158543187255790016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) * A153173 (n + 1) - A110391 (n + 1)

end

end A153175.P8158543187255790016

namespace A153175

/-- `A005248(n+1)*A153173(n+1)-A110391(n+1)` -/
def P8158543187255790016.Spec : Prop :=
  ∀ n, P8158543187255790016.a n = A153175 (n + 1)

end A153175

/-! ## A153175.P11748032842765540510

`A087281(n+1)/A000032(n+1)`
-/

namespace A153175.P11748032842765540510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087281 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ)

end

end A153175.P11748032842765540510

namespace A153175

/-- `A087281(n+1)/A000032(n+1)` -/
def P11748032842765540510.Spec : Prop :=
  ∀ n, P11748032842765540510.a n = (A153175 (n + 1) : ℚ)

end A153175

/-! ## A153175.P13137326859372251755

`A022112(A017053(n))/A022112(n)`
-/

namespace A153175.P13137326859372251755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022112 (A017053 n).toNat : ℚ) / (A022112 n : ℚ)

end

end A153175.P13137326859372251755

namespace A153175

/-- `A022112(A017053(n))/A022112(n)` -/
def P13137326859372251755.Spec : Prop :=
  ∀ n, P13137326859372251755.a n = (A153175 (n + 1) : ℚ)

end A153175

/-! ## A153175.P5745410422856810979

`A075193(A017053(n))/A075193(n)`
-/

namespace A153175.P5745410422856810979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075193 (A017053 n).toNat : ℚ) / (A075193 n : ℚ)

end

end A153175.P5745410422856810979

namespace A153175

/-- `A075193(A017053(n))/A075193(n)` -/
def P5745410422856810979.Spec : Prop :=
  ∀ n, P5745410422856810979.a n = (A153175 (n + 1) : ℚ)

end A153175

/-! ## A153175.P1620259020598951451

`A075193(A017005(n)+4)/A075193(n)`
-/

namespace A153175.P1620259020598951451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075193 (A017005 n + 4).toNat : ℚ) / (A075193 n : ℚ)

end

end A153175.P1620259020598951451

namespace A153175

/-- `A075193(A017005(n)+4)/A075193(n)` -/
def P1620259020598951451.Spec : Prop :=
  ∀ n, P1620259020598951451.a n = (A153175 (n + 1) : ℚ)

end A153175

/-! ## A153175.P1534128488490236824

`A090244(A131877(n+1))/A090244(2*n)`
-/

namespace A153175.P1534128488490236824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090244 (A131877 (n + 1)).toNat : ℚ) / (A090244 (2 * n) : ℚ)

end

end A153175.P1534128488490236824

namespace A153175

/-- `A090244(A131877(n+1))/A090244(2*n)` -/
def P1534128488490236824.Spec : Prop :=
  ∀ n, P1534128488490236824.a n = (A153175 (n + 1) : ℚ)

end A153175

/-! ## A153175.P5793549793794508112

`(A153177(n+1)+A153173(n+1))/A005248(n+1)`
-/

namespace A153175.P5793549793794508112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153177 (n + 1) + A153173 (n + 1) : ℚ) / (A005248 (n + 1) : ℚ)

end

end A153175.P5793549793794508112

namespace A153175

/-- `(A153177(n+1)+A153173(n+1))/A005248(n+1)` -/
def P5793549793794508112.Spec : Prop :=
  ∀ n, P5793549793794508112.a n = (A153175 (n + 1) : ℚ)

end A153175

/-!
# A153177: a(n) = L(9*n)/L(n) where L(n) = Lucas number A000204(n).

The programs for A153177, the canonical program `A153177.P1118912484270809134` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153177 has offset 1).

The definition of A153177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153177.P1118912484270809134

`1-(-1)^(n+1)*A087215(n+1)-(-1)^(n+1)*A005248(n+1)+A056854(n+1)+A087265(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153177

/-- `1-(-1)^(n+1)*A087215(n+1)-(-1)^(n+1)*A005248(n+1)+A056854(n+1)+A087265(n+1)` -/
def P1118912484270809134.Spec : Prop :=
  ∀ n, P1118912484270809134.a n = A153177 (n + 1)

theorem P1118912484270809134.correct : P1118912484270809134.Spec := by
  intro n
  simp only [A153177, Nat.add_sub_cancel]

end A153177

/-! ## A153177.P3089119896987169778

`A000032(9*(n+1))/A000032(n+1)`
-/

namespace A153177.P3089119896987169778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (9 * (n + 1)) : ℚ) / (A000032 (n + 1) : ℚ)

end

end A153177.P3089119896987169778

namespace A153177

/-- `A000032(9*(n+1))/A000032(n+1)` -/
def P3089119896987169778.Spec : Prop :=
  ∀ n, P3089119896987169778.a n = (A153177 (n + 1) : ℚ)

end A153177

/-! ## A153177.P3531237119198082138

`A005248(n+1)*A153175(n+1)-A153173(n+1)`
-/

namespace A153177.P3531237119198082138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) * A153175 (n + 1) - A153173 (n + 1)

end

end A153177.P3531237119198082138

namespace A153177

/-- `A005248(n+1)*A153175(n+1)-A153173(n+1)` -/
def P3531237119198082138.Spec : Prop :=
  ∀ n, P3531237119198082138.a n = A153177 (n + 1)

end A153177

/-! ## A153177.P3174046754372124601

`A087287(n+1)/A000032(n+1)`
-/

namespace A153177.P3174046754372124601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087287 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ)

end

end A153177.P3174046754372124601

namespace A153177

/-- `A087287(n+1)/A000032(n+1)` -/
def P3174046754372124601.Spec : Prop :=
  ∀ n, P3174046754372124601.a n = (A153177 (n + 1) : ℚ)

end A153177

/-! ## A153177.P8540285050797384200

`A087287(n+1)/A000204(n+1)`
-/

namespace A153177.P8540285050797384200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087287 (n + 1) : ℚ) / (A000204 (n + 1) : ℚ)

end

end A153177.P8540285050797384200

namespace A153177

/-- `A087287(n+1)/A000204(n+1)` -/
def P8540285050797384200.Spec : Prop :=
  ∀ n, P8540285050797384200.a n = (A153177 (n + 1) : ℚ)

end A153177

/-! ## A153177.P18279928926689936665

`A022112(A017257(n))/A022112(n)`
-/

namespace A153177.P18279928926689936665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022112 (A017257 n).toNat : ℚ) / (A022112 n : ℚ)

end

end A153177.P18279928926689936665

namespace A153177

/-- `A022112(A017257(n))/A022112(n)` -/
def P18279928926689936665.Spec : Prop :=
  ∀ n, P18279928926689936665.a n = (A153177 (n + 1) : ℚ)

end A153177

/-! ## A153177.P6314618260476143369

`A075193(A017257(n))/A075193(n)`
-/

namespace A153177.P6314618260476143369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075193 (A017257 n).toNat : ℚ) / (A075193 n : ℚ)

end

end A153177.P6314618260476143369

namespace A153177

/-- `A075193(A017257(n))/A075193(n)` -/
def P6314618260476143369.Spec : Prop :=
  ∀ n, P6314618260476143369.a n = (A153177 (n + 1) : ℚ)

end A153177

/-! ## A153177.P1505993271075747560

`A000204(Δ[A062123(n)])/A000204(n+1)`
-/

namespace A153177.P1505993271075747560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (f1 (n + 1) - f1 n).toNat : ℚ) / (A000204 (n + 1) : ℚ)

end

end A153177.P1505993271075747560

namespace A153177

/-- `A000204(Δ[A062123(n)])/A000204(n+1)` -/
def P1505993271075747560.Spec : Prop :=
  ∀ n, P1505993271075747560.a n = (A153177 (n + 1) : ℚ)

end A153177

/-! ## A153177.P14889314374245153915

`A090244(A161705(n+1))/A090244(2*n)`
-/

namespace A153177.P14889314374245153915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090244 (A161705 (n + 1)).toNat : ℚ) / (A090244 (2 * n) : ℚ)

end

end A153177.P14889314374245153915

namespace A153177

/-- `A090244(A161705(n+1))/A090244(2*n)` -/
def P14889314374245153915.Spec : Prop :=
  ∀ n, P14889314374245153915.a n = (A153177 (n + 1) : ℚ)

end A153177

/-! ## A153177.P7576979524392576285

`A087287(n+1)/(A023484(n)-A001690(n+1))`
-/

namespace A153177.P7576979524392576285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087287 (n + 1) : ℚ) / (A023484 n - A001690 (n + 1) : ℚ)

end

end A153177.P7576979524392576285

namespace A153177

/-- `A087287(n+1)/(A023484(n)-A001690(n+1))` -/
def P7576979524392576285.Spec : Prop :=
  ∀ n, P7576979524392576285.a n = (A153177 (n + 1) : ℚ)

end A153177

/-!
# A153178: Coefficients of the eighth-order mock theta function V_1(q).

The programs for A153178, there is no canonical definition to state claims against.
-/

/-! ## A153178.P2144236429365821246

`A118302(n+2)-A185284(2*n+1)`
-/

namespace A153178.P2144236429365821246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118302 (n + 2) - A185284 (2 * n + 1)

end

end A153178.P2144236429365821246

/-! ## A153178.P7864648184392076570

`A118302(n+2)-A143062(A118302(2*n+7))`
-/

namespace A153178.P7864648184392076570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118302 (n + 2) - A143062 (A118302 (2 * n + 7)).toNat

end

end A153178.P7864648184392076570

/-! ## A153178.P3718039179499031669

`A118302(A077342(n+2))`
-/

namespace A153178.P3718039179499031669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118302 (A077342 (n + 2)).toNat

end

end A153178.P3718039179499031669

/-! ## A153178.P8321476454126807664

`A118302(A242474(n+2))`
-/

namespace A153178.P8321476454126807664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118302 (A242474 (n + 2)).toNat

end

end A153178.P8321476454126807664

/-! ## A153178.P2454316576878903549

`A118302(A351374(n+2))`
-/

namespace A153178.P2454316576878903549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118302 (A351374 (n + 2)).toNat

end

end A153178.P2454316576878903549

/-!
# A153179: a(n) = L(11*n)/L(n) where L(n) = A000204(n).

The programs for A153179, the canonical program `A153179.P5765459583162222081` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153179 has offset 1).

The definition of A153179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153179.P5765459583162222081

`A000032(11*(n+1))/A000032(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153179

/-- `A000032(11*(n+1))/A000032(n+1)` -/
def P5765459583162222081.Spec : Prop :=
  ∀ n, P5765459583162222081.a n = (A153179 (n + 1) : ℚ)

end A153179

/-! ## A153179.P9882760492588929996

`A005248(n+1)*A153177(n+1)-A153175(n+1)`
-/

namespace A153179.P9882760492588929996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) * A153177 (n + 1) - A153175 (n + 1)

end

end A153179.P9882760492588929996

namespace A153179

/-- `A005248(n+1)*A153177(n+1)-A153175(n+1)` -/
def P9882760492588929996.Spec : Prop :=
  ∀ n, P9882760492588929996.a n = A153179 (n + 1)

end A153179

/-! ## A153179.P6278987033302241042

`A056854(n+1)*A153175(n+1)-A110391(n+1)`
-/

namespace A153179.P6278987033302241042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056854 (n + 1) * A153175 (n + 1) - A110391 (n + 1)

end

end A153179.P6278987033302241042

namespace A153179

/-- `A056854(n+1)*A153175(n+1)-A110391(n+1)` -/
def P6278987033302241042.Spec : Prop :=
  ∀ n, P6278987033302241042.a n = A153179 (n + 1)

end A153179

/-! ## A153179.P17125176973033285405

`A089772(n+1)/A000032(n+1)`
-/

namespace A153179.P17125176973033285405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089772 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ)

end

end A153179.P17125176973033285405

namespace A153179

/-- `A089772(n+1)/A000032(n+1)` -/
def P17125176973033285405.Spec : Prop :=
  ∀ n, P17125176973033285405.a n = (A153179 (n + 1) : ℚ)

end A153179

/-! ## A153179.P13754190472038764412

`A089772(n+1)/A000204(n+1)`
-/

namespace A153179.P13754190472038764412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089772 (n + 1) : ℚ) / (A000204 (n + 1) : ℚ)

end

end A153179.P13754190472038764412

namespace A153179

/-- `A089772(n+1)/A000204(n+1)` -/
def P13754190472038764412.Spec : Prop :=
  ∀ n, P13754190472038764412.a n = (A153179 (n + 1) : ℚ)

end A153179

/-!
# A153180: a(n) = L(13n)/L(n) where L(n) = Lucas number A000204(n).

The programs for A153180, the canonical program `A153180.P12249224515089577849` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153180 has offset 1).

The definition of A153180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153180.P12249224515089577849

`A000032(13*(n+1))/A000032(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153180

/-- `A000032(13*(n+1))/A000032(n+1)` -/
def P12249224515089577849.Spec : Prop :=
  ∀ n, P12249224515089577849.a n = (A153180 (n + 1) : ℚ)

end A153180

/-! ## A153180.P5145133603178323983

`abs(1-A005248(3*(n+1))*A153175(n+1))`
-/

namespace A153180.P5145133603178323983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A005248 (3 * (n + 1)) * A153175 (n + 1)|

end

end A153180.P5145133603178323983

namespace A153180

/-- `abs(1-A005248(3*(n+1))*A153175(n+1))` -/
def P5145133603178323983.Spec : Prop :=
  ∀ n, P5145133603178323983.a n = A153180 (n + 1)

end A153180

/-! ## A153180.P14371327352795494670

`A005248(A016789(n)+1)*A153175(n+1)-1`
-/

namespace A153180.P14371327352795494670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (A016789 n + 1).toNat * A153175 (n + 1) - 1

end

end A153180.P14371327352795494670

namespace A153180

/-- `A005248(A016789(n)+1)*A153175(n+1)-1` -/
def P14371327352795494670.Spec : Prop :=
  ∀ n, P14371327352795494670.a n = A153180 (n + 1)

end A153180

/-!
# A153181: Number of overpartitions of n with even rank minus the number of overpartitions of n with odd rank.

The programs for A153181, there is no canonical definition to state claims against.
-/

/-! ## A153181.P15834019970069853177

`(-1)^n*A256624(n)`
-/

namespace A153181.P15834019970069853177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A256624 n

end

end A153181.P15834019970069853177

/-! ## A153181.P16877990557508459103

`(-1)^n*A153182(4*n)`
-/

namespace A153181.P16877990557508459103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A153182 (4 * n)

end

end A153181.P16877990557508459103

/-! ## A153181.P3065914864069314119

`A256624(n)/A033999(n)`
-/

namespace A153181.P3065914864069314119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256624 n : ℚ) / (A033999 n : ℚ)

end

end A153181.P3065914864069314119

/-! ## A153181.P10539828630610907714

`abs(A256624(n))*A165326(n)`
-/

namespace A153181.P10539828630610907714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256624 n| * A165326 n

end

end A153181.P10539828630610907714

/-! ## A153181.P11515435062301545032

`A256624(n)/A130595(∑[n])`
-/

namespace A153181.P11515435062301545032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256624 n : ℚ) / (A130595 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A153181.P11515435062301545032

/-! ## A153181.P13268160130433230400

`A256624(n)/A165326(n+1)`
-/

namespace A153181.P13268160130433230400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256624 n : ℚ) / (A165326 (n + 1) : ℚ)

end

end A153181.P13268160130433230400

/-!
# A153182: Number of overpartitions of n with even M2-rank minus the number of overpartitions of n with odd M2-rank.

The programs for A153182, there is no canonical definition to state claims against.
-/

/-! ## A153182.P13788258135971611861

`(A256624(n)+A005875(n))/2`
-/

namespace A153182.P13788258135971611861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256624 n + A005875 n : ℚ) / 2

end

end A153182.P13788258135971611861

/-! ## A153182.P5927227846962674674

`A117726(A028310(n))-abs(A259825(n))`
-/

namespace A153182.P5927227846962674674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117726 (A028310 n).toNat - |A259825 n|

end

end A153182.P5927227846962674674

/-! ## A153182.P8497099282821120670

`A117726(C(2, n+2)+n)-(A259825(n)+A000038(n))`
-/

namespace A153182.P8497099282821120670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117726 (Nat.choose 2 (n + 2) + n) - (A259825 n + A000038 n)

end

end A153182.P8497099282821120670

/-! ## A153182.P13477181287167814515

`A117726((n-1)%(n+1)+1)-(A259825(n)+A000038(n))`
-/

namespace A153182.P13477181287167814515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117726 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat - (A259825 n + A000038 n)

end

end A153182.P13477181287167814515

/-! ## A153182.P13374429483953449382

`A117726(A028310(n))-(A259825(n)+A000038(n))`
-/

namespace A153182.P13374429483953449382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117726 (A028310 n).toNat - (A259825 n + A000038 n)

end

end A153182.P13374429483953449382

/-! ## A153182.P12630406525534870099

`A117726(A065033(2*n))-(A259825(n)+A000038(n))`
-/

namespace A153182.P12630406525534870099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117726 (A065033 (2 * n)).toNat - (A259825 n + A000038 n)

end

end A153182.P12630406525534870099

/-!
# A153183: Numbers k such that 3k-2 is prime.

The programs for A153183, the canonical program `A153183.P10933182994355425075` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153183 has offset 1).

The definition of A153183 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153183.P10933182994355425075

`A024892(n+1)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A153183

/-- `A024892(n+1)+1` -/
def P10933182994355425075.Spec : Prop :=
  ∀ n, P10933182994355425075.a n = A153183 (n + 1)

theorem P10933182994355425075.correct : P10933182994355425075.Spec := by
  intro n
  simp only [A153183, Nat.add_sub_cancel]

end A153183

/-! ## A153183.P7442476423779649223

`(p?[3*n+1]+2)/3`
-/

namespace A153183.P7442476423779649223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2 : ℚ) / 3

end

end A153183.P7442476423779649223

namespace A153183

/-- `(p?[3*n+1]+2)/3` -/
def P7442476423779649223.Spec : Prop :=
  ∀ n, P7442476423779649223.a n = (A153183 (n + 1) : ℚ)

end A153183

/-! ## A153183.P3849880588932350929

`A034936(n+1)+2`
-/

namespace A153183.P3849880588932350929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + 2

end

end A153183.P3849880588932350929

namespace A153183

/-- `A034936(n+1)+2` -/
def P3849880588932350929.Spec : Prop :=
  ∀ n, P3849880588932350929.a n = A153183 (n + 1)

theorem P3849880588932350929.correct : P3849880588932350929.Spec := by
  intro n
  simp only [A153183, Nat.add_sub_cancel, A153183.P3849880588932350929.a, A153183.P10933182994355425075.a, A024892, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153183

/-! ## A153183.P10814775432207886791

`A107303(n+1)-1`
-/

namespace A153183.P10814775432207886791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107303 (n + 1) - 1

end

end A153183.P10814775432207886791

namespace A153183

/-- `A107303(n+1)-1` -/
def P10814775432207886791.Spec : Prop :=
  ∀ n, P10814775432207886791.a n = A153183 (n + 1)

theorem P10814775432207886791.correct : P10814775432207886791.Spec := by
  intro n
  simp only [A153183, Nat.add_sub_cancel, A153183.P10814775432207886791.a, A153183.P10933182994355425075.a, A024892, A024892.P16415756405401507162.a, A107303, A107303.P6905371674303678170.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153183

/-! ## A153183.P4984790646783129765

`A089953(n+1)+3`
-/

namespace A153183.P4984790646783129765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) + 3

end

end A153183.P4984790646783129765

namespace A153183

/-- `A089953(n+1)+3` -/
def P4984790646783129765.Spec : Prop :=
  ∀ n, P4984790646783129765.a n = A153183 (n + 1)

theorem P4984790646783129765.correct : P4984790646783129765.Spec := by
  intro n
  simp only [A153183, Nat.add_sub_cancel, A153183.P4984790646783129765.a, A153183.P10933182994355425075.a, A024892, A024892.P16415756405401507162.a, A089953, A089953.P3265903741196432824.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153183

/-! ## A153183.P3060653868872226072

`ceil(A002476(n+1)/3)`
-/

namespace A153183.P3060653868872226072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002476 (n + 1) : ℚ) / 3⌉

end

end A153183.P3060653868872226072

namespace A153183

/-- `ceil(A002476(n+1)/3)` -/
def P3060653868872226072.Spec : Prop :=
  ∀ n, P3060653868872226072.a n = A153183 (n + 1)

end A153183

/-! ## A153183.P12147428750299961515

`2*A024899(n+1)+1`
-/

namespace A153183.P12147428750299961515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1) + 1

end

end A153183.P12147428750299961515

namespace A153183

/-- `2*A024899(n+1)+1` -/
def P12147428750299961515.Spec : Prop :=
  ∀ n, P12147428750299961515.a n = A153183 (n + 1)

end A153183

/-! ## A153183.P2405929036751862547

`2*A153218(n+1)+3`
-/

namespace A153183.P2405929036751862547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1) + 3

end

end A153183.P2405929036751862547

namespace A153183

/-- `2*A153218(n+1)+3` -/
def P2405929036751862547.Spec : Prop :=
  ∀ n, P2405929036751862547.a n = A153183 (n + 1)

theorem P2405929036751862547.correct : P2405929036751862547.Spec := by
  intro n
  simp only [A153183, Nat.add_sub_cancel, A153183.P2405929036751862547.a, A153183.P10933182994355425075.a, A024892, A024892.P16415756405401507162.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A034936, A034936.P1115765045630556781.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153183

/-! ## A153183.P6629315313149565572

`(A007645(n+2)+2)/3`
-/

namespace A153183.P6629315313149565572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007645 (n + 2) + 2 : ℚ) / 3

end

end A153183.P6629315313149565572

namespace A153183

/-- `(A007645(n+2)+2)/3` -/
def P6629315313149565572.Spec : Prop :=
  ∀ n, P6629315313149565572.a n = (A153183 (n + 1) : ℚ)

end A153183

/-! ## A153183.P643678476542981456

`(A045375(n+2)+2)/3`
-/

namespace A153183.P643678476542981456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045375 (n + 2) + 2 : ℚ) / 3

end

end A153183.P643678476542981456

namespace A153183

/-- `(A045375(n+2)+2)/3` -/
def P643678476542981456.Spec : Prop :=
  ∀ n, P643678476542981456.a n = (A153183 (n + 1) : ℚ)

end A153183

/-! ## A153183.P7385589446409249965

`(A123365(n+2)+2)/3`
-/

namespace A153183.P7385589446409249965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123365 (n + 2) + 2 : ℚ) / 3

end

end A153183.P7385589446409249965

namespace A153183

/-- `(A123365(n+2)+2)/3` -/
def P7385589446409249965.Spec : Prop :=
  ∀ n, P7385589446409249965.a n = (A153183 (n + 1) : ℚ)

end A153183

/-! ## A153183.P911089786914931770

`(A045331(n+3)+2)/3`
-/

namespace A153183.P911089786914931770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045331 (n + 3) + 2 : ℚ) / 3

end

end A153183.P911089786914931770

namespace A153183

/-- `(A045331(n+3)+2)/3` -/
def P911089786914931770.Spec : Prop :=
  ∀ n, P911089786914931770.a n = (A153183 (n + 1) : ℚ)

end A153183

/-! ## A153183.P15010712767926196862

`eq[1, A245838(n+1)]+2`
-/

namespace A153183.P15010712767926196862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153183.P15010712767926196862

namespace A153183

/-- `eq[1, A245838(n+1)]+2` -/
def P15010712767926196862.Spec : Prop :=
  ∀ n, (P15010712767926196862.a n : ℤ) = A153183 (n + 1)

end A153183

/-! ## A153183.P11864040087259760520

`∩[2*n+1, A181709(n+1)]`
-/

namespace A153183.P11864040087259760520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153183.P11864040087259760520

namespace A153183

/-- `∩[2*n+1, A181709(n+1)]` -/
def P11864040087259760520.Spec : Prop :=
  ∀ n, (P11864040087259760520.a n : ℤ) = A153183 (n + 1)

end A153183

/-! ## A153183.P16886100619952610595

`A181709(A138972(n+1))`
-/

namespace A153183.P16886100619952610595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (A138972 (n + 1)).toNat

end

end A153183.P16886100619952610595

namespace A153183

/-- `A181709(A138972(n+1))` -/
def P16886100619952610595.Spec : Prop :=
  ∀ n, P16886100619952610595.a n = A153183 (n + 1)

end A153183

/-! ## A153183.P16705644105111401972

`A323704(A091178(n+1))`
-/

namespace A153183.P16705644105111401972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323704 (A091178 (n + 1)).toNat

end

end A153183.P16705644105111401972

namespace A153183

/-- `A323704(A091178(n+1))` -/
def P16705644105111401972.Spec : Prop :=
  ∀ n, P16705644105111401972.a n = A153183 (n + 1)

end A153183

/-! ## A153183.P15150782744874146780

`A323704(A171820(n+2))`
-/

namespace A153183.P15150782744874146780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323704 (A171820 (n + 2)).toNat

end

end A153183.P15150782744874146780

namespace A153183

/-- `A323704(A171820(n+2))` -/
def P15150782744874146780.Spec : Prop :=
  ∀ n, P15150782744874146780.a n = A153183 (n + 1)

end A153183

/-! ## A153183.P10187960442567010889

`eq[1, A156706(n+1)]+2`
-/

namespace A153183.P10187960442567010889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153183.P10187960442567010889

namespace A153183

/-- `eq[1, A156706(n+1)]+2` -/
def P10187960442567010889.Spec : Prop :=
  ∀ n, (P10187960442567010889.a n : ℤ) = A153183 (n + 1)

end A153183

/-! ## A153183.P11313914273811590932

`eq[1, A001222(3*n+1)]+1`
-/

namespace A153183.P11313914273811590932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153183.P11313914273811590932

namespace A153183

/-- `eq[1, A001222(3*n+1)]+1` -/
def P11313914273811590932.Spec : Prop :=
  ∀ n, (P11313914273811590932.a n : ℤ) = A153183 (n + 1)

end A153183

/-! ## A153183.P16948472710163698112

`eq[2, A000005(3*n+1)]+1`
-/

namespace A153183.P16948472710163698112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153183.P16948472710163698112

namespace A153183

/-- `eq[2, A000005(3*n+1)]+1` -/
def P16948472710163698112.Spec : Prop :=
  ∀ n, (P16948472710163698112.a n : ℤ) = A153183 (n + 1)

end A153183

/-!
# A153184: Numbers n such that 3*n-2 is not prime.

The programs for A153184, the canonical program `A153184.P14178844453753704744` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153184 has offset 1).

The definition of A153184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153184.P548706531307960322

`A153309(n+1)+1`
-/

namespace A153184.P548706531307960322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153309 (n + 1) + 1

end

end A153184.P548706531307960322

namespace A153184

/-- `A153309(n+1)+1` -/
def P548706531307960322.Spec : Prop :=
  ∀ n, P548706531307960322.a n = A153184 (n + 1)

theorem P548706531307960322.correct : P548706531307960322.Spec := by
  intro n
  simp only [A153184, Nat.add_sub_cancel, A153184.P548706531307960322.a, A153184.P14178844453753704744.f1, A153184.P14178844453753704744.f2, A153184.P14178844453753704744.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A153309, A153309.P14599462344025828023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153184

/-! ## A153184.P1418641581738378293

`comp[A024892(n+1)]+1`
-/

namespace A153184.P1418641581738378293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153184.P1418641581738378293

namespace A153184

/-- `comp[A024892(n+1)]+1` -/
def P1418641581738378293.Spec : Prop :=
  ∀ n, (P1418641581738378293.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P16892617887425794449

`comp[A034936(n+1)+1]+1`
-/

namespace A153184.P16892617887425794449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153184.P16892617887425794449

namespace A153184

/-- `comp[A034936(n+1)+1]+1` -/
def P16892617887425794449.Spec : Prop :=
  ∀ n, (P16892617887425794449.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P8538711506507503324

`comp[A089953(n+1)+2]+1`
-/

namespace A153184.P8538711506507503324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153184.P8538711506507503324

namespace A153184

/-- `comp[A089953(n+1)+2]+1` -/
def P8538711506507503324.Spec : Prop :=
  ∀ n, (P8538711506507503324.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P12366040164886644667

`comp[2*A024899(n+1)]+1`
-/

namespace A153184.P12366040164886644667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153184.P12366040164886644667

namespace A153184

/-- `comp[2*A024899(n+1)]+1` -/
def P12366040164886644667.Spec : Prop :=
  ∀ n, (P12366040164886644667.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P12671038873897434007

`eq[0, A029834(3*n+1)]+1`
-/

namespace A153184.P12671038873897434007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029834 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153184.P12671038873897434007

namespace A153184

/-- `eq[0, A029834(3*n+1)]+1` -/
def P12671038873897434007.Spec : Prop :=
  ∀ n, (P12671038873897434007.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P15071795857475781732

`eq[1, A005171(3*n+1)]+1`
-/

namespace A153184.P15071795857475781732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153184.P15071795857475781732

namespace A153184

/-- `eq[1, A005171(3*n+1)]+1` -/
def P15071795857475781732.Spec : Prop :=
  ∀ n, (P15071795857475781732.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P14178844453753704744

`lt[A010051(3*n+1), 1]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153184

/-- `lt[A010051(3*n+1), 1]+1` -/
def P14178844453753704744.Spec : Prop :=
  ∀ n, (P14178844453753704744.a n : ℤ) = A153184 (n + 1)

theorem P14178844453753704744.correct : P14178844453753704744.Spec := by
  intro n
  simp only [A153184, Nat.add_sub_cancel]

end A153184

/-! ## A153184.P4861797498852825003

`lt[A020639(3*n+1), n+2]+1`
-/

namespace A153184.P4861797498852825003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A153184.P4861797498852825003

namespace A153184

/-- `lt[A020639(3*n+1), n+2]+1` -/
def P4861797498852825003.Spec : Prop :=
  ∀ n, (P4861797498852825003.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P4394561932438074078

`∪[A199593(n+1), A004277(n)]`
-/

namespace A153184.P4394561932438074078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153184.P4394561932438074078

namespace A153184

/-- `∪[A199593(n+1), A004277(n)]` -/
def P4394561932438074078.Spec : Prop :=
  ∀ n, (P4394561932438074078.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P2709431916887741978

`∪[A087370(n+1), A199593(n+1)]`
-/

namespace A153184.P2709431916887741978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153184.P2709431916887741978

namespace A153184

/-- `∪[A087370(n+1), A199593(n+1)]` -/
def P2709431916887741978.Spec : Prop :=
  ∀ n, (P2709431916887741978.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P3681959053567719834

`lt[∑{p}[a(n-1)-3, #], 2*n]` with `a(0)=2`
-/

namespace A153184.P3681959053567719834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A153184.P3681959053567719834

namespace A153184

/-- `lt[∑{p}[a(n-1)-3, #], 2*n]` -/
def P3681959053567719834.Spec : Prop :=
  ∀ n, (P3681959053567719834.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P18003566612040846762

`lt[∑{p}[2*n+n-2, #], 2*n]`
-/

namespace A153184.P18003566612040846762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A153184.P18003566612040846762

namespace A153184

/-- `lt[∑{p}[2*n+n-2, #], 2*n]` -/
def P18003566612040846762.Spec : Prop :=
  ∀ n, (P18003566612040846762.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P9377412381372549139

`(∩[3*n+1, A018252(n+1)]+2)/3`
-/

namespace A153184.P9377412381372549139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n + 2 : ℚ) / 3

end

end A153184.P9377412381372549139

namespace A153184

/-- `(∩[3*n+1, A018252(n+1)]+2)/3` -/
def P9377412381372549139.Spec : Prop :=
  ∀ n, P9377412381372549139.a n = (A153184 (n + 1) : ℚ)

end A153184

/-! ## A153184.P11931420648093892883

`eq[0, A151763(3*n+1)]+1`
-/

namespace A153184.P11931420648093892883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153184.P11931420648093892883

namespace A153184

/-- `eq[0, A151763(3*n+1)]+1` -/
def P11931420648093892883.Spec : Prop :=
  ∀ n, (P11931420648093892883.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P3803142402222606489

`eq[1, A089026(3*n+1)]+1`
-/

namespace A153184.P3803142402222606489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153184.P3803142402222606489

namespace A153184

/-- `eq[1, A089026(3*n+1)]+1` -/
def P3803142402222606489.Spec : Prop :=
  ∀ n, (P3803142402222606489.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P5747169336126151714

`lt[A285700(3*n+1), 1]+1`
-/

namespace A153184.P5747169336126151714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A153184.P5747169336126151714

namespace A153184

/-- `lt[A285700(3*n+1), 1]+1` -/
def P5747169336126151714.Spec : Prop :=
  ∀ n, (P5747169336126151714.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P17479526604499856800

`lt[A014963(abs(2-3*n)), n+2]`
-/

namespace A153184.P17479526604499856800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 |2 - (3 * n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153184.P17479526604499856800

namespace A153184

/-- `lt[A014963(abs(2-3*n)), n+2]` -/
def P17479526604499856800.Spec : Prop :=
  ∀ n, (P17479526604499856800.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P18039205515336054427

`lt[A014963(3*n+1), n+2]+1`
-/

namespace A153184.P18039205515336054427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A153184.P18039205515336054427

namespace A153184

/-- `lt[A014963(3*n+1), n+2]+1` -/
def P18039205515336054427.Spec : Prop :=
  ∀ n, (P18039205515336054427.a n : ℤ) = A153184 (n + 1)

end A153184

/-! ## A153184.P18168271888743178724

`record[A117910(A018252(n+1))]`
-/

namespace A153184.P18168271888743178724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153184.P18168271888743178724

namespace A153184

/-- `record[A117910(A018252(n+1))]` -/
def P18168271888743178724.Spec : Prop :=
  ∀ n, P18168271888743178724.a n = A153184 (n + 1)

end A153184

/-!
# A153185: Numbers n such that Q(n) + Q(n^2) + Q(n^3) is a perfect square where Q(n) is the sum of the digits of n.

The programs for A153185, there is no canonical definition to state claims against.
-/

/-! ## A153185.P9413187093669467393

`lcm(9, A008908(A197189(n)))`
-/

namespace A153185.P9413187093669467393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (A008908 (A197189 n).toNat)

end

end A153185.P9413187093669467393

/-! ## A153185.P17843951302294304968

`∑[9*A269949(A189391(n))]`
-/

namespace A153185.P17843951302294304968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A269949 (A189391 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153185.P17843951302294304968

/-!
# A153186: Period 9: repeat [1, 7, 4, 7, 4, 7, 1, 1, 1].

The programs for A153186, the canonical program `A153186.P15100692809781935578` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153186 has offset 0).

The definition of A153186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153186.P15100692809781935578

`dr((n*(n+3)+3)/gcd(3, n))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153186

/-- `dr((n*(n+3)+3)/gcd(3, n))` -/
def P15100692809781935578.Spec : Prop :=
  ∀ n, (P15100692809781935578.a n : ℤ) = A153186 n

theorem P15100692809781935578.correct : P15100692809781935578.Spec := by
  intro n
  simp only [A153186]

end A153186

/-!
# A153188: Triangle read by rows: T(n,k) = n^k * k!.

The programs for A153188, the canonical program `A153188.P8768200032184919467` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153188 has offset 0).

The definition of A153188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)^col(n)*col(n)!` (program `A153188.P8768200032184919467`, by `A153188.P8768200032184919467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153188.P8768200032184919467

`row(n)^col(n)*col(n)!`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153188

/-- `row(n)^col(n)*col(n)!` -/
def P8768200032184919467.Spec : Prop :=
  ∀ n, (P8768200032184919467.a n : ℤ) = A153188 n

theorem P8768200032184919467.correct : P8768200032184919467.Spec := by
  intro n
  simp only [A153188]

end A153188

/-! ## A153188.P2665650372285925959

`A079901(n)*A233543(n)`
-/

namespace A153188.P2665650372285925959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 n * A233543 n

end

end A153188.P2665650372285925959

namespace A153188

/-- `A079901(n)*A233543(n)` -/
def P2665650372285925959.Spec : Prop :=
  ∀ n, P2665650372285925959.a n = A153188 n

theorem P2665650372285925959.correct : P2665650372285925959.Spec := by
  intro n
  simp only [A153188, Nat.add_sub_cancel, A153188.P2665650372285925959.a, A153188.P8768200032184919467.a, A079901, A079901.P10366005500401989366.a, A233543, A233543.P8120853931293690238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153188

/-! ## A153188.P9527026691023013315

`A144328(n+1)!*A079901(n)`
-/

namespace A153188.P9527026691023013315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A079901 n

end

end A153188.P9527026691023013315

namespace A153188

/-- `A144328(n+1)!*A079901(n)` -/
def P9527026691023013315.Spec : Prop :=
  ∀ n, P9527026691023013315.a n = A153188 n

end A153188

/-! ## A153188.P6918891194524713568

`A394783(n+1)/A076112(n+1)*A079901(n)`
-/

namespace A153188.P6918891194524713568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394783 (n + 1) : ℚ) / (A076112 (n + 1) : ℚ) * (A079901 n : ℚ)

end

end A153188.P6918891194524713568

namespace A153188

/-- `A394783(n+1)/A076112(n+1)*A079901(n)` -/
def P6918891194524713568.Spec : Prop :=
  ∀ n, P6918891194524713568.a n = (A153188 n : ℚ)

end A153188

/-! ## A153188.P10424564273633952297

`A372311(n)/A008277(n+1)`
-/

namespace A153188.P10424564273633952297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372311 n : ℚ) / (A008277 (n + 1) : ℚ)

end

end A153188.P10424564273633952297

namespace A153188

/-- `A372311(n)/A008277(n+1)` -/
def P10424564273633952297.Spec : Prop :=
  ∀ n, P10424564273633952297.a n = (A153188 n : ℚ)

end A153188

/-! ## A153188.P6474940728366362695

`A028246(n+1)*A079901(n)/A008277(n+1)`
-/

namespace A153188.P6474940728366362695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) * A079901 n : ℚ) / (A008277 (n + 1) : ℚ)

end

end A153188.P6474940728366362695

namespace A153188

/-- `A028246(n+1)*A079901(n)/A008277(n+1)` -/
def P6474940728366362695.Spec : Prop :=
  ∀ n, P6474940728366362695.a n = (A153188 n : ℚ)

end A153188

/-!
# A153189: Triangle T(n,k) = Product_{j=0..k} n*j+1.

The programs for A153189, there is no canonical definition to state claims against.
-/

/-! ## A153189.P13320837087677205877

`A142589(A245300(n)+A025581(n))`
-/

namespace A153189.P13320837087677205877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (A245300 n + A025581 n).toNat

end

end A153189.P13320837087677205877

/-! ## A153189.P13878483980344095547

`A256268(A245300(n)+A131507(n))`
-/

namespace A153189.P13878483980344095547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256268 (A245300 n + A131507 n).toNat

end

end A153189.P13878483980344095547

/-!
# A153191: a(n) = 9*a(n-1) + 6*a(n-2); a(0)=0, a(1)=1.

The programs for A153191, the canonical program `A153191.P6305954922086448136` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153191 has offset 0).

The definition of A153191 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+6*a(n-2)` (program `A153191.P6305954922086448136`, by `A153191.P6305954922086448136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153191.P6305954922086448136

`9*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153191

/-- `9*a(n-1)+6*a(n-2)` -/
def P6305954922086448136.Spec : Prop :=
  ∀ n, (P6305954922086448136.a n : ℤ) = A153191 n

theorem P6305954922086448136.correct : P6305954922086448136.Spec := by
  intro n
  simp only [A153191]

end A153191

/-! ## A153191.P11509488889941596049

`ogf(x/(1-9x-6x^2))`
-/

namespace A153191.P11509488889941596049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, -6] n

end

end A153191.P11509488889941596049

namespace A153191

/-- `ogf(x/(1-9x-6x^2))` -/
def P11509488889941596049.Spec : Prop :=
  ∀ n, P11509488889941596049.a n = A153191 n

end A153191

/-! ## A153191.P2868170279697590887

`3*(2*a(n-2)-(a(n-1)-4*a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A153191.P2868170279697590887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (2 * a (n - 2) - (a (n - 1) - 4 * a (n - 1)))

end

end A153191.P2868170279697590887

namespace A153191

/-- `3*(2*a(n-2)-(a(n-1)-4*a(n-1)))` -/
def P2868170279697590887.Spec : Prop :=
  ∀ n, P2868170279697590887.a n = A153191 n

end A153191

/-! ## A153191.P9699818338382523270

`A287831(n-1)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A153191.P9699818338382523270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A287831 (n - 1) - a (n - 1)

end

end A153191.P9699818338382523270

namespace A153191

/-- `A287831(n-1)-a(n-1)` -/
def P9699818338382523270.Spec : Prop :=
  ∀ n, P9699818338382523270.a n = A153191 n

end A153191

/-!
# A153192: Numbers such that the numerator of floor(sqrt(n))/n, when reduced to its lowest terms, is equal to 2.

The programs for A153192, the canonical program `A153192.P16847952041028242911` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153192 has offset 1).

The definition of A153192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153192.P6539217844028270454

`(2*(n+1)+3)*(2*(n+1)-(-1)^(n+1)+1)/4`
-/

namespace A153192.P6539217844028270454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) + 3 : ℤ) * ((2 * (n + 1) : ℤ) - (-1) ^ (n + 1) + 1) : ℚ) / 4

end

end A153192.P6539217844028270454

namespace A153192

/-- `(2*(n+1)+3)*(2*(n+1)-(-1)^(n+1)+1)/4` -/
def P6539217844028270454.Spec : Prop :=
  ∀ n, P6539217844028270454.a n = (A153192 (n + 1) : ℚ)

theorem P6539217844028270454.correct : P6539217844028270454.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A153192, Nat.add_sub_cancel, A153192.P6539217844028270454.a, A153192.P16847952041028242911.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A153192, Nat.add_sub_cancel, A153192.P6539217844028270454.a, A153192.P16847952041028242911.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153192

/-! ## A153192.P16847952041028242911

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=5, a(1)=7, a(2)=18, a(3)=22, a(4)=39`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153192

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P16847952041028242911.Spec : Prop :=
  ∀ n, P16847952041028242911.a n = A153192 (n + 1)

theorem P16847952041028242911.correct : P16847952041028242911.Spec := by
  intro n
  simp only [A153192, Nat.add_sub_cancel]

end A153192

/-! ## A153192.P4476206350193866800

`∑[a(n-2)+8]-a(n-1)` with `a(0)=5, a(1)=7`
-/

namespace A153192.P4476206350193866800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A153192.P4476206350193866800

namespace A153192

/-- `∑[a(n-2)+8]-a(n-1)` -/
def P4476206350193866800.Spec : Prop :=
  ∀ n, P4476206350193866800.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P9295859662411673760

`∑[(n+2)*2*gcd(2, n)-(n+3)]`
-/

namespace A153192.P9295859662411673760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (2 * Nat.gcd 2 n) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153192.P9295859662411673760

namespace A153192

/-- `∑[(n+2)*2*gcd(2, n)-(n+3)]` -/
def P9295859662411673760.Spec : Prop :=
  ∀ n, P9295859662411673760.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P13710027764576939074

`∑[∑[8-a(n-1)]-a(n-1)]` with `a(0)=5, a(1)=2`
-/

namespace A153192.P13710027764576939074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153192.P13710027764576939074

namespace A153192

/-- `∑[∑[8-a(n-1)]-a(n-1)]` -/
def P13710027764576939074.Spec : Prop :=
  ∀ n, P13710027764576939074.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P16755774450543274985

`A165717(n+1)-(n+1)`
-/

namespace A153192.P16755774450543274985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165717 (n + 1) - (n + 1 : ℤ)

end

end A153192.P16755774450543274985

namespace A153192

/-- `A165717(n+1)-(n+1)` -/
def P16755774450543274985.Spec : Prop :=
  ∀ n, P16755774450543274985.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P2243579429826719716

`∑[(n+2)*A000032(gcd(n, n+2))-1]`
-/

namespace A153192.P2243579429826719716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000032 (Nat.gcd n (n + 2)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153192.P2243579429826719716

namespace A153192

/-- `∑[(n+2)*A000032(gcd(n, n+2))-1]` -/
def P2243579429826719716.Spec : Prop :=
  ∀ n, P2243579429826719716.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P5805498911375865320

`A008619(n)*A020735(n+1)`
-/

namespace A153192.P5805498911375865320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A020735 (n + 1)

end

end A153192.P5805498911375865320

namespace A153192

/-- `A008619(n)*A020735(n+1)` -/
def P5805498911375865320.Spec : Prop :=
  ∀ n, P5805498911375865320.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P1264527865517816915

`A159469(n+3)-A008619(n)`
-/

namespace A153192.P1264527865517816915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159469 (n + 3) - A008619 n

end

end A153192.P1264527865517816915

namespace A153192

/-- `A159469(n+3)-A008619(n)` -/
def P1264527865517816915.Spec : Prop :=
  ∀ n, P1264527865517816915.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P10690587327206697485

`A174114(n+1)+A047257(n+1)`
-/

namespace A153192.P10690587327206697485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174114 (n + 1) + A047257 (n + 1)

end

end A153192.P10690587327206697485

namespace A153192

/-- `A174114(n+1)+A047257(n+1)` -/
def P10690587327206697485.Spec : Prop :=
  ∀ n, P10690587327206697485.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P6322614252657643629

`A159469(n+3)-A110654(n+1)`
-/

namespace A153192.P6322614252657643629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159469 (n + 3) - A110654 (n + 1)

end

end A153192.P6322614252657643629

namespace A153192

/-- `A159469(n+3)-A110654(n+1)` -/
def P6322614252657643629.Spec : Prop :=
  ∀ n, P6322614252657643629.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P4186374540156395466

`A047319(n+1)+n*A109613(n)`
-/

namespace A153192.P4186374540156395466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047319 (n + 1) + (n : ℤ) * A109613 n

end

end A153192.P4186374540156395466

namespace A153192

/-- `A047319(n+1)+n*A109613(n)` -/
def P4186374540156395466.Spec : Prop :=
  ∀ n, P4186374540156395466.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P4639176002358694625

`A064455(n+1)+(A109613(n)+1)²`
-/

namespace A153192.P4639176002358694625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1) + (A109613 n + 1) ^ 2

end

end A153192.P4639176002358694625

namespace A153192

/-- `A064455(n+1)+(A109613(n)+1)²` -/
def P4639176002358694625.Spec : Prop :=
  ∀ n, P4639176002358694625.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P13526447000188371986

`A064455(n+1)+(A052928(n)+2)²`
-/

namespace A153192.P13526447000188371986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1) + (A052928 n + 2) ^ 2

end

end A153192.P13526447000188371986

namespace A153192

/-- `A064455(n+1)+(A052928(n)+2)²` -/
def P13526447000188371986.Spec : Prop :=
  ∀ n, P13526447000188371986.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P18231702723857916442

`A064455(n+1)+(2*A008619(n))²`
-/

namespace A153192.P18231702723857916442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1) + (2 * A008619 n) ^ 2

end

end A153192.P18231702723857916442

namespace A153192

/-- `A064455(n+1)+(2*A008619(n))²` -/
def P18231702723857916442.Spec : Prop :=
  ∀ n, P18231702723857916442.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P8223392516110554200

`A001844(A004526(n)+1)+A000096(n)`
-/

namespace A153192.P8223392516110554200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A004526 n + 1).toNat + A000096 n

end

end A153192.P8223392516110554200

namespace A153192

/-- `A001844(A004526(n)+1)+A000096(n)` -/
def P8223392516110554200.Spec : Prop :=
  ∀ n, P8223392516110554200.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P10438519931060864935

`A195016(n+1)-(A118277(n+1)+A085787(n+1))`
-/

namespace A153192.P10438519931060864935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195016 (n + 1) - (A118277 (n + 1) + A085787 (n + 1))

end

end A153192.P10438519931060864935

namespace A153192

/-- `A195016(n+1)-(A118277(n+1)+A085787(n+1))` -/
def P10438519931060864935.Spec : Prop :=
  ∀ n, P10438519931060864935.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P6746542394413748286

`A195016(n+1)-(A118277(n+1)+A111710(n+1))`
-/

namespace A153192.P6746542394413748286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195016 (n + 1) - (A118277 (n + 1) + A111710 (n + 1))

end

end A153192.P6746542394413748286

namespace A153192

/-- `A195016(n+1)-(A118277(n+1)+A111710(n+1))` -/
def P6746542394413748286.Spec : Prop :=
  ∀ n, P6746542394413748286.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P1634479173188374271

`∑[A165998(n+1)-1]`
-/

namespace A153192.P1634479173188374271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153192.P1634479173188374271

namespace A153192

/-- `∑[A165998(n+1)-1]` -/
def P1634479173188374271.Spec : Prop :=
  ∀ n, P1634479173188374271.a n = A153192 (n + 1)

end A153192

/-! ## A153192.P9549857977526835671

`∑[∑[2-A157142(n+1)]]`
-/

namespace A153192.P9549857977526835671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A157142 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153192.P9549857977526835671

namespace A153192

/-- `∑[∑[2-A157142(n+1)]]` -/
def P9549857977526835671.Spec : Prop :=
  ∀ n, P9549857977526835671.a n = A153192 (n + 1)

end A153192

/-!
# A153193: a(n) is the number of integers of the form n*(n+1)*k / (k - n*(n+1)) where k is an integer >= 1.

The programs for A153193, the canonical program `A153193.P2844732109781554609` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153193 has offset 1).

The definition of A153193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153193.P2844732109781554609

`A063647(n+1)+A048691(n+1)*A146564(n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A153193

/-- `A063647(n+1)+A048691(n+1)*A146564(n+2)` -/
def P2844732109781554609.Spec : Prop :=
  ∀ n, P2844732109781554609.a n = A153193 (n + 1)

theorem P2844732109781554609.correct : P2844732109781554609.Spec := by
  intro n
  simp only [A153193, Nat.add_sub_cancel]

end A153193

/-! ## A153193.P4008542812825744146

`A001651(A048691(n+1)*A048691(n+2))`
-/

namespace A153193.P4008542812825744146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A048691 (n + 1) * A048691 (n + 2)).toNat

end

end A153193.P4008542812825744146

namespace A153193

/-- `A001651(A048691(n+1)*A048691(n+2))` -/
def P4008542812825744146.Spec : Prop :=
  ∀ n, P4008542812825744146.a n = A153193 (n + 1)

end A153193

/-! ## A153193.P17086569895242392211

`A026190(A048691(n+1)*A048691(n+2))`
-/

namespace A153193.P17086569895242392211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026190 (A048691 (n + 1) * A048691 (n + 2)).toNat

end

end A153193.P17086569895242392211

namespace A153193

/-- `A026190(A048691(n+1)*A048691(n+2))` -/
def P17086569895242392211.Spec : Prop :=
  ∀ n, P17086569895242392211.a n = A153193 (n + 1)

end A153193

/-! ## A153193.P78198978889244365

`A032766(A048691(n+1)*A048691(n+2))`
-/

namespace A153193.P78198978889244365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A048691 (n + 1) * A048691 (n + 2)).toNat

end

end A153193.P78198978889244365

namespace A153193

/-- `A032766(A048691(n+1)*A048691(n+2))` -/
def P78198978889244365.Spec : Prop :=
  ∀ n, P78198978889244365.a n = A153193 (n + 1)

end A153193

/-! ## A153193.P10843286735334963997

`A146564(A278256(n+1))`
-/

namespace A153193.P10843286735334963997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (A278256 (n + 1)).toNat

end

end A153193.P10843286735334963997

namespace A153193

/-- `A146564(A278256(n+1))` -/
def P10843286735334963997.Spec : Prop :=
  ∀ n, P10843286735334963997.a n = A153193 (n + 1)

end A153193

/-! ## A153193.P269946027397127689

`3*A046079(∑[4*(n+1)])+1`
-/

namespace A153193.P269946027397127689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046079 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A153193.P269946027397127689

namespace A153193

/-- `3*A046079(∑[4*(n+1)])+1` -/
def P269946027397127689.Spec : Prop :=
  ∀ n, P269946027397127689.a n = A153193 (n + 1)

end A153193

/-! ## A153193.P3131286549982197684

`A016777(A046079(∑[4*(n+1)]))`
-/

namespace A153193.P3131286549982197684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A046079 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153193.P3131286549982197684

namespace A153193

/-- `A016777(A046079(∑[4*(n+1)]))` -/
def P3131286549982197684.Spec : Prop :=
  ∀ n, P3131286549982197684.a n = A153193 (n + 1)

end A153193

/-! ## A153193.P492292172647895974

`A146564(∑[2*(n+1)])`
-/

namespace A153193.P492292172647895974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153193.P492292172647895974

namespace A153193

/-- `A146564(∑[2*(n+1)])` -/
def P492292172647895974.Spec : Prop :=
  ∀ n, P492292172647895974.a n = A153193 (n + 1)

end A153193

/-! ## A153193.P6411539460794986305

`3*A063647(∑[2*(n+1)])+1`
-/

namespace A153193.P6411539460794986305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A063647 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A153193.P6411539460794986305

namespace A153193

/-- `3*A063647(∑[2*(n+1)])+1` -/
def P6411539460794986305.Spec : Prop :=
  ∀ n, P6411539460794986305.a n = A153193 (n + 1)

end A153193

/-! ## A153193.P288495266821241923

`A016777(A063647(∑[2*(n+1)]))`
-/

namespace A153193.P288495266821241923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A063647 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153193.P288495266821241923

namespace A153193

/-- `A016777(A063647(∑[2*(n+1)]))` -/
def P288495266821241923.Spec : Prop :=
  ∀ n, P288495266821241923.a n = A153193 (n + 1)

end A153193

/-!
# A153194: Numbers such that the numerator of floor(sqrt(n))/n, when reduced to its lowest terms, is equal to 3.

The programs for A153194, the canonical program `A153194.P11774599774725709419` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153194 has offset 1).

The definition of A153194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153194.P15569962511086242439

`eq[3, A075119(n+1)]+1`
-/

namespace A153194.P15569962511086242439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153194.P15569962511086242439

namespace A153194

/-- `eq[3, A075119(n+1)]+1` -/
def P15569962511086242439.Spec : Prop :=
  ∀ n, (P15569962511086242439.a n : ℤ) = A153194 (n + 1)

end A153194

/-! ## A153194.P373412782684241724

`eq[3, A075119(A028310(n))]`
-/

namespace A153194.P373412782684241724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153194.P373412782684241724

namespace A153194

/-- `eq[3, A075119(A028310(n))]` -/
def P373412782684241724.Spec : Prop :=
  ∀ n, (P373412782684241724.a n : ℤ) = A153194 (n + 1)

end A153194

/-! ## A153194.P2623798320395365667

`A153152(eq[3, A075119(n+1)])`
-/

namespace A153194.P2623798320395365667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153194.P2623798320395365667

namespace A153194

/-- `A153152(eq[3, A075119(n+1)])` -/
def P2623798320395365667.Spec : Prop :=
  ∀ n, P2623798320395365667.a n = A153194 (n + 1)

end A153194

/-! ## A153194.P11774599774725709419

`eq[lcm(n, A000196(n)), A008486(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153194

/-- `eq[lcm(n, A000196(n)), A008486(n)]` -/
def P11774599774725709419.Spec : Prop :=
  ∀ n, (P11774599774725709419.a n : ℤ) = A153194 (n + 1)

theorem P11774599774725709419.correct : P11774599774725709419.Spec := by
  intro n
  simp only [A153194, Nat.add_sub_cancel]

end A153194

/-! ## A153194.P14502211039819379747

`eq[3, A075119(A060000(n+1))]`
-/

namespace A153194.P14502211039819379747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153194.P14502211039819379747

namespace A153194

/-- `eq[3, A075119(A060000(n+1))]` -/
def P14502211039819379747.Spec : Prop :=
  ∀ n, (P14502211039819379747.a n : ℤ) = A153194 (n + 1)

end A153194

/-!
# A153195: Number of primes <= n(n+1)(n+2)/6 (the tetrahedral numbers A000292).

The programs for A153195, there is no canonical definition to state claims against.
-/

/-! ## A153195.P13770626339516514766

`A000720(∑[xor(1, ∑[n])])`
-/

namespace A153195.P13770626339516514766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153195.P13770626339516514766

/-! ## A153195.P6663598852390127784

`A000720(∑[∑[n]]+floor(acot(n)))`
-/

namespace A153195.P6663598852390127784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A153195.P6663598852390127784

/-! ## A153195.P5714567195369902085

`A000720(or(floor(acot(n)), ∑[∑[n]]))`
-/

namespace A153195.P5714567195369902085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A153195.P5714567195369902085

/-! ## A153195.P1561145233167247951

`A000720(∑[∑[n]-char[1]]+1)`
-/

namespace A153195.P1561145233167247951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A153195.P1561145233167247951

/-! ## A153195.P12887466130415501449

`A000720(A151800(∑[∑[n]]))-1`
-/

namespace A153195.P12887466130415501449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A153195.P12887466130415501449

/-!
# A153196: Numbers k such that 6*k+5 and 6*k+7 are twin primes.

The programs for A153196, the canonical program `A153196.P3857920893069032471` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153196 has offset 1).

The definition of A153196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153196.P16033414669065175254

`A002822(n+1)-1`
-/

namespace A153196.P16033414669065175254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) - 1

end

end A153196.P16033414669065175254

namespace A153196

/-- `A002822(n+1)-1` -/
def P16033414669065175254.Spec : Prop :=
  ∀ n, P16033414669065175254.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P12725008457007328691

`A116958(n+1)/3`
-/

namespace A153196.P12725008457007328691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116958 (n + 1) : ℚ) / 3

end

end A153196.P12725008457007328691

namespace A153196

/-- `A116958(n+1)/3` -/
def P12725008457007328691.Spec : Prop :=
  ∀ n, P12725008457007328691.a n = (A153196 (n + 1) : ℚ)

end A153196

/-! ## A153196.P15181876382756506498

`floor(A001359(n+2)/6)`
-/

namespace A153196.P15181876382756506498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001359 (n + 2) : ℚ) / 6⌋

end

end A153196.P15181876382756506498

namespace A153196

/-- `floor(A001359(n+2)/6)` -/
def P15181876382756506498.Spec : Prop :=
  ∀ n, P15181876382756506498.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P754911543232444575

`floor(sinh(log(A167379(n+1))))`
-/

namespace A153196.P754911543232444575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A167379 (n + 1) : ℝ))⌋

end

end A153196.P754911543232444575

namespace A153196

/-- `floor(sinh(log(A167379(n+1))))` -/
def P754911543232444575.Spec : Prop :=
  ∀ n, P754911543232444575.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P2213005862276494057

`A040040(n+2)/3-1`
-/

namespace A153196.P2213005862276494057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040040 (n + 2) : ℚ) / 3 - 1

end

end A153196.P2213005862276494057

namespace A153196

/-- `A040040(n+2)/3-1` -/
def P2213005862276494057.Spec : Prop :=
  ∀ n, P2213005862276494057.a n = (A153196 (n + 1) : ℚ)

end A153196

/-! ## A153196.P15707246381532117942

`(A177139(n+1)-3)/2`
-/

namespace A153196.P15707246381532117942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177139 (n + 1) - 3 : ℚ) / 2

end

end A153196.P15707246381532117942

namespace A153196

/-- `(A177139(n+1)-3)/2` -/
def P15707246381532117942.Spec : Prop :=
  ∀ n, P15707246381532117942.a n = (A153196 (n + 1) : ℚ)

end A153196

/-! ## A153196.P13765289933103462898

`(A243811(n+2)-1)/3`
-/

namespace A153196.P13765289933103462898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243811 (n + 2) - 1 : ℚ) / 3

end

end A153196.P13765289933103462898

namespace A153196

/-- `(A243811(n+2)-1)/3` -/
def P13765289933103462898.Spec : Prop :=
  ∀ n, P13765289933103462898.a n = (A153196 (n + 1) : ℚ)

end A153196

/-! ## A153196.P12006977704806051220

`A168497(n+3)/3-1`
-/

namespace A153196.P12006977704806051220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168497 (n + 3) : ℚ) / 3 - 1

end

end A153196.P12006977704806051220

namespace A153196

/-- `A168497(n+3)/3-1` -/
def P12006977704806051220.Spec : Prop :=
  ∀ n, P12006977704806051220.a n = (A153196 (n + 1) : ℚ)

end A153196

/-! ## A153196.P14823943525691878961

`A014574(n+2)/6-1`
-/

namespace A153196.P14823943525691878961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 2) : ℚ) / 6 - 1

end

end A153196.P14823943525691878961

namespace A153196

/-- `A014574(n+2)/6-1` -/
def P14823943525691878961.Spec : Prop :=
  ∀ n, P14823943525691878961.a n = (A153196 (n + 1) : ℚ)

end A153196

/-! ## A153196.P12692354132172145604

`record[A002822(A126759(n))-1]`
-/

namespace A153196.P12692354132172145604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153196.P12692354132172145604

namespace A153196

/-- `record[A002822(A126759(n))-1]` -/
def P12692354132172145604.Spec : Prop :=
  ∀ n, P12692354132172145604.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P9722125455260157134

`A014682(A167379(n+1)-2)`
-/

namespace A153196.P9722125455260157134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A167379 (n + 1) - 2).toNat

end

end A153196.P9722125455260157134

namespace A153196

/-- `A014682(A167379(n+1)-2)` -/
def P9722125455260157134.Spec : Prop :=
  ∀ n, P9722125455260157134.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P11985082824360503427

`A014682(A177139(n+1)+1)-2`
-/

namespace A153196.P11985082824360503427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177139 (n + 1) + 1).toNat - 2

end

end A153196.P11985082824360503427

namespace A153196

/-- `A014682(A177139(n+1)+1)-2` -/
def P11985082824360503427.Spec : Prop :=
  ∀ n, P11985082824360503427.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P18208050049489074419

`A040040(n+2)-A177139(n+1)`
-/

namespace A153196.P18208050049489074419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 2) - A177139 (n + 1)

end

end A153196.P18208050049489074419

namespace A153196

/-- `A040040(n+2)-A177139(n+1)` -/
def P18208050049489074419.Spec : Prop :=
  ∀ n, P18208050049489074419.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P323399880441359430

`A001359(n+2)%A002822(n+1)`
-/

namespace A153196.P323399880441359430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 2)) (A002822 (n + 1))

end

end A153196.P323399880441359430

namespace A153196

/-- `A001359(n+2)%A002822(n+1)` -/
def P323399880441359430.Spec : Prop :=
  ∀ n, P323399880441359430.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P3857920893069032471

`∩[A059325(n+1), A153218(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A153196

/-- `∩[A059325(n+1), A153218(n+1)]` -/
def P3857920893069032471.Spec : Prop :=
  ∀ n, (P3857920893069032471.a n : ℤ) = A153196 (n + 1)

theorem P3857920893069032471.correct : P3857920893069032471.Spec := by
  intro n
  simp only [A153196, Nat.add_sub_cancel]

end A153196

/-! ## A153196.P16334374027999987137

`A126249(n+2)/A037074(n+2)-1`
-/

namespace A153196.P16334374027999987137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126249 (n + 2) : ℚ) / (A037074 (n + 2) : ℚ) - 1

end

end A153196.P16334374027999987137

namespace A153196

/-- `A126249(n+2)/A037074(n+2)-1` -/
def P16334374027999987137.Spec : Prop :=
  ∀ n, P16334374027999987137.a n = (A153196 (n + 1) : ℚ)

end A153196

/-! ## A153196.P1469183164655638326

`A001097(2*(n+1))%A002822(n+1)`
-/

namespace A153196.P1469183164655638326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001097 (2 * (n + 1))) (A002822 (n + 1))

end

end A153196.P1469183164655638326

namespace A153196

/-- `A001097(2*(n+1))%A002822(n+1)` -/
def P1469183164655638326.Spec : Prop :=
  ∀ n, P1469183164655638326.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P441232570296417467

`A001359(n+2)-(A167379(n+1)+A040040(n+2))`
-/

namespace A153196.P441232570296417467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - (A167379 (n + 1) + A040040 (n + 2))

end

end A153196.P441232570296417467

namespace A153196

/-- `A001359(n+2)-(A167379(n+1)+A040040(n+2))` -/
def P441232570296417467.Spec : Prop :=
  ∀ n, P441232570296417467.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P5337773612147411336

`A116579(A029707(n+2))`
-/

namespace A153196.P5337773612147411336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116579 (A029707 (n + 2)).toNat

end

end A153196.P5337773612147411336

namespace A153196

/-- `A116579(A029707(n+2))` -/
def P5337773612147411336.Spec : Prop :=
  ∀ n, P5337773612147411336.a n = A153196 (n + 1)

end A153196

/-! ## A153196.P9917763245005855893

`A024699(A155752(n+2))-1`
-/

namespace A153196.P9917763245005855893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (A155752 (n + 2)).toNat - 1

end

end A153196.P9917763245005855893

namespace A153196

/-- `A024699(A155752(n+2))-1` -/
def P9917763245005855893.Spec : Prop :=
  ∀ n, P9917763245005855893.a n = A153196 (n + 1)

end A153196

/-!
# A153197: Binomial transform of Bessel numbers A006789.

The programs for A153197, there is no canonical definition to state claims against.
-/

/-! ## A153197.P1001888888323961724

`record[A153206(n)]`
-/

namespace A153197.P1001888888323961724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153197.P1001888888323961724

/-! ## A153197.P17470424868764186359

`A153206(∑[n+1])`
-/

namespace A153197.P17470424868764186359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153206 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153197.P17470424868764186359

/-! ## A153197.P12509853198184538358

`A153206(A253145(n))+char[9]`
-/

namespace A153197.P12509853198184538358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153206 (A253145 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A153197.P12509853198184538358

/-! ## A153197.P12552654613694184854

`or(A153198(n)², A153206(A253145(n)))`
-/

namespace A153197.P12552654613694184854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A153198 n ^ 2) (A153206 (A253145 n).toNat)

end

end A153197.P12552654613694184854

/-! ## A153197.P7781224892906317579

`A153206(A253145(n))/A007318(∑[n])`
-/

namespace A153197.P7781224892906317579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153206 (A253145 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A153197.P7781224892906317579

/-!
# A153198: Triangle read by rows, T(n,k) = A006789(k) if (n=k) otherwise zero. = (A006789 * 0^(n-k)).

The programs for A153198, there is no canonical definition to state claims against.
-/

/-! ## A153198.P10111801018762129573

`A006789(A002262(n))*A023531(n)`
-/

namespace A153198.P10111801018762129573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 (A002262 n).toNat * A023531 n

end

end A153198.P10111801018762129573

/-! ## A153198.P10006032140715230842

`A006789(A003056(n))*A023531(n)`
-/

namespace A153198.P10006032140715230842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 (A003056 n).toNat * A023531 n

end

end A153198.P10006032140715230842

/-! ## A153198.P4567942129990192416

`Δ[A003056(n)]*A006789(A002262(n))`
-/

namespace A153198.P4567942129990192416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006789 (A002262 n).toNat

end

end A153198.P4567942129990192416

/-! ## A153198.P11856137275865264567

`A006789(A002262(n))*A010054(n+1)`
-/

namespace A153198.P11856137275865264567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 (A002262 n).toNat * A010054 (n + 1)

end

end A153198.P11856137275865264567

/-! ## A153198.P11726976697963914423

`Δ[A002024(n+1)]*A006789(A002262(n))`
-/

namespace A153198.P11726976697963914423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006789 (A002262 n).toNat

end

end A153198.P11726976697963914423

/-! ## A153198.P4787555962205242790

`A006789(A002262(n))*A214960(2*(n+1))`
-/

namespace A153198.P4787555962205242790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 (A002262 n).toNat * A214960 (2 * (n + 1))

end

end A153198.P4787555962205242790

/-! ## A153198.P5793634329306189327

`A000007(A025581(n))*A006789(A002262(n))`
-/

namespace A153198.P5793634329306189327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025581 n).toNat * A006789 (A002262 n).toNat

end

end A153198.P5793634329306189327

/-! ## A153198.P9698101611209662877

`A023531(n)*A153199(n*A023531(n))`
-/

namespace A153198.P9698101611209662877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A153199 ((n : ℤ) * A023531 n).toNat

end

end A153198.P9698101611209662877

/-! ## A153198.P615891326779900011

`A023531(n)*A153199(n)`
-/

namespace A153198.P615891326779900011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A153199 n

end

end A153198.P615891326779900011

/-! ## A153198.P14536877917871996774

`A023531(n)*A153206(n*A023531(n))`
-/

namespace A153198.P14536877917871996774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A153206 ((n : ℤ) * A023531 n).toNat

end

end A153198.P14536877917871996774

/-!
# A153199: Triangle read by rows, A007318 * A153198.

The programs for A153199, there is no canonical definition to state claims against.
-/

/-! ## A153199.P21313033414926348

`A006789(A002262(n))*A007318(n)`
-/

namespace A153199.P21313033414926348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 (A002262 n).toNat * A007318 n

end

end A153199.P21313033414926348

/-! ## A153199.P7215657430955875317

`abs(A006789(A002262(n))*A108086(n))`
-/

namespace A153199.P7215657430955875317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006789 (A002262 n).toNat * A108086 n|

end

end A153199.P7215657430955875317

/-! ## A153199.P9172135815134686017

`abs(A006789(A002262(n))*A130595(n))`
-/

namespace A153199.P9172135815134686017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006789 (A002262 n).toNat * A130595 n|

end

end A153199.P9172135815134686017

/-! ## A153199.P11546272225444760436

`sqrt(A008459(n))*A006789(A002262(n))`
-/

namespace A153199.P11546272225444760436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A006789 (A002262 n).toNat : ℝ)

end

end A153199.P11546272225444760436

/-! ## A153199.P7148024114169999872

`Δ[A102363(n)]*A006789(A002262(n))`
-/

namespace A153199.P7148024114169999872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006789 (A002262 n).toNat

end

end A153199.P7148024114169999872

