import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
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
import SequenceMachineLib.Triangle

/-!
# A396104: First differences of A396086, the number of dyadic intervals of length 2^(-n) that intersect the classical middle-third Cantor set.

The programs for A396104, there is no canonical definition to state claims against.
-/

/-! ## A396104.P7361116016020210948

`A396086(n+1)-A396086(n)`
-/

namespace A396104.P7361116016020210948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396086 (n + 1) - A396086 n

end

end A396104.P7361116016020210948

/-! ## A396104.P866357667588948466

`Δ[A396086(n)]`
-/

namespace A396104.P866357667588948466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396104.P866357667588948466

/-! ## A396104.P18060904367075622545

`A131996(A163658(n+1))`
-/

namespace A396104.P18060904367075622545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A163658 (n + 1)).toNat

end

end A396104.P18060904367075622545

/-!
# A396106: n-th prime greater than 10^n.

The programs for A396106, there is no canonical definition to state claims against.
-/

/-! ## A396106.P4912527043536665882

`A073914(∑[n+1]+n)`
-/

namespace A396106.P4912527043536665882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073914 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A396106.P4912527043536665882

/-!
# A396110: Number of digraphs on n labeled nodes such that every node is reachable from node 1.

The programs for A396110, there is no canonical definition to state claims against.
-/

/-! ## A396110.P8201395734999727499

`A001187(n+1)*A006125(n+1)`
-/

namespace A396110.P8201395734999727499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (n + 1) * A006125 (n + 1)

end

end A396110.P8201395734999727499

/-! ## A396110.P18141514911801283647

`(A054592(n+1)+A001187(n+1))*A001187(n+1)`
-/

namespace A396110.P18141514911801283647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054592 (n + 1) + A001187 (n + 1)) * A001187 (n + 1)

end

end A396110.P18141514911801283647

/-! ## A396110.P418498810533283698

`(A006125(n+1)-A054592(n+1))*A006125(n+1)`
-/

namespace A396110.P418498810533283698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006125 (n + 1) - A054592 (n + 1)) * A006125 (n + 1)

end

end A396110.P418498810533283698

/-!
# A396111: a(n) = n^4 mod (2*n+1).

The programs for A396111, the canonical program `A396111.P7594967389268569643` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396111 has offset 0).

The definition of A396111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%(2*n+1)` (program `A396111.P7594967389268569643`, by `A396111.P7594967389268569643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396111.P7594967389268569643

`(n^4)%(2*n+1)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396111

/-- `(n^4)%(2*n+1)` -/
def P7594967389268569643.Spec : Prop :=
  ∀ n, (P7594967389268569643.a n : ℤ) = A396111 n

theorem P7594967389268569643.correct : P7594967389268569643.Spec := by
  intro n
  simp only [A396111]

end A396111

/-! ## A396111.P4979248545054850514

`-(-n²²%(2*n+1))`
-/

namespace A396111.P4979248545054850514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-((n ^ 2) ^ 2 : ℤ)) (2 * n + 1 : ℤ)

end

end A396111.P4979248545054850514

namespace A396111

/-- `-(-n²²%(2*n+1))` -/
def P4979248545054850514.Spec : Prop :=
  ∀ n, P4979248545054850514.a n = A396111 n

end A396111

/-! ## A396111.P12255028292473791256

`abs(A000583(n)%Δ[n²])`
-/

namespace A396111.P12255028292473791256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000583 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A396111.P12255028292473791256

namespace A396111

/-- `abs(A000583(n)%Δ[n²])` -/
def P12255028292473791256.Spec : Prop :=
  ∀ n, P12255028292473791256.a n = A396111 n

end A396111

/-! ## A396111.P4746481588530227925

`A048156(A001844(n))`
-/

namespace A396111.P4746481588530227925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048156 (A001844 n).toNat

end

end A396111.P4746481588530227925

namespace A396111

/-- `A048156(A001844(n))` -/
def P4746481588530227925.Spec : Prop :=
  ∀ n, P4746481588530227925.a n = A396111 n

end A396111

/-! ## A396111.P10018245168533316189

`A048152(A213399(n))`
-/

namespace A396111.P10018245168533316189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A213399 n).toNat

end

end A396111.P10018245168533316189

namespace A396111

/-- `A048152(A213399(n))` -/
def P10018245168533316189.Spec : Prop :=
  ∀ n, P10018245168533316189.a n = A396111 n

end A396111

/-! ## A396111.P16554986999964650632

`A048156(A082019(n+1))`
-/

namespace A396111.P16554986999964650632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048156 (A082019 (n + 1)).toNat

end

end A396111.P16554986999964650632

namespace A396111

/-- `A048156(A082019(n+1))` -/
def P16554986999964650632.Spec : Prop :=
  ∀ n, P16554986999964650632.a n = A396111 n

end A396111

/-! ## A396111.P17031781745322209978

`A048156(A255840(n+1))`
-/

namespace A396111.P17031781745322209978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048156 (A255840 (n + 1)).toNat

end

end A396111.P17031781745322209978

namespace A396111

/-- `A048156(A255840(n+1))` -/
def P17031781745322209978.Spec : Prop :=
  ∀ n, P17031781745322209978.a n = A396111 n

end A396111

/-! ## A396111.P14991277516445042902

`A350037(A274682(n+1))`
-/

namespace A396111.P14991277516445042902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350037 (A274682 (n + 1)).toNat

end

end A396111.P14991277516445042902

namespace A396111

/-- `A350037(A274682(n+1))` -/
def P14991277516445042902.Spec : Prop :=
  ∀ n, P14991277516445042902.a n = A396111 n

end A396111

/-!
# A396114: a(n) is the first multiple of n encountered when reading Pascal's triangle row-by-row, left to right.

The programs for A396114, there is no canonical definition to state claims against.
-/

/-! ## A396114.P17556431324164236476

`(n+1)*A375082(n+1)`
-/

namespace A396114.P17556431324164236476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A375082 (n + 1)

end

end A396114.P17556431324164236476

/-! ## A396114.P2079314304613329028

`C(A349958(n+1), A374959(n+1))`
-/

namespace A396114.P2079314304613329028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349958 (n + 1)).toNat (A374959 (n + 1)).toNat

end

end A396114.P2079314304613329028

/-!
# A396120: Consider the square spiral with its cells numbered starting at 0. Four players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists unoccupied squares.

The programs for A396120, there is no canonical definition to state claims against.
-/

/-! ## A396120.P8760358485971815234

`eq[0, A396121(n)]`
-/

namespace A396120.P8760358485971815234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396120.P8760358485971815234

/-!
# A396127: Consider the square spiral with its cells numbered starting at 0. Five players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists unoccupied squares.

The programs for A396127, there is no canonical definition to state claims against.
-/

/-! ## A396127.P3019190789606776648

`eq[0, A396128(n)]`
-/

namespace A396127.P3019190789606776648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396127.P3019190789606776648

/-! ## A396127.P17986874602270904854

`lt[A396128(n), A001221(n+1)]`
-/

namespace A396127.P17986874602270904854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P17986874602270904854

/-! ## A396127.P14747032865175980585

`lt[A396128(n), A034380(n+1)]`
-/

namespace A396127.P14747032865175980585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P14747032865175980585

/-! ## A396127.P3081054585424337923

`lt[A396128(n), ∑{e}[n, A001221(#)!]]`
-/

namespace A396127.P3081054585424337923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorial (A001221 (Nat.factorization (f3 n) p)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396127.P3081054585424337923

/-! ## A396127.P15601822391162437534

`lt[A396128(n)+1, A053669(n+1)]`
-/

namespace A396127.P15601822391162437534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P15601822391162437534

/-! ## A396127.P9682370024305831533

`lt[A396128(n), A081388(n+1)/4]`
-/

namespace A396127.P9682370024305831533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081388 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A396127.P9682370024305831533

/-! ## A396127.P13711839911644262071

`lt[A396128(n), A243148(2*n+1)+1]`
-/

namespace A396127.P13711839911644262071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P13711839911644262071

/-! ## A396127.P5787258547010119041

`lt[A396128(n), A192066(n+4)/4]`
-/

namespace A396127.P5787258547010119041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192066 (n + 4) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A396127.P5787258547010119041

/-!
# A396135: Consider the square spiral with its cells numbered starting at 0. Six players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists unoccupied squares.

The programs for A396135, there is no canonical definition to state claims against.
-/

/-! ## A396135.P17425714248390215744

`eq[0, A396166(n)]`
-/

namespace A396135.P17425714248390215744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396135.P17425714248390215744

/-! ## A396135.P14502836250558197055

`lt[A396166(n), A187188(n+1)]`
-/

namespace A396135.P14502836250558197055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P14502836250558197055

/-! ## A396135.P2751158924966169280

`lt[A396166(n)-A008683(n+2), 2]`
-/

namespace A396135.P2751158924966169280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n - A008683 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396135.P2751158924966169280

/-! ## A396135.P14290449341829241650

`lt[A396166(n), A001462(A001462(n+1))]`
-/

namespace A396135.P14290449341829241650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A001462 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P14290449341829241650

/-! ## A396135.P13303695940661102978

`lt[A396166(n), A001222(A001414(n+2))]`
-/

namespace A396135.P13303695940661102978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001414 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P13303695940661102978

/-! ## A396135.P7168814989485396289

`lt[A396166(n), A161974(A276571(n))]`
-/

namespace A396135.P7168814989485396289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161974 (A276571 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P7168814989485396289

/-! ## A396135.P17202233824154960398

`lt[A396166(n), A001462(A127242(3*n))]`
-/

namespace A396135.P17202233824154960398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A127242 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P17202233824154960398

/-! ## A396135.P6268592164608734169

`lt[A396166(n), A161974(n)]`
-/

namespace A396135.P6268592164608734169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P6268592164608734169

/-!
# A396137: Numbers that are neither the sum nor difference of two 5-smooth numbers.

The programs for A396137, there is no canonical definition to state claims against.
-/

/-! ## A396137.P2542709095963230355

`∩[A308456(n+1), A323049(n+1)]`
-/

namespace A396137.P2542709095963230355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396137.P2542709095963230355

/-!
# A396139: a(1) = 1; for n > 1, a(n) is the smallest number > 2^(n-1) with exactly n divisors.

The programs for A396139, there is no canonical definition to state claims against.
-/

/-! ## A396139.P15842831428696799035

`A079427(2^n)`
-/

namespace A396139.P15842831428696799035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (2 ^ n)

end

end A396139.P15842831428696799035

/-! ## A396139.P13794681526248618377

`A328679(n+1)+A171937(A328679(n+1))`
-/

namespace A396139.P13794681526248618377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328679 (n + 1) + A171937 (A328679 (n + 1)).toNat

end

end A396139.P13794681526248618377

/-! ## A396139.P583657391925604675

`A193356(2*(n+1))+A079427(A000079(n))`
-/

namespace A396139.P583657391925604675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (2 * (n + 1)) + A079427 (A000079 n).toNat

end

end A396139.P583657391925604675

/-! ## A396139.P15012459425607803777

`A057427(2*n+3)*A079427(A000079(n))`
-/

namespace A396139.P15012459425607803777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * n + 3) * A079427 (A000079 n).toNat

end

end A396139.P15012459425607803777

/-! ## A396139.P11757256088898353762

`A079442(2*n+4)+A079427(A000079(n))`
-/

namespace A396139.P11757256088898353762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079442 (2 * n + 4) + A079427 (A000079 n).toNat

end

end A396139.P11757256088898353762

/-!
# A396142: Number of endless undirected self-avoiding paths in the square lattice, comprised of a repeating primitive path of length n, with rotations, reflections, and translations not counted as distinct.

The programs for A396142, there is no canonical definition to state claims against.
-/

/-! ## A396142.P11638958508329934364

`A111654(A151482(n))`
-/

namespace A396142.P11638958508329934364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A151482 n).toNat

end

end A396142.P11638958508329934364

/-! ## A396142.P2758145871447480994

`A100795(A361359(n))`
-/

namespace A396142.P2758145871447480994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A361359 n).toNat

end

end A396142.P2758145871447480994

/-! ## A396142.P2031514760588174881

`A089646(A189600(n+1))`
-/

namespace A396142.P2031514760588174881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089646 (A189600 (n + 1)).toNat

end

end A396142.P2031514760588174881

/-! ## A396142.P13499622254717906862

`A201997(A303023(n+1))`
-/

namespace A396142.P13499622254717906862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201997 (A303023 (n + 1)).toNat

end

end A396142.P13499622254717906862

/-!
# A396143: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) is the number of strict integer partitions of 2*n with reverse-alternating sum -2*k.

The programs for A396143, there is no canonical definition to state claims against.
-/

/-! ## A396143.P14040281679813802749

`A196931(C(A084938(n), A325181(2*n+1)))`
-/

namespace A396143.P14040281679813802749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196931 (Nat.choose (A084938 n).toNat (A325181 (2 * n + 1)).toNat)

end

end A396143.P14040281679813802749

/-! ## A396143.P8628192068184092568

`A000120(A298167(n+1)^A051953(n+1))`
-/

namespace A396143.P8628192068184092568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A298167 (n + 1) : ℚ) ^ (A051953 (n + 1) : ℤ))).toNat

end

end A396143.P8628192068184092568

/-! ## A396143.P10684426806571908614

`A001221(A296157(n+1))^A351245(n+1)`
-/

namespace A396143.P10684426806571908614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A296157 (n + 1)).toNat : ℚ) ^ (A351245 (n + 1) : ℤ)

end

end A396143.P10684426806571908614

/-!
# A396148: Numbers reaching a fixed point in a single step of the Kaprekar mapping A151949.

The programs for A396148, there is no canonical definition to state claims against.
-/

/-! ## A396148.P3711459844419008033

`eq[A151949(n), A151949(A151949(n))]`
-/

namespace A396148.P3711459844419008033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396148.P3711459844419008033

/-! ## A396148.P9934986235776877973

`lt[A151962(n), 2]`
-/

namespace A396148.P9934986235776877973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396148.P9934986235776877973

/-! ## A396148.P10747465323521187422

`lt[A151963(n), 3]`
-/

namespace A396148.P10747465323521187422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396148.P10747465323521187422

/-!
# A396151: a(n) = 2^(n+1) + 1 - 2*Re((1+i)^n), where i is the imaginary unit.

The programs for A396151, the canonical program `A396151.P82576254118047464` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396151 has offset 0).

The definition of A396151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396151.P15635010247007219615

`2^(n+1)+1-2^(n/2+1)*cos(π*n/4)`
-/

namespace A396151.P15635010247007219615
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) + 1 : ℝ) - (2 : ℝ) ^ ((n : ℚ) / 2 + 1 : ℝ) * Real.cos (Real.pi * (n : ℝ) / 4)

end

end A396151.P15635010247007219615

namespace A396151

/-- `2^(n+1)+1-2^(n/2+1)*cos(π*n/4)` -/
def P15635010247007219615.Spec : Prop :=
  ∀ n, P15635010247007219615.a n = (A396151 n : ℝ)

end A396151

/-! ## A396151.P82576254118047464

`2*A000749(n+2)+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A396151

/-- `2*A000749(n+2)+1` -/
def P82576254118047464.Spec : Prop :=
  ∀ n, P82576254118047464.a n = A396151 n

theorem P82576254118047464.correct : P82576254118047464.Spec := by
  intro n
  simp only [A396151]

end A396151

/-! ## A396151.P16440323691920956600

`2^(n+1)+1-A099087(n+1)`
-/

namespace A396151.P16440323691920956600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) + 1 : ℤ) - A099087 (n + 1)

end

end A396151.P16440323691920956600

namespace A396151

/-- `2^(n+1)+1-A099087(n+1)` -/
def P16440323691920956600.Spec : Prop :=
  ∀ n, P16440323691920956600.a n = A396151 n

end A396151

/-! ## A396151.P17380610657914823327

`A048578(n)-Δ[A077860(n)]`
-/

namespace A396151.P17380610657914823327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (f1 (n + 1) - f1 n)

end

end A396151.P17380610657914823327

namespace A396151

/-- `A048578(n)-Δ[A077860(n)]` -/
def P17380610657914823327.Spec : Prop :=
  ∀ n, P17380610657914823327.a n = A396151 n

end A396151

/-! ## A396151.P2096786301744087521

`A094373(n+2)-A009545(n+2)`
-/

namespace A396151.P2096786301744087521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (n + 2) - A009545 (n + 2)

end

end A396151.P2096786301744087521

namespace A396151

/-- `A094373(n+2)-A009545(n+2)` -/
def P2096786301744087521.Spec : Prop :=
  ∀ n, P2096786301744087521.a n = A396151 n

end A396151

/-! ## A396151.P11158299952408522224

`A164094(n)-A238187(n)`
-/

namespace A396151.P11158299952408522224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 n - A238187 n

end

end A396151.P11158299952408522224

namespace A396151

/-- `A164094(n)-A238187(n)` -/
def P11158299952408522224.Spec : Prop :=
  ∀ n, P11158299952408522224.a n = A396151 n

end A396151

/-!
# A396152: a(n) is the number of possible outcomes having a run of 3 or more sixes when a die is rolled n times.

The programs for A396152, there is no canonical definition to state claims against.
-/

/-! ## A396152.P9930920879307401055

`A396155(A392568(n+1))`
-/

namespace A396152.P9930920879307401055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A392568 (n + 1)).toNat

end

end A396152.P9930920879307401055

/-! ## A396152.P12913069255806734711

`A396155(A329254(n+2))`
-/

namespace A396152.P12913069255806734711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A329254 (n + 2)).toNat

end

end A396152.P12913069255806734711

/-! ## A396152.P14903835753950840017

`A396155(A359003(n+3))`
-/

namespace A396152.P14903835753950840017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A359003 (n + 3)).toNat

end

end A396152.P14903835753950840017

/-!
# A396153: a(n) is the number of possible outcomes having a run of 4 or more sixes when a die is rolled n times.

The programs for A396153, there is no canonical definition to state claims against.
-/

/-! ## A396153.P6938655858043255917

`A396155(A078295(n+2))`
-/

namespace A396153.P6938655858043255917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A078295 (n + 2)).toNat

end

end A396153.P6938655858043255917

/-!
# A396154: a(n) is the number of possible outcomes having a run of 5 or more sixes when a die is rolled n times.

The programs for A396154, there is no canonical definition to state claims against.
-/

/-! ## A396154.P17724032394732416753

`A396155(A043316(n+1))`
-/

namespace A396154.P17724032394732416753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A043316 (n + 1)).toNat

end

end A396154.P17724032394732416753

/-! ## A396154.P10778239702155268840

`A396155(A044913(n+1))`
-/

namespace A396154.P10778239702155268840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A044913 (n + 1)).toNat

end

end A396154.P10778239702155268840

/-! ## A396154.P15742339239153537546

`A396155(A061147(n+1))`
-/

namespace A396154.P15742339239153537546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A061147 (n + 1)).toNat

end

end A396154.P15742339239153537546

/-! ## A396154.P5371782677806867520

`A396155(A061497(n+1))`
-/

namespace A396154.P5371782677806867520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A061497 (n + 1)).toNat

end

end A396154.P5371782677806867520

/-! ## A396154.P17802071640447740012

`A396155(A062003(n+1))`
-/

namespace A396154.P17802071640447740012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A062003 (n + 1)).toNat

end

end A396154.P17802071640447740012

/-!
# A396155: a(n) is the number of possible outcomes having a run of 6 or more sixes when a die is rolled n times.

The programs for A396155, there is no canonical definition to state claims against.
-/

/-! ## A396155.P3375899052565003898

`A396156(A043318(n+1))`
-/

namespace A396155.P3375899052565003898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396156 (A043318 (n + 1)).toNat

end

end A396155.P3375899052565003898

/-! ## A396155.P13119151444139573738

`A396156(A044915(n+1))`
-/

namespace A396155.P13119151444139573738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396156 (A044915 (n + 1)).toNat

end

end A396155.P13119151444139573738

/-! ## A396155.P122631647556456415

`A396156(A161951(n+1))`
-/

namespace A396155.P122631647556456415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396156 (A161951 (n + 1)).toNat

end

end A396155.P122631647556456415

/-! ## A396155.P14696201464313897706

`A396156(A043317(n+1))`
-/

namespace A396155.P14696201464313897706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396156 (A043317 (n + 1)).toNat

end

end A396155.P14696201464313897706

/-! ## A396155.P3157647645011743175

`A396156(A044914(n+1))`
-/

namespace A396155.P3157647645011743175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396156 (A044914 (n + 1)).toNat

end

end A396155.P3157647645011743175

/-!
# A396156: a(n) is the number of possible outcomes having a run of 7 or more sixes when a die is rolled n times.

The programs for A396156, there is no canonical definition to state claims against.
-/

/-! ## A396156.P9745906423325681409

`A383711(A393251(n))`
-/

namespace A396156.P9745906423325681409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383711 (A393251 n).toNat

end

end A396156.P9745906423325681409

/-! ## A396156.P14428520259074131157

`A176744(A338707(n+1))`
-/

namespace A396156.P14428520259074131157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176744 (A338707 (n + 1)).toNat

end

end A396156.P14428520259074131157

/-! ## A396156.P18170697767181224397

`A383711(A146058(n+1))`
-/

namespace A396156.P18170697767181224397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383711 (A146058 (n + 1)).toNat

end

end A396156.P18170697767181224397

/-! ## A396156.P5012629791722240283

`A358475(A387805(n+1))`
-/

namespace A396156.P5012629791722240283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (A387805 (n + 1)).toNat

end

end A396156.P5012629791722240283

/-! ## A396156.P2549601018592222147

`A383711(A398364(n+1))`
-/

namespace A396156.P2549601018592222147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383711 (A398364 (n + 1)).toNat

end

end A396156.P2549601018592222147

/-!
# A396164: Index where A396163(n) first appears in the simple Sisyphus sequence A347297.

The programs for A396164, there is no canonical definition to state claims against.
-/

/-! ## A396164.P5907772081775450600

`∩[A306070(n+1), A288793(n+2)]`
-/

namespace A396164.P5907772081775450600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288793 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396164.P5907772081775450600

/-! ## A396164.P16759331601912320943

`A129980(A006882(n+1))-A135205(n+1)`
-/

namespace A396164.P16759331601912320943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129980 (A006882 (n + 1)).toNat - A135205 (n + 1)

end

end A396164.P16759331601912320943

/-!
# A396174: Consider the square spiral with its cells numbered starting at 0. Seven players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists unoccupied squares.

The programs for A396174, there is no canonical definition to state claims against.
-/

/-! ## A396174.P16630669548813308685

`eq[0, A396175(n)]`
-/

namespace A396174.P16630669548813308685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396174.P16630669548813308685

/-!
# A396176: a(n) = primepi(A394720(n)).

The programs for A396176, there is no canonical definition to state claims against.
-/

/-! ## A396176.P2259301956495280658

`A000720(A394720(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396176.P2259301956495280658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A394720 (n + 1)).toNat

end

end A396176.P2259301956495280658

/-! ## A396176.P998198740706667956

`A396177(n)+a(n-1)` with `a(0)=1`
-/

namespace A396176.P998198740706667956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A396177 n + a (n - 1)

end

end A396176.P998198740706667956

/-! ## A396176.P268556619348470779

`A263846(A270724(n+1))`
-/

namespace A396176.P268556619348470779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A270724 (n + 1)).toNat

end

end A396176.P268556619348470779

/-! ## A396176.P16655238592189009436

`A391618(A079403(n+3))`
-/

namespace A396176.P16655238592189009436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A079403 (n + 3)).toNat

end

end A396176.P16655238592189009436

/-! ## A396176.P765885513852508883

`∑[∑[A219238(A242531(n+1))]]`
-/

namespace A396176.P765885513852508883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219238 (A242531 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396176.P765885513852508883

/-!
# A396177: First differences of A396176.

The programs for A396177, there is no canonical definition to state claims against.
-/

/-! ## A396177.P4224426725892022146

`Δ[A396176(n+1)]`
-/

namespace A396177.P4224426725892022146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396177.P4224426725892022146

/-! ## A396177.P7195245085222853707

`A396176(n+2)-A396176(n+1)`
-/

namespace A396177.P7195245085222853707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396176 (n + 2) - A396176 (n + 1)

end

end A396177.P7195245085222853707

/-!
# A396178: Lexicographically earliest sequence of the form 1, 2, followed by squarefree semiprimes (A006881), with the property that (a) for all k>=0, a(k) shares a factor with exactly k other terms, and (b) for all k >= 1, a(k) is divisible by a prime which does not divide any earlier term.

The programs for A396178, there is no canonical definition to state claims against.
-/

/-! ## A396178.P646052792417070343

`∏{p}[A395795(n), #]`
-/

namespace A396178.P646052792417070343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A396178.P646052792417070343

/-! ## A396178.P6917620350969867202

`A007947(A395795(n))`
-/

namespace A396178.P6917620350969867202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A395795 n).toNat

end

end A396178.P6917620350969867202

/-! ## A396178.P2925561555160231171

`A395795(n)/A373565(n)`
-/

namespace A396178.P2925561555160231171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395795 n : ℚ) / (A373565 n : ℚ)

end

end A396178.P2925561555160231171

/-! ## A396178.P7322155248123617731

`gcd(A130706(n), A395795(n))`
-/

namespace A396178.P7322155248123617731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A395795 n)

end

end A396178.P7322155248123617731

/-! ## A396178.P15905526279585594937

`A395795(n)-A000122(A001644(n))`
-/

namespace A396178.P15905526279585594937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395795 n - A000122 (A001644 n).toNat

end

end A396178.P15905526279585594937

/-!
# A396179: Positive integers not in A008726.

The programs for A396179, the canonical program `A396179.P6313024239879174676` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396179 has offset 1).

The definition of A396179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396179.P6313024239879174676

`comp[∑[floor(n/8)]]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396179

/-- `comp[∑[floor(n/8)]]` -/
def P6313024239879174676.Spec : Prop :=
  ∀ n, (P6313024239879174676.a n : ℤ) = A396179 (n + 1)

theorem P6313024239879174676.correct : P6313024239879174676.Spec := by
  intro n
  simp only [A396179, Nat.add_sub_cancel]

end A396179

/-! ## A396179.P17888310011861472558

`comp[A118729(n)]%A070219(n+1)`
-/

namespace A396179.P17888310011861472558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A070219 (n + 1))

end

end A396179.P17888310011861472558

namespace A396179

/-- `comp[A118729(n)]%A070219(n+1)` -/
def P17888310011861472558.Spec : Prop :=
  ∀ n, P17888310011861472558.a n = A396179 (n + 1)

end A396179

/-! ## A396179.P17172061005318612027

`lt[char[A118729(n)], 1]`
-/

namespace A396179.P17172061005318612027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A396179.P17172061005318612027

namespace A396179

/-- `lt[char[A118729(n)], 1]` -/
def P17172061005318612027.Spec : Prop :=
  ∀ n, (P17172061005318612027.a n : ℤ) = A396179 (n + 1)

end A396179

/-! ## A396179.P4942900103339951004

`comp[A118729(n+3)]%A103123(n+1)`
-/

namespace A396179.P4942900103339951004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A103123 (n + 1))

end

end A396179.P4942900103339951004

namespace A396179

/-- `comp[A118729(n+3)]%A103123(n+1)` -/
def P4942900103339951004.Spec : Prop :=
  ∀ n, P4942900103339951004.a n = A396179 (n + 1)

end A396179

/-!
# A396188: Index of 2^n in A394166, or -1 if 2^n does not appear.

The programs for A396188, there is no canonical definition to state claims against.
-/

/-! ## A396188.P16362066895089536713

`A396484(2^n)`
-/

namespace A396188.P16362066895089536713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (2 ^ n)

end

end A396188.P16362066895089536713

/-! ## A396188.P13644654617001267280

`A396484(A000079(n))+A336355(n+1)`
-/

namespace A396188.P13644654617001267280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (A000079 n).toNat + A336355 (n + 1)

end

end A396188.P13644654617001267280

/-! ## A396188.P9976257141097775230

`A318809(n+1)*A396484(A000079(n))`
-/

namespace A396188.P9976257141097775230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (n + 1) * A396484 (A000079 n).toNat

end

end A396188.P9976257141097775230

/-! ## A396188.P16511228157522293605

`A333254(2*n+5)*A396484(A000079(n))`
-/

namespace A396188.P16511228157522293605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (2 * n + 5) * A396484 (A000079 n).toNat

end

end A396188.P16511228157522293605

/-!
# A396189: Record high-points in A396484.

The programs for A396189, there is no canonical definition to state claims against.
-/

/-! ## A396189.P470541371178443106

`record[A396484(n)]`
-/

namespace A396189.P470541371178443106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396189.P470541371178443106

/-! ## A396189.P13203275182111589014

`A396484(A396190(n+1))`
-/

namespace A396189.P13203275182111589014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (A396190 (n + 1)).toNat

end

end A396189.P13203275182111589014

/-!
# A396190: These numbers are the slowest to appear in A394166.

The programs for A396190, there is no canonical definition to state claims against.
-/

/-! ## A396190.P9423743818735751764

`A394166(A396189(n+1))`
-/

namespace A396190.P9423743818735751764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394166 (A396189 (n + 1)).toNat

end

end A396190.P9423743818735751764

/-!
# A396191: Length of binary representation of A394166(n).

The programs for A396191, there is no canonical definition to state claims against.
-/

/-! ## A396191.P4438714571050929313

`A070939(A394166(n))`
-/

namespace A396191.P4438714571050929313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A394166 n).toNat

end

end A396191.P4438714571050929313

/-!
# A396192: A394166(n) written in binary.

The programs for A396192, there is no canonical definition to state claims against.
-/

/-! ## A396192.P16434137966950536472

`A007088(A394166(n))`
-/

namespace A396192.P16434137966950536472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A394166 n).toNat

end

end A396192.P16434137966950536472

/-! ## A396192.P7536915872918813945

`A084905(A115798(n+1))`
-/

namespace A396192.P7536915872918813945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084905 (A115798 (n + 1)).toNat

end

end A396192.P7536915872918813945

/-!
# A396193: Index of 2^n-1 in A394166, or -1 if 2^n-1 does not appear.

The programs for A396193, there is no canonical definition to state claims against.
-/

/-! ## A396193.P12725862990356316864

`A396484(2^n-1)`
-/

namespace A396193.P12725862990356316864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (2 ^ n - 1)

end

end A396193.P12725862990356316864

/-!
# A396195: A396194 with duplicates removed.

The programs for A396195, there is no canonical definition to state claims against.
-/

/-! ## A396195.P5260092121669519328

`A396194(A392622(n+1))`
-/

namespace A396195.P5260092121669519328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396194 (A392622 (n + 1)).toNat

end

end A396195.P5260092121669519328

/-! ## A396195.P792279951552875444

`A396194(A007086(n+1))`
-/

namespace A396195.P792279951552875444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396194 (A007086 (n + 1)).toNat

end

end A396195.P792279951552875444

/-! ## A396195.P16706360236853510948

`A396194(A351715(n+1))`
-/

namespace A396195.P16706360236853510948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396194 (A351715 (n + 1)).toNat

end

end A396195.P16706360236853510948

/-!
# A396196: The n-th digit of the n-th term of the Look-and-Say sequence (A005150), padded with 0 if the term has fewer than n digits.

The programs for A396196, there is no canonical definition to state claims against.
-/

/-! ## A396196.P8246686820176984410

`A353849(and(A123209(n+1), A244207(n+1)))`
-/

namespace A396196.P8246686820176984410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (Int.land (A123209 (n + 1 + 33)) (A244207 (n + 1))).toNat

end

end A396196.P8246686820176984410

/-!
# A396197: Triangle read by rows: T(n, k) = (-1)^k*binomial(n, k) * (2*F(n - k) + F(n - k + 2)) where F(n) are the Fibonacci numbers.

The programs for A396197, the canonical program `A396197.P11192290453794693208` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396197 has offset 0).

The definition of A396197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396197.P11192290453794693208

`(-1)^col(n)*C(row(n), col(n))*A000285(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A396197

/-- `(-1)^col(n)*C(row(n), col(n))*A000285(row(n)-col(n))` -/
def P11192290453794693208.Spec : Prop :=
  ∀ n, P11192290453794693208.a n = A396197 n

theorem P11192290453794693208.correct : P11192290453794693208.Spec := by
  intro n
  simp only [A396197]

end A396197

/-! ## A396197.P3202737007398113771

`(-1)^col(n)*C(row(n), col(n))*(2*A000045(row(n)-col(n))+A000045(row(n)-col(n)+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396197.P3202737007398113771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triCol n * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * (2 * A000045 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) + A000045 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat)

end

end A396197.P3202737007398113771

namespace A396197

/-- `(-1)^col(n)*C(row(n), col(n))*(2*A000045(row(n)-col(n))+A000045(row(n)-col(n)+2))` -/
def P3202737007398113771.Spec : Prop :=
  ∀ n, P3202737007398113771.a n = A396197 n

end A396197

/-!
# A396198: a(n) = Sum_{k=0..n} (-1)^k*A396200(n, k), even bisection only.

The programs for A396198, there is no canonical definition to state claims against.
-/

/-! ## A396198.P10467537255143697534

`xor(A140323(n+1), A286033(n+1))`
-/

namespace A396198.P10467537255143697534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A140323 (n + 1)) (A286033 (n + 1))

end

end A396198.P10467537255143697534

/-!
# A396199: a(n) = (n + 1)*(2^(n + 1) - binomial(n, floor(n / 2))), row sums of A396200.

The programs for A396199, the canonical program `A396199.P13714647059472639932` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396199 has offset 0).

The definition of A396199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2^(n+1)-C(n, floor(n/2)))` (program `A396199.P13714647059472639932`, by `A396199.P13714647059472639932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396199.P13714647059472639932

`(n+1)*(2^(n+1)-C(n, floor(n/2)))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A396199

/-- `(n+1)*(2^(n+1)-C(n, floor(n/2)))` -/
def P13714647059472639932.Spec : Prop :=
  ∀ n, P13714647059472639932.a n = A396199 n

theorem P13714647059472639932.correct : P13714647059472639932.Spec := by
  intro n
  simp only [A396199]

end A396199

/-! ## A396199.P12564347408714651384

`(n+1)*A164991(n+2)`
-/

namespace A396199.P12564347408714651384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A164991 (n + 2)

end

end A396199.P12564347408714651384

namespace A396199

/-- `(n+1)*A164991(n+2)` -/
def P12564347408714651384.Spec : Prop :=
  ∀ n, P12564347408714651384.a n = A396199 n

end A396199

/-! ## A396199.P11832934955928665536

`A153335(n+1)+A053220(n+1)`
-/

namespace A396199.P11832934955928665536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (n + 1) + A053220 (n + 1)

end

end A396199.P11832934955928665536

namespace A396199

/-- `A153335(n+1)+A053220(n+1)` -/
def P11832934955928665536.Spec : Prop :=
  ∀ n, P11832934955928665536.a n = A396199 n

end A396199

/-! ## A396199.P14916889936572828378

`A001787(n+1)+A348864(n+1)-A002378(n)`
-/

namespace A396199.P14916889936572828378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + (A348864 (n + 1) - A002378 n)

end

end A396199.P14916889936572828378

namespace A396199

/-- `A001787(n+1)+A348864(n+1)-A002378(n)` -/
def P14916889936572828378.Spec : Prop :=
  ∀ n, P14916889936572828378.a n = A396199 n

end A396199

/-! ## A396199.P8937991024390299822

`A001787(n+1)+A001787(n+1)-A100071(n+1)`
-/

namespace A396199.P8937991024390299822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + (A001787 (n + 1) - A100071 (n + 1))

end

end A396199.P8937991024390299822

namespace A396199

/-- `A001787(n+1)+A001787(n+1)-A100071(n+1)` -/
def P8937991024390299822.Spec : Prop :=
  ∀ n, P8937991024390299822.a n = A396199 n

end A396199

