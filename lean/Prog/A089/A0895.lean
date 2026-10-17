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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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
# A089500: Denominators for computation of column sequences of triangle A071951 (Legendre-Stirling).

The programs for A089500, there is no canonical definition to state claims against.
-/

/-! ## A089500.P17162396707344139942

`A104856(A313781(∑[n]))`
-/

namespace A089500.P17162396707344139942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104856 (A313781 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A089500.P17162396707344139942

/-!
# A089501: 

The programs for A089501, there is no canonical definition to state claims against.
-/

/-! ## A089501.P14140678858804822215

`A000178(2*n)*A001700(n)`
-/

namespace A089501.P14140678858804822215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (2 * n) * A001700 n

end

end A089501.P14140678858804822215

/-! ## A089501.P3946362561294517184

`∏[A010790(2*n)]/A010790(n)`
-/

namespace A089501.P3946362561294517184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010790 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A010790 n : ℚ)

end

end A089501.P3946362561294517184

/-! ## A089501.P2783429305504987718

`A000178(2*n+1)/A010790(n)`
-/

namespace A089501.P2783429305504987718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (2 * n + 1) : ℚ) / (A010790 n : ℚ)

end

end A089501.P2783429305504987718

/-! ## A089501.P7857080544453317010

`A000178(2*n)*A001405(2*n+1)`
-/

namespace A089501.P7857080544453317010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (2 * n) * A001405 (2 * n + 1)

end

end A089501.P7857080544453317010

/-!
# A089503: Triangle of numbers used for basis change between certain falling factorials.

The programs for A089503, the canonical program `A089503.P2916068136973119441` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089503 has offset 1).

The definition of A089503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089503.P18216822223886556026

`(1-C(∑[char[∑[n]]], 2)+n)!*A108767(n+1)`
-/

namespace A089503.P18216822223886556026
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat : ℤ) * A108767 (n + 1)

end

end A089503.P18216822223886556026

namespace A089503

/-- `(1-C(∑[char[∑[n]]], 2)+n)!*A108767(n+1)` -/
def P18216822223886556026.Spec : Prop :=
  ∀ n, P18216822223886556026.a n = A089503 (n + 1)

end A089503

/-! ## A089503.P2916068136973119441

`A050166(n)*A181511(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A089503

/-- `A050166(n)*A181511(n+1)` -/
def P2916068136973119441.Spec : Prop :=
  ∀ n, P2916068136973119441.a n = A089503 (n + 1)

theorem P2916068136973119441.correct : P2916068136973119441.Spec := by
  intro n
  simp only [A089503, Nat.add_sub_cancel]

end A089503

/-! ## A089503.P16352719830587943741

`A108767(n+1)*A166350(n+1)`
-/

namespace A089503.P16352719830587943741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108767 (n + 1) * A166350 (n + 1)

end

end A089503.P16352719830587943741

namespace A089503

/-- `A108767(n+1)*A166350(n+1)` -/
def P16352719830587943741.Spec : Prop :=
  ∀ n, P16352719830587943741.a n = A089503 (n + 1)

end A089503

/-! ## A089503.P9691670515655551545

`A002260(n+1)!*A108767(n+1)`
-/

namespace A089503.P9691670515655551545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A108767 (n + 1)

end

end A089503.P9691670515655551545

namespace A089503

/-- `A002260(n+1)!*A108767(n+1)` -/
def P9691670515655551545.Spec : Prop :=
  ∀ n, P9691670515655551545.a n = A089503 (n + 1)

end A089503

/-! ## A089503.P230000536090248890

`A008279(n)*A225419(n)`
-/

namespace A089503.P230000536090248890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A225419 n

end

end A089503.P230000536090248890

namespace A089503

/-- `A008279(n)*A225419(n)` -/
def P230000536090248890.Spec : Prop :=
  ∀ n, P230000536090248890.a n = A089503 (n + 1)

end A089503

/-!
# A089504: A generalization of triangle A071951 (Legendre-Stirling).

The programs for A089504, there is no canonical definition to state claims against.
-/

/-! ## A089504.P14335136501247647249

`A000400(A025581(n))*A080249(n)`
-/

namespace A089504.P14335136501247647249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A025581 n).toNat * A080249 n

end

end A089504.P14335136501247647249

/-! ## A089504.P2187372039139115992

`A000400(A025581(n))*A125975(A112500(n))`
-/

namespace A089504.P2187372039139115992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A025581 n).toNat * A125975 (A112500 n).toNat

end

end A089504.P2187372039139115992

/-! ## A089504.P11415391283510198717

`A261868(A376790(n+2))`
-/

namespace A089504.P11415391283510198717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261868 (A376790 (n + 2)).toNat

end

end A089504.P11415391283510198717

/-!
# A089506: Denominators used in A089505 to compute column sequences of triangle A089504.

The programs for A089506, there is no canonical definition to state claims against.
-/

/-! ## A089506.P1638741357926496384

`lcm(A118714(n+1), A147032(n²+1))`
-/

namespace A089506.P1638741357926496384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118714 (n + 1)) (A147032 (n ^ 2 + 1))

end

end A089506.P1638741357926496384

/-!
# A089507: Second column of triangle A089504 and second column of array A078741 divided by 18.

The programs for A089507, the canonical program `A089507.P17411187426163933197` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089507 has offset 0).

The definition of A089507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089507.P17411187426163933197

`6^n*(4^(n+1)-1)/3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A089507

/-- `6^n*(4^(n+1)-1)/3` -/
def P17411187426163933197.Spec : Prop :=
  ∀ n, P17411187426163933197.a n = (A089507 n : ℚ)

end A089507

/-! ## A089507.P16301169302436980750

`6^n+24*a(n-1)` with `a(0)=1`
-/

namespace A089507.P16301169302436980750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 ^ n + 24 * a (n - 1)

end

end A089507.P16301169302436980750

namespace A089507

/-- `6^n+24*a(n-1)` -/
def P16301169302436980750.Spec : Prop :=
  ∀ n, (P16301169302436980750.a n : ℤ) = A089507 n

end A089507

/-! ## A089507.P4437112401078833567

`lcm(2^n, A016147(n))`
-/

namespace A089507.P4437112401078833567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A016147 n)

end

end A089507.P4437112401078833567

namespace A089507

/-- `lcm(2^n, A016147(n))` -/
def P4437112401078833567.Spec : Prop :=
  ∀ n, (P4437112401078833567.a n : ℤ) = A089507 n

end A089507

/-! ## A089507.P16604533944107494927

`A000400(n)+4*6*a(n-1)` with `a(0)=1`
-/

namespace A089507.P16604533944107494927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000400 n + 4 * (6 * a (n - 1))

end

end A089507.P16604533944107494927

namespace A089507

/-- `A000400(n)+4*6*a(n-1)` -/
def P16604533944107494927.Spec : Prop :=
  ∀ n, P16604533944107494927.a n = A089507 n

end A089507

/-! ## A089507.P8025641973863318555

`record[A017923(n)*A279030(n)]`
-/

namespace A089507.P8025641973863318555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017923 n * A279030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089507.P8025641973863318555

namespace A089507

/-- `record[A017923(n)*A279030(n)]` -/
def P8025641973863318555.Spec : Prop :=
  ∀ n, P8025641973863318555.a n = A089507 n

end A089507

/-! ## A089507.P10843550018401708170

`abs(Δ[A007051(n)]*A016131(n))`
-/

namespace A089507.P10843550018401708170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A016131 n|

end

end A089507.P10843550018401708170

namespace A089507

/-- `abs(Δ[A007051(n)]*A016131(n))` -/
def P10843550018401708170.Spec : Prop :=
  ∀ n, P10843550018401708170.a n = A089507 n

end A089507

/-! ## A089507.P1226976780342431461

`A000051(n)*A016147(n)-A016147(n)`
-/

namespace A089507.P1226976780342431461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A016147 n - A016147 n

end

end A089507.P1226976780342431461

namespace A089507

/-- `A000051(n)*A016147(n)-A016147(n)` -/
def P1226976780342431461.Spec : Prop :=
  ∀ n, P1226976780342431461.a n = A089507 n

end A089507

/-!
# A089508: Solution to a binomial problem together with companion sequence A081016(n-1).

The programs for A089508, the canonical program `A089508.P13330115643907505506` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089508 has offset 1).

The definition of A089508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089508.P13330115643907505506

`A119996(Δ[n²])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089508

/-- `A119996(Δ[n²])` -/
def P13330115643907505506.Spec : Prop :=
  ∀ n, P13330115643907505506.a n = A089508 (n + 1)

theorem P13330115643907505506.correct : P13330115643907505506.Spec := by
  intro n
  simp only [A089508, Nat.add_sub_cancel]

end A089508

/-! ## A089508.P6287389914826581898

`∑[A033891(n)]-1`
-/

namespace A089508.P6287389914826581898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089508.P6287389914826581898

namespace A089508

/-- `∑[A033891(n)]-1` -/
def P6287389914826581898.Spec : Prop :=
  ∀ n, P6287389914826581898.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P12238258824275340755

`∑[A081009(n)]+n`
-/

namespace A089508.P12238258824275340755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A089508.P12238258824275340755

namespace A089508

/-- `∑[A081009(n)]+n` -/
def P12238258824275340755.Spec : Prop :=
  ∀ n, P12238258824275340755.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P12331894221832702613

`A081018(n+1)-1`
-/

namespace A089508.P12331894221832702613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 (n + 1) - 1

end

end A089508.P12331894221832702613

namespace A089508

/-- `A081018(n+1)-1` -/
def P12331894221832702613.Spec : Prop :=
  ∀ n, P12331894221832702613.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P17799494761915394377

`A080143(2*n)+1`
-/

namespace A089508.P17799494761915394377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080143 (2 * n) + 1

end

end A089508.P17799494761915394377

namespace A089508

/-- `A080143(2*n)+1` -/
def P17799494761915394377.Spec : Prop :=
  ∀ n, P17799494761915394377.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P2707990822387497660

`A206351(n+2)-2`
-/

namespace A089508.P2707990822387497660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206351 (n + 2) - 2

end

end A089508.P2707990822387497660

namespace A089508

/-- `A206351(n+2)-2` -/
def P2707990822387497660.Spec : Prop :=
  ∀ n, P2707990822387497660.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P2728420525491414579

`A260259(2*(n+1))`
-/

namespace A089508.P2728420525491414579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (2 * (n + 1))

end

end A089508.P2728420525491414579

namespace A089508

/-- `A260259(2*(n+1))` -/
def P2728420525491414579.Spec : Prop :=
  ∀ n, P2728420525491414579.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P3732148628666605779

`A111569(4*(n+1))`
-/

namespace A089508.P3732148628666605779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (4 * (n + 1))

end

end A089508.P3732148628666605779

namespace A089508

/-- `A111569(4*(n+1))` -/
def P3732148628666605779.Spec : Prop :=
  ∀ n, P3732148628666605779.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P17308173027085488486

`A192919(Δ[n²])+1`
-/

namespace A089508.P17308173027085488486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192919 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A089508.P17308173027085488486

namespace A089508

/-- `A192919(Δ[n²])+1` -/
def P17308173027085488486.Spec : Prop :=
  ∀ n, P17308173027085488486.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P16965544818374632004

`A166536(Δ[n²])-2`
-/

namespace A089508.P16965544818374632004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166536 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A089508.P16965544818374632004

namespace A089508

/-- `A166536(Δ[n²])-2` -/
def P16965544818374632004.Spec : Prop :=
  ∀ n, P16965544818374632004.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P17033904775562490468

`A080145(Δ[n²])+n`
-/

namespace A089508.P17033904775562490468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080145 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A089508.P17033904775562490468

namespace A089508

/-- `A080145(Δ[n²])+n` -/
def P17033904775562490468.Spec : Prop :=
  ∀ n, P17033904775562490468.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P8048303572458238822

`∑[∑[A056914(n)]]+n`
-/

namespace A089508.P8048303572458238822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056914 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A089508.P8048303572458238822

namespace A089508

/-- `∑[∑[A056914(n)]]+n` -/
def P8048303572458238822.Spec : Prop :=
  ∀ n, P8048303572458238822.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P1265077468187476468

`∑[A172968(n+1)]-1`
-/

namespace A089508.P1265077468187476468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089508.P1265077468187476468

namespace A089508

/-- `∑[A172968(n+1)]-1` -/
def P1265077468187476468.Spec : Prop :=
  ∀ n, P1265077468187476468.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P17308023929252667481

`∑[A048575(2*n)]-1`
-/

namespace A089508.P17308023929252667481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089508.P17308023929252667481

namespace A089508

/-- `∑[A048575(2*n)]-1` -/
def P17308023929252667481.Spec : Prop :=
  ∀ n, P17308023929252667481.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P5055281521463256478

`Δ[A180665(2*n)]-1`
-/

namespace A089508.P5055281521463256478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180665 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A089508.P5055281521463256478

namespace A089508

/-- `Δ[A180665(2*n)]-1` -/
def P5055281521463256478.Spec : Prop :=
  ∀ n, P5055281521463256478.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P3881160615155991235

`A001654(2*(n+1))-1`
-/

namespace A089508.P3881160615155991235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (2 * (n + 1)) - 1

end

end A089508.P3881160615155991235

namespace A089508

/-- `A001654(2*(n+1))-1` -/
def P3881160615155991235.Spec : Prop :=
  ∀ n, P3881160615155991235.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P5447056135126698263

`A059840(2*n+3)-1`
-/

namespace A089508.P5447056135126698263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (2 * n + 3) - 1

end

end A089508.P5447056135126698263

namespace A089508

/-- `A059840(2*n+3)-1` -/
def P5447056135126698263.Spec : Prop :=
  ∀ n, P5447056135126698263.a n = A089508 (n + 1)

end A089508

/-! ## A089508.P14600902711875996340

`A226205(2*n+3)-2`
-/

namespace A089508.P14600902711875996340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (2 * n + 3) - 2

end

end A089508.P14600902711875996340

namespace A089508

/-- `A226205(2*n+3)-2` -/
def P14600902711875996340.Spec : Prop :=
  ∀ n, P14600902711875996340.a n = A089508 (n + 1)

end A089508

/-!
# A089509: a(n) = Kronecker(7/n).

The programs for A089509, the canonical program `A089509.P11081170024757819098` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089509 has offset 1).

The definition of A089509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089509.P2122697570632360465

`A390615(A000265(n+1))`
-/

namespace A089509.P2122697570632360465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390615 (A000265 (n + 1)).toNat

end

end A089509.P2122697570632360465

namespace A089509

/-- `A390615(A000265(n+1))` -/
def P2122697570632360465.Spec : Prop :=
  ∀ n, P2122697570632360465.a n = A089509 (n + 1)

end A089509

/-! ## A089509.P9032921385038209329

`A390615(A065330(n+1))`
-/

namespace A089509.P9032921385038209329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390615 (A065330 (n + 1)).toNat

end

end A089509.P9032921385038209329

namespace A089509

/-- `A390615(A065330(n+1))` -/
def P9032921385038209329.Spec : Prop :=
  ∀ n, P9032921385038209329.a n = A089509 (n + 1)

end A089509

/-! ## A089509.P6231921987436625091

`∑{d}[n+1, A008683(#)*A035189((n+1)/#)]`
-/

namespace A089509.P6231921987436625091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A035189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A089509.P6231921987436625091

namespace A089509

/-- `∑{d}[n+1, A008683(#)*A035189((n+1)/#)]` -/
def P6231921987436625091.Spec : Prop :=
  ∀ n, P6231921987436625091.a n = A089509 (n + 1)

end A089509

/-! ## A089509.P4397432858088082502

`∑{d}[n+1, A035210(#)*A087003((n+1)/#)]`
-/

namespace A089509.P4397432858088082502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035210 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A089509.P4397432858088082502

namespace A089509

/-- `∑{d}[n+1, A035210(#)*A087003((n+1)/#)]` -/
def P4397432858088082502.Spec : Prop :=
  ∀ n, P4397432858088082502.a n = A089509 (n + 1)

end A089509

/-! ## A089509.P11081170024757819098

`A034947(n+1)*A175629(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A089509

/-- `A034947(n+1)*A175629(n+1)` -/
def P11081170024757819098.Spec : Prop :=
  ∀ n, P11081170024757819098.a n = A089509 (n + 1)

theorem P11081170024757819098.correct : P11081170024757819098.Spec := by
  intro n
  simp only [A089509, Nat.add_sub_cancel]

end A089509

/-! ## A089509.P1185418557234792271

`A121238(n+1)*A175629(n+1)`
-/

namespace A089509.P1185418557234792271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 (n + 1) * A175629 (n + 1)

end

end A089509.P1185418557234792271

namespace A089509

/-- `A121238(n+1)*A175629(n+1)` -/
def P1185418557234792271.Spec : Prop :=
  ∀ n, P1185418557234792271.a n = A089509 (n + 1)

end A089509

/-! ## A089509.P5035522747313961971

`A175629(A000027(n+1))/A034947(n+1)`
-/

namespace A089509.P5035522747313961971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175629 (A000027 (n + 1)).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A089509.P5035522747313961971

namespace A089509

/-- `A175629(A000027(n+1))/A034947(n+1)` -/
def P5035522747313961971.Spec : Prop :=
  ∀ n, P5035522747313961971.a n = (A089509 (n + 1) : ℚ)

end A089509

/-! ## A089509.P9956184675738386662

`A175629(A005843(n+1))/A034947(n+1)`
-/

namespace A089509.P9956184675738386662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175629 (A005843 (n + 1)).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A089509.P9956184675738386662

namespace A089509

/-- `A175629(A005843(n+1))/A034947(n+1)` -/
def P9956184675738386662.Spec : Prop :=
  ∀ n, P9956184675738386662.a n = (A089509 (n + 1) : ℚ)

end A089509

/-! ## A089509.P14403570410434456438

`A390615(A166466(n+1))`
-/

namespace A089509.P14403570410434456438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390615 (A166466 (n + 1)).toNat

end

end A089509.P14403570410434456438

namespace A089509

/-- `A390615(A166466(n+1))` -/
def P14403570410434456438.Spec : Prop :=
  ∀ n, P14403570410434456438.a n = A089509 (n + 1)

end A089509

/-! ## A089509.P8736273012298747974

`A175629(A307266(n+1))/A034947(n+1)`
-/

namespace A089509.P8736273012298747974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175629 (A307266 (n + 1)).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A089509.P8736273012298747974

namespace A089509

/-- `A175629(A307266(n+1))/A034947(n+1)` -/
def P8736273012298747974.Spec : Prop :=
  ∀ n, P8736273012298747974.a n = (A089509 (n + 1) : ℚ)

end A089509

/-! ## A089509.P6668280994514332195

`A390615(A394497(n+1))`
-/

namespace A089509.P6668280994514332195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390615 (A394497 (n + 1)).toNat

end

end A089509.P6668280994514332195

namespace A089509

/-- `A390615(A394497(n+1))` -/
def P6668280994514332195.Spec : Prop :=
  ∀ n, P6668280994514332195.a n = A089509 (n + 1)

end A089509

/-! ## A089509.P11305842181638992737

`A215200(A000217(n+8)-7)`
-/

namespace A089509.P11305842181638992737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215200 (A000217 (n + 8) - 7).toNat

end

end A089509.P11305842181638992737

namespace A089509

/-- `A215200(A000217(n+8)-7)` -/
def P11305842181638992737.Spec : Prop :=
  ∀ n, P11305842181638992737.a n = A089509 (n + 1)

end A089509

/-! ## A089509.P12556962511521528054

`A215200(A000124(n+8)-8)`
-/

namespace A089509.P12556962511521528054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215200 (A000124 (n + 8) - 8).toNat

end

end A089509.P12556962511521528054

namespace A089509

/-- `A215200(A000124(n+8)-8)` -/
def P12556962511521528054.Spec : Prop :=
  ∀ n, P12556962511521528054.a n = A089509 (n + 1)

end A089509

/-! ## A089509.P9447739902853497380

`A215200(A000096(n+6)+n+2)`
-/

namespace A089509.P9447739902853497380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215200 (A000096 (n + 6) + (n + 2 : ℤ)).toNat

end

end A089509.P9447739902853497380

namespace A089509

/-- `A215200(A000096(n+6)+n+2)` -/
def P9447739902853497380.Spec : Prop :=
  ∀ n, P9447739902853497380.a n = A089509 (n + 1)

end A089509

/-!
# A089510: A periodic sequence with period length 30.

The programs for A089510, the canonical program `A089510.P5048394269918529553` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089510 has offset 1).

The definition of A089510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089510.P5048394269918529553

`A182067(n+1)-A182067(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089510

/-- `A182067(n+1)-A182067(n)` -/
def P5048394269918529553.Spec : Prop :=
  ∀ n, P5048394269918529553.a n = A089510 (n + 1)

theorem P5048394269918529553.correct : P5048394269918529553.Spec := by
  intro n
  simp only [A089510, Nat.add_sub_cancel]

end A089510

/-!
# A089512: Denominators used in the computation of the column sequences of array A078739 ((2,2)-Stirling2).

The programs for A089512, there is no canonical definition to state claims against.
-/

/-! ## A089512.P11526430153815822126

`A087127(A135276(n+1))`
-/

namespace A089512.P11526430153815822126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087127 (A135276 (n + 1)).toNat

end

end A089512.P11526430153815822126

/-! ## A089512.P4660785533890020726

`∏[A029579(n)]*ratio[A158416(n)]`
-/

namespace A089512.P4660785533890020726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A089512.P4660785533890020726

/-! ## A089512.P2761056551371119724

`A062154(A092530(n)-A002620(n))`
-/

namespace A089512.P2761056551371119724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062154 (A092530 n - A002620 n).toNat

end

end A089512.P2761056551371119724

/-! ## A089512.P11712831844177713528

`A087127(A008619(n)*A052938(n))`
-/

namespace A089512.P11712831844177713528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087127 (A008619 n * A052938 n).toNat

end

end A089512.P11712831844177713528

/-! ## A089512.P10692029730592397857

`A087127(eq[A057427(n), A181544(n)])`
-/

namespace A089512.P10692029730592397857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087127 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089512.P10692029730592397857

/-!
# A089513: Third column of triangle A089504.

The programs for A089513, the canonical program `A089513.P14577992476362186867` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089513 has offset 0).

The definition of A089513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089513.P14577992476362186867

`6^n*(5*10^(n+1)-3*2^(2*n+3)+1)/27`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A089513

/-- `6^n*(5*10^(n+1)-3*2^(2*n+3)+1)/27` -/
def P14577992476362186867.Spec : Prop :=
  ∀ n, P14577992476362186867.a n = (A089513 n : ℚ)

end A089513

/-! ## A089513.P3206327383346488870

`lcm(3^n*∑[4^n*∑[(5/2)^n]], 2^n)`
-/

namespace A089513.P3206327383346488870
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) / 2) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((3 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))) (2 ^ n : ℤ)

end

end A089513.P3206327383346488870

namespace A089513

/-- `lcm(3^n*∑[4^n*∑[(5/2)^n]], 2^n)` -/
def P3206327383346488870.Spec : Prop :=
  ∀ n, (P3206327383346488870.a n : ℤ) = A089513 n

end A089513

/-! ## A089513.P17515525072616703684

`floor(∑[4^n*∑[(5/2)^n]]*A000400(n))`
-/

namespace A089513.P17515525072616703684
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) / 2) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) * (A000400 n : ℚ)⌋

end

end A089513.P17515525072616703684

namespace A089513

/-- `floor(∑[4^n*∑[(5/2)^n]]*A000400(n))` -/
def P17515525072616703684.Spec : Prop :=
  ∀ n, P17515525072616703684.a n = A089513 n

end A089513

/-!
# A089514: Fourth column of triangle A089504.

The programs for A089514, there is no canonical definition to state claims against.
-/

/-! ## A089514.P4012003250509517214

`6^n*A080250(n)`
-/

namespace A089514.P4012003250509517214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A080250 n

end

end A089514.P4012003250509517214

/-! ## A089514.P12300130563108009856

`∑[A000079(n)*A016299(n)]*A000400(n)`
-/

namespace A089514.P12300130563108009856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000400 n

end

end A089514.P12300130563108009856

/-! ## A089514.P15703966536676010745

`∑[A011782(n+1)*A016299(n)]*A000400(n)`
-/

namespace A089514.P15703966536676010745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A016299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000400 n

end

end A089514.P15703966536676010745

/-! ## A089514.P4768802395034468658

`∑[A016116(2*n)*A016299(n)]*A000400(n)`
-/

namespace A089514.P4768802395034468658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) * A016299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000400 n

end

end A089514.P4768802395034468658

/-!
# A089523: Primes p such that mu(p+1) = 1; that is, p+1 is squarefree and has an even number of distinct prime factors, where mu is the Moebius function.

The programs for A089523, the canonical program `A089523.P7576486393653174238` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089523 has offset 1).

The definition of A089523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5010 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089523.P7576486393653174238

`∩[A049097(n+1), A062304(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A089523

/-- `∩[A049097(n+1), A062304(n+1)]` -/
def P7576486393653174238.Spec : Prop :=
  ∀ n, (P7576486393653174238.a n : ℤ) = A089523 (n + 1)

theorem P7576486393653174238.correct : P7576486393653174238.Spec := by
  intro n
  simp only [A089523, Nat.add_sub_cancel]

end A089523

/-! ## A089523.P12151387268632659198

`∩[A062304(n+1), A065301(n+1)]`
-/

namespace A089523.P12151387268632659198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P12151387268632659198

namespace A089523

/-- `∩[A062304(n+1), A065301(n+1)]` -/
def P12151387268632659198.Spec : Prop :=
  ∀ n, (P12151387268632659198.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P4012325453536660307

`∩[A002144(n+1), A062304(n+1)]`
-/

namespace A089523.P4012325453536660307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P4012325453536660307

namespace A089523

/-- `∩[A002144(n+1), A062304(n+1)]` -/
def P4012325453536660307.Spec : Prop :=
  ∀ n, (P4012325453536660307.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P683462801205147629

`∩[A002313(n+1), A062304(n+1)]`
-/

namespace A089523.P683462801205147629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P683462801205147629

namespace A089523

/-- `∩[A002313(n+1), A062304(n+1)]` -/
def P683462801205147629.Spec : Prop :=
  ∀ n, (P683462801205147629.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P488725289201685905

`∩[A055025(n+1), A062304(n+1)]`
-/

namespace A089523.P488725289201685905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P488725289201685905

namespace A089523

/-- `∩[A055025(n+1), A062304(n+1)]` -/
def P488725289201685905.Spec : Prop :=
  ∀ n, (P488725289201685905.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P17890743195307569985

`∩[A062304(n+1), A120960(n+1)]`
-/

namespace A089523.P17890743195307569985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P17890743195307569985

namespace A089523

/-- `∩[A062304(n+1), A120960(n+1)]` -/
def P17890743195307569985.Spec : Prop :=
  ∀ n, (P17890743195307569985.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P10534592008225657921

`∩[A062304(n+1), A085759(n+1)]`
-/

namespace A089523.P10534592008225657921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P10534592008225657921

namespace A089523

/-- `∩[A062304(n+1), A085759(n+1)]` -/
def P10534592008225657921.Spec : Prop :=
  ∀ n, (P10534592008225657921.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P7403349668585683095

`∩[A062304(n+1), A175768(n+1)]`
-/

namespace A089523.P7403349668585683095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P7403349668585683095

namespace A089523

/-- `∩[A062304(n+1), A175768(n+1)]` -/
def P7403349668585683095.Spec : Prop :=
  ∀ n, (P7403349668585683095.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P9714411678045424161

`∩[A062304(n+1), A125018(n+1)]`
-/

namespace A089523.P9714411678045424161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P9714411678045424161

namespace A089523

/-- `∩[A062304(n+1), A125018(n+1)]` -/
def P9714411678045424161.Spec : Prop :=
  ∀ n, (P9714411678045424161.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P2731196650737856818

`∩[A049092(n+1), A062304(n+1)]`
-/

namespace A089523.P2731196650737856818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P2731196650737856818

namespace A089523

/-- `∩[A049092(n+1), A062304(n+1)]` -/
def P2731196650737856818.Spec : Prop :=
  ∀ n, (P2731196650737856818.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P5141261128741165095

`∩[A062304(n+1), A191218(n+1)]`
-/

namespace A089523.P5141261128741165095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P5141261128741165095

namespace A089523

/-- `∩[A062304(n+1), A191218(n+1)]` -/
def P5141261128741165095.Spec : Prop :=
  ∀ n, (P5141261128741165095.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P4386256934094628430

`∩[A062304(n+1), A281292(n+1)]`
-/

namespace A089523.P4386256934094628430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P4386256934094628430

namespace A089523

/-- `∩[A062304(n+1), A281292(n+1)]` -/
def P4386256934094628430.Spec : Prop :=
  ∀ n, (P4386256934094628430.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P5740734301289937456

`∩[A062304(n+1), A224450(n+1)]`
-/

namespace A089523.P5740734301289937456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P5740734301289937456

namespace A089523

/-- `∩[A062304(n+1), A224450(n+1)]` -/
def P5740734301289937456.Spec : Prop :=
  ∀ n, (P5740734301289937456.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P7204536338223556307

`∩[A062304(n+1), A065300(n+1)]`
-/

namespace A089523.P7204536338223556307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P7204536338223556307

namespace A089523

/-- `∩[A062304(n+1), A065300(n+1)]` -/
def P7204536338223556307.Spec : Prop :=
  ∀ n, (P7204536338223556307.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P587109540876173097

`∩[A003653(n+1), A062304(n+1)]`
-/

namespace A089523.P587109540876173097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P587109540876173097

namespace A089523

/-- `∩[A003653(n+1), A062304(n+1)]` -/
def P587109540876173097.Spec : Prop :=
  ∀ n, (P587109540876173097.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P2563765016328182931

`∩[A062304(n+1), A231754(n+1)]`
-/

namespace A089523.P2563765016328182931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P2563765016328182931

namespace A089523

/-- `∩[A062304(n+1), A231754(n+1)]` -/
def P2563765016328182931.Spec : Prop :=
  ∀ n, (P2563765016328182931.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P292596786364754124

`∩[A004613(n+1), A062304(n+1)]`
-/

namespace A089523.P292596786364754124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P292596786364754124

namespace A089523

/-- `∩[A004613(n+1), A062304(n+1)]` -/
def P292596786364754124.Spec : Prop :=
  ∀ n, (P292596786364754124.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P15351293005173234294

`∩[A008846(n+1), A062304(n+1)]`
-/

namespace A089523.P15351293005173234294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089523.P15351293005173234294

namespace A089523

/-- `∩[A008846(n+1), A062304(n+1)]` -/
def P15351293005173234294.Spec : Prop :=
  ∀ n, (P15351293005173234294.a n : ℤ) = A089523 (n + 1)

end A089523

/-! ## A089523.P1441299972485286449

`p?[n*A008683(n+1)]`
-/

namespace A089523.P1441299972485286449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089523.P1441299972485286449

namespace A089523

/-- `p?[n*A008683(n+1)]` -/
def P1441299972485286449.Spec : Prop :=
  ∀ n, P1441299972485286449.a n = A089523 (n + 1)

end A089523

/-! ## A089523.P7144247974987479334

`p?[and(n+1, -A008683(n+2))]`
-/

namespace A089523.P7144247974987479334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-A008683 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089523.P7144247974987479334

namespace A089523

/-- `p?[and(n+1, -A008683(n+2))]` -/
def P7144247974987479334.Spec : Prop :=
  ∀ n, P7144247974987479334.a n = A089523 (n + 1)

end A089523

/-!
# A089525: A089450 indexed by A000040.

The programs for A089525, there is no canonical definition to state claims against.
-/

/-! ## A089525.P44695076719251454

`A000720(A089450(n+1)+1)`
-/

namespace A089525.P44695076719251454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089450 (n + 1) + 1).toNat

end

end A089525.P44695076719251454

/-!
# A089526: Numbers n such that 2*p(n)+3 and 2*p(n+1)+3 are consecutive primes, where p(i) denotes the i-th prime.

The programs for A089526, there is no canonical definition to state claims against.
-/

/-! ## A089526.P760605217240686663

`A000720(floor(A089528(n+1)/2))`
-/

namespace A089526.P760605217240686663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(A089528 (n + 1) : ℚ) / 2⌋.toNat

end

end A089526.P760605217240686663

/-! ## A089526.P504257695329563571

`A000720((A089528(n+1)-1)/2)`
-/

namespace A089526.P504257695329563571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A089528 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A089526.P504257695329563571

/-! ## A089526.P5546491381557699375

`A061395((A089528(n+1)-3)/2)`
-/

namespace A089526.P5546491381557699375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A089528 (n + 1) - 3 : ℚ) / 2)).toNat

end

end A089526.P5546491381557699375

/-! ## A089526.P12143356887684920978

`A061395(A089528(n+1)-3)`
-/

namespace A089526.P12143356887684920978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A089528 (n + 1) - 3).toNat

end

end A089526.P12143356887684920978

/-! ## A089526.P4071220695665038954

`∑{d}[A006530(A089528(n+1)-3), A000720(#)]`
-/

namespace A089526.P4071220695665038954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089528 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A089526.P4071220695665038954

/-! ## A089526.P490018611419077812

`∑{d}[A000010(A089528(n+1)-3)+1, A000720(#)]`
-/

namespace A089526.P490018611419077812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A089528 (n + 1) - 3).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A089526.P490018611419077812

/-! ## A089526.P12070258675900333322

`A316431(A089528(n+1)-3)`
-/

namespace A089526.P12070258675900333322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (A089528 (n + 1) - 3).toNat

end

end A089526.P12070258675900333322

/-!
# A089527: p(k) such that 2*p(k)+3 and 2*p(k+1) + 3 are consecutive primes, where p(i) denotes the i-th prime.

The programs for A089527, there is no canonical definition to state claims against.
-/

/-! ## A089527.P6529769465953402823

`(A089528(n+1)-3)/2`
-/

namespace A089527.P6529769465953402823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089528 (n + 1) - 3 : ℚ) / 2

end

end A089527.P6529769465953402823

/-! ## A089527.P4270782470959648595

`A000040(A089526(n+1))`
-/

namespace A089527.P4270782470959648595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A089526 (n + 1)).toNat

end

end A089527.P4270782470959648595

/-! ## A089527.P1504262323602644703

`A023569(A089529(n+1))`
-/

namespace A089527.P1504262323602644703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023569 (A089529 (n + 1)).toNat

end

end A089527.P1504262323602644703

/-! ## A089527.P8729096874929981076

`A008578(A089526(n+1)+1)`
-/

namespace A089527.P8729096874929981076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A089526 (n + 1) + 1).toNat

end

end A089527.P8729096874929981076

/-! ## A089527.P10473838042393251416

`A045344(A089526(n+1)-1)`
-/

namespace A089527.P10473838042393251416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A089526 (n + 1) - 1).toNat

end

end A089527.P10473838042393251416

/-!
# A089528: Primes p of the form 2*prime(k) + 3 such that 2*prime(k+1) + 3 is the next prime after p.

The programs for A089528, there is no canonical definition to state claims against.
-/

/-! ## A089528.P1454749922618753258

`2*A089527(n+1)+3`
-/

namespace A089528.P1454749922618753258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089527 (n + 1) + 3

end

end A089528.P1454749922618753258

/-! ## A089528.P9487989089420450788

`A073704(A089526(n+1))`
-/

namespace A089528.P9487989089420450788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073704 (A089526 (n + 1)).toNat

end

end A089528.P9487989089420450788

/-! ## A089528.P10100050728252404827

`or(A000007(n), A072055(A089526(n+1)))+2`
-/

namespace A089528.P10100050728252404827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A072055 (A089526 (n + 1)).toNat) + 2

end

end A089528.P10100050728252404827

/-! ## A089528.P15446961879304309740

`or(A000122(n), A072055(A089526(n+1)))+2`
-/

namespace A089528.P15446961879304309740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A072055 (A089526 (n + 1)).toNat) + 2

end

end A089528.P15446961879304309740

/-! ## A089528.P5408592234383611083

`or(A040001(n), A072055(A089526(n+1)))+2`
-/

namespace A089528.P5408592234383611083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040001 n) (A072055 (A089526 (n + 1)).toNat) + 2

end

end A089528.P5408592234383611083

/-! ## A089528.P801806505791612627

`abs(A033999(n))+A072055(A089526(n+1))+1`
-/

namespace A089528.P801806505791612627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| + (A072055 (A089526 (n + 1)).toNat + 1)

end

end A089528.P801806505791612627

/-! ## A089528.P10086496190153359842

`A057979(2*n)+A072055(A089526(n+1))+1`
-/

namespace A089528.P10086496190153359842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) + (A072055 (A089526 (n + 1)).toNat + 1)

end

end A089528.P10086496190153359842

/-! ## A089528.P18094372327967304576

`or(A000002(n+1), A072055(A089526(n+1)))+2`
-/

namespace A089528.P18094372327967304576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000002 (n + 1)) (A072055 (A089526 (n + 1)).toNat) + 2

end

end A089528.P18094372327967304576

/-! ## A089528.P10439930238312329157

`or(A000493(n+4)+1, A072055(A089526(n+1)))+2`
-/

namespace A089528.P10439930238312329157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000493 (n + 4) + 1) (A072055 (A089526 (n + 1)).toNat) + 2

end

end A089528.P10439930238312329157

/-! ## A089528.P4036138742696261953

`and(1, A000040(n+1))^n+A072055(A089526(n+1))+1`
-/

namespace A089528.P4036138742696261953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) ^ n + (A072055 (A089526 (n + 1)).toNat + 1)

end

end A089528.P4036138742696261953

/-! ## A089528.P18303967411500602478

`A061704(A000040(n+3))+A072055(A089526(n+1))+1`
-/

namespace A089528.P18303967411500602478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A000040 (n + 3)).toNat + (A072055 (A089526 (n + 1)).toNat + 1)

end

end A089528.P18303967411500602478

/-!
# A089529: A089528 indexed by A000040.

The programs for A089529, there is no canonical definition to state claims against.
-/

/-! ## A089529.P7046891558105894383

`A000720(A089528(n+1)+1)`
-/

namespace A089529.P7046891558105894383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089528 (n + 1) + 1).toNat

end

end A089529.P7046891558105894383

/-! ## A089529.P15779943766776653806

`A000720(A089528(n+1))`
-/

namespace A089529.P15779943766776653806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089528 (n + 1)).toNat

end

end A089529.P15779943766776653806

/-! ## A089529.P11530885571631014617

`A061395(p?[A089528(n+1)])`
-/

namespace A089529.P11530885571631014617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089529.P11530885571631014617

/-! ## A089529.P9409612474729454637

`A061395(2*A089528(n+1))`
-/

namespace A089529.P9409612474729454637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A089528 (n + 1)).toNat

end

end A089529.P9409612474729454637

/-! ## A089529.P2210230061841867326

`A316431(2*A089528(n+1))`
-/

namespace A089529.P2210230061841867326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A089528 (n + 1)).toNat

end

end A089529.P2210230061841867326

/-!
# A089530: A023204 indexed by A000040.

The programs for A089530, the canonical program `A089530.P4943488569424409347` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089530 has offset 1).

The definition of A089530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089530.P11108184916717873700

`eq[3, A073703(n+1)]+1`
-/

namespace A089530.P11108184916717873700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089530.P11108184916717873700

namespace A089530

/-- `eq[3, A073703(n+1)]+1` -/
def P11108184916717873700.Spec : Prop :=
  ∀ n, (P11108184916717873700.a n : ℤ) = A089530 (n + 1)

end A089530

/-! ## A089530.P12548427361005430086

`lt[A073703(n+1), 4]+char[A137241(n)]`
-/

namespace A089530.P12548427361005430086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

end

end A089530.P12548427361005430086

namespace A089530

/-- `lt[A073703(n+1), 4]+char[A137241(n)]` -/
def P12548427361005430086.Spec : Prop :=
  ∀ n, (P12548427361005430086.a n : ℤ) = A089530 (n + 1)

end A089530

/-! ## A089530.P402029934370319081

`A000720(A023204(n+1))`
-/

namespace A089530.P402029934370319081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A023204 (n + 1)).toNat

end

end A089530.P402029934370319081

namespace A089530

/-- `A000720(A023204(n+1))` -/
def P402029934370319081.Spec : Prop :=
  ∀ n, P402029934370319081.a n = A089530 (n + 1)

end A089530

/-! ## A089530.P2397237648301285308

`A000720(p?[A005097(n+1)-1])`
-/

namespace A089530.P2397237648301285308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089530.P2397237648301285308

namespace A089530

/-- `A000720(p?[A005097(n+1)-1])` -/
def P2397237648301285308.Spec : Prop :=
  ∀ n, P2397237648301285308.a n = A089530 (n + 1)

end A089530

/-! ## A089530.P11602324375554486373

`A000720(p?[n*A101264(n+1)])`
-/

namespace A089530.P11602324375554486373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089530.P11602324375554486373

namespace A089530

/-- `A000720(p?[n*A101264(n+1)])` -/
def P11602324375554486373.Spec : Prop :=
  ∀ n, P11602324375554486373.a n = A089530 (n + 1)

end A089530

/-! ## A089530.P867879150436901747

`eq[1, A001222(A072055(n+1)+2)]+1`
-/

namespace A089530.P867879150436901747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072055 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089530.P867879150436901747

namespace A089530

/-- `eq[1, A001222(A072055(n+1)+2)]+1` -/
def P867879150436901747.Spec : Prop :=
  ∀ n, (P867879150436901747.a n : ℤ) = A089530 (n + 1)

end A089530

/-! ## A089530.P4943488569424409347

`record[(n+1)*A101264(A000040(n+1)+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089530

/-- `record[(n+1)*A101264(A000040(n+1)+1)]` -/
def P4943488569424409347.Spec : Prop :=
  ∀ n, P4943488569424409347.a n = A089530 (n + 1)

theorem P4943488569424409347.correct : P4943488569424409347.Spec := by
  intro n
  simp only [A089530, Nat.add_sub_cancel]

end A089530

/-! ## A089530.P473988315548560803

`record[n*A156707(A000040(n+1)+1)+1]`
-/

namespace A089530.P473988315548560803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A156707 (A000040 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089530.P473988315548560803

namespace A089530

/-- `record[n*A156707(A000040(n+1)+1)+1]` -/
def P473988315548560803.Spec : Prop :=
  ∀ n, P473988315548560803.a n = A089530 (n + 1)

end A089530

/-! ## A089530.P10212478660631169173

`eq[1, A001222(2*A000040(n+1)+3)]+1`
-/

namespace A089530.P10212478660631169173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A000040 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089530.P10212478660631169173

namespace A089530

/-- `eq[1, A001222(2*A000040(n+1)+3)]+1` -/
def P10212478660631169173.Spec : Prop :=
  ∀ n, (P10212478660631169173.a n : ℤ) = A089530 (n + 1)

end A089530

/-! ## A089530.P7772194088212407791

`lt[A001222(2*A040976(n+1)+7), 2]+1`
-/

namespace A089530.P7772194088212407791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A040976 (n + 1) + 7).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A089530.P7772194088212407791

namespace A089530

/-- `lt[A001222(2*A040976(n+1)+7), 2]+1` -/
def P7772194088212407791.Spec : Prop :=
  ∀ n, (P7772194088212407791.a n : ℤ) = A089530 (n + 1)

end A089530

/-! ## A089530.P9597583022937085998

`lt[A001222(2*p?[A206074(n+1)]+3), 2]+1`
-/

namespace A089530.P9597583022937085998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 3).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A089530.P9597583022937085998

namespace A089530

/-- `lt[A001222(2*p?[A206074(n+1)]+3), 2]+1` -/
def P9597583022937085998.Spec : Prop :=
  ∀ n, (P9597583022937085998.a n : ℤ) = A089530 (n + 1)

end A089530

/-! ## A089530.P16105932098679154375

`record[(n+1)*A156707(A065091(n+1)+1)+1]`
-/

namespace A089530.P16105932098679154375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A156707 (A065091 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089530.P16105932098679154375

namespace A089530

/-- `record[(n+1)*A156707(A065091(n+1)+1)+1]` -/
def P16105932098679154375.Spec : Prop :=
  ∀ n, P16105932098679154375.a n = A089530 (n + 1)

end A089530

/-! ## A089530.P3361023700475265596

`A061395(p?[A323161(2*n+1)-A323161(2*(n+1))])`
-/

namespace A089530.P3361023700475265596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (2 * n + 1) - A323161 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089530.P3361023700475265596

namespace A089530

/-- `A061395(p?[A323161(2*n+1)-A323161(2*(n+1))])` -/
def P3361023700475265596.Spec : Prop :=
  ∀ n, P3361023700475265596.a n = A089530 (n + 1)

end A089530

/-! ## A089530.P741838156988420522

`lt[A000005(A000040(n+1)+A000040(n+1)+3), 3]+1`
-/

namespace A089530.P741838156988420522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) + (A000040 (n + 1) + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A089530.P741838156988420522

namespace A089530

/-- `lt[A000005(A000040(n+1)+A000040(n+1)+3), 3]+1` -/
def P741838156988420522.Spec : Prop :=
  ∀ n, (P741838156988420522.a n : ℤ) = A089530 (n + 1)

end A089530

/-! ## A089530.P18087233627731972361

`A347103(p?[eq[2, A000005(2*n+3)]])`
-/

namespace A089530.P18087233627731972361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A089530.P18087233627731972361

namespace A089530

/-- `A347103(p?[eq[2, A000005(2*n+3)]])` -/
def P18087233627731972361.Spec : Prop :=
  ∀ n, P18087233627731972361.a n = A089530 (n + 1)

end A089530

/-! ## A089530.P4950788968520845112

`lt[A346778(A000040(n+1)+2), 2]+1`
-/

namespace A089530.P4950788968520845112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346778 (A000040 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A089530.P4950788968520845112

namespace A089530

/-- `lt[A346778(A000040(n+1)+2), 2]+1` -/
def P4950788968520845112.Spec : Prop :=
  ∀ n, (P4950788968520845112.a n : ℤ) = A089530 (n + 1)

end A089530

/-! ## A089530.P2442590502624050948

`A347103(p?[lt[A001222(2*(n+1)+1), 2]])`
-/

namespace A089530.P2442590502624050948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A089530.P2442590502624050948

namespace A089530

/-- `A347103(p?[lt[A001222(2*(n+1)+1), 2]])` -/
def P2442590502624050948.Spec : Prop :=
  ∀ n, P2442590502624050948.a n = A089530 (n + 1)

end A089530

/-! ## A089530.P16103028926925228937

`A347103(p?[lt[n, A006530(2*(n+1)+1)]])`
-/

namespace A089530.P16103028926925228937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A089530.P16103028926925228937

namespace A089530

/-- `A347103(p?[lt[n, A006530(2*(n+1)+1)]])` -/
def P16103028926925228937.Spec : Prop :=
  ∀ n, P16103028926925228937.a n = A089530 (n + 1)

end A089530

/-!
# A089531: Primes p such that (p-3)/2 is also prime.

The programs for A089531, there is no canonical definition to state claims against.
-/

/-! ## A089531.P12032703591579013679

`2*A023204(n+1)+3`
-/

namespace A089531.P12032703591579013679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023204 (n + 1) + 3

end

end A089531.P12032703591579013679

/-! ## A089531.P5384234248964503421

`A226754(n+1)/A023204(n+1)`
-/

namespace A089531.P5384234248964503421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226754 (n + 1) : ℚ) / (A023204 (n + 1) : ℚ)

end

end A089531.P5384234248964503421

/-! ## A089531.P5655946062730223093

`record[A387122(n+1)]`
-/

namespace A089531.P5655946062730223093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089531.P5655946062730223093

/-! ## A089531.P14838862764516674486

`p?[A129069(n+1)]`
-/

namespace A089531.P14838862764516674486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P14838862764516674486

/-! ## A089531.P15437999703883773913

`p?[A089241(n+1)+1]`
-/

namespace A089531.P15437999703883773913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P15437999703883773913

/-! ## A089531.P9616654874951416022

`p?[A072055(n+1)+2]`
-/

namespace A089531.P9616654874951416022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P9616654874951416022

/-! ## A089531.P4568773077877781639

`p?[A100484(n+1)+3]`
-/

namespace A089531.P4568773077877781639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P4568773077877781639

/-! ## A089531.P9660585171997199079

`p?[2*A008864(n+1)+1]`
-/

namespace A089531.P9660585171997199079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008864 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P9660585171997199079

/-! ## A089531.P10799812018235443358

`p?[2*A135731(n+1)+1]`
-/

namespace A089531.P10799812018235443358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135731 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P10799812018235443358

/-! ## A089531.P5551488286892355584

`p?[2*A052147(n+1)-1]`
-/

namespace A089531.P5551488286892355584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052147 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P5551488286892355584

/-! ## A089531.P5031797253214200199

`p?[2*A000040(n+1)+3]`
-/

namespace A089531.P5031797253214200199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P5031797253214200199

/-! ## A089531.P6643808255379876979

`A073704(A089530(n+1))`
-/

namespace A089531.P6643808255379876979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073704 (A089530 (n + 1)).toNat

end

end A089531.P6643808255379876979

/-! ## A089531.P17539742952896075337

`∩[A091301(n+1), A129069(n+1)]`
-/

namespace A089531.P17539742952896075337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089531.P17539742952896075337

/-! ## A089531.P8337424257641266667

`p?[A175221(n+1)+A156037(n+1)]`
-/

namespace A089531.P8337424257641266667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + A156037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P8337424257641266667

/-! ## A089531.P8423455881804389979

`p?[A000040(n+1)+A052147(n+1)+1]`
-/

namespace A089531.P8423455881804389979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A052147 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P8423455881804389979

/-! ## A089531.P1911716272001828215

`p?[A000040(n+1)+A008864(n+1)+2]`
-/

namespace A089531.P1911716272001828215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A008864 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089531.P1911716272001828215

/-! ## A089531.P4125265614130162988

`∩[A045352(n+1), A129069(n+1)]`
-/

namespace A089531.P4125265614130162988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089531.P4125265614130162988

/-! ## A089531.P11502810210832317964

`∩[A045442(n+1), A129069(n+1)]`
-/

namespace A089531.P11502810210832317964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089531.P11502810210832317964

/-! ## A089531.P9681924123913653383

`record[2*A023569(n+3)]+3`
-/

namespace A089531.P9681924123913653383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023569 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3

end

end A089531.P9681924123913653383

/-! ## A089531.P14522884893597500172

`A000040(A089532(n+1))`
-/

namespace A089531.P14522884893597500172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A089532 (n + 1)).toNat

end

end A089531.P14522884893597500172

/-!
# A089532: A089531 indexed by A000040.

The programs for A089532, the canonical program `A089532.P9564145114112840937` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089532 has offset 1).

The definition of A089532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089532.P9564145114112840937

`eq[2, A023574(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089532

/-- `eq[2, A023574(n+1)]+1` -/
def P9564145114112840937.Spec : Prop :=
  ∀ n, (P9564145114112840937.a n : ℤ) = A089532 (n + 1)

theorem P9564145114112840937.correct : P9564145114112840937.Spec := by
  intro n
  simp only [A089532, Nat.add_sub_cancel]

end A089532

/-! ## A089532.P15453274690802540959

`eq[2, A023574(gcd(n, C(2, n)))]`
-/

namespace A089532.P15453274690802540959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023574 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089532.P15453274690802540959

namespace A089532

/-- `eq[2, A023574(gcd(n, C(2, n)))]` -/
def P15453274690802540959.Spec : Prop :=
  ∀ n, (P15453274690802540959.a n : ℤ) = A089532 (n + 1)

end A089532

/-! ## A089532.P16870439079792370568

`eq[2, ∑{e}[A000040(n+1)-3, #]]+1`
-/

namespace A089532.P16870439079792370568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089532.P16870439079792370568

namespace A089532

/-- `eq[2, ∑{e}[A000040(n+1)-3, #]]+1` -/
def P16870439079792370568.Spec : Prop :=
  ∀ n, (P16870439079792370568.a n : ℤ) = A089532 (n + 1)

end A089532

/-! ## A089532.P3470696135047220257

`A000720(A089531(n+1))`
-/

namespace A089532.P3470696135047220257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089531 (n + 1)).toNat

end

end A089532.P3470696135047220257

namespace A089532

/-- `A000720(A089531(n+1))` -/
def P3470696135047220257.Spec : Prop :=
  ∀ n, P3470696135047220257.a n = A089532 (n + 1)

end A089532

/-! ## A089532.P11849321079692603964

`record[A061395(A129069(n+1))]`
-/

namespace A089532.P11849321079692603964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A129069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089532.P11849321079692603964

namespace A089532

/-- `record[A061395(A129069(n+1))]` -/
def P11849321079692603964.Spec : Prop :=
  ∀ n, P11849321079692603964.a n = A089532 (n + 1)

end A089532

/-! ## A089532.P12058838533038257846

`A061395(or(1, A089531(n+1)))`
-/

namespace A089532.P12058838533038257846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A089531 (n + 1))).toNat

end

end A089532.P12058838533038257846

namespace A089532

/-- `A061395(or(1, A089531(n+1)))` -/
def P12058838533038257846.Spec : Prop :=
  ∀ n, P12058838533038257846.a n = A089532 (n + 1)

end A089532

/-! ## A089532.P18066200349672109961

`A061395(2*A089531(n+1))`
-/

namespace A089532.P18066200349672109961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A089531 (n + 1)).toNat

end

end A089532.P18066200349672109961

namespace A089532

/-- `A061395(2*A089531(n+1))` -/
def P18066200349672109961.Spec : Prop :=
  ∀ n, P18066200349672109961.a n = A089532 (n + 1)

end A089532

/-! ## A089532.P10060987660037620356

`A099802(A023204(n+1)+2)`
-/

namespace A089532.P10060987660037620356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A023204 (n + 1) + 2).toNat

end

end A089532.P10060987660037620356

namespace A089532

/-- `A099802(A023204(n+1)+2)` -/
def P10060987660037620356.Spec : Prop :=
  ∀ n, P10060987660037620356.a n = A089532 (n + 1)

end A089532

/-! ## A089532.P8436336089792309102

`A003963(A089531(abs(xor(n, -1))))`
-/

namespace A089532.P8436336089792309102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A089531 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A089532.P8436336089792309102

namespace A089532

/-- `A003963(A089531(abs(xor(n, -1))))` -/
def P8436336089792309102.Spec : Prop :=
  ∀ n, P8436336089792309102.a n = A089532 (n + 1)

end A089532

/-! ## A089532.P12270783778283422046

`A204892(A089531(n+1)-2)`
-/

namespace A089532.P12270783778283422046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A089531 (n + 1) - 2).toNat

end

end A089532.P12270783778283422046

namespace A089532

/-- `A204892(A089531(n+1)-2)` -/
def P12270783778283422046.Spec : Prop :=
  ∀ n, P12270783778283422046.a n = A089532 (n + 1)

end A089532

/-!
# A089533: a(n)=(A089348(n)-1)/10n.

The programs for A089533, there is no canonical definition to state claims against.
-/

/-! ## A089533.P8112952545681395897

`A367970(2*(n+1))`
-/

namespace A089533.P8112952545681395897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367970 (2 * (n + 1))

end

end A089533.P8112952545681395897

/-! ## A089533.P17001226930568072892

`A016014(5*(n+1))`
-/

namespace A089533.P17001226930568072892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (5 * (n + 1))

end

end A089533.P17001226930568072892

/-! ## A089533.P14464207732113464044

`A034693(10*(n+1))`
-/

namespace A089533.P14464207732113464044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (10 * (n + 1))

end

end A089533.P14464207732113464044

/-! ## A089533.P696905309642236893

`A034693(A008592(n+1))%15`
-/

namespace A089533.P696905309642236893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034693 (A008592 (n + 1)).toNat) 15

end

end A089533.P696905309642236893

/-! ## A089533.P17293354652072513958

`floor(A070846(5*(n+1))/A017341(n))`
-/

namespace A089533.P17293354652072513958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070846 (5 * (n + 1)) : ℚ) / (A017341 n : ℚ)⌋

end

end A089533.P17293354652072513958

/-! ## A089533.P8906942502267571165

`floor(A034694(10*(n+1))/A017341(n))`
-/

namespace A089533.P8906942502267571165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034694 (10 * (n + 1)) : ℚ) / (A017341 n : ℚ)⌋

end

end A089533.P8906942502267571165

/-! ## A089533.P5424223873752659353

`floor(p?[A070846(5*(n+1))]/A017353(n))`
-/

namespace A089533.P5424223873752659353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A017353 n : ℚ)⌋

end

end A089533.P5424223873752659353

/-! ## A089533.P14898200484098685103

`or(A000007(n), A034693(A008592(n+1)))`
-/

namespace A089533.P14898200484098685103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A034693 (A008592 (n + 1)).toNat)

end

end A089533.P14898200484098685103

/-! ## A089533.P6198638387933744321

`∑{d}[A034693(A008592(n+1)), A000010(#)]`
-/

namespace A089533.P6198638387933744321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A008592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A089533.P6198638387933744321

/-! ## A089533.P14008897333201984793

`∏{d}[A034693(A008592(n+1)), A014963(#)]`
-/

namespace A089533.P14008897333201984793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A008592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A089533.P14008897333201984793

/-! ## A089533.P6554811381588133653

`abs(A034693(A008592(n+1))-A000038(n))`
-/

namespace A089533.P6554811381588133653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034693 (A008592 (n + 1)).toNat - A000038 n|

end

end A089533.P6554811381588133653

/-! ## A089533.P6676542750013795011

`floor(A086507(A017341(n)+4)/A017365(n))`
-/

namespace A089533.P6676542750013795011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086507 (A017341 n + 4).toNat : ℚ) / (A017365 n : ℚ)⌋

end

end A089533.P6676542750013795011

/-! ## A089533.P9506037817741432416

`A034693(A008592(n+1))^A014963(gcd(n, n+1))`
-/

namespace A089533.P9506037817741432416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034693 (A008592 (n + 1)).toNat : ℚ) ^ (A014963 (Nat.gcd n (n + 1)) : ℤ)

end

end A089533.P9506037817741432416

/-! ## A089533.P18365003496927696039

`A034693(A008592(n+1))^A014963(A005101(n+2))`
-/

namespace A089533.P18365003496927696039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034693 (A008592 (n + 1)).toNat : ℚ) ^ (A014963 (A005101 (n + 2)).toNat : ℤ)

end

end A089533.P18365003496927696039

/-!
# A089534: A089348 indexed by A000040.

The programs for A089534, there is no canonical definition to state claims against.
-/

/-! ## A089534.P13400528060452745594

`A391765(A008592(n+1))`
-/

namespace A089534.P13400528060452745594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A008592 (n + 1)).toNat

end

end A089534.P13400528060452745594

/-! ## A089534.P16055824783281822275

`A391765(A380904(n+10))`
-/

namespace A089534.P16055824783281822275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A380904 (n + 10)).toNat

end

end A089534.P16055824783281822275

/-! ## A089534.P13505421166566564582

`A000720(A070849(2*(n+1)))`
-/

namespace A089534.P13505421166566564582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A070849 (2 * (n + 1))).toNat

end

end A089534.P13505421166566564582

/-! ## A089534.P3434692422191107797

`A000720(A070846(5*(n+1)))`
-/

namespace A089534.P3434692422191107797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A070846 (5 * (n + 1))).toNat

end

end A089534.P3434692422191107797

/-! ## A089534.P8772122765334946739

`A000720(A034694(10*(n+1)))`
-/

namespace A089534.P8772122765334946739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A034694 (10 * (n + 1))).toNat

end

end A089534.P8772122765334946739

/-! ## A089534.P5148895756302735619

`A000720(A086507(10*(n+1)))`
-/

namespace A089534.P5148895756302735619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A086507 (10 * (n + 1))).toNat

end

end A089534.P5148895756302735619

/-! ## A089534.P8579000660715381186

`A003963(p?[A070846(5*(n+1))])`
-/

namespace A089534.P8579000660715381186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089534.P8579000660715381186

/-! ## A089534.P10024170728801773196

`A049084(p?[A070846(5*(n+1))])`
-/

namespace A089534.P10024170728801773196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089534.P10024170728801773196

/-! ## A089534.P3841531391092540376

`A055396(p?[A070846(5*(n+1))])`
-/

namespace A089534.P3841531391092540376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089534.P3841531391092540376

/-! ## A089534.P7443091860353878203

`A056239(p?[A070846(5*(n+1))])`
-/

namespace A089534.P7443091860353878203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A089534.P7443091860353878203

/-!
# A089535: 

The programs for A089535, there is no canonical definition to state claims against.
-/

/-! ## A089535.P8830070157076959253

`A006127(A085745(n+1))`
-/

namespace A089535.P8830070157076959253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 (A085745 (n + 1)).toNat

end

end A089535.P8830070157076959253

/-!
# A089537: 

The programs for A089537, there is no canonical definition to state claims against.
-/

/-! ## A089537.P8969940185130999104

`A006127(A085745(n+1))/A089536(n+1)`
-/

namespace A089537.P8969940185130999104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006127 (A085745 (n + 1)).toNat : ℚ) / (A089536 (n + 1) : ℚ)

end

end A089537.P8969940185130999104

/-!
# A089538: A085747 indexed by A000040.

The programs for A089538, there is no canonical definition to state claims against.
-/

/-! ## A089538.P11234421646050032923

`A049084(A085747(n+1))`
-/

namespace A089538.P11234421646050032923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A085747 (n + 1)).toNat

end

end A089538.P11234421646050032923

/-! ## A089538.P7365092153707475069

`A297109(A085747(n+1)²)`
-/

namespace A089538.P7365092153707475069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A085747 (n + 1) ^ 2).toNat

end

end A089538.P7365092153707475069

/-! ## A089538.P15652484290372311187

`A297109(∏{d}[A085747(n+1), #])`
-/

namespace A089538.P15652484290372311187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A089538.P15652484290372311187

/-! ## A089538.P8814078919895987521

`A316524(∏{d}[A085747(n+1), #])`
-/

namespace A089538.P8814078919895987521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A089538.P8814078919895987521

/-! ## A089538.P3168177590917672107

`A297109(A085747(n+1)%A167499(n))`
-/

namespace A089538.P3168177590917672107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (Int.tmod (A085747 (n + 1)) (A167499 n)).toNat

end

end A089538.P3168177590917672107

/-! ## A089538.P655896396825166579

`∑{d}[A014963(A085747(n+1)), A000720(#)]`
-/

namespace A089538.P655896396825166579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A085747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A089538.P655896396825166579

/-! ## A089538.P7986512063897235022

`A297109(2*A085747(n+1)-A085747(n+1))`
-/

namespace A089538.P7986512063897235022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (2 * A085747 (n + 1) - A085747 (n + 1)).toNat

end

end A089538.P7986512063897235022

/-! ## A089538.P10717316762202881068

`A000720(A014963(A085747(n+1)))%A002808(n+1)`
-/

namespace A089538.P10717316762202881068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A014963 (A085747 (n + 1)).toNat).toNat) (A002808 (n + 1))

end

end A089538.P10717316762202881068

/-! ## A089538.P6178734070755745601

`A230980(∏{d}[A085747(n+1), #])`
-/

namespace A089538.P6178734070755745601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A089538.P6178734070755745601

/-!
# A089539: a(n) is the least semiprime > n!.

The programs for A089539, there is no canonical definition to state claims against.
-/

/-! ## A089539.P9646247654124541112

`A085747(n+1)+(n+1)!`
-/

namespace A089539.P9646247654124541112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085747 (n + 1) + (Nat.factorial (n + 1) : ℤ)

end

end A089539.P9646247654124541112

/-! ## A089539.P10064384780783131113

`A085747(n+1)+A000142(n+1)`
-/

namespace A089539.P10064384780783131113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085747 (n + 1) + A000142 (n + 1)

end

end A089539.P10064384780783131113

/-! ## A089539.P1401943776287853247

`A085747(n+1)+∏[A000027(n+1)]`
-/

namespace A089539.P1401943776287853247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085747 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089539.P1401943776287853247

/-! ## A089539.P847938000375382416

`A104035(∑[n+2])+A085747(n+1)`
-/

namespace A089539.P847938000375382416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (∑ j ∈ Finset.range (n + 1), f1 j) + A085747 (n + 1)

end

end A089539.P847938000375382416

/-! ## A089539.P1752615118615737341

`A089540(n+1)*A089541(n+1)`
-/

namespace A089539.P1752615118615737341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089540 (n + 1) * A089541 (n + 1)

end

end A089539.P1752615118615737341

/-!
# A089540: Lesser prime factor of semiprimes in A089539.

The programs for A089540, there is no canonical definition to state claims against.
-/

/-! ## A089540.P5937528280581062379

`A089539(n+1)/A089541(n+1)`
-/

namespace A089540.P5937528280581062379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089539 (n + 1) : ℚ) / (A089541 (n + 1) : ℚ)

end

end A089540.P5937528280581062379

/-! ## A089540.P4211833083682149993

`(A085747(n+1)+∏[n+1])/A089541(n+1)`
-/

namespace A089540.P4211833083682149993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085747 (n + 1) + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / (A089541 (n + 1) : ℚ)

end

end A089540.P4211833083682149993

/-! ## A089540.P9360584618426485103

`(A104035(∑[n+2])+A085747(n+1))/A089541(n+1)`
-/

namespace A089540.P9360584618426485103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104035 (∑ j ∈ Finset.range (n + 1), f1 j) + A085747 (n + 1) : ℚ) / (A089541 (n + 1) : ℚ)

end

end A089540.P9360584618426485103

/-! ## A089540.P12582888716695488949

`A000027((A085747(n+1)+(n+1)!)/A089541(n+1))`
-/

namespace A089540.P12582888716695488949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A085747 (n + 1) + (Nat.factorial (n + 1) : ℤ) : ℚ) / (A089541 (n + 1) : ℚ))).toNat

end

end A089540.P12582888716695488949

/-!
# A089541: Greater prime factor of semiprimes in A089539.

The programs for A089541, there is no canonical definition to state claims against.
-/

/-! ## A089541.P3217011551356462305

`A089539(n+1)/A089540(n+1)`
-/

namespace A089541.P3217011551356462305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089539 (n + 1) : ℚ) / (A089540 (n + 1) : ℚ)

end

end A089541.P3217011551356462305

/-! ## A089541.P8796157594979939052

`(A085747(n+1)+(n+1)!)/A089540(n+1)`
-/

namespace A089541.P8796157594979939052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085747 (n + 1) + (Nat.factorial (n + 1) : ℤ) : ℚ) / (A089540 (n + 1) : ℚ)

end

end A089541.P8796157594979939052

/-! ## A089541.P7231237211373472073

`(A085747(n+1)+A000142(n+1))/A089540(n+1)`
-/

namespace A089541.P7231237211373472073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085747 (n + 1) + A000142 (n + 1) : ℚ) / (A089540 (n + 1) : ℚ)

end

end A089541.P7231237211373472073

/-! ## A089541.P9130024192700527370

`(A104035(∑[n+2])+A085747(n+1))/A089540(n+1)`
-/

namespace A089541.P9130024192700527370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104035 (∑ j ∈ Finset.range (n + 1), f1 j) + A085747 (n + 1) : ℚ) / (A089540 (n + 1) : ℚ)

end

end A089541.P9130024192700527370

/-! ## A089541.P11968027499448432230

`(A085747(n+1)+∏[A000027(n+1)])/A089540(n+1)`
-/

namespace A089541.P11968027499448432230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A085747 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A089540 (n + 1) : ℚ)

end

end A089541.P11968027499448432230

/-!
# A089542: a(n) is the least semiprime >= n^n.

The programs for A089542, there is no canonical definition to state claims against.
-/

/-! ## A089542.P7556078528026720020

`A085753(n+1)+(n+1)^(n+1)`
-/

namespace A089542.P7556078528026720020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085753 (n + 1) + ((n + 1) ^ (n + 1) : ℤ)

end

end A089542.P7556078528026720020

/-! ## A089542.P10144509913784305156

`A089543(n+1)*A089544(n+1)`
-/

namespace A089542.P10144509913784305156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089543 (n + 1) * A089544 (n + 1)

end

end A089542.P10144509913784305156

/-! ## A089542.P16717543680141603119

`A037126(A011782(n)*A307555(n))*A089544(n+1)`
-/

namespace A089542.P16717543680141603119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A011782 n * A307555 n).toNat * A089544 (n + 1)

end

end A089542.P16717543680141603119

/-!
# A089543: Lesser prime factor of semiprimes in A089542.

The programs for A089543, there is no canonical definition to state claims against.
-/

/-! ## A089543.P5921912815759407415

`A089542(n+1)/A089544(n+1)`
-/

namespace A089543.P5921912815759407415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089542 (n + 1) : ℚ) / (A089544 (n + 1) : ℚ)

end

end A089543.P5921912815759407415

/-! ## A089543.P4479343315979615905

`(A085753(n+1)+(n+1)^(n+1))/A089544(n+1)`
-/

namespace A089543.P4479343315979615905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085753 (n + 1) + ((n + 1) ^ (n + 1) : ℤ) : ℚ) / (A089544 (n + 1) : ℚ)

end

end A089543.P4479343315979615905

/-! ## A089543.P2414841751894599748

`A037126(A011782(n)*A307555(n))`
-/

namespace A089543.P2414841751894599748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A011782 n * A307555 n).toNat

end

end A089543.P2414841751894599748

/-!
# A089544: Greater prime factor of semiprimes in A089542.

The programs for A089544, there is no canonical definition to state claims against.
-/

/-! ## A089544.P9314279157662047481

`A089542(n+1)/A089543(n+1)`
-/

namespace A089544.P9314279157662047481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089542 (n + 1) : ℚ) / (A089543 (n + 1) : ℚ)

end

end A089544.P9314279157662047481

/-! ## A089544.P6847323006356744877

`(A085753(n+1)+(n+1)^(n+1))/A089543(n+1)`
-/

namespace A089544.P6847323006356744877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085753 (n + 1) + ((n + 1) ^ (n + 1) : ℤ) : ℚ) / (A089543 (n + 1) : ℚ)

end

end A089544.P6847323006356744877

/-! ## A089544.P5642743704003826011

`A089542(n+1)/A037126(A011782(n)*A307555(n))`
-/

namespace A089544.P5642743704003826011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089542 (n + 1) : ℚ) / (A037126 (A011782 n * A307555 n).toNat : ℚ)

end

end A089544.P5642743704003826011

/-!
# A089545: Values e of pairs (e,f) that generate A088319(n).

The programs for A089545, there is no canonical definition to state claims against.
-/

/-! ## A089545.P7362490945657994782

`2*A089556(n+1)-1`
-/

namespace A089545.P7362490945657994782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089556 (n + 1) - 1

end

end A089545.P7362490945657994782

/-! ## A089545.P2932827432347125853

`sqrt(A088319(n+1)-A089546(n+1)²)`
-/

namespace A089545.P2932827432347125853
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088319 (n + 1) - A089546 (n + 1) ^ 2 : ℝ)

end

end A089545.P2932827432347125853

/-! ## A089545.P8044233194663538596

`A089546(n+1)+A089551(n+1)/A089546(n+1)`
-/

namespace A089545.P8044233194663538596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089546 (n + 1) : ℚ) + (A089551 (n + 1) : ℚ) / (A089546 (n + 1) : ℚ)

end

end A089545.P8044233194663538596

/-! ## A089545.P1889223701252169790

`A089546(n+1)+A089558(n+1)/A089557(n+1)`
-/

namespace A089545.P1889223701252169790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089546 (n + 1) : ℚ) + (A089558 (n + 1) : ℚ) / (A089557 (n + 1) : ℚ)

end

end A089545.P1889223701252169790

/-! ## A089545.P3815765300854324548

`A004273(A089556(n+1))`
-/

namespace A089545.P3815765300854324548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A089556 (n + 1)).toNat

end

end A089545.P3815765300854324548

/-!
# A089546: Values f of pairs (e,f) that generate A088319(n).

The programs for A089546, there is no canonical definition to state claims against.
-/

/-! ## A089546.P7009347976132801538

`2*A089557(n+1)`
-/

namespace A089546.P7009347976132801538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089557 (n + 1)

end

end A089546.P7009347976132801538

/-! ## A089546.P13845081210343655663

`A088515(n+1)*A088516(n+1)`
-/

namespace A089546.P13845081210343655663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088515 (n + 1) * A088516 (n + 1)

end

end A089546.P13845081210343655663

/-! ## A089546.P12793740059322914792

`2*A088515(n+1)*A089555(n+1)`
-/

namespace A089546.P12793740059322914792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088515 (n + 1) * A089555 (n + 1))

end

end A089546.P12793740059322914792

/-! ## A089546.P2519242130806297118

`A089557(A000027(n+1))+A089557(n+1)`
-/

namespace A089546.P2519242130806297118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089557 (A000027 (n + 1)).toNat + A089557 (n + 1)

end

end A089546.P2519242130806297118

/-! ## A089546.P8520450102264099228

`A089549(n+1)/A089545(n+1)-A089545(n+1)`
-/

namespace A089546.P8520450102264099228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089549 (n + 1) : ℚ) / (A089545 (n + 1) : ℚ) - (A089545 (n + 1) : ℚ)

end

end A089546.P8520450102264099228

/-! ## A089546.P6880443071763805640

`A089545(n+1)-A089558(n+1)/A089557(n+1)`
-/

namespace A089546.P6880443071763805640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089545 (n + 1) : ℚ) - (A089558 (n + 1) : ℚ) / (A089557 (n + 1) : ℚ)

end

end A089546.P6880443071763805640

/-! ## A089546.P16055183793528452503

`A089557(n+1)+A089557((n+1)%A278039(n+1))`
-/

namespace A089546.P16055183793528452503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089557 (n + 1) + A089557 (Int.tmod (n + 1 : ℤ) (A278039 (n + 1))).toNat

end

end A089546.P16055183793528452503

/-! ## A089546.P11178915329166087862

`A089557(n+1)+gcd(A089551(n+1), A089557(n+1))`
-/

namespace A089546.P11178915329166087862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089557 (n + 1) + (Int.gcd (A089551 (n + 1)) (A089557 (n + 1)) : ℤ)

end

end A089546.P11178915329166087862

/-! ## A089546.P6200156069941090000

`A004277(A089557(n+1))`
-/

namespace A089546.P6200156069941090000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A089557 (n + 1)).toNat

end

end A089546.P6200156069941090000

/-!
# A089547: Short leg of primitive Pythagorean triangles having legs that add up to a square, sorted on hypotenuse.

The programs for A089547, there is no canonical definition to state claims against.
-/

/-! ## A089547.P17621575837234246950

`A089552(n+1)-A089548(n+1)`
-/

namespace A089547.P17621575837234246950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089552 (n + 1) - A089548 (n + 1)

end

end A089547.P17621575837234246950

/-! ## A089547.P8236875184243773222

`A088546(n+1)²-A089548(n+1)`
-/

namespace A089547.P8236875184243773222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088546 (n + 1) ^ 2 - A089548 (n + 1)

end

end A089547.P8236875184243773222

/-! ## A089547.P5372931189900904354

`A089552(A000027(n+1))%A089548(n+1)`
-/

namespace A089547.P5372931189900904354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089552 (A000027 (n + 1)).toNat) (A089548 (n + 1))

end

end A089547.P5372931189900904354

/-! ## A089547.P1682835101245508589

`A088546(n+1)²%A089548(A000027(n+1))`
-/

namespace A089547.P1682835101245508589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088546 (n + 1) ^ 2) (A089548 (A000027 (n + 1)).toNat)

end

end A089547.P1682835101245508589

/-! ## A089547.P8223377555382360996

`or(A089552(n+1)%A089548(n+1), A000007(n))`
-/

namespace A089547.P8223377555382360996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A089552 (n + 1)) (A089548 (n + 1))) (A000007 n)

end

end A089547.P8223377555382360996

/-! ## A089547.P9591275784842243470

`or(A000035(n), A089552(n+1))%A089548(n+1)`
-/

namespace A089547.P9591275784842243470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A000035 n) (A089552 (n + 1))) (A089548 (n + 1))

end

end A089547.P9591275784842243470

/-! ## A089547.P6977681737884799464

`A089549(n+1)+A089551(n+1)-A089548(n+1)`
-/

namespace A089547.P6977681737884799464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089549 (n + 1) + (A089551 (n + 1) - A089548 (n + 1))

end

end A089547.P6977681737884799464

/-! ## A089547.P5033159292633688619

`A088546(A000027(n+1))*A088546(n+1)-A089548(n+1)`
-/

namespace A089547.P5033159292633688619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088546 (A000027 (n + 1)).toNat * A088546 (n + 1) - A089548 (n + 1)

end

end A089547.P5033159292633688619

/-! ## A089547.P9224750626199558720

`A089552(A008619(2*n))%A089548(n+1)`
-/

namespace A089547.P9224750626199558720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089552 (A008619 (2 * n)).toNat) (A089548 (n + 1))

end

end A089547.P9224750626199558720

/-! ## A089547.P2570380891453945075

`A089552(A000463(2*n+1))%A089548(n+1)`
-/

namespace A089547.P2570380891453945075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089552 (A000463 (2 * n + 1)).toNat) (A089548 (n + 1))

end

end A089547.P2570380891453945075

/-! ## A089547.P4372650251348759833

`A089552(A213634(2*n+1))%A089548(n+1)`
-/

namespace A089547.P4372650251348759833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089552 (A213634 (2 * n + 1)).toNat) (A089548 (n + 1))

end

end A089547.P4372650251348759833

/-! ## A089547.P2957516436009258295

`A089552(A274604(2*n+1))%A089548(n+1)`
-/

namespace A089547.P2957516436009258295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089552 (A274604 (2 * n + 1)).toNat) (A089548 (n + 1))

end

end A089547.P2957516436009258295

/-!
# A089548: Long leg of primitive Pythagorean triangles having legs that add up to a square, sorted on hypotenuse.

The programs for A089548, there is no canonical definition to state claims against.
-/

/-! ## A089548.P1590869778902646615

`A089552(n+1)-A089547(n+1)`
-/

namespace A089548.P1590869778902646615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089552 (n + 1) - A089547 (n + 1)

end

end A089548.P1590869778902646615

/-! ## A089548.P1150990658946360494

`A088546(n+1)²-A089547(n+1)`
-/

namespace A089548.P1150990658946360494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088546 (n + 1) ^ 2 - A089547 (n + 1)

end

end A089548.P1150990658946360494

/-! ## A089548.P5144901452336232631

`A089549(n+1)+A089551(n+1)-A089547(n+1)`
-/

namespace A089548.P5144901452336232631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089549 (n + 1) + (A089551 (n + 1) - A089547 (n + 1))

end

end A089548.P5144901452336232631

/-! ## A089548.P10177530139440360728

`A088319(n+1)+2*A089551(n+1)-A089547(n+1)`
-/

namespace A089548.P10177530139440360728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088319 (n + 1) + 2 * A089551 (n + 1) - A089547 (n + 1)

end

end A089548.P10177530139440360728

/-! ## A089548.P14804544926332291025

`A089549(n+1)+2*A089558(n+1)-A089547(n+1)`
-/

namespace A089548.P14804544926332291025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089549 (n + 1) + 2 * A089558 (n + 1) - A089547 (n + 1)

end

end A089548.P14804544926332291025

/-! ## A089548.P5237164264260506200

`2*A089549(n+1)-A088319(n+1)-A089547(n+1)`
-/

namespace A089548.P5237164264260506200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089549 (n + 1) - A088319 (n + 1) - A089547 (n + 1)

end

end A089548.P5237164264260506200

/-! ## A089548.P3322330514159518388

`A088546(n+1)^A020639(A267573(n+1))-A089547(n+1)`
-/

namespace A089548.P3322330514159518388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088546 (n + 1) : ℚ) ^ (A020639 (A267573 (n + 1)).toNat : ℤ) - (A089547 (n + 1) : ℚ)

end

end A089548.P3322330514159518388

/-! ## A089548.P13942370689009883297

`A088546(n+1)^A000005(A088565(n+1))-A089547(n+1)`
-/

namespace A089548.P13942370689009883297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088546 (n + 1) : ℚ) ^ (A000005 (A088565 (n + 1)).toNat : ℤ) - (A089547 (n + 1) : ℚ)

end

end A089548.P13942370689009883297

/-!
# A089549: Semiperimeter of primitive Pythagorean triangles having legs that add up to a square, sorted on hypotenuse.

The programs for A089549, there is no canonical definition to state claims against.
-/

/-! ## A089549.P9802478817835225941

`A089551(n+1)+A088319(n+1)`
-/

namespace A089549.P9802478817835225941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089551 (n + 1) + A088319 (n + 1)

end

end A089549.P9802478817835225941

/-! ## A089549.P6949103027616176130

`A089552(n+1)-A089551(n+1)`
-/

namespace A089549.P6949103027616176130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089552 (n + 1) - A089551 (n + 1)

end

end A089549.P6949103027616176130

/-! ## A089549.P9391578915387926212

`A088546(n+1)²-A089551(n+1)`
-/

namespace A089549.P9391578915387926212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088546 (n + 1) ^ 2 - A089551 (n + 1)

end

end A089549.P9391578915387926212

/-! ## A089549.P14397643359650716001

`A088319(n+1)+2*A089558(n+1)`
-/

namespace A089549.P14397643359650716001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088319 (n + 1) + 2 * A089558 (n + 1)

end

end A089549.P14397643359650716001

/-! ## A089549.P15069003015925122407

`(A089552(n+1)+A088319(n+1))/2`
-/

namespace A089549.P15069003015925122407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089552 (n + 1) + A088319 (n + 1) : ℚ) / 2

end

end A089549.P15069003015925122407

/-! ## A089549.P8570452216582931412

`A089552(n+1)-2*A089558(n+1)`
-/

namespace A089549.P8570452216582931412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089552 (n + 1) - 2 * A089558 (n + 1)

end

end A089549.P8570452216582931412

/-! ## A089549.P16450690424454041638

`(A089546(n+1)+A089545(n+1))*A089545(n+1)`
-/

namespace A089549.P16450690424454041638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089546 (n + 1) + A089545 (n + 1)) * A089545 (n + 1)

end

end A089549.P16450690424454041638

/-!
# A089550: One sixth area of primitive Pythagorean triangles having legs that add up to a square, sorted on hypotenuse.

The programs for A089550, there is no canonical definition to state claims against.
-/

/-! ## A089550.P12077839762689424849

`A089549(n+1)/3*A089558(n+1)`
-/

namespace A089550.P12077839762689424849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089549 (n + 1) : ℚ) / 3 * (A089558 (n + 1) : ℚ)

end

end A089550.P12077839762689424849

/-! ## A089550.P3176344343715737389

`A089549(n+1)/6*A089551(n+1)`
-/

namespace A089550.P3176344343715737389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089549 (n + 1) : ℚ) / 6 * (A089551 (n + 1) : ℚ)

end

end A089550.P3176344343715737389

/-! ## A089550.P6092803515450134074

`A089547(n+1)/12*A089548(n+1)`
-/

namespace A089550.P6092803515450134074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089547 (n + 1) : ℚ) / 12 * (A089548 (n + 1) : ℚ)

end

end A089550.P6092803515450134074

/-!
# A089551: Radius of inscribed circle within primitive Pythagorean triangles having legs that add up to a square, sorted on hypotenuse.

The programs for A089551, there is no canonical definition to state claims against.
-/

/-! ## A089551.P14896685929571028759

`2*A089558(n+1)`
-/

namespace A089551.P14896685929571028759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089558 (n + 1)

end

end A089551.P14896685929571028759

/-! ## A089551.P5768225966756806357

`A089549(n+1)-A088319(n+1)`
-/

namespace A089551.P5768225966756806357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089549 (n + 1) - A088319 (n + 1)

end

end A089551.P5768225966756806357

/-! ## A089551.P1781458236829729309

`A089552(n+1)-A089549(n+1)`
-/

namespace A089551.P1781458236829729309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089552 (n + 1) - A089549 (n + 1)

end

end A089551.P1781458236829729309

/-! ## A089551.P15611996500827582201

`lcm(A088516(n+1), A089558(n+1))`
-/

namespace A089551.P15611996500827582201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088516 (n + 1)) (A089558 (n + 1))

end

end A089551.P15611996500827582201

/-! ## A089551.P18108083807285416359

`A088546(n+1)²-A089549(n+1)`
-/

namespace A089551.P18108083807285416359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088546 (n + 1) ^ 2 - A089549 (n + 1)

end

end A089551.P18108083807285416359

/-! ## A089551.P13943356600851592631

`(A089552(n+1)-A088319(n+1))/2`
-/

namespace A089551.P13943356600851592631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089552 (n + 1) - A088319 (n + 1) : ℚ) / 2

end

end A089551.P13943356600851592631

/-! ## A089551.P12405662476479955117

`(A089545(n+1)-A089546(n+1))*A089546(n+1)`
-/

namespace A089551.P12405662476479955117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089545 (n + 1) - A089546 (n + 1)) * A089546 (n + 1)

end

end A089551.P12405662476479955117

/-!
# A089552: Sum of legs of primitive Pythagorean triangles having legs that add up to a square, sorted on hypotenuse.

The programs for A089552, there is no canonical definition to state claims against.
-/

/-! ## A089552.P11531013020908245104

`A088546(n+1)²`
-/

namespace A089552.P11531013020908245104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088546 (n + 1) ^ 2

end

end A089552.P11531013020908245104

/-! ## A089552.P13899827986267269920

`A089548(n+1)+A089547(n+1)`
-/

namespace A089552.P13899827986267269920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089548 (n + 1) + A089547 (n + 1)

end

end A089552.P13899827986267269920

/-! ## A089552.P18384986679582758476

`A089551(n+1)+A089549(n+1)`
-/

namespace A089552.P18384986679582758476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089551 (n + 1) + A089549 (n + 1)

end

end A089552.P18384986679582758476

/-! ## A089552.P1912187563276282246

`A088319(n+1)+2*A089551(n+1)`
-/

namespace A089552.P1912187563276282246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088319 (n + 1) + 2 * A089551 (n + 1)

end

end A089552.P1912187563276282246

/-! ## A089552.P3951983672737918637

`A089549(n+1)+2*A089558(n+1)`
-/

namespace A089552.P3951983672737918637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089549 (n + 1) + 2 * A089558 (n + 1)

end

end A089552.P3951983672737918637

/-! ## A089552.P2627228229831434565

`2*A089549(n+1)-A088319(n+1)`
-/

namespace A089552.P2627228229831434565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089549 (n + 1) - A088319 (n + 1)

end

end A089552.P2627228229831434565

/-! ## A089552.P8595981980058951634

`A088546(A000027(n+1))*A088546(n+1)`
-/

namespace A089552.P8595981980058951634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088546 (A000027 (n + 1)).toNat * A088546 (n + 1)

end

end A089552.P8595981980058951634

/-! ## A089552.P15279857229028951931

`A088546(n+1)^A020639(A088516(n+1))`
-/

namespace A089552.P15279857229028951931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088546 (n + 1) : ℚ) ^ (A020639 (A088516 (n + 1)).toNat : ℤ)

end

end A089552.P15279857229028951931

/-! ## A089552.P17576055143987735374

`A088546(n+1)^A020639(A088494(2*(n+2)))`
-/

namespace A089552.P17576055143987735374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088546 (n + 1) : ℚ) ^ (A020639 (A088494 (2 * (n + 2))).toNat : ℤ)

end

end A089552.P17576055143987735374

/-! ## A089552.P1253543813885477303

`A088546(n+1)^A000005(A088565(n+1))`
-/

namespace A089552.P1253543813885477303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088546 (n + 1) : ℚ) ^ (A000005 (A088565 (n + 1)).toNat : ℤ)

end

end A089552.P1253543813885477303

/-! ## A089552.P1592376644755435719

`A088546(n+1)^A000005(A088555(n+1))`
-/

namespace A089552.P1592376644755435719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088546 (n + 1) : ℚ) ^ (A000005 (A088555 (n + 1)).toNat : ℤ)

end

end A089552.P1592376644755435719

/-!
# A089553: Seventh occurrence where (p-q)/(q-7), p and q are primes.

The programs for A089553, there is no canonical definition to state claims against.
-/

/-! ## A089553.P8456490088429351283

`p?[A135260(A154681(n+1))]`
-/

namespace A089553.P8456490088429351283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135260 (A154681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089553.P8456490088429351283

/-!
# A089554: a(n)=(A088515(n)+1)/2.

The programs for A089554, there is no canonical definition to state claims against.
-/

/-! ## A089554.P9501003322996266097

`(A088515(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089554.P9501003322996266097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088515 (n + 1) + 1 : ℚ) / 2

end

end A089554.P9501003322996266097

/-! ## A089554.P9280471623917875416

`ceil(A088515(n+1)/2)`
-/

namespace A089554.P9280471623917875416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088515 (n + 1) : ℚ) / 2⌉

end

end A089554.P9280471623917875416

/-! ## A089554.P9818228105531554117

`A000463(A088515(n+1))`
-/

namespace A089554.P9818228105531554117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A088515 (n + 1)).toNat

end

end A089554.P9818228105531554117

/-! ## A089554.P3286655217769764571

`A004526(A088515(n+1)+1)`
-/

namespace A089554.P3286655217769764571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088515 (n + 1) + 1).toNat

end

end A089554.P3286655217769764571

/-! ## A089554.P15175326092442820857

`A006370(A088515(n+1)+1)`
-/

namespace A089554.P15175326092442820857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A088515 (n + 1) + 1).toNat

end

end A089554.P15175326092442820857

/-! ## A089554.P15247401932904414279

`A026741(A088515(n+1)+1)`
-/

namespace A089554.P15247401932904414279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A088515 (n + 1) + 1).toNat

end

end A089554.P15247401932904414279

/-! ## A089554.P13963701838887228461

`A032742(A088515(n+1)+1)`
-/

namespace A089554.P13963701838887228461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A088515 (n + 1) + 1).toNat

end

end A089554.P13963701838887228461

/-! ## A089554.P1320080409306973190

`A065033(A088515(n+1)+1)`
-/

namespace A089554.P1320080409306973190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A088515 (n + 1) + 1).toNat

end

end A089554.P1320080409306973190

/-! ## A089554.P8183637802320111265

`A123108(A088515(n+1)+1)`
-/

namespace A089554.P8183637802320111265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A088515 (n + 1) + 1).toNat

end

end A089554.P8183637802320111265

/-! ## A089554.P146818539290696301

`A008619(A088515(n+1)-1)`
-/

namespace A089554.P146818539290696301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A088515 (n + 1) - 1).toNat

end

end A089554.P146818539290696301

/-! ## A089554.P17108679882500394156

`A027656(A088515(n+1)-1)`
-/

namespace A089554.P17108679882500394156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A088515 (n + 1) - 1).toNat

end

end A089554.P17108679882500394156

/-! ## A089554.P9747490493362752015

`A008621(2*A088515(n+1))`
-/

namespace A089554.P9747490493362752015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A088515 (n + 1)).toNat

end

end A089554.P9747490493362752015

/-! ## A089554.P6265364040075003738

`A027656(xor(1, A088515(n+1)))`
-/

namespace A089554.P6265364040075003738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Int.xor 1 (A088515 (n + 1))).toNat

end

end A089554.P6265364040075003738

/-! ## A089554.P2445233921437007178

`A274604(A088515(Δ[n²]-n))`
-/

namespace A089554.P2445233921437007178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274604 (A088515 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A089554.P2445233921437007178

/-! ## A089554.P11987439567110516280

`A213634(A088515(n+1)+2)-1`
-/

namespace A089554.P11987439567110516280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213634 (A088515 (n + 1) + 2).toNat - 1

end

end A089554.P11987439567110516280

/-! ## A089554.P11126883723199861

`A274604(A088515(n+1)+2)-1`
-/

namespace A089554.P11126883723199861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274604 (A088515 (n + 1) + 2).toNat - 1

end

end A089554.P11126883723199861

/-! ## A089554.P10272669165420864360

`floor(A089557(n+1)/A088516(n+1))+1`
-/

namespace A089554.P10272669165420864360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089557 (n + 1) : ℚ) / (A088516 (n + 1) : ℚ)⌋ + 1

end

end A089554.P10272669165420864360

/-! ## A089554.P10161108938425779710

`A008621(A088515(n+1)+A088515(n+1))`
-/

namespace A089554.P10161108938425779710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A088515 (n + 1) + A088515 (n + 1)).toNat

end

end A089554.P10161108938425779710

/-! ## A089554.P5754836039864804741

`(A089557(n+1)+A089555(n+1))/A088516(n+1)`
-/

namespace A089554.P5754836039864804741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089557 (n + 1) + A089555 (n + 1) : ℚ) / (A088516 (n + 1) : ℚ)

end

end A089554.P5754836039864804741

/-!
# A089555: a(n)=A088516(n)/2.

The programs for A089555, there is no canonical definition to state claims against.
-/

/-! ## A089555.P15164731936291428442

`A088516(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089555.P15164731936291428442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088516 (n + 1) : ℚ) / 2

end

end A089555.P15164731936291428442

/-! ## A089555.P10872954357031638743

`A001281(A088516(n+1))`
-/

namespace A089555.P10872954357031638743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A088516 (n + 1)).toNat

end

end A089555.P10872954357031638743

/-! ## A089555.P12478301569492015902

`A004524(A088516(n+1)+1)`
-/

namespace A089555.P12478301569492015902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A088516 (n + 1) + 1).toNat

end

end A089555.P12478301569492015902

/-! ## A089555.P17710908602315452252

`A004526(A088516(n+1)+1)`
-/

namespace A089555.P17710908602315452252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088516 (n + 1) + 1).toNat

end

end A089555.P17710908602315452252

/-! ## A089555.P11818466867101422810

`A028242(A088516(n+1)+1)`
-/

namespace A089555.P11818466867101422810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A088516 (n + 1) + 1).toNat

end

end A089555.P11818466867101422810

/-! ## A089555.P9692640068314676190

`A008619(A088516(n+1)-1)`
-/

namespace A089555.P9692640068314676190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A088516 (n + 1) - 1).toNat

end

end A089555.P9692640068314676190

/-! ## A089555.P2205949384108677028

`A124072(A088516(n+1)-1)`
-/

namespace A089555.P2205949384108677028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (A088516 (n + 1) - 1).toNat

end

end A089555.P2205949384108677028

/-! ## A089555.P9805695700659498682

`A029579(A088516(n+1)-2)`
-/

namespace A089555.P9805695700659498682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A088516 (n + 1) - 2).toNat

end

end A089555.P9805695700659498682

/-! ## A089555.P8145048698315509628

`A124072(2*A088516(n+1))`
-/

namespace A089555.P8145048698315509628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (2 * A088516 (n + 1)).toNat

end

end A089555.P8145048698315509628

/-! ## A089555.P17220322735900222519

`A089557(n+1)/A088515(n+1)`
-/

namespace A089555.P17220322735900222519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089557 (n + 1) : ℚ) / (A088515 (n + 1) : ℚ)

end

end A089555.P17220322735900222519

/-! ## A089555.P14796444691811853273

`A089557(n+1)%A088516(n+1)`
-/

namespace A089555.P14796444691811853273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089557 (n + 1)) (A088516 (n + 1))

end

end A089555.P14796444691811853273

/-! ## A089555.P10940124797229448359

`A089558(n+1)%A088516(n+1)`
-/

namespace A089555.P10940124797229448359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089558 (n + 1)) (A088516 (n + 1))

end

end A089555.P10940124797229448359

/-! ## A089555.P9296709639296838447

`A089546(n+1)/(2*A088515(n+1))`
-/

namespace A089555.P9296709639296838447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089546 (n + 1) : ℚ) / (2 * A088515 (n + 1) : ℚ)

end

end A089555.P9296709639296838447

/-! ## A089555.P14706795778468423405

`A088516(n+1)*A089554(n+1)-A089557(n+1)`
-/

namespace A089555.P14706795778468423405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088516 (n + 1) * A089554 (n + 1) - A089557 (n + 1)

end

end A089555.P14706795778468423405

/-!
# A089556: a(n)=(A089545(n)+1)/2.

The programs for A089556, there is no canonical definition to state claims against.
-/

/-! ## A089556.P15970520626295906421

`(A089545(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089556.P15970520626295906421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089545 (n + 1) + 1 : ℚ) / 2

end

end A089556.P15970520626295906421

/-! ## A089556.P16658923016275045851

`ceil(A089545(n+1)/2)`
-/

namespace A089556.P16658923016275045851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089545 (n + 1) : ℚ) / 2⌉

end

end A089556.P16658923016275045851

/-! ## A089556.P1523814984366342213

`A000265(A089545(n+1)+1)`
-/

namespace A089556.P1523814984366342213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A089545 (n + 1) + 1).toNat

end

end A089556.P1523814984366342213

/-! ## A089556.P4664914135680215983

`(A089546(n+1)+A089551(n+1)/A089546(n+1)+1)/2`
-/

namespace A089556.P4664914135680215983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A089546 (n + 1) : ℚ) + (A089551 (n + 1) : ℚ) / (A089546 (n + 1) : ℚ) + 1) / 2

end

end A089556.P4664914135680215983

/-! ## A089556.P4498217574501730379

`A326139(A089545(n+1)+1)`
-/

namespace A089556.P4498217574501730379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A089545 (n + 1) + 1).toNat

end

end A089556.P4498217574501730379

/-! ## A089556.P15512476243591278161

`A325563(A089545(n+1)+1)`
-/

namespace A089556.P15512476243591278161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A089545 (n + 1) + 1).toNat

end

end A089556.P15512476243591278161

/-! ## A089556.P5337840723536176006

`A152832(A089545(n+1)-4)`
-/

namespace A089556.P5337840723536176006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 (A089545 (n + 1) - 4).toNat

end

end A089556.P5337840723536176006

/-! ## A089556.P11003273877754291454

`A026741(A089545(n+1)-1)+1`
-/

namespace A089556.P11003273877754291454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A089545 (n + 1) - 1).toNat + 1

end

end A089556.P11003273877754291454

/-! ## A089556.P5633239834828760110

`A000463(A089545(n+1))`
-/

namespace A089556.P5633239834828760110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A089545 (n + 1)).toNat

end

end A089556.P5633239834828760110

/-! ## A089556.P2807184069887598363

`A026741(A089545(n+1)+1)`
-/

namespace A089556.P2807184069887598363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A089545 (n + 1) + 1).toNat

end

end A089556.P2807184069887598363

/-! ## A089556.P9960776155647813617

`A028234(A089545(n+1)+1)`
-/

namespace A089556.P9960776155647813617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A089545 (n + 1) + 1).toNat

end

end A089556.P9960776155647813617

/-!
# A089557: a(n) = A089546(n)/2.

The programs for A089557, there is no canonical definition to state claims against.
-/

/-! ## A089557.P2759015012119754558

`A089546(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089557.P2759015012119754558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089546 (n + 1) : ℚ) / 2

end

end A089557.P2759015012119754558

/-! ## A089557.P1472460731506673968

`A088515(n+1)*A089555(n+1)`
-/

namespace A089557.P1472460731506673968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088515 (n + 1) * A089555 (n + 1)

end

end A089557.P1472460731506673968

/-! ## A089557.P7211124420340119353

`A089558(n+1)%A089546(n+1)`
-/

namespace A089557.P7211124420340119353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089558 (n + 1)) (A089546 (n + 1))

end

end A089557.P7211124420340119353

/-! ## A089557.P10451566910280564762

`A088515(n+1)/2*A088516(n+1)`
-/

namespace A089557.P10451566910280564762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088515 (n + 1) : ℚ) / 2 * (A088516 (n + 1) : ℚ)

end

end A089557.P10451566910280564762

/-! ## A089557.P7667204780255454102

`A088516(n+1)*A089554(n+1)-A089555(n+1)`
-/

namespace A089557.P7667204780255454102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088516 (n + 1) * A089554 (n + 1) - A089555 (n + 1)

end

end A089557.P7667204780255454102

/-! ## A089557.P9575640993399670098

`A038572(A089546(n+1))`
-/

namespace A089557.P9575640993399670098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A089546 (n + 1)).toNat

end

end A089557.P9575640993399670098

/-! ## A089557.P2172423780541457789

`A001281(A089546(n+1)+2)-1`
-/

namespace A089557.P2172423780541457789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A089546 (n + 1) + 2).toNat - 1

end

end A089557.P2172423780541457789

/-!
# A089558: a(n)=A089551(n)/2.

The programs for A089558, there is no canonical definition to state claims against.
-/

/-! ## A089558.P10690945549363904243

`A089551(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089558.P10690945549363904243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089551 (n + 1) : ℚ) / 2

end

end A089558.P10690945549363904243

/-! ## A089558.P6564018083362691604

`(A089549(n+1)-A088319(n+1))/2`
-/

namespace A089558.P6564018083362691604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089549 (n + 1) - A088319 (n + 1) : ℚ) / 2

end

end A089558.P6564018083362691604

/-! ## A089558.P11763728683747626838

`(A089552(n+1)-A089549(n+1))/2`
-/

namespace A089558.P11763728683747626838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089552 (n + 1) - A089549 (n + 1) : ℚ) / 2

end

end A089558.P11763728683747626838

/-! ## A089558.P4272447779402675985

`(A089552(n+1)-A088319(n+1))/4`
-/

namespace A089558.P4272447779402675985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089552 (n + 1) - A088319 (n + 1) : ℚ) / 4

end

end A089558.P4272447779402675985

/-! ## A089558.P4145685272536295431

`(A088546(n+1)²-A089549(n+1))/2`
-/

namespace A089558.P4145685272536295431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088546 (n + 1) ^ 2 - A089549 (n + 1) : ℚ) / 2

end

end A089558.P4145685272536295431

/-! ## A089558.P12041151630011824293

`(A089545(n+1)-A089546(n+1))*A089557(n+1)`
-/

namespace A089558.P12041151630011824293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089545 (n + 1) - A089546 (n + 1)) * A089557 (n + 1)

end

end A089558.P12041151630011824293

/-! ## A089558.P129372017313446091

`A014682(A089551(n+1))`
-/

namespace A089558.P129372017313446091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A089551 (n + 1)).toNat

end

end A089558.P129372017313446091

/-! ## A089558.P14552741338065715099

`gcd(A000217(A089551(n+1)-1), A089551(n+1))`
-/

namespace A089558.P14552741338065715099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A089551 (n + 1) - 1).toNat) (A089551 (n + 1))

end

end A089558.P14552741338065715099

/-!
# A089559: Nonnegative numbers n such that 2*n + 15 is prime.

The programs for A089559, the canonical program `A089559.P3372472513908806142` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089559 has offset 1).

The definition of A089559 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086303, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089559.P3372472513908806142

`A086303(n+1)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089559

/-- `A086303(n+1)/2` -/
def P3372472513908806142.Spec : Prop :=
  ∀ n, P3372472513908806142.a n = (A089559 (n + 1) : ℚ)

end A089559

/-! ## A089559.P7657369404631835773

`A173059(n+1)+1`
-/

namespace A089559.P7657369404631835773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173059 (n + 1) + 1

end

end A089559.P7657369404631835773

namespace A089559

/-- `A173059(n+1)+1` -/
def P7657369404631835773.Spec : Prop :=
  ∀ n, P7657369404631835773.a n = A089559 (n + 1)

end A089559

/-! ## A089559.P15300552563936216063

`∑[A001223(A107820(n+1))/2]`
-/

namespace A089559.P15300552563936216063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (A107820 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089559.P15300552563936216063

namespace A089559

/-- `∑[A001223(A107820(n+1))/2]` -/
def P15300552563936216063.Spec : Prop :=
  ∀ n, P15300552563936216063.a n = (A089559 (n + 1) : ℚ)

end A089559

/-! ## A089559.P7676693500582516344

`∑[A001223(A242963(n+1))/2]`
-/

namespace A089559.P7676693500582516344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (A242963 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089559.P7676693500582516344

namespace A089559

/-- `∑[A001223(A242963(n+1))/2]` -/
def P7676693500582516344.Spec : Prop :=
  ∀ n, P7676693500582516344.a n = (A089559 (n + 1) : ℚ)

end A089559

/-! ## A089559.P9358461920077012188

`A057427(n)+A153143(A028310(n))+1`
-/

namespace A089559.P9358461920077012188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A153143 (A028310 n).toNat + 1)

end

end A089559.P9358461920077012188

namespace A089559

/-- `A057427(n)+A153143(A028310(n))+1` -/
def P9358461920077012188.Spec : Prop :=
  ∀ n, P9358461920077012188.a n = A089559 (n + 1)

end A089559

/-! ## A089559.P3200984429395654153

`A153081(n+2)-1`
-/

namespace A089559.P3200984429395654153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 2) - 1

end

end A089559.P3200984429395654153

namespace A089559

/-- `A153081(n+2)-1` -/
def P3200984429395654153.Spec : Prop :=
  ∀ n, P3200984429395654153.a n = A089559 (n + 1)

end A089559

/-! ## A089559.P10124063801911124930

`A101448(n+3)-2`
-/

namespace A089559.P10124063801911124930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 3) - 2

end

end A089559.P10124063801911124930

namespace A089559

/-- `A101448(n+3)-2` -/
def P10124063801911124930.Spec : Prop :=
  ∀ n, P10124063801911124930.a n = A089559 (n + 1)

end A089559

/-! ## A089559.P10193494252372822449

`A155722(n+3)-3`
-/

namespace A089559.P10193494252372822449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 3) - 3

end

end A089559.P10193494252372822449

namespace A089559

/-- `A155722(n+3)-3` -/
def P10193494252372822449.Spec : Prop :=
  ∀ n, P10193494252372822449.a n = A089559 (n + 1)

end A089559

/-! ## A089559.P1118823483260494930

`A088967(n+3)/2-3`
-/

namespace A089559.P1118823483260494930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088967 (n + 3) : ℚ) / 2 - 3

end

end A089559.P1118823483260494930

namespace A089559

/-- `A088967(n+3)/2-3` -/
def P1118823483260494930.Spec : Prop :=
  ∀ n, P1118823483260494930.a n = (A089559 (n + 1) : ℚ)

end A089559

/-! ## A089559.P15115756737139290978

`A008507(A020715(n))-1+n`
-/

namespace A089559.P15115756737139290978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (A020715 n).toNat - 1 + (n : ℤ)

end

end A089559.P15115756737139290978

namespace A089559

/-- `A008507(A020715(n))-1+n` -/
def P15115756737139290978.Spec : Prop :=
  ∀ n, P15115756737139290978.a n = A089559 (n + 1)

end A089559

/-! ## A089559.P1879108874852435497

`(A000040(n+7)-15)/2`
-/

namespace A089559.P1879108874852435497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 7) - 15 : ℚ) / 2

end

end A089559.P1879108874852435497

namespace A089559

/-- `(A000040(n+7)-15)/2` -/
def P1879108874852435497.Spec : Prop :=
  ∀ n, P1879108874852435497.a n = (A089559 (n + 1) : ℚ)

end A089559

/-! ## A089559.P1191466450134466358

`lt[A001222(2*(n+7)+1), 2]`
-/

namespace A089559.P1191466450134466358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 7) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089559.P1191466450134466358

namespace A089559

/-- `lt[A001222(2*(n+7)+1), 2]` -/
def P1191466450134466358.Spec : Prop :=
  ∀ n, (P1191466450134466358.a n : ℤ) = A089559 (n + 1)

end A089559

/-! ## A089559.P12214537897281142365

`lt[A000005(2*(n+7)+1), 3]`
-/

namespace A089559.P12214537897281142365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 7) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089559.P12214537897281142365

namespace A089559

/-- `lt[A000005(2*(n+7)+1), 3]` -/
def P12214537897281142365.Spec : Prop :=
  ∀ n, (P12214537897281142365.a n : ℤ) = A089559 (n + 1)

end A089559

/-! ## A089559.P8495402477247267917

`lt[A353378(A016825(n+7)), 4]`
-/

namespace A089559.P8495402477247267917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A016825 (n + 7)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089559.P8495402477247267917

namespace A089559

/-- `lt[A353378(A016825(n+7)), 4]` -/
def P8495402477247267917.Spec : Prop :=
  ∀ n, (P8495402477247267917.a n : ℤ) = A089559 (n + 1)

end A089559

/-! ## A089559.P8814914972752805760

`A004482(A173059(n+1))`
-/

namespace A089559.P8814914972752805760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A173059 (n + 1)).toNat

end

end A089559.P8814914972752805760

namespace A089559

/-- `A004482(A173059(n+1))` -/
def P8814914972752805760.Spec : Prop :=
  ∀ n, P8814914972752805760.a n = A089559 (n + 1)

end A089559

/-! ## A089559.P15528482959489043956

`A023443(A153081(n+2))`
-/

namespace A089559.P15528482959489043956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153081 (n + 2)).toNat

end

end A089559.P15528482959489043956

namespace A089559

/-- `A023443(A153081(n+2))` -/
def P15528482959489043956.Spec : Prop :=
  ∀ n, P15528482959489043956.a n = A089559 (n + 1)

end A089559

/-! ## A089559.P11984537908162317177

`eq[3, A138479(n+3)]`
-/

namespace A089559.P11984537908162317177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138479 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089559.P11984537908162317177

namespace A089559

/-- `eq[3, A138479(n+3)]` -/
def P11984537908162317177.Spec : Prop :=
  ∀ n, (P11984537908162317177.a n : ℤ) = A089559 (n + 1)

end A089559

/-! ## A089559.P11999269230831798152

`A023444(A153081(n+2)+1)`
-/

namespace A089559.P11999269230831798152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A153081 (n + 2) + 1).toNat

end

end A089559.P11999269230831798152

namespace A089559

/-- `A023444(A153081(n+2)+1)` -/
def P11999269230831798152.Spec : Prop :=
  ∀ n, P11999269230831798152.a n = A089559 (n + 1)

end A089559

/-! ## A089559.P10291349109883412548

`eq[1, A001222(A004277(n+8)+1)]+1`
-/

namespace A089559.P10291349109883412548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 (n + 8) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089559.P10291349109883412548

namespace A089559

/-- `eq[1, A001222(A004277(n+8)+1)]+1` -/
def P10291349109883412548.Spec : Prop :=
  ∀ n, (P10291349109883412548.a n : ℤ) = A089559 (n + 1)

end A089559

/-! ## A089559.P4332535919117132188

`eq[2, A212595(n+2)]`
-/

namespace A089559.P4332535919117132188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212595 (n + 2 + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089559.P4332535919117132188

namespace A089559

/-- `eq[2, A212595(n+2)]` -/
def P4332535919117132188.Spec : Prop :=
  ∀ n, (P4332535919117132188.a n : ℤ) = A089559 (n + 1)

end A089559

/-!
# A089561: Concatenations arising in A089560.

The programs for A089561, there is no canonical definition to state claims against.
-/

/-! ## A089561.P3061903658848881494

`A004086(∑[A214317(n+1)])`
-/

namespace A089561.P3061903658848881494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089561.P3061903658848881494

/-!
# A089563: Primes arising in A089562.

The programs for A089563, there is no canonical definition to state claims against.
-/

/-! ## A089563.P7686831070666900529

`A053584(A277217(n+1))`
-/

namespace A089563.P7686831070666900529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053584 (A277217 (n + 1)).toNat

end

end A089563.P7686831070666900529

/-! ## A089563.P18049881218949596786

`A053584(∑[A023425(n)!])`
-/

namespace A089563.P18049881218949596786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A023425 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053584 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089563.P18049881218949596786

/-!
# A089565: Concatenations arising in A089564.

The programs for A089565, there is no canonical definition to state claims against.
-/

/-! ## A089565.P12225642133348820923

`A089573(A000040(n+1))%A178500(n+1)`
-/

namespace A089565.P12225642133348820923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089573 (A000040 (n + 1)).toNat) (A178500 (n + 1))

end

end A089565.P12225642133348820923

/-!
# A089567: Primes arising in A089566.

The programs for A089567, there is no canonical definition to state claims against.
-/

/-! ## A089567.P18130388746403343199

`p?[∑[(A054429(A003188(n+1))-1)*10^n]+1]`
-/

namespace A089567.P18130388746403343199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054429 (A003188 (n + 1)).toNat - 1) * (10 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089567.P18130388746403343199

/-!
# A089571: Primes arising in A089570.

The programs for A089571, there is no canonical definition to state claims against.
-/

/-! ## A089571.P16606584153945017031

`p?[A053584(n+2)]`
-/

namespace A089571.P16606584153945017031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053584 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089571.P16606584153945017031

/-!
# A089573: Primes arising in A089572.

The programs for A089573, there is no canonical definition to state claims against.
-/

/-! ## A089573.P2800964285971477387

`p?[A089565(n+1)]`
-/

namespace A089573.P2800964285971477387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089573.P2800964285971477387

/-!
# A089574: Column 4 of an array closely related to A083480. (Both arrays have shape sequence A083479).

The programs for A089574, the canonical program `A089574.P17152702397633691756` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089574 has offset 1).

The definition of A089574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089574.P17152702397633691756

`∑[∑[A178977(n)+A006331(n)]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089574

/-- `∑[∑[A178977(n)+A006331(n)]]` -/
def P17152702397633691756.Spec : Prop :=
  ∀ n, P17152702397633691756.a n = A089574 (n + 1)

theorem P17152702397633691756.correct : P17152702397633691756.Spec := by
  intro n
  simp only [A089574, Nat.add_sub_cancel]

end A089574

/-! ## A089574.P17499790556943788771

`A034263(n)+∑[A162254(n+1)]`
-/

namespace A089574.P17499790556943788771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089574.P17499790556943788771

namespace A089574

/-- `A034263(n)+∑[A162254(n+1)]` -/
def P17499790556943788771.Spec : Prop :=
  ∀ n, P17499790556943788771.a n = A089574 (n + 1)

end A089574

/-! ## A089574.P11984367474300958632

`∑[A162254(n+1)+A002417(n+1)]`
-/

namespace A089574.P11984367474300958632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1) + A002417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089574.P11984367474300958632

namespace A089574

/-- `∑[A162254(n+1)+A002417(n+1)]` -/
def P11984367474300958632.Spec : Prop :=
  ∀ n, P11984367474300958632.a n = A089574 (n + 1)

end A089574

/-! ## A089574.P14274524141583068295

`∑[A006504(n+1)+∑[A267370(n)+n]]`
-/

namespace A089574.P14274524141583068295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089574.P14274524141583068295

namespace A089574

/-- `∑[A006504(n+1)+∑[A267370(n)+n]]` -/
def P14274524141583068295.Spec : Prop :=
  ∀ n, P14274524141583068295.a n = A089574 (n + 1)

end A089574

/-! ## A089574.P3484578906986461291

`A264750(n+5)+∑[A051925(n+1)]`
-/

namespace A089574.P3484578906986461291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264750 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089574.P3484578906986461291

namespace A089574

/-- `A264750(n+5)+∑[A051925(n+1)]` -/
def P3484578906986461291.Spec : Prop :=
  ∀ n, P3484578906986461291.a n = A089574 (n + 1)

end A089574

/-! ## A089574.P112814829093155987

`A215862(n+1)+A215862(n)+A034263(n)`
-/

namespace A089574.P112814829093155987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 (n + 1) + (A215862 n + A034263 n)

end

end A089574.P112814829093155987

namespace A089574

/-- `A215862(n+1)+A215862(n)+A034263(n)` -/
def P112814829093155987.Spec : Prop :=
  ∀ n, P112814829093155987.a n = A089574 (n + 1)

end A089574

/-!
# A089575: Let f(k^n) = m where m is the largest power of k+1 < k^n. a(n) = number of iterations of f to reach 1, starting from n and starting from k = 2.

The programs for A089575, there is no canonical definition to state claims against.
-/

/-! ## A089575.P14777538445208739683

`∑[A010059(A029318(n)%A059614(n+1))]`
-/

namespace A089575.P14777538445208739683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.tmod (A029318 n) (A059614 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089575.P14777538445208739683

/-! ## A089575.P8978875153054339810

`∑[A010059(A029318(n)^5)]`
-/

namespace A089575.P8978875153054339810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A029318 n ^ 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089575.P8978875153054339810

/-! ## A089575.P518210335904614723

`floor(∑[cos(A059614(n+5))²])`
-/

namespace A089575.P518210335904614723
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A059614 (n + 5) : ℝ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A089575.P518210335904614723

/-! ## A089575.P8983990809668070499

`∑[A287556(A078931(n+1))%2]`
-/

namespace A089575.P8983990809668070499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287556 (A078931 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089575.P8983990809668070499

/-! ## A089575.P12494634427712504326

`A284263(A114412(n+1)+A105512(n))`
-/

namespace A089575.P12494634427712504326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284263 (A114412 (n + 1) + A105512 n).toNat

end

end A089575.P12494634427712504326

/-!
# A089576: Let p_k = k-th prime, let f((p_k)^n) = m where m is the largest power of p_(k+1) < (p_k)^n. a(n) = number of iterations of f to reach 1, starting from n and starting from k = 1.

The programs for A089576, there is no canonical definition to state claims against.
-/

/-! ## A089576.P3467657679888804138

`∑[char[A347355(n+1)]]`
-/

namespace A089576.P3467657679888804138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347355 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089576.P3467657679888804138

/-! ## A089576.P13583310519963505867

`A000195(∑[∑[A097922(n)]])`
-/

namespace A089576.P13583310519963505867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089576.P13583310519963505867

/-! ## A089576.P3084281146992991436

`A000195(∑[A000099(n+1)])`
-/

namespace A089576.P3084281146992991436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089576.P3084281146992991436

/-! ## A089576.P11575743139262905225

`A000195(∑[record[A078439(n+1)]])`
-/

namespace A089576.P11575743139262905225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078439 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089576.P11575743139262905225

/-!
# A089577: a(n) = r-th prime of the form (p-q)/(q-r) with r=prime(n+1), q=prime(n+2), and primes p > q.

The programs for A089577, there is no canonical definition to state claims against.
-/

/-! ## A089577.P5754467040838238689

`A168323(A078724(n))`
-/

namespace A089577.P5754467040838238689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168323 (A078724 n).toNat

end

end A089577.P5754467040838238689

/-!
# A089579: Total number of perfect powers > 1 below 10^n.

The programs for A089579, there is no canonical definition to state claims against.
-/

/-! ## A089579.P1316406580187181014

`A070428(n+1)-(ceil(sin(n)²)+1)`
-/

namespace A089579.P1316406580187181014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070428 (n + 1) - (⌈Real.sin (n : ℝ) ^ 2⌉ + 1)

end

end A089579.P1316406580187181014

/-! ## A089579.P5740323506683584160

`A070428(n+1)-A036453(n+1)`
-/

namespace A089579.P5740323506683584160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070428 (n + 1) - A036453 (n + 1)

end

end A089579.P5740323506683584160

/-! ## A089579.P10463018519533262731

`A070428(n+1)-(A178334(n)+1)`
-/

namespace A089579.P10463018519533262731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070428 (n + 1) - (A178334 n + 1)

end

end A089579.P10463018519533262731

/-! ## A089579.P17046148047065971322

`A089580(n+1)-A275358(n+1)`
-/

namespace A089579.P17046148047065971322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089580 (n + 1) - A275358 (n + 1)

end

end A089579.P17046148047065971322

/-! ## A089579.P7789196949239885935

`A063524(n+1)+A070428(n+1)-2`
-/

namespace A089579.P7789196949239885935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + (A070428 (n + 1) - 2)

end

end A089579.P7789196949239885935

/-! ## A089579.P13775470640323418535

`A070428(n+1)-(A159075(n+1)+2)`
-/

namespace A089579.P13775470640323418535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070428 (n + 1) - (A159075 (n + 1) + 2)

end

end A089579.P13775470640323418535

/-! ## A089579.P4079229333708736536

`A008683((n+1)²)+A070428(n+1)-2`
-/

namespace A089579.P4079229333708736536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (A070428 (n + 1) - 2)

end

end A089579.P4079229333708736536

/-! ## A089579.P3822630872726460876

`A209229(n²+2)+A070428(n+1)-2`
-/

namespace A089579.P3822630872726460876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n ^ 2 + 2) + (A070428 (n + 1) - 2)

end

end A089579.P3822630872726460876

/-! ## A089579.P7055207822198176644

`A332219(n²+5)+A070428(n+1)-2`
-/

namespace A089579.P7055207822198176644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (n ^ 2 + 5) + (A070428 (n + 1) - 2)

end

end A089579.P7055207822198176644

/-! ## A089579.P4751110194075682482

`A266222(2*n+1)+A070428(n+1)-2`
-/

namespace A089579.P4751110194075682482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 (2 * n + 1) + (A070428 (n + 1) - 2)

end

end A089579.P4751110194075682482

/-! ## A089579.P6336896107243470492

`A070428(n+1)-A000005(A025478(A000005(2*n+1)))`
-/

namespace A089579.P6336896107243470492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070428 (n + 1) - A000005 (A025478 (A000005 (2 * n + 1)).toNat).toNat

end

end A089579.P6336896107243470492

/-!
# A089580: Total number of perfect powers > 1 below 10^n, counting multiple representations separately.

The programs for A089580, there is no canonical definition to state claims against.
-/

/-! ## A089580.P6532080862528280727

`∑[A060298(n+1)]`
-/

namespace A089580.P6532080862528280727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089580.P6532080862528280727

/-! ## A089580.P8579692337907683346

`∑[record[A060298(A106466(n))]]`
-/

namespace A089580.P8579692337907683346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060298 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089580.P8579692337907683346

/-! ## A089580.P7598801081992188122

`∑[record[A060298(A293428(n))]]`
-/

namespace A089580.P7598801081992188122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060298 (A293428 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089580.P7598801081992188122

/-! ## A089580.P16216045257687532496

`∑[record[A060298(A143182(n))]]`
-/

namespace A089580.P16216045257687532496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060298 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089580.P16216045257687532496

/-! ## A089580.P2198791260933155871

`∑[record[A060298(A137734(n))]]`
-/

namespace A089580.P2198791260933155871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060298 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089580.P2198791260933155871

/-! ## A089580.P8113910952663970826

`A275358(n+1)+A089579(n+1)`
-/

namespace A089580.P8113910952663970826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275358 (n + 1) + A089579 (n + 1)

end

end A089580.P8113910952663970826

/-!
# A089581: a(n) = prime(2*n-1)*prime(2*n).

The programs for A089581, the canonical program `A089581.P18062145640790323521` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089581 has offset 1).

The definition of A089581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089581.P18062145640790323521

`A060191(n)*A060192(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A089581

/-- `A060191(n)*A060192(n)` -/
def P18062145640790323521.Spec : Prop :=
  ∀ n, P18062145640790323521.a n = A089581 (n + 1)

theorem P18062145640790323521.correct : P18062145640790323521.Spec := by
  intro n
  simp only [A089581, Nat.add_sub_cancel]

end A089581

/-! ## A089581.P14630080308899052405

`A031215(n+1)*A031368(n+1)`
-/

namespace A089581.P14630080308899052405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) * A031368 (n + 1)

end

end A089581.P14630080308899052405

namespace A089581

/-- `A031215(n+1)*A031368(n+1)` -/
def P14630080308899052405.Spec : Prop :=
  ∀ n, P14630080308899052405.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P2791163338157281370

`A006094(Δ[n²])`
-/

namespace A089581.P2791163338157281370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A089581.P2791163338157281370

namespace A089581

/-- `A006094(Δ[n²])` -/
def P2791163338157281370.Spec : Prop :=
  ∀ n, P2791163338157281370.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P17489157377062692051

`sqrt(A166329(Δ[n²]))`
-/

namespace A089581.P17489157377062692051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A089581.P17489157377062692051

namespace A089581

/-- `sqrt(A166329(Δ[n²]))` -/
def P17489157377062692051.Spec : Prop :=
  ∀ n, P17489157377062692051.a n = (A089581 (n + 1) : ℝ)

end A089581

/-! ## A089581.P4213188499913276666

`A069486(Δ[n²])/2`
-/

namespace A089581.P4213188499913276666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069486 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A089581.P4213188499913276666

namespace A089581

/-- `A069486(Δ[n²])/2` -/
def P4213188499913276666.Spec : Prop :=
  ∀ n, P4213188499913276666.a n = (A089581 (n + 1) : ℚ)

end A089581

/-! ## A089581.P10818890076116417441

`A023515(2*(n+1))+1`
-/

namespace A089581.P10818890076116417441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (2 * (n + 1)) + 1

end

end A089581.P10818890076116417441

namespace A089581

/-- `A023515(2*(n+1))+1` -/
def P10818890076116417441.Spec : Prop :=
  ∀ n, P10818890076116417441.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P12819030719306026122

`A023523(2*(n+1))-1`
-/

namespace A089581.P12819030719306026122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (2 * (n + 1)) - 1

end

end A089581.P12819030719306026122

namespace A089581

/-- `A023523(2*(n+1))-1` -/
def P12819030719306026122.Spec : Prop :=
  ∀ n, P12819030719306026122.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P8757899553818713644

`record[A006094(and(n, n+1)+1)]`
-/

namespace A089581.P8757899553818713644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089581.P8757899553818713644

namespace A089581

/-- `record[A006094(and(n, n+1)+1)]` -/
def P8757899553818713644.Spec : Prop :=
  ∀ n, P8757899553818713644.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P13274188484547060882

`abs(A006094(2*n+1)-1)+1`
-/

namespace A089581.P13274188484547060882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006094 (2 * n + 1) - 1| + 1

end

end A089581.P13274188484547060882

namespace A089581

/-- `abs(A006094(2*n+1)-1)+1` -/
def P13274188484547060882.Spec : Prop :=
  ∀ n, P13274188484547060882.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P12419367948376741578

`record[A006094(A060819(n+1))]`
-/

namespace A089581.P12419367948376741578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A060819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089581.P12419367948376741578

namespace A089581

/-- `record[A006094(A060819(n+1))]` -/
def P12419367948376741578.Spec : Prop :=
  ∀ n, P12419367948376741578.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P12630558133944661192

`A000040(Δ[n²])*A031215(n+1)`
-/

namespace A089581.P12630558133944661192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A031215 (n + 1)

end

end A089581.P12630558133944661192

namespace A089581

/-- `A000040(Δ[n²])*A031215(n+1)` -/
def P12630558133944661192.Spec : Prop :=
  ∀ n, P12630558133944661192.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P10057344435010286239

`char[A275895(n)]*A006094(2*n+1)`
-/

namespace A089581.P10057344435010286239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006094 (2 * n + 1)

end

end A089581.P10057344435010286239

namespace A089581

/-- `char[A275895(n)]*A006094(2*n+1)` -/
def P10057344435010286239.Spec : Prop :=
  ∀ n, P10057344435010286239.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P18439585488995669890

`A100479(n+1)+A037165(2*n+1)`
-/

namespace A089581.P18439585488995669890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) + A037165 (2 * n + 1)

end

end A089581.P18439585488995669890

namespace A089581

/-- `A100479(n+1)+A037165(2*n+1)` -/
def P18439585488995669890.Spec : Prop :=
  ∀ n, P18439585488995669890.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P7328302448612729645

`A006094(2*n+1)+A000007(n+2)`
-/

namespace A089581.P7328302448612729645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (2 * n + 1) + A000007 (n + 2)

end

end A089581.P7328302448612729645

namespace A089581

/-- `A006094(2*n+1)+A000007(n+2)` -/
def P7328302448612729645.Spec : Prop :=
  ∀ n, P7328302448612729645.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P7012262541498982018

`A111071(2*n+1)+A031368(n+2)`
-/

namespace A089581.P7012262541498982018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (2 * n + 1) + A031368 (n + 2)

end

end A089581.P7012262541498982018

namespace A089581

/-- `A111071(2*n+1)+A031368(n+2)` -/
def P7012262541498982018.Spec : Prop :=
  ∀ n, P7012262541498982018.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P16892702088601621470

`A000040(2*(n+1))*A031368(n+1)`
-/

namespace A089581.P16892702088601621470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) * A031368 (n + 1)

end

end A089581.P16892702088601621470

namespace A089581

/-- `A000040(2*(n+1))*A031368(n+1)` -/
def P16892702088601621470.Spec : Prop :=
  ∀ n, P16892702088601621470.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P10255884188479546946

`A008578(2*(n+1))*A031215(n+1)`
-/

namespace A089581.P10255884188479546946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * (n + 1)) * A031215 (n + 1)

end

end A089581.P10255884188479546946

namespace A089581

/-- `A008578(2*(n+1))*A031215(n+1)` -/
def P10255884188479546946.Spec : Prop :=
  ∀ n, P10255884188479546946.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P6516440065675262687

`A031215(n+1)*A213642(2*n+1)`
-/

namespace A089581.P6516440065675262687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) * A213642 (2 * n + 1)

end

end A089581.P6516440065675262687

namespace A089581

/-- `A031215(n+1)*A213642(2*n+1)` -/
def P6516440065675262687.Spec : Prop :=
  ∀ n, P6516440065675262687.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P2393782183246400018

`A000040(2*(n+1))*A000040(Δ[n²])`
-/

namespace A089581.P2393782183246400018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) * A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A089581.P2393782183246400018

namespace A089581

/-- `A000040(2*(n+1))*A000040(Δ[n²])` -/
def P2393782183246400018.Spec : Prop :=
  ∀ n, P2393782183246400018.a n = A089581 (n + 1)

end A089581

/-! ## A089581.P15331729696762122315

`A000040(2*n+1)*Δ[A073738(2*n)]`
-/

namespace A089581.P15331729696762122315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073738 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1) * (f1 (n + 1) - f1 n)

end

end A089581.P15331729696762122315

namespace A089581

/-- `A000040(2*n+1)*Δ[A073738(2*n)]` -/
def P15331729696762122315.Spec : Prop :=
  ∀ n, P15331729696762122315.a n = A089581 (n + 1)

end A089581

/-!
# A089582: From Gilbreath's conjecture.

The programs for A089582, there is no canonical definition to state claims against.
-/

/-! ## A089582.P1698666689383034082

`floor(acot(A213014(n+1))²)`
-/

namespace A089582.P1698666689383034082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A213014 (n + 1) : ℝ) ^ 2⌋

end

end A089582.P1698666689383034082

/-! ## A089582.P16128055523361065116

`A000038(A213014(n+1))`
-/

namespace A089582.P16128055523361065116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A213014 (n + 1)).toNat

end

end A089582.P16128055523361065116

/-! ## A089582.P3333674279358947940

`floor(2/A000040(n+1)^A213014(n+1))`
-/

namespace A089582.P3333674279358947940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A000040 (n + 1) : ℚ) ^ (A213014 (n + 1) : ℤ)⌋

end

end A089582.P3333674279358947940

/-! ## A089582.P12477689154460242655

`val(A213014(n+1)+A255483(n)², A255483(n))`
-/

namespace A089582.P12477689154460242655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A213014 (n + 1) + A255483 n ^ 2).toNat (A255483 n).toNat

end

end A089582.P12477689154460242655

/-! ## A089582.P16151505123598250824

`Δ[A343414(n+2)]%4`
-/

namespace A089582.P16151505123598250824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343414 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4

end

end A089582.P16151505123598250824

/-! ## A089582.P18048106026600419235

`val((A213014(n+1)+A036277(n))², A036277(n))`
-/

namespace A089582.P18048106026600419235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A213014 (n + 1) + A036277 n) ^ 2).toNat (A036277 n).toNat

end

end A089582.P18048106026600419235

/-! ## A089582.P18407571034971075377

`A362463(A167614(n+2))`
-/

namespace A089582.P18407571034971075377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362463 (A167614 (n + 2)).toNat

end

end A089582.P18407571034971075377

/-! ## A089582.P5619727874768779809

`A036261(∑[n+1]+2)`
-/

namespace A089582.P5619727874768779809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A089582.P5619727874768779809

/-! ## A089582.P4940713728609524001

`A036262(∑[n+2]+2)`
-/

namespace A089582.P4940713728609524001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A089582.P4940713728609524001

/-! ## A089582.P5087026267912845039

`dr(A036262(A134869(n+2)))`
-/

namespace A089582.P5087026267912845039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A036262 (A134869 (n + 2)).toNat)

end

end A089582.P5087026267912845039

/-!
# A089583: Numbers n which are a multiple of A068505(n) (= n read in base m+1 where m = largest digit of n).

The programs for A089583, there is no canonical definition to state claims against.
-/

/-! ## A089583.P10009521437692970389

`record[A130573(A256754(n)+A043562(n))]`
-/

namespace A089583.P10009521437692970389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A256754 n + A043562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089583.P10009521437692970389

/-! ## A089583.P13296554294735585328

`lt[A069554(n+1), A008458(A350385(n+1))]`
-/

namespace A089583.P13296554294735585328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A350385 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089583.P13296554294735585328

/-! ## A089583.P17592908781090241051

`lt[A083960(n+1)+1, A183212(n+1)]`
-/

namespace A089583.P17592908781090241051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083960 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089583.P17592908781090241051

/-! ## A089583.P3555125890877740435

`lt[A000010(A061497(n+1)), ∑{d}[∏{p}[n+1, #], (n+1)/#]]`
-/

namespace A089583.P3555125890877740435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A061497 (n + 1)).toNat

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (n + 1 : ℚ) / (d : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A089583.P3555125890877740435

/-! ## A089583.P13551074706385916983

`lt[A083960(n+1), A055714(A078833(n+1))]`
-/

namespace A089583.P13551074706385916983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055714 (A078833 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089583.P13551074706385916983

/-!
# A089584: Numbers n which are a proper multiple (>1) of A068505(n) (= n read in base m+1 where m = largest digit of n).

The programs for A089584, there is no canonical definition to state claims against.
-/

/-! ## A089584.P7183269851336699903

`A216836(∑[A328403(n)-1])`
-/

namespace A089584.P7183269851336699903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328403 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089584.P7183269851336699903

/-!
# A089585: Records in A005589.

The programs for A089585, there is no canonical definition to state claims against.
-/

/-! ## A089585.P15261582131370519310

`A302128(n+6)+A048766(A000578(n+1))`
-/

namespace A089585.P15261582131370519310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302128 (n + 6) + A048766 (A000578 (n + 1)).toNat

end

end A089585.P15261582131370519310

/-! ## A089585.P11325699732992204659

`lt[7, A111047(n+1)%A091655(2*(n+2))]`
-/

namespace A089585.P11325699732992204659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111047 (n + 1)) (A091655 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089585.P11325699732992204659

/-! ## A089585.P14956752717957509617

`A204553(A335271(n+1))-1+n`
-/

namespace A089585.P14956752717957509617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A335271 (n + 1)).toNat - 1 + (n : ℤ)

end

end A089585.P14956752717957509617

/-! ## A089585.P17838412980218365305

`lt[A100428(2*(n+2)), A391239(A282582(n+1))]`
-/

namespace A089585.P17838412980218365305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391239 (A282582 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089585.P17838412980218365305

/-! ## A089585.P17351645072804259824

`A062575(A036789(n+1))`
-/

namespace A089585.P17351645072804259824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (A036789 (n + 1)).toNat

end

end A089585.P17351645072804259824

/-!
# A089586: Number of arborescent (stellar-rational or prysmatic-rational) knots and links.

The programs for A089586, there is no canonical definition to state claims against.
-/

/-! ## A089586.P1269883921852515013

`round(A319752(n)/acot(n))+n`
-/

namespace A089586.P1269883921852515013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319752 n : ℝ) / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)

end

end A089586.P1269883921852515013

/-!
# A089591: "Lazy binary" representation of n. Also called redundant binary representation of n.

The programs for A089591, there is no canonical definition to state claims against.
-/

/-! ## A089591.P14336323641288464335

`A007931(2*n+1)-A007088(n+1)`
-/

namespace A089591.P14336323641288464335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (2 * n + 1) - A007088 (n + 1)

end

end A089591.P14336323641288464335

/-! ## A089591.P2732818922586339138

`A007089(A137951(n))`
-/

namespace A089591.P2732818922586339138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A137951 n).toNat

end

end A089591.P2732818922586339138

/-! ## A089591.P16304487091954705853

`A007089(A147991(n+1)-1)`
-/

namespace A089591.P16304487091954705853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A147991 (n + 1) - 1).toNat

end

end A089591.P16304487091954705853

/-! ## A089591.P4987417157036378648

`A109683(A137951(2*n-n))`
-/

namespace A089591.P4987417157036378648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109683 (A137951 (2 * n - n)).toNat

end

end A089591.P4987417157036378648

/-! ## A089591.P5432483387482301601

`A007089(record[A308364(n+1)-1])`
-/

namespace A089591.P5432483387482301601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A089591.P5432483387482301601

/-! ## A089591.P10130955635515903592

`A007089(A032924(2*n+1)-A005836(n+2))`
-/

namespace A089591.P10130955635515903592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A032924 (2 * n + 1) - A005836 (n + 2)).toNat

end

end A089591.P10130955635515903592

/-! ## A089591.P15911380910837598556

`A007089(lt[A343230(n+1), 1])`
-/

namespace A089591.P15911380910837598556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343230 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A089591.P15911380910837598556

/-!
# A089592: For any prime p, define a sequence S_p: S_p(1) = p and S_p(n+1) is the least prime > S_p(n) that begins with the last digit of S_p(n). Let f(p) be the first member of S_p that is the digit reversal of the previous member. Sequence contains primes p that such that f(p) does not equal f(q) for any q < p.

The programs for A089592, there is no canonical definition to state claims against.
-/

/-! ## A089592.P13041634384226363128

`∩[A045338(n+1), A102528(n+1)]`
-/

namespace A089592.P13041634384226363128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089592.P13041634384226363128

/-! ## A089592.P5690211935963939

`A095749(A008951(n)*A296762(2*n+3))`
-/

namespace A089592.P5690211935963939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095749 (A008951 n * A296762 (2 * n + 3)).toNat

end

end A089592.P5690211935963939

/-!
# A089593: Numbers k such that k^2 + 2k + 2 is prime.

The programs for A089593, the canonical program `A089593.P11264897865475131752` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089593 has offset 1).

The definition of A089593 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089593.P11264897865475131752

`A005574(n+1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A089593

/-- `A005574(n+1)-1` -/
def P11264897865475131752.Spec : Prop :=
  ∀ n, P11264897865475131752.a n = A089593 (n + 1)

theorem P11264897865475131752.correct : P11264897865475131752.Spec := by
  intro n
  simp only [A089593, Nat.add_sub_cancel]

end A089593

/-! ## A089593.P571045875097524222

`A090693(n+1)-2`
-/

namespace A089593.P571045875097524222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1) - 2

end

end A089593.P571045875097524222

namespace A089593

/-- `A090693(n+1)-2` -/
def P571045875097524222.Spec : Prop :=
  ∀ n, P571045875097524222.a n = A089593 (n + 1)

end A089593

/-! ## A089593.P10913989014369029910

`A059793(n)/2-1`
-/

namespace A089593.P10913989014369029910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059793 n : ℚ) / 2 - 1

end

end A089593.P10913989014369029910

namespace A089593

/-- `A059793(n)/2-1` -/
def P10913989014369029910.Spec : Prop :=
  ∀ n, P10913989014369029910.a n = (A089593 (n + 1) : ℚ)

end A089593

/-! ## A089593.P5056272733805042622

`sqrt(A075408(n+1))-1`
-/

namespace A089593.P5056272733805042622
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075408 (n + 1) : ℝ) - 1

end

end A089593.P5056272733805042622

namespace A089593

/-- `sqrt(A075408(n+1))-1` -/
def P5056272733805042622.Spec : Prop :=
  ∀ n, P5056272733805042622.a n = (A089593 (n + 1) : ℝ)

end A089593

/-! ## A089593.P14816474531570020593

`floor(sqrt(A002496(n+1)))-1`
-/

namespace A089593.P14816474531570020593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002496 (n + 1)) - 1

end

end A089593.P14816474531570020593

namespace A089593

/-- `floor(sqrt(A002496(n+1)))-1` -/
def P14816474531570020593.Spec : Prop :=
  ∀ n, P14816474531570020593.a n = A089593 (n + 1)

end A089593

/-! ## A089593.P16427498162169387696

`a(n-1)+A206400(n)+1` with `a(0)=0`
-/

namespace A089593.P16427498162169387696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A206400 n + 1)

end

end A089593.P16427498162169387696

namespace A089593

/-- `a(n-1)+A206400(n)+1` -/
def P16427498162169387696.Spec : Prop :=
  ∀ n, P16427498162169387696.a n = A089593 (n + 1)

end A089593

/-! ## A089593.P3562488974098976001

`A059793(n)%A090693(n+1)`
-/

namespace A089593.P3562488974098976001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059793 n) (A090693 (n + 1))

end

end A089593.P3562488974098976001

namespace A089593

/-- `A059793(n)%A090693(n+1)` -/
def P3562488974098976001.Spec : Prop :=
  ∀ n, P3562488974098976001.a n = A089593 (n + 1)

end A089593

/-! ## A089593.P2685800051647681279

`A382617(n+1)%A090693(n+1)`
-/

namespace A089593.P2685800051647681279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382617 (n + 1)) (A090693 (n + 1))

end

end A089593.P2685800051647681279

namespace A089593

/-- `A382617(n+1)%A090693(n+1)` -/
def P2685800051647681279.Spec : Prop :=
  ∀ n, P2685800051647681279.a n = A089593 (n + 1)

end A089593

/-! ## A089593.P3683866976661927598

`∑[A214516(n+1)]-A214516(n+1)`
-/

namespace A089593.P3683866976661927598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214516 (n + 1)

end

end A089593.P3683866976661927598

namespace A089593

/-- `∑[A214516(n+1)]-A214516(n+1)` -/
def P3683866976661927598.Spec : Prop :=
  ∀ n, P3683866976661927598.a n = A089593 (n + 1)

end A089593

/-! ## A089593.P5784002562021803812

`(A382617(n+1)-A002496(n+1))/A002496(n+1)`
-/

namespace A089593.P5784002562021803812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382617 (n + 1) - A002496 (n + 1) : ℚ) / (A002496 (n + 1) : ℚ)

end

end A089593.P5784002562021803812

namespace A089593

/-- `(A382617(n+1)-A002496(n+1))/A002496(n+1)` -/
def P5784002562021803812.Spec : Prop :=
  ∀ n, P5784002562021803812.a n = (A089593 (n + 1) : ℚ)

end A089593

/-! ## A089593.P11671177690623971752

`floor(sqrt(A163588(n+2)))-1`
-/

namespace A089593.P11671177690623971752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163588 (n + 2)) - 1

end

end A089593.P11671177690623971752

namespace A089593

/-- `floor(sqrt(A163588(n+2)))-1` -/
def P11671177690623971752.Spec : Prop :=
  ∀ n, P11671177690623971752.a n = A089593 (n + 1)

end A089593

/-! ## A089593.P7405897963795364091

`eq[1, A295405(n+1)]`
-/

namespace A089593.P7405897963795364091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089593.P7405897963795364091

namespace A089593

/-- `eq[1, A295405(n+1)]` -/
def P7405897963795364091.Spec : Prop :=
  ∀ n, (P7405897963795364091.a n : ℤ) = A089593 (n + 1)

end A089593

/-! ## A089593.P12439217279557184808

`eq[0, A249122(n+1)]`
-/

namespace A089593.P12439217279557184808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089593.P12439217279557184808

namespace A089593

/-- `eq[0, A249122(n+1)]` -/
def P12439217279557184808.Spec : Prop :=
  ∀ n, (P12439217279557184808.a n : ℤ) = A089593 (n + 1)

end A089593

/-! ## A089593.P10938277488389341335

`A008297(A309054(3*n))+A005574(n+1)`
-/

namespace A089593.P10938277488389341335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008297 (A309054 (3 * n)).toNat + A005574 (n + 1)

end

end A089593.P10938277488389341335

namespace A089593

/-- `A008297(A309054(3*n))+A005574(n+1)` -/
def P10938277488389341335.Spec : Prop :=
  ∀ n, P10938277488389341335.a n = A089593 (n + 1)

end A089593

/-! ## A089593.P7128838905928482451

`floor(sqrt(A168024(n)))-1`
-/

namespace A089593.P7128838905928482451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A168024 n) - 1

end

end A089593.P7128838905928482451

namespace A089593

/-- `floor(sqrt(A168024(n)))-1` -/
def P7128838905928482451.Spec : Prop :=
  ∀ n, P7128838905928482451.a n = A089593 (n + 1)

end A089593

/-! ## A089593.P7437578956370415208

`eq[0, A147809(n+1)]`
-/

namespace A089593.P7437578956370415208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089593.P7437578956370415208

namespace A089593

/-- `eq[0, A147809(n+1)]` -/
def P7437578956370415208.Spec : Prop :=
  ∀ n, (P7437578956370415208.a n : ℤ) = A089593 (n + 1)

end A089593

/-! ## A089593.P7895784120390458287

`eq[0, A252096(n+1)]`
-/

namespace A089593.P7895784120390458287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089593.P7895784120390458287

namespace A089593

/-- `eq[0, A252096(n+1)]` -/
def P7895784120390458287.Spec : Prop :=
  ∀ n, (P7895784120390458287.a n : ℤ) = A089593 (n + 1)

end A089593

/-! ## A089593.P4146297049759996240

`eq[0, A261609(n+1)]`
-/

namespace A089593.P4146297049759996240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089593.P4146297049759996240

namespace A089593

/-- `eq[0, A261609(n+1)]` -/
def P4146297049759996240.Spec : Prop :=
  ∀ n, (P4146297049759996240.a n : ℤ) = A089593 (n + 1)

end A089593

/-! ## A089593.P7797813267659077589

`eq[1, A035092(n+1)]`
-/

namespace A089593.P7797813267659077589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089593.P7797813267659077589

namespace A089593

/-- `eq[1, A035092(n+1)]` -/
def P7797813267659077589.Spec : Prop :=
  ∀ n, (P7797813267659077589.a n : ℤ) = A089593 (n + 1)

end A089593

/-! ## A089593.P1263023901663638090

`eq[1, A053000(n+1)]`
-/

namespace A089593.P1263023901663638090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089593.P1263023901663638090

namespace A089593

/-- `eq[1, A053000(n+1)]` -/
def P1263023901663638090.Spec : Prop :=
  ∀ n, (P1263023901663638090.a n : ℤ) = A089593 (n + 1)

end A089593

/-!
# A089594: Alternating sum of squares to n.

The programs for A089594, the canonical program `A089594.P14342955740646271075` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089594 has offset 1).

The definition of A089594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089594.P14342955740646271075

`(-1)^n*∑[xor(n, -1)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A089594

/-- `(-1)^n*∑[xor(n, -1)]` -/
def P14342955740646271075.Spec : Prop :=
  ∀ n, P14342955740646271075.a n = A089594 (n + 1)

theorem P14342955740646271075.correct : P14342955740646271075.Spec := by
  intro n
  simp only [A089594, Nat.add_sub_cancel]

end A089594

/-! ## A089594.P962064132065290968

`∑[xor(n, -1)]/(-1)^n`
-/

namespace A089594.P962064132065290968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A089594.P962064132065290968

namespace A089594

/-- `∑[xor(n, -1)]/(-1)^n` -/
def P962064132065290968.Spec : Prop :=
  ∀ n, P962064132065290968.a n = (A089594 (n + 1) : ℚ)

end A089594

/-! ## A089594.P449236825414509843

`(-1)^n*∑[-(n+1)]`
-/

namespace A089594.P449236825414509843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089594.P449236825414509843

namespace A089594

/-- `(-1)^n*∑[-(n+1)]` -/
def P449236825414509843.Spec : Prop :=
  ∀ n, P449236825414509843.a n = A089594 (n + 1)

end A089594

/-! ## A089594.P9696921039194814196

`∑[n+1]/(n-xor(1, n))`
-/

namespace A089594.P9696921039194814196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((n : ℤ) - (Nat.xor 1 n : ℤ) : ℚ)

end

end A089594.P9696921039194814196

namespace A089594

/-- `∑[n+1]/(n-xor(1, n))` -/
def P9696921039194814196.Spec : Prop :=
  ∀ n, P9696921039194814196.a n = (A089594 (n + 1) : ℚ)

end A089594

/-! ## A089594.P17860485700671888431

`C(n+2, 2)/(-1)^(n+1)`
-/

namespace A089594.P17860485700671888431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℚ) / ((-1) ^ (n + 1) : ℚ)

end

end A089594.P17860485700671888431

namespace A089594

/-- `C(n+2, 2)/(-1)^(n+1)` -/
def P17860485700671888431.Spec : Prop :=
  ∀ n, P17860485700671888431.a n = (A089594 (n + 1) : ℚ)

end A089594

/-! ## A089594.P17086951997045046914

`∑[n+1]/(3-2*gcd(2, n))`
-/

namespace A089594.P17086951997045046914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 - (2 * Nat.gcd 2 n : ℤ) : ℚ)

end

end A089594.P17086951997045046914

namespace A089594

/-- `∑[n+1]/(3-2*gcd(2, n))` -/
def P17086951997045046914.Spec : Prop :=
  ∀ n, P17086951997045046914.a n = (A089594 (n + 1) : ℚ)

end A089594

/-! ## A089594.P10225453333342085620

`∑[n+1]/(2*and(1, n)-1)`
-/

namespace A089594.P10225453333342085620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((2 * Nat.land 1 n : ℤ) - 1 : ℚ)

end

end A089594.P10225453333342085620

namespace A089594

/-- `∑[n+1]/(2*and(1, n)-1)` -/
def P10225453333342085620.Spec : Prop :=
  ∀ n, P10225453333342085620.a n = (A089594 (n + 1) : ℚ)

end A089594

/-! ## A089594.P5755370912884247279

`∑[a(n-1)-1]/(-1)^n` with `a(0)=-1`
-/

namespace A089594.P5755370912884247279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A089594.P5755370912884247279

namespace A089594

/-- `∑[a(n-1)-1]/(-1)^n` -/
def P5755370912884247279.Spec : Prop :=
  ∀ n, P5755370912884247279.a n = (A089594 (n + 1) : ℚ)

end A089594

/-! ## A089594.P8481178224365311071

`∑[(2*and(1, n)-1)*(n+1)²]`
-/

namespace A089594.P8481178224365311071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.land 1 n : ℤ) - 1) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089594.P8481178224365311071

namespace A089594

/-- `∑[(2*and(1, n)-1)*(n+1)²]` -/
def P8481178224365311071.Spec : Prop :=
  ∀ n, P8481178224365311071.a n = A089594 (n + 1)

end A089594

/-! ## A089594.P7294107512919853458

`a(n-1)/(2/(n+2)-1)` with `a(0)=-1`
-/

namespace A089594.P7294107512919853458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) / (2 / (n + 2 : ℚ) - 1)

end

end A089594.P7294107512919853458

namespace A089594

/-- `a(n-1)/(2/(n+2)-1)` -/
def P7294107512919853458.Spec : Prop :=
  ∀ n, P7294107512919853458.a n = (A089594 (n + 1) : ℚ)

end A089594

/-! ## A089594.P15693766373880552391

`(∑[n]²-∑[n])/a(n-2)` with `a(0)=-1, a(1)=3`
-/

namespace A089594.P15693766373880552391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 3] fun n a =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ) / a (n - 2)

end

end A089594.P15693766373880552391

namespace A089594

/-- `(∑[n]²-∑[n])/a(n-2)` -/
def P15693766373880552391.Spec : Prop :=
  ∀ n, P15693766373880552391.a n = (A089594 (n + 1) : ℚ)

end A089594

/-! ## A089594.P18142935081729976452

`2*and(1, n)*∑[n+1]-∑[n+1]`
-/

namespace A089594.P18142935081729976452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.land 1 n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A089594.P18142935081729976452

namespace A089594

/-- `2*and(1, n)*∑[n+1]-∑[n+1]` -/
def P18142935081729976452.Spec : Prop :=
  ∀ n, P18142935081729976452.a n = A089594 (n + 1)

end A089594

/-! ## A089594.P18025957147440615749

`(n+1)*(-1)^(n+1)-a(n-1)` with `a(0)=-1`
-/

namespace A089594.P18025957147440615749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  (n + 1 : ℤ) * (-1) ^ (n + 1) - a (n - 1)

end

end A089594.P18025957147440615749

namespace A089594

/-- `(n+1)*(-1)^(n+1)-a(n-1)` -/
def P18025957147440615749.Spec : Prop :=
  ∀ n, P18025957147440615749.a n = A089594 (n + 1)

end A089594

/-! ## A089594.P16717750846538077925

`∑[n+1]/(2*n+1-2*or(1, n))`
-/

namespace A089594.P16717750846538077925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((2 * n + 1 : ℤ) - (2 * Nat.lor 1 n : ℤ) : ℚ)

end

end A089594.P16717750846538077925

namespace A089594

/-- `∑[n+1]/(2*n+1-2*or(1, n))` -/
def P16717750846538077925.Spec : Prop :=
  ∀ n, P16717750846538077925.a n = (A089594 (n + 1) : ℚ)

end A089594

/-! ## A089594.P4044723941310858443

`∑[Δ[lcm(n+1, 2*n)]-(2*n+n+3)]`
-/

namespace A089594.P4044723941310858443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (2 * n + (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089594.P4044723941310858443

namespace A089594

/-- `∑[Δ[lcm(n+1, 2*n)]-(2*n+n+3)]` -/
def P4044723941310858443.Spec : Prop :=
  ∀ n, P4044723941310858443.a n = A089594 (n + 1)

end A089594

/-! ## A089594.P15667319729895179494

`Δ[A083392(n)]`
-/

namespace A089594.P15667319729895179494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089594.P15667319729895179494

namespace A089594

/-- `Δ[A083392(n)]` -/
def P15667319729895179494.Spec : Prop :=
  ∀ n, P15667319729895179494.a n = A089594 (n + 1)

end A089594

/-! ## A089594.P479448134486256880

`∑[-A162395(n+1)]`
-/

namespace A089594.P479448134486256880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A162395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089594.P479448134486256880

namespace A089594

/-- `∑[-A162395(n+1)]` -/
def P479448134486256880.Spec : Prop :=
  ∀ n, P479448134486256880.a n = A089594 (n + 1)

end A089594

/-! ## A089594.P14208310548278940929

`A131723(n)-A152032(n)`
-/

namespace A089594.P14208310548278940929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131723 n - A152032 n

end

end A089594.P14208310548278940929

namespace A089594

/-- `A131723(n)-A152032(n)` -/
def P14208310548278940929.Spec : Prop :=
  ∀ n, P14208310548278940929.a n = A089594 (n + 1)

end A089594

/-! ## A089594.P3184595290150686547

`A083392(n+1)-A083392(n)`
-/

namespace A089594.P3184595290150686547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 (n + 1) - A083392 n

end

end A089594.P3184595290150686547

namespace A089594

/-- `A083392(n+1)-A083392(n)` -/
def P3184595290150686547.Spec : Prop :=
  ∀ n, P3184595290150686547.a n = A089594 (n + 1)

end A089594

/-!
# A089596: G.f.: (1+2*x^3+3*x^6+x^8+6*x^9+2*x^11+9*x^12+x^14+10*x^15+x^16+9*x^18+2*x^19 +6*x^21 +x^22+3*x^24+2*x^27+x^30) / ((1-x^5)^2*(1-x^12)^2).

The programs for A089596, there is no canonical definition to state claims against.
-/

/-! ## A089596.P4589332864410309151

`A327051(A095331(n+1))+A317239(n)`
-/

namespace A089596.P4589332864410309151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A095331 (n + 1)).toNat + A317239 n

end

end A089596.P4589332864410309151

/-! ## A089596.P17898232254243527575

`A317239(n)+A083896(A077741(n+1))`
-/

namespace A089596.P17898232254243527575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317239 n + A083896 (A077741 (n + 1)).toNat

end

end A089596.P17898232254243527575

/-! ## A089596.P14003733033142406999

`A317239(n)+A125005(A052839(2*n+1))`
-/

namespace A089596.P14003733033142406999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317239 n + A125005 (A052839 (2 * n + 1)).toNat

end

end A089596.P14003733033142406999

/-!
# A089597: G.f.: (1+x)*(1+x^3)*(1+x^5)*(1+x^7)/((1-x^2)*(1-x^4)*(1-x^6)*(1-x^8)).

The programs for A089597, there is no canonical definition to state claims against.
-/

/-! ## A089597.P6261976156802454271

`A316675(A056126(n)+44)`
-/

namespace A089597.P6261976156802454271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316675 (A056126 n + 44).toNat

end

end A089597.P6261976156802454271

/-! ## A089597.P14650304551207734973

`A316675(A000096(n+7)+9)`
-/

namespace A089597.P14650304551207734973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316675 (A000096 (n + 7) + 9).toNat

end

end A089597.P14650304551207734973

/-! ## A089597.P3216109609375667145

`∑[A000120(A078014(n)²)]`
-/

namespace A089597.P3216109609375667145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A078014 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089597.P3216109609375667145

/-! ## A089597.P7612190017435363951

`∑[A007302(A078014(n)²)]`
-/

namespace A089597.P7612190017435363951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A078014 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089597.P7612190017435363951

/-! ## A089597.P12925282684858602054

`∑[A000120(∑[A009116(n)]²)]`
-/

namespace A089597.P12925282684858602054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089597.P12925282684858602054

/-!
# A089598: G.f.: (1+x^2+x^3)/(1-x^3)^2.

The programs for A089598, the canonical program `A089598.P9123825779424341457` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089598 has offset 0).

The definition of A089598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089598.P9123825779424341457

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=0, a(5)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A089598

/-- `2*a(n-3)-a(n-6)` -/
def P9123825779424341457.Spec : Prop :=
  ∀ n, P9123825779424341457.a n = A089598 n

theorem P9123825779424341457.correct : P9123825779424341457.Spec := by
  intro n
  simp only [A089598]

end A089598

/-! ## A089598.P9295383068238344341

`floor((n+2)²/3)%(n+2)`
-/

namespace A089598.P9295383068238344341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n + 2) ^ 2 : ℚ) / 3⌋ (n + 2 : ℤ)

end

end A089598.P9295383068238344341

namespace A089598

/-- `floor((n+2)²/3)%(n+2)` -/
def P9295383068238344341.Spec : Prop :=
  ∀ n, P9295383068238344341.a n = A089598 n

end A089598

/-! ## A089598.P3637329120571831550

`a(n-3)+(n-1)%3` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A089598.P3637329120571831550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 3) + Int.tmod ((n : ℤ) - 1) 3

end

end A089598.P3637329120571831550

namespace A089598

/-- `a(n-3)+(n-1)%3` -/
def P3637329120571831550.Spec : Prop :=
  ∀ n, P3637329120571831550.a n = A089598 n

end A089598

/-! ## A089598.P974844184448583717

`floor((n+3)/(n-1)*a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A089598.P974844184448583717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ⌊(n + 3 : ℚ) / ((n : ℤ) - 1 : ℚ) * (a (n - 3) : ℚ)⌋

end

end A089598.P974844184448583717

namespace A089598

/-- `floor((n+3)/(n-1)*a(n-3))` -/
def P974844184448583717.Spec : Prop :=
  ∀ n, P974844184448583717.a n = A089598 n

end A089598

/-! ## A089598.P12368128158897989468

`∑[ceil(Δ[n²]/3)]-(n+1)*ceil(n/3)`
-/

namespace A089598.P12368128158897989468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ) * ⌈(n : ℚ) / 3⌉

end

end A089598.P12368128158897989468

namespace A089598

/-- `∑[ceil(Δ[n²]/3)]-(n+1)*ceil(n/3)` -/
def P12368128158897989468.Spec : Prop :=
  ∀ n, P12368128158897989468.a n = A089598 n

end A089598

/-! ## A089598.P10888156520931464828

`Δ[A001318(round(2*n/3))]`
-/

namespace A089598.P10888156520931464828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089598.P10888156520931464828

namespace A089598

/-- `Δ[A001318(round(2*n/3))]` -/
def P10888156520931464828.Spec : Prop :=
  ∀ n, P10888156520931464828.a n = A089598 n

end A089598

/-! ## A089598.P7832463416228903243

`A092092(A064429(n)+1)`
-/

namespace A089598.P7832463416228903243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A064429 n + 1).toNat

end

end A089598.P7832463416228903243

namespace A089598

/-- `A092092(A064429(n)+1)` -/
def P7832463416228903243.Spec : Prop :=
  ∀ n, P7832463416228903243.a n = A089598 n

end A089598

/-! ## A089598.P18231092917301257064

`A092092(A080782(n+1))`
-/

namespace A089598.P18231092917301257064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A080782 (n + 1)).toNat

end

end A089598.P18231092917301257064

namespace A089598

/-- `A092092(A080782(n+1))` -/
def P18231092917301257064.Spec : Prop :=
  ∀ n, P18231092917301257064.a n = A089598 n

end A089598

/-! ## A089598.P6007619886674711111

`A057078(n)*A166711(n+1)`
-/

namespace A089598.P6007619886674711111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A166711 (n + 1)

end

end A089598.P6007619886674711111

namespace A089598

/-- `A057078(n)*A166711(n+1)` -/
def P6007619886674711111.Spec : Prop :=
  ∀ n, P6007619886674711111.a n = A089598 n

end A089598

/-! ## A089598.P1432364346281227837

`xor(A087508(n), A092092(n+1))`
-/

namespace A089598.P1432364346281227837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087508 n) (A092092 (n + 1))

end

end A089598.P1432364346281227837

namespace A089598

/-- `xor(A087508(n), A092092(n+1))` -/
def P1432364346281227837.Spec : Prop :=
  ∀ n, P1432364346281227837.a n = A089598 n

end A089598

/-! ## A089598.P11398432237896088428

`(A122918(n)+A002264(n+1))*A057078(n)`
-/

namespace A089598.P11398432237896088428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122918 n + A002264 (n + 1)) * A057078 n

end

end A089598.P11398432237896088428

namespace A089598

/-- `(A122918(n)+A002264(n+1))*A057078(n)` -/
def P11398432237896088428.Spec : Prop :=
  ∀ n, P11398432237896088428.a n = A089598 n

end A089598

/-! ## A089598.P2790438255264253507

`(A099254(n+1)-A076118(n+1))*A076118(n+1)`
-/

namespace A089598.P2790438255264253507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099254 (n + 1) - A076118 (n + 1)) * A076118 (n + 1)

end

end A089598.P2790438255264253507

namespace A089598

/-- `(A099254(n+1)-A076118(n+1))*A076118(n+1)` -/
def P2790438255264253507.Spec : Prop :=
  ∀ n, P2790438255264253507.a n = A089598 n

end A089598

/-! ## A089598.P1217235528277914878

`(A099254(n+1)-A110161(2*n+1))*A110161(2*n+1)`
-/

namespace A089598.P1217235528277914878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099254 (n + 1) - A110161 (2 * n + 1)) * A110161 (2 * n + 1)

end

end A089598.P1217235528277914878

namespace A089598

/-- `(A099254(n+1)-A110161(2*n+1))*A110161(2*n+1)` -/
def P1217235528277914878.Spec : Prop :=
  ∀ n, P1217235528277914878.a n = A089598 n

end A089598

/-! ## A089598.P5835415545983051994

`Δ[C(∑[(n+1)%3], 2)]/3`
-/

namespace A089598.P5835415545983051994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3

end

end A089598.P5835415545983051994

namespace A089598

/-- `Δ[C(∑[(n+1)%3], 2)]/3` -/
def P5835415545983051994.Spec : Prop :=
  ∀ n, P5835415545983051994.a n = (A089598 n : ℚ)

end A089598

/-! ## A089598.P16579390269057920297

`A010892(n+1)*A076118(n+1)`
-/

namespace A089598.P16579390269057920297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) * A076118 (n + 1)

end

end A089598.P16579390269057920297

namespace A089598

/-- `A010892(n+1)*A076118(n+1)` -/
def P16579390269057920297.Spec : Prop :=
  ∀ n, P16579390269057920297.a n = A089598 n

end A089598

/-! ## A089598.P7699127404118719577

`lcm(A049347(n+1), A166711(n+1))`
-/

namespace A089598.P7699127404118719577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049347 (n + 1)) (A166711 (n + 1))

end

end A089598.P7699127404118719577

namespace A089598

/-- `lcm(A049347(n+1), A166711(n+1))` -/
def P7699127404118719577.Spec : Prop :=
  ∀ n, (P7699127404118719577.a n : ℤ) = A089598 n

end A089598

/-! ## A089598.P8970089112984580831

`A010892(n+1)²*A151842(n+1)`
-/

namespace A089598.P8970089112984580831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) ^ 2 * A151842 (n + 1)

end

end A089598.P8970089112984580831

namespace A089598

/-- `A010892(n+1)²*A151842(n+1)` -/
def P8970089112984580831.Spec : Prop :=
  ∀ n, P8970089112984580831.a n = A089598 n

end A089598

/-! ## A089598.P18423230222068324020

`(A099254(n+1)-A010892(n+1))*A010892(n+1)`
-/

namespace A089598.P18423230222068324020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099254 (n + 1) - A010892 (n + 1)) * A010892 (n + 1)

end

end A089598.P18423230222068324020

namespace A089598

/-- `(A099254(n+1)-A010892(n+1))*A010892(n+1)` -/
def P18423230222068324020.Spec : Prop :=
  ∀ n, P18423230222068324020.a n = A089598 n

end A089598

/-! ## A089598.P10845735768560855006

`A316631(A265667(n+1))`
-/

namespace A089598.P10845735768560855006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 (A265667 (n + 1)).toNat

end

end A089598.P10845735768560855006

namespace A089598

/-- `A316631(A265667(n+1))` -/
def P10845735768560855006.Spec : Prop :=
  ∀ n, P10845735768560855006.a n = A089598 n

end A089598

/-! ## A089598.P2341172321029490473

`A131728(A042965(n+2))`
-/

namespace A089598.P2341172321029490473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (A042965 (n + 2)).toNat

end

end A089598.P2341172321029490473

namespace A089598

/-- `A131728(A042965(n+2))` -/
def P2341172321029490473.Spec : Prop :=
  ∀ n, P2341172321029490473.a n = A089598 n

end A089598

/-!
# A089599: G.f.: (1+x^5+x^7+x^8+x^10+x^15)/((1-x^2)(1-x^3)(1-x^4)(1-x^6)^2(1-x^9)).

The programs for A089599, there is no canonical definition to state claims against.
-/

/-! ## A089599.P16892114254933596838

`∑[A353414(A000079(n))]-A002865(n+1)`
-/

namespace A089599.P16892114254933596838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353414 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002865 (n + 1)

end

end A089599.P16892114254933596838

/-! ## A089599.P1657943610991029682

`A124761(A212804(n))+A002865(n)`
-/

namespace A089599.P1657943610991029682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A212804 n).toNat + A002865 n

end

end A089599.P1657943610991029682

/-! ## A089599.P13380559119422436101

`A056978(A015892(n+1))+A002865(n)`
-/

namespace A089599.P13380559119422436101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A015892 (n + 1)).toNat + A002865 n

end

end A089599.P13380559119422436101

/-! ## A089599.P9050115881313658435

`A322358(A218481(n))+A183566(n+9)`
-/

namespace A089599.P9050115881313658435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A218481 n).toNat + A183566 (n + 9)

end

end A089599.P9050115881313658435

/-! ## A089599.P15912479570950102903

`A073484(A006720(n))+A002865(n)`
-/

namespace A089599.P15912479570950102903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073484 (A006720 n).toNat + A002865 n

end

end A089599.P15912479570950102903

