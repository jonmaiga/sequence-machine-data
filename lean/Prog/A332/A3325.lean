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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
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
# A332502: Rectangular array read by antidiagonals: T(n,k) = floor(n + k*r), where r = golden ratio = (1+sqrt(5))/2.

The programs for A332502, there is no canonical definition to state claims against.
-/

/-! ## A332502.P14449635834665774095

`round(log2(A175840(n)/5))+2`
-/

namespace A332502.P14449635834665774095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 ((A175840 n : ℚ) / 5 : ℝ)) + 2

end

end A332502.P14449635834665774095

/-! ## A332502.P1111154012469928522

`A057365(C(comp[∑[n]]-n, 2)-(n+1))+∑[char[∑[n+1]]]`
-/

namespace A332502.P1111154012469928522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A332502.P1111154012469928522

/-! ## A332502.P10175425302351246197

`A066096(C(comp[∑[n]]-n, 2)-(n+1))+n-C(∑[char[∑[n]]], 2)`
-/

namespace A332502.P10175425302351246197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A332502.P10175425302351246197

/-! ## A332502.P6969015871479550553

`A003056(n)+floor(A025581(n)/ϕ)`
-/

namespace A332502.P6969015871479550553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + ⌊(A025581 n : ℝ) / Real.goldenRatio⌋

end

end A332502.P6969015871479550553

/-! ## A332502.P10386393265283575142

`A003056(n)+floor((A004736(n+1)-1)/ϕ)`
-/

namespace A332502.P10386393265283575142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + ⌊(A004736 (n + 1) - 1 : ℝ) / Real.goldenRatio⌋

end

end A332502.P10386393265283575142

/-! ## A332502.P11494747631349450577

`A057355(A025581(n))+A003056(n)`
-/

namespace A332502.P11494747631349450577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A025581 n).toNat + A003056 n

end

end A332502.P11494747631349450577

/-! ## A332502.P8031681060633585337

`A066096(A025581(n))+A002262(n)`
-/

namespace A332502.P8031681060633585337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A025581 n).toNat + A002262 n

end

end A332502.P8031681060633585337

/-! ## A332502.P11345865089157693768

`A066096(A025581(n))+log2(A059268(n))`
-/

namespace A332502.P11345865089157693768
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066096 (A025581 n).toNat : ℝ) + Real.logb 2 (A059268 n : ℝ)

end

end A332502.P11345865089157693768

/-! ## A332502.P5956876068948604483

`A332529(n)-A025581(n)`
-/

namespace A332502.P5956876068948604483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332529 n - A025581 n

end

end A332502.P5956876068948604483

/-! ## A332502.P5110192716150027624

`A332529(n)-A025660(n+1)`
-/

namespace A332502.P5110192716150027624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332529 n - A025660 (n + 1)

end

end A332502.P5110192716150027624

/-!
# A332508: a(n) = Sum_{d|n} binomial(n+d-2, n-1).

The programs for A332508, the canonical program `A332508.P10779668503483535454` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332508 has offset 1).

The definition of A332508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332508.P10779668503483535454

`∑{d}[n+1, C(n+1+#-2, n)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332508

/-- `∑{d}[n+1, C(n+1+#-2, n)]` -/
def P10779668503483535454.Spec : Prop :=
  ∀ n, (P10779668503483535454.a n : ℤ) = A332508 (n + 1)

theorem P10779668503483535454.correct : P10779668503483535454.Spec := by
  intro n
  simp only [A332508, Nat.add_sub_cancel]

end A332508

/-! ## A332508.P13380017427298137995

`∑{d}[n+1, A007318(A000217(#+n)-#)]`
-/

namespace A332508.P13380017427298137995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A000217 (d + n) - (d : ℤ)).toNat

end

end A332508.P13380017427298137995

namespace A332508

/-- `∑{d}[n+1, A007318(A000217(#+n)-#)]` -/
def P13380017427298137995.Spec : Prop :=
  ∀ n, P13380017427298137995.a n = A332508 (n + 1)

end A332508

/-! ## A332508.P4259756767360928775

`A319778(A305797(n+1))+A000984(n)`
-/

namespace A332508.P4259756767360928775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319778 (A305797 (n + 1)).toNat + A000984 n

end

end A332508.P4259756767360928775

namespace A332508

/-- `A319778(A305797(n+1))+A000984(n)` -/
def P4259756767360928775.Spec : Prop :=
  ∀ n, P4259756767360928775.a n = A332508 (n + 1)

end A332508

/-!
# A332509: a(n) = Sum_{k=1..n} mu(floor(n/k)), where mu = A008683.

The programs for A332509, there is no canonical definition to state claims against.
-/

/-! ## A332509.P9367198191920527343

`1-∑[A098018(n+1)]`
-/

namespace A332509.P9367198191920527343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332509.P9367198191920527343

/-! ## A332509.P3240697118308698256

`∑[A098018(n+1)]*A057428(n)+1`
-/

namespace A332509.P3240697118308698256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057428 n + 1

end

end A332509.P3240697118308698256

/-! ## A332509.P14291917027256927134

`a(n-1)-A098018(A000027(n+1))` with `a(0)=1`
-/

namespace A332509.P14291917027256927134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A098018 (A000027 (n + 1)).toNat

end

end A332509.P14291917027256927134

/-! ## A332509.P4570625452419184261

`a(n-1)-A098018(A004273(n)+2-n)` with `a(0)=1`
-/

namespace A332509.P4570625452419184261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A098018 (A004273 n + (2 - (n : ℤ))).toNat

end

end A332509.P4570625452419184261

/-! ## A332509.P13620410557894573103

`a(n-1)-A098018(2-(n-A004273(n)))` with `a(0)=1`
-/

namespace A332509.P13620410557894573103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A098018 (2 - ((n : ℤ) - A004273 n)).toNat

end

end A332509.P13620410557894573103

/-! ## A332509.P3321917748167396083

`A000194((A098018(n+1)-a(n-1))²)` with `a(0)=1`
-/

namespace A332509.P3321917748167396083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000194 ((A098018 (n + 1) - a (n - 1)) ^ 2).toNat

end

end A332509.P3321917748167396083

/-! ## A332509.P1566833515801862558

`1-∑[∑{d}[n+1, A000005(#)*A117163((n+1)/#)]]`
-/

namespace A332509.P1566833515801862558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 d * A117163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332509.P1566833515801862558

/-! ## A332509.P9882275101510820308

`1-∑[∑{d}[n+1, A008683(A171173(A000290(#)))]+1]`
-/

namespace A332509.P9882275101510820308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 (A171173 (A000290 d).toNat).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332509.P9882275101510820308

/-!
# A332510: a(n) = Sum_{k=1..n} lambda(floor(n/k)), where lambda = A008836.

The programs for A332510, there is no canonical definition to state claims against.
-/

/-! ## A332510.P10850334419173478352

`A001222(A026164(abs(1-n)))`
-/

namespace A332510.P10850334419173478352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A026164 |1 - (n : ℤ)|.toNat).toNat

end

end A332510.P10850334419173478352

/-! ## A332510.P4069653402201885097

`A062756((2*n+1)*∑[A140947(n+1)^and(1, n)])`
-/

namespace A332510.P4069653402201885097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140947 (n + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 ((2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A332510.P4069653402201885097

/-! ## A332510.P9745867693660522892

`A062756(A184884(n)+A000217(n))`
-/

namespace A332510.P9745867693660522892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A184884 n + A000217 n).toNat

end

end A332510.P9745867693660522892

/-! ## A332510.P1143256328291739435

`A062756(A048735(n)+A008778(3*n))`
-/

namespace A332510.P1143256328291739435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A048735 n + A008778 (3 * n)).toNat

end

end A332510.P1143256328291739435

/-! ## A332510.P1245157716814317066

`A062756(xor(A008778(3*n), A048735(n)))`
-/

namespace A332510.P1245157716814317066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.xor (A008778 (3 * n)) (A048735 n)).toNat

end

end A332510.P1245157716814317066

/-!
# A332511: Numbers k such that phi(k) == 2 (mod 12), where phi is the Euler totient function (A000010).

The programs for A332511, there is no canonical definition to state claims against.
-/

/-! ## A332511.P10133850205746092523

`eq[2, A000010(n+1)%12]+1`
-/

namespace A332511.P10133850205746092523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332511.P10133850205746092523

/-! ## A332511.P14582530926853107250

`eq[3, A039649(n+1)%12]+1`
-/

namespace A332511.P14582530926853107250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039649 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332511.P14582530926853107250

/-! ## A332511.P15209757321127431837

`eq[2, A000010(A028310(n))%12]`
-/

namespace A332511.P15209757321127431837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A028310 n).toNat) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332511.P15209757321127431837

/-! ## A332511.P10237117814007153189

`eq[3, A260031(A000010(n+1)+1)]+1`
-/

namespace A332511.P10237117814007153189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332511.P10237117814007153189

/-! ## A332511.P7668343259753997976

`eq[2, A000010(n*a(A160383(n)))%12]` with `a(0)=1`
-/

namespace A332511.P7668343259753997976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.tmod (A000010 ((n : ℤ) * f2 (A160383 n).toNat).toNat) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332511.P7668343259753997976

/-!
# A332512: Numbers k such that phi(k) == 0 (mod 12), where phi is the Euler totient function (A000010).

The programs for A332512, the canonical program `A332512.P6000169834190555387` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332512 has offset 1).

The definition of A332512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6821 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332512.P8536783532107414094

`eq[0, A000010(n+1)%12]+1`
-/

namespace A332512.P8536783532107414094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332512.P8536783532107414094

namespace A332512

/-- `eq[0, A000010(n+1)%12]+1` -/
def P8536783532107414094.Spec : Prop :=
  ∀ n, (P8536783532107414094.a n : ℤ) = A332512 (n + 1)

end A332512

/-! ## A332512.P6000169834190555387

`∩[A066498(n+1), A172019(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A332512

/-- `∩[A066498(n+1), A172019(n+1)]` -/
def P6000169834190555387.Spec : Prop :=
  ∀ n, (P6000169834190555387.a n : ℤ) = A332512 (n + 1)

theorem P6000169834190555387.correct : P6000169834190555387.Spec := by
  intro n
  simp only [A332512, Nat.add_sub_cancel]

end A332512

/-! ## A332512.P7476117566400402071

`eq[1, A260031(A000010(C(2, n²)+n)+1)]`
-/

namespace A332512.P7476117566400402071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (A000010 (Nat.choose 2 (n ^ 2) + n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332512.P7476117566400402071

namespace A332512

/-- `eq[1, A260031(A000010(C(2, n²)+n)+1)]` -/
def P7476117566400402071.Spec : Prop :=
  ∀ n, (P7476117566400402071.a n : ℤ) = A332512 (n + 1)

end A332512

/-! ## A332512.P13268103021801657370

`lt[n*(round(1/acot(A102309(n)))%6+1), 2*n]`
-/

namespace A332512.P13268103021801657370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.tmod (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A102309 n : ℝ))) 6 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A332512.P13268103021801657370

namespace A332512

/-- `lt[n*(round(1/acot(A102309(n)))%6+1), 2*n]` -/
def P13268103021801657370.Spec : Prop :=
  ∀ n, (P13268103021801657370.a n : ℤ) = A332512 (n + 1)

end A332512

/-! ## A332512.P11850897323783258455

`lt[n*(A102309(round(acot(n)+n))%6+1), 2*n]`
-/

namespace A332512.P11850897323783258455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.tmod (A102309 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) 6 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A332512.P11850897323783258455

namespace A332512

/-- `lt[n*(A102309(round(acot(n)+n))%6+1), 2*n]` -/
def P11850897323783258455.Spec : Prop :=
  ∀ n, (P11850897323783258455.a n : ℤ) = A332512 (n + 1)

end A332512

/-! ## A332512.P12704047721928081027

`lt[A000010(A004273(n)+1-n)%12, 1]`
-/

namespace A332512.P12704047721928081027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A004273 n + (1 - (n : ℤ))).toNat) 12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A332512.P12704047721928081027

namespace A332512

/-- `lt[A000010(A004273(n)+1-n)%12, 1]` -/
def P12704047721928081027.Spec : Prop :=
  ∀ n, (P12704047721928081027.a n : ℤ) = A332512 (n + 1)

end A332512

/-! ## A332512.P10176778956110888281

`eq[A156037(n+1)%2, A102309(n)%6]`
-/

namespace A332512.P10176778956110888281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156037 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102309 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332512.P10176778956110888281

namespace A332512

/-- `eq[A156037(n+1)%2, A102309(n)%6]` -/
def P10176778956110888281.Spec : Prop :=
  ∀ n, (P10176778956110888281.a n : ℤ) = A332512 (n + 1)

end A332512

/-! ## A332512.P16327186225159551310

`eq[A102309(n)%6, A000007(A114375(n))]`
-/

namespace A332512.P16327186225159551310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102309 n) 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A114375 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332512.P16327186225159551310

namespace A332512

/-- `eq[A102309(n)%6, A000007(A114375(n))]` -/
def P16327186225159551310.Spec : Prop :=
  ∀ n, (P16327186225159551310.a n : ℤ) = A332512 (n + 1)

end A332512

/-! ## A332512.P5979100278825470813

`eq[0, A225530(n)%12]`
-/

namespace A332512.P5979100278825470813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225530 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332512.P5979100278825470813

namespace A332512

/-- `eq[0, A225530(n)%12]` -/
def P5979100278825470813.Spec : Prop :=
  ∀ n, (P5979100278825470813.a n : ℤ) = A332512 (n + 1)

end A332512

/-! ## A332512.P7824792522161393031

`eq[0, A010881(A225530(n))]`
-/

namespace A332512.P7824792522161393031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332512.P7824792522161393031

namespace A332512

/-- `eq[0, A010881(A225530(n))]` -/
def P7824792522161393031.Spec : Prop :=
  ∀ n, (P7824792522161393031.a n : ℤ) = A332512 (n + 1)

end A332512

/-! ## A332512.P10195222856029315115

`eq[2, A204843(A225530(n)²)]`
-/

namespace A332512.P10195222856029315115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A225530 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332512.P10195222856029315115

namespace A332512

/-- `eq[2, A204843(A225530(n)²)]` -/
def P10195222856029315115.Spec : Prop :=
  ∀ n, (P10195222856029315115.a n : ℤ) = A332512 (n + 1)

end A332512

/-! ## A332512.P15964538413326327886

`eq[2, A204843(A225530(n)*A225530(n))]`
-/

namespace A332512.P15964538413326327886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A225530 n * A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332512.P15964538413326327886

namespace A332512

/-- `eq[2, A204843(A225530(n)*A225530(n))]` -/
def P15964538413326327886.Spec : Prop :=
  ∀ n, (P15964538413326327886.a n : ℤ) = A332512 (n + 1)

end A332512

/-!
# A332513: Numbers k such that phi(k) == 4 (mod 12), where phi is the Euler totient function (A000010).

The programs for A332513, the canonical program `A332513.P9883121993506999507` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332513 has offset 1).

The definition of A332513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7755 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332513.P9883121993506999507

`eq[4, A000010(n+1)%12]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A332513

/-- `eq[4, A000010(n+1)%12]+1` -/
def P9883121993506999507.Spec : Prop :=
  ∀ n, (P9883121993506999507.a n : ℤ) = A332513 (n + 1)

theorem P9883121993506999507.correct : P9883121993506999507.Spec := by
  intro n
  simp only [A332513, Nat.add_sub_cancel]

end A332513

/-! ## A332513.P6845804539043550275

`eq[4, A102309(n)%6]`
-/

namespace A332513.P6845804539043550275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102309 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332513.P6845804539043550275

namespace A332513

/-- `eq[4, A102309(n)%6]` -/
def P6845804539043550275.Spec : Prop :=
  ∀ n, (P6845804539043550275.a n : ℤ) = A332513 (n + 1)

end A332513

/-! ## A332513.P7927837613573964762

`eq[4, A000010(A028310(n))%12]`
-/

namespace A332513.P7927837613573964762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A028310 n).toNat) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332513.P7927837613573964762

namespace A332513

/-- `eq[4, A000010(A028310(n))%12]` -/
def P7927837613573964762.Spec : Prop :=
  ∀ n, (P7927837613573964762.a n : ℤ) = A332513 (n + 1)

end A332513

/-! ## A332513.P16787403323477102961

`eq[4, A000010(A000038(n)+n)%12]`
-/

namespace A332513.P16787403323477102961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A000038 n + (n : ℤ)).toNat) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332513.P16787403323477102961

namespace A332513

/-- `eq[4, A000010(A000038(n)+n)%12]` -/
def P16787403323477102961.Spec : Prop :=
  ∀ n, (P16787403323477102961.a n : ℤ) = A332513 (n + 1)

end A332513

/-! ## A332513.P10451179473148054018

`eq[4, A000010(xor(n, A000038(n)))%12]`
-/

namespace A332513.P10451179473148054018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (Int.xor (n : ℤ) (A000038 n)).toNat) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332513.P10451179473148054018

namespace A332513

/-- `eq[4, A000010(xor(n, A000038(n)))%12]` -/
def P10451179473148054018.Spec : Prop :=
  ∀ n, (P10451179473148054018.a n : ℤ) = A332513 (n + 1)

end A332513

/-! ## A332513.P11241678739231069495

`eq[4, and(12, A042968(A000010(n+1)+1))]+1`
-/

namespace A332513.P11241678739231069495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 12 (A042968 (A000010 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332513.P11241678739231069495

namespace A332513

/-- `eq[4, and(12, A042968(A000010(n+1)+1))]+1` -/
def P11241678739231069495.Spec : Prop :=
  ∀ n, (P11241678739231069495.a n : ℤ) = A332513 (n + 1)

end A332513

/-! ## A332513.P13176484926500850594

`eq[4, A000010(A233583(n+1))%12]`
-/

namespace A332513.P13176484926500850594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A233583 (n + 1)).toNat) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332513.P13176484926500850594

namespace A332513

/-- `eq[4, A000010(A233583(n+1))%12]` -/
def P13176484926500850594.Spec : Prop :=
  ∀ n, (P13176484926500850594.a n : ℤ) = A332513 (n + 1)

end A332513

/-! ## A332513.P6384070443560163603

`eq[3, A065451(n)%8]`
-/

namespace A332513.P6384070443560163603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065451 n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332513.P6384070443560163603

namespace A332513

/-- `eq[3, A065451(n)%8]` -/
def P6384070443560163603.Spec : Prop :=
  ∀ n, (P6384070443560163603.a n : ℤ) = A332513 (n + 1)

end A332513

/-! ## A332513.P15546975408673222613

`eq[4, A225530(n)%12]`
-/

namespace A332513.P15546975408673222613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225530 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332513.P15546975408673222613

namespace A332513

/-- `eq[4, A225530(n)%12]` -/
def P15546975408673222613.Spec : Prop :=
  ∀ n, (P15546975408673222613.a n : ℤ) = A332513 (n + 1)

end A332513

/-! ## A332513.P1410005060882308533

`eq[3, A036118(A225530(n))]`
-/

namespace A332513.P1410005060882308533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036118 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332513.P1410005060882308533

namespace A332513

/-- `eq[3, A036118(A225530(n))]` -/
def P1410005060882308533.Spec : Prop :=
  ∀ n, (P1410005060882308533.a n : ℤ) = A332513 (n + 1)

end A332513

/-!
# A332514: Numbers k such that phi(k) == 6 (mod 12), where phi is the Euler totient function (A000010).

The programs for A332514, the canonical program `A332514.P10691463017122802451` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332514 has offset 1).

The definition of A332514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332514.P14676322755387029816

`∩[A066499(n+1), A319838(n+1)]`
-/

namespace A332514.P14676322755387029816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332514.P14676322755387029816

namespace A332514

/-- `∩[A066499(n+1), A319838(n+1)]` -/
def P14676322755387029816.Spec : Prop :=
  ∀ n, (P14676322755387029816.a n : ℤ) = A332514 (n + 1)

end A332514

/-! ## A332514.P10691463017122802451

`eq[6, A000010(n+1)%12]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A332514

/-- `eq[6, A000010(n+1)%12]+1` -/
def P10691463017122802451.Spec : Prop :=
  ∀ n, (P10691463017122802451.a n : ℤ) = A332514 (n + 1)

theorem P10691463017122802451.correct : P10691463017122802451.Spec := by
  intro n
  simp only [A332514, Nat.add_sub_cancel]

end A332514

/-! ## A332514.P13181628798009901830

`∩[A066498(n+1), A066499(n+1)]`
-/

namespace A332514.P13181628798009901830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332514.P13181628798009901830

namespace A332514

/-- `∩[A066498(n+1), A066499(n+1)]` -/
def P13181628798009901830.Spec : Prop :=
  ∀ n, (P13181628798009901830.a n : ℤ) = A332514 (n + 1)

end A332514

/-! ## A332514.P1417485454479377152

`∩[A066498(n+1), A097987(n+1)]`
-/

namespace A332514.P1417485454479377152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332514.P1417485454479377152

namespace A332514

/-- `∩[A066498(n+1), A097987(n+1)]` -/
def P1417485454479377152.Spec : Prop :=
  ∀ n, (P1417485454479377152.a n : ℤ) = A332514 (n + 1)

end A332514

/-! ## A332514.P2066527721420599918

`A153152(eq[3, A337923(A000010(n+1))])`
-/

namespace A332514.P2066527721420599918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332514.P2066527721420599918

namespace A332514

/-- `A153152(eq[3, A337923(A000010(n+1))])` -/
def P2066527721420599918.Spec : Prop :=
  ∀ n, P2066527721420599918.a n = A332514 (n + 1)

end A332514

/-!
# A332515: Numbers k such that phi(k) == 8 (mod 12), where phi is the Euler totient function (A000010).

The programs for A332515, the canonical program `A332515.P15703317837093587620` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332515 has offset 1).

The definition of A332515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332515.P15703317837093587620

`eq[8, A000010(n+1)%12]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A332515

/-- `eq[8, A000010(n+1)%12]+1` -/
def P15703317837093587620.Spec : Prop :=
  ∀ n, (P15703317837093587620.a n : ℤ) = A332515 (n + 1)

theorem P15703317837093587620.correct : P15703317837093587620.Spec := by
  intro n
  simp only [A332515, Nat.add_sub_cancel]

end A332515

/-! ## A332515.P457480393505887985

`eq[2, A102309(n)%6]`
-/

namespace A332515.P457480393505887985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102309 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332515.P457480393505887985

namespace A332515

/-- `eq[2, A102309(n)%6]` -/
def P457480393505887985.Spec : Prop :=
  ∀ n, (P457480393505887985.a n : ℤ) = A332515 (n + 1)

end A332515

/-! ## A332515.P12194450859346469340

`eq[5, A065451(n)%8]`
-/

namespace A332515.P12194450859346469340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065451 n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332515.P12194450859346469340

namespace A332515

/-- `eq[5, A065451(n)%8]` -/
def P12194450859346469340.Spec : Prop :=
  ∀ n, (P12194450859346469340.a n : ℤ) = A332515 (n + 1)

end A332515

/-! ## A332515.P11683034964771163263

`eq[8, A181668(A225530(n))]`
-/

namespace A332515.P11683034964771163263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181668 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332515.P11683034964771163263

namespace A332515

/-- `eq[8, A181668(A225530(n))]` -/
def P11683034964771163263.Spec : Prop :=
  ∀ n, (P11683034964771163263.a n : ℤ) = A332515 (n + 1)

end A332515

/-! ## A332515.P6292263821938985954

`eq[2, A010875(A102309(n))]`
-/

namespace A332515.P6292263821938985954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A102309 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332515.P6292263821938985954

namespace A332515

/-- `eq[2, A010875(A102309(n))]` -/
def P6292263821938985954.Spec : Prop :=
  ∀ n, (P6292263821938985954.a n : ℤ) = A332515 (n + 1)

end A332515

/-!
# A332516: Numbers k such that phi(k) == 10 (mod 12), where phi is the Euler totient function (A000010).

The programs for A332516, the canonical program `A332516.P9149279751242895197` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332516 has offset 1).

The definition of A332516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332516.P9149279751242895197

`filter[A004612(n+1), A354029(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A332516

/-- `filter[A004612(n+1), A354029(#)]` -/
def P9149279751242895197.Spec : Prop :=
  ∀ n, P9149279751242895197.a n = A332516 (n + 1)

theorem P9149279751242895197.correct : P9149279751242895197.Spec := by
  intro n
  simp only [A332516, Nat.add_sub_cancel]

end A332516

/-! ## A332516.P6737453613558034582

`∩[A004612(n+1), A292762(n+1)]`
-/

namespace A332516.P6737453613558034582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332516.P6737453613558034582

namespace A332516

/-- `∩[A004612(n+1), A292762(n+1)]` -/
def P6737453613558034582.Spec : Prop :=
  ∀ n, (P6737453613558034582.a n : ℤ) = A332516 (n + 1)

end A332516

/-! ## A332516.P7237862573707409692

`filter[A047257(n+1), A354029(#)]`
-/

namespace A332516.P7237862573707409692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A332516.P7237862573707409692

namespace A332516

/-- `filter[A047257(n+1), A354029(#)]` -/
def P7237862573707409692.Spec : Prop :=
  ∀ n, P7237862573707409692.a n = A332516 (n + 1)

end A332516

/-! ## A332516.P15385761327659988801

`∩[A047257(n+1), A292762(n+1)]`
-/

namespace A332516.P15385761327659988801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332516.P15385761327659988801

namespace A332516

/-- `∩[A047257(n+1), A292762(n+1)]` -/
def P15385761327659988801.Spec : Prop :=
  ∀ n, (P15385761327659988801.a n : ℤ) = A332516 (n + 1)

end A332516

/-! ## A332516.P3766767351033188971

`∩[A066501(n+1), A225858(n+1)]`
-/

namespace A332516.P3766767351033188971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332516.P3766767351033188971

namespace A332516

/-- `∩[A066501(n+1), A225858(n+1)]` -/
def P3766767351033188971.Spec : Prop :=
  ∀ n, (P3766767351033188971.a n : ℤ) = A332516 (n + 1)

end A332516

/-! ## A332516.P9283864609551528944

`filter[A225838(n+1), A354029(#)]`
-/

namespace A332516.P9283864609551528944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A332516.P9283864609551528944

namespace A332516

/-- `filter[A225838(n+1), A354029(#)]` -/
def P9283864609551528944.Spec : Prop :=
  ∀ n, P9283864609551528944.a n = A332516 (n + 1)

end A332516

/-! ## A332516.P9033751625327534956

`∩[A066499(n+1), A225838(n+1)]`
-/

namespace A332516.P9033751625327534956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332516.P9033751625327534956

namespace A332516

/-- `∩[A066499(n+1), A225838(n+1)]` -/
def P9033751625327534956.Spec : Prop :=
  ∀ n, (P9033751625327534956.a n : ℤ) = A332516 (n + 1)

end A332516

/-! ## A332516.P17851265955268799198

`∩[A097987(n+1), A225838(n+1)]`
-/

namespace A332516.P17851265955268799198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332516.P17851265955268799198

namespace A332516

/-- `∩[A097987(n+1), A225838(n+1)]` -/
def P17851265955268799198.Spec : Prop :=
  ∀ n, (P17851265955268799198.a n : ℤ) = A332516 (n + 1)

end A332516

/-! ## A332516.P11454247437599798340

`∩[A225838(n+1), A292762(n+1)]`
-/

namespace A332516.P11454247437599798340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332516.P11454247437599798340

namespace A332516

/-- `∩[A225838(n+1), A292762(n+1)]` -/
def P11454247437599798340.Spec : Prop :=
  ∀ n, (P11454247437599798340.a n : ℤ) = A332516 (n + 1)

end A332516

/-! ## A332516.P14241171596609855545

`filter[A292762(n+1), A131532(#)]`
-/

namespace A332516.P14241171596609855545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131532 (f1 j).toNat = 1) n)

end

end A332516.P14241171596609855545

namespace A332516

/-- `filter[A292762(n+1), A131532(#)]` -/
def P14241171596609855545.Spec : Prop :=
  ∀ n, P14241171596609855545.a n = A332516 (n + 1)

end A332516

/-! ## A332516.P3652760949334252028

`filter[A066499(n+3), A131532(#)]`
-/

namespace A332516.P3652760949334252028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131532 (f1 j).toNat = 1) n)

end

end A332516.P3652760949334252028

namespace A332516

/-- `filter[A066499(n+3), A131532(#)]` -/
def P3652760949334252028.Spec : Prop :=
  ∀ n, P3652760949334252028.a n = A332516 (n + 1)

end A332516

/-! ## A332516.P1298390836431122791

`eq[A102309(n)%6, A261143(n)]`
-/

namespace A332516.P1298390836431122791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102309 n) 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332516.P1298390836431122791

namespace A332516

/-- `eq[A102309(n)%6, A261143(n)]` -/
def P1298390836431122791.Spec : Prop :=
  ∀ n, (P1298390836431122791.a n : ℤ) = A332516 (n + 1)

end A332516

/-! ## A332516.P71752892192694302

`filter[A366619(3*n+1), A354029(#)]`
-/

namespace A332516.P71752892192694302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366619 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A332516.P71752892192694302

namespace A332516

/-- `filter[A366619(3*n+1), A354029(#)]` -/
def P71752892192694302.Spec : Prop :=
  ∀ n, P71752892192694302.a n = A332516 (n + 1)

end A332516

/-!
# A332517: a(n) = Sum_{k=1..n} gcd(n,k)^n.

The programs for A332517, there is no canonical definition to state claims against.
-/

/-! ## A332517.P15041622472240058309

`A343510((n+1)²+n²)`
-/

namespace A332517.P15041622472240058309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 ((n + 1) ^ 2 + n ^ 2)

end

end A332517.P15041622472240058309

/-! ## A332517.P13206639926752336505

`record[A343510(∑[A266285(n)]-n)]`
-/

namespace A332517.P13206639926752336505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332517.P13206639926752336505

/-! ## A332517.P14301222901237870525

`record[A214505(n)*A343510(n+1)]`
-/

namespace A332517.P14301222901237870525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A343510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332517.P14301222901237870525

/-! ## A332517.P7152522270295639040

`record[gcd(A049581(n), A343510(n+1))]`
-/

namespace A332517.P7152522270295639040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A343510 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332517.P7152522270295639040

/-! ## A332517.P12515632536266247081

`and(1, A020639(8*n+1))*A343510(A001844(n))`
-/

namespace A332517.P12515632536266247081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A020639 (8 * n + 1)) * A343510 (A001844 n).toNat

end

end A332517.P12515632536266247081

/-!
# A332519: a(n) = 4*(n^2 + n - 2).

The programs for A332519, the canonical program `A332519.P9314449579044910661` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332519 has offset 1).

The definition of A332519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*((n+1)²+n+1-2)` (program `A332519.P9314449579044910661`, by `A332519.P9314449579044910661.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332519.P9314449579044910661

`4*((n+1)²+n+1-2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332519

/-- `4*((n+1)²+n+1-2)` -/
def P9314449579044910661.Spec : Prop :=
  ∀ n, P9314449579044910661.a n = A332519 (n + 1)

theorem P9314449579044910661.correct : P9314449579044910661.Spec := by
  intro n
  simp only [A332519, Nat.add_sub_cancel]

end A332519

/-! ## A332519.P11582782828465987151

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=16, a(2)=40`
-/

namespace A332519.P11582782828465987151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 16, 40] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A332519.P11582782828465987151

namespace A332519

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11582782828465987151.Spec : Prop :=
  ∀ n, P11582782828465987151.a n = A332519 (n + 1)

theorem P11582782828465987151.correct : P11582782828465987151.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A332519, Nat.add_sub_cancel, A332519.P11582782828465987151.a, A332519.P9314449579044910661.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A332519, Nat.add_sub_cancel, A332519.P11582782828465987151.a, A332519.P9314449579044910661.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A332519

/-! ## A332519.P8555657327082022351

`A028560(2*n)`
-/

namespace A332519.P8555657327082022351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 (2 * n)

end

end A332519.P8555657327082022351

namespace A332519

/-- `A028560(2*n)` -/
def P8555657327082022351.Spec : Prop :=
  ∀ n, P8555657327082022351.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P16322578207439523553

`record[4*n*(n-3)]`
-/

namespace A332519.P16322578207439523553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332519.P16322578207439523553

namespace A332519

/-- `record[4*n*(n-3)]` -/
def P16322578207439523553.Spec : Prop :=
  ∀ n, P16322578207439523553.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P8161606489548671208

`8*C(n+2, 2)-8`
-/

namespace A332519.P8161606489548671208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * Nat.choose (n + 2) 2 : ℤ) - 8

end

end A332519.P8161606489548671208

namespace A332519

/-- `8*C(n+2, 2)-8` -/
def P8161606489548671208.Spec : Prop :=
  ∀ n, P8161606489548671208.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P7899836137453087547

`∑[a(n-1)+8]` with `a(0)=0, a(1)=16`
-/

namespace A332519.P7899836137453087547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 16] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332519.P7899836137453087547

namespace A332519

/-- `∑[a(n-1)+8]` -/
def P7899836137453087547.Spec : Prop :=
  ∀ n, (P7899836137453087547.a n : ℤ) = A332519 (n + 1)

end A332519

/-! ## A332519.P7442894229708228730

`lcm(2, 4*n*(n+3))`
-/

namespace A332519.P7442894229708228730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (4 * (n * (n + 3)))

end

end A332519.P7442894229708228730

namespace A332519

/-- `lcm(2, 4*n*(n+3))` -/
def P7442894229708228730.Spec : Prop :=
  ∀ n, (P7442894229708228730.a n : ℤ) = A332519 (n + 1)

end A332519

/-! ## A332519.P2300399384612838168

`record[xor(1, n+2)²]-9`
-/

namespace A332519.P2300399384612838168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 9

end

end A332519.P2300399384612838168

namespace A332519

/-- `record[xor(1, n+2)²]-9` -/
def P2300399384612838168.Spec : Prop :=
  ∀ n, P2300399384612838168.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P15569123587796505074

`floor(n/acot(4*(n+3)))`
-/

namespace A332519.P15569123587796505074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (4 * (n + 3) : ℝ)⌋

end

end A332519.P15569123587796505074

namespace A332519

/-- `floor(n/acot(4*(n+3)))` -/
def P15569123587796505074.Spec : Prop :=
  ∀ n, P15569123587796505074.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P17682112541314456741

`round(n/acot(4*(n+3)))`
-/

namespace A332519.P17682112541314456741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (4 * (n + 3) : ℝ))

end

end A332519.P17682112541314456741

namespace A332519

/-- `round(n/acot(4*(n+3)))` -/
def P17682112541314456741.Spec : Prop :=
  ∀ n, P17682112541314456741.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P17455918978818564266

`4*n/tan(acot(n+3))`
-/

namespace A332519.P17455918978818564266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 * n : ℝ) / Real.tan (SequenceMachineLib.acot (n + 3 : ℝ))

end

end A332519.P17455918978818564266

namespace A332519

/-- `4*n/tan(acot(n+3))` -/
def P17455918978818564266.Spec : Prop :=
  ∀ n, P17455918978818564266.a n = (A332519 (n + 1) : ℝ)

end A332519

/-! ## A332519.P11608667017984830911

`4*n/cot(atan(n+3))`
-/

namespace A332519.P11608667017984830911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 * n : ℝ) / Real.cot (Real.arctan (n + 3 : ℝ))

end

end A332519.P11608667017984830911

namespace A332519

/-- `4*n/cot(atan(n+3))` -/
def P11608667017984830911.Spec : Prop :=
  ∀ n, P11608667017984830911.a n = (A332519 (n + 1) : ℝ)

end A332519

/-! ## A332519.P17456494323001964501

`xor(4, (2*n+3)²-5)`
-/

namespace A332519.P17456494323001964501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (((2 * n + 3) ^ 2 : ℤ) - 5)

end

end A332519.P17456494323001964501

namespace A332519

/-- `xor(4, (2*n+3)²-5)` -/
def P17456494323001964501.Spec : Prop :=
  ∀ n, P17456494323001964501.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P12210077339429186989

`lcm(4, (n+1)²+n)-4`
-/

namespace A332519.P12210077339429186989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 ((n + 1) ^ 2 + n) : ℤ) - 4

end

end A332519.P12210077339429186989

namespace A332519

/-- `lcm(4, (n+1)²+n)-4` -/
def P12210077339429186989.Spec : Prop :=
  ∀ n, P12210077339429186989.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P15800815424062909095

`and(4*n*(n+3), -2)`
-/

namespace A332519.P15800815424062909095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 * (n * (n + 3)) : ℤ) (-2)

end

end A332519.P15800815424062909095

namespace A332519

/-- `and(4*n*(n+3), -2)` -/
def P15800815424062909095.Spec : Prop :=
  ∀ n, P15800815424062909095.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P13077103963063428245

`8*(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A332519.P13077103963063428245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  8 * (n + 1) + a (n - 1)

end

end A332519.P13077103963063428245

namespace A332519

/-- `8*(n+1)+a(n-1)` -/
def P13077103963063428245.Spec : Prop :=
  ∀ n, (P13077103963063428245.a n : ℤ) = A332519 (n + 1)

theorem P13077103963063428245.correct : P13077103963063428245.Spec := by
  intro n
  induction n with
  | zero => simp [A332519, A332519.P13077103963063428245.a, A332519.P9314449579044910661.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A332519, Nat.add_sub_cancel, A332519.P13077103963063428245.a, A332519.P9314449579044910661.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A332519

/-! ## A332519.P8474455978756500623

`∑[ogf((7+2x-x^2)/(1-2x+x^2))]-7`
-/

namespace A332519.P8474455978756500623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 2, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 7

end

end A332519.P8474455978756500623

namespace A332519

/-- `∑[ogf((7+2x-x^2)/(1-2x+x^2))]-7` -/
def P8474455978756500623.Spec : Prop :=
  ∀ n, P8474455978756500623.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P17146257546559913240

`8*n-∑[a(n-1)-8]` with `a(0)=0`
-/

namespace A332519.P17146257546559913240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332519.P17146257546559913240

namespace A332519

/-- `8*n-∑[a(n-1)-8]` -/
def P17146257546559913240.Spec : Prop :=
  ∀ n, P17146257546559913240.a n = A332519 (n + 1)

end A332519

/-! ## A332519.P16951747029962193974

`C(2, n+3)+2*(n+3)*2*n`
-/

namespace A332519.P16951747029962193974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + 2 * ((n + 3) * (2 * n))

end

end A332519.P16951747029962193974

namespace A332519

/-- `C(2, n+3)+2*(n+3)*2*n` -/
def P16951747029962193974.Spec : Prop :=
  ∀ n, (P16951747029962193974.a n : ℤ) = A332519 (n + 1)

end A332519

/-! ## A332519.P10040441130955924454

`and(1, 2*n)+2*(n+3)*2*n`
-/

namespace A332519.P10040441130955924454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + 2 * ((n + 3) * (2 * n))

end

end A332519.P10040441130955924454

namespace A332519

/-- `and(1, 2*n)+2*(n+3)*2*n` -/
def P10040441130955924454.Spec : Prop :=
  ∀ n, (P10040441130955924454.a n : ℤ) = A332519 (n + 1)

theorem P10040441130955924454.correct : P10040441130955924454.Spec := by
  intro n
  simp only [A332519, Nat.add_sub_cancel, A332519.P10040441130955924454.a, A332519.P9314449579044910661.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A332519

/-!
# A332520: Fixed points of A331364.

The programs for A332520, there is no canonical definition to state claims against.
-/

/-! ## A332520.P5007808607449202311

`record[gcd(n, A331364(n))]`
-/

namespace A332520.P5007808607449202311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A331364 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332520.P5007808607449202311

/-! ## A332520.P15955874913832591034

`A331364(record[n/(1-A331364(n)+n)])`
-/

namespace A332520.P15955874913832591034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A331364 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331364 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A332520.P15955874913832591034

/-! ## A332520.P14099794365096092792

`eq[n, A331364(n)]`
-/

namespace A332520.P14099794365096092792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332520.P14099794365096092792

/-! ## A332520.P9433765335990351598

`record[n-A211653(abs(n-A331364(n)))]`
-/

namespace A332520.P9433765335990351598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A211653 |(n : ℤ) - A331364 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332520.P9433765335990351598

/-! ## A332520.P2415903187304333534

`record[A056926(n*A331364(n))]`
-/

namespace A332520.P2415903187304333534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((n : ℤ) * A331364 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332520.P2415903187304333534

/-!
# A332529: Rectangular array by antidiagonals: T(n,k) = floor(n + k*r), where r = golden ratio = (1+sqrt(5))/2.

The programs for A332529, there is no canonical definition to state claims against.
-/

/-! ## A332529.P7559991203344649450

`A332502(n)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A332529.P7559991203344649450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 n + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A332529.P7559991203344649450

/-! ## A332529.P13764215440648032466

`A066096(C(comp[∑[n]]-n, 2)-(n+1))+∑[char[∑[n+1]]]`
-/

namespace A332529.P13764215440648032466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A332529.P13764215440648032466

/-! ## A332529.P4681755805185039336

`A332502(n)+A025581(n)`
-/

namespace A332529.P4681755805185039336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 n + A025581 n

end

end A332529.P4681755805185039336

/-! ## A332529.P16568636557726215474

`A332502(n)+log2(A130321(n))`
-/

namespace A332529.P16568636557726215474
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A332502 n : ℝ) + Real.logb 2 (A130321 n : ℝ)

end

end A332529.P16568636557726215474

/-! ## A332529.P6583403657084201998

`A332502(n)+A025660(n+1)`
-/

namespace A332529.P6583403657084201998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 n + A025660 (n + 1)

end

end A332529.P6583403657084201998

/-! ## A332529.P17194531838487411909

`A332502(n)+A025669(n+1)`
-/

namespace A332529.P17194531838487411909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332502 n + A025669 (n + 1)

end

end A332529.P17194531838487411909

/-! ## A332529.P1635567849034791368

`A004736(n+1)+A332502(n)-1`
-/

namespace A332529.P1635567849034791368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A332502 n - 1)

end

end A332529.P1635567849034791368

/-! ## A332529.P390262088109669164

`A066096(A025581(n))+A003056(n)`
-/

namespace A332529.P390262088109669164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A025581 n).toNat + A003056 n

end

end A332529.P390262088109669164

/-!
# A332533: a(n) = (1/n) * Sum_{k=1..n} floor(n/k) * n^k.

The programs for A332533, there is no canonical definition to state claims against.
-/

/-! ## A332533.P17215483045268773798

`A344821(2*(n+1)²)`
-/

namespace A332533.P17215483045268773798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344821 (2 * (n + 1) ^ 2)

end

end A332533.P17215483045268773798

/-! ## A332533.P8949551568079174486

`record[gcd(A334279(n+1), A344821(2*(n+1)))]`
-/

namespace A332533.P8949551568079174486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A334279 (n + 1)) (A344821 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332533.P8949551568079174486

/-!
# A332535: Numbers that are not of the form p + 2^(2^k) + 2^q with p, q primes and k >= 0.

The programs for A332535, there is no canonical definition to state claims against.
-/

/-! ## A332535.P7066105621990087025

`eq[A001030(n+1), A162145(A002033(n))]`
-/

namespace A332535.P7066105621990087025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A002033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332535.P7066105621990087025

/-! ## A332535.P3094971248552246899

`eq[A000983(A001055(n+1)), A001030(n+1)]`
-/

namespace A332535.P3094971248552246899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000983 (A001055 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332535.P3094971248552246899

/-! ## A332535.P3912134758856252053

`A045779(n+1)*A055642(A290697(n+6))`
-/

namespace A332535.P3912134758856252053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045779 (n + 1) * A055642 (A290697 (n + 6)).toNat

end

end A332535.P3912134758856252053

/-! ## A332535.P15978764860114498504

`A002473(n+1)*A055642(A236681(n+1))`
-/

namespace A332535.P15978764860114498504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) * A055642 (A236681 (n + 1)).toNat

end

end A332535.P15978764860114498504

/-! ## A332535.P7981784078812383384

`A002473(n+1)*A270419(A056744(n+1))`
-/

namespace A332535.P7981784078812383384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) * A270419 (A056744 (n + 1)).toNat

end

end A332535.P7981784078812383384

/-!
# A332537: Denominators of coefficients in a series for the first Stieltjes constant gamma_1.

The programs for A332537, there is no canonical definition to state claims against.
-/

/-! ## A332537.P10570751277207221938

`A326438(A392643(n))`
-/

namespace A332537.P10570751277207221938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326438 (A392643 n).toNat

end

end A332537.P10570751277207221938

/-!
# A332539: Denominators of coefficients in a series for log(2 Pi).

The programs for A332539, there is no canonical definition to state claims against.
-/

/-! ## A332539.P14545487542260946611

`A046523(3*A123308(n))`
-/

namespace A332539.P14545487542260946611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (3 * A123308 n).toNat

end

end A332539.P14545487542260946611

/-!
# A332542: a(n) is the smallest k such that n+(n+1)+(n+2)+...+(n+k) is divisible by n+k+1.

The programs for A332542, there is no canonical definition to state claims against.
-/

/-! ## A332542.P13215003968590893336

`A336326(n+3)-1`
-/

namespace A332542.P13215003968590893336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336326 (n + 3) - 1

end

end A332542.P13215003968590893336

/-! ## A332542.P13088985112210738849

`A332543(n+3)-(n+4)`
-/

namespace A332542.P13088985112210738849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332543 (n + 3) - (n + 4 : ℤ)

end

end A332542.P13088985112210738849

/-! ## A332542.P9526447242998718625

`(n+2)*(n+3)/A332552(n+2)-(n+4)`
-/

namespace A332542.P9526447242998718625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 3 : ℚ) / (A332552 (n + 2) : ℚ)) - (n + 4 : ℚ)

end

end A332542.P9526447242998718625

/-! ## A332542.P13576625444808211053

`A379697(n+3)+A082183(n+2)`
-/

namespace A332542.P13576625444808211053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379697 (n + 3) + A082183 (n + 2)

end

end A332542.P13576625444808211053

/-! ## A332542.P18254025733635085231

`(A002378(n+1)+n)%A332543(n+3)`
-/

namespace A332542.P18254025733635085231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 (n + 1) + (n : ℤ)) (A332543 (n + 3))

end

end A332542.P18254025733635085231

/-! ## A332542.P5213861113706991727

`A332544(n+3)/A082183(n+2)-(n+4)`
-/

namespace A332542.P5213861113706991727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332544 (n + 3) : ℚ) / (A082183 (n + 2) : ℚ) - (n + 4 : ℚ)

end

end A332542.P5213861113706991727

/-! ## A332542.P15918821908114444910

`A004273(A082183(n+2))-A332553(n+2)`
-/

namespace A332542.P15918821908114444910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A082183 (n + 2)).toNat - A332553 (n + 2)

end

end A332542.P15918821908114444910

/-! ## A332542.P646991022891358512

`A023443(A336326(n+3))`
-/

namespace A332542.P646991022891358512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A336326 (n + 3)).toNat

end

end A332542.P646991022891358512

/-!
# A332543: a(n) = n + A332542(n) + 1.

The programs for A332543, there is no canonical definition to state claims against.
-/

/-! ## A332543.P12583416348806385581

`n+3+A332542(n+3)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332543.P12583416348806385581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) + A332542 (n + 3) + 1

end

end A332543.P12583416348806385581

/-! ## A332543.P12827197524982991369

`A336326(n+3)+3+n`
-/

namespace A332543.P12827197524982991369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336326 (n + 3) + 3 + (n : ℤ)

end

end A332543.P12827197524982991369

/-! ## A332543.P6982715218632087560

`A332542(n+3)+4+n`
-/

namespace A332543.P6982715218632087560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332542 (n + 3) + 4 + (n : ℤ)

end

end A332543.P6982715218632087560

/-! ## A332543.P8086694506597738615

`(n+2)*(n+3)/A332552(n+2)`
-/

namespace A332543.P8086694506597738615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 3 : ℚ) / (A332552 (n + 2) : ℚ))

end

end A332543.P8086694506597738615

/-! ## A332543.P12590679658048017426

`A332542(n+3)+A020705(n)`
-/

namespace A332543.P12590679658048017426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332542 (n + 3) + A020705 n

end

end A332543.P12590679658048017426

/-! ## A332543.P1962139834745172637

`A332544(n+3)/A082183(n+2)`
-/

namespace A332543.P1962139834745172637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332544 (n + 3) : ℚ) / (A082183 (n + 2) : ℚ)

end

end A332543.P1962139834745172637

/-! ## A332543.P16466200530144798939

`A082183(n+2)+A082184(n+2)+1`
-/

namespace A332543.P16466200530144798939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082183 (n + 2) + (A082184 (n + 2) + 1)

end

end A332543.P16466200530144798939

/-! ## A332543.P7312729131361800842

`A332544(n+3)/(A082184(n+2)-A332552(n+2))`
-/

namespace A332543.P7312729131361800842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332544 (n + 3) : ℚ) / (A082184 (n + 2) - A332552 (n + 2) : ℚ)

end

end A332543.P7312729131361800842

/-!
# A332544: a(n) = (k+1)*n + k*(k+1)/2, where k = A332542(n).

The programs for A332544, there is no canonical definition to state claims against.
-/

/-! ## A332544.P2261204988162585132

`A082183(n+2)*A332543(n+3)`
-/

namespace A332544.P2261204988162585132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082183 (n + 2) * A332543 (n + 3)

end

end A332544.P2261204988162585132

/-! ## A332544.P2032386408657169747

`(A336326(n+3)+3+n)*A082183(n+2)`
-/

namespace A332544.P2032386408657169747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336326 (n + 3) + 3 + (n : ℤ)) * A082183 (n + 2)

end

end A332544.P2032386408657169747

/-! ## A332544.P3292853434570828802

`(n+2)*(n+3)/A332552(n+2)*A082183(n+2)`
-/

namespace A332544.P3292853434570828802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 3 : ℚ) / (A332552 (n + 2) : ℚ)) * (A082183 (n + 2) : ℚ)

end

end A332544.P3292853434570828802

/-! ## A332544.P3128029986265852632

`(A332542(n+3)+A020705(n))*A082183(n+2)`
-/

namespace A332544.P3128029986265852632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332542 (n + 3) + A020705 n) * A082183 (n + 2)

end

end A332544.P3128029986265852632

/-! ## A332544.P2992390680544716931

`(A082184(n+2)-A332552(n+2))*A332543(n+3)`
-/

namespace A332544.P2992390680544716931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082184 (n + 2) - A332552 (n + 2)) * A332543 (n + 3)

end

end A332544.P2992390680544716931

/-! ## A332544.P5692402825115780505

`(n+3-(A082184(n+2)-A332542(n+3)))*A332543(n+3)`
-/

namespace A332544.P5692402825115780505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - (A082184 (n + 2) - A332542 (n + 3))) * A332543 (n + 3)

end

end A332544.P5692402825115780505

/-! ## A332544.P12231342664802307768

`(A336326(n+3)+3+n)*(n+3-(A082184(n+2)-A332542(n+3)))`
-/

namespace A332544.P12231342664802307768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336326 (n + 3) + 3 + (n : ℤ)) * ((n + 3 : ℤ) - (A082184 (n + 2) - A332542 (n + 3)))

end

end A332544.P12231342664802307768

/-! ## A332544.P11524692293253544929

`A332543(n+3)%(A082184(n+2)+A106400(n)²)*A332543(n+3)`
-/

namespace A332544.P11524692293253544929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332543 (n + 3)) (A082184 (n + 2) + A106400 n ^ 2) * A332543 (n + 3)

end

end A332544.P11524692293253544929

/-! ## A332544.P14935054545211186010

`A161680(A332543(n+3))-A000217(n+2)`
-/

namespace A332544.P14935054545211186010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A332543 (n + 3)).toNat - A000217 (n + 2)

end

end A332544.P14935054545211186010

/-! ## A332544.P2473982673966705848

`A055998(A332542(n+3)+n+1)-A055998(n)`
-/

namespace A332544.P2473982673966705848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (A332542 (n + 3) + (n + 1 : ℤ)).toNat - A055998 n

end

end A332544.P2473982673966705848

/-! ## A332544.P4850593073323567783

`A004524(A332543(n+3)-A332552(n+2))*A332543(n+3)`
-/

namespace A332544.P4850593073323567783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A332543 (n + 3) - A332552 (n + 2)).toNat * A332543 (n + 3)

end

end A332544.P4850593073323567783

/-! ## A332544.P1813177634583035097

`A004526(A332543(n+3)-A332552(n+2))*A332543(n+3)`
-/

namespace A332544.P1813177634583035097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A332543 (n + 3) - A332552 (n + 2)).toNat * A332543 (n + 3)

end

end A332544.P1813177634583035097

/-! ## A332544.P8508029592026179529

`A028242(A332543(n+3)-A332552(n+2))*A332543(n+3)`
-/

namespace A332544.P8508029592026179529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A332543 (n + 3) - A332552 (n + 2)).toNat * A332543 (n + 3)

end

end A332544.P8508029592026179529

/-! ## A332544.P14985122076911801719

`A057979(A332543(n+3)-A332552(n+2))*A332543(n+3)`
-/

namespace A332544.P14985122076911801719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A332543 (n + 3) - A332552 (n + 2)).toNat * A332543 (n + 3)

end

end A332544.P14985122076911801719

/-! ## A332544.P12565594824363270264

`A123108(A332543(n+3)-A332552(n+2))*A332543(n+3)`
-/

namespace A332544.P12565594824363270264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A332543 (n + 3) - A332552 (n + 2)).toNat * A332543 (n + 3)

end

end A332544.P12565594824363270264

/-!
# A332547: a(n) = largest odd divisor d < n of n*(n+1)/2.

The programs for A332547, there is no canonical definition to state claims against.
-/

/-! ## A332547.P4624051407493812391

`2*A332548(n+1)+1`
-/

namespace A332547.P4624051407493812391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332548 (n + 1) + 1

end

end A332547.P4624051407493812391

/-! ## A332547.P9233656503634583569

`A005408(A332548(n+1))`
-/

namespace A332547.P9233656503634583569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A332548 (n + 1)).toNat

end

end A332547.P9233656503634583569

/-! ## A332547.P16045232187897981961

`A004442(2*A332548(n+1))`
-/

namespace A332547.P16045232187897981961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A332548 (n + 1)).toNat

end

end A332547.P16045232187897981961

/-! ## A332547.P6122150734091133410

`A141310(2*A332548(n+1))`
-/

namespace A332547.P6122150734091133410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A332548 (n + 1)).toNat

end

end A332547.P6122150734091133410

/-! ## A332547.P6217401703532859457

`A022998(A332548(n+1)+A332548(n+1)+1)`
-/

namespace A332547.P6217401703532859457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A332548 (n + 1) + (A332548 (n + 1) + 1)).toNat

end

end A332547.P6217401703532859457

/-! ## A332547.P9819995945892675277

`A026741(A332548(n+1)+A332548(n+1)+1)`
-/

namespace A332547.P9819995945892675277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A332548 (n + 1) + (A332548 (n + 1) + 1)).toNat

end

end A332547.P9819995945892675277

/-! ## A332547.P4515295433241829110

`A028310(A332548(n+1)+A332548(n+1)+1)`
-/

namespace A332547.P4515295433241829110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A332548 (n + 1) + (A332548 (n + 1) + 1)).toNat

end

end A332547.P4515295433241829110

/-! ## A332547.P10238430170127422251

`A008619(4*A332548(n+1))`
-/

namespace A332547.P10238430170127422251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A332548 (n + 1)).toNat

end

end A332547.P10238430170127422251

/-! ## A332547.P11056131669877961338

`A080513(4*A332548(n+1))`
-/

namespace A332547.P11056131669877961338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (4 * A332548 (n + 1)).toNat

end

end A332547.P11056131669877961338

/-! ## A332547.P12816486283886000025

`A332548(n+1)+A118759(A332548(n+1)+1)`
-/

namespace A332547.P12816486283886000025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332548 (n + 1) + A118759 (A332548 (n + 1) + 1).toNat

end

end A332547.P12816486283886000025

/-!
# A332548: (A332547(n)-1)/2.

The programs for A332548, there is no canonical definition to state claims against.
-/

/-! ## A332548.P10311448963512355044

`(A332547(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332548.P10311448963512355044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332547 (n + 1) - 1 : ℚ) / 2

end

end A332548.P10311448963512355044

/-! ## A332548.P15923632972466045647

`floor(A332547(n+1)/2)`
-/

namespace A332548.P15923632972466045647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332547 (n + 1) : ℚ) / 2⌋

end

end A332548.P15923632972466045647

/-! ## A332548.P13247581958206692207

`A004524(A332547(n+1))`
-/

namespace A332548.P13247581958206692207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A332547 (n + 1)).toNat

end

end A332548.P13247581958206692207

/-! ## A332548.P334873111347374840

`A001281(A332547(n+1)-1)`
-/

namespace A332548.P334873111347374840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A332547 (n + 1) - 1).toNat

end

end A332548.P334873111347374840

/-! ## A332548.P18205843709086739994

`A004525(A332547(n+1)-1)`
-/

namespace A332548.P18205843709086739994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A332547 (n + 1) - 1).toNat

end

end A332548.P18205843709086739994

/-! ## A332548.P11656448340643894018

`A004526(A332547(n+1)-1)`
-/

namespace A332548.P11656448340643894018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A332547 (n + 1) - 1).toNat

end

end A332548.P11656448340643894018

/-! ## A332548.P1250458514082589219

`A026741(A332547(n+1)-1)`
-/

namespace A332548.P1250458514082589219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A332547 (n + 1) - 1).toNat

end

end A332548.P1250458514082589219

/-! ## A332548.P13057318066062444101

`A004526(or(1, A332547(n+1)))`
-/

namespace A332548.P13057318066062444101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A332547 (n + 1))).toNat

end

end A332548.P13057318066062444101

/-! ## A332548.P3864386132264826226

`A004525(xor(1, A332547(n+1)))`
-/

namespace A332548.P3864386132264826226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor 1 (A332547 (n + 1))).toNat

end

end A332548.P3864386132264826226

/-! ## A332548.P14804530177557040812

`A026741(xor(1, A332547(n+1)))`
-/

namespace A332548.P14804530177557040812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.xor 1 (A332547 (n + 1))).toNat

end

end A332548.P14804530177557040812

/-! ## A332548.P4075579617674802796

`A332547(n+1)%A004525(A332547(n+1)+1)`
-/

namespace A332548.P4075579617674802796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332547 (n + 1)) (A004525 (A332547 (n + 1) + 1).toNat)

end

end A332548.P4075579617674802796

/-! ## A332548.P12373213940176869150

`A002265(2*A332547(n+1))`
-/

namespace A332548.P12373213940176869150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A332547 (n + 1)).toNat

end

end A332548.P12373213940176869150

/-! ## A332548.P6698464389147117204

`A002265(A332547(n+1)+A332547(n+1)+1)`
-/

namespace A332548.P6698464389147117204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A332547 (n + 1) + (A332547 (n + 1) + 1)).toNat

end

end A332548.P6698464389147117204

/-! ## A332548.P15231868277629432604

`A008615(3*A332547(n+1))`
-/

namespace A332548.P15231868277629432604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A332547 (n + 1)).toNat

end

end A332548.P15231868277629432604

/-!
# A332549: Numbers k such that A332547(k) = 3.

The programs for A332549, there is no canonical definition to state claims against.
-/

/-! ## A332549.P4132599393753935700

`eq[1, A332548(n+1)]+1`
-/

namespace A332549.P4132599393753935700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332549.P4132599393753935700

/-! ## A332549.P16952728561917735885

`eq[1, A332548(A028310(n))]`
-/

namespace A332549.P16952728561917735885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332548 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332549.P16952728561917735885

/-! ## A332549.P13523944062510875941

`A020725(eq[1, A332548(n+1)])`
-/

namespace A332549.P13523944062510875941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332549.P13523944062510875941

/-! ## A332549.P16737406537715947864

`A020725(eq[3, A332547(n+1)])`
-/

namespace A332549.P16737406537715947864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332549.P16737406537715947864

/-! ## A332549.P9974999183614277258

`eq[A129574(n+1), A173259(n+1)]`
-/

namespace A332549.P9974999183614277258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332549.P9974999183614277258

/-!
# A332550: The 10-block imbalance of n (see Comments for definition).

The programs for A332550, there is no canonical definition to state claims against.
-/

/-! ## A332550.P11899373129956009522

`A094819(A139337(n)+3)`
-/

namespace A332550.P11899373129956009522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094819 (A139337 n + 3).toNat

end

end A332550.P11899373129956009522

/-! ## A332550.P10762414228391437079

`A089877(A123895(n))+8`
-/

namespace A332550.P10762414228391437079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089877 (A123895 n).toNat + 8

end

end A332550.P10762414228391437079

/-! ## A332550.P7442143686300986394

`A353855(or(8, A139337(n)))`
-/

namespace A332550.P7442143686300986394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353855 (Int.lor 8 (A139337 n)).toNat

end

end A332550.P7442143686300986394

/-! ## A332550.P10407136504737162741

`A004092((A139337(n)+5)²)`
-/

namespace A332550.P10407136504737162741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 ((A139337 n + 5) ^ 2).toNat

end

end A332550.P10407136504737162741

/-! ## A332550.P5854992098373906153

`A055642(n)*A118739(A213217(n)²)`
-/

namespace A332550.P5854992098373906153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A118739 (A213217 n ^ 2).toNat

end

end A332550.P5854992098373906153

/-!
# A332551: a(0)=0; thereafter a(n+1) = a(n) + A332550(a(n)).

The programs for A332551, there is no canonical definition to state claims against.
-/

/-! ## A332551.P14782480629862536140

`∑[A332550(2*(n+2))%A275508(3*n+1)]`
-/

namespace A332551.P14782480629862536140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332550 (2 * (n + 2))) (A275508 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332551.P14782480629862536140

/-!
# A332552: a(n) = A082184(n) - A082183(n).

The programs for A332552, there is no canonical definition to state claims against.
-/

/-! ## A332552.P2600440908652849022

`A082184(n+2)-A082183(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332552.P2600440908652849022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082184 (n + 2) - A082183 (n + 2)

end

end A332552.P2600440908652849022

/-! ## A332552.P14876098859896860858

`(n+2)*(n+3)/A332543(n+3)`
-/

namespace A332552.P14876098859896860858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 3 : ℚ) / (A332543 (n + 3) : ℚ))

end

end A332552.P14876098859896860858

/-! ## A332552.P4329891318100382172

`A002378(n+2)/A332543(n+3)`
-/

namespace A332552.P4329891318100382172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 2) : ℚ) / (A332543 (n + 3) : ℚ)

end

end A332552.P4329891318100382172

/-! ## A332552.P150563067729991122

`A023443(A332543(n+3)-2*A082183(n+2))`
-/

namespace A332552.P150563067729991122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A332543 (n + 3) - 2 * A082183 (n + 2)).toNat

end

end A332552.P150563067729991122

/-! ## A332552.P7448388339170774388

`A082184(n+2)-A332544(n+3)/A332543(n+3)`
-/

namespace A332552.P7448388339170774388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082184 (n + 2) : ℚ) - (A332544 (n + 3) : ℚ) / (A332543 (n + 3) : ℚ)

end

end A332552.P7448388339170774388

/-! ## A332552.P4485937825375390526

`A082184(n+2)+-A082183(n+2)%A332543(n+3)`
-/

namespace A332552.P4485937825375390526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082184 (n + 2) + Int.tmod (-A082183 (n + 2)) (A332543 (n + 3))

end

end A332552.P4485937825375390526

/-! ## A332552.P985067532982336975

`A023443(A332543(n+3)-A082183(n+2)-A082183(n+2))`
-/

namespace A332552.P985067532982336975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A332543 (n + 3) - A082183 (n + 2) - A082183 (n + 2)).toNat

end

end A332552.P985067532982336975

/-! ## A332552.P11369974902752097357

`2-A332553(n+2)+n`
-/

namespace A332552.P11369974902752097357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A332553 (n + 2) + (n : ℤ)

end

end A332552.P11369974902752097357

/-! ## A332552.P8194078683218151469

`A005408(A082184(n+2))-A332543(n+3)`
-/

namespace A332552.P8194078683218151469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A082184 (n + 2)).toNat - A332543 (n + 3)

end

end A332552.P8194078683218151469

/-! ## A332552.P17066771226890898428

`A332543(n+3)-A005408(A082183(n+2))`
-/

namespace A332552.P17066771226890898428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332543 (n + 3) - A005408 (A082183 (n + 2)).toNat

end

end A332552.P17066771226890898428

/-! ## A332552.P15305497935347808067

`A004736(A332553(n+2)+∑[n])`
-/

namespace A332552.P15305497935347808067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A332553 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A332552.P15305497935347808067

/-! ## A332552.P5905836887696961419

`A233583(A332543(n+3)-A082183(n+2))-A082183(n+2)`
-/

namespace A332552.P5905836887696961419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A332543 (n + 3) - A082183 (n + 2)).toNat - A082183 (n + 2)

end

end A332552.P5905836887696961419

/-!
# A332553: a(n) = n + A082183(n) - A082184(n).

The programs for A332553, there is no canonical definition to state claims against.
-/

/-! ## A332553.P8060634432467607653

`n+2+A082183(n+2)-A082184(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332553.P8060634432467607653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A082183 (n + 2) - A082184 (n + 2)

end

end A332553.P8060634432467607653

/-! ## A332553.P8488400080706575340

`2-A332552(n+2)+n`
-/

namespace A332553.P8488400080706575340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A332552 (n + 2) + (n : ℤ)

end

end A332553.P8488400080706575340

/-! ## A332553.P11220623729397350407

`n+2-(n+2)*(n+3)/A332543(n+3)`
-/

namespace A332553.P11220623729397350407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - (n + 2 : ℚ) * ((n + 3 : ℚ) / (A332543 (n + 3) : ℚ))

end

end A332553.P11220623729397350407

/-! ## A332553.P1658316787190609002

`n-A023444(A332552(n+2))`
-/

namespace A332553.P1658316787190609002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023444 (A332552 (n + 2)).toNat

end

end A332553.P1658316787190609002

/-! ## A332553.P7590004657236495923

`A082183(n+2)-(A379697(n+3)+1)`
-/

namespace A332553.P7590004657236495923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082183 (n + 2) - (A379697 (n + 3) + 1)

end

end A332553.P7590004657236495923

/-! ## A332553.P8480128189148369119

`(A332543(n+3)+n+1)%A082184(n+2)`
-/

namespace A332553.P8480128189148369119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332543 (n + 3) + (n + 1 : ℤ)) (A082184 (n + 2))

end

end A332553.P8480128189148369119

/-! ## A332553.P8303710401473419990

`A024000(A332552(n+2))+A000027(n+1)`
-/

namespace A332553.P8303710401473419990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A332552 (n + 2)).toNat + A000027 (n + 1)

end

end A332553.P8303710401473419990

/-! ## A332553.P17307189408625026328

`2-(A082184(n+2)-A332544(n+3)/A332543(n+3))+n`
-/

namespace A332553.P17307189408625026328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - ((A082184 (n + 2) : ℚ) - (A332544 (n + 3) : ℚ) / (A332543 (n + 3) : ℚ)) + (n : ℚ)

end

end A332553.P17307189408625026328

/-! ## A332553.P3677552999032907518

`A004273(A082183(n+2))-A332542(n+3)`
-/

namespace A332553.P3677552999032907518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A082183 (n + 2)).toNat - A332542 (n + 3)

end

end A332553.P3677552999032907518

/-! ## A332553.P3931856351382383581

`A004736(A332552(n+2)+∑[n])`
-/

namespace A332553.P3931856351382383581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A332552 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A332553.P3931856351382383581

/-!
# A332555: Numbers that are not supertotients.

The programs for A332555, the canonical program `A332555.P8219627411237860706` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332555 has offset 1).

The definition of A332555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332555.P8219627411237860706

`eq[floor(1/(n+1)), char[A332556(n+1)]]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A332555

/-- `eq[floor(1/(n+1)), char[A332556(n+1)]]` -/
def P8219627411237860706.Spec : Prop :=
  ∀ n, (P8219627411237860706.a n : ℤ) = A332555 (n + 1)

theorem P8219627411237860706.correct : P8219627411237860706.Spec := by
  intro n
  simp only [A332555, Nat.add_sub_cancel]

end A332555

/-! ## A332555.P14505855362998213295

`∩[A097987(n+1), A272477(n+1)]`
-/

namespace A332555.P14505855362998213295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332555.P14505855362998213295

namespace A332555

/-- `∩[A097987(n+1), A272477(n+1)]` -/
def P14505855362998213295.Spec : Prop :=
  ∀ n, (P14505855362998213295.a n : ℤ) = A332555 (n + 1)

end A332555

/-! ## A332555.P15012996421644888035

`∩[A097987(n+1), A317589(n+1)]`
-/

namespace A332555.P15012996421644888035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332555.P15012996421644888035

namespace A332555

/-- `∩[A097987(n+1), A317589(n+1)]` -/
def P15012996421644888035.Spec : Prop :=
  ∀ n, (P15012996421644888035.a n : ℤ) = A332555 (n + 1)

end A332555

/-!
# A332556: Supertotient numbers: numbers k such that the set of numbers less than k and relatively prime to k can be partitioned into two disjoint subsets of equal sum.

The programs for A332556, the canonical program `A332556.P9044296750150904000` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332556 has offset 1).

The definition of A332556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332556.P9044296750150904000

`∪[A100319(n+1), A172019(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A332556

/-- `∪[A100319(n+1), A172019(n+1)]` -/
def P9044296750150904000.Spec : Prop :=
  ∀ n, (P9044296750150904000.a n : ℤ) = A332556 (n + 1)

theorem P9044296750150904000.correct : P9044296750150904000.Spec := by
  intro n
  simp only [A332556, Nat.add_sub_cancel]

end A332556

/-! ## A332556.P17220897680692222567

`∪[A172019(n+1), A266214(n+1)]`
-/

namespace A332556.P17220897680692222567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332556.P17220897680692222567

namespace A332556

/-- `∪[A172019(n+1), A266214(n+1)]` -/
def P17220897680692222567.Spec : Prop :=
  ∀ n, (P17220897680692222567.a n : ℤ) = A332556 (n + 1)

end A332556

/-! ## A332556.P14432131559357743281

`∪[A172019(n+1), A398389(n+1)]`
-/

namespace A332556.P14432131559357743281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332556.P14432131559357743281

namespace A332556

/-- `∪[A172019(n+1), A398389(n+1)]` -/
def P14432131559357743281.Spec : Prop :=
  ∀ n, (P14432131559357743281.a n : ℤ) = A332556 (n + 1)

end A332556

/-! ## A332556.P6758328902161760266

`eq[char[A332555(n+1)], A000007(n)]`
-/

namespace A332556.P6758328902161760266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332556.P6758328902161760266

namespace A332556

/-- `eq[char[A332555(n+1)], A000007(n)]` -/
def P6758328902161760266.Spec : Prop :=
  ∀ n, (P6758328902161760266.a n : ℤ) = A332556 (n + 1)

end A332556

/-! ## A332556.P5664684739183477074

`eq[char[A332555(n+1)], A000038(n)]`
-/

namespace A332556.P5664684739183477074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332556.P5664684739183477074

namespace A332556

/-- `eq[char[A332555(n+1)], A000038(n)]` -/
def P5664684739183477074.Spec : Prop :=
  ∀ n, (P5664684739183477074.a n : ℤ) = A332556 (n + 1)

end A332556

/-! ## A332556.P2245276260721344439

`eq[char[A332555(n+1)], A169585(n)]`
-/

namespace A332556.P2245276260721344439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332556.P2245276260721344439

namespace A332556

/-- `eq[char[A332555(n+1)], A169585(n)]` -/
def P2245276260721344439.Spec : Prop :=
  ∀ n, (P2245276260721344439.a n : ℤ) = A332556 (n + 1)

end A332556

/-! ## A332556.P5141062911721011674

`eq[char[A332555(n+1)], A154269(2*n+1)]`
-/

namespace A332556.P5141062911721011674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332556.P5141062911721011674

namespace A332556

/-- `eq[char[A332555(n+1)], A154269(2*n+1)]` -/
def P5141062911721011674.Spec : Prop :=
  ∀ n, (P5141062911721011674.a n : ℤ) = A332556 (n + 1)

end A332556

/-! ## A332556.P11375342662789474111

`eq[char[A332555(n+1)], A266437(2*n)]`
-/

namespace A332556.P11375342662789474111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332556.P11375342662789474111

namespace A332556

/-- `eq[char[A332555(n+1)], A266437(2*n)]` -/
def P11375342662789474111.Spec : Prop :=
  ∀ n, (P11375342662789474111.a n : ℤ) = A332556 (n + 1)

end A332556

/-! ## A332556.P4217962422437914696

`eq[A278243(2*n+1)%3, char[A332555(n+1)]]`
-/

namespace A332556.P4217962422437914696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278243 (2 * n + 1)) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A332556.P4217962422437914696

namespace A332556

/-- `eq[A278243(2*n+1)%3, char[A332555(n+1)]]` -/
def P4217962422437914696.Spec : Prop :=
  ∀ n, (P4217962422437914696.a n : ℤ) = A332556 (n + 1)

end A332556

/-! ## A332556.P17345634387007395684

`∪[A136012(n+1), A172019(n+1)]`
-/

namespace A332556.P17345634387007395684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332556.P17345634387007395684

namespace A332556

/-- `∪[A136012(n+1), A172019(n+1)]` -/
def P17345634387007395684.Spec : Prop :=
  ∀ n, (P17345634387007395684.a n : ℤ) = A332556 (n + 1)

end A332556

/-!
# A332558: a(n) is the smallest k such that n*(n+1)*(n+2)*...*(n+k) is divisible by n+k+1.

The programs for A332558, there is no canonical definition to state claims against.
-/

/-! ## A332558.P3672408295406172681

`A061836(n+1)-1`
-/

namespace A332558.P3672408295406172681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 (n + 1) - 1

end

end A332558.P3672408295406172681

/-! ## A332558.P5743294780640813727

`A332559(n+1)-(n+2)`
-/

namespace A332558.P5743294780640813727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332559 (n + 1) - (n + 2 : ℤ)

end

end A332558.P5743294780640813727

/-! ## A332558.P8301781360090026373

`∑[3*Δ[A061836(n)/3]]`
-/

namespace A332558.P8301781360090026373
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061836 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332558.P8301781360090026373

/-! ## A332558.P4660589352090091263

`∑[Δ[A061836(n)]%A061836(n+1)]`
-/

namespace A332558.P4660589352090091263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A061836 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332558.P4660589352090091263

/-! ## A332558.P3225186448777322980

`Δ[∑[A061836(n)]-n]`
-/

namespace A332558.P3225186448777322980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332558.P3225186448777322980

/-! ## A332558.P4873014063118300397

`A332560(n+1)/A332561(n+1)-(n+2)`
-/

namespace A332558.P4873014063118300397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332560 (n + 1) : ℚ) / (A332561 (n + 1) : ℚ) - (n + 2 : ℚ)

end

end A332558.P4873014063118300397

/-!
# A332559: a(n) = n + A332558(n) + 1.

The programs for A332559, there is no canonical definition to state claims against.
-/

/-! ## A332559.P18350612850385010233

`n+1+A332558(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332559.P18350612850385010233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A332558 (n + 1) + 1

end

end A332559.P18350612850385010233

/-! ## A332559.P16956579790988310243

`A061836(n+1)+1+n`
-/

namespace A332559.P16956579790988310243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 (n + 1) + 1 + (n : ℤ)

end

end A332559.P16956579790988310243

/-! ## A332559.P8363340884946267067

`A332558(n+1)+2+n`
-/

namespace A332559.P8363340884946267067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332558 (n + 1) + 2 + (n : ℤ)

end

end A332559.P8363340884946267067

/-! ## A332559.P14843447891800901235

`A009056(A332558(n+1))+n`
-/

namespace A332559.P14843447891800901235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A332558 (n + 1)).toNat + (n : ℤ)

end

end A332559.P14843447891800901235

/-! ## A332559.P14572082350667559756

`Δ[A000217(n)+∑[A061836(n)]]`
-/

namespace A332559.P14572082350667559756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332559.P14572082350667559756

/-! ## A332559.P520643234152626472

`A332560(n+1)/A332561(n+1)`
-/

namespace A332559.P520643234152626472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332560 (n + 1) : ℚ) / (A332561 (n + 1) : ℚ)

end

end A332559.P520643234152626472

/-! ## A332559.P12873427722462514862

`A332560(n+1)%(A332561(n+1)-A007318(A000217(n)))`
-/

namespace A332559.P12873427722462514862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332560 (n + 1)) (A332561 (n + 1) - A007318 (A000217 n).toNat)

end

end A332559.P12873427722462514862

/-!
# A332560: a(n) = (n + A332558(n))!/(n-1)!.

The programs for A332560, there is no canonical definition to state claims against.
-/

/-! ## A332560.P6179747855523143867

`(n+1+A332558(n+1))!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332560.P6179747855523143867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1 : ℤ) + A332558 (n + 1)).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A332560.P6179747855523143867

/-! ## A332560.P5928484021781957576

`A332559(n+1)*A332561(n+1)`
-/

namespace A332560.P5928484021781957576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332559 (n + 1) * A332561 (n + 1)

end

end A332560.P5928484021781957576

/-! ## A332560.P1863090805052006416

`(A061836(n+1)+n+1)*A332561(n+1)`
-/

namespace A332560.P1863090805052006416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061836 (n + 1) + (n + 1 : ℤ)) * A332561 (n + 1)

end

end A332560.P1863090805052006416

/-! ## A332560.P7619604566425378028

`(A332558(n+1)+n+2)*A332561(n+1)`
-/

namespace A332560.P7619604566425378028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332558 (n + 1) + (n + 2 : ℤ)) * A332561 (n + 1)

end

end A332560.P7619604566425378028

/-! ## A332560.P15086782459963721673

`A009056(A332558(n+1)+n)*A332561(n+1)`
-/

namespace A332560.P15086782459963721673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A332558 (n + 1) + (n : ℤ)).toNat * A332561 (n + 1)

end

end A332560.P15086782459963721673

/-!
# A332561: a(n) = A332560(n)/A332559(n).

The programs for A332561, there is no canonical definition to state claims against.
-/

/-! ## A332561.P6717969301043180760

`A332560(n+1)/A332559(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332561.P6717969301043180760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332560 (n + 1) : ℚ) / (A332559 (n + 1) : ℚ)

end

end A332561.P6717969301043180760

/-! ## A332561.P11429387924336051431

`A332560(n+1)/(A061836(n+1)+1+n)`
-/

namespace A332561.P11429387924336051431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332560 (n + 1) : ℚ) / (A061836 (n + 1) + 1 + (n : ℤ) : ℚ)

end

end A332561.P11429387924336051431

/-! ## A332561.P6430526952947397306

`A332560(n+1)/(A332558(n+1)+n+2)`
-/

namespace A332561.P6430526952947397306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332560 (n + 1) : ℚ) / (A332558 (n + 1) + (n + 2 : ℤ) : ℚ)

end

end A332561.P6430526952947397306

/-! ## A332561.P16300688232121129349

`A332560(n+1)/A009056(A332558(n+1)+n)`
-/

namespace A332561.P16300688232121129349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332560 (n + 1) : ℚ) / (A009056 (A332558 (n + 1) + (n : ℤ)).toNat : ℚ)

end

end A332561.P16300688232121129349

/-!
# A332563: a(n) = minimal positive k such that the concatenation of the binary expansions of n,n+1,...,n+k is divisible by n+k+1, or -1 if no such k exists.

The programs for A332563, there is no canonical definition to state claims against.
-/

/-! ## A332563.P2442976736479753268

`A332586(n+1)-(n+2)`
-/

namespace A332563.P2442976736479753268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332586 (n + 1) - (n + 2 : ℤ)

end

end A332563.P2442976736479753268

/-! ## A332563.P7183704056195666214

`A001478(n+2)+A332586(n+1)`
-/

namespace A332563.P7183704056195666214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 2) + A332586 (n + 1)

end

end A332563.P7183704056195666214

/-! ## A332563.P12414375874156247714

`A065164(A332586(n+1))-n`
-/

namespace A332563.P12414375874156247714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A332586 (n + 1)).toNat - (n : ℤ)

end

end A332563.P12414375874156247714

/-! ## A332563.P8714946713608792370

`A289207(A332586(n+1)-n)`
-/

namespace A332563.P8714946713608792370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A332586 (n + 1) - (n : ℤ)).toNat

end

end A332563.P8714946713608792370

/-!
# A332566: a(n) is the permanent of an n X n symmetric Toeplitz matrix M(n) whose first row consists of a single zero followed by successive positive integers repeated (A004526).

The programs for A332566, there is no canonical definition to state claims against.
-/

/-! ## A332566.P18320068468175569209

`∏{e}[11^n, A085510(#)]`
-/

namespace A332566.P18320068468175569209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A085510 (Nat.factorization (f1 n) p)

end

end A332566.P18320068468175569209

/-! ## A332566.P11689297776812991248

`A319056(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=16`
-/

namespace A332566.P11689297776812991248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2, 16] fun n a =>
  A319056 (a (n - 1)).toNat

end

end A332566.P11689297776812991248

/-!
# A332567: T(n,k) is the k-th partition of n in graded reverse lexicographic ordering (A080577) encoded as concatenation of parts which are represented in (zeroless) bijective base-9 numeration (A052382) and separated by zeros; triangle T(n,k), n >= 0, 1 <= k <= A000041(n), read by rows.

The programs for A332567, there is no canonical definition to state claims against.
-/

/-! ## A332567.P5422928909434242202

`∑{e}[A270923(n), A178501(#)]`
-/

namespace A332567.P5422928909434242202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A178501 (Nat.factorization (f1 n).natAbs p)

end

end A332567.P5422928909434242202

/-!
# A332569: a(n) = Sum_{k=1..n} floor(n/k) * ceiling(n/k).

The programs for A332569, the canonical program `A332569.P15421051147562792742` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332569 has offset 1).

The definition of A332569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332569.P15421051147562792742

`∑[∑{d}[n+1, #]+∑{d}[n, #]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332569

/-- `∑[∑{d}[n+1, #]+∑{d}[n, #]]` -/
def P15421051147562792742.Spec : Prop :=
  ∀ n, (P15421051147562792742.a n : ℤ) = A332569 (n + 1)

theorem P15421051147562792742.correct : P15421051147562792742.Spec := by
  intro n
  simp only [A332569, Nat.add_sub_cancel]

end A332569

/-! ## A332569.P13958669611057458734

`a(n-1)+∑{d}[n+1, #]+∑{d}[n, #]` with `a(0)=1`
-/

namespace A332569.P13958669611057458734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ d ∈ Nat.divisors (f1 n), d + ∑ d ∈ Nat.divisors (f2 n), d)

end

end A332569.P13958669611057458734

namespace A332569

/-- `a(n-1)+∑{d}[n+1, #]+∑{d}[n, #]` -/
def P13958669611057458734.Spec : Prop :=
  ∀ n, (P13958669611057458734.a n : ℤ) = A332569 (n + 1)

end A332569

/-! ## A332569.P12207261604531519880

`A092403(n)+a(n-1)` with `a(0)=1`
-/

namespace A332569.P12207261604531519880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092403 n + a (n - 1)

end

end A332569.P12207261604531519880

namespace A332569

/-- `A092403(n)+a(n-1)` -/
def P12207261604531519880.Spec : Prop :=
  ∀ n, P12207261604531519880.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P16313921312043014688

`∑[A000203(n+1)+∑{d}[n, #]]`
-/

namespace A332569.P16313921312043014688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332569.P16313921312043014688

namespace A332569

/-- `∑[A000203(n+1)+∑{d}[n, #]]` -/
def P16313921312043014688.Spec : Prop :=
  ∀ n, P16313921312043014688.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P12405019463542332391

`A024916(n+1)+∑[∑{d}[n, #]]`
-/

namespace A332569.P12405019463542332391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A332569.P12405019463542332391

namespace A332569

/-- `A024916(n+1)+∑[∑{d}[n, #]]` -/
def P12405019463542332391.Spec : Prop :=
  ∀ n, P12405019463542332391.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P2462276057135321648

`A222548(n+1)+A098798(n+1)`
-/

namespace A332569.P2462276057135321648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222548 (n + 1) + A098798 (n + 1)

end

end A332569.P2462276057135321648

namespace A332569

/-- `A222548(n+1)+A098798(n+1)` -/
def P2462276057135321648.Spec : Prop :=
  ∀ n, P2462276057135321648.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P8314162507502443444

`A332490(n+1)+A153485(n+1)`
-/

namespace A332569.P8314162507502443444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332490 (n + 1) + A153485 (n + 1)

end

end A332569.P8314162507502443444

namespace A332569

/-- `A332490(n+1)+A153485(n+1)` -/
def P8314162507502443444.Spec : Prop :=
  ∀ n, P8314162507502443444.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P4876977566274219848

`A294016(n+1)+A235799(n+1)`
-/

namespace A332569.P4876977566274219848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294016 (n + 1) + A235799 (n + 1)

end

end A332569.P4876977566274219848

namespace A332569

/-- `A294016(n+1)+A235799(n+1)` -/
def P4876977566274219848.Spec : Prop :=
  ∀ n, P4876977566274219848.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P15787247753876464798

`A024916(n+1)+A160664(n)-1`
-/

namespace A332569.P15787247753876464798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A160664 n - 1)

end

end A332569.P15787247753876464798

namespace A332569

/-- `A024916(n+1)+A160664(n)-1` -/
def P15787247753876464798.Spec : Prop :=
  ∀ n, P15787247753876464798.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P5607423967623301178

`A327329(n+1)-A000203(n+1)`
-/

namespace A332569.P5607423967623301178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) - A000203 (n + 1)

end

end A332569.P5607423967623301178

namespace A332569

/-- `A327329(n+1)-A000203(n+1)` -/
def P5607423967623301178.Spec : Prop :=
  ∀ n, P5607423967623301178.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P5340097055425648323

`∑[A074400(n+1)]-A000203(n+1)`
-/

namespace A332569.P5340097055425648323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (n + 1)

end

end A332569.P5340097055425648323

namespace A332569

/-- `∑[A074400(n+1)]-A000203(n+1)` -/
def P5340097055425648323.Spec : Prop :=
  ∀ n, P5340097055425648323.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P5210081694912062130

`2*A024916(n+1)-A000203(n+1)`
-/

namespace A332569.P5210081694912062130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024916 (n + 1) - A000203 (n + 1)

end

end A332569.P5210081694912062130

namespace A332569

/-- `2*A024916(n+1)-A000203(n+1)` -/
def P5210081694912062130.Spec : Prop :=
  ∀ n, P5210081694912062130.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P12580967057749213292

`A327329(n+1)-A245092(2*n+1)`
-/

namespace A332569.P12580967057749213292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) - A245092 (2 * n + 1)

end

end A332569.P12580967057749213292

namespace A332569

/-- `A327329(n+1)-A245092(2*n+1)` -/
def P12580967057749213292.Spec : Prop :=
  ∀ n, P12580967057749213292.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P4386727912055972392

`(n+1)²+A244048(n+1)+A153485(n+1)`
-/

namespace A332569.P4386727912055972392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A244048 (n + 1) + A153485 (n + 1))

end

end A332569.P4386727912055972392

namespace A332569

/-- `(n+1)²+A244048(n+1)+A153485(n+1)` -/
def P4386727912055972392.Spec : Prop :=
  ∀ n, P4386727912055972392.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P8958299814797690268

`(n+1)²+A024916(n+1)-A123327(n+1)`
-/

namespace A332569.P8958299814797690268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A024916 (n + 1) - A123327 (n + 1))

end

end A332569.P8958299814797690268

namespace A332569

/-- `(n+1)²+A024916(n+1)-A123327(n+1)` -/
def P8958299814797690268.Spec : Prop :=
  ∀ n, P8958299814797690268.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P11587441821534773786

`A024816(n+1)+A294016(n+1)+A000217(n)`
-/

namespace A332569.P11587441821534773786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + (A294016 (n + 1) + A000217 n)

end

end A332569.P11587441821534773786

namespace A332569

/-- `A024816(n+1)+A294016(n+1)+A000217(n)` -/
def P11587441821534773786.Spec : Prop :=
  ∀ n, P11587441821534773786.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P2882386477597068290

`A024816(n+1)+A153485(n+1)+A024916(n+1)`
-/

namespace A332569.P2882386477597068290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + (A153485 (n + 1) + A024916 (n + 1))

end

end A332569.P2882386477597068290

namespace A332569

/-- `A024816(n+1)+A153485(n+1)+A024916(n+1)` -/
def P2882386477597068290.Spec : Prop :=
  ∀ n, P2882386477597068290.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P15693214086173807066

`A000203(n+1)+A330857(n+1)+A330856(n+1)`
-/

namespace A332569.P15693214086173807066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A330857 (n + 1) + A330856 (n + 1))

end

end A332569.P15693214086173807066

namespace A332569

/-- `A000203(n+1)+A330857(n+1)+A330856(n+1)` -/
def P15693214086173807066.Spec : Prop :=
  ∀ n, P15693214086173807066.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P1146149727680290197

`A006218(n+1)+A222548(n+1)-A000203(n+1)`
-/

namespace A332569.P1146149727680290197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A222548 (n + 1) - A000203 (n + 1))

end

end A332569.P1146149727680290197

namespace A332569

/-- `A006218(n+1)+A222548(n+1)-A000203(n+1)` -/
def P1146149727680290197.Spec : Prop :=
  ∀ n, P1146149727680290197.a n = A332569 (n + 1)

end A332569

/-! ## A332569.P3551157207429841722

`A024916(n+1)+A235799(n+1)-A004125(n+1)`
-/

namespace A332569.P3551157207429841722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A235799 (n + 1) - A004125 (n + 1))

end

end A332569.P3551157207429841722

namespace A332569

/-- `A024916(n+1)+A235799(n+1)-A004125(n+1)` -/
def P3551157207429841722.Spec : Prop :=
  ∀ n, P3551157207429841722.a n = A332569 (n + 1)

end A332569

/-!
# A332570: Numbers that are norm-abundant in Gaussian integers.

The programs for A332570, there is no canonical definition to state claims against.
-/

/-! ## A332570.P16608276199587193384

`comp[A332572(n+1)-1]+1`
-/

namespace A332570.P16608276199587193384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332572 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A332570.P16608276199587193384

/-! ## A332570.P6858708029074743616

`eq[char[A332572(n+1)], A000007(n)]`
-/

namespace A332570.P6858708029074743616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332570.P6858708029074743616

/-! ## A332570.P6694906005511359859

`eq[char[A332572(n+1)], A000038(n)]`
-/

namespace A332570.P6694906005511359859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332570.P6694906005511359859

/-! ## A332570.P1863695501852795955

`eq[char[A332572(n+1)], A130706(n)]`
-/

namespace A332570.P1863695501852795955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332570.P1863695501852795955

/-! ## A332570.P6649943723886892364

`eq[char[A332572(n+1)], A008611((n+2)%(n+1))]`
-/

namespace A332570.P6649943723886892364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((n + 2) % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332570.P6649943723886892364

/-!
# A332571: Numbers that are primitive norm-abundant in Gaussian integers.

The programs for A332571, there is no canonical definition to state claims against.
-/

/-! ## A332571.P3873868765762934993

`A130821(∑[A037100(n+2)+4])`
-/

namespace A332571.P3873868765762934993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037100 (n + 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130821 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332571.P3873868765762934993

/-! ## A332571.P3328970870642155872

`∑[A204714(a(n-1)+2*A000010(n))]` with `a(0)=5`
-/

namespace A332571.P3328970870642155872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A204714 (f1 (n - 1) + 2 * A000010 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332571.P3328970870642155872

/-!
# A332572: Numbers that are norm-deficient in Gaussian integers.

The programs for A332572, there is no canonical definition to state claims against.
-/

/-! ## A332572.P12166083403402715325

`eq[char[A332570(n+1)], A000007(n)]`
-/

namespace A332572.P12166083403402715325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332572.P12166083403402715325

/-! ## A332572.P4018724113423151875

`eq[char[A332570(n+1)], A000038(n)]`
-/

namespace A332572.P4018724113423151875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332572.P4018724113423151875

/-! ## A332572.P8243190805275997348

`eq[char[A332570(n+1)], A331928(n)]`
-/

namespace A332572.P8243190805275997348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332572.P8243190805275997348

/-! ## A332572.P9220326436361694299

`eq[A000079(n)%2, char[A332570(n+1)]]`
-/

namespace A332572.P9220326436361694299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332570 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A332572.P9220326436361694299

/-! ## A332572.P14670874036416085236

`eq[char[A332570(n+1)], A151878(n)]`
-/

namespace A332572.P14670874036416085236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332572.P14670874036416085236

/-!
# A332573: Numbers k such that k and k + 1 are both norm-deficient in Gaussian integers (A332572).

The programs for A332573, there is no canonical definition to state claims against.
-/

/-! ## A332573.P7173165260495133504

`∩[A332572(n+1)-1, A332572(n+1)]`
-/

namespace A332573.P7173165260495133504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332572 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332573.P7173165260495133504

/-! ## A332573.P3204815364254144786

`∩[A332572(n+3), A023443(A332572(n+3))]`
-/

namespace A332573.P3204815364254144786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332572 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A332572 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332573.P3204815364254144786

/-!
# A332574: Numbers k such that k, k + 1 and k + 2 are all norm-deficient in Gaussian integers (A332572).

The programs for A332574, there is no canonical definition to state claims against.
-/

/-! ## A332574.P15121891231549486044

`∩[A332573(n+1)-1, A332573(n+1)]`
-/

namespace A332574.P15121891231549486044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332573 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332574.P15121891231549486044

/-!
# A332575: Least start of a run of exactly n consecutive numbers that are norm-abundant in Gaussian integers (A332570).

The programs for A332575, there is no canonical definition to state claims against.
-/

/-! ## A332575.P363000462504969175

`A194976(A000142(n+2))*A194980(2*n+3)`
-/

namespace A332575.P363000462504969175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (A000142 (n + 2)).toNat * A194980 (2 * n + 3)

end

end A332575.P363000462504969175

/-!
# A332576: Number of integer partitions of n that are all 1's or whose run-lengths cover an initial interval of positive integers.

The programs for A332576, there is no canonical definition to state claims against.
-/

/-! ## A332576.P12634886907916961097

`floor(A317081(n)+atan(n))`
-/

namespace A332576.P12634886907916961097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317081 n : ℝ) + Real.arctan (n : ℝ)⌋

end

end A332576.P12634886907916961097

/-! ## A332576.P347555386160503246

`A317081(n)+A157928(n)`
-/

namespace A332576.P347555386160503246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 n + A157928 n

end

end A332576.P347555386160503246

/-! ## A332576.P9548429299259445673

`A317081(n)+A274070(n+1)`
-/

namespace A332576.P9548429299259445673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 n + A274070 (n + 1)

end

end A332576.P9548429299259445673

/-! ## A332576.P12525974316967123104

`A317081(n)+A267537(n+2)`
-/

namespace A332576.P12525974316967123104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 n + A267537 (n + 2)

end

end A332576.P12525974316967123104

/-! ## A332576.P8499980707324620773

`A317081(n)+A091247(2*n)`
-/

namespace A332576.P8499980707324620773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 n + A091247 (2 * n)

end

end A332576.P8499980707324620773

/-! ## A332576.P17524299149643322703

`A317081(n)%A000041(n)+1`
-/

namespace A332576.P17524299149643322703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317081 n) (A000041 n) + 1

end

end A332576.P17524299149643322703

/-! ## A332576.P6776095947731880804

`A317081(n)+A057427(n²-n)`
-/

namespace A332576.P6776095947731880804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 n + A057427 (n ^ 2 - n)

end

end A332576.P6776095947731880804

/-! ## A332576.P11190270917765762481

`A317081(n)+1-char[2-A000032(n)]`
-/

namespace A332576.P11190270917765762481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 n + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A332576.P11190270917765762481

/-! ## A332576.P7729004259746020589

`A317081(n)+A001221(A070864(n+1))`
-/

namespace A332576.P7729004259746020589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 n + A001221 (A070864 (n + 1)).toNat

end

end A332576.P7729004259746020589

/-!
# A332577: Number of integer partitions of n covering an initial interval of positive integers with unimodal run-lengths.

The programs for A332577, there is no canonical definition to state claims against.
-/

/-! ## A332577.P12112812296020682429

`A000009(n)-A332579(n)`
-/

namespace A332577.P12112812296020682429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A332579 n

end

end A332577.P12112812296020682429

/-! ## A332577.P16240650796870089788

`abs(A081360(n))-A332579(n)`
-/

namespace A332577.P16240650796870089788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A332579 n

end

end A332577.P16240650796870089788

/-! ## A332577.P8091668310731727041

`A054242(∑[n])-A332579(n)`
-/

namespace A332577.P8091668310731727041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f1 j) - A332579 n

end

end A332577.P8091668310731727041

/-! ## A332577.P13320211466226320718

`∑[A087897(n)]-A332579(n)`
-/

namespace A332577.P13320211466226320718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332579 n

end

end A332577.P13320211466226320718

/-! ## A332577.P17796057454277865218

`A284593(∑[n])-A332579(n)`
-/

namespace A332577.P17796057454277865218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f1 j) - A332579 n

end

end A332577.P17796057454277865218

/-! ## A332577.P15779616521671149941

`A035457(2*n)-A332579(n)`
-/

namespace A332577.P15779616521671149941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A332579 n

end

end A332577.P15779616521671149941

/-! ## A332577.P5515538804712405769

`A194543(A000124(n))-A332579(n)`
-/

namespace A332577.P5515538804712405769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A000124 n).toNat - A332579 n

end

end A332577.P5515538804712405769

/-! ## A332577.P14687807071523988576

`A000041(n)-(A332579(n)+A047967(n))`
-/

namespace A332577.P14687807071523988576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A332579 n + A047967 n)

end

end A332577.P14687807071523988576

/-! ## A332577.P8045243576504208257

`A067659(n)+A067661(n)-A332579(n)`
-/

namespace A332577.P8045243576504208257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + (A067661 n - A332579 n)

end

end A332577.P8045243576504208257

/-! ## A332577.P8231337126905624097

`∑{d}[A081360(n), A000010(#)]-A332579(n)`
-/

namespace A332577.P8231337126905624097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d - A332579 n

end

end A332577.P8231337126905624097

/-!
# A332578: Number of compositions of n whose negation is unimodal.

The programs for A332578, there is no canonical definition to state claims against.
-/

/-! ## A332578.P7618715386180932982

`A011782(n)-A332669(n)`
-/

namespace A332578.P7618715386180932982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A332669 n

end

end A332578.P7618715386180932982

/-! ## A332578.P15973315252884190671

`∑[A034008(n)]-A332669(n)`
-/

namespace A332578.P15973315252884190671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332669 n

end

end A332578.P15973315252884190671

/-! ## A332578.P11009244445910355632

`A001523(n)+A115981(n)-A332669(n)`
-/

namespace A332578.P11009244445910355632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n + (A115981 n - A332669 n)

end

end A332578.P11009244445910355632

/-! ## A332578.P4487069228705280758

`Δ[A056469(n)]-A332669(n)`
-/

namespace A332578.P4487069228705280758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332669 n

end

end A332578.P4487069228705280758

/-! ## A332578.P16297720322349749307

`Δ[A094373(n)]-A332669(n)`
-/

namespace A332578.P16297720322349749307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332669 n

end

end A332578.P16297720322349749307

/-! ## A332578.P11094705364983847459

`Δ[A131577(n)]-A332669(n)`
-/

namespace A332578.P11094705364983847459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332669 n

end

end A332578.P11094705364983847459

/-! ## A332578.P8910928462078922815

`A130321(A001105(n))-A332669(n)`
-/

namespace A332578.P8910928462078922815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A001105 n).toNat - A332669 n

end

end A332578.P8910928462078922815

/-!
# A332579: Number of integer partitions of n covering an initial interval of positive integers with non-unimodal run-lengths.

The programs for A332579, there is no canonical definition to state claims against.
-/

/-! ## A332579.P1967730180633828927

`A000009(n)-A332577(n)`
-/

namespace A332579.P1967730180633828927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A332577 n

end

end A332579.P1967730180633828927

/-! ## A332579.P9453879177596746574

`abs(A081360(n))-A332577(n)`
-/

namespace A332579.P9453879177596746574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A332577 n

end

end A332579.P9453879177596746574

/-! ## A332579.P18067205009878183531

`A054242(∑[n])-A332577(n)`
-/

namespace A332579.P18067205009878183531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f1 j) - A332577 n

end

end A332579.P18067205009878183531

/-! ## A332579.P8403312796932099912

`∑[A087897(n)]-A332577(n)`
-/

namespace A332579.P8403312796932099912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332577 n

end

end A332579.P8403312796932099912

/-! ## A332579.P14732217888722257471

`A284593(∑[n])-A332577(n)`
-/

namespace A332579.P14732217888722257471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f1 j) - A332577 n

end

end A332579.P14732217888722257471

/-! ## A332579.P9012112170139755047

`A111133(n)+1-A332577(n)`
-/

namespace A332579.P9012112170139755047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A332577 n)

end

end A332579.P9012112170139755047

/-! ## A332579.P12535995087210383857

`A035457(2*n)-A332577(n)`
-/

namespace A332579.P12535995087210383857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A332577 n

end

end A332579.P12535995087210383857

/-! ## A332579.P5989211715363071021

`A172033(2*n)-A332577(n)`
-/

namespace A332579.P5989211715363071021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A332577 n

end

end A332579.P5989211715363071021

/-! ## A332579.P6876581001382098172

`A194543(A000124(n))-A332577(n)`
-/

namespace A332579.P6876581001382098172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A000124 n).toNat - A332577 n

end

end A332579.P6876581001382098172

/-! ## A332579.P2257378231906840462

`A000041(n)-(A332577(n)+A047967(n))`
-/

namespace A332579.P2257378231906840462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A332577 n + A047967 n)

end

end A332579.P2257378231906840462

/-!
# A332580: a(n) = minimal positive k such that the concatenation of the decimal digits of n,n+1,...,n+k is divisible by n+k+1, or -1 if no such k exists.

The programs for A332580, there is no canonical definition to state claims against.
-/

/-! ## A332580.P16516187579558964786

`A332584(n+1)-(n+1)`
-/

namespace A332580.P16516187579558964786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332584 (n + 1) - (n + 1 : ℤ)

end

end A332580.P16516187579558964786

/-! ## A332580.P8683465325047772468

`A332584(A110514(2*n))-1-n`
-/

namespace A332580.P8683465325047772468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332584 (A110514 (2 * n)).toNat - 1 - (n : ℤ)

end

end A332580.P8683465325047772468

/-! ## A332580.P11307014354873990952

`abs(A332584(n+1)+A001478(n+1))`
-/

namespace A332580.P11307014354873990952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332584 (n + 1) + A001478 (n + 1)|

end

end A332580.P11307014354873990952

/-! ## A332580.P12324329019989858242

`A000027(A332584(n+1)+A001478(n+1))`
-/

namespace A332580.P12324329019989858242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A332584 (n + 1) + A001478 (n + 1)).toNat

end

end A332580.P12324329019989858242

/-! ## A332580.P9535910112999004894

`A014681(A332584(n+1))-n`
-/

namespace A332580.P9535910112999004894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A332584 (n + 1)).toNat - (n : ℤ)

end

end A332580.P9535910112999004894

/-!
# A332581: a(0)=0, a(1)=1; for n>1, a(n) = max(sum0,sum1) mod n, where sum0 is the sum of all previous even terms, sum1 is the sum of all previous odd terms.

The programs for A332581, there is no canonical definition to state claims against.
-/

/-! ## A332581.P13277659129265296356

`A193330(A014681(A014681(n)*A110653(n+1)))`
-/

namespace A332581.P13277659129265296356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A014681 (A014681 n * A110653 (n + 1)).toNat).toNat

end

end A332581.P13277659129265296356

/-! ## A332581.P16447509776437906550

`A074828(A007662(n))%(n+1)`
-/

namespace A332581.P16447509776437906550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074828 (A007662 n).toNat) (n + 1 : ℤ)

end

end A332581.P16447509776437906550

/-! ## A332581.P3336396136973934140

`A001221(A103128(n+1)*A318280(n+1))`
-/

namespace A332581.P3336396136973934140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103128 (n + 1) * A318280 (n + 1)).toNat

end

end A332581.P3336396136973934140

/-! ## A332581.P347528276040609681

`A001221(lcm(A103128(n+1), A318280(n+1)))`
-/

namespace A332581.P347528276040609681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A103128 (n + 1)) (A318280 (n + 1)))

end

end A332581.P347528276040609681

/-! ## A332581.P6548370686279196225

`A305079(A007862(3*n+5)*A128209(n))`
-/

namespace A332581.P6548370686279196225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A007862 (3 * n + 5) * A128209 n).toNat

end

end A332581.P6548370686279196225

/-!
# A332582: Label the cells of the infinite 2D square lattice with the square spiral (or Ulam spiral), starting with 1 at the center; sequence lists primes that are visible from square 1.

The programs for A332582, there is no canonical definition to state claims against.
-/

/-! ## A332582.P2282000835691267523

`p?[A331400(n+1)]`
-/

namespace A332582.P2282000835691267523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332582.P2282000835691267523

/-! ## A332582.P11295361114333715476

`∩[A000040(n+1), A331400(n+1)]`
-/

namespace A332582.P11295361114333715476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332582.P11295361114333715476

/-! ## A332582.P5638762668621292460

`∩[A008578(n+1), A331400(n+1)]`
-/

namespace A332582.P5638762668621292460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332582.P5638762668621292460

/-! ## A332582.P7549302845056685817

`∩[A106118(n+1), A331400(n+1)]`
-/

namespace A332582.P7549302845056685817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332582.P7549302845056685817

/-! ## A332582.P12548348299559587327

`∩[A158611(n+1), A331400(n+1)]`
-/

namespace A332582.P12548348299559587327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332582.P12548348299559587327

/-! ## A332582.P7028707016395602794

`∩[A182140(n+1), A331400(n+1)]`
-/

namespace A332582.P7028707016395602794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332582.P7028707016395602794

/-! ## A332582.P13165712632033732006

`∩[A182986(n+1), A331400(n+1)]`
-/

namespace A332582.P13165712632033732006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332582.P13165712632033732006

/-! ## A332582.P1829508590272831974

`∩[A372059(n+1), A331400(n+1)]`
-/

namespace A332582.P1829508590272831974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332582.P1829508590272831974

/-! ## A332582.P3546965074788738076

`∩[A240960(n+1), A331400(n+1)]`
-/

namespace A332582.P3546965074788738076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332582.P3546965074788738076

/-!
# A332583: Label only the prime-numbered position cells of the infinite 2D square lattice with the square spiral (or Ulam spiral), starting with 1 at the center; sequence lists primes that are visible from square 1.

The programs for A332583, there is no canonical definition to state claims against.
-/

/-! ## A332583.P6147731510091894654

`p?[A339022(n+2)-char[A339032(n)]]`
-/

namespace A332583.P6147731510091894654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339032 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339022 (n + 2) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332583.P6147731510091894654

/-! ## A332583.P876942814307991231

`p?[∑[A353332(A100916(n+1))]]`
-/

namespace A332583.P876942814307991231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353332 (A100916 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332583.P876942814307991231

/-! ## A332583.P4073301245592567818

`p?[lt[A164306(A057660(n+1)), 8]]`
-/

namespace A332583.P4073301245592567818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A057660 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A332583.P4073301245592567818

/-! ## A332583.P10439160754806520695

`∩[A244529(n+1), A335524(n+1)]`
-/

namespace A332583.P10439160754806520695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332583.P10439160754806520695

/-! ## A332583.P6301050532295823491

`∩[A335524(n+1), A360040(n+1)]`
-/

namespace A332583.P6301050532295823491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332583.P6301050532295823491

/-!
# A332584: a(n) = minimal value of n+k (with k >= 1) such that the concatenation of the decimal digits of n,n+1,...,n+k is divisible by n+k+1, or -1 if no such n+k exists.

The programs for A332584, there is no canonical definition to state claims against.
-/

/-! ## A332584.P10686444654406430762

`n+1+A332580(n+1)`
-/

namespace A332584.P10686444654406430762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A332580 (n + 1)

end

end A332584.P10686444654406430762

/-! ## A332584.P10199246563554989845

`A014681(A332580(n+1)+n)`
-/

namespace A332584.P10199246563554989845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A332580 (n + 1) + (n : ℤ)).toNat

end

end A332584.P10199246563554989845

/-! ## A332584.P10876428923658721035

`A015906(A332580(n+1)+n)`
-/

namespace A332584.P10876428923658721035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A332580 (n + 1) + (n : ℤ)).toNat

end

end A332584.P10876428923658721035

/-! ## A332584.P9218051441360114919

`A020725(A332580(n+1)+n)`
-/

namespace A332584.P9218051441360114919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A332580 (n + 1) + (n : ℤ)).toNat

end

end A332584.P9218051441360114919

/-! ## A332584.P202474766385788364

`A092486(A332580(n+1)+n)`
-/

namespace A332584.P202474766385788364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A332580 (n + 1) + (n : ℤ)).toNat

end

end A332584.P202474766385788364

/-!
# A332586: a(n) = minimal value of n+k+1 such that the concatenation of the binary expansions of n,n+1,...,n+k is divisible by n+k+1, or -1 if no such n+k+1 exists.

The programs for A332586, there is no canonical definition to state claims against.
-/

/-! ## A332586.P3981550751850754464

`A332563(n+1)+2+n`
-/

namespace A332586.P3981550751850754464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332563 (n + 1) + 2 + (n : ℤ)

end

end A332586.P3981550751850754464

/-! ## A332586.P9293912225351252853

`A071054(A332563(n+1)+n)`
-/

namespace A332586.P9293912225351252853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 (A332563 (n + 1) + (n : ℤ)).toNat

end

end A332586.P9293912225351252853

/-! ## A332586.P4598194270757444314

`A079578(A332563(n+1)+n)`
-/

namespace A332586.P4598194270757444314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079578 (A332563 (n + 1) + (n : ℤ)).toNat

end

end A332586.P4598194270757444314

/-! ## A332586.P5322463368537243278

`A332563(A077168(n))+n+2`
-/

namespace A332586.P5322463368537243278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332563 (A077168 n).toNat + (n + 2 : ℤ)

end

end A332586.P5322463368537243278

/-!
# A332587: a(n) = least m such that there is a component of a certain pawn game based on a word of length m that is equivalent to a Nim-heap of size n.

The programs for A332587, there is no canonical definition to state claims against.
-/

/-! ## A332587.P11264829745211658158

`∑[A308622(A019303(n))]+n`
-/

namespace A332587.P11264829745211658158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308622 (A019303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A332587.P11264829745211658158

/-! ## A332587.P8050567262194021050

`A037016(A109728(n))+Δ[n²]`
-/

namespace A332587.P8050567262194021050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037016 (A109728 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A332587.P8050567262194021050

/-! ## A332587.P6755672473341839394

`A247914(∑[∏{e}[A293223(n+1), #+1]])`
-/

namespace A332587.P6755672473341839394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293223 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332587.P6755672473341839394

/-! ## A332587.P16361809684780147882

`∑[A001222(A047235(∑{digits}[2*n+1, #]%2+2*n))]`
-/

namespace A332587.P16361809684780147882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A047235 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum % 2 + 2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332587.P16361809684780147882

/-! ## A332587.P14753298614127572409

`∑[A000267(A256478(A019428(n)))]`
-/

namespace A332587.P14753298614127572409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A256478 (A019428 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332587.P14753298614127572409

/-!
# A332590: Let t_k denote the triangular number k*(k+1)/2. Suppose 0 < x < y < z are integers satisfying t_x + t_y = t_p, t_y + t_z = t_q, t_x + t_z = t_r, for integers p,q,r. Sort the triples [x,y,z] first by x, then by y. Sequence gives the values of z.

The programs for A332590, there is no canonical definition to state claims against.
-/

/-! ## A332590.P3081539076034427592

`A332593(n+1)-A291448(A038041(n+1))`
-/

namespace A332590.P3081539076034427592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332593 (n + 1) - A291448 (A038041 (n + 1)).toNat

end

end A332590.P3081539076034427592

/-!
# A332593: Let t_k denote the triangular number k*(k+1)/2. Suppose 0 < x < y < z are integers satisfying t_x + t_y = t_p, t_y + t_z = t_q, t_x + t_z = t_r, for integers p,q,r. Sort the triples [x,y,z] first by x, then by y. Sequence gives the values of r.

The programs for A332593, there is no canonical definition to state claims against.
-/

/-! ## A332593.P8749085667556690998

`A332590(n+1)+A066099(A004041(n))`
-/

namespace A332593.P8749085667556690998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332590 (n + 1) + A066099 (A004041 n).toNat

end

end A332593.P8749085667556690998

/-!
# A332594: A331776(n)/4.

The programs for A332594, there is no canonical definition to state claims against.
-/

/-! ## A332594.P4115012168626827278

`A331776(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332594.P4115012168626827278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331776 (n + 1) : ℚ) / 4

end

end A332594.P4115012168626827278

/-! ## A332594.P764584564466184648

`A332595(n+1)+2*A332596(n+1)`
-/

namespace A332594.P764584564466184648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332595 (n + 1) + 2 * A332596 (n + 1)

end

end A332594.P764584564466184648

/-! ## A332594.P9183482576098880196

`(2^A008683(A003629(n+1)))²*A331776(n+1)`
-/

namespace A332594.P9183482576098880196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)) ^ 2 * (A331776 (n + 1) : ℚ)

end

end A332594.P9183482576098880196

/-! ## A332594.P8762542331459265398

`A332595(n+1)+A005843(A332596(n+1))`
-/

namespace A332594.P8762542331459265398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332595 (n + 1) + A005843 (A332596 (n + 1)).toNat

end

end A332594.P8762542331459265398

/-! ## A332594.P8233815362933363161

`A005843(A332596(n+1))+A177719(n+2)+A008574(n)`
-/

namespace A332594.P8233815362933363161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A332596 (n + 1)).toNat + (A177719 (n + 2) + A008574 n)

end

end A332594.P8233815362933363161

/-!
# A332595: Number of triangular regions in a "frame" of size n X n (see Comments in A331776 for definition), divided by 4.

The programs for A332595, there is no canonical definition to state claims against.
-/

/-! ## A332595.P14463049223958303149

`A177719(n+2)+A008574(n)`
-/

namespace A332595.P14463049223958303149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177719 (n + 2) + A008574 n

end

end A332595.P14463049223958303149

/-! ## A332595.P8850154395738778537

`A177719(n+2)+record[A257088(n)]`
-/

namespace A332595.P8850154395738778537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177719 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332595.P8850154395738778537

/-! ## A332595.P11759125056544043072

`A177719(n+2)+A004277(2*n)`
-/

namespace A332595.P11759125056544043072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177719 (n + 2) + A004277 (2 * n)

end

end A332595.P11759125056544043072

/-! ## A332595.P10816189667862972087

`A257088(2*n)+A177719(n+2)`
-/

namespace A332595.P10816189667862972087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) + A177719 (n + 2)

end

end A332595.P10816189667862972087

/-! ## A332595.P18030734952798017170

`A177719(n+2)+A008486(n)+n`
-/

namespace A332595.P18030734952798017170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177719 (n + 2) + (A008486 n + (n : ℤ))

end

end A332595.P18030734952798017170

/-!
# A332596: Number of quadrilateral regions in a "frame" of size n X n (see Comments in A331776 for definition), divided by 8.

The programs for A332596, there is no canonical definition to state claims against.
-/

/-! ## A332596.P17689878233204575641

`(A332594(n+1)-A332595(n+1))/2`
-/

namespace A332596.P17689878233204575641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332594 (n + 1) - A332595 (n + 1) : ℚ) / 2

end

end A332596.P17689878233204575641

/-! ## A332596.P1762431669945953624

`A014682(A332594(n+1)-A332595(n+1))`
-/

namespace A332596.P1762431669945953624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A332594 (n + 1) - A332595 (n + 1)).toNat

end

end A332596.P1762431669945953624

/-! ## A332596.P11253805145389965290

`A014682(A331776(n+1)/4-A332595(n+1))`
-/

namespace A332596.P11253805145389965290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A331776 (n + 1) : ℚ) / 4 - (A332595 (n + 1) : ℚ))).toNat

end

end A332596.P11253805145389965290

/-! ## A332596.P8948703825193322571

`A014682(A332594(n+1)-(A177719(n+2)+A008574(n)))`
-/

namespace A332596.P8948703825193322571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A332594 (n + 1) - (A177719 (n + 2) + A008574 n)).toNat

end

end A332596.P8948703825193322571

/-! ## A332596.P1955034739249115980

`A014682(A332594(n+1)-(A177719(n+2)+A004277(2*n)))`
-/

namespace A332596.P1955034739249115980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A332594 (n + 1) - (A177719 (n + 2) + A004277 (2 * n))).toNat

end

end A332596.P1955034739249115980

/-!
# A332597: Number of edges in a "frame" of size n X n (see Comments in A331776 for definition).

The programs for A332597, there is no canonical definition to state claims against.
-/

/-! ## A332597.P12754496369279599686

`A332600(∑[n+1])`
-/

namespace A332597.P12754496369279599686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332600 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332597.P12754496369279599686

/-! ## A332597.P4731371338927221416

`record[A332600(∑[char[∑[n]]]²-n)]`
-/

namespace A332597.P4731371338927221416
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332600 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332597.P4731371338927221416

/-! ## A332597.P5763440845689519244

`lcm(2, A332600(A025747(n)))`
-/

namespace A332597.P5763440845689519244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A332600 (A025747 n).toNat)

end

end A332597.P5763440845689519244

/-! ## A332597.P18406155760257832828

`and(-2, A332600(A000217(n+1)))`
-/

namespace A332597.P18406155760257832828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A332600 (A000217 (n + 1)).toNat)

end

end A332597.P18406155760257832828

/-! ## A332597.P7580004792121412189

`record[A023531(n)*A332600(n+1)]`
-/

namespace A332597.P7580004792121412189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A332600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332597.P7580004792121412189

