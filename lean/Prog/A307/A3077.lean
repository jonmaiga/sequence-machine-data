import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A307701: Denominator of the irreducible fractions of the form x/y, with x,y primes and x < y, sorted according to increasing k, with k = x + y. Fractions with same k are sorted in order of increasing denominator.

The programs for A307701, there is no canonical definition to state claims against.
-/

/-! ## A307701.P5152942159396431513

`p?[A154721(A004201(n+1))]`
-/

namespace A307701.P5152942159396431513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (A004201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307701.P5152942159396431513

/-! ## A307701.P14715806418614265888

`p?[A154720(A061885(n)+2)]`
-/

namespace A307701.P14715806418614265888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (A061885 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307701.P14715806418614265888

/-! ## A307701.P13817426679884892414

`p?[A154720(A004201(n+1)+1)]`
-/

namespace A307701.P13817426679884892414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (A004201 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307701.P13817426679884892414

/-! ## A307701.P3217751028254812415

`p?[A154720(A063657(n+1)+1)]`
-/

namespace A307701.P3217751028254812415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (A063657 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307701.P3217751028254812415

/-! ## A307701.P10946248774231542410

`p?[A154721(A063657(n+1)+1)]`
-/

namespace A307701.P10946248774231542410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (A063657 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307701.P10946248774231542410

/-! ## A307701.P2870336093143612480

`p?[A154721(A078358(2*n+1))]`
-/

namespace A307701.P2870336093143612480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (A078358 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307701.P2870336093143612480

/-! ## A307701.P16276520739726727182

`p?[A023969(n)*A154720(n+1)]`
-/

namespace A307701.P16276520739726727182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n * A154720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307701.P16276520739726727182

/-! ## A307701.P5241201321327541881

`p?[A023969(n)*A154721(n+1)]`
-/

namespace A307701.P5241201321327541881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n * A154721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307701.P5241201321327541881

/-! ## A307701.P1878936334679416529

`p?[A091453(n)*A154720(n+1)]`
-/

namespace A307701.P1878936334679416529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n * A154720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307701.P1878936334679416529

/-! ## A307701.P4527501031644293280

`p?[A091453(n)*A154721(n+1)]`
-/

namespace A307701.P4527501031644293280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n * A154721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307701.P4527501031644293280

/-!
# A307702: Clique covering number of the n-Sierpinski tetrahedron graph.

The programs for A307702, the canonical program `A307702.P11180949952363773510` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307702 has offset 1).

The definition of A307702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307702.P11180949952363773510

`5*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=41`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A307702

/-- `5*a(n-1)-4*a(n-2)` -/
def P11180949952363773510.Spec : Prop :=
  ∀ n, P11180949952363773510.a n = A307702 (n + 1)

theorem P11180949952363773510.correct : P11180949952363773510.Spec := by
  intro n
  simp only [A307702, Nat.add_sub_cancel]

end A307702

/-! ## A307702.P14378444685457739848

`ogf((1-x-5x^2+2x^3)/(1-5x+4x^2))`
-/

namespace A307702.P14378444685457739848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -5, 2] [1, -5, 4] n

end

end A307702.P14378444685457739848

namespace A307702

/-- `ogf((1-x-5x^2+2x^3)/(1-5x+4x^2))` -/
def P14378444685457739848.Spec : Prop :=
  ∀ n, P14378444685457739848.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P15227252890079230737

`4*a(n-1)-3` with `a(0)=1, a(1)=4, a(2)=11`
-/

namespace A307702.P15227252890079230737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 11] fun n a =>
  4 * a (n - 1) - 3

end

end A307702.P15227252890079230737

namespace A307702

/-- `4*a(n-1)-3` -/
def P15227252890079230737.Spec : Prop :=
  ∀ n, P15227252890079230737.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P16555905476532485772

`or(1-char[1], record[A166577(n)])`
-/

namespace A307702.P16555905476532485772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166577 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A307702.P16555905476532485772

namespace A307702

/-- `or(1-char[1], record[A166577(n)])` -/
def P16555905476532485772.Spec : Prop :=
  ∀ n, P16555905476532485772.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P8695815522654711133

`record[A279634(n)-A078485(n)]`
-/

namespace A307702.P8695815522654711133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 n - A078485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307702.P8695815522654711133

namespace A307702

/-- `record[A279634(n)-A078485(n)]` -/
def P8695815522654711133.Spec : Prop :=
  ∀ n, P8695815522654711133.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P13060343782689019310

`A131577(n)*A257113(n+1)+1`
-/

namespace A307702.P13060343782689019310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A257113 (n + 1) + 1

end

end A307702.P13060343782689019310

namespace A307702

/-- `A131577(n)*A257113(n+1)+1` -/
def P13060343782689019310.Spec : Prop :=
  ∀ n, P13060343782689019310.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P3737533683758810299

`A279634(2*n)-A078485(2*n)`
-/

namespace A307702.P3737533683758810299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 (2 * n) - A078485 (2 * n)

end

end A307702.P3737533683758810299

namespace A307702

/-- `A279634(2*n)-A078485(2*n)` -/
def P3737533683758810299.Spec : Prop :=
  ∀ n, P3737533683758810299.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P14742759357077187449

`A000079(n)²+1-A122391(2*n)`
-/

namespace A307702.P14742759357077187449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + (1 - A122391 (2 * n))

end

end A307702.P14742759357077187449

namespace A307702

/-- `A000079(n)²+1-A122391(2*n)` -/
def P14742759357077187449.Spec : Prop :=
  ∀ n, P14742759357077187449.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P17063198038648683980

`Δ[A011782(n)]*A257113(n+1)+1`
-/

namespace A307702.P17063198038648683980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A257113 (n + 1) + 1

end

end A307702.P17063198038648683980

namespace A307702

/-- `Δ[A011782(n)]*A257113(n+1)+1` -/
def P17063198038648683980.Spec : Prop :=
  ∀ n, P17063198038648683980.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P17834542771605883145

`A000079(2*n)+1-A122391(2*n)`
-/

namespace A307702.P17834542771605883145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) + (1 - A122391 (2 * n))

end

end A307702.P17834542771605883145

namespace A307702

/-- `A000079(2*n)+1-A122391(2*n)` -/
def P17834542771605883145.Spec : Prop :=
  ∀ n, P17834542771605883145.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P12251208439752422915

`A001045(2*n+1)+A328284(2*n)-A328284(2*n+1)`
-/

namespace A307702.P12251208439752422915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n + 1) + (A328284 (2 * n) - A328284 (2 * n + 1))

end

end A307702.P12251208439752422915

namespace A307702

/-- `A001045(2*n+1)+A328284(2*n)-A328284(2*n+1)` -/
def P12251208439752422915.Spec : Prop :=
  ∀ n, P12251208439752422915.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P13791895916002024062

`A005578(2*n+1)+A328284(2*n)-A328284(2*n+1)`
-/

namespace A307702.P13791895916002024062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (2 * n + 1) + (A328284 (2 * n) - A328284 (2 * n + 1))

end

end A307702.P13791895916002024062

namespace A307702

/-- `A005578(2*n+1)+A328284(2*n)-A328284(2*n+1)` -/
def P13791895916002024062.Spec : Prop :=
  ∀ n, P13791895916002024062.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P8350495911112514422

`A152046(2*n+1)+A328284(2*n)-A328284(2*n+1)`
-/

namespace A307702.P8350495911112514422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (2 * n + 1) + (A328284 (2 * n) - A328284 (2 * n + 1))

end

end A307702.P8350495911112514422

namespace A307702

/-- `A152046(2*n+1)+A328284(2*n)-A328284(2*n+1)` -/
def P8350495911112514422.Spec : Prop :=
  ∀ n, P8350495911112514422.a n = A307702 (n + 1)

end A307702

/-! ## A307702.P4530952753538613775

`A256959(n)-A211012(n)`
-/

namespace A307702.P4530952753538613775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256959 n - A211012 n

end

end A307702.P4530952753538613775

namespace A307702

/-- `A256959(n)-A211012(n)` -/
def P4530952753538613775.Spec : Prop :=
  ∀ n, P4530952753538613775.a n = A307702 (n + 1)

end A307702

/-!
# A307704: Expansion of (1/(1 - x)) * Sum_{k>=1} (-x)^k/(1 - (-x)^k).

The programs for A307704, the canonical program `A307704.P16369658975903990754` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307704 has offset 1).

The definition of A307704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307704.P16369658975903990754

`∑[∑{d}[n+1, (-(-1)^n)^#]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A307704

/-- `∑[∑{d}[n+1, (-(-1)^n)^#]]` -/
def P16369658975903990754.Spec : Prop :=
  ∀ n, P16369658975903990754.a n = A307704 (n + 1)

theorem P16369658975903990754.correct : P16369658975903990754.Spec := by
  intro n
  simp only [A307704, Nat.add_sub_cancel]

end A307704

/-! ## A307704.P3394407696301560581

`∑[-(A000005(n+1)/(-1)^n)]`
-/

namespace A307704.P3394407696301560581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A000005 (n + 1) : ℚ) / ((-1) ^ n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307704.P3394407696301560581

namespace A307704

/-- `∑[-(A000005(n+1)/(-1)^n)]` -/
def P3394407696301560581.Spec : Prop :=
  ∀ n, P3394407696301560581.a n = (A307704 (n + 1) : ℚ)

end A307704

/-! ## A307704.P17322023305381065339

`∑[A000005(n+1)*A062157(n)]-1`
-/

namespace A307704.P17322023305381065339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A307704.P17322023305381065339

namespace A307704

/-- `∑[A000005(n+1)*A062157(n)]-1` -/
def P17322023305381065339.Spec : Prop :=
  ∀ n, P17322023305381065339.a n = A307704 (n + 1)

end A307704

/-! ## A307704.P16976046346946876081

`∑[(n-A004442(n))*A000005(n+1)]`
-/

namespace A307704.P16976046346946876081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004442 n) * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307704.P16976046346946876081

namespace A307704

/-- `∑[(n-A004442(n))*A000005(n+1)]` -/
def P16976046346946876081.Spec : Prop :=
  ∀ n, P16976046346946876081.a n = A307704 (n + 1)

end A307704

/-! ## A307704.P12823592888911652176

`∑[A000005(n+1)*A008683(-or(n, -2))]`
-/

namespace A307704.P12823592888911652176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A008683 (-Int.lor (n : ℤ) (-2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307704.P12823592888911652176

namespace A307704

/-- `∑[A000005(n+1)*A008683(-or(n, -2))]` -/
def P12823592888911652176.Spec : Prop :=
  ∀ n, P12823592888911652176.a n = A307704 (n + 1)

end A307704

/-! ## A307704.P10892650270829526950

`∑[(-1)^A020639(n+1)*A000005(n+1)]`
-/

namespace A307704.P10892650270829526950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A020639 (n + 1) : ℤ) * (A000005 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307704.P10892650270829526950

namespace A307704

/-- `∑[(-1)^A020639(n+1)*A000005(n+1)]` -/
def P10892650270829526950.Spec : Prop :=
  ∀ n, P10892650270829526950.a n = (A307704 (n + 1) : ℚ)

end A307704

/-! ## A307704.P10439708797473338679

`∑[A000005(n+1)*A008683((-1)^n+2)]`
-/

namespace A307704.P10439708797473338679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A008683 ((-1) ^ n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307704.P10439708797473338679

namespace A307704

/-- `∑[A000005(n+1)*A008683((-1)^n+2)]` -/
def P10439708797473338679.Spec : Prop :=
  ∀ n, P10439708797473338679.a n = A307704 (n + 1)

end A307704

/-! ## A307704.P9654931411948889291

`A326440(n+1)-1`
-/

namespace A307704.P9654931411948889291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326440 (n + 1) - 1

end

end A307704.P9654931411948889291

namespace A307704

/-- `A326440(n+1)-1` -/
def P9654931411948889291.Spec : Prop :=
  ∀ n, P9654931411948889291.a n = A307704 (n + 1)

end A307704

/-! ## A307704.P6996971165805069261

`A023443(A326440(n+1))`
-/

namespace A307704.P6996971165805069261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A326440 (n + 1)).toNat

end

end A307704.P6996971165805069261

namespace A307704

/-- `A023443(A326440(n+1))` -/
def P6996971165805069261.Spec : Prop :=
  ∀ n, P6996971165805069261.a n = A307704 (n + 1)

end A307704

/-!
# A307706: Number of unitary divisors of n that are smaller than sqrt((sqrt(2) - 1)*n).

The programs for A307706, there is no canonical definition to state claims against.
-/

/-! ## A307706.P11632014285379555339

`A024359((n+1)*n%2+n+1)`
-/

namespace A307706.P11632014285379555339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 ((n + 1) * (n % 2) + n + 1)

end

end A307706.P11632014285379555339

/-! ## A307706.P9467697183375254642

`A024359((n+1)*and(1, n)+n+1)`
-/

namespace A307706.P9467697183375254642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 ((n + 1) * Nat.land 1 n + n + 1)

end

end A307706.P9467697183375254642

/-! ## A307706.P9422493772911691780

`A024359((n+1)%or(1, n+1)+n+1)`
-/

namespace A307706.P9422493772911691780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 ((n + 1) % Nat.lor 1 (n + 1) + n + 1)

end

end A307706.P9422493772911691780

/-! ## A307706.P11399669624054828838

`A024359(A022998(n+1))`
-/

namespace A307706.P11399669624054828838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A022998 (n + 1)).toNat

end

end A307706.P11399669624054828838

/-! ## A307706.P17363727474481502818

`A024359(A059029(n)+1)`
-/

namespace A307706.P17363727474481502818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A059029 n + 1).toNat

end

end A307706.P17363727474481502818

/-! ## A307706.P14834517752907970830

`A024359(A257088(n+1))`
-/

namespace A307706.P14834517752907970830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A257088 (n + 1)).toNat

end

end A307706.P14834517752907970830

/-! ## A307706.P12325779931294920981

`A024359(2*(n+1))+A024359(A093178(n+1))`
-/

namespace A307706.P12325779931294920981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (2 * (n + 1)) + A024359 (A093178 (n + 1)).toNat

end

end A307706.P12325779931294920981

/-!
# A307707: Lexicographically earliest sequence of nonnegative integers in which, for all k >= 0, there are exactly k pairs of consecutive terms whose sum is k.

The programs for A307707, the canonical program `A307707.P13403686277569962142` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307707 has offset 1).

The definition of A307707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307707.P17499449376552799954

`round(sqrt(n-a(n-1)²))` with `a(0)=0`
-/

namespace A307707.P17499449376552799954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℤ) - a (n - 1) ^ 2 : ℝ))

end

end A307707.P17499449376552799954

namespace A307707

/-- `round(sqrt(n-a(n-1)²))` -/
def P17499449376552799954.Spec : Prop :=
  ∀ n, P17499449376552799954.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P6394941601133922826

`round(sqrt(2*n)-a(n-1))` with `a(0)=0`
-/

namespace A307707.P6394941601133922826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ) - (a (n - 1) : ℝ))

end

end A307707.P6394941601133922826

namespace A307707

/-- `round(sqrt(2*n)-a(n-1))` -/
def P6394941601133922826.Spec : Prop :=
  ∀ n, P6394941601133922826.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P1763989501200023634

`comp[∑[n+1]]-(a(n-1)+n)` with `a(0)=0`
-/

namespace A307707.P1763989501200023634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (a (n - 1) + (n : ℤ))

end

end A307707.P1763989501200023634

namespace A307707

/-- `comp[∑[n+1]]-(a(n-1)+n)` -/
def P1763989501200023634.Spec : Prop :=
  ∀ n, P1763989501200023634.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P1758500136287155639

`∑[char[∑[char[1]+n]]]-a(n-1)` with `a(0)=0`
-/

namespace A307707.P1758500136287155639
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A307707.P1758500136287155639

namespace A307707

/-- `∑[char[∑[char[1]+n]]]-a(n-1)` -/
def P1758500136287155639.Spec : Prop :=
  ∀ n, P1758500136287155639.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P13343656114614290320

`ceil(∑[A326822(n)]-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A307707.P13343656114614290320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A307707.P13343656114614290320

namespace A307707

/-- `ceil(∑[A326822(n)]-a(n-1))` -/
def P13343656114614290320.Spec : Prop :=
  ∀ n, P13343656114614290320.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P401903856823414929

`A008624(A131925(n))`
-/

namespace A307707.P401903856823414929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A131925 n).toNat

end

end A307707.P401903856823414929

namespace A307707

/-- `A008624(A131925(n))` -/
def P401903856823414929.Spec : Prop :=
  ∀ n, P401903856823414929.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P13403686277569962142

`A004526(A140358(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A307707

/-- `A004526(A140358(n+1))` -/
def P13403686277569962142.Spec : Prop :=
  ∀ n, P13403686277569962142.a n = A307707 (n + 1)

theorem P13403686277569962142.correct : P13403686277569962142.Spec := by
  intro n
  simp only [A307707, Nat.add_sub_cancel]

end A307707

/-! ## A307707.P12586939580097002563

`A204166(n+1)-A106465(n)`
-/

namespace A307707.P12586939580097002563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (n + 1) - A106465 n

end

end A307707.P12586939580097002563

namespace A307707

/-- `A204166(n+1)-A106465(n)` -/
def P12586939580097002563.Spec : Prop :=
  ∀ n, P12586939580097002563.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P16467705729987398672

`A274701(n+1)-A376583(n+1)`
-/

namespace A307707.P16467705729987398672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (n + 1) - A376583 (n + 1)

end

end A307707.P16467705729987398672

namespace A307707

/-- `A274701(n+1)-A376583(n+1)` -/
def P16467705729987398672.Spec : Prop :=
  ∀ n, P16467705729987398672.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P7504388787686351251

`∑[A033999(n)*A123578(n)]*A033999(n)`
-/

namespace A307707.P7504388787686351251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A307707.P7504388787686351251

namespace A307707

/-- `∑[A033999(n)*A123578(n)]*A033999(n)` -/
def P7504388787686351251.Spec : Prop :=
  ∀ n, P7504388787686351251.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P10624286829507028332

`∑[A062157(n)*A123578(n)]*A062157(n)`
-/

namespace A307707.P10624286829507028332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A062157 n

end

end A307707.P10624286829507028332

namespace A307707

/-- `∑[A062157(n)*A123578(n)]*A062157(n)` -/
def P10624286829507028332.Spec : Prop :=
  ∀ n, P10624286829507028332.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P175244392462037802

`A004526(A002260(n+1))+A004526(A004736(n+1))`
-/

namespace A307707.P175244392462037802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002260 (n + 1)).toNat + A004526 (A004736 (n + 1)).toNat

end

end A307707.P175244392462037802

namespace A307707

/-- `A004526(A002260(n+1))+A004526(A004736(n+1))` -/
def P175244392462037802.Spec : Prop :=
  ∀ n, P175244392462037802.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P7998414387120537393

`round(round(log2(A276618(n)))/2)`
-/

namespace A307707.P7998414387120537393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.logb 2 (A276618 n : ℝ)) : ℚ) / 2)

end

end A307707.P7998414387120537393

namespace A307707

/-- `round(round(log2(A276618(n)))/2)` -/
def P7998414387120537393.Spec : Prop :=
  ∀ n, P7998414387120537393.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P3340481854603995487

`A084359(A004201(n+1))`
-/

namespace A307707.P3340481854603995487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A004201 (n + 1)).toNat

end

end A307707.P3340481854603995487

namespace A307707

/-- `A084359(A004201(n+1))` -/
def P3340481854603995487.Spec : Prop :=
  ∀ n, P3340481854603995487.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P2216770348947166255

`A084359(A063656(n+1))`
-/

namespace A307707.P2216770348947166255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A063656 (n + 1)).toNat

end

end A307707.P2216770348947166255

namespace A307707

/-- `A084359(A063656(n+1))` -/
def P2216770348947166255.Spec : Prop :=
  ∀ n, P2216770348947166255.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P5370466655719757772

`abs(∑[A000194(2*n)*A056594(2*n)])`
-/

namespace A307707.P5370466655719757772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * n) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A307707.P5370466655719757772

namespace A307707

/-- `abs(∑[A000194(2*n)*A056594(2*n)])` -/
def P5370466655719757772.Spec : Prop :=
  ∀ n, P5370466655719757772.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P13527980566215150366

`∑[A056594(A056594(2*n)+A000194(2*n))]`
-/

namespace A307707.P13527980566215150366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A056594 (2 * n) + A000194 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307707.P13527980566215150366

namespace A307707

/-- `∑[A056594(A056594(2*n)+A000194(2*n))]` -/
def P13527980566215150366.Spec : Prop :=
  ∀ n, P13527980566215150366.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P4785085034045543118

`A004526(A057555(2*n+1))+A004526(A057555(2*(n+1)))`
-/

namespace A307707.P4785085034045543118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057555 (2 * n + 1)).toNat + A004526 (A057555 (2 * (n + 1))).toNat

end

end A307707.P4785085034045543118

namespace A307707

/-- `A004526(A057555(2*n+1))+A004526(A057555(2*(n+1)))` -/
def P4785085034045543118.Spec : Prop :=
  ∀ n, P4785085034045543118.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P13483594038805641468

`A004524(A014132(n+1)+n)-n`
-/

namespace A307707.P13483594038805641468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A014132 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A307707.P13483594038805641468

namespace A307707

/-- `A004524(A014132(n+1)+n)-n` -/
def P13483594038805641468.Spec : Prop :=
  ∀ n, P13483594038805641468.a n = A307707 (n + 1)

end A307707

/-! ## A307707.P8892540365080189722

`A007895(eq[A200650(n+1)², A200650(n+1)])`
-/

namespace A307707.P8892540365080189722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200650 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A307707.P8892540365080189722

namespace A307707

/-- `A007895(eq[A200650(n+1)², A200650(n+1)])` -/
def P8892540365080189722.Spec : Prop :=
  ∀ n, P8892540365080189722.a n = A307707 (n + 1)

end A307707

/-!
# A307708: G.f. A(x) satisfies: A(x) = x*exp(Sum_{n>=1} Sum_{k>=1} n*a(n)*x^(n*k)/k).

The programs for A307708, there is no canonical definition to state claims against.
-/

/-! ## A307708.P1053713204213788637

`A309460(A098479(n))%(8^n)`
-/

namespace A307708.P1053713204213788637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309460 (A098479 n).toNat) (8 ^ n : ℤ)

end

end A307708.P1053713204213788637

/-! ## A307708.P3061155975361558550

`or(n%2, A134119(A059685(n+1)))`
-/

namespace A307708.P3061155975361558550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A134119 (A059685 (n + 1)).toNat)

end

end A307708.P3061155975361558550

/-! ## A307708.P1591659182228645337

`A309460(A098479(n))-A000007(n)`
-/

namespace A307708.P1591659182228645337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309460 (A098479 n).toNat - A000007 n

end

end A307708.P1591659182228645337

/-!
# A307709: G.f. A(x) satisfies: A(x) = x*exp(Sum_{n>=1} Sum_{k>=1} (-1)^(k+1)*n*a(n)*x^(n*k)/k).

The programs for A307709, there is no canonical definition to state claims against.
-/

/-! ## A307709.P5374523908001326538

`A103221(∏[C(n, a(n-1))]-n)` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A307709.P5374523908001326538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∏ j ∈ Finset.range (n + 1), f1 j - n)

end

end A307709.P5374523908001326538

/-! ## A307709.P6691820342252741198

`A103221(∑[A172387(n)])`
-/

namespace A307709.P6691820342252741198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307709.P6691820342252741198

/-! ## A307709.P2595714123352213826

`A240176(A240216(n)²+1)`
-/

namespace A307709.P2595714123352213826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240176 (A240216 n ^ 2 + 1).toNat

end

end A307709.P2595714123352213826

/-!
# A307710: a(n) is the determinant of the Vandermonde matrix of the digits of n in factorial base.

The programs for A307710, there is no canonical definition to state claims against.
-/

/-! ## A307710.P11837642112774968515

`A307651(A007623(n))`
-/

namespace A307710.P11837642112774968515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 (A007623 n).toNat

end

end A307710.P11837642112774968515

/-!
# A307711: a(n) is the least number k such that exactly fraction 1/n of the members of the reduced residue system mod k are prime, or 0 if there is no such k.

The programs for A307711, there is no canonical definition to state claims against.
-/

/-! ## A307711.P1635700804863268557

`or(A038625(n+2), A092686(A079209(2*(n+2))))`
-/

namespace A307711.P1635700804863268557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038625 (n + 2)) (A092686 (A079209 (2 * (n + 2))).toNat)

end

end A307711.P1635700804863268557

/-!
# A307712: Numbers k such that the fraction of primes in the reduced residue system mod k is the reciprocal of an integer.

The programs for A307712, there is no canonical definition to state claims against.
-/

/-! ## A307712.P11620150632389549282

`A005041(A018320(n+1))+2`
-/

namespace A307712.P11620150632389549282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A018320 (n + 1)).toNat + 2

end

end A307712.P11620150632389549282

/-! ## A307712.P17356963502448243467

`eq[char[A274147(2*n)], A025903(n)]`
-/

namespace A307712.P17356963502448243467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274147 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A307712.P17356963502448243467

/-! ## A307712.P5175004091527413251

`A091786(A250120(n+1)+A132393(n))`
-/

namespace A307712.P5175004091527413251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091786 (A250120 (n + 1) + A132393 n).toNat

end

end A307712.P5175004091527413251

/-! ## A307712.P238409389654409956

`lt[A317655(n+1), A155723(A130780(n))]`
-/

namespace A307712.P238409389654409956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (A130780 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307712.P238409389654409956

/-! ## A307712.P15821148520878542971

`A072966(n+4)-A240866(A267111(n+1))`
-/

namespace A307712.P15821148520878542971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072966 (n + 4) - A240866 (A267111 (n + 1)).toNat

end

end A307712.P15821148520878542971

/-!
# A307713: a(n) = A000010(A307712(n))/A048865(A307712(n)).

The programs for A307713, there is no canonical definition to state claims against.
-/

/-! ## A307713.P7021021152689970613

`A000010(A307712(n+1))/A048865(A307712(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A307713.P7021021152689970613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A307712 (n + 1)).toNat : ℚ) / (A048865 (A307712 (n + 1)).toNat : ℚ)

end

end A307713.P7021021152689970613

/-!
# A307714: Product of digits is noncomposite.

The programs for A307714, there is no canonical definition to state claims against.
-/

/-! ## A307714.P2869393839040015922

`eq[n, n*A078898(A007954(n))]`
-/

namespace A307714.P2869393839040015922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A078898 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307714.P2869393839040015922

/-! ## A307714.P6948535545369666258

`eq[A000007(n), A008647(A007954(n))]`
-/

namespace A307714.P6948535545369666258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307714.P6948535545369666258

/-! ## A307714.P2769123844333696400

`eq[A057427(n), A078898(A007954(n))]`
-/

namespace A307714.P2769123844333696400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307714.P2769123844333696400

/-! ## A307714.P10450467734929707786

`eq[A054055(n), A336962(A007954(n))]`
-/

namespace A307714.P10450467734929707786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336962 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307714.P10450467734929707786

/-! ## A307714.P2265979393459653919

`eq[A267084(n+1), A309892(A007954(n))]`
-/

namespace A307714.P2265979393459653919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307714.P2265979393459653919

/-!
# A307716: Denominator of the barycenter of first n primes defined as a(n) = denominator(Sum_{i=1..n} (i*prime(i)) / Sum_{i=1..n} prime(i)).

The programs for A307716, the canonical program `A307716.P13840358709468437809` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307716 has offset 1).

The definition of A307716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307716.P7611004026507718065

`A007504(n+1)/A309036(n+1)`
-/

namespace A307716.P7611004026507718065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A309036 (n + 1) : ℚ)

end

end A307716.P7611004026507718065

namespace A307716

/-- `A007504(n+1)/A309036(n+1)` -/
def P7611004026507718065.Spec : Prop :=
  ∀ n, P7611004026507718065.a n = (A307716 (n + 1) : ℚ)

end A307716

/-! ## A307716.P13840358709468437809

`∑[A000040(n+1)]/A309036(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A307716

/-- `∑[A000040(n+1)]/A309036(n+1)` -/
def P13840358709468437809.Spec : Prop :=
  ∀ n, P13840358709468437809.a n = (A307716 (n + 1) : ℚ)

end A307716

/-! ## A307716.P10206041028350576581

`∑[sqrt(A001248(n+1))]/A309036(n+1)`
-/

namespace A307716.P10206041028350576581
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / (A309036 (n + 1) : ℝ)

end

end A307716.P10206041028350576581

namespace A307716

/-- `∑[sqrt(A001248(n+1))]/A309036(n+1)` -/
def P10206041028350576581.Spec : Prop :=
  ∀ n, P10206041028350576581.a n = (A307716 (n + 1) : ℝ)

end A307716

/-! ## A307716.P4457873343154415874

`A007504(n+1)/A014285(n+1)*A306834(n+1)`
-/

namespace A307716.P4457873343154415874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A014285 (n + 1) : ℚ) * (A306834 (n + 1) : ℚ)

end

end A307716.P4457873343154415874

namespace A307716

/-- `A007504(n+1)/A014285(n+1)*A306834(n+1)` -/
def P4457873343154415874.Spec : Prop :=
  ∀ n, P4457873343154415874.a n = (A307716 (n + 1) : ℚ)

end A307716

/-! ## A307716.P13348539889766580245

`A007504(n+1)/gcd(A007504(n+1), A014148(n+1))`
-/

namespace A307716.P13348539889766580245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (Int.gcd (A007504 (n + 1)) (A014148 (n + 1)) : ℚ)

end

end A307716.P13348539889766580245

namespace A307716

/-- `A007504(n+1)/gcd(A007504(n+1), A014148(n+1))` -/
def P13348539889766580245.Spec : Prop :=
  ∀ n, P13348539889766580245.a n = (A307716 (n + 1) : ℚ)

end A307716

/-! ## A307716.P16797936959729658651

`∑[A008578(n+2)]/A309036(n+1)`
-/

namespace A307716.P16797936959729658651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A309036 (n + 1) : ℚ)

end

end A307716.P16797936959729658651

namespace A307716

/-- `∑[A008578(n+2)]/A309036(n+1)` -/
def P16797936959729658651.Spec : Prop :=
  ∀ n, P16797936959729658651.a n = (A307716 (n + 1) : ℚ)

end A307716

/-! ## A307716.P4556172420923551597

`∑[record[A008472(n+2)]]/A309036(n+1)`
-/

namespace A307716.P4556172420923551597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A309036 (n + 1) : ℚ)

end

end A307716.P4556172420923551597

namespace A307716

/-- `∑[record[A008472(n+2)]]/A309036(n+1)` -/
def P4556172420923551597.Spec : Prop :=
  ∀ n, P4556172420923551597.a n = (A307716 (n + 1) : ℚ)

end A307716

/-!
# A307717: Number of palindromic squares, k^2, of length n such that k is also palindromic.

The programs for A307717, the canonical program `A307717.P16759504569882169610` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307717 has offset 1).

The definition of A307717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307717.P15537464040789456047

`char[2*n]*A218035(A008619(n))`
-/

namespace A307717.P15537464040789456047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A218035 (A008619 n).toNat

end

end A307717.P15537464040789456047

namespace A307717

/-- `char[2*n]*A218035(A008619(n))` -/
def P15537464040789456047.Spec : Prop :=
  ∀ n, P15537464040789456047.a n = A307717 (n + 1)

end A307717

/-! ## A307717.P17862531157899306494

`char[2*n]*A218035(A052938(n))`
-/

namespace A307717.P17862531157899306494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A218035 (A052938 n).toNat

end

end A307717.P17862531157899306494

namespace A307717

/-- `char[2*n]*A218035(A052938(n))` -/
def P17862531157899306494.Spec : Prop :=
  ∀ n, P17862531157899306494.a n = A307717 (n + 1)

end A307717

/-! ## A307717.P13240846127773256492

`char[2*n]*A218035(A080513(n))`
-/

namespace A307717.P13240846127773256492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A218035 (A080513 n).toNat

end

end A307717.P13240846127773256492

namespace A307717

/-- `char[2*n]*A218035(A080513(n))` -/
def P13240846127773256492.Spec : Prop :=
  ∀ n, P13240846127773256492.a n = A307717 (n + 1)

end A307717

/-! ## A307717.P8394654591466761791

`char[2*n]*A218035(∑[A059841(n)])`
-/

namespace A307717.P8394654591466761791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A218035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A307717.P8394654591466761791

namespace A307717

/-- `char[2*n]*A218035(∑[A059841(n)])` -/
def P8394654591466761791.Spec : Prop :=
  ∀ n, P8394654591466761791.a n = A307717 (n + 1)

end A307717

/-! ## A307717.P2042553273255569006

`char[2*n]*A218035(A003602(n+1))`
-/

namespace A307717.P2042553273255569006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A218035 (A003602 (n + 1)).toNat

end

end A307717.P2042553273255569006

namespace A307717

/-- `char[2*n]*A218035(A003602(n+1))` -/
def P2042553273255569006.Spec : Prop :=
  ∀ n, P2042553273255569006.a n = A307717 (n + 1)

end A307717

/-! ## A307717.P16759504569882169610

`lcm(A056594(n), A218035(A008619(n)))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307717

/-- `lcm(A056594(n), A218035(A008619(n)))` -/
def P16759504569882169610.Spec : Prop :=
  ∀ n, (P16759504569882169610.a n : ℤ) = A307717 (n + 1)

theorem P16759504569882169610.correct : P16759504569882169610.Spec := by
  intro n
  simp only [A307717, Nat.add_sub_cancel]

end A307717

/-! ## A307717.P5178666486254664272

`∑[A033999(n)*A218035(A008619(n))]`
-/

namespace A307717.P5178666486254664272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A218035 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307717.P5178666486254664272

namespace A307717

/-- `∑[A033999(n)*A218035(A008619(n))]` -/
def P5178666486254664272.Spec : Prop :=
  ∀ n, P5178666486254664272.a n = A307717 (n + 1)

end A307717

/-! ## A307717.P454491094714132435

`char[2*n]*A218035(A059169(2*(n+3)))`
-/

namespace A307717.P454491094714132435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A218035 (A059169 (2 * (n + 3))).toNat

end

end A307717.P454491094714132435

namespace A307717

/-- `char[2*n]*A218035(A059169(2*(n+3)))` -/
def P454491094714132435.Spec : Prop :=
  ∀ n, P454491094714132435.a n = A307717 (n + 1)

end A307717

/-!
# A307718: Primes p such that a + b is prime and a^2 + b^2 = p^2 and p = c + d such that c^2 + d^2 = e^2.

The programs for A307718, there is no canonical definition to state claims against.
-/

/-! ## A307718.P1410682326525927302

`filter[A283391(n+1), A014577(#)]`
-/

namespace A307718.P1410682326525927302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A307718.P1410682326525927302

/-! ## A307718.P15700526527727255686

`filter[A283391(n+1), A130198(#)]`
-/

namespace A307718.P15700526527727255686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130198 (f1 j).toNat = 1) n)

end

end A307718.P15700526527727255686

/-! ## A307718.P12021312264643847951

`filter[A283391(n+1), A131078(#)]`
-/

namespace A307718.P12021312264643847951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A307718.P12021312264643847951

/-! ## A307718.P11336416134587772774

`filter[A283391(n+1), A165211(#)]`
-/

namespace A307718.P11336416134587772774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165211 (f1 j).toNat = 1) n)

end

end A307718.P11336416134587772774

/-! ## A307718.P3509249353350357069

`filter[A283391(n+1), A260397(#)]`
-/

namespace A307718.P3509249353350357069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A307718.P3509249353350357069

/-!
# A307719: Number of partitions of n into 3 mutually coprime parts.

The programs for A307719, there is no canonical definition to state claims against.
-/

/-! ## A307719.P10645788362232877577

`ceil(A337461(n)/6)`
-/

namespace A307719.P10645788362232877577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337461 n : ℚ) / 6⌉

end

end A307719.P10645788362232877577

/-! ## A307719.P12975375980686671451

`A078898(A337461(n))`
-/

namespace A307719.P12975375980686671451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A337461 n).toNat

end

end A307719.P12975375980686671451

/-! ## A307719.P9280304128531417196

`A008615(A337461(n)+1)`
-/

namespace A307719.P9280304128531417196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A337461 n + 1).toNat

end

end A307719.P9280304128531417196

/-! ## A307719.P15210623405370680566

`A103221(A337461(n)+1)`
-/

namespace A307719.P15210623405370680566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A337461 n + 1).toNat

end

end A307719.P15210623405370680566

/-! ## A307719.P17440082095305058546

`A187035(A337461(n)+1)`
-/

namespace A307719.P17440082095305058546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187035 (A337461 n + 1).toNat

end

end A307719.P17440082095305058546

/-! ## A307719.P12193196715104411337

`A112689(A337461(n)+3)`
-/

namespace A307719.P12193196715104411337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A337461 n + 3).toNat

end

end A307719.P12193196715104411337

/-! ## A307719.P4596222488023699279

`A103221(xor(1, A337461(n)))`
-/

namespace A307719.P4596222488023699279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.xor 1 (A337461 n)).toNat

end

end A307719.P4596222488023699279

/-!
# A307720: Lexicographically earliest sequence of positive integers in which, for all positive k, there are exactly k pairs of consecutive terms whose product is k.

The programs for A307720, there is no canonical definition to state claims against.
-/

/-! ## A307720.P15698430037286028775

`A307730(n)/a(n-1)` with `a(0)=1`
-/

namespace A307720.P15698430037286028775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A307730 n : ℚ) / a (n - 1)

end

end A307720.P15698430037286028775

/-! ## A307720.P2324583460495645646

`A028310(Δ[A348458(A028310(n))])`
-/

namespace A307720.P2324583460495645646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348458 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A307720.P2324583460495645646

/-! ## A307720.P5407273956759444031

`A000007(n)+Δ[A348458(A004275(n+1)-n)]`
-/

namespace A307720.P5407273956759444031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348458 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A307720.P5407273956759444031

/-! ## A307720.P2607923342987294162

`A307730(n+1)/(A348458(n+2)-A348458(n+1))`
-/

namespace A307720.P2607923342987294162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307730 (n + 1) : ℚ) / (A348458 (n + 2) - A348458 (n + 1) : ℚ)

end

end A307720.P2607923342987294162

/-! ## A307720.P18260992831702080818

`A348458(A233583(n+2))-A348458(A028310(n))`
-/

namespace A307720.P18260992831702080818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348458 (A233583 (n + 2)).toNat - A348458 (A028310 n).toNat

end

end A307720.P18260992831702080818

/-!
# A307721: a(n) = x(y(n)) - y(x(n)) where x = A302128 and y = A005350.

The programs for A307721, the canonical program `A307721.P17612075571818422005` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307721 has offset 1).

The definition of A307721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307721.P17612075571818422005

`A302128(A005350(n+1))-A005350(A302128(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307721

/-- `A302128(A005350(n+1))-A005350(A302128(n+1))` -/
def P17612075571818422005.Spec : Prop :=
  ∀ n, P17612075571818422005.a n = A307721 (n + 1)

theorem P17612075571818422005.correct : P17612075571818422005.Spec := by
  intro n
  simp only [A307721, Nat.add_sub_cancel]

end A307721

/-! ## A307721.P16722482660014283113

`A350941(n)%A321469(A008284(n+1))`
-/

namespace A307721.P16722482660014283113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350941 n) (A321469 (A008284 (n + 1)).toNat)

end

end A307721.P16722482660014283113

namespace A307721

/-- `A350941(n)%A321469(A008284(n+1))` -/
def P16722482660014283113.Spec : Prop :=
  ∀ n, P16722482660014283113.a n = A307721 (n + 1)

end A307721

/-! ## A307721.P17891146657278008380

`A350941(A023022(3*(n+1)))%A356157(A008284(n+1))`
-/

namespace A307721.P17891146657278008380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350941 (A023022 (3 * (n + 1))).toNat) (A356157 (A008284 (n + 1)).toNat)

end

end A307721.P17891146657278008380

namespace A307721

/-- `A350941(A023022(3*(n+1)))%A356157(A008284(n+1))` -/
def P17891146657278008380.Spec : Prop :=
  ∀ n, P17891146657278008380.a n = A307721 (n + 1)

end A307721

/-! ## A307721.P1548874670582258041

`A345415(gcd(A052509(n)*A209438(n), (n+1)²))`
-/

namespace A307721.P1548874670582258041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345415 (Int.gcd (A052509 n * A209438 n) ((n + 1) ^ 2 : ℤ))

end

end A307721.P1548874670582258041

namespace A307721

/-- `A345415(gcd(A052509(n)*A209438(n), (n+1)²))` -/
def P1548874670582258041.Spec : Prop :=
  ∀ n, P1548874670582258041.a n = A307721 (n + 1)

end A307721

/-! ## A307721.P10558067853415390320

`A014042(A293808(n)+14)`
-/

namespace A307721.P10558067853415390320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014042 (A293808 n + 14).toNat

end

end A307721.P10558067853415390320

namespace A307721

/-- `A014042(A293808(n)+14)` -/
def P10558067853415390320.Spec : Prop :=
  ∀ n, P10558067853415390320.a n = A307721 (n + 1)

end A307721

/-! ## A307721.P7442788733033584277

`A240330(∑[p?[A307731(n)]])`
-/

namespace A307721.P7442788733033584277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307721.P7442788733033584277

namespace A307721

/-- `A240330(∑[p?[A307731(n)]])` -/
def P7442788733033584277.Spec : Prop :=
  ∀ n, P7442788733033584277.a n = A307721 (n + 1)

end A307721

/-! ## A307721.P3717186566125499331

`A014177((2*n+1)*A268818(n+1))`
-/

namespace A307721.P3717186566125499331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014177 ((2 * n + 1 : ℤ) * A268818 (n + 1)).toNat

end

end A307721.P3717186566125499331

namespace A307721

/-- `A014177((2*n+1)*A268818(n+1))` -/
def P3717186566125499331.Spec : Prop :=
  ∀ n, P3717186566125499331.a n = A307721 (n + 1)

end A307721

/-! ## A307721.P17478655284399720086

`A015582(floor(sqrt(A245334(n))))`
-/

namespace A307721.P17478655284399720086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015582 (Int.sqrt (A245334 n)).toNat

end

end A307721.P17478655284399720086

namespace A307721

/-- `A015582(floor(sqrt(A245334(n))))` -/
def P17478655284399720086.Spec : Prop :=
  ∀ n, P17478655284399720086.a n = A307721 (n + 1)

end A307721

/-! ## A307721.P8013216999276060178

`filter[A243832(2*n+1), A255849(#)]`
-/

namespace A307721.P8013216999276060178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243832 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255849 (f1 j).toNat = 1) n)

end

end A307721.P8013216999276060178

namespace A307721

/-- `filter[A243832(2*n+1), A255849(#)]` -/
def P8013216999276060178.Spec : Prop :=
  ∀ n, P8013216999276060178.a n = A307721 (n + 1)

end A307721

/-! ## A307721.P3153458038003580734

`filter[A243832(2*n+1), A256432(#)]`
-/

namespace A307721.P3153458038003580734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243832 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A256432 (f1 j).toNat = 1) n)

end

end A307721.P3153458038003580734

namespace A307721

/-- `filter[A243832(2*n+1), A256432(#)]` -/
def P3153458038003580734.Spec : Prop :=
  ∀ n, P3153458038003580734.a n = A307721 (n + 1)

end A307721

/-!
# A307722: G.f. A(x) satisfies: A(x) = x*exp(2*Sum_{n>=1} Sum_{k>=1} n*a(n)*x^(n*(2*k-1))/(2*k - 1)).

The programs for A307722, there is no canonical definition to state claims against.
-/

/-! ## A307722.P14193579790956421236

`A064413(A167016(n))-C(2, n+2)`
-/

namespace A307722.P14193579790956421236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A167016 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A307722.P14193579790956421236

/-! ## A307722.P9809709466603627631

`A002467(n)+A002265(A056786(n))`
-/

namespace A307722.P9809709466603627631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 n + A002265 (A056786 n).toNat

end

end A307722.P9809709466603627631

/-!
# A307723: Naturally ordered prime factorization of n as a quasi-logarithmic word over the binary alphabet {1,0}.

The programs for A307723, there is no canonical definition to state claims against.
-/

/-! ## A307723.P6245345266871651879

`A106456(A232101(n+1)+A000041(n))`
-/

namespace A307723.P6245345266871651879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106456 (A232101 (n + 1) + A000041 n).toNat

end

end A307723.P6245345266871651879

/-!
# A307724: G.f. A(x) satisfies: A(x) = x*exp(Sum_{n>=1} Sum_{k>=1} n^k*a(n)^k*x^(n*k)/k).

The programs for A307724, there is no canonical definition to state claims against.
-/

/-! ## A307724.P15877663831322220011

`A008624(A300483(n)-(-1)^n)`
-/

namespace A307724.P15877663831322220011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A300483 n - (-1) ^ n).toNat

end

end A307724.P15877663831322220011

/-! ## A307724.P17721749335375901980

`A308204(round(sqrt(n²+1)))%A304982(n)`
-/

namespace A307724.P17721749335375901980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308204 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A304982 n)

end

end A307724.P17721749335375901980

/-! ## A307724.P17159385853258643830

`A008615(A186362(n)+A000522(n))`
-/

namespace A307724.P17159385853258643830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A186362 n + A000522 n).toNat

end

end A307724.P17159385853258643830

/-!
# A307725: G.f. A(x) satisfies: A(x) = x*exp(Sum_{n>=1} Sum_{k>=1} (-1)^(k+1)*n^k*a(n)^k*x^(n*k)/k).

The programs for A307725, there is no canonical definition to state claims against.
-/

/-! ## A307725.P1508034093326553729

`A341307(A129949(n)+floor((n+1)/2))`
-/

namespace A307725.P1508034093326553729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (A129949 n + ⌊(n + 1 : ℚ) / 2⌋).toNat

end

end A307725.P1508034093326553729

/-! ## A307725.P15012581286120307251

`lcm((-1)^n, A341307(A129949(n)+A110654(n)))`
-/

namespace A307725.P15012581286120307251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A341307 (A129949 n + A110654 n).toNat)

end

end A307725.P15012581286120307251

/-! ## A307725.P379540277204479330

`A341307(A129949(n)+A110654(n))+A171765(n)`
-/

namespace A307725.P379540277204479330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (A129949 n + A110654 n).toNat + A171765 n

end

end A307725.P379540277204479330

/-! ## A307725.P12627190668821064775

`A341307(A110654(n)-(A171765(n)-A129949(n)))`
-/

namespace A307725.P12627190668821064775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (A110654 n - (A171765 n - A129949 n)).toNat

end

end A307725.P12627190668821064775

/-!
# A307726: Number of partitions of n into 2 prime powers (not including 1).

The programs for A307726, there is no canonical definition to state claims against.
-/

/-! ## A307726.P13933003126063325023

`round(A280242(n)/2)`
-/

namespace A307726.P13933003126063325023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A280242 n : ℚ) / 2)

end

end A307726.P13933003126063325023

/-! ## A307726.P9643492875902749154

`A110654(A280242(n))`
-/

namespace A307726.P9643492875902749154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A280242 n).toNat

end

end A307726.P9643492875902749154

/-! ## A307726.P8042757075690050541

`A004526(A280242(n)+1)`
-/

namespace A307726.P8042757075690050541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A280242 n + 1).toNat

end

end A307726.P8042757075690050541

/-! ## A307726.P12502791283767650274

`A123108(A280242(n)+1)`
-/

namespace A307726.P12502791283767650274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A280242 n + 1).toNat

end

end A307726.P12502791283767650274

/-! ## A307726.P16111089455526624141

`A140106(A280242(n)+3)`
-/

namespace A307726.P16111089455526624141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A280242 n + 3).toNat

end

end A307726.P16111089455526624141

/-! ## A307726.P2259660725036631062

`A002265(2*(A280242(n)+1))`
-/

namespace A307726.P2259660725036631062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A280242 n + 1)).toNat

end

end A307726.P2259660725036631062

/-! ## A307726.P18315059763384154301

`A028242(or(1, A280242(n)+1))`
-/

namespace A307726.P18315059763384154301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A280242 n + 1)).toNat

end

end A307726.P18315059763384154301

/-! ## A307726.P2034141646880301442

`A002265(A280242(n)+A280242(n)+2)`
-/

namespace A307726.P2034141646880301442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A280242 n + (A280242 n + 2)).toNat

end

end A307726.P2034141646880301442

/-! ## A307726.P557560865474457916

`A280242(n)-A002265(2*A280242(n))`
-/

namespace A307726.P557560865474457916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280242 n - A002265 (2 * A280242 n).toNat

end

end A307726.P557560865474457916

/-! ## A307726.P3699189612002192517

`A280242(n)-A028242(or(1, A280242(n)))`
-/

namespace A307726.P3699189612002192517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280242 n - A028242 (Int.lor 1 (A280242 n)).toNat

end

end A307726.P3699189612002192517

/-! ## A307726.P15232958769238481362

`A123108(n)-A123108(n-A280242(n))`
-/

namespace A307726.P15232958769238481362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n - A123108 ((n : ℤ) - A280242 n).toNat

end

end A307726.P15232958769238481362

/-!
# A307728: Sum of the perimeters of all acute integer triangles with perimeter n.

The programs for A307728, there is no canonical definition to state claims against.
-/

/-! ## A307728.P15072859754372909278

`(n+1)*A070093(n+1)`
-/

namespace A307728.P15072859754372909278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070093 (n + 1)

end

end A307728.P15072859754372909278

/-! ## A307728.P1306258287524959194

`(n+1)*∑{d}[n+1, A070094(#)]`
-/

namespace A307728.P1306258287524959194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A070094 d)

end

end A307728.P1306258287524959194

/-! ## A307728.P6138045267851448820

`(n+1)*(A070098(n+1)+A024154(n+1))`
-/

namespace A307728.P6138045267851448820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A070098 (n + 1) + A024154 (n + 1))

end

end A307728.P6138045267851448820

/-! ## A307728.P6455726061555909009

`(n+1)*(A024154(n+1)+∑[A188295(n+1)-A000035(n)])`
-/

namespace A307728.P6455726061555909009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A024154 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307728.P6455726061555909009

/-! ## A307728.P8350267310689398357

`A307729(n+1)+A307737(n+1)+A307736(n+1)`
-/

namespace A307728.P8350267310689398357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307729 (n + 1) + (A307737 (n + 1) + A307736 (n + 1))

end

end A307728.P8350267310689398357

/-! ## A307728.P1547428574388194590

`A070093(n+1)*A131209(n)`
-/

namespace A307728.P1547428574388194590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (n + 1) * A131209 n

end

end A307728.P1547428574388194590

/-! ## A307728.P3443661113837604467

`∑{d}[n+1, A070094(#)]*A131209(n)`
-/

namespace A307728.P3443661113837604467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A070094 d) * A131209 n

end

end A307728.P3443661113837604467

/-!
# A307729: Sum of the smallest sides of all acute integer triangles with perimeter n.

The programs for A307729, there is no canonical definition to state claims against.
-/

/-! ## A307729.P12518706336376503954

`A136610(A004526(n)*A043096(n+1))`
-/

namespace A307729.P12518706336376503954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136610 (A004526 n * A043096 (n + 1)).toNat

end

end A307729.P12518706336376503954

/-! ## A307729.P16143637718168030633

`A342263(xor(1, A259383(n+1)))`
-/

namespace A307729.P16143637718168030633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342263 (Int.xor 1 (A259383 (n + 1))).toNat

end

end A307729.P16143637718168030633

/-! ## A307729.P12687694696582167887

`A318663(n+1)+A000120(A214205(n))`
-/

namespace A307729.P12687694696582167887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318663 (n + 1) + A000120 (A214205 n).toNat

end

end A307729.P12687694696582167887

/-! ## A307729.P5094789634726973241

`A346633(A366731(n+1)+A117673(n+1))`
-/

namespace A307729.P5094789634726973241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 (A366731 (n + 1) + A117673 (n + 1)).toNat

end

end A307729.P5094789634726973241

/-! ## A307729.P16449204626695465940

`A212210(xor(A130667(2*n+1), A302123(n+1)))`
-/

namespace A307729.P16449204626695465940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212210 (Int.xor (A130667 (2 * n + 1)) (A302123 (n + 1))).toNat

end

end A307729.P16449204626695465940

/-!
# A307730: a(n) = A307720(n) * A307720(n+1).

The programs for A307730, there is no canonical definition to state claims against.
-/

/-! ## A307730.P18238427095428813764

`A307720(n+1)*A307720(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A307730.P18238427095428813764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1) * A307720 (n + 2)

end

end A307730.P18238427095428813764

/-! ## A307730.P5357512494548042074

`A348459(n+1)*A348460(n+1)`
-/

namespace A307730.P5357512494548042074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348459 (n + 1) * A348460 (n + 1)

end

end A307730.P5357512494548042074

/-! ## A307730.P5903957051089831276

`A348241(A110654(n))*A348242(A008619(n))`
-/

namespace A307730.P5903957051089831276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348241 (A110654 n).toNat * A348242 (A008619 n).toNat

end

end A307730.P5903957051089831276

/-! ## A307730.P5723849877154401360

`A000007(n)+Δ[A348450(A004275(n+1)-n)]`
-/

namespace A307730.P5723849877154401360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348450 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A307730.P5723849877154401360

/-! ## A307730.P16942041293652803235

`Δ[A348450(A004275(n+1)-n)%A027379(n)]`
-/

namespace A307730.P16942041293652803235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348450 (A004275 (n + 1) - (n : ℤ)).toNat) (A027379 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307730.P16942041293652803235

/-!
# A307732: Number of length-n binary words containing no antisquares except 01 and 10.

The programs for A307732, there is no canonical definition to state claims against.
-/

/-! ## A307732.P18336673699379205987

`A235963(or(A008574(n), A080628(n)))`
-/

namespace A307732.P18336673699379205987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (Int.lor (A008574 n) (A080628 n)).toNat

end

end A307732.P18336673699379205987

/-! ## A307732.P211628552193718701

`A182113(A100684(n))`
-/

namespace A307732.P211628552193718701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182113 (A100684 n).toNat

end

end A307732.P211628552193718701

/-! ## A307732.P3776182101331718299

`A182113(A103258(n))`
-/

namespace A307732.P3776182101331718299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182113 (A103258 n).toNat

end

end A307732.P3776182101331718299

/-! ## A307732.P5229656125677614666

`A197702(A135483(n+1))`
-/

namespace A307732.P5229656125677614666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197702 (A135483 (n + 1)).toNat

end

end A307732.P5229656125677614666

/-! ## A307732.P16719450934283596592

`A103867(A392511(n+1))`
-/

namespace A307732.P16719450934283596592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103867 (A392511 (n + 1)).toNat

end

end A307732.P16719450934283596592

/-!
# A307733: a(0) = a(1) = 1; a(n) = a(n-1) + a(n-2) + Sum_{k=0..n-1} a(k) * a(n-k-1).

The programs for A307733, there is no canonical definition to state claims against.
-/

/-! ## A307733.P4236576122209675129

`Δ[A245734(n)]`
-/

namespace A307733.P4236576122209675129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307733.P4236576122209675129

/-! ## A307733.P12443871007332869482

`A245734(n+1)-A245734(n)`
-/

namespace A307733.P12443871007332869482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245734 (n + 1) - A245734 n

end

end A307733.P12443871007332869482

/-! ## A307733.P21752975487728173

`A187183(4*A149694(n))`
-/

namespace A307733.P21752975487728173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (4 * A149694 n).toNat

end

end A307733.P21752975487728173

/-!
# A307735: Integers k such that if m = k + A003132(k) then k = m - A003132(m).

The programs for A307735, there is no canonical definition to state claims against.
-/

/-! ## A307735.P6451144785422108524

`eq[A003132(A003132(n)+n), A003132(n)]`
-/

namespace A307735.P6451144785422108524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A003132 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307735.P6451144785422108524

/-!
# A307736: Sum of the largest sides of all acute integer triangles with perimeter n.

The programs for A307736, there is no canonical definition to state claims against.
-/

/-! ## A307736.P749106164000441234

`A307728(n+1)-(A307737(n+1)+A307729(n+1))`
-/

namespace A307736.P749106164000441234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307728 (n + 1) - (A307737 (n + 1) + A307729 (n + 1))

end

end A307736.P749106164000441234

/-!
# A307737: Take all the integer-sided acute triangles with perimeter n and sides a, b, and c such that a <= b <= c. a(n) is the sum of all the b's.

The programs for A307737, there is no canonical definition to state claims against.
-/

/-! ## A307737.P8633388148142622046

`A307728(n+1)-(A307736(n+1)+A307729(n+1))`
-/

namespace A307737.P8633388148142622046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307728 (n + 1) - (A307736 (n + 1) + A307729 (n + 1))

end

end A307737.P8633388148142622046

/-!
# A307738: Number of partitions of n^3 into at most n cubes.

The programs for A307738, there is no canonical definition to state claims against.
-/

/-! ## A307738.P13400285072936002971

`A141731(A006723(n+1))`
-/

namespace A307738.P13400285072936002971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141731 (A006723 (n + 1)).toNat

end

end A307738.P13400285072936002971

/-! ## A307738.P14340682188725386313

`A309255(A321412(n)+A025452(n))`
-/

namespace A307738.P14340682188725386313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309255 (A321412 n + A025452 n).toNat

end

end A307738.P14340682188725386313

/-! ## A307738.P11614733910496123057

`A309255(A321412(n)+A293551(n))`
-/

namespace A307738.P11614733910496123057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309255 (A321412 n + A293551 n).toNat

end

end A307738.P11614733910496123057

/-! ## A307738.P392338021788547679

`A006843(A213275(n)+A182540(n+1))`
-/

namespace A307738.P392338021788547679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (A213275 n + A182540 (n + 1)).toNat

end

end A307738.P392338021788547679

/-!
# A307740: Numbers k such that k divides lcm(tau(k), sigma(k)).

The programs for A307740, there is no canonical definition to state claims against.
-/

/-! ## A307740.P17821145187838304883

`record[gcd(n+1, A009278(n+1))]`
-/

namespace A307740.P17821145187838304883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A009278 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307740.P17821145187838304883

/-! ## A307740.P2685849109748043135

`record[gcd(A009278(n+1), A131738(n))]`
-/

namespace A307740.P2685849109748043135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009278 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307740.P2685849109748043135

/-! ## A307740.P9368119197849517956

`record[lcm(A009191(n+1), A009194(n+1))]`
-/

namespace A307740.P9368119197849517956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009191 (n + 1)) (A009194 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307740.P9368119197849517956

/-! ## A307740.P6684959414549231536

`∩[A071707(n+1), A005555(n)]`
-/

namespace A307740.P6684959414549231536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307740.P6684959414549231536

/-! ## A307740.P1388334112406476320

`∩[A018676(n+1), A071707(n+1)]`
-/

namespace A307740.P1388334112406476320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307740.P1388334112406476320

/-!
# A307741: Sum of divisors of the multiply-perfect numbers.

The programs for A307741, there is no canonical definition to state claims against.
-/

/-! ## A307741.P8134534985438414823

`A007691(n+1)*A054030(n+1)`
-/

namespace A307741.P8134534985438414823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1) * A054030 (n + 1)

end

end A307741.P8134534985438414823

/-! ## A307741.P15567186149953209300

`lcm(A098204(n+1), A320024(n+1))*A054030(n+1)`
-/

namespace A307741.P15567186149953209300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A098204 (n + 1)) (A320024 (n + 1)) : ℤ) * A054030 (n + 1)

end

end A307741.P15567186149953209300

/-! ## A307741.P1116219948996561389

`∪[A166069(n+1), A325025(n+1)]*A054030(n+1)`
-/

namespace A307741.P1116219948996561389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A054030 (n + 1)

end

end A307741.P1116219948996561389

/-! ## A307741.P10906917047168442446

`∪[A325023(n+1), A354073(n+1)]*A054030(n+1)`
-/

namespace A307741.P10906917047168442446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A054030 (n + 1)

end

end A307741.P10906917047168442446

/-! ## A307741.P10413271019174950619

`∪[A325025(n+1), A354073(n+1)]*A054030(n+1)`
-/

namespace A307741.P10413271019174950619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A054030 (n + 1)

end

end A307741.P10413271019174950619

/-!
# A307742: Quasi-logarithm A064097(n) of von Mangoldt's exponential function A014963(n).

The programs for A307742, the canonical program `A307742.P17097547645030697459` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307742 has offset 1).

The definition of A307742 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307742.P17097547645030697459

`A064097(A014963(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A307742

/-- `A064097(A014963(n+1))` -/
def P17097547645030697459.Spec : Prop :=
  ∀ n, P17097547645030697459.a n = A307742 (n + 1)

theorem P17097547645030697459.correct : P17097547645030697459.Spec := by
  intro n
  simp only [A307742, Nat.add_sub_cancel]

end A307742

/-! ## A307742.P6067623639200782725

`A334202(A100994(n+1))`
-/

namespace A307742.P6067623639200782725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334202 (A100994 (n + 1)).toNat

end

end A307742.P6067623639200782725

namespace A307742

/-- `A334202(A100994(n+1))` -/
def P6067623639200782725.Spec : Prop :=
  ∀ n, P6067623639200782725.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P4722565508961877804

`A334203(2*A014963(n+1))`
-/

namespace A307742.P4722565508961877804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * A014963 (n + 1)).toNat

end

end A307742.P4722565508961877804

namespace A307742

/-- `A334203(2*A014963(n+1))` -/
def P4722565508961877804.Spec : Prop :=
  ∀ n, P4722565508961877804.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P14503130185717900362

`A010055(n+1)*A334202(n+1)`
-/

namespace A307742.P14503130185717900362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A334202 (n + 1)

end

end A307742.P14503130185717900362

namespace A307742

/-- `A010055(n+1)*A334202(n+1)` -/
def P14503130185717900362.Spec : Prop :=
  ∀ n, P14503130185717900362.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P14657212151260936131

`A069513(n+1)*A334202(n+1)`
-/

namespace A307742.P14657212151260936131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A334202 (n + 1)

end

end A307742.P14657212151260936131

namespace A307742

/-- `A069513(n+1)*A334202(n+1)` -/
def P14657212151260936131.Spec : Prop :=
  ∀ n, P14657212151260936131.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P693178074124483783

`A064097((n+1)/A048671(n+1))`
-/

namespace A307742.P693178074124483783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A048671 (n + 1) : ℚ))).toNat

end

end A307742.P693178074124483783

namespace A307742

/-- `A064097((n+1)/A048671(n+1))` -/
def P693178074124483783.Spec : Prop :=
  ∀ n, P693178074124483783.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P2970863445729449631

`A334202(n+1)%A014963(n+1)`
-/

namespace A307742.P2970863445729449631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334202 (n + 1)) (A014963 (n + 1))

end

end A307742.P2970863445729449631

namespace A307742

/-- `A334202(n+1)%A014963(n+1)` -/
def P2970863445729449631.Spec : Prop :=
  ∀ n, P2970863445729449631.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P6973189741856781605

`∑{d}[n+1, A008683(#)*A064097((n+1)/#)]`
-/

namespace A307742.P6973189741856781605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A064097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307742.P6973189741856781605

namespace A307742

/-- `∑{d}[n+1, A008683(#)*A064097((n+1)/#)]` -/
def P6973189741856781605.Spec : Prop :=
  ∀ n, P6973189741856781605.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P8660599178627757137

`A064097(n+1)-A064097(A048671(n+1))`
-/

namespace A307742.P8660599178627757137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A064097 (A048671 (n + 1)).toNat

end

end A307742.P8660599178627757137

namespace A307742

/-- `A064097(n+1)-A064097(A048671(n+1))` -/
def P8660599178627757137.Spec : Prop :=
  ∀ n, P8660599178627757137.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P9870579187508005246

`A307743(n+1)-A307743(A000007(n)+n)`
-/

namespace A307742.P9870579187508005246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307743 (n + 1) - A307743 (A000007 n + (n : ℤ)).toNat

end

end A307742.P9870579187508005246

namespace A307742

/-- `A307743(n+1)-A307743(A000007(n)+n)` -/
def P9870579187508005246.Spec : Prop :=
  ∀ n, P9870579187508005246.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P8563332871272926721

`A334202(A133790(n+1))`
-/

namespace A307742.P8563332871272926721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334202 (A133790 (n + 1)).toNat

end

end A307742.P8563332871272926721

namespace A307742

/-- `A334202(A133790(n+1))` -/
def P8563332871272926721.Spec : Prop :=
  ∀ n, P8563332871272926721.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P6212181763677753259

`A334203(A014963(n+1)²)`
-/

namespace A307742.P6212181763677753259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A014963 (n + 1) ^ 2).toNat

end

end A307742.P6212181763677753259

namespace A307742

/-- `A334203(A014963(n+1)²)` -/
def P6212181763677753259.Spec : Prop :=
  ∀ n, P6212181763677753259.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P6269992951624716729

`A064097(A307641(∑[n+1]))`
-/

namespace A307742.P6269992951624716729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A307641 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A307742.P6269992951624716729

namespace A307742

/-- `A064097(A307641(∑[n+1]))` -/
def P6269992951624716729.Spec : Prop :=
  ∀ n, P6269992951624716729.a n = A307742 (n + 1)

end A307742

/-! ## A307742.P13188444041284764395

`A323077(A014963(n+1)²)`
-/

namespace A307742.P13188444041284764395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A014963 (n + 1) ^ 2).toNat

end

end A307742.P13188444041284764395

namespace A307742

/-- `A323077(A014963(n+1)²)` -/
def P13188444041284764395.Spec : Prop :=
  ∀ n, P13188444041284764395.a n = A307742 (n + 1)

end A307742

/-!
# A307743: a(n) = Sum_{k=1..n} A307742(k).

The programs for A307743, the canonical program `A307743.P12638932795451399698` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307743 has offset 1).

The definition of A307743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307743.P12638932795451399698

`∑[A307742(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A307743

/-- `∑[A307742(n+1)]` -/
def P12638932795451399698.Spec : Prop :=
  ∀ n, P12638932795451399698.a n = A307743 (n + 1)

theorem P12638932795451399698.correct : P12638932795451399698.Spec := by
  intro n
  simp only [A307743, Nat.add_sub_cancel]

end A307743

/-! ## A307743.P10584615426303295203

`∑[A064097(A014963(n+1))]`
-/

namespace A307743.P10584615426303295203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P10584615426303295203

namespace A307743

/-- `∑[A064097(A014963(n+1))]` -/
def P10584615426303295203.Spec : Prop :=
  ∀ n, P10584615426303295203.a n = A307743 (n + 1)

end A307743

/-! ## A307743.P1219404516694273520

`∑[A334202(A100994(n+1))]`
-/

namespace A307743.P1219404516694273520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334202 (A100994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P1219404516694273520

namespace A307743

/-- `∑[A334202(A100994(n+1))]` -/
def P1219404516694273520.Spec : Prop :=
  ∀ n, P1219404516694273520.a n = A307743 (n + 1)

end A307743

/-! ## A307743.P18286848759291380749

`∑[A010055(n+1)*A334202(n+1)]`
-/

namespace A307743.P18286848759291380749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A334202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P18286848759291380749

namespace A307743

/-- `∑[A010055(n+1)*A334202(n+1)]` -/
def P18286848759291380749.Spec : Prop :=
  ∀ n, P18286848759291380749.a n = A307743 (n + 1)

end A307743

/-! ## A307743.P3135606587428572263

`∑[A334202(n+1)%A014963(n+1)]`
-/

namespace A307743.P3135606587428572263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334202 (n + 1)) (A014963 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P3135606587428572263

namespace A307743

/-- `∑[A334202(n+1)%A014963(n+1)]` -/
def P3135606587428572263.Spec : Prop :=
  ∀ n, P3135606587428572263.a n = A307743 (n + 1)

end A307743

/-! ## A307743.P17799944163432063397

`∑[∑{d}[n+1, A008683(#)*A064097((n+1)/#)]]`
-/

namespace A307743.P17799944163432063397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A064097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P17799944163432063397

namespace A307743

/-- `∑[∑{d}[n+1, A008683(#)*A064097((n+1)/#)]]` -/
def P17799944163432063397.Spec : Prop :=
  ∀ n, P17799944163432063397.a n = A307743 (n + 1)

end A307743

/-! ## A307743.P1810354890541972151

`∑[A334202(A133790(n+1))]`
-/

namespace A307743.P1810354890541972151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334202 (A133790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P1810354890541972151

namespace A307743

/-- `∑[A334202(A133790(n+1))]` -/
def P1810354890541972151.Spec : Prop :=
  ∀ n, P1810354890541972151.a n = A307743 (n + 1)

end A307743

/-! ## A307743.P16614787568743348549

`∑[A064097(A307641(∑[n+1]))]`
-/

namespace A307743.P16614787568743348549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A307641 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P16614787568743348549

namespace A307743

/-- `∑[A064097(A307641(∑[n+1]))]` -/
def P16614787568743348549.Spec : Prop :=
  ∀ n, P16614787568743348549.a n = A307743 (n + 1)

end A307743

/-!
# A307744: A fractal function, related to ruler functions and the Cantor set. a(1) = 0; for m >= 0, a(3m) = 1; for m >= 1, a(3m-1) = a(m-1) + sign(a(m-1)), a(3m+1) = a(m+1) + sign(a(m+1)).

The programs for A307744, there is no canonical definition to state claims against.
-/

/-! ## A307744.P1588599547646989370

`A029931(A309054(n))`
-/

namespace A307744.P1588599547646989370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A309054 n).toNat

end

end A307744.P1588599547646989370

/-! ## A307744.P16974806115011026361

`∑{d}[A309054(n), A000265(#)]`
-/

namespace A307744.P16974806115011026361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000265 d

end

end A307744.P16974806115011026361

/-! ## A307744.P4966033975835995354

`∑{d}[A309054(n), A010060(#)]`
-/

namespace A307744.P4966033975835995354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010060 d

end

end A307744.P4966033975835995354

/-! ## A307744.P14693563061752482313

`∑{d}[A309054(n), A020985(#)]`
-/

namespace A307744.P14693563061752482313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020985 d

end

end A307744.P14693563061752482313

/-! ## A307744.P8009224754377023053

`∑{d}[A309054(n), A051064(#)]`
-/

namespace A307744.P8009224754377023053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A051064 d

end

end A307744.P8009224754377023053

/-! ## A307744.P614477439963367694

`∑{d}[A309054(n), A345994(#)]`
-/

namespace A307744.P614477439963367694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A345994 d

end

end A307744.P614477439963367694

/-! ## A307744.P2017907288424944474

`∑{d}[A309054(n), A156595(A014963(#))]`
-/

namespace A307744.P2017907288424944474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A156595 (A014963 d).toNat

end

end A307744.P2017907288424944474

/-! ## A307744.P13759398575299456473

`∑{d}[A309054(n), A156595(#²)]`
-/

namespace A307744.P13759398575299456473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A156595 (d ^ 2)

end

end A307744.P13759398575299456473

/-!
# A307746: Triangle read by rows, obtained by omitting all the 1's from the triangle in A307641 (except for the first row).

The programs for A307746, there is no canonical definition to state claims against.
-/

/-! ## A307746.P9312418671230199008

`A027746(n+1)+Δ[A101872(A086892(n+1))]`
-/

namespace A307746.P9312418671230199008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A086892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1) + (f1 (n + 1) - f1 n)

end

end A307746.P9312418671230199008

/-! ## A307746.P114537410203139902

`xor(A027746(n+1), A057215(A165878(n)))`
-/

namespace A307746.P114537410203139902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A027746 (n + 1)) (A057215 (A165878 n).toNat)

end

end A307746.P114537410203139902

/-! ## A307746.P8750085175647161495

`A027746(∑[A185044(n)!])`
-/

namespace A307746.P8750085175647161495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307746.P8750085175647161495

/-! ## A307746.P4305883106974727330

`A027746(lt[A000225(n), A098321(n)])`
-/

namespace A307746.P4305883106974727330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307746.P4305883106974727330

/-! ## A307746.P17878634651325221834

`A027746(lt[A096441(n+1), A250120(n)])`
-/

namespace A307746.P17878634651325221834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307746.P17878634651325221834

/-!
# A307747: Terms in A307720 in order of appearance.

The programs for A307747, there is no canonical definition to state claims against.
-/

/-! ## A307747.P13164881595391134480

`xor(n+1, A055641(A293406(n)))`
-/

namespace A307747.P13164881595391134480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A055641 (A293406 n).toNat)

end

end A307747.P13164881595391134480

/-! ## A307747.P17050891001982093317

`xor(n+1, A174275(A112068(n+1)))`
-/

namespace A307747.P17050891001982093317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A174275 (A112068 (n + 1)).toNat)

end

end A307747.P17050891001982093317

/-! ## A307747.P12256971714987947498

`Δ[A000007(A060171(n+1))]+1+n`
-/

namespace A307747.P12256971714987947498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A060171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A307747.P12256971714987947498

/-! ## A307747.P9189432811019898165

`Δ[A014219(A336568(3*(n+1)))]+n+1`
-/

namespace A307747.P9189432811019898165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014219 (A336568 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A307747.P9189432811019898165

/-! ## A307747.P87162593010295268

`Δ[val(A056827(A056817(n+4)), 35)]+n+1`
-/

namespace A307747.P87162593010295268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056827 (A056817 (n + 4)).toNat).toNat 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A307747.P87162593010295268

/-!
# A307750: Records in A307720.

The programs for A307750, there is no canonical definition to state claims against.
-/

/-! ## A307750.P6487982663973907312

`record[A307747(n+1)]`
-/

namespace A307750.P6487982663973907312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307750.P6487982663973907312

/-! ## A307750.P3740432580585553895

`record[A307747(-xor(n, -1))]%or(5, n)²`
-/

namespace A307750.P3740432580585553895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (Nat.lor 5 n ^ 2 : ℤ)

end

end A307750.P3740432580585553895

/-! ## A307750.P6677410971563864706

`A057077(n)²*record[A307747(-xor(n, -1))]`
-/

namespace A307750.P6677410971563864706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307750.P6677410971563864706

/-! ## A307750.P2554183824119995955

`A020985(n)²*record[A307747(Δ[n²]-n)]`
-/

namespace A307750.P2554183824119995955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307750.P2554183824119995955

/-! ## A307750.P6862920385639209607

`A033999(n)²*record[A307747(Δ[n²]-n)]`
-/

namespace A307750.P6862920385639209607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307750.P6862920385639209607

/-! ## A307750.P5779161639576740178

`A158388(n)²*record[A307747(Δ[n²]-n)]`
-/

namespace A307750.P5779161639576740178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307750.P5779161639576740178

/-! ## A307750.P2238953349973489122

`record[A307747(-xor(n, -1))]-n*A000007(n)`
-/

namespace A307750.P2238953349973489122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ) * A000007 n

end

end A307750.P2238953349973489122

/-! ## A307750.P1219010645402798740

`A000203(((-1)^n)²)*record[A307747(-xor(n, -1))]`
-/

namespace A307750.P1219010645402798740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307750.P1219010645402798740

/-! ## A307750.P17523406910975165063

`A028310(record[A307747(Δ[n²]-n)])`
-/

namespace A307750.P17523406910975165063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307750.P17523406910975165063

/-! ## A307750.P11297469556042852567

`record[A307747(-xor(n, -1))]%A020701(n)`
-/

namespace A307750.P11297469556042852567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307747 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A020701 n)

end

end A307750.P11297469556042852567

/-!
# A307754: Exponential convolution of number of partitions (A000041) and number of partitions into distinct parts (A000009).

The programs for A307754, there is no canonical definition to state claims against.
-/

/-! ## A307754.P2862999323246545234

`A052963(n)-A000035(A058831(n))`
-/

namespace A307754.P2862999323246545234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052963 n - A000035 (A058831 n).toNat

end

end A307754.P2862999323246545234

/-! ## A307754.P11083491637326072791

`A007051(n)-A082498(A120052(n))`
-/

namespace A307754.P11083491637326072791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A082498 (A120052 n).toNat

end

end A307754.P11083491637326072791

/-! ## A307754.P10946207306924699548

`A052963(n)-A020987(A255117(n))`
-/

namespace A307754.P10946207306924699548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052963 n - A020987 (A255117 n).toNat

end

end A307754.P10946207306924699548

/-!
# A307755: Exponential convolution of partition numbers (A000041) with themselves.

The programs for A307755, there is no canonical definition to state claims against.
-/

/-! ## A307755.P9125051740474204060

`A144026(2*n)-A326544(A259383(n+1))`
-/

namespace A307755.P9125051740474204060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144026 (2 * n) - A326544 (A259383 (n + 1)).toNat

end

end A307755.P9125051740474204060

/-! ## A307755.P3890960673291491569

`A000930(3*n)-A000120(A184953(n))`
-/

namespace A307755.P3890960673291491569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (3 * n) - A000120 (A184953 n).toNat

end

end A307755.P3890960673291491569

/-!
# A307756: Exponential convolution of number of partitions into distinct parts (A000009) with themselves.

The programs for A307756, there is no canonical definition to state claims against.
-/

/-! ## A307756.P6745492577704669489

`2*A277061(a(n-1)+n-2)` with `a(0)=1, a(1)=2`
-/

namespace A307756.P6745492577704669489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * A277061 (a (n - 1) + ((n : ℤ) - 2)).toNat

end

end A307756.P6745492577704669489

/-! ## A307756.P17316002409987470534

`A051889(A358826(n))`
-/

namespace A307756.P17316002409987470534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A358826 n).toNat

end

end A307756.P17316002409987470534

/-! ## A307756.P7469652680135847783

`A089851(A000295(n))+A007097(n)`
-/

namespace A307756.P7469652680135847783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (A000295 n).toNat + A007097 n

end

end A307756.P7469652680135847783

/-!
# A307757: Expansion of Product_{k>=1} 1/(1 + x^k/(1 + x^(2*k))).

The programs for A307757, there is no canonical definition to state claims against.
-/

/-! ## A307757.P4993276155219385797

`A143068(n)/A131713(n)`
-/

namespace A307757.P4993276155219385797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143068 n : ℚ) / (A131713 n : ℚ)

end

end A307757.P4993276155219385797

/-! ## A307757.P9222610798018974250

`A262938(n)/A057079(n)`
-/

namespace A307757.P9222610798018974250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262938 n : ℚ) / (A057079 n : ℚ)

end

end A307757.P9222610798018974250

/-! ## A307757.P1575524271798784

`A262938(n)/A132954(n)`
-/

namespace A307757.P1575524271798784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262938 n : ℚ) / (A132954 n : ℚ)

end

end A307757.P1575524271798784

/-! ## A307757.P234964836019869191

`abs(A262938(n))/A131713(n)`
-/

namespace A307757.P234964836019869191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A262938 n| : ℚ) / (A131713 n : ℚ)

end

end A307757.P234964836019869191

/-! ## A307757.P9802316443699175583

`A143068(n)/Δ[A004482(n)]`
-/

namespace A307757.P9802316443699175583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143068 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A307757.P9802316443699175583

/-! ## A307757.P2925196801397095799

`A143068(n)/Δ[A117966(n)]`
-/

namespace A307757.P2925196801397095799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143068 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A307757.P2925196801397095799

/-! ## A307757.P13966923620122216629

`A143068(n)/A061347(n+2)`
-/

namespace A307757.P13966923620122216629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143068 n : ℚ) / (A061347 (n + 2) : ℚ)

end

end A307757.P13966923620122216629

/-! ## A307757.P7919602038156836461

`A143068(n)/A100051(2*n+1)`
-/

namespace A307757.P7919602038156836461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143068 n : ℚ) / (A100051 (2 * n + 1) : ℚ)

end

end A307757.P7919602038156836461

/-!
# A307758: Average of twin prime pairs that is a product of two averages of twin prime pairs.

The programs for A307758, there is no canonical definition to state claims against.
-/

/-! ## A307758.P12907396926059369746

`∩[A286195(n+1), A370395(n+1)]`
-/

namespace A307758.P12907396926059369746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P12907396926059369746

/-! ## A307758.P9998562866720640058

`∩[2*A040040(n+1), A286195(n+1)]`
-/

namespace A307758.P9998562866720640058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P9998562866720640058

/-! ## A307758.P13033614882381732634

`∩[A014574(n+1), A286195(n+1)]`
-/

namespace A307758.P13033614882381732634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P13033614882381732634

/-! ## A307758.P1988528417779482257

`∩[A217259(n+1), A286195(n+1)]`
-/

namespace A307758.P1988528417779482257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P1988528417779482257

/-! ## A307758.P9139089697598738517

`∩[A006512(n+1)-1, A286195(n+1)]`
-/

namespace A307758.P9139089697598738517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P9139089697598738517

/-! ## A307758.P11598971261913925829

`∩[A067829(n+1)-1, A286195(n+1)]`
-/

namespace A307758.P11598971261913925829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P11598971261913925829

/-! ## A307758.P717823620405308595

`∩[A144834(n+1)+2, A286195(n+1)]`
-/

namespace A307758.P717823620405308595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P717823620405308595

/-! ## A307758.P17804503738585736999

`∩[2*A168497(n+1), A286195(n+1)]`
-/

namespace A307758.P17804503738585736999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P17804503738585736999

/-! ## A307758.P15870906000619196284

`∩[A056853(n+1), A286195(n+1)]`
-/

namespace A307758.P15870906000619196284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P15870906000619196284

/-! ## A307758.P15838355696521702558

`∩[A286195(n+1), A387935(n+1)]`
-/

namespace A307758.P15838355696521702558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P15838355696521702558

/-! ## A307758.P3639029735454093706

`∩[A167706(n+1), A286195(n+1)]`
-/

namespace A307758.P3639029735454093706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P3639029735454093706

/-! ## A307758.P4451119398478683797

`∩[A286195(n+1), A076083(n+2)]`
-/

namespace A307758.P4451119398478683797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076083 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P4451119398478683797

/-! ## A307758.P3970975346537726990

`∩[A286195(n+1), A114331(n+2)]`
-/

namespace A307758.P3970975346537726990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307758.P3970975346537726990

/-!
# A307761: L.g.f.: log(Product_{k>=1} (1 + x^k/(1 - x))) = Sum_{k>=1} a(k)*x^k/k.

The programs for A307761, there is no canonical definition to state claims against.
-/

/-! ## A307761.P17372504233737966898

`A324695(n+1)+A003313(A213093(n))`
-/

namespace A307761.P17372504233737966898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (n + 1) + A003313 (A213093 n).toNat

end

end A307761.P17372504233737966898

/-! ## A307761.P50904339296714175

`∑[A277327(A133900(3*n+4)+A093875(n+2)+1)]`
-/

namespace A307761.P50904339296714175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A133900 (3 * n + 4) + A093875 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307761.P50904339296714175

/-! ## A307761.P11798452089782231094

`∑[∑[A344618(A026021(n))]]`
-/

namespace A307761.P11798452089782231094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (A026021 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307761.P11798452089782231094

/-! ## A307761.P7329147032337610115

`A350146(n+1)-A053735(A001267(n))`
-/

namespace A307761.P7329147032337610115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350146 (n + 1) - A053735 (A001267 n).toNat

end

end A307761.P7329147032337610115

/-! ## A307761.P3041995886868487514

`A275890(A072567(2*n+1)-A007600(n+1))`
-/

namespace A307761.P3041995886868487514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275890 (A072567 (2 * n + 1) - A007600 (n + 1)).toNat

end

end A307761.P3041995886868487514

/-!
# A307763: Highly composite numbers that are a product of two highly composite numbers greater than 1.

The programs for A307763, there is no canonical definition to state claims against.
-/

/-! ## A307763.P18356835927369491794

`A212169(A002998(n)+3)`
-/

namespace A307763.P18356835927369491794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212169 (A002998 n + 3).toNat

end

end A307763.P18356835927369491794

/-! ## A307763.P8583013449925547986

`A212169(A023106(n)+3)`
-/

namespace A307763.P8583013449925547986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212169 (A023106 n + 3).toNat

end

end A307763.P8583013449925547986

/-! ## A307763.P14018330358378157169

`A212169(A051022(n)+3)`
-/

namespace A307763.P14018330358378157169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212169 (A051022 n + 3).toNat

end

end A307763.P14018330358378157169

/-! ## A307763.P14130902384193881220

`A212169(A097598(n)-7)`
-/

namespace A307763.P14130902384193881220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212169 (A097598 n - 7).toNat

end

end A307763.P14130902384193881220

/-! ## A307763.P17467613784969230019

`A212169(A085908(n+1)+2)`
-/

namespace A307763.P17467613784969230019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212169 (A085908 (n + 1) + 2).toNat

end

end A307763.P17467613784969230019

/-!
# A307768: Number of n-step random walks on a line starting from the origin and returning to it at least once.

The programs for A307768, the canonical program `A307768.P13717369919277474039` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307768 has offset 0).

The definition of A307768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307768.P13717369919277474039

`2^n-A063886(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307768

/-- `2^n-A063886(n)` -/
def P13717369919277474039.Spec : Prop :=
  ∀ n, P13717369919277474039.a n = A307768 n

theorem P13717369919277474039.correct : P13717369919277474039.Spec := by
  intro n
  simp only [A307768]

end A307768

/-! ## A307768.P1067067163977444368

`2*(A027306(n)-A128014(n))`
-/

namespace A307768.P1067067163977444368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027306 n - A128014 n)

end

end A307768.P1067067163977444368

namespace A307768

/-- `2*(A027306(n)-A128014(n))` -/
def P1067067163977444368.Spec : Prop :=
  ∀ n, P1067067163977444368.a n = A307768 n

end A307768

/-! ## A307768.P9195457673027122204

`2*A045621((n-1)%(n+1))`
-/

namespace A307768.P9195457673027122204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045621 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A307768.P9195457673027122204

namespace A307768

/-- `2*A045621((n-1)%(n+1))` -/
def P9195457673027122204.Spec : Prop :=
  ∀ n, P9195457673027122204.a n = A307768 n

end A307768

/-! ## A307768.P566038411231438816

`2*A045621(log2(A011782(n)))`
-/

namespace A307768.P566038411231438816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045621 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A307768.P566038411231438816

namespace A307768

/-- `2*A045621(log2(A011782(n)))` -/
def P566038411231438816.Spec : Prop :=
  ∀ n, P566038411231438816.a n = A307768 n

end A307768

/-! ## A307768.P8195489331191168825

`2*A045621(A028310(n)-1)`
-/

namespace A307768.P8195489331191168825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045621 (A028310 n - 1).toNat

end

end A307768.P8195489331191168825

namespace A307768

/-- `2*A045621(A028310(n)-1)` -/
def P8195489331191168825.Spec : Prop :=
  ∀ n, P8195489331191168825.a n = A307768 n

end A307768

/-! ## A307768.P2366033102787671998

`A164991(n+1)-A210736(n)`
-/

namespace A307768.P2366033102787671998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164991 (n + 1) - A210736 n

end

end A307768.P2366033102787671998

namespace A307768

/-- `A164991(n+1)-A210736(n)` -/
def P2366033102787671998.Spec : Prop :=
  ∀ n, P2366033102787671998.a n = A307768 n

end A307768

/-! ## A307768.P16230761879393213975

`A052548(n)-(A063886(n)+2)`
-/

namespace A307768.P16230761879393213975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - (A063886 n + 2)

end

end A307768.P16230761879393213975

namespace A307768

/-- `A052548(n)-(A063886(n)+2)` -/
def P16230761879393213975.Spec : Prop :=
  ∀ n, P16230761879393213975.a n = A307768 n

theorem P16230761879393213975.correct : P16230761879393213975.Spec := by
  intro n
  simp only [A307768, Nat.add_sub_cancel, A307768.P16230761879393213975.a, A307768.P13717369919277474039.a, A052548, A052548.P18180923888402085992.a, A063886, A063886.P2008880257839641201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307768

/-! ## A307768.P14204814887809382432

`2*A045621(A004273(n)-n)`
-/

namespace A307768.P14204814887809382432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045621 (A004273 n - (n : ℤ)).toNat

end

end A307768.P14204814887809382432

namespace A307768

/-- `2*A045621(A004273(n)-n)` -/
def P14204814887809382432.Spec : Prop :=
  ∀ n, P14204814887809382432.a n = A307768 n

end A307768

/-! ## A307768.P4213189904790441462

`2*(A011782(n)-A210736(n))`
-/

namespace A307768.P4213189904790441462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n - A210736 n)

end

end A307768.P4213189904790441462

namespace A307768

/-- `2*(A011782(n)-A210736(n))` -/
def P4213189904790441462.Spec : Prop :=
  ∀ n, P4213189904790441462.a n = A307768 n

end A307768

/-! ## A307768.P3914868202478945818

`2*(A045621(n)-A191391(n))`
-/

namespace A307768.P3914868202478945818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045621 n - A191391 n)

end

end A307768.P3914868202478945818

namespace A307768

/-- `2*(A045621(n)-A191391(n))` -/
def P3914868202478945818.Spec : Prop :=
  ∀ n, P3914868202478945818.a n = A307768 n

end A307768

/-! ## A307768.P8870610582851915344

`2*(Δ[A131577(n)]-A210736(n))`
-/

namespace A307768.P8870610582851915344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A210736 n)

end

end A307768.P8870610582851915344

namespace A307768

/-- `2*(Δ[A131577(n)]-A210736(n))` -/
def P8870610582851915344.Spec : Prop :=
  ∀ n, P8870610582851915344.a n = A307768 n

end A307768

/-! ## A307768.P13176952799189318809

`A090129(n+2)-A182027(n+1)`
-/

namespace A307768.P13176952799189318809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (n + 2) - A182027 (n + 1)

end

end A307768.P13176952799189318809

namespace A307768

/-- `A090129(n+2)-A182027(n+1)` -/
def P13176952799189318809.Spec : Prop :=
  ∀ n, P13176952799189318809.a n = A307768 n

end A307768

/-! ## A307768.P2163740866222375866

`A001405(n)+A045621(n)-A063886(n)`
-/

namespace A307768.P2163740866222375866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A045621 n - A063886 n)

end

end A307768.P2163740866222375866

namespace A307768

/-- `A001405(n)+A045621(n)-A063886(n)` -/
def P2163740866222375866.Spec : Prop :=
  ∀ n, P2163740866222375866.a n = A307768 n

theorem P2163740866222375866.correct : P2163740866222375866.Spec := by
  intro n
  simp only [A307768, Nat.add_sub_cancel, A307768.P2163740866222375866.a, A307768.P13717369919277474039.a, A001405, A001405.P5205018418992951678.a, A045621, A045621.P8822809560474784251.a, A063886, A063886.P2008880257839641201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A307768

/-! ## A307768.P1430630688541152763

`abs(A155559(n)-A210736(n))-A210736(n)`
-/

namespace A307768.P1430630688541152763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155559 n - A210736 n| - A210736 n

end

end A307768.P1430630688541152763

namespace A307768

/-- `abs(A155559(n)-A210736(n))-A210736(n)` -/
def P1430630688541152763.Spec : Prop :=
  ∀ n, P1430630688541152763.a n = A307768 n

end A307768

/-! ## A307768.P4170800971688488669

`A001045(n+1)-(A063886(n)-A001045(n))`
-/

namespace A307768.P4170800971688488669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - (A063886 n - A001045 n)

end

end A307768.P4170800971688488669

namespace A307768

/-- `A001045(n+1)-(A063886(n)-A001045(n))` -/
def P4170800971688488669.Spec : Prop :=
  ∀ n, P4170800971688488669.a n = A307768 n

end A307768

/-! ## A307768.P8562670627248689385

`2*(A191386(n)-A191520(n))`
-/

namespace A307768.P8562670627248689385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A191386 n - A191520 n)

end

end A307768.P8562670627248689385

namespace A307768

/-- `2*(A191386(n)-A191520(n))` -/
def P8562670627248689385.Spec : Prop :=
  ∀ n, P8562670627248689385.a n = A307768 n

end A307768

/-! ## A307768.P16035006866378067314

`Δ[A083318(n)]-2*A210736(n)`
-/

namespace A307768.P16035006866378067314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A210736 n

end

end A307768.P16035006866378067314

namespace A307768

/-- `Δ[A083318(n)]-2*A210736(n)` -/
def P16035006866378067314.Spec : Prop :=
  ∀ n, P16035006866378067314.a n = A307768 n

end A307768

/-! ## A307768.P4166694591654852680

`(A000079(n+1)-A047073(n+1))/2`
-/

namespace A307768.P4166694591654852680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A047073 (n + 1) : ℚ) / 2

end

end A307768.P4166694591654852680

namespace A307768

/-- `(A000079(n+1)-A047073(n+1))/2` -/
def P4166694591654852680.Spec : Prop :=
  ∀ n, P4166694591654852680.a n = (A307768 n : ℚ)

end A307768

/-! ## A307768.P9764623460915299188

`2*(A191524(n)-A191522(n))`
-/

namespace A307768.P9764623460915299188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A191524 n - A191522 n)

end

end A307768.P9764623460915299188

namespace A307768

/-- `2*(A191524(n)-A191522(n))` -/
def P9764623460915299188.Spec : Prop :=
  ∀ n, P9764623460915299188.a n = A307768 n

end A307768

/-! ## A307768.P14754727494176718959

`2*(A011782(n)-A007318(A007590(n)))`
-/

namespace A307768.P14754727494176718959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n - A007318 (A007590 n).toNat)

end

end A307768.P14754727494176718959

namespace A307768

/-- `2*(A011782(n)-A007318(A007590(n)))` -/
def P14754727494176718959.Spec : Prop :=
  ∀ n, P14754727494176718959.a n = A307768 n

end A307768

/-!
# A307770: Expansion of e.g.f. 1/(1 - Sum_{k>=1} prime(k)*x^k/k!).

The programs for A307770, there is no canonical definition to state claims against.
-/

/-! ## A307770.P8402459022803418280

`A056011((3*n-1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A307770.P8402459022803418280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056011 (((3 * n : ℤ) - 1) * a (n - 1) + 1).toNat

end

end A307770.P8402459022803418280

/-!
# A307771: Expansion of e.g.f. Sum_{k>=1} prime(k)*(exp(x) - 1)^k/k!.

The programs for A307771, there is no canonical definition to state claims against.
-/

/-! ## A307771.P5602358517760360293

`A191877(A236572(n))+Δ[A033543(n)]`
-/

namespace A307771.P5602358517760360293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191877 (A236572 n).toNat + (f1 (n + 1) - f1 n)

end

end A307771.P5602358517760360293

/-! ## A307771.P6313393965444478516

`A331826(n+2)-A246004(A005640(n))`
-/

namespace A307771.P6313393965444478516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331826 (n + 2) - A246004 (A005640 n).toNat

end

end A307771.P6313393965444478516

/-!
# A307772: Expansion of e.g.f. Sum_{k>=1} prime(k)*log(1 + x)^k/k!.

The programs for A307772, there is no canonical definition to state claims against.
-/

/-! ## A307772.P5563629386174936015

`A354002(n)-n*a(n-1)` with `a(0)=2`
-/

namespace A307772.P5563629386174936015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A354002 n - (n : ℤ) * a (n - 1)

end

end A307772.P5563629386174936015

/-!
# A307773: Expansion of e.g.f. Sum_{k>=1} prime(k)*log(1/(1 - x))^k/k!.

The programs for A307773, there is no canonical definition to state claims against.
-/

/-! ## A307773.P10168175995906255769

`A094387(A002720(n))+A001700(n)`
-/

namespace A307773.P10168175995906255769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094387 (A002720 n).toNat + A001700 n

end

end A307773.P10168175995906255769

/-!
# A307774: Number of partitions of n into 3 parts such that the middle and largest parts are both prime.

The programs for A307774, there is no canonical definition to state claims against.
-/

/-! ## A307774.P13330328063751127485

`A061358(n)+A002375(A034886(n^A254609(n)))`
-/

namespace A307774.P13330328063751127485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n + A002375 (A034886 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A254609 n : ℤ))).toNat).toNat

end

end A307774.P13330328063751127485

/-!
# A307776: a(1) = 1; a(n+1) = Sum_{d|n} (-1)^(n/d+1)*a(d).

The programs for A307776, there is no canonical definition to state claims against.
-/

/-! ## A307776.P1947899112763479110

`A051194(A207015(n+1))-A023416(n)`
-/

namespace A307776.P1947899112763479110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (A207015 (n + 1)).toNat - A023416 n

end

end A307776.P1947899112763479110

/-! ## A307776.P5509240147713788837

`A110730(A197782(n+1))-A080791(n)`
-/

namespace A307776.P5509240147713788837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110730 (A197782 (n + 1)).toNat - A080791 n

end

end A307776.P5509240147713788837

/-! ## A307776.P14645016582458918241

`A306518(A265830(n))-A023416(2*n+1)`
-/

namespace A307776.P14645016582458918241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306518 (A265830 n).toNat - A023416 (2 * n + 1)

end

end A307776.P14645016582458918241

/-! ## A307776.P801182253688994297

`(n%2)^n-A353846(A139550(n))`
-/

namespace A307776.P801182253688994297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) - A353846 (A139550 n).toNat

end

end A307776.P801182253688994297

/-!
# A307778: a(1) = 1; a(n+1) = Sum_{d|n} (-1)^(d+1)*a(d).

The programs for A307778, there is no canonical definition to state claims against.
-/

/-! ## A307778.P8713065025150372678

`A307776(n+1)-A179011(A273171(n))`
-/

namespace A307778.P8713065025150372678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307776 (n + 1) - A179011 (A273171 n).toNat

end

end A307778.P8713065025150372678

/-! ## A307778.P11494295808559062527

`A301342(A016116(n))-A080791(n)`
-/

namespace A307778.P11494295808559062527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301342 (A016116 n).toNat - A080791 n

end

end A307778.P11494295808559062527

/-! ## A307778.P109748744110712932

`A319981(A281677(n))-A002262(n)`
-/

namespace A307778.P109748744110712932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319981 (A281677 n).toNat - A002262 n

end

end A307778.P109748744110712932

/-! ## A307778.P441534721906458185

`A088705(C(A160939(n+1), A305983(n+1)))`
-/

namespace A307778.P441534721906458185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (Nat.choose (A160939 (n + 1)).toNat (A305983 (n + 1)).toNat)

end

end A307778.P441534721906458185

/-!
# A307779: a(1) = 1; a(n+1) = Sum_{d|n, n/d odd} a(d).

The programs for A307779, there is no canonical definition to state claims against.
-/

/-! ## A307779.P16301784257929820724

`∑[A366852(n)%A365067(3*n+1)]+1`
-/

namespace A307779.P16301784257929820724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366852 n) (A365067 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A307779.P16301784257929820724

/-! ## A307779.P9303013705903293546

`∑[A366852(n)%A375084(n+1)]+1`
-/

namespace A307779.P9303013705903293546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366852 n) (A375084 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A307779.P9303013705903293546

/-! ## A307779.P13001313500678274793

`∑[A366852(n)%A319559(n)]+1`
-/

namespace A307779.P13001313500678274793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366852 n) (A319559 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A307779.P13001313500678274793

/-! ## A307779.P3451202602997696523

`A003056(A093327(A087135(n)))`
-/

namespace A307779.P3451202602997696523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A093327 (A087135 n).toNat).toNat

end

end A307779.P3451202602997696523

/-! ## A307779.P6623128060000538902

`A127321(∑[A007947(A003116(n))])`
-/

namespace A307779.P6623128060000538902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A003116 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307779.P6623128060000538902

/-!
# A307781: a(1) = 1; a(n+1) = -Sum_{d|n} a(d)^(n/d).

The programs for A307781, there is no canonical definition to state claims against.
-/

/-! ## A307781.P4222145810559651670

`A351014(A022837(n+4))-A000005(2*n+1)`
-/

namespace A307781.P4222145810559651670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A022837 (n + 4)).toNat - A000005 (2 * n + 1)

end

end A307781.P4222145810559651670

/-!
# A307784: a(n) is the square root of A034175(n) + A034175(n+1).

The programs for A307784, there is no canonical definition to state claims against.
-/

/-! ## A307784.P15909135736745873982

`sqrt(A034175(n+1)+A034175(n))`
-/

namespace A307784.P15909135736745873982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A034175 (n + 1) + A034175 n : ℝ)

end

end A307784.P15909135736745873982

/-! ## A307784.P1519810445540741001

`A000188(A034175(n+1)+A034175(n))`
-/

namespace A307784.P1519810445540741001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A034175 (n + 1) + A034175 n).toNat

end

end A307784.P1519810445540741001

/-! ## A307784.P3376800048205266619

`A000196(A034175(n+1)+A034175(n))`
-/

namespace A307784.P3376800048205266619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A034175 (n + 1) + A034175 n).toNat

end

end A307784.P3376800048205266619

/-! ## A307784.P2826492848255427309

`A019554(A034175(n+1)+A034175(n))`
-/

namespace A307784.P2826492848255427309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A034175 (n + 1) + A034175 n).toNat

end

end A307784.P2826492848255427309

/-! ## A307784.P16129533890638063520

`A178786(A034175(n+1)+A034175(n))`
-/

namespace A307784.P16129533890638063520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A034175 (n + 1) + A034175 n).toNat

end

end A307784.P16129533890638063520

/-! ## A307784.P16675339563705518321

`A002260(2*(A034175(n+1)+A034175(n)))`
-/

namespace A307784.P16675339563705518321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * (A034175 (n + 1) + A034175 n)).toNat

end

end A307784.P16675339563705518321

/-!
# A307785: a(n) is the cubic root of A175428(n) + A175428(n+1).

The programs for A307785, there is no canonical definition to state claims against.
-/

/-! ## A307785.P15350938897722552317

`A053150(A175428(n+1)+A175428(n+2))`
-/

namespace A307785.P15350938897722552317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A175428 (n + 1) + A175428 (n + 2)).toNat

end

end A307785.P15350938897722552317

/-! ## A307785.P9629398003819415382

`A048766(A259603(n+1))*A057427(A098978(n))`
-/

namespace A307785.P9629398003819415382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A259603 (n + 1)).toNat * A057427 (A098978 n).toNat

end

end A307785.P9629398003819415382

/-! ## A307785.P16458298496883389354

`A048766(A259603(n+1))*A057427(A117396(n))`
-/

namespace A307785.P16458298496883389354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A259603 (n + 1)).toNat * A057427 (A117396 n).toNat

end

end A307785.P16458298496883389354

/-! ## A307785.P8260983792843635661

`A048766(A259603(n+1))+A000038(A191542(n+1))`
-/

namespace A307785.P8260983792843635661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A259603 (n + 1)).toNat + A000038 (A191542 (n + 1)).toNat

end

end A307785.P8260983792843635661

/-!
# A307786: Number of valid hook configurations of 312-avoiding permutations of [n].

The programs for A307786, there is no canonical definition to state claims against.
-/

/-! ## A307786.P13897975058130379207

`A275332(A000332(n))+A148334(n)`
-/

namespace A307786.P13897975058130379207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275332 (A000332 n).toNat + A148334 n

end

end A307786.P13897975058130379207

/-! ## A307786.P9633744744937228493

`A256502(A181734(n)+A004148(n))`
-/

namespace A307786.P9633744744937228493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A181734 n + A004148 n).toNat

end

end A307786.P9633744744937228493

/-! ## A307786.P16609359085795965688

`A135660(A149842(n+1))+A001949(2*n)`
-/

namespace A307786.P16609359085795965688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A149842 (n + 1)).toNat + A001949 (2 * n)

end

end A307786.P16609359085795965688

/-! ## A307786.P8383731138587202452

`A275332(A000332(n))+A110656(7*A301832(n))`
-/

namespace A307786.P8383731138587202452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275332 (A000332 n).toNat + A110656 (7 * A301832 n).toNat

end

end A307786.P8383731138587202452

/-!
# A307787: Number of valid hook configurations of 132-avoiding permutations of [n].

The programs for A307787, there is no canonical definition to state claims against.
-/

/-! ## A307787.P9597019216442355779

`A221586(n)-A350899(A147207(n+1))`
-/

namespace A307787.P9597019216442355779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221586 n - A350899 (A147207 (n + 1)).toNat

end

end A307787.P9597019216442355779

/-! ## A307787.P16890725040829169764

`A221586(n)-A350899(A307738(n+2))`
-/

namespace A307787.P16890725040829169764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221586 n - A350899 (A307738 (n + 2)).toNat

end

end A307787.P16890725040829169764

/-! ## A307787.P14959490769940078964

`A187187(A076866(n)+1)`
-/

namespace A307787.P14959490769940078964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A076866 n + 1).toNat

end

end A307787.P14959490769940078964

/-! ## A307787.P5243082412763057738

`A226762(A049139(n+1))`
-/

namespace A307787.P5243082412763057738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A049139 (n + 1)).toNat

end

end A307787.P5243082412763057738

/-! ## A307787.P14986771739484260834

`A187188(A261894(n+1))`
-/

namespace A307787.P14986771739484260834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A261894 (n + 1)).toNat

end

end A307787.P14986771739484260834

/-!
# A307788: Number of valid hook configurations of permutations of [n] that avoid the patterns 231 and 321.

The programs for A307788, there is no canonical definition to state claims against.
-/

/-! ## A307788.P14302759757966148280

`A217333(abs(1-n))`
-/

namespace A307788.P14302759757966148280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217333 |1 - (n : ℤ)|.toNat

end

end A307788.P14302759757966148280

/-! ## A307788.P15984143134121160553

`A025273(abs(1-n)+3)`
-/

namespace A307788.P15984143134121160553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025273 (|1 - (n : ℤ)| + 3).toNat

end

end A307788.P15984143134121160553

/-! ## A307788.P4230828871601863239

`A025273(n+2)+A000007(n)`
-/

namespace A307788.P4230828871601863239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025273 (n + 2) + A000007 n

end

end A307788.P4230828871601863239

/-! ## A307788.P4111508127164266327

`or(Δ[A000523(n+1)], A025273(n+2))`
-/

namespace A307788.P4111508127164266327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A025273 (n + 2))

end

end A307788.P4111508127164266327

/-! ## A307788.P13183130906928733686

`floor(A025273(n+2)+2/A000040(n+1))`
-/

namespace A307788.P13183130906928733686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025273 (n + 2) : ℚ) + 2 / (A000040 (n + 1) : ℚ)⌋

end

end A307788.P13183130906928733686

/-! ## A307788.P17479842397201752389

`A025273(n+2)+A008683(A145154(n))`
-/

namespace A307788.P17479842397201752389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025273 (n + 2) + A008683 (A145154 n).toNat

end

end A307788.P17479842397201752389

/-!
# A307789: Number of valid hook configurations of permutations of [n] that avoid the patterns 231 and 1243.

The programs for A307789, the canonical program `A307789.P13334902009020321620` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307789 has offset 0).

The definition of A307789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307789.P13334902009020321620

`A005773(abs(1-n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307789

/-- `A005773(abs(1-n))` -/
def P13334902009020321620.Spec : Prop :=
  ∀ n, P13334902009020321620.a n = A307789 n

theorem P13334902009020321620.correct : P13334902009020321620.Spec := by
  intro n
  simp only [A307789]

end A307789

/-! ## A307789.P8696145361789041379

`or(A000007(n), A005773(floor(n²/(n+1))))`
-/

namespace A307789.P8696145361789041379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A005773 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A307789.P8696145361789041379

namespace A307789

/-- `or(A000007(n), A005773(floor(n²/(n+1))))` -/
def P8696145361789041379.Spec : Prop :=
  ∀ n, P8696145361789041379.a n = A307789 n

end A307789

/-! ## A307789.P11035502529174839698

`or(char[A002522(n)], A005773((2*n)%(n+1)))`
-/

namespace A307789.P11035502529174839698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A005773 (2 * n % (n + 1)))

end

end A307789.P11035502529174839698

namespace A307789

/-- `or(char[A002522(n)], A005773((2*n)%(n+1)))` -/
def P11035502529174839698.Spec : Prop :=
  ∀ n, P11035502529174839698.a n = A307789 n

end A307789

/-! ## A307789.P9266310186302681906

`A393138(abs(∑[1-n]))`
-/

namespace A307789.P9266310186302681906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393138 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A307789.P9266310186302681906

namespace A307789

/-- `A393138(abs(∑[1-n]))` -/
def P9266310186302681906.Spec : Prop :=
  ∀ n, P9266310186302681906.a n = A307789 n

end A307789

/-! ## A307789.P6993744528379295461

`A038622(C(abs(1-n), 2))`
-/

namespace A307789.P6993744528379295461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (Nat.choose |1 - (n : ℤ)|.toNat 2)

end

end A307789.P6993744528379295461

namespace A307789

/-- `A038622(C(abs(1-n), 2))` -/
def P6993744528379295461.Spec : Prop :=
  ∀ n, P6993744528379295461.a n = A307789 n

end A307789

/-! ## A307789.P17337602565830166850

`A038622(∑[floor(n-atan(n))])`
-/

namespace A307789.P17337602565830166850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307789.P17337602565830166850

namespace A307789

/-- `A038622(∑[floor(n-atan(n))])` -/
def P17337602565830166850.Spec : Prop :=
  ∀ n, P17337602565830166850.a n = A307789 n

end A307789

/-! ## A307789.P6138805032811710449

`A171651(∑[floor(n-atan(n))])`
-/

namespace A307789.P6138805032811710449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307789.P6138805032811710449

namespace A307789

/-- `A171651(∑[floor(n-atan(n))])` -/
def P6138805032811710449.Spec : Prop :=
  ∀ n, P6138805032811710449.a n = A307789 n

end A307789

/-! ## A307789.P17383303231432073883

`A171651(∑[round(acot(n)+n)-2])`
-/

namespace A307789.P17383303231432073883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307789.P17383303231432073883

namespace A307789

/-- `A171651(∑[round(acot(n)+n)-2])` -/
def P17383303231432073883.Spec : Prop :=
  ∀ n, P17383303231432073883.a n = A307789 n

end A307789

/-! ## A307789.P10657950305109285218

`A038622(∑[n]-comp[2*(n+1)])`
-/

namespace A307789.P10657950305109285218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (∑ j ∈ Finset.range (n + 1), f1 j - SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A307789.P10657950305109285218

namespace A307789

/-- `A038622(∑[n]-comp[2*(n+1)])` -/
def P10657950305109285218.Spec : Prop :=
  ∀ n, P10657950305109285218.a n = A307789 n

end A307789

/-! ## A307789.P11735326871336975737

`A171651(∑[n]-comp[2*(n+1)])`
-/

namespace A307789.P11735326871336975737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171651 (∑ j ∈ Finset.range (n + 1), f1 j - SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A307789.P11735326871336975737

namespace A307789

/-- `A171651(∑[n]-comp[2*(n+1)])` -/
def P11735326871336975737.Spec : Prop :=
  ∀ n, P11735326871336975737.a n = A307789 n

end A307789

/-! ## A307789.P6777175871920023120

`A171670(C(n, 2))`
-/

namespace A307789.P6777175871920023120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171670 (Nat.choose n 2)

end

end A307789.P6777175871920023120

namespace A307789

/-- `A171670(C(n, 2))` -/
def P6777175871920023120.Spec : Prop :=
  ∀ n, P6777175871920023120.a n = A307789 n

end A307789

/-! ## A307789.P3452320610346144969

`A171670(∑[n]-n)`
-/

namespace A307789.P3452320610346144969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171670 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A307789.P3452320610346144969

namespace A307789

/-- `A171670(∑[n]-n)` -/
def P3452320610346144969.Spec : Prop :=
  ∀ n, P3452320610346144969.a n = A307789 n

end A307789

/-! ## A307789.P7041986877386979944

`A115990(C(n, 2)+1)`
-/

namespace A307789.P7041986877386979944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (Nat.choose n 2 + 1)

end

end A307789.P7041986877386979944

namespace A307789

/-- `A115990(C(n, 2)+1)` -/
def P7041986877386979944.Spec : Prop :=
  ∀ n, P7041986877386979944.a n = A307789 n

end A307789

/-! ## A307789.P15101150674667272949

`A062105(abs(∑[1-n]))`
-/

namespace A307789.P15101150674667272949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062105 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A307789.P15101150674667272949

namespace A307789

/-- `A062105(abs(∑[1-n]))` -/
def P15101150674667272949.Spec : Prop :=
  ∀ n, P15101150674667272949.a n = A307789 n

end A307789

/-! ## A307789.P3588725197178990042

`A115990(∑[abs(1-n)])`
-/

namespace A307789.P3588725197178990042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307789.P3588725197178990042

namespace A307789

/-- `A115990(∑[abs(1-n)])` -/
def P3588725197178990042.Spec : Prop :=
  ∀ n, P3588725197178990042.a n = A307789 n

end A307789

/-! ## A307789.P9798875497062650907

`A144025(A212342(n))`
-/

namespace A307789.P9798875497062650907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144025 (A212342 n).toNat

end

end A307789.P9798875497062650907

namespace A307789

/-- `A144025(A212342(n))` -/
def P9798875497062650907.Spec : Prop :=
  ∀ n, P9798875497062650907.a n = A307789 n

end A307789

/-! ## A307789.P5210545962391888951

`A144025(A175631(n+2))`
-/

namespace A307789.P5210545962391888951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144025 (A175631 (n + 2)).toNat

end

end A307789.P5210545962391888951

namespace A307789

/-- `A144025(A175631(n+2))` -/
def P5210545962391888951.Spec : Prop :=
  ∀ n, P5210545962391888951.a n = A307789 n

end A307789

/-! ## A307789.P12353428280550775191

`A144025(A186752(n+2))`
-/

namespace A307789.P12353428280550775191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144025 (A186752 (n + 2)).toNat

end

end A307789.P12353428280550775191

namespace A307789

/-- `A144025(A186752(n+2))` -/
def P12353428280550775191.Spec : Prop :=
  ∀ n, P12353428280550775191.a n = A307789 n

end A307789

/-! ## A307789.P11743864070539144063

`A337991(∑[abs(1-n)])`
-/

namespace A307789.P11743864070539144063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337991 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307789.P11743864070539144063

namespace A307789

/-- `A337991(∑[abs(1-n)])` -/
def P11743864070539144063.Spec : Prop :=
  ∀ n, P11743864070539144063.a n = A307789 n

end A307789

/-! ## A307789.P4790611280852531437

`A169623(2*(1-n)²)`
-/

namespace A307789.P4790611280852531437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (2 * (1 - (n : ℤ)) ^ 2).toNat

end

end A307789.P4790611280852531437

namespace A307789

/-- `A169623(2*(1-n)²)` -/
def P4790611280852531437.Spec : Prop :=
  ∀ n, P4790611280852531437.a n = A307789 n

end A307789

/-!
# A307793: a(1) = 1; a(n+1) = Sum_{d|n} tau(d)*a(d), where tau = number of divisors (A000005).

The programs for A307793, there is no canonical definition to state claims against.
-/

/-! ## A307793.P13786977533652555075

`A351395(∏[A135401(n)])`
-/

namespace A307793.P13786977533652555075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351395 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307793.P13786977533652555075

/-! ## A307793.P586355168142525274

`or(A022171(n), A276214(A000088(n)))`
-/

namespace A307793.P586355168142525274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022171 n) (A276214 (A000088 n).toNat)

end

end A307793.P586355168142525274

/-!
# A307794: a(1) = 1; a(n+1) = Sum_{d|n} sigma(d)*a(d), where sigma = sum of divisors (A000203).

The programs for A307794, there is no canonical definition to state claims against.
-/

/-! ## A307794.P8872427473401479655

`A077773(A142983(n+1))-A000217(n)`
-/

namespace A307794.P8872427473401479655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A142983 (n + 1)).toNat - A000217 n

end

end A307794.P8872427473401479655

/-! ## A307794.P1763477325730208779

`A291769(A110501(n+1))-A000700(n)`
-/

namespace A307794.P1763477325730208779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (A110501 (n + 1)).toNat - A000700 n

end

end A307794.P1763477325730208779

/-!
# A307795: Number of binary words of length n with three times as many occurrences of subword 101 as occurrences of subword 010.

The programs for A307795, there is no canonical definition to state claims against.
-/

/-! ## A307795.P252996442734027892

`A303696(∑[n+4]+2)`
-/

namespace A307795.P252996442734027892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A307795.P252996442734027892

/-! ## A307795.P12114754626752062458

`record[A303696(abs(A046691(n)))]`
-/

namespace A307795.P12114754626752062458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307795.P12114754626752062458

/-! ## A307795.P6153699212402947483

`record[A303696(A027379(n)-1)]`
-/

namespace A307795.P6153699212402947483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307795.P6153699212402947483

/-! ## A307795.P17832431454089875228

`A303696(A167499(n+3)-9)%A304475(n+1)`
-/

namespace A307795.P17832431454089875228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303696 (A167499 (n + 3) - 9).toNat) (A304475 (n + 1))

end

end A307795.P17832431454089875228

/-! ## A307795.P4379677762933908485

`A303696(A167499(n+3)-9)/A033273(A033253(n+1))`
-/

namespace A307795.P4379677762933908485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303696 (A167499 (n + 3) - 9).toNat : ℚ) / (A033273 (A033253 (n + 1)).toNat : ℚ)

end

end A307795.P4379677762933908485

/-! ## A307795.P9708836541510126352

`A303696(A167499(n+3)-9)/A033273(A172071(n+1))`
-/

namespace A307795.P9708836541510126352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303696 (A167499 (n + 3) - 9).toNat : ℚ) / (A033273 (A172071 (n + 1)).toNat : ℚ)

end

end A307795.P9708836541510126352

/-!
# A307796: Number T(n,k) of binary words of length n such that k is the difference of numbers of occurrences of subword 101 and subword 010; triangle T(n,k), n>=0, -floor(n/3)<=k<=floor(n/3), read by rows.

The programs for A307796, there is no canonical definition to state claims against.
-/

/-! ## A307796.P475160532431823363

`gcd(A068383(n+1), A175669(A047966(n+5)))`
-/

namespace A307796.P475160532431823363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068383 (n + 1)) (A175669 (A047966 (n + 5)).toNat)

end

end A307796.P475160532431823363

/-!
# A307797: Lexicographically earliest version of a self referencing "Kimberling shuffle" expulsion array sequence.

The programs for A307797, there is no canonical definition to state claims against.
-/

/-! ## A307797.P37090072157231526

`A008619(A307536(n+1))+A000007(A051033(n))`
-/

namespace A307797.P37090072157231526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A307536 (n + 1)).toNat + A000007 (A051033 n).toNat

end

end A307797.P37090072157231526

/-! ## A307797.P17882293383376229935

`A008619(A307536(n+1))^A001221(A060546(n)²)`
-/

namespace A307797.P17882293383376229935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A307536 (n + 1)).toNat : ℚ) ^ (A001221 (A060546 n ^ 2).toNat : ℤ)

end

end A307797.P17882293383376229935

/-! ## A307797.P9247416060725546717

`A008683(A245430(n+1))+A008619(A307536(n+1))`
-/

namespace A307797.P9247416060725546717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A245430 (n + 1)).toNat + A008619 (A307536 (n + 1)).toNat

end

end A307797.P9247416060725546717

/-! ## A307797.P1543601205514774264

`A008619(A307536(n+1))^A001221(A011782(n+1))`
-/

namespace A307797.P1543601205514774264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A307536 (n + 1)).toNat : ℚ) ^ (A001221 (A011782 (n + 1)).toNat : ℤ)

end

end A307797.P1543601205514774264

/-! ## A307797.P11019251533415034983

`A008619(A307536(n+1))^A001221(A060546(2*n))`
-/

namespace A307797.P11019251533415034983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A307536 (n + 1)).toNat : ℚ) ^ (A001221 (A060546 (2 * n)).toNat : ℤ)

end

end A307797.P11019251533415034983

/-!
# A307799: a(0) = 0, a(1) = 3; a(n) = rev(a(n-1))*a(n-1) + a(n-2), where rev = digit reversal (A004086).

The programs for A307799, there is no canonical definition to state claims against.
-/

/-! ## A307799.P12547442082648062083

`A133623(A153090(n+1)+A132683(n))`
-/

namespace A307799.P12547442082648062083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133623 (A153090 (n + 1) + A132683 n).toNat

end

end A307799.P12547442082648062083

