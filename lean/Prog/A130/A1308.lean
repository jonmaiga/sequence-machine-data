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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A130800: Numbers k such that both 2k+1 and 3k+1 are primes.

The programs for A130800, the canonical program `A130800.P624148309857847893` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130800 has offset 1).

The definition of A130800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130800.P12849043014502349038

`2*A255607(n+1)`
-/

namespace A130800.P12849043014502349038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255607 (n + 1)

end

end A130800.P12849043014502349038

namespace A130800

/-- `2*A255607(n+1)` -/
def P12849043014502349038.Spec : Prop :=
  ∀ n, P12849043014502349038.a n = A130800 (n + 1)

end A130800

/-! ## A130800.P624148309857847893

`floor(A104163(n+1)/3)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130800

/-- `floor(A104163(n+1)/3)` -/
def P624148309857847893.Spec : Prop :=
  ∀ n, P624148309857847893.a n = A130800 (n + 1)

theorem P624148309857847893.correct : P624148309857847893.Spec := by
  intro n
  simp only [A130800, Nat.add_sub_cancel]

end A130800

/-! ## A130800.P18109234823218996431

`A255607(A000027(n+1))+A255607(n+1)`
-/

namespace A130800.P18109234823218996431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (A000027 (n + 1)).toNat + A255607 (n + 1)

end

end A130800.P18109234823218996431

namespace A130800

/-- `A255607(A000027(n+1))+A255607(n+1)` -/
def P18109234823218996431.Spec : Prop :=
  ∀ n, P18109234823218996431.a n = A130800 (n + 1)

end A130800

/-! ## A130800.P12232035087539299263

`A255607(1-A001489(n))+A255607(n+1)`
-/

namespace A130800.P12232035087539299263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (1 - A001489 n).toNat + A255607 (n + 1)

end

end A130800.P12232035087539299263

namespace A130800

/-- `A255607(1-A001489(n))+A255607(n+1)` -/
def P12232035087539299263.Spec : Prop :=
  ∀ n, P12232035087539299263.a n = A130800 (n + 1)

end A130800

/-! ## A130800.P5191429778972861766

`floor(A158708(n+2)/2)`
-/

namespace A130800.P5191429778972861766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158708 (n + 2) : ℚ) / 2⌋

end

end A130800.P5191429778972861766

namespace A130800

/-- `floor(A158708(n+2)/2)` -/
def P5191429778972861766.Spec : Prop :=
  ∀ n, P5191429778972861766.a n = A130800 (n + 1)

end A130800

/-! ## A130800.P5921367985106636281

`A104163(n+1)-A158708(n+2)`
-/

namespace A130800.P5921367985106636281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104163 (n + 1) - A158708 (n + 2)

end

end A130800.P5921367985106636281

namespace A130800

/-- `A104163(n+1)-A158708(n+2)` -/
def P5921367985106636281.Spec : Prop :=
  ∀ n, P5921367985106636281.a n = A130800 (n + 1)

end A130800

/-! ## A130800.P14506646409580315284

`(p?[A114439(n+1)]-1)/2`
-/

namespace A130800.P14506646409580315284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114439 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A130800.P14506646409580315284

namespace A130800

/-- `(p?[A114439(n+1)]-1)/2` -/
def P14506646409580315284.Spec : Prop :=
  ∀ n, P14506646409580315284.a n = (A130800 (n + 1) : ℚ)

end A130800

/-! ## A130800.P9980542303891872391

`2*∩[A005098(n+1), A024899(n+1)]`
-/

namespace A130800.P9980542303891872391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130800.P9980542303891872391

namespace A130800

/-- `2*∩[A005098(n+1), A024899(n+1)]` -/
def P9980542303891872391.Spec : Prop :=
  ∀ n, (P9980542303891872391.a n : ℤ) = A130800 (n + 1)

end A130800

/-! ## A130800.P4843224999643611351

`∩[A005097(n+1), A024892(n+1)]`
-/

namespace A130800.P4843224999643611351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130800.P4843224999643611351

namespace A130800

/-- `∩[A005097(n+1), A024892(n+1)]` -/
def P4843224999643611351.Spec : Prop :=
  ∀ n, (P4843224999643611351.a n : ℤ) = A130800 (n + 1)

end A130800

/-! ## A130800.P857600100018782750

`∩[A024892(n+1), A102781(n+1)]`
-/

namespace A130800.P857600100018782750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130800.P857600100018782750

namespace A130800

/-- `∩[A024892(n+1), A102781(n+1)]` -/
def P857600100018782750.Spec : Prop :=
  ∀ n, (P857600100018782750.a n : ℤ) = A130800 (n + 1)

end A130800

/-! ## A130800.P18029719478778190417

`∩[2*A024899(n+1), A005097(n+1)]`
-/

namespace A130800.P18029719478778190417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130800.P18029719478778190417

namespace A130800

/-- `∩[2*A024899(n+1), A005097(n+1)]` -/
def P18029719478778190417.Spec : Prop :=
  ∀ n, (P18029719478778190417.a n : ℤ) = A130800 (n + 1)

end A130800

/-! ## A130800.P4792955448706605961

`∩[2*A024899(n+1), A102781(n+1)]`
-/

namespace A130800.P4792955448706605961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130800.P4792955448706605961

namespace A130800

/-- `∩[2*A024899(n+1), A102781(n+1)]` -/
def P4792955448706605961.Spec : Prop :=
  ∀ n, (P4792955448706605961.a n : ℤ) = A130800 (n + 1)

end A130800

/-! ## A130800.P13474729868798653983

`A014682(A158708(n+2)-1)`
-/

namespace A130800.P13474729868798653983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A158708 (n + 2) - 1).toNat

end

end A130800.P13474729868798653983

namespace A130800

/-- `A014682(A158708(n+2)-1)` -/
def P13474729868798653983.Spec : Prop :=
  ∀ n, P13474729868798653983.a n = A130800 (n + 1)

end A130800

/-! ## A130800.P3391870091650669995

`filter[A024892(n+1), A101264(#)]`
-/

namespace A130800.P3391870091650669995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A130800.P3391870091650669995

namespace A130800

/-- `filter[A024892(n+1), A101264(#)]` -/
def P3391870091650669995.Spec : Prop :=
  ∀ n, P3391870091650669995.a n = A130800 (n + 1)

end A130800

/-! ## A130800.P14314246344258231030

`∩[A024892(n+1), A079111(n+1)]`
-/

namespace A130800.P14314246344258231030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130800.P14314246344258231030

namespace A130800

/-- `∩[A024892(n+1), A079111(n+1)]` -/
def P14314246344258231030.Spec : Prop :=
  ∀ n, (P14314246344258231030.a n : ℤ) = A130800 (n + 1)

end A130800

/-! ## A130800.P7601542097916326085

`eq[3*n, A000010(A006530(2*n+1)+n)]`
-/

namespace A130800.P7601542097916326085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006530 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130800.P7601542097916326085

namespace A130800

/-- `eq[3*n, A000010(A006530(2*n+1)+n)]` -/
def P7601542097916326085.Spec : Prop :=
  ∀ n, (P7601542097916326085.a n : ℤ) = A130800 (n + 1)

end A130800

/-! ## A130800.P5069880791795527153

`eq[2, A001222(3*n+1)+A001222(2*n+1)]`
-/

namespace A130800.P5069880791795527153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 1) + A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130800.P5069880791795527153

namespace A130800

/-- `eq[2, A001222(3*n+1)+A001222(2*n+1)]` -/
def P5069880791795527153.Spec : Prop :=
  ∀ n, (P5069880791795527153.a n : ℤ) = A130800 (n + 1)

end A130800

/-! ## A130800.P14162078968580903606

`eq[3*n, A000010(A000010(2*n+1)+n+1)]`
-/

namespace A130800.P14162078968580903606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (2 * n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130800.P14162078968580903606

namespace A130800

/-- `eq[3*n, A000010(A000010(2*n+1)+n+1)]` -/
def P14162078968580903606.Spec : Prop :=
  ∀ n, (P14162078968580903606.a n : ℤ) = A130800 (n + 1)

end A130800

/-! ## A130800.P8951611656223171104

`eq[3*n+2, A000203(A006530(2*n+1)+n)]`
-/

namespace A130800.P8951611656223171104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006530 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130800.P8951611656223171104

namespace A130800

/-- `eq[3*n+2, A000203(A006530(2*n+1)+n)]` -/
def P8951611656223171104.Spec : Prop :=
  ∀ n, (P8951611656223171104.a n : ℤ) = A130800 (n + 1)

end A130800

/-! ## A130800.P15102445914190820832

`eq[2*n+1, A006530(A006530(2*n+1+n)+n+1)]`
-/

namespace A130800.P15102445914190820832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (2 * n + 1 + n) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130800.P15102445914190820832

namespace A130800

/-- `eq[2*n+1, A006530(A006530(2*n+1+n)+n+1)]` -/
def P15102445914190820832.Spec : Prop :=
  ∀ n, (P15102445914190820832.a n : ℤ) = A130800 (n + 1)

end A130800

/-!
# A130802: a(1) = 1; a(n+1) = Sum_{k=1..n} (a(k)-th integer from among those positive integers which are coprime to (n+1-k)).

The programs for A130802, there is no canonical definition to state claims against.
-/

/-! ## A130802.P15946666271280817137

`A110656(A100585(3*n+1)+A004526(n))`
-/

namespace A130802.P15946666271280817137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A100585 (3 * n + 1) + A004526 n).toNat

end

end A130802.P15946666271280817137

/-! ## A130802.P16743566941961668009

`A110656(A100585(3*n+1)+A008619(n))`
-/

namespace A130802.P16743566941961668009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A100585 (3 * n + 1) + A008619 n).toNat

end

end A130802.P16743566941961668009

/-! ## A130802.P5822562962590673250

`A110656(A123108(n)+A100585(3*n+1))`
-/

namespace A130802.P5822562962590673250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A123108 n + A100585 (3 * n + 1)).toNat

end

end A130802.P5822562962590673250

/-! ## A130802.P4671515714824072541

`A110656(A245356(3*n+1)+A003269(n))`
-/

namespace A130802.P4671515714824072541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A245356 (3 * n + 1) + A003269 n).toNat

end

end A130802.P4671515714824072541

/-! ## A130802.P6335291899661586499

`A110656(A245356(3*n+1)+A008619(n))`
-/

namespace A130802.P6335291899661586499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A245356 (3 * n + 1) + A008619 n).toNat

end

end A130802.P6335291899661586499

/-!
# A130803: Number of distinct values of the (n-1)st difference of permutations of 1..n.

The programs for A130803, there is no canonical definition to state claims against.
-/

/-! ## A130803.P8576694713683515968

`A265520(record[∏{d}[n, #]])`
-/

namespace A130803.P8576694713683515968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A130803.P8576694713683515968

/-! ## A130803.P6755653983743964698

`A265520((n-1)^3+2)`
-/

namespace A130803.P6755653983743964698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (((n : ℤ) - 1) ^ 3 + 2).toNat

end

end A130803.P6755653983743964698

/-!
# A130806: Period 6: repeat 1,4,3,-1,-4,-3.

The programs for A130806, the canonical program `A130806.P15236005013966247520` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130806 has offset 0).

The definition of A130806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130806.P15236005013966247520

`a(n-1)-a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130806

/-- `a(n-1)-a(n-2)` -/
def P15236005013966247520.Spec : Prop :=
  ∀ n, P15236005013966247520.a n = A130806 n

theorem P15236005013966247520.correct : P15236005013966247520.Spec := by
  intro n
  simp only [A130806]

end A130806

/-!
# A130807: Prime p > a(n-1) such that p + n! is prime, starting with a(1) = 2.

The programs for A130807, there is no canonical definition to state claims against.
-/

/-! ## A130807.P3956086853343627772

`A000040(lt[A327743(n+5), A070464(2*(n+1))])`
-/

namespace A130807.P3956086853343627772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327743 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070464 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130807.P3956086853343627772

/-! ## A130807.P4873827614215327783

`A000040(A319638(n)+n)`
-/

namespace A130807.P4873827614215327783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A319638 n + (n : ℤ)).toNat

end

end A130807.P4873827614215327783

/-! ## A130807.P14027667203393905870

`A002267(A213858(n+1)+1)`
-/

namespace A130807.P14027667203393905870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (A213858 (n + 1) + 1).toNat

end

end A130807.P14027667203393905870

/-! ## A130807.P11386947149816096615

`filter[A002267(n+1), A119981(#)]`
-/

namespace A130807.P11386947149816096615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A119981 (f1 j).toNat = 1) n)

end

end A130807.P11386947149816096615

/-! ## A130807.P3539809601289356426

`filter[A329191(n+1), A119981(#)]`
-/

namespace A130807.P3539809601289356426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A119981 (f1 j).toNat = 1) n)

end

end A130807.P3539809601289356426

/-!
# A130809: If X_1, ..., X_n is a partition of a 2n-set X into 2-blocks then a(n) is equal to the number of 3-subsets of X containing none of X_i, (i=1,...,n).

The programs for A130809, the canonical program `A130809.P3060772486719395803` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130809 has offset 3).

The definition of A130809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130809.P6072719355127177957

`C(n+3, n)*8`
-/

namespace A130809.P6072719355127177957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) n * 8

end

end A130809.P6072719355127177957

namespace A130809

/-- `C(n+3, n)*8` -/
def P6072719355127177957.Spec : Prop :=
  ∀ n, (P6072719355127177957.a n : ℤ) = A130809 (n + 3)

end A130809

/-! ## A130809.P14180179630007785585

`4/3*(n+3)*(n+2)*(n+1)`
-/

namespace A130809.P14180179630007785585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * ((n + 3) * ((n + 2) * (n + 1)) : ℚ)

end

end A130809.P14180179630007785585

namespace A130809

/-- `4/3*(n+3)*(n+2)*(n+1)` -/
def P14180179630007785585.Spec : Prop :=
  ∀ n, P14180179630007785585.a n = (A130809 (n + 3) : ℚ)

theorem P14180179630007785585.correct : P14180179630007785585.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A130809, Nat.add_sub_cancel, A130809.P14180179630007785585.a, A130809.P3060772486719395803.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A130809, Nat.add_sub_cancel, A130809.P14180179630007785585.a, A130809.P3060772486719395803.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A130809

/-! ## A130809.P3060772486719395803

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=32, a(2)=80, a(3)=160`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130809

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3060772486719395803.Spec : Prop :=
  ∀ n, P3060772486719395803.a n = A130809 (n + 3)

theorem P3060772486719395803.correct : P3060772486719395803.Spec := by
  intro n
  simp only [A130809, Nat.add_sub_cancel]

end A130809

/-! ## A130809.P1907490479624879578

`a(n-1)+A056220(n+2)+A056220(n+1)` with `a(0)=8`
-/

namespace A130809.P1907490479624879578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + A056220 (n + 2) + A056220 (n + 1)

end

end A130809.P1907490479624879578

namespace A130809

/-- `a(n-1)+A056220(n+2)+A056220(n+1)` -/
def P1907490479624879578.Spec : Prop :=
  ∀ n, P1907490479624879578.a n = A130809 (n + 3)

end A130809

/-! ## A130809.P1491815697616045861

`abs(∑[∑[a(n-1)+8]])` with `a(0)=8`
-/

namespace A130809.P1491815697616045861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130809.P1491815697616045861

namespace A130809

/-- `abs(∑[∑[a(n-1)+8]])` -/
def P1491815697616045861.Spec : Prop :=
  ∀ n, (P1491815697616045861.a n : ℤ) = A130809 (n + 3)

end A130809

/-! ## A130809.P12725543349086159206

`floor(∑[∑[a(n-1)+8]])` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A130809.P12725543349086159206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130809.P12725543349086159206

namespace A130809

/-- `floor(∑[∑[a(n-1)+8]])` -/
def P12725543349086159206.Spec : Prop :=
  ∀ n, (P12725543349086159206.a n : ℤ) = A130809 (n + 3)

end A130809

/-! ## A130809.P6420228495718425500

`lcm(2, ∑[1-(n+3+n)²])`
-/

namespace A130809.P6420228495718425500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 3 + n) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130809.P6420228495718425500

namespace A130809

/-- `lcm(2, ∑[1-(n+3+n)²])` -/
def P6420228495718425500.Spec : Prop :=
  ∀ n, (P6420228495718425500.a n : ℤ) = A130809 (n + 3)

end A130809

/-! ## A130809.P16334569615596405779

`C(Δ[(n+2)²], 3)-(n+2)`
-/

namespace A130809.P16334569615596405779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 : ℤ) - (n + 2 : ℤ)

end

end A130809.P16334569615596405779

namespace A130809

/-- `C(Δ[(n+2)²], 3)-(n+2)` -/
def P16334569615596405779.Spec : Prop :=
  ∀ n, P16334569615596405779.a n = A130809 (n + 3)

end A130809

/-! ## A130809.P6387820053064870867

`(n+3)/abs(n/a(n-1))` with `a(0)=8`
-/

namespace A130809.P6387820053064870867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  (n + 3 : ℚ) / |(n : ℚ) / a (n - 1)|

end

end A130809.P6387820053064870867

namespace A130809

/-- `(n+3)/abs(n/a(n-1))` -/
def P6387820053064870867.Spec : Prop :=
  ∀ n, P6387820053064870867.a n = (A130809 (n + 3) : ℚ)

end A130809

/-! ## A130809.P5479075015779145697

`∑[lcm(n+1, n+2)]/(1/2)²`
-/

namespace A130809.P5479075015779145697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A130809.P5479075015779145697

namespace A130809

/-- `∑[lcm(n+1, n+2)]/(1/2)²` -/
def P5479075015779145697.Spec : Prop :=
  ∀ n, P5479075015779145697.a n = (A130809 (n + 3) : ℚ)

end A130809

/-! ## A130809.P1626774174671026119

`∑[a(n-1)+8]+a(n-1)` with `a(0)=8`
-/

namespace A130809.P1626774174671026119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A130809.P1626774174671026119

namespace A130809

/-- `∑[a(n-1)+8]+a(n-1)` -/
def P1626774174671026119.Spec : Prop :=
  ∀ n, (P1626774174671026119.a n : ℤ) = A130809 (n + 3)

end A130809

/-! ## A130809.P14897260121308947341

`∑[(n+3+n)²]-C(n+1, n)`
-/

namespace A130809.P14897260121308947341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (n + 1) n : ℤ)

end

end A130809.P14897260121308947341

namespace A130809

/-- `∑[(n+3+n)²]-C(n+1, n)` -/
def P14897260121308947341.Spec : Prop :=
  ∀ n, P14897260121308947341.a n = A130809 (n + 3)

end A130809

/-! ## A130809.P11519740121843233461

`Δ[2*n*C(2*n-(n-3), 3)]`
-/

namespace A130809.P11519740121843233461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A130809.P11519740121843233461

namespace A130809

/-- `Δ[2*n*C(2*n-(n-3), 3)]` -/
def P11519740121843233461.Spec : Prop :=
  ∀ n, P11519740121843233461.a n = A130809 (n + 3)

end A130809

/-! ## A130809.P8106819141915217956

`a(n-1)+4*(n+1)*(n+2)` with `a(0)=8`
-/

namespace A130809.P8106819141915217956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 4 * ((n + 1) * (n + 2))

end

end A130809.P8106819141915217956

namespace A130809

/-- `a(n-1)+4*(n+1)*(n+2)` -/
def P8106819141915217956.Spec : Prop :=
  ∀ n, (P8106819141915217956.a n : ℤ) = A130809 (n + 3)

end A130809

/-! ## A130809.P13934609231565462070

`Δ[A162668(n)]`
-/

namespace A130809.P13934609231565462070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130809.P13934609231565462070

namespace A130809

/-- `Δ[A162668(n)]` -/
def P13934609231565462070.Spec : Prop :=
  ∀ n, P13934609231565462070.a n = A130809 (n + 3)

end A130809

/-!
# A130810: If X_1,...,X_n is a partition of a 2n-set X into 2-blocks then a(n) is equal to the number of 4-subsets of X containing none of X_i, (i=1,...,n).

The programs for A130810, the canonical program `A130810.P6751100018123979558` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130810 has offset 4).

The definition of A130810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130810.P6751100018123979558

`16*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130810

/-- `16*C(n+4, 4)` -/
def P6751100018123979558.Spec : Prop :=
  ∀ n, (P6751100018123979558.a n : ℤ) = A130810 (n + 4)

theorem P6751100018123979558.correct : P6751100018123979558.Spec := by
  intro n
  simp only [A130810, Nat.add_sub_cancel]

end A130810

/-! ## A130810.P1781216348444386755

`2*(n+4)*(n+3)*(n+2)*(n+1)/3`
-/

namespace A130810.P1781216348444386755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 4 : ℚ) * ((n + 3 : ℚ) * ((n + 2 : ℚ) * ((n + 1 : ℚ) / 3))))

end

end A130810.P1781216348444386755

namespace A130810

/-- `2*(n+4)*(n+3)*(n+2)*(n+1)/3` -/
def P1781216348444386755.Spec : Prop :=
  ∀ n, P1781216348444386755.a n = (A130810 (n + 4) : ℚ)

end A130810

/-! ## A130810.P6641267554485305378

`C(n+4, 4)/(1/4)²`
-/

namespace A130810.P6641267554485305378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℚ) / ((1 : ℚ) / 4) ^ 2

end

end A130810.P6641267554485305378

namespace A130810

/-- `C(n+4, 4)/(1/4)²` -/
def P6641267554485305378.Spec : Prop :=
  ∀ n, P6641267554485305378.a n = (A130810 (n + 4) : ℚ)

theorem P6641267554485305378.correct : P6641267554485305378.Spec := by
  intro n
  simp only [A130810, Nat.add_sub_cancel, A130810.P6641267554485305378.a, A130810.P6751100018123979558.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A130810

/-! ## A130810.P5748401630741175596

`A120054(n+1)/(8/2)²`
-/

namespace A130810.P5748401630741175596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120054 (n + 1) : ℚ) / ((8 : ℚ) / 2) ^ 2

end

end A130810.P5748401630741175596

namespace A130810

/-- `A120054(n+1)/(8/2)²` -/
def P5748401630741175596.Spec : Prop :=
  ∀ n, P5748401630741175596.a n = (A130810 (n + 4) : ℚ)

end A130810

/-! ## A130810.P15545840389322197948

`∑[A141478(n+1)/2]/2`
-/

namespace A130810.P15545840389322197948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141478 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A130810.P15545840389322197948

namespace A130810

/-- `∑[A141478(n+1)/2]/2` -/
def P15545840389322197948.Spec : Prop :=
  ∀ n, P15545840389322197948.a n = (A130810 (n + 4) : ℚ)

end A130810

/-! ## A130810.P13699482628340789948

`A228741(n+1)+A005563(n)`
-/

namespace A130810.P13699482628340789948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228741 (n + 1) + A005563 n

end

end A130810.P13699482628340789948

namespace A130810

/-- `A228741(n+1)+A005563(n)` -/
def P13699482628340789948.Spec : Prop :=
  ∀ n, P13699482628340789948.a n = A130810 (n + 4)

end A130810

/-! ## A130810.P10598554240205232239

`A112415(n)+A033488(n+1)`
-/

namespace A130810.P10598554240205232239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112415 n + A033488 (n + 1)

end

end A130810.P10598554240205232239

namespace A130810

/-- `A112415(n)+A033488(n+1)` -/
def P10598554240205232239.Spec : Prop :=
  ∀ n, P10598554240205232239.a n = A130810 (n + 4)

end A130810

/-! ## A130810.P4359149860886646040

`A033488(n+1)+A033486(n+1)`
-/

namespace A130810.P4359149860886646040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 (n + 1) + A033486 (n + 1)

end

end A130810.P4359149860886646040

namespace A130810

/-- `A033488(n+1)+A033486(n+1)` -/
def P4359149860886646040.Spec : Prop :=
  ∀ n, P4359149860886646040.a n = A130810 (n + 4)

end A130810

/-! ## A130810.P7058737994168260065

`A264851(n+2)-A000292(n+2)`
-/

namespace A130810.P7058737994168260065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264851 (n + 2) - A000292 (n + 2)

end

end A130810.P7058737994168260065

namespace A130810

/-- `A264851(n+2)-A000292(n+2)` -/
def P7058737994168260065.Spec : Prop :=
  ∀ n, P7058737994168260065.a n = A130810 (n + 4)

end A130810

/-! ## A130810.P14188823204439922857

`A033487(n+1)+A266732(n+1)-A266732(n)`
-/

namespace A130810.P14188823204439922857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (n + 1) + (A266732 (n + 1) - A266732 n)

end

end A130810.P14188823204439922857

namespace A130810

/-- `A033487(n+1)+A266732(n+1)-A266732(n)` -/
def P14188823204439922857.Spec : Prop :=
  ∀ n, P14188823204439922857.a n = A130810 (n + 4)

end A130810

/-! ## A130810.P471644879979570719

`A033487(n+1)+A033488(n+1)+A033487(n+1)`
-/

namespace A130810.P471644879979570719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (n + 1) + (A033488 (n + 1) + A033487 (n + 1))

end

end A130810.P471644879979570719

namespace A130810

/-- `A033487(n+1)+A033488(n+1)+A033487(n+1)` -/
def P471644879979570719.Spec : Prop :=
  ∀ n, P471644879979570719.a n = A130810 (n + 4)

end A130810

/-!
# A130811: If X_1,...,X_n is a partition of a 2n-set X into 2-blocks then a(n) is equal to the number of 5-subsets of X containing none of X_i, (i=1,...n).

The programs for A130811, the canonical program `A130811.P5814667391022966531` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130811 has offset 5).

The definition of A130811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130811.P5814667391022966531

`32*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130811

/-- `32*C(n+5, 5)` -/
def P5814667391022966531.Spec : Prop :=
  ∀ n, (P5814667391022966531.a n : ℤ) = A130811 (n + 5)

theorem P5814667391022966531.correct : P5814667391022966531.Spec := by
  intro n
  simp only [A130811, Nat.add_sub_cancel]

end A130811

/-! ## A130811.P6213446242174186674

`∑[∑[∑[∑[32*(n+1)]]]]`
-/

namespace A130811.P6213446242174186674
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130811.P6213446242174186674

namespace A130811

/-- `∑[∑[∑[∑[32*(n+1)]]]]` -/
def P6213446242174186674.Spec : Prop :=
  ∀ n, (P6213446242174186674.a n : ℤ) = A130811 (n + 5)

end A130811

/-! ## A130811.P12769351196342041433

`(5/n+1)*a(n-1)` with `a(0)=32`
-/

namespace A130811.P12769351196342041433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [32] fun n a =>
  (5 / (n : ℚ) + 1) * a (n - 1)

end

end A130811.P12769351196342041433

namespace A130811

/-- `(5/n+1)*a(n-1)` -/
def P12769351196342041433.Spec : Prop :=
  ∀ n, P12769351196342041433.a n = (A130811 (n + 5) : ℚ)

end A130811

/-! ## A130811.P6040186944237388270

`4*∑[A162668(n+1)]`
-/

namespace A130811.P6040186944237388270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130811.P6040186944237388270

namespace A130811

/-- `4*∑[A162668(n+1)]` -/
def P6040186944237388270.Spec : Prop :=
  ∀ n, P6040186944237388270.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P2390702676643320899

`2*∑[A130810(n+4)]`
-/

namespace A130811.P2390702676643320899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130810 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130811.P2390702676643320899

namespace A130811

/-- `2*∑[A130810(n+4)]` -/
def P2390702676643320899.Spec : Prop :=
  ∀ n, P2390702676643320899.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P12885925712361324622

`∑[∑[A141478(n+1)]]/2`
-/

namespace A130811.P12885925712361324622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A130811.P12885925712361324622

namespace A130811

/-- `∑[∑[A141478(n+1)]]/2` -/
def P12885925712361324622.Spec : Prop :=
  ∀ n, P12885925712361324622.a n = (A130811 (n + 5) : ℚ)

end A130811

/-! ## A130811.P17801918502514166029

`32*∑[∑[A000292(n+1)]]`
-/

namespace A130811.P17801918502514166029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130811.P17801918502514166029

namespace A130811

/-- `32*∑[∑[A000292(n+1)]]` -/
def P17801918502514166029.Spec : Prop :=
  ∀ n, P17801918502514166029.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P14598608869828628240

`16*A277935(n+2)`
-/

namespace A130811.P14598608869828628240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A277935 (n + 2)

end

end A130811.P14598608869828628240

namespace A130811

/-- `16*A277935(n+2)` -/
def P14598608869828628240.Spec : Prop :=
  ∀ n, P14598608869828628240.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P6768010984425108319

`32*∑[A000332(n+4)]`
-/

namespace A130811.P6768010984425108319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130811.P6768010984425108319

namespace A130811

/-- `32*∑[A000332(n+4)]` -/
def P6768010984425108319.Spec : Prop :=
  ∀ n, P6768010984425108319.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P5136718944099311430

`32*A000389(n+5)`
-/

namespace A130811.P5136718944099311430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A000389 (n + 5)

end

end A130811.P5136718944099311430

namespace A130811

/-- `32*A000389(n+5)` -/
def P5136718944099311430.Spec : Prop :=
  ∀ n, P5136718944099311430.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P10949079898961435725

`A054849(n+5)/A002409(n+1)*A130812(n+7)`
-/

namespace A130811.P10949079898961435725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (n + 5) : ℚ) / (A002409 (n + 1) : ℚ) * (A130812 (n + 7) : ℚ)

end

end A130811.P10949079898961435725

namespace A130811

/-- `A054849(n+5)/A002409(n+1)*A130812(n+7)` -/
def P10949079898961435725.Spec : Prop :=
  ∀ n, P10949079898961435725.a n = (A130811 (n + 5) : ℚ)

end A130811

/-! ## A130811.P3533087128465000349

`32*A007318(A055999(n+3))`
-/

namespace A130811.P3533087128465000349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A007318 (A055999 (n + 3)).toNat

end

end A130811.P3533087128465000349

namespace A130811

/-- `32*A007318(A055999(n+3))` -/
def P3533087128465000349.Spec : Prop :=
  ∀ n, P3533087128465000349.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P16910592019502188118

`32*A007318(A167499(n+4))`
-/

namespace A130811.P16910592019502188118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A007318 (A167499 (n + 4)).toNat

end

end A130811.P16910592019502188118

namespace A130811

/-- `32*A007318(A167499(n+4))` -/
def P16910592019502188118.Spec : Prop :=
  ∀ n, P16910592019502188118.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P83121912712007931

`32*A007318(A000217(n+5)+5)`
-/

namespace A130811.P83121912712007931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A007318 (A000217 (n + 5) + 5).toNat

end

end A130811.P83121912712007931

namespace A130811

/-- `32*A007318(A000217(n+5)+5)` -/
def P83121912712007931.Spec : Prop :=
  ∀ n, P83121912712007931.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P7495720152225219448

`A210195(lt[A210195(n+1), n]-n)`
-/

namespace A130811.P7495720152225219448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210195 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210195 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - n)

end

end A130811.P7495720152225219448

namespace A130811

/-- `A210195(lt[A210195(n+1), n]-n)` -/
def P7495720152225219448.Spec : Prop :=
  ∀ n, P7495720152225219448.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P10876479855941129719

`A038207(Δ[A026054(n+3)])`
-/

namespace A130811.P10876479855941129719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (f1 (n + 1) - f1 n).toNat

end

end A130811.P10876479855941129719

namespace A130811

/-- `A038207(Δ[A026054(n+3)])` -/
def P10876479855941129719.Spec : Prop :=
  ∀ n, P10876479855941129719.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P15202116887421035174

`A038207(Δ[A060488(n+4)])`
-/

namespace A130811.P15202116887421035174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (f1 (n + 1) - f1 n).toNat

end

end A130811.P15202116887421035174

namespace A130811

/-- `A038207(Δ[A060488(n+4)])` -/
def P15202116887421035174.Spec : Prop :=
  ∀ n, P15202116887421035174.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P9209948419875592863

`A038207(A077169(n+5)+2*n)`
-/

namespace A130811.P9209948419875592863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A077169 (n + 5) + (2 * n : ℤ)).toNat

end

end A130811.P9209948419875592863

namespace A130811

/-- `A038207(A077169(n+5)+2*n)` -/
def P9209948419875592863.Spec : Prop :=
  ∀ n, P9209948419875592863.a n = A130811 (n + 5)

end A130811

/-! ## A130811.P13025272958309641249

`A038207(2*n+A056000(n)+15)`
-/

namespace A130811.P13025272958309641249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 ((2 * n : ℤ) + (A056000 n + 15)).toNat

end

end A130811.P13025272958309641249

namespace A130811

/-- `A038207(2*n+A056000(n)+15)` -/
def P13025272958309641249.Spec : Prop :=
  ∀ n, P13025272958309641249.a n = A130811 (n + 5)

end A130811

/-!
# A130812: If X_1,...,X_n is a partition of a 2n-set X into 2-blocks then a(n) is equal to the number of 6-subsets of X containing none of X_i, (i=1,...n).

The programs for A130812, the canonical program `A130812.P9136298098298314282` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130812 has offset 6).

The definition of A130812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130812.P9136298098298314282

`C(n+6, 6)*64`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130812

/-- `C(n+6, 6)*64` -/
def P9136298098298314282.Spec : Prop :=
  ∀ n, (P9136298098298314282.a n : ℤ) = A130812 (n + 6)

theorem P9136298098298314282.correct : P9136298098298314282.Spec := by
  intro n
  simp only [A130812, Nat.add_sub_cancel]

end A130812

/-! ## A130812.P7919245567717659980

`2*∑[(5/n+1)*a(n-1)]` with `a(0)=32`
-/

namespace A130812.P7919245567717659980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [32] fun n f1 =>
  (5 / (n : ℚ) + 1) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130812.P7919245567717659980

namespace A130812

/-- `2*∑[(5/n+1)*a(n-1)]` -/
def P7919245567717659980.Spec : Prop :=
  ∀ n, P7919245567717659980.a n = (A130812 (n + 6) : ℚ)

end A130812

/-! ## A130812.P998628830563441848

`∑[2*A130811(n+5)]`
-/

namespace A130812.P998628830563441848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130811 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130812.P998628830563441848

namespace A130812

/-- `∑[2*A130811(n+5)]` -/
def P998628830563441848.Spec : Prop :=
  ∀ n, P998628830563441848.a n = A130812 (n + 6)

end A130812

/-! ## A130812.P10103963822059277829

`∑[∑[∑[A141478(n+1)]]]`
-/

namespace A130812.P10103963822059277829
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130812.P10103963822059277829

namespace A130812

/-- `∑[∑[∑[A141478(n+1)]]]` -/
def P10103963822059277829.Spec : Prop :=
  ∀ n, P10103963822059277829.a n = A130812 (n + 6)

end A130812

/-! ## A130812.P10773745168876009166

`2*∑[∑[4*A162668(n+1)]]`
-/

namespace A130812.P10773745168876009166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A162668 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130812.P10773745168876009166

namespace A130812

/-- `2*∑[∑[4*A162668(n+1)]]` -/
def P10773745168876009166.Spec : Prop :=
  ∀ n, P10773745168876009166.a n = A130812 (n + 6)

end A130812

/-! ## A130812.P14700458102243466661

`∑[∑[∑[4*A102860(n+3)]]]`
-/

namespace A130812.P14700458102243466661
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A102860 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130812.P14700458102243466661

namespace A130812

/-- `∑[∑[∑[4*A102860(n+3)]]]` -/
def P14700458102243466661.Spec : Prop :=
  ∀ n, P14700458102243466661.a n = A130812 (n + 6)

end A130812

/-! ## A130812.P15802671851135612776

`A162669(n+1)/(3-3/4)`
-/

namespace A130812.P15802671851135612776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162669 (n + 1) : ℚ) / (3 - (3 : ℚ) / 4)

end

end A130812.P15802671851135612776

namespace A130812

/-- `A162669(n+1)/(3-3/4)` -/
def P15802671851135612776.Spec : Prop :=
  ∀ n, P15802671851135612776.a n = (A130812 (n + 6) : ℚ)

end A130812

/-! ## A130812.P10497884867001493987

`16*∑[A059599(n)+A000332(n+4)]`
-/

namespace A130812.P10497884867001493987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059599 n + A000332 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130812.P10497884867001493987

namespace A130812

/-- `16*∑[A059599(n)+A000332(n+4)]` -/
def P10497884867001493987.Spec : Prop :=
  ∀ n, P10497884867001493987.a n = A130812 (n + 6)

end A130812

/-! ## A130812.P9238053459349402515

`A038207(Δ[A026054(n+4)]-1)`
-/

namespace A130812.P9238053459349402515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (f1 (n + 1) - f1 n - 1).toNat

end

end A130812.P9238053459349402515

namespace A130812

/-- `A038207(Δ[A026054(n+4)]-1)` -/
def P9238053459349402515.Spec : Prop :=
  ∀ n, P9238053459349402515.a n = A130812 (n + 6)

end A130812

/-! ## A130812.P7239123382837088433

`A373547(A167614(n+2))`
-/

namespace A130812.P7239123382837088433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373547 (A167614 (n + 2)).toNat

end

end A130812.P7239123382837088433

namespace A130812

/-- `A373547(A167614(n+2))` -/
def P7239123382837088433.Spec : Prop :=
  ∀ n, P7239123382837088433.a n = A130812 (n + 6)

end A130812

/-!
# A130813: If X_1,...,X_n is a partition of a 2n-set X into 2-blocks then a(n) is equal to the number of 7-subsets of X containing none of X_i, (i=1,...n).

The programs for A130813, the canonical program `A130813.P4891616102812374704` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130813 has offset 7).

The definition of A130813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130813.P4891616102812374704

`128*A000580(n+7)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130813

/-- `128*A000580(n+7)` -/
def P4891616102812374704.Spec : Prop :=
  ∀ n, P4891616102812374704.a n = A130813 (n + 7)

theorem P4891616102812374704.correct : P4891616102812374704.Spec := by
  intro n
  simp only [A130813, Nat.add_sub_cancel]

end A130813

/-! ## A130813.P13207907033343621820

`2*64*C(n+7, 7)`
-/

namespace A130813.P13207907033343621820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (64 * Nat.choose (n + 7) 7)

end

end A130813.P13207907033343621820

namespace A130813

/-- `2*64*C(n+7, 7)` -/
def P13207907033343621820.Spec : Prop :=
  ∀ n, (P13207907033343621820.a n : ℤ) = A130813 (n + 7)

end A130813

/-! ## A130813.P12785596655118371645

`∑[2*A130812(n+6)]`
-/

namespace A130813.P12785596655118371645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130812 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130813.P12785596655118371645

namespace A130813

/-- `∑[2*A130812(n+6)]` -/
def P12785596655118371645.Spec : Prop :=
  ∀ n, P12785596655118371645.a n = A130813 (n + 7)

end A130813

/-! ## A130813.P10982679697356774397

`∑[∑[4*A130811(n+5)]]`
-/

namespace A130813.P10982679697356774397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A130811 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130813.P10982679697356774397

namespace A130813

/-- `∑[∑[4*A130811(n+5)]]` -/
def P10982679697356774397.Spec : Prop :=
  ∀ n, P10982679697356774397.a n = A130813 (n + 7)

end A130813

/-! ## A130813.P6060461115279451840

`64*A178440(2*n+1)`
-/

namespace A130813.P6060461115279451840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A178440 (2 * n + 1)

end

end A130813.P6060461115279451840

namespace A130813

/-- `64*A178440(2*n+1)` -/
def P6060461115279451840.Spec : Prop :=
  ∀ n, P6060461115279451840.a n = A130813 (n + 7)

end A130813

/-! ## A130813.P11326174287593915926

`A013609(A000124(n+7)+6)`
-/

namespace A130813.P11326174287593915926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A000124 (n + 7) + 6).toNat

end

end A130813.P11326174287593915926

namespace A130813

/-- `A013609(A000124(n+7)+6)` -/
def P11326174287593915926.Spec : Prop :=
  ∀ n, P11326174287593915926.a n = A130813 (n + 7)

end A130813

/-! ## A130813.P14998574228314628876

`A013609(A000096(n+6)+8)`
-/

namespace A130813.P14998574228314628876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A000096 (n + 6) + 8).toNat

end

end A130813.P14998574228314628876

namespace A130813

/-- `A013609(A000096(n+6)+8)` -/
def P14998574228314628876.Spec : Prop :=
  ∀ n, P14998574228314628876.a n = A130813 (n + 7)

end A130813

/-! ## A130813.P814056816661198665

`A013609(A000217(n+7)+7)`
-/

namespace A130813.P814056816661198665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A000217 (n + 7) + 7).toNat

end

end A130813.P814056816661198665

namespace A130813

/-- `A013609(A000217(n+7)+7)` -/
def P814056816661198665.Spec : Prop :=
  ∀ n, P814056816661198665.a n = A130813 (n + 7)

end A130813

/-! ## A130813.P8485952127044922804

`A038207(A055998(n+6)-5)`
-/

namespace A130813.P8485952127044922804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A055998 (n + 6) - 5).toNat

end

end A130813.P8485952127044922804

namespace A130813

/-- `A038207(A055998(n+6)-5)` -/
def P8485952127044922804.Spec : Prop :=
  ∀ n, P8485952127044922804.a n = A130813 (n + 7)

end A130813

/-! ## A130813.P183232175389515665

`A038207(A000217(n+8)-8)`
-/

namespace A130813.P183232175389515665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A000217 (n + 8) - 8).toNat

end

end A130813.P183232175389515665

namespace A130813

/-- `A038207(A000217(n+8)-8)` -/
def P183232175389515665.Spec : Prop :=
  ∀ n, P183232175389515665.a n = A130813 (n + 7)

end A130813

/-! ## A130813.P15815610047294388315

`A038207(A000096(n+6)+n+1)`
-/

namespace A130813.P15815610047294388315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A130813.P15815610047294388315

namespace A130813

/-- `A038207(A000096(n+6)+n+1)` -/
def P15815610047294388315.Spec : Prop :=
  ∀ n, P15815610047294388315.a n = A130813 (n + 7)

end A130813

/-!
# A130815: Period 6: repeat [1, 5, 4, -1, -5, -4].

The programs for A130815, the canonical program `A130815.P6317640539080165462` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130815 has offset 0).

The definition of A130815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130815.P6317640539080165462

`a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130815

/-- `a(n-1)-a(n-2)` -/
def P6317640539080165462.Spec : Prop :=
  ∀ n, P6317640539080165462.a n = A130815 n

theorem P6317640539080165462.correct : P6317640539080165462.Spec := by
  intro n
  simp only [A130815]

end A130815

/-!
# A130816: a(1) = 2, a(2) = 2, a(3) = 1, a(n) = a(n-3) + floor(a(n-2)/2) for n >= 4.

The programs for A130816, the canonical program `A130816.P9320644565239244806` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130816 has offset 1).

The definition of A130816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+floor(a(n-2)/2)` (program `A130816.P9320644565239244806`, by `A130816.P9320644565239244806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130816.P9320644565239244806

`a(n-3)+floor(a(n-2)/2)` with `a(0)=2, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130816

/-- `a(n-3)+floor(a(n-2)/2)` -/
def P9320644565239244806.Spec : Prop :=
  ∀ n, P9320644565239244806.a n = A130816 (n + 1)

theorem P9320644565239244806.correct : P9320644565239244806.Spec := by
  intro n
  simp only [A130816, Nat.add_sub_cancel]

end A130816

/-! ## A130816.P10641955631473870966

`a(n-3)-floor((1-a(n-2))/2)` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A130816.P10641955631473870966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n a =>
  a (n - 3) - ⌊(1 - a (n - 2) : ℚ) / 2⌋

end

end A130816.P10641955631473870966

namespace A130816

/-- `a(n-3)-floor((1-a(n-2))/2)` -/
def P10641955631473870966.Spec : Prop :=
  ∀ n, P10641955631473870966.a n = A130816 (n + 1)

end A130816

/-! ## A130816.P4758479981774813616

`A004526(a(n-2))+a(n-3)` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A130816.P4758479981774813616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n a =>
  A004526 (a (n - 2)).toNat + a (n - 3)

end

end A130816.P4758479981774813616

namespace A130816

/-- `A004526(a(n-2))+a(n-3)` -/
def P4758479981774813616.Spec : Prop :=
  ∀ n, P4758479981774813616.a n = A130816 (n + 1)

end A130816

/-! ## A130816.P2917864595923334676

`A123108(a(n-2))+a(n-3)` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A130816.P2917864595923334676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n a =>
  A123108 (a (n - 2)).toNat + a (n - 3)

end

end A130816.P2917864595923334676

namespace A130816

/-- `A123108(a(n-2))+a(n-3)` -/
def P2917864595923334676.Spec : Prop :=
  ∀ n, P2917864595923334676.a n = A130816 (n + 1)

end A130816

/-! ## A130816.P17620508654062937451

`A073424(A114623(n+1))+A048766(A070885(n+1))`
-/

namespace A130816.P17620508654062937451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A114623 (n + 1)).toNat + A048766 (A070885 (n + 1)).toNat

end

end A130816.P17620508654062937451

namespace A130816

/-- `A073424(A114623(n+1))+A048766(A070885(n+1))` -/
def P17620508654062937451.Spec : Prop :=
  ∀ n, P17620508654062937451.a n = A130816 (n + 1)

end A130816

/-!
# A130817: a(n) is the total sum of the digits of n-digit primes.

The programs for A130817, there is no canonical definition to state claims against.
-/

/-! ## A130817.P1850621851306214490

`Δ[A051351(A006880(n))]`
-/

namespace A130817.P1850621851306214490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 (A006880 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130817.P1850621851306214490

/-!
# A130818: Decimal expansion of number whose Engel expansion is the sequence of squares, that is, 1, 4, 9, 16,...

The programs for A130818, there is no canonical definition to state claims against.
-/

/-! ## A130818.P9804672050620001971

`A070910(n)-floor(acot(n))`
-/

namespace A130818.P9804672050620001971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070910 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A130818.P9804672050620001971

/-! ## A130818.P4702313341145883351

`A070910(n)-A000007(n)`
-/

namespace A130818.P4702313341145883351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070910 (n + 1) - A000007 n

end

end A130818.P4702313341145883351

/-! ## A130818.P12285960825963529643

`A070910(n)/A054977(n)`
-/

namespace A130818.P12285960825963529643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070910 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A130818.P12285960825963529643

/-! ## A130818.P12192983455065193971

`A070910(n)^abs(A057428(n))`
-/

namespace A130818.P12192983455065193971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070910 (n + 1) : ℚ) ^ (|A057428 n| : ℤ)

end

end A130818.P12192983455065193971

/-! ## A130818.P9146506309398673084

`A070910(n)/A000038(n)!`
-/

namespace A130818.P9146506309398673084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070910 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A130818.P9146506309398673084

/-! ## A130818.P3762793039664169281

`A070910(n)/ceil(acot(A000217(n)))`
-/

namespace A130818.P3762793039664169281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070910 (n + 1) : ℚ) / (⌈SequenceMachineLib.acot (A000217 n : ℝ)⌉ : ℚ)

end

end A130818.P3762793039664169281

/-! ## A130818.P16288223174296822648

`A070910(n)-A085200(C(2, ∑[n]))`
-/

namespace A130818.P16288223174296822648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070910 (n + 1) - A085200 (Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A130818.P16288223174296822648

/-! ## A130818.P8733212597980968859

`n²+A070910(n)-A253909(n)`
-/

namespace A130818.P8733212597980968859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A070910 (n + 1) - A253909 n)

end

end A130818.P8733212597980968859

/-! ## A130818.P14317412244753273171

`A070910(n)-A209229(2*n+1)`
-/

namespace A130818.P14317412244753273171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070910 (n + 1) - A209229 (2 * n + 1)

end

end A130818.P14317412244753273171

/-! ## A130818.P3682604832432332720

`A070910(n)-A000045(C(2, n+2))`
-/

namespace A130818.P3682604832432332720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070910 (n + 1) - A000045 (Nat.choose 2 (n + 2))

end

end A130818.P3682604832432332720

/-! ## A130818.P9606798533709034464

`A070910(n)-A008683(A008574(n))`
-/

namespace A130818.P9606798533709034464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070910 (n + 1) - A008683 (A008574 n).toNat

end

end A130818.P9606798533709034464

/-! ## A130818.P9675120777011370910

`A070910(n)+A008683(2*A008574(n))`
-/

namespace A130818.P9675120777011370910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070910 (n + 1) + A008683 (2 * A008574 n).toNat

end

end A130818.P9675120777011370910

/-! ## A130818.P14171223137394480749

`A070910(n)/(A209229(A005408(n))+1)`
-/

namespace A130818.P14171223137394480749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070910 (n + 1) : ℚ) / (A209229 (A005408 n).toNat + 1 : ℚ)

end

end A130818.P14171223137394480749

/-! ## A130818.P880669812961849132

`A070910(n)+A110654(n)-A065033(n)`
-/

namespace A130818.P880669812961849132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070910 (n + 1) + (A110654 n - A065033 n)

end

end A130818.P880669812961849132

/-! ## A130818.P15638564712833820151

`A070910(n)-A110654(A065033(n)-A110654(n))`
-/

namespace A130818.P15638564712833820151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070910 (n + 1) - A110654 (A065033 n - A110654 n).toNat

end

end A130818.P15638564712833820151

/-! ## A130818.P12457443593785492049

`A004526(n+1)+A070910(n)-A065033(n)`
-/

namespace A130818.P12457443593785492049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A070910 (n + 1) - A065033 n)

end

end A130818.P12457443593785492049

/-! ## A130818.P9967272624062903312

`A070910(n)-(A065033(2*n)-n)`
-/

namespace A130818.P9967272624062903312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070910 (n + 1) - (A065033 (2 * n) - (n : ℤ))

end

end A130818.P9967272624062903312

/-!
# A130819: 2*k appears 2*k-1 times.

The programs for A130819, the canonical program `A130819.P5334675930455341645` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130819 has offset 1).

The definition of A130819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130819.P6798019589197324239

`∑[2*char[n²]]`
-/

namespace A130819.P6798019589197324239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130819.P6798019589197324239

namespace A130819

/-- `∑[2*char[n²]]` -/
def P6798019589197324239.Spec : Prop :=
  ∀ n, (P6798019589197324239.a n : ℤ) = A130819 (n + 1)

end A130819

/-! ## A130819.P13812234189869727079

`2*ceil(sqrt(cos(1)+n))`
-/

namespace A130819.P13812234189869727079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (Real.cos (1 : ℝ) + (n : ℝ))⌉

end

end A130819.P13812234189869727079

namespace A130819

/-- `2*ceil(sqrt(cos(1)+n))` -/
def P13812234189869727079.Spec : Prop :=
  ∀ n, P13812234189869727079.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P15781018921119130487

`2*ceil(sqrt(sin(1)+n))`
-/

namespace A130819.P15781018921119130487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (Real.sin (1 : ℝ) + (n : ℝ))⌉

end

end A130819.P15781018921119130487

namespace A130819

/-- `2*ceil(sqrt(sin(1)+n))` -/
def P15781018921119130487.Spec : Prop :=
  ∀ n, P15781018921119130487.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P16111920639817747271

`2*ceil(sqrt(n-cos(2)))`
-/

namespace A130819.P16111920639817747271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt ((n : ℝ) - Real.cos (2 : ℝ))⌉

end

end A130819.P16111920639817747271

namespace A130819

/-- `2*ceil(sqrt(n-cos(2)))` -/
def P16111920639817747271.Spec : Prop :=
  ∀ n, P16111920639817747271.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P6611497028435067952

`2*ceil(sqrt(atan(1)+n))`
-/

namespace A130819.P6611497028435067952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (Real.arctan (1 : ℝ) + (n : ℝ))⌉

end

end A130819.P6611497028435067952

namespace A130819

/-- `2*ceil(sqrt(atan(1)+n))` -/
def P6611497028435067952.Spec : Prop :=
  ∀ n, P6611497028435067952.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P765643017240222367

`2*ceil(1/acot(sqrt(n)))`
-/

namespace A130819.P765643017240222367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈1 / SequenceMachineLib.acot (Real.sqrt (n : ℝ))⌉

end

end A130819.P765643017240222367

namespace A130819

/-- `2*ceil(1/acot(sqrt(n)))` -/
def P765643017240222367.Spec : Prop :=
  ∀ n, P765643017240222367.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P3768324320009040774

`2*ceil(sqrt(acos(γ)+n))`
-/

namespace A130819.P3768324320009040774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (Real.arccos Real.eulerMascheroniConstant + (n : ℝ))⌉

end

end A130819.P3768324320009040774

namespace A130819

/-- `2*ceil(sqrt(acos(γ)+n))` -/
def P3768324320009040774.Spec : Prop :=
  ∀ n, P3768324320009040774.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P3593687234436298101

`∑[char[n²]]/tan(acot(2))`
-/

namespace A130819.P3593687234436298101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A130819.P3593687234436298101

namespace A130819

/-- `∑[char[n²]]/tan(acot(2))` -/
def P3593687234436298101.Spec : Prop :=
  ∀ n, P3593687234436298101.a n = (A130819 (n + 1) : ℝ)

end A130819

/-! ## A130819.P14711120632463781156

`a(n-1)+2*char[n²]` with `a(0)=2`
-/

namespace A130819.P14711120632463781156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * (if ∃ j, f1 j = n then 1 else 0)

end

end A130819.P14711120632463781156

namespace A130819

/-- `a(n-1)+2*char[n²]` -/
def P14711120632463781156.Spec : Prop :=
  ∀ n, (P14711120632463781156.a n : ℤ) = A130819 (n + 1)

end A130819

/-! ## A130819.P10204030449279019760

`∑[A000122(n)]+1`
-/

namespace A130819.P10204030449279019760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130819.P10204030449279019760

namespace A130819

/-- `∑[A000122(n)]+1` -/
def P10204030449279019760.Spec : Prop :=
  ∀ n, P10204030449279019760.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P12062023285003247065

`Δ[2*A327672(n)]`
-/

namespace A130819.P12062023285003247065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130819.P12062023285003247065

namespace A130819

/-- `Δ[2*A327672(n)]` -/
def P12062023285003247065.Spec : Prop :=
  ∀ n, P12062023285003247065.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P8617322041256319569

`A004277(∑[char[n²]])`
-/

namespace A130819.P8617322041256319569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130819.P8617322041256319569

namespace A130819

/-- `A004277(∑[char[n²]])` -/
def P8617322041256319569.Spec : Prop :=
  ∀ n, P8617322041256319569.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P4445470049837980141

`A005843(∑[char[n²]])`
-/

namespace A130819.P4445470049837980141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130819.P4445470049837980141

namespace A130819

/-- `A005843(∑[char[n²]])` -/
def P4445470049837980141.Spec : Prop :=
  ∀ n, P4445470049837980141.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P5334675930455341645

`A001650(n+1)+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130819

/-- `A001650(n+1)+1` -/
def P5334675930455341645.Spec : Prop :=
  ∀ n, P5334675930455341645.a n = A130819 (n + 1)

theorem P5334675930455341645.correct : P5334675930455341645.Spec := by
  intro n
  simp only [A130819, Nat.add_sub_cancel]

end A130819

/-! ## A130819.P4975769912317512673

`A131506(n+1)-1`
-/

namespace A130819.P4975769912317512673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131506 (n + 1) - 1

end

end A130819.P4975769912317512673

namespace A130819

/-- `A131506(n+1)-1` -/
def P4975769912317512673.Spec : Prop :=
  ∀ n, P4975769912317512673.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P3790418188757246155

`2*(A000196(n)+1)`
-/

namespace A130819.P3790418188757246155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000196 n + 1)

end

end A130819.P3790418188757246155

namespace A130819

/-- `2*(A000196(n)+1)` -/
def P3790418188757246155.Spec : Prop :=
  ∀ n, P3790418188757246155.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P12662659417996872077

`2*A003059(n+1)`
-/

namespace A130819.P12662659417996872077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003059 (n + 1)

end

end A130819.P12662659417996872077

namespace A130819

/-- `2*A003059(n+1)` -/
def P12662659417996872077.Spec : Prop :=
  ∀ n, P12662659417996872077.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P11712297217437846064

`or(1, A000267(n))+1`
-/

namespace A130819.P11712297217437846064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000267 n) + 1

end

end A130819.P11712297217437846064

namespace A130819

/-- `or(1, A000267(n))+1` -/
def P11712297217437846064.Spec : Prop :=
  ∀ n, P11712297217437846064.a n = A130819 (n + 1)

end A130819

/-! ## A130819.P2319504177843564820

`A112594(n)+2-n`
-/

namespace A130819.P2319504177843564820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112594 n + (2 - (n : ℤ))

end

end A130819.P2319504177843564820

namespace A130819

/-- `A112594(n)+2-n` -/
def P2319504177843564820.Spec : Prop :=
  ∀ n, P2319504177843564820.a n = A130819 (n + 1)

end A130819

/-!
# A130821: 2n-1 appears 2n times.

The programs for A130821, the canonical program `A130821.P15508198224782849712` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130821 has offset 1).

The definition of A130821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130821.P15508198224782849712

`A131507(ceil((n+1)/2)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130821

/-- `A131507(ceil((n+1)/2)-1)` -/
def P15508198224782849712.Spec : Prop :=
  ∀ n, P15508198224782849712.a n = A130821 (n + 1)

theorem P15508198224782849712.correct : P15508198224782849712.Spec := by
  intro n
  simp only [A130821, Nat.add_sub_cancel]

end A130821

/-! ## A130821.P18298421065055792693

`2*round(sqrt(n+1))-1`
-/

namespace A130821.P18298421065055792693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1

end

end A130821.P18298421065055792693

namespace A130821

/-- `2*round(sqrt(n+1))-1` -/
def P18298421065055792693.Spec : Prop :=
  ∀ n, P18298421065055792693.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P16554472581834397550

`or(1, floor(1/Δ[sqrt(n)])-1)`
-/

namespace A130821.P16554472581834397550
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (⌊1 / (f1 (n + 1) - f1 n)⌋ - 1)

end

end A130821.P16554472581834397550

namespace A130821

/-- `or(1, floor(1/Δ[sqrt(n)])-1)` -/
def P16554472581834397550.Spec : Prop :=
  ∀ n, P16554472581834397550.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P9852857248929251099

`(2*comp[n²]+1)%(n+2)`
-/

namespace A130821.P9852857248929251099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) % (n + 2)

end

end A130821.P9852857248929251099

namespace A130821

/-- `(2*comp[n²]+1)%(n+2)` -/
def P9852857248929251099.Spec : Prop :=
  ∀ n, (P9852857248929251099.a n : ℤ) = A130821 (n + 1)

end A130821

/-! ## A130821.P2845651667477723595

`A307531(or(1, n))`
-/

namespace A130821.P2845651667477723595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (Nat.lor 1 n)

end

end A130821.P2845651667477723595

namespace A130821

/-- `A307531(or(1, n))` -/
def P2845651667477723595.Spec : Prop :=
  ∀ n, P2845651667477723595.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P4853989104204415471

`A004273(round(sqrt(n+1)))`
-/

namespace A130821.P4853989104204415471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat

end

end A130821.P4853989104204415471

namespace A130821

/-- `A004273(round(sqrt(n+1)))` -/
def P4853989104204415471.Spec : Prop :=
  ∀ n, P4853989104204415471.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P18198049882705232321

`A060747(round(sqrt(n+1)))`
-/

namespace A130821.P18198049882705232321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat

end

end A130821.P18198049882705232321

namespace A130821

/-- `A060747(round(sqrt(n+1)))` -/
def P18198049882705232321.Spec : Prop :=
  ∀ n, P18198049882705232321.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P659099615931309597

`A109613(A055086(n))`
-/

namespace A130821.P659099615931309597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A055086 n).toNat

end

end A130821.P659099615931309597

namespace A130821

/-- `A109613(A055086(n))` -/
def P659099615931309597.Spec : Prop :=
  ∀ n, P659099615931309597.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P17229723308763093735

`A005408(A259361(n))`
-/

namespace A130821.P17229723308763093735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A259361 n).toNat

end

end A130821.P17229723308763093735

namespace A130821

/-- `A005408(A259361(n))` -/
def P17229723308763093735.Spec : Prop :=
  ∀ n, P17229723308763093735.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P7287190071020427392

`A307531(A109613(n))`
-/

namespace A130821.P7287190071020427392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (A109613 n).toNat

end

end A130821.P7287190071020427392

namespace A130821

/-- `A307531(A109613(n))` -/
def P7287190071020427392.Spec : Prop :=
  ∀ n, P7287190071020427392.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P11825876915235830666

`A071797(A053187(n+1))`
-/

namespace A130821.P11825876915235830666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A053187 (n + 1)).toNat

end

end A130821.P11825876915235830666

namespace A130821

/-- `A071797(A053187(n+1))` -/
def P11825876915235830666.Spec : Prop :=
  ∀ n, P11825876915235830666.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P11999409068971261126

`A116921(A027709(n+1))`
-/

namespace A130821.P11999409068971261126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A027709 (n + 1)).toNat

end

end A130821.P11999409068971261126

namespace A130821

/-- `A116921(A027709(n+1))` -/
def P11999409068971261126.Spec : Prop :=
  ∀ n, P11999409068971261126.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P16999033208356061947

`A023444(A130829(n+1))`
-/

namespace A130821.P16999033208356061947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A130829 (n + 1)).toNat

end

end A130821.P16999033208356061947

namespace A130821

/-- `A023444(A130829(n+1))` -/
def P16999033208356061947.Spec : Prop :=
  ∀ n, P16999033208356061947.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P15657167600318991337

`A267458(A167991(n+1))`
-/

namespace A130821.P15657167600318991337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A167991 (n + 1)).toNat

end

end A130821.P15657167600318991337

namespace A130821

/-- `A267458(A167991(n+1))` -/
def P15657167600318991337.Spec : Prop :=
  ∀ n, P15657167600318991337.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P2588105377320268900

`A109613(A000267(n)-1)`
-/

namespace A130821.P2588105377320268900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A000267 n - 1).toNat

end

end A130821.P2588105377320268900

namespace A130821

/-- `A109613(A000267(n)-1)` -/
def P2588105377320268900.Spec : Prop :=
  ∀ n, P2588105377320268900.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P3721972072574022995

`xor(A055086(n), A118175(n))`
-/

namespace A130821.P3721972072574022995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055086 n) (A118175 n)

end

end A130821.P3721972072574022995

namespace A130821

/-- `xor(A055086(n), A118175(n))` -/
def P3721972072574022995.Spec : Prop :=
  ∀ n, P3721972072574022995.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P909674888688589139

`A001650(1-A000194(n)+n)`
-/

namespace A130821.P909674888688589139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (1 - A000194 n + (n : ℤ)).toNat

end

end A130821.P909674888688589139

namespace A130821

/-- `A001650(1-A000194(n)+n)` -/
def P909674888688589139.Spec : Prop :=
  ∀ n, P909674888688589139.a n = A130821 (n + 1)

end A130821

/-! ## A130821.P17481890303483761827

`A001650(n+2-A003059(n+1))`
-/

namespace A130821.P17481890303483761827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 ((n + 2 : ℤ) - A003059 (n + 1)).toNat

end

end A130821.P17481890303483761827

namespace A130821

/-- `A001650(n+2-A003059(n+1))` -/
def P17481890303483761827.Spec : Prop :=
  ∀ n, P17481890303483761827.a n = A130821 (n + 1)

end A130821

/-!
# A130822: Two 1's, one 2, four 3's, three 4's ...

The programs for A130822, there is no canonical definition to state claims against.
-/

/-! ## A130822.P813372980344793989

`∑[char[∑[n]+n%2]]`
-/

namespace A130822.P813372980344793989
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n % 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130822.P813372980344793989

/-! ## A130822.P17910450739108149129

`∑[char[∑[n]+and(1, n)]]`
-/

namespace A130822.P17910450739108149129
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + Nat.land 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130822.P17910450739108149129

/-! ## A130822.P16695252964707300797

`comp[∑[xor(1, n+1)]]-n`
-/

namespace A130822.P16695252964707300797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A130822.P16695252964707300797

/-! ## A130822.P10582139281364200588

`comp[∑[xor(1, n)]-1]-n`
-/

namespace A130822.P10582139281364200588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130822.P10582139281364200588

/-! ## A130822.P1223397121709626926

`∑[char[1-∑[xor(1, -n)]]]`
-/

namespace A130822.P1223397121709626926
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130822.P1223397121709626926

/-! ## A130822.P9053697043900150889

`comp[∑[n]-and(1, n)]-n`
-/

namespace A130822.P9053697043900150889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.land 1 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130822.P9053697043900150889

/-! ## A130822.P6364933181429741029

`comp[∑[n]-or(1, n)]-n`
-/

namespace A130822.P6364933181429741029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.lor 1 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130822.P6364933181429741029

/-! ## A130822.P164462262918668933

`∑[char[∑[xor(1, n)+1]]]+1`
-/

namespace A130822.P164462262918668933
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130822.P164462262918668933

/-! ## A130822.P10966675114393783380

`∑[char[∑[n+1]-or(1, n)]]`
-/

namespace A130822.P10966675114393783380
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (Nat.lor 1 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130822.P10966675114393783380

/-! ## A130822.P5885164734346054065

`∑[char[char[2*n+1]+∑[n]]]`
-/

namespace A130822.P5885164734346054065
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130822.P5885164734346054065

/-!
# A130823: Each odd number appears thrice.

The programs for A130823, the canonical program `A130823.P3363031834676237035` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130823 has offset 1).

The definition of A130823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130823.P3363031834676237035

`2*floor(n/3)+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130823

/-- `2*floor(n/3)+1` -/
def P3363031834676237035.Spec : Prop :=
  ∀ n, P3363031834676237035.a n = A130823 (n + 1)

theorem P3363031834676237035.correct : P3363031834676237035.Spec := by
  intro n
  simp only [A130823, Nat.add_sub_cancel]

end A130823

/-! ## A130823.P2675730197220570031

`or(1, floor(2*n/3))`
-/

namespace A130823.P2675730197220570031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊2 * ((n : ℚ) / 3)⌋

end

end A130823.P2675730197220570031

namespace A130823

/-- `or(1, floor(2*n/3))` -/
def P2675730197220570031.Spec : Prop :=
  ∀ n, P2675730197220570031.a n = A130823 (n + 1)

end A130823

/-! ## A130823.P18153114508628547721

`xor(1, 2*floor(n/3))`
-/

namespace A130823.P18153114508628547721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊(n : ℚ) / 3⌋)

end

end A130823.P18153114508628547721

namespace A130823

/-- `xor(1, 2*floor(n/3))` -/
def P18153114508628547721.Spec : Prop :=
  ∀ n, P18153114508628547721.a n = A130823 (n + 1)

end A130823

/-! ## A130823.P1695143573853911487

`∑[abs((1-n²)%3)]`
-/

namespace A130823.P1695143573853911487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - (n ^ 2 : ℤ)) 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P1695143573853911487

namespace A130823

/-- `∑[abs((1-n²)%3)]` -/
def P1695143573853911487.Spec : Prop :=
  ∀ n, P1695143573853911487.a n = A130823 (n + 1)

end A130823

/-! ## A130823.P11085249549483846121

`∑[dr(1-n²)%3]`
-/

namespace A130823.P11085249549483846121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - (n ^ 2 : ℤ)) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P11085249549483846121

namespace A130823

/-- `∑[dr(1-n²)%3]` -/
def P11085249549483846121.Spec : Prop :=
  ∀ n, (P11085249549483846121.a n : ℤ) = A130823 (n + 1)

end A130823

/-! ## A130823.P6420003991532212620

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A130823.P6420003991532212620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P6420003991532212620

namespace A130823

/-- `∑[abs(a(n-3))]` -/
def P6420003991532212620.Spec : Prop :=
  ∀ n, (P6420003991532212620.a n : ℤ) = A130823 (n + 1)

end A130823

/-! ## A130823.P63312933287928497

`∑[2*a(n%3)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A130823.P63312933287928497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  2 * f1 (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P63312933287928497

namespace A130823

/-- `∑[2*a(n%3)]` -/
def P63312933287928497.Spec : Prop :=
  ∀ n, (P63312933287928497.a n : ℤ) = A130823 (n + 1)

end A130823

/-! ## A130823.P5552547474776134646

`∑[lcm(2, a(n-3))]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A130823.P5552547474776134646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  Nat.lcm 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P5552547474776134646

namespace A130823

/-- `∑[lcm(2, a(n-3))]` -/
def P5552547474776134646.Spec : Prop :=
  ∀ n, (P5552547474776134646.a n : ℤ) = A130823 (n + 1)

end A130823

/-! ## A130823.P10749909233992191814

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A130823.P10749909233992191814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P10749909233992191814

namespace A130823

/-- `∑[dr(a(n-3))]` -/
def P10749909233992191814.Spec : Prop :=
  ∀ n, (P10749909233992191814.a n : ℤ) = A130823 (n + 1)

end A130823

/-! ## A130823.P14290462509321434375

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A130823.P14290462509321434375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P14290462509321434375

namespace A130823

/-- `∑[floor(a(n-3))]` -/
def P14290462509321434375.Spec : Prop :=
  ∀ n, (P14290462509321434375.a n : ℤ) = A130823 (n + 1)

end A130823

/-! ## A130823.P10612578467524158108

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A130823.P10612578467524158108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P10612578467524158108

namespace A130823

/-- `∑[ceil(a(n-3))]` -/
def P10612578467524158108.Spec : Prop :=
  ∀ n, (P10612578467524158108.a n : ℤ) = A130823 (n + 1)

end A130823

/-! ## A130823.P14146135555056053003

`∑[round(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A130823.P14146135555056053003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P14146135555056053003

namespace A130823

/-- `∑[round(a(n-3))]` -/
def P14146135555056053003.Spec : Prop :=
  ∀ n, (P14146135555056053003.a n : ℤ) = A130823 (n + 1)

end A130823

/-! ## A130823.P5120061081279911093

`∑[a(n-3)%3]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A130823.P5120061081279911093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  f1 (n - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P5120061081279911093

namespace A130823

/-- `∑[a(n-3)%3]` -/
def P5120061081279911093.Spec : Prop :=
  ∀ n, (P5120061081279911093.a n : ℤ) = A130823 (n + 1)

end A130823

/-! ## A130823.P15167954387807143617

`∑[and(2, a(n-3))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A130823.P15167954387807143617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  Nat.land 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130823.P15167954387807143617

namespace A130823

/-- `∑[and(2, a(n-3))]` -/
def P15167954387807143617.Spec : Prop :=
  ∀ n, (P15167954387807143617.a n : ℤ) = A130823 (n + 1)

end A130823

/-!
# A130824: a(n) = 2*A004273(n).

The programs for A130824, the canonical program `A130824.P3242499957415504083` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130824 has offset 0).

The definition of A130824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130824.P3242499957415504083

`2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130824

/-- `2*a(n-1)-a(n-2)` -/
def P3242499957415504083.Spec : Prop :=
  ∀ n, P3242499957415504083.a n = A130824 n

theorem P3242499957415504083.correct : P3242499957415504083.Spec := by
  intro n
  simp only [A130824]

end A130824

/-! ## A130824.P482482501265083334

`2*A004273(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A130824.P482482501265083334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004273 n

end

end A130824.P482482501265083334

namespace A130824

/-- `2*A004273(n)` -/
def P482482501265083334.Spec : Prop :=
  ∀ n, P482482501265083334.a n = A130824 n

end A130824

/-!
# A130828: Primes p such that the sum of the digits of p^p is a prime.

The programs for A130828, there is no canonical definition to state claims against.
-/

/-! ## A130828.P4542406474512015001

`p?[A066233(n+1)]`
-/

namespace A130828.P4542406474512015001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130828.P4542406474512015001

/-! ## A130828.P2509944996428742213

`record[p?[A066233(A052938(n))]]`
-/

namespace A130828.P2509944996428742213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066233 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130828.P2509944996428742213

/-! ## A130828.P13753032250488691329

`record[A006530(A066233(n+2))]`
-/

namespace A130828.P13753032250488691329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066233 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130828.P13753032250488691329

/-! ## A130828.P18179566984115003947

`filter[A066233(n+1), A010051(#)]`
-/

namespace A130828.P18179566984115003947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A130828.P18179566984115003947

/-! ## A130828.P546892750802999595

`filter[A066233(n+1), A080339(#)]`
-/

namespace A130828.P546892750802999595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A130828.P546892750802999595

/-!
# A130829: 2n+1 appears 2n times.

The programs for A130829, the canonical program `A130829.P16361014464931284392` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130829 has offset 1).

The definition of A130829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130829.P16361014464931284392

`2*floor(sqrt(n+1)+1/2)+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130829

/-- `2*floor(sqrt(n+1)+1/2)+1` -/
def P16361014464931284392.Spec : Prop :=
  ∀ n, P16361014464931284392.a n = A130829 (n + 1)

theorem P16361014464931284392.correct : P16361014464931284392.Spec := by
  intro n
  simp only [A130829, Nat.add_sub_cancel]

end A130829

/-! ## A130829.P9493140833894987029

`or(1, ceil(record[sqrt(xor(3, n))]))`
-/

namespace A130829.P9493140833894987029
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A130829.P9493140833894987029

namespace A130829

/-- `or(1, ceil(record[sqrt(xor(3, n))]))` -/
def P9493140833894987029.Spec : Prop :=
  ∀ n, P9493140833894987029.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P2879303191351907161

`or(1, ceil(2*sqrt(n+1)))`
-/

namespace A130829.P2879303191351907161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈2 * Real.sqrt (n + 1 : ℝ)⌉

end

end A130829.P2879303191351907161

namespace A130829

/-- `or(1, ceil(2*sqrt(n+1)))` -/
def P2879303191351907161.Spec : Prop :=
  ∀ n, P2879303191351907161.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P1906616279064392764

`xor(1, 2*round(root(n+1, 2)))`
-/

namespace A130829.P1906616279064392764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (1 / (2 : ℝ))))

end

end A130829.P1906616279064392764

namespace A130829

/-- `xor(1, 2*round(root(n+1, 2)))` -/
def P1906616279064392764.Spec : Prop :=
  ∀ n, P1906616279064392764.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P7904862388203435520

`A005408(round(sqrt(n+1)))`
-/

namespace A130829.P7904862388203435520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat

end

end A130829.P7904862388203435520

namespace A130829

/-- `A005408(round(sqrt(n+1)))` -/
def P7904862388203435520.Spec : Prop :=
  ∀ n, P7904862388203435520.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P8296231120428583316

`A144396(round(sqrt(n+1)))`
-/

namespace A130829.P8296231120428583316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat

end

end A130829.P8296231120428583316

namespace A130829

/-- `A144396(round(sqrt(n+1)))` -/
def P8296231120428583316.Spec : Prop :=
  ∀ n, P8296231120428583316.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P9988199459323739634

`A004273(comp[n²]-n)`
-/

namespace A130829.P9988199459323739634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A130829.P9988199459323739634

namespace A130829

/-- `A004273(comp[n²]-n)` -/
def P9988199459323739634.Spec : Prop :=
  ∀ n, P9988199459323739634.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P15781798372754344469

`A060747(comp[n²]-n)`
-/

namespace A130829.P15781798372754344469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A130829.P15781798372754344469

namespace A130829

/-- `A060747(comp[n²]-n)` -/
def P15781798372754344469.Spec : Prop :=
  ∀ n, P15781798372754344469.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P7190278577006780056

`A109613(ceil(sqrt(4*(n+1))))`
-/

namespace A130829.P7190278577006780056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 ⌈Real.sqrt (4 * (n + 1) : ℝ)⌉.toNat

end

end A130829.P7190278577006780056

namespace A130829

/-- `A109613(ceil(sqrt(4*(n+1))))` -/
def P7190278577006780056.Spec : Prop :=
  ∀ n, P7190278577006780056.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P6344761144405048488

`abs(∑[A089800(n)+1]-n)`
-/

namespace A130829.P6344761144405048488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089800 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A130829.P6344761144405048488

namespace A130829

/-- `abs(∑[A089800(n)+1]-n)` -/
def P6344761144405048488.Spec : Prop :=
  ∀ n, P6344761144405048488.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P17216729015851531470

`log2(A081294(round(sqrt(n+1))+1))`
-/

namespace A130829.P17216729015851531470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A081294 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) + 1).toNat : ℝ)

end

end A130829.P17216729015851531470

namespace A130829

/-- `log2(A081294(round(sqrt(n+1))+1))` -/
def P17216729015851531470.Spec : Prop :=
  ∀ n, P17216729015851531470.a n = (A130829 (n + 1) : ℝ)

end A130829

/-! ## A130829.P4429997479977715706

`A000027(2*∑[char[∑[2*n]]]+1)`
-/

namespace A130829.P4429997479977715706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A130829.P4429997479977715706

namespace A130829

/-- `A000027(2*∑[char[∑[2*n]]]+1)` -/
def P4429997479977715706.Spec : Prop :=
  ∀ n, P4429997479977715706.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P14099627412642554117

`A002265(8*∑[char[∑[2*n]]]+4)`
-/

namespace A130829.P14099627412642554117
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (8 * (∑ j ∈ Finset.range (n + 1), f1 j) + 4)

end

end A130829.P14099627412642554117

namespace A130829

/-- `A002265(8*∑[char[∑[2*n]]]+4)` -/
def P14099627412642554117.Spec : Prop :=
  ∀ n, P14099627412642554117.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P8093416873621617394

`A004442(A001670(n+1))`
-/

namespace A130829.P8093416873621617394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A001670 (n + 1)).toNat

end

end A130829.P8093416873621617394

namespace A130829

/-- `A004442(A001670(n+1))` -/
def P8093416873621617394.Spec : Prop :=
  ∀ n, P8093416873621617394.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P14064723065589580728

`A014411(A053187(n+1))`
-/

namespace A130829.P14064723065589580728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014411 (A053187 (n + 1)).toNat

end

end A130829.P14064723065589580728

namespace A130829

/-- `A014411(A053187(n+1))` -/
def P14064723065589580728.Spec : Prop :=
  ∀ n, P14064723065589580728.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P5163765720553779764

`A106249(A027709(n+1))`
-/

namespace A130829.P5163765720553779764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A027709 (n + 1)).toNat

end

end A130829.P5163765720553779764

namespace A130829

/-- `A106249(A027709(n+1))` -/
def P5163765720553779764.Spec : Prop :=
  ∀ n, P5163765720553779764.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P4851835425333454172

`A009056(A130821(n+1))`
-/

namespace A130829.P4851835425333454172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A130821 (n + 1)).toNat

end

end A130829.P4851835425333454172

namespace A130829

/-- `A009056(A130821(n+1))` -/
def P4851835425333454172.Spec : Prop :=
  ∀ n, P4851835425333454172.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P16010445176456977848

`A004525(A143730(n+1))`
-/

namespace A130829.P16010445176456977848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A143730 (n + 1)).toNat

end

end A130829.P16010445176456977848

namespace A130829

/-- `A004525(A143730(n+1))` -/
def P16010445176456977848.Spec : Prop :=
  ∀ n, P16010445176456977848.a n = A130829 (n + 1)

end A130829

/-! ## A130829.P10264848038049804462

`A307136(A000194(n+1)²)`
-/

namespace A130829.P10264848038049804462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307136 (A000194 (n + 1) ^ 2).toNat

end

end A130829.P10264848038049804462

namespace A130829

/-- `A307136(A000194(n+1)²)` -/
def P10264848038049804462.Spec : Prop :=
  ∀ n, P10264848038049804462.a n = A130829 (n + 1)

end A130829

/-!
# A130830: Irregular triangle read by rows: row(n) consists of the first A011764(n-1) terms of A006047.

The programs for A130830, there is no canonical definition to state claims against.
-/

/-! ## A130830.P2320946718494783125

`A338854(A023705(n+1)+64)`
-/

namespace A130830.P2320946718494783125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A023705 (n + 1) + 64).toNat

end

end A130830.P2320946718494783125

/-! ## A130830.P13225367935461051364

`∏{digits}[A231874(n+2), #]`
-/

namespace A130830.P13225367935461051364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231874 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A130830.P13225367935461051364

/-! ## A130830.P1549762694100743861

`A007954(A231874(n+2))`
-/

namespace A130830.P1549762694100743861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A231874 (n + 2)).toNat

end

end A130830.P1549762694100743861

/-! ## A130830.P12022271044155335615

`A007954(A007932(3*n+4))`
-/

namespace A130830.P12022271044155335615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007932 (3 * n + 4)).toNat

end

end A130830.P12022271044155335615

/-! ## A130830.P2014900856607579223

`A051801(10*A007932(n+1))`
-/

namespace A130830.P2014900856607579223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (10 * A007932 (n + 1)).toNat

end

end A130830.P2014900856607579223

/-!
# A130831: Irregular triangle read by rows: row(n) contains the first A001146(n) terms of A001316.

The programs for A130831, there is no canonical definition to state claims against.
-/

/-! ## A130831.P11668830489537814339

`A243036(A243036(n+1)²*A380788(n+1))`
-/

namespace A130831.P11668830489537814339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243036 (A243036 (n + 1) ^ 2 * A380788 (n + 1)).toNat

end

end A130831.P11668830489537814339

/-! ## A130831.P16257681674341536192

`A048896(∑[A262750(A300951(n))])`
-/

namespace A130831.P16257681674341536192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262750 (A300951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130831.P16257681674341536192

/-! ## A130831.P6743355946317712615

`filter[A130830(n+1), A010060(#)]`
-/

namespace A130831.P6743355946317712615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A130831.P6743355946317712615

/-! ## A130831.P9806368490163766387

`filter[A130830(n+1), A011655(#)]`
-/

namespace A130831.P9806368490163766387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A130831.P9806368490163766387

/-! ## A130831.P8970388571166911832

`filter[A130830(n+1), A209229(#)]`
-/

namespace A130831.P8970388571166911832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A130831.P8970388571166911832

/-!
# A130832: 

The programs for A130832, there is no canonical definition to state claims against.
-/

/-! ## A130832.P16378948664527355068

`∑[20^2^n]`
-/

namespace A130832.P16378948664527355068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130832.P16378948664527355068

/-!
# A130835: Sum of all numbers having n or fewer digits and having the sum of their digits equal to n.

The programs for A130835, there is no canonical definition to state claims against.
-/

/-! ## A130835.P5066432110174128302

`A000042(n+1)*A167403(n+1)`
-/

namespace A130835.P5066432110174128302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A167403 (n + 1)

end

end A130835.P5066432110174128302

/-! ## A130835.P1712019660728343095

`A002275(n+1)*A167403(n+1)`
-/

namespace A130835.P1712019660728343095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) * A167403 (n + 1)

end

end A130835.P1712019660728343095

/-! ## A130835.P3053649130835177022

`A131664(A000124(n))*A167403(n+1)`
-/

namespace A130835.P3053649130835177022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (A000124 n).toNat * A167403 (n + 1)

end

end A130835.P3053649130835177022

/-! ## A130835.P4527523087766605360

`A131664(A084265(n))*A167403(n+1)`
-/

namespace A130835.P4527523087766605360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (A084265 n).toNat * A167403 (n + 1)

end

end A130835.P4527523087766605360

/-! ## A130835.P8502434693788279129

`A131664(A133263(n))*A167403(n+1)`
-/

namespace A130835.P8502434693788279129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (A133263 n).toNat * A167403 (n + 1)

end

end A130835.P8502434693788279129

/-! ## A130835.P4434339747586657432

`A131664(A236453(n))*A167403(n+1)`
-/

namespace A130835.P4434339747586657432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (A236453 n).toNat * A167403 (n + 1)

end

end A130835.P4434339747586657432

/-!
# A130836: Square array d(m,n) = multiplicative distance between m>=1 and n>=1, read by antidiagonals.

The programs for A130836, the canonical program `A130836.P4611661305239200028` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130836 has offset 1).

The definition of A130836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130836.P4799138498790520731

`A001222(A003990(n+1)/A003989(n+1))`
-/

namespace A130836.P4799138498790520731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A003990 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ))).toNat

end

end A130836.P4799138498790520731

namespace A130836

/-- `A001222(A003990(n+1)/A003989(n+1))` -/
def P4799138498790520731.Spec : Prop :=
  ∀ n, P4799138498790520731.a n = A130836 (n + 1)

end A130836

/-! ## A130836.P6886548169584016824

`A001222(A316431(A098350(n+1)))`
-/

namespace A130836.P6886548169584016824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A316431 (A098350 (n + 1)).toNat).toNat

end

end A130836.P6886548169584016824

namespace A130836

/-- `A001222(A316431(A098350(n+1)))` -/
def P6886548169584016824.Spec : Prop :=
  ∀ n, P6886548169584016824.a n = A130836 (n + 1)

end A130836

/-! ## A130836.P4611661305239200028

`∑{e}[A089913(n+1), #]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130836

/-- `∑{e}[A089913(n+1), #]` -/
def P4611661305239200028.Spec : Prop :=
  ∀ n, (P4611661305239200028.a n : ℤ) = A130836 (n + 1)

theorem P4611661305239200028.correct : P4611661305239200028.Spec := by
  intro n
  simp only [A130836, Nat.add_sub_cancel]

end A130836

/-! ## A130836.P10367794474069361317

`A001222(A089913(n+1))`
-/

namespace A130836.P10367794474069361317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089913 (n + 1)).toNat

end

end A130836.P10367794474069361317

namespace A130836

/-- `A001222(A089913(n+1))` -/
def P10367794474069361317.Spec : Prop :=
  ∀ n, P10367794474069361317.a n = A130836 (n + 1)

end A130836

/-! ## A130836.P5229167112088693034

`∑{e}[A285721(A285724(n+1))+1, #]`
-/

namespace A130836.P5229167112088693034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285721 (A285724 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A130836.P5229167112088693034

namespace A130836

/-- `∑{e}[A285721(A285724(n+1))+1, #]` -/
def P5229167112088693034.Spec : Prop :=
  ∀ n, (P5229167112088693034.a n : ℤ) = A130836 (n + 1)

end A130836

/-! ## A130836.P17354235972890000302

`∑{e}[A002260(A286157(A286101(n+1))), #]`
-/

namespace A130836.P17354235972890000302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286157 (A286101 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A130836.P17354235972890000302

namespace A130836

/-- `∑{e}[A002260(A286157(A286101(n+1))), #]` -/
def P17354235972890000302.Spec : Prop :=
  ∀ n, (P17354235972890000302.a n : ℤ) = A130836 (n + 1)

end A130836

/-! ## A130836.P9250158258525830643

`A001222(A003988(A286101(n+1)))`
-/

namespace A130836.P9250158258525830643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003988 (A286101 (n + 1)).toNat).toNat

end

end A130836.P9250158258525830643

namespace A130836

/-- `A001222(A003988(A286101(n+1)))` -/
def P9250158258525830643.Spec : Prop :=
  ∀ n, P9250158258525830643.a n = A130836 (n + 1)

end A130836

/-! ## A130836.P8437700512899497987

`A001222(A010783(A286102(n+1)))`
-/

namespace A130836.P8437700512899497987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A010783 (A286102 (n + 1)).toNat).toNat

end

end A130836.P8437700512899497987

namespace A130836

/-- `A001222(A010783(A286102(n+1)))` -/
def P8437700512899497987.Spec : Prop :=
  ∀ n, P8437700512899497987.a n = A130836 (n + 1)

end A130836

/-!
# A130838: Sorted list of strings that can be obtained by starting with 12 and repeatedly doubling any substring in place.

The programs for A130838, there is no canonical definition to state claims against.
-/

/-! ## A130838.P11939701967808113185

`10*A231873(n+1)+2`
-/

namespace A130838.P11939701967808113185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A231873 (n + 1) + 2

end

end A130838.P11939701967808113185

/-! ## A130838.P10076719374589009532

`A007931(2*lt[n, xor(n, floor(n/2))])`
-/

namespace A130838.P10076719374589009532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A130838.P10076719374589009532

/-! ## A130838.P4973372959849659178

`A007931(2*(2^floor(log2(n+1))+n+1))`
-/

namespace A130838.P4973372959849659178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (2 * (2 ^ Nat.log 2 (n + 1) + (n + 1)))

end

end A130838.P4973372959849659178

/-! ## A130838.P13298433536396799531

`A190642(A132140(n+1))`
-/

namespace A130838.P13298433536396799531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190642 (A132140 (n + 1)).toNat

end

end A130838.P13298433536396799531

/-! ## A130838.P15332523061604248881

`record[A007931(A065276(n+2))]`
-/

namespace A130838.P15332523061604248881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A065276 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130838.P15332523061604248881

/-!
# A130839: Sequence related to factorizations and prime signatures: a(1) = 1; for n>1,a(n) = A108464(n) - 2*A050322(n).

The programs for A130839, there is no canonical definition to state claims against.
-/

/-! ## A130839.P17867243364158357852

`A131802(A025487(n+1))`
-/

namespace A130839.P17867243364158357852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131802 (A025487 (n + 1)).toNat

end

end A130839.P17867243364158357852

/-! ## A130839.P15415425075961856368

`A131802(record[A046523(n+1)])`
-/

namespace A130839.P15415425075961856368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130839.P15415425075961856368

/-! ## A130839.P17180526367825355849

`A131802(record[A083258(n+1)])`
-/

namespace A130839.P17180526367825355849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130839.P17180526367825355849

/-! ## A130839.P193157440001964943

`A131802(record[A329899(n+1)])`
-/

namespace A130839.P193157440001964943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130839.P193157440001964943

/-! ## A130839.P7907850312468531179

`A131802(record[A051466(n+2)])`
-/

namespace A130839.P7907850312468531179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130839.P7907850312468531179

/-! ## A130839.P6410090677119969016

`A131802(A247451(n+1)*A307107(n+1))`
-/

namespace A130839.P6410090677119969016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131802 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A130839.P6410090677119969016

/-!
# A130840: a(n) = floor((1/16)*(16 + 2^n - 8*n + 8*n^2)).

The programs for A130840, the canonical program `A130840.P8222355827833846885` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130840 has offset 1).

The definition of A130840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(1/16*(16+2^n-8*n+8*n²))` (program `A130840.P8222355827833846885`, by `A130840.P8222355827833846885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130840.P6634236931835419951

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=13, a(6)=20, a(7)=30`
-/

namespace A130840.P6634236931835419951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 13, 20, 30] fun n a =>
  5 * a (n - 1) - 9 * a (n - 2) + 7 * a (n - 3) - 2 * a (n - 4)

end

end A130840.P6634236931835419951

namespace A130840

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P6634236931835419951.Spec : Prop :=
  ∀ n, P6634236931835419951.a n = A130840 (n + 1)

end A130840

/-! ## A130840.P8222355827833846885

`floor(1/16*(16+2^n-8*n+8*n²))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130840

/-- `floor(1/16*(16+2^n-8*n+8*n²))` -/
def P8222355827833846885.Spec : Prop :=
  ∀ n, P8222355827833846885.a n = A130840 (n + 1)

theorem P8222355827833846885.correct : P8222355827833846885.Spec := by
  intro n
  simp only [A130840, Nat.add_sub_cancel]

end A130840

/-! ## A130840.P9245293067664628238

`A000196(A108576(2*(n+2))+A026597(n))`
-/

namespace A130840.P9245293067664628238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A108576 (2 * (n + 2)) + A026597 n).toNat

end

end A130840.P9245293067664628238

namespace A130840

/-- `A000196(A108576(2*(n+2))+A026597(n))` -/
def P9245293067664628238.Spec : Prop :=
  ∀ n, P9245293067664628238.a n = A130840 (n + 1)

end A130840

/-!
# A130841: Number of ways to write n as a sum of oterms, where an oterm is an ordered product of (1+oterm), sorted by size and an empty product has value 1.

The programs for A130841, there is no canonical definition to state claims against.
-/

/-! ## A130841.P13508308677321295870

`A323048(A050318(n+2)+1)`
-/

namespace A130841.P13508308677321295870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A050318 (n + 2) + 1).toNat

end

end A130841.P13508308677321295870

/-! ## A130841.P3930058722721675761

`A335520(A335545(n))+A050318(n+2)`
-/

namespace A130841.P3930058722721675761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A335545 n).toNat + A050318 (n + 2)

end

end A130841.P3930058722721675761

/-!
# A130842: Positive even integers that start with the letter 't' .

The programs for A130842, there is no canonical definition to state claims against.
-/

/-! ## A130842.P5208054773550595648

`eq[A040091(n), A174991(n)]`
-/

namespace A130842.P5208054773550595648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130842.P5208054773550595648

/-! ## A130842.P17927053159809249717

`eq[A040093(n), A174991(n)]`
-/

namespace A130842.P17927053159809249717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130842.P17927053159809249717

/-! ## A130842.P7967575707730718404

`eq[A040094(n), A174991(n)]`
-/

namespace A130842.P7967575707730718404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130842.P7967575707730718404

/-! ## A130842.P1338366097955598708

`eq[A040099(n), A174991(n)]`
-/

namespace A130842.P1338366097955598708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130842.P1338366097955598708

/-! ## A130842.P17896400992637668267

`eq[A040109(n), A174991(n)]`
-/

namespace A130842.P17896400992637668267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040109 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130842.P17896400992637668267

/-!
# A130843: Numbers k for which a number m < k exists such that digitsum(binomial(k,m)) = k.

The programs for A130843, there is no canonical definition to state claims against.
-/

/-! ## A130843.P10892959006397397671

`lt[A116513(n+5)-2, A116505(3*n+1)]`
-/

namespace A130843.P10892959006397397671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116513 (n + 5) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116505 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130843.P10892959006397397671

/-! ## A130843.P9308293441679005260

`lt[A239599(2*(n+1)), A091761(A341132(2*n+3))]`
-/

namespace A130843.P9308293441679005260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091761 (A341132 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130843.P9308293441679005260

/-!
# A130844: a(n) = 2*a(n-1) + a(n-2) - a(n-3) + a(n-4), with a(1) = 0, a(2) = 3, a(3) = 5 and a(4) = 17.

The programs for A130844, the canonical program `A130844.P1011341056785309058` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130844 has offset 1).

The definition of A130844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` (program `A130844.P1011341056785309058`, by `A130844.P1011341056785309058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130844.P1011341056785309058

`2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=17`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130844

/-- `2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` -/
def P1011341056785309058.Spec : Prop :=
  ∀ n, P1011341056785309058.a n = A130844 (n + 1)

theorem P1011341056785309058.correct : P1011341056785309058.Spec := by
  intro n
  simp only [A130844, Nat.add_sub_cancel]

end A130844

/-!
# A130845: a(4n) = a(4n+1) = a(4n+2) = A001477(n), a(4n+3) = A005408(n).

The programs for A130845, the canonical program `A130845.P3165615795484626881` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130845 has offset 0).

The definition of A130845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130845.P3165615795484626881

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130845

/-- `2*a(n-4)-a(n-8)` -/
def P3165615795484626881.Spec : Prop :=
  ∀ n, P3165615795484626881.a n = A130845 n

theorem P3165615795484626881.correct : P3165615795484626881.Spec := by
  intro n
  simp only [A130845]

end A130845

/-! ## A130845.P1510365489946067463

`floor(n/gcd(4, gcd(4, n)-n))`
-/

namespace A130845.P1510365489946067463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.gcd 4 ((Nat.gcd 4 n : ℤ) - (n : ℤ)) : ℚ)⌋

end

end A130845.P1510365489946067463

namespace A130845

/-- `floor(n/gcd(4, gcd(4, n)-n))` -/
def P1510365489946067463.Spec : Prop :=
  ∀ n, P1510365489946067463.a n = A130845 n

end A130845

/-! ## A130845.P13712726063635865012

`floor(floor(n/2)/gcd(2, C(n, 3)))`
-/

namespace A130845.P13712726063635865012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ : ℚ) / (Nat.gcd 2 (Nat.choose n 3) : ℚ)⌋

end

end A130845.P13712726063635865012

namespace A130845

/-- `floor(floor(n/2)/gcd(2, C(n, 3)))` -/
def P13712726063635865012.Spec : Prop :=
  ∀ n, P13712726063635865012.a n = A130845 n

end A130845

/-! ## A130845.P9835626892416435880

`floor(lcm(n, ∑[n])/lcm(4, n+1))`
-/

namespace A130845.P9835626892416435880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (Nat.lcm 4 (n + 1) : ℚ)⌋

end

end A130845.P9835626892416435880

namespace A130845

/-- `floor(lcm(n, ∑[n])/lcm(4, n+1))` -/
def P9835626892416435880.Spec : Prop :=
  ∀ n, P9835626892416435880.a n = A130845 n

end A130845

/-! ## A130845.P9352469536138458710

`(2*n+1)%(2*n+1-Δ[n*floor(n/4)])`
-/

namespace A130845.P9352469536138458710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) ((2 * n + 1 : ℤ) - (f1 (n + 1) - f1 n))

end

end A130845.P9352469536138458710

namespace A130845

/-- `(2*n+1)%(2*n+1-Δ[n*floor(n/4)])` -/
def P9352469536138458710.Spec : Prop :=
  ∀ n, P9352469536138458710.a n = A130845 n

end A130845

/-! ## A130845.P10332876439031433919

`cos(π*n/2)/4-(n-1)*(2*sin(π*n/2)+(-1)^n-5)/16`
-/

namespace A130845.P10332876439031433919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ)) / 4 - ((n : ℤ) - 1 : ℝ) * ((2 * Real.sin (Real.pi * ((n : ℚ) / 2 : ℝ)) + ((-1) ^ n : ℝ) - 5) / 16)

end

end A130845.P10332876439031433919

namespace A130845

/-- `cos(π*n/2)/4-(n-1)*(2*sin(π*n/2)+(-1)^n-5)/16` -/
def P10332876439031433919.Spec : Prop :=
  ∀ n, P10332876439031433919.a n = (A130845 n : ℝ)

end A130845

/-! ## A130845.P15965801970131240510

`lcm(2, A004524(n))/2`
-/

namespace A130845.P15965801970131240510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A004524 n) : ℚ) / 2

end

end A130845.P15965801970131240510

namespace A130845

/-- `lcm(2, A004524(n))/2` -/
def P15965801970131240510.Spec : Prop :=
  ∀ n, P15965801970131240510.a n = (A130845 n : ℚ)

end A130845

/-! ## A130845.P639757377107428707

`∑[A130507(abs(1-n))]`
-/

namespace A130845.P639757377107428707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130845.P639757377107428707

namespace A130845

/-- `∑[A130507(abs(1-n))]` -/
def P639757377107428707.Spec : Prop :=
  ∀ n, P639757377107428707.a n = A130845 n

end A130845

/-! ## A130845.P4732669932009053756

`floor(n*A177704(n)/4)`
-/

namespace A130845.P4732669932009053756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A177704 n : ℚ) / 4⌋

end

end A130845.P4732669932009053756

namespace A130845

/-- `floor(n*A177704(n)/4)` -/
def P4732669932009053756.Spec : Prop :=
  ∀ n, P4732669932009053756.a n = A130845 n

end A130845

/-! ## A130845.P12273029699126396645

`A130507(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A130845.P12273029699126396645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A130507 (n - 1) + a (n - 1)

end

end A130845.P12273029699126396645

namespace A130845

/-- `A130507(n-1)+a(n-1)` -/
def P12273029699126396645.Spec : Prop :=
  ∀ n, P12273029699126396645.a n = A130845 n

end A130845

/-! ## A130845.P2290433006998376956

`A026741(∑[(∑[n]+1)%2]-1)`
-/

namespace A130845.P2290433006998376956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A130845.P2290433006998376956

namespace A130845

/-- `A026741(∑[(∑[n]+1)%2]-1)` -/
def P2290433006998376956.Spec : Prop :=
  ∀ n, P2290433006998376956.a n = A130845 n

end A130845

/-! ## A130845.P10853776614507520537

`A026741(∑[1-∑[n]%2]-1)`
-/

namespace A130845.P10853776614507520537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A130845.P10853776614507520537

namespace A130845

/-- `A026741(∑[1-∑[n]%2]-1)` -/
def P10853776614507520537.Spec : Prop :=
  ∀ n, P10853776614507520537.a n = A130845 n

end A130845

/-! ## A130845.P9409531554720950842

`floor(n/4*A007318(Δ[or(3, n)]))`
-/

namespace A130845.P9409531554720950842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4 * (A007318 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)⌋

end

end A130845.P9409531554720950842

namespace A130845

/-- `floor(n/4*A007318(Δ[or(3, n)]))` -/
def P9409531554720950842.Spec : Prop :=
  ∀ n, P9409531554720950842.a n = A130845 n

end A130845

/-! ## A130845.P8390234651733080240

`A026741(A004524(n))`
-/

namespace A130845.P8390234651733080240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004524 n).toNat

end

end A130845.P8390234651733080240

namespace A130845

/-- `A026741(A004524(n))` -/
def P8390234651733080240.Spec : Prop :=
  ∀ n, P8390234651733080240.a n = A130845 n

end A130845

/-! ## A130845.P2027842068982666228

`A009947(A130766(n))`
-/

namespace A130845.P2027842068982666228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A130766 n).toNat

end

end A130845.P2027842068982666228

namespace A130845

/-- `A009947(A130766(n))` -/
def P2027842068982666228.Spec : Prop :=
  ∀ n, P2027842068982666228.a n = A130845 n

end A130845

/-! ## A130845.P11217064559702291295

`A004526(lcm(2, A004524(n)))`
-/

namespace A130845.P11217064559702291295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A004524 n))

end

end A130845.P11217064559702291295

namespace A130845

/-- `A004526(lcm(2, A004524(n)))` -/
def P11217064559702291295.Spec : Prop :=
  ∀ n, P11217064559702291295.a n = A130845 n

end A130845

/-! ## A130845.P3753301390212699943

`gcd(A004524(n), A050534(n))`
-/

namespace A130845.P3753301390212699943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004524 n) (A050534 n)

end

end A130845.P3753301390212699943

namespace A130845

/-- `gcd(A004524(n), A050534(n))` -/
def P3753301390212699943.Spec : Prop :=
  ∀ n, (P3753301390212699943.a n : ℤ) = A130845 n

end A130845

/-! ## A130845.P4780852220634031747

`gcd(A060008(n), A130722(n))`
-/

namespace A130845.P4780852220634031747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060008 n) (A130722 n)

end

end A130845.P4780852220634031747

namespace A130845

/-- `gcd(A060008(n), A130722(n))` -/
def P4780852220634031747.Spec : Prop :=
  ∀ n, (P4780852220634031747.a n : ℤ) = A130845 n

end A130845

/-! ## A130845.P10750056532912660869

`∑[A130507(n)]-A130507(n)`
-/

namespace A130845.P10750056532912660869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130507 n

end

end A130845.P10750056532912660869

namespace A130845

/-- `∑[A130507(n)]-A130507(n)` -/
def P10750056532912660869.Spec : Prop :=
  ∀ n, P10750056532912660869.a n = A130845 n

end A130845

/-! ## A130845.P7778492940565033359

`A026741(A004525(n+1)-1)`
-/

namespace A130845.P7778492940565033359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004525 (n + 1) - 1).toNat

end

end A130845.P7778492940565033359

namespace A130845

/-- `A026741(A004525(n+1)-1)` -/
def P7778492940565033359.Spec : Prop :=
  ∀ n, P7778492940565033359.a n = A130845 n

end A130845

/-!
# A130846: Replace n with the concatenation of its anti-divisors.

The programs for A130846, there is no canonical definition to state claims against.
-/

/-! ## A130846.P9035122717039742424

`A158023(A281944(n+1)+1)`
-/

namespace A130846.P9035122717039742424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158023 (A281944 (n + 1) + 1).toNat

end

end A130846.P9035122717039742424

/-!
# A130848: Periodic sequence with period (2, 5, 3, -2, -5, -3).

The programs for A130848, the canonical program `A130848.P16252123746915316853` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130848 has offset 0).

The definition of A130848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130848.P16252123746915316853

`a(n-6)` with `a(0)=2, a(1)=5, a(2)=3, a(3)=-2, a(4)=-5, a(5)=-3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130848

/-- `a(n-6)` -/
def P16252123746915316853.Spec : Prop :=
  ∀ n, P16252123746915316853.a n = A130848 n

theorem P16252123746915316853.correct : P16252123746915316853.Spec := by
  intro n
  simp only [A130848]

end A130848

/-!
# A130849: a(n) is half the sum of the terms in the n-th antidiagonal of the table A130836.

The programs for A130849, the canonical program `A130849.P8572082471725670162` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130849 has offset 1).

The definition of A130849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, A095112, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130849.P8572082471725670162

`A022559(n+2)-A095112(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A130849

/-- `A022559(n+2)-A095112(n+2)` -/
def P8572082471725670162.Spec : Prop :=
  ∀ n, P8572082471725670162.a n = A130849 (n + 1)

theorem P8572082471725670162.correct : P8572082471725670162.Spec := by
  intro n
  simp only [A130849, Nat.add_sub_cancel]

end A130849

/-! ## A130849.P7727689532850415987

`∑[A001222(n+2)]-A095112(n+2)`
-/

namespace A130849.P7727689532850415987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095112 (n + 2)

end

end A130849.P7727689532850415987

namespace A130849

/-- `∑[A001222(n+2)]-A095112(n+2)` -/
def P7727689532850415987.Spec : Prop :=
  ∀ n, P7727689532850415987.a n = A130849 (n + 1)

end A130849

/-! ## A130849.P14049808351134603930

`∑[A073093(n+2)-1]-A095112(n+2)`
-/

namespace A130849.P14049808351134603930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095112 (n + 2)

end

end A130849.P14049808351134603930

namespace A130849

/-- `∑[A073093(n+2)-1]-A095112(n+2)` -/
def P14049808351134603930.Spec : Prop :=
  ∀ n, P14049808351134603930.a n = A130849 (n + 1)

end A130849

/-!
# A130850: Triangle read by rows, 0 <= k <= n, T(n,k) = Sum_{j=0..n} A(n,j)*binomial(n-j,k) where A(n,j) are the Eulerian numbers A173018.

The programs for A130850, there is no canonical definition to state claims against.
-/

/-! ## A130850.P2580178182730061857

`A008278(n+1)*A119502(n)`
-/

namespace A130850.P2580178182730061857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (n + 1) * A119502 n

end

end A130850.P2580178182730061857

/-! ## A130850.P13319932093691682335

`abs(A075263(n))`
-/

namespace A130850.P13319932093691682335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075263 n|

end

end A130850.P13319932093691682335

/-! ## A130850.P11566015899032542586

`gcd(A000038(n), A075263(n))`
-/

namespace A130850.P11566015899032542586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A075263 n)

end

end A130850.P11566015899032542586

/-! ## A130850.P8259079788256146896

`lcm(A020985(n), A075263(n))`
-/

namespace A130850.P8259079788256146896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A075263 n)

end

end A130850.P8259079788256146896

/-! ## A130850.P7643860002874761863

`lcm(-A075263(n), A160322(2*(n+2)))`
-/

namespace A130850.P7643860002874761863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A075263 n) (A160322 (2 * (n + 2)))

end

end A130850.P7643860002874761863

/-! ## A130850.P15047048524603674964

`A028246(A038722(n+1))`
-/

namespace A130850.P15047048524603674964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (A038722 (n + 1)).toNat

end

end A130850.P15047048524603674964

/-! ## A130850.P13714153640213456345

`A028246(A061579(n)+1)`
-/

namespace A130850.P13714153640213456345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (A061579 n + 1).toNat

end

end A130850.P13714153640213456345

/-! ## A130850.P5969805960055038543

`A028246(A114327(n)+1+n)`
-/

namespace A130850.P5969805960055038543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (A114327 n + 1 + (n : ℤ)).toNat

end

end A130850.P5969805960055038543

/-! ## A130850.P5069973204455539724

`A028246(A002024(n+1)²-n)`
-/

namespace A130850.P5069973204455539724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A130850.P5069973204455539724

/-! ## A130850.P15049519626416222213

`A090582(n+1)/A004736(n+1)`
-/

namespace A130850.P15049519626416222213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090582 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A130850.P15049519626416222213

/-!
# A130851: Catalan numbers A000108(n) modulo 9.

The programs for A130851, the canonical program `A130851.P13848340763517523934` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130851 has offset 0).

The definition of A130851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130851.P13848340763517523934

`A004095(n)%9`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130851

/-- `A004095(n)%9` -/
def P13848340763517523934.Spec : Prop :=
  ∀ n, P13848340763517523934.a n = A130851 n

theorem P13848340763517523934.correct : P13848340763517523934.Spec := by
  intro n
  simp only [A130851]

end A130851

/-! ## A130851.P16379637250136278259

`A130856(n)%9`
-/

namespace A130851.P16379637250136278259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130856 n) 9

end

end A130851.P16379637250136278259

namespace A130851

/-- `A130856(n)%9` -/
def P16379637250136278259.Spec : Prop :=
  ∀ n, P16379637250136278259.a n = A130851 n

end A130851

/-! ## A130851.P6086271640579911931

`A010878(A004095(n))`
-/

namespace A130851.P6086271640579911931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A004095 n).toNat

end

end A130851.P6086271640579911931

namespace A130851

/-- `A010878(A004095(n))` -/
def P6086271640579911931.Spec : Prop :=
  ∀ n, P6086271640579911931.a n = A130851 n

end A130851

/-! ## A130851.P16030645996987515449

`A010888(A004095(n)+1)-1`
-/

namespace A130851.P16030645996987515449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A004095 n + 1).toNat - 1

end

end A130851.P16030645996987515449

namespace A130851

/-- `A010888(A004095(n)+1)-1` -/
def P16030645996987515449.Spec : Prop :=
  ∀ n, P16030645996987515449.a n = A130851 n

end A130851

/-! ## A130851.P6186269729238050305

`A133375(n)%9`
-/

namespace A130851.P6186269729238050305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133375 n) 9

end

end A130851.P6186269729238050305

namespace A130851

/-- `A133375(n)%9` -/
def P6186269729238050305.Spec : Prop :=
  ∀ n, P6186269729238050305.a n = A130851 n

end A130851

/-! ## A130851.P4856161187633754840

`A004096(n)%9`
-/

namespace A130851.P4856161187633754840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004096 n) 9

end

end A130851.P4856161187633754840

namespace A130851

/-- `A004096(n)%9` -/
def P4856161187633754840.Spec : Prop :=
  ∀ n, P4856161187633754840.a n = A130851 n

end A130851

/-! ## A130851.P11273738054466256682

`A000108(n)%9`
-/

namespace A130851.P11273738054466256682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) 9

end

end A130851.P11273738054466256682

namespace A130851

/-- `A000108(n)%9` -/
def P11273738054466256682.Spec : Prop :=
  ∀ n, P11273738054466256682.a n = A130851 n

end A130851

/-! ## A130851.P8524733459715770749

`A120588(n+1)%9`
-/

namespace A130851.P8524733459715770749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 1)) 9

end

end A130851.P8524733459715770749

namespace A130851

/-- `A120588(n+1)%9` -/
def P8524733459715770749.Spec : Prop :=
  ∀ n, P8524733459715770749.a n = A130851 n

end A130851

/-! ## A130851.P16020275687559954362

`(A120304(n)+2)%9`
-/

namespace A130851.P16020275687559954362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120304 n + 2) 9

end

end A130851.P16020275687559954362

namespace A130851

/-- `(A120304(n)+2)%9` -/
def P16020275687559954362.Spec : Prop :=
  ∀ n, P16020275687559954362.a n = A130851 n

end A130851

/-! ## A130851.P275153071955216468

`A028303(2*n)%9`
-/

namespace A130851.P275153071955216468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (2 * n)) 9

end

end A130851.P275153071955216468

namespace A130851

/-- `A028303(2*n)%9` -/
def P275153071955216468.Spec : Prop :=
  ∀ n, P275153071955216468.a n = A130851 n

end A130851

/-! ## A130851.P3248396267769412758

`A028304(2*n)%9`
-/

namespace A130851.P3248396267769412758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 (2 * n)) 9

end

end A130851.P3248396267769412758

namespace A130851

/-- `A028304(2*n)%9` -/
def P3248396267769412758.Spec : Prop :=
  ∀ n, P3248396267769412758.a n = A130851 n

end A130851

/-! ## A130851.P9776100258483838402

`A126120(2*n)%9`
-/

namespace A130851.P9776100258483838402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 (2 * n)) 9

end

end A130851.P9776100258483838402

namespace A130851

/-- `A126120(2*n)%9` -/
def P9776100258483838402.Spec : Prop :=
  ∀ n, P9776100258483838402.a n = A130851 n

end A130851

/-! ## A130851.P5065911350620444

`A126324(2*n)%9`
-/

namespace A130851.P5065911350620444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126324 (2 * n)) 9

end

end A130851.P5065911350620444

namespace A130851

/-- `A126324(2*n)%9` -/
def P5065911350620444.Spec : Prop :=
  ∀ n, P5065911350620444.a n = A130851 n

end A130851

/-! ## A130851.P1517886466723349461

`A208355(2*n)%9`
-/

namespace A130851.P1517886466723349461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (2 * n)) 9

end

end A130851.P1517886466723349461

namespace A130851

/-- `A208355(2*n)%9` -/
def P1517886466723349461.Spec : Prop :=
  ∀ n, P1517886466723349461.a n = A130851 n

end A130851

/-! ## A130851.P4004609355100031356

`A089408(2*n+1)%9`
-/

namespace A130851.P4004609355100031356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089408 (2 * n + 1)) 9

end

end A130851.P4004609355100031356

namespace A130851

/-- `A089408(2*n+1)%9` -/
def P4004609355100031356.Spec : Prop :=
  ∀ n, P4004609355100031356.a n = A130851 n

end A130851

/-! ## A130851.P6255679046876788588

`A097331(2*n+1)%9`
-/

namespace A130851.P6255679046876788588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 (2 * n + 1)) 9

end

end A130851.P6255679046876788588

namespace A130851

/-- `A097331(2*n+1)%9` -/
def P6255679046876788588.Spec : Prop :=
  ∀ n, P6255679046876788588.a n = A130851 n

end A130851

/-! ## A130851.P17760201106162651666

`(A263986(n)+A000045(n))%9`
-/

namespace A130851.P17760201106162651666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + A000045 n) 9

end

end A130851.P17760201106162651666

namespace A130851

/-- `(A263986(n)+A000045(n))%9` -/
def P17760201106162651666.Spec : Prop :=
  ∀ n, P17760201106162651666.a n = A130851 n

end A130851

/-! ## A130851.P6260485246958949256

`(ratio[A120588(n)]*A120588(n))%9`
-/

namespace A130851.P6260485246958949256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A120588 n : ℚ))) 9

end

end A130851.P6260485246958949256

namespace A130851

/-- `(ratio[A120588(n)]*A120588(n))%9` -/
def P6260485246958949256.Spec : Prop :=
  ∀ n, P6260485246958949256.a n = A130851 n

end A130851

/-! ## A130851.P12050149034747641790

`(A263986(n)+A212804(n+1))%9`
-/

namespace A130851.P12050149034747641790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + A212804 (n + 1)) 9

end

end A130851.P12050149034747641790

namespace A130851

/-- `(A263986(n)+A212804(n+1))%9` -/
def P12050149034747641790.Spec : Prop :=
  ∀ n, P12050149034747641790.a n = A130851 n

end A130851

/-! ## A130851.P4768784607344504686

`(A263986(n)+A001611(n)-1)%9`
-/

namespace A130851.P4768784607344504686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + (A001611 n - 1)) 9

end

end A130851.P4768784607344504686

namespace A130851

/-- `(A263986(n)+A001611(n)-1)%9` -/
def P4768784607344504686.Spec : Prop :=
  ∀ n, P4768784607344504686.a n = A130851 n

end A130851

/-!
# A130853: Runs of 1's of lengths 1, Fibonacci numbers F(1), F(2), F(3), ... (A000045) separated by 0's.

The programs for A130853, the canonical program `A130853.P8707177424060044516` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130853 has offset 1).

The definition of A130853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130853.P17865931179220341870

`char[A072649(n+1)+n]`
-/

namespace A130853.P17865931179220341870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A130853.P17865931179220341870

namespace A130853

/-- `char[A072649(n+1)+n]` -/
def P17865931179220341870.Spec : Prop :=
  ∀ n, (P17865931179220341870.a n : ℤ) = A130853 (n + 1)

end A130853

/-! ## A130853.P16029804396892813534

`char[A130233(n)-2+n]`
-/

namespace A130853.P16029804396892813534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 n - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A130853.P16029804396892813534

namespace A130853

/-- `char[A130233(n)-2+n]` -/
def P16029804396892813534.Spec : Prop :=
  ∀ n, (P16029804396892813534.a n : ℤ) = A130853 (n + 1)

end A130853

/-! ## A130853.P8426758643053438173

`char[comp[∑[A001611(n)]-1]]`
-/

namespace A130853.P8426758643053438173
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A130853.P8426758643053438173

namespace A130853

/-- `char[comp[∑[A001611(n)]-1]]` -/
def P8426758643053438173.Spec : Prop :=
  ∀ n, (P8426758643053438173.a n : ℤ) = A130853 (n + 1)

end A130853

/-! ## A130853.P2145595946202850009

`char[comp[∑[A000045(n)]+n]]`
-/

namespace A130853.P2145595946202850009
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A130853.P2145595946202850009

namespace A130853

/-- `char[comp[∑[A000045(n)]+n]]` -/
def P2145595946202850009.Spec : Prop :=
  ∀ n, (P2145595946202850009.a n : ℤ) = A130853 (n + 1)

end A130853

/-! ## A130853.P9328831814640136649

`char[∑[A010056(n+1)]+n]`
-/

namespace A130853.P9328831814640136649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A130853.P9328831814640136649

namespace A130853

/-- `char[∑[A010056(n+1)]+n]` -/
def P9328831814640136649.Spec : Prop :=
  ∀ n, (P9328831814640136649.a n : ℤ) = A130853 (n + 1)

end A130853

/-! ## A130853.P1342011422049522759

`char[comp[A000071(n+2)+n]]`
-/

namespace A130853.P1342011422049522759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A130853.P1342011422049522759

namespace A130853

/-- `char[comp[A000071(n+2)+n]]` -/
def P1342011422049522759.Spec : Prop :=
  ∀ n, (P1342011422049522759.a n : ℤ) = A130853 (n + 1)

end A130853

/-! ## A130853.P11924298414677266120

`char[∑[char[A000071(n+1)]]+n]`
-/

namespace A130853.P11924298414677266120
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A130853.P11924298414677266120

namespace A130853

/-- `char[∑[char[A000071(n+1)]]+n]` -/
def P11924298414677266120.Spec : Prop :=
  ∀ n, (P11924298414677266120.a n : ℤ) = A130853 (n + 1)

end A130853

/-! ## A130853.P16493219048098511060

`char[comp[A000045(n+2)+n-1]]`
-/

namespace A130853.P16493219048098511060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A130853.P16493219048098511060

namespace A130853

/-- `char[comp[A000045(n+2)+n-1]]` -/
def P16493219048098511060.Spec : Prop :=
  ∀ n, (P16493219048098511060.a n : ℤ) = A130853 (n + 1)

end A130853

/-! ## A130853.P2714971591405071444

`char[∑[char[∑[A000045(n+1)]]+1]]`
-/

namespace A130853.P2714971591405071444
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A130853.P2714971591405071444

namespace A130853

/-- `char[∑[char[∑[A000045(n+1)]]+1]]` -/
def P2714971591405071444.Spec : Prop :=
  ∀ n, (P2714971591405071444.a n : ℤ) = A130853 (n + 1)

end A130853

/-! ## A130853.P8707177424060044516

`Δ[n-A072649(a(n-1)+1)]` with `a(0)=0`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A130853

/-- `Δ[n-A072649(a(n-1)+1)]` -/
def P8707177424060044516.Spec : Prop :=
  ∀ n, P8707177424060044516.a n = A130853 (n + 1)

theorem P8707177424060044516.correct : P8707177424060044516.Spec := by
  intro n
  simp only [A130853, Nat.add_sub_cancel]

end A130853

/-! ## A130853.P16426370801421866541

`A003849(eq[1, A239003(n)+A003849(n)])`
-/

namespace A130853.P16426370801421866541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 n + A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130853.P16426370801421866541

namespace A130853

/-- `A003849(eq[1, A239003(n)+A003849(n)])` -/
def P16426370801421866541.Spec : Prop :=
  ∀ n, P16426370801421866541.a n = A130853 (n + 1)

end A130853

/-! ## A130853.P536153102583469689

`A003849(eq[1-A003849(n), A239003(n)])`
-/

namespace A130853.P536153102583469689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130853.P536153102583469689

namespace A130853

/-- `A003849(eq[1-A003849(n), A239003(n)])` -/
def P536153102583469689.Spec : Prop :=
  ∀ n, P536153102583469689.a n = A130853 (n + 1)

end A130853

/-! ## A130853.P9126194292707547395

`A327515(A020639(A232895(n+1)))`
-/

namespace A130853.P9126194292707547395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327515 (A020639 (A232895 (n + 1)).toNat).toNat

end

end A130853.P9126194292707547395

namespace A130853

/-- `A327515(A020639(A232895(n+1)))` -/
def P9126194292707547395.Spec : Prop :=
  ∀ n, P9126194292707547395.a n = A130853 (n + 1)

end A130853

/-! ## A130853.P6876320754961985633

`A059841(A232895(n+1))`
-/

namespace A130853.P6876320754961985633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A232895 (n + 1)).toNat

end

end A130853.P6876320754961985633

namespace A130853

/-- `A059841(A232895(n+1))` -/
def P6876320754961985633.Spec : Prop :=
  ∀ n, P6876320754961985633.a n = A130853 (n + 1)

end A130853

/-! ## A130853.P7638869073558431752

`A000035(eq[A000035(n), A087117(n+1)])`
-/

namespace A130853.P7638869073558431752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130853.P7638869073558431752

namespace A130853

/-- `A000035(eq[A000035(n), A087117(n+1)])` -/
def P7638869073558431752.Spec : Prop :=
  ∀ n, P7638869073558431752.a n = A130853 (n + 1)

end A130853

/-! ## A130853.P2571778498035617932

`A088705(eq[A087117(n+1), A088705(n)])`
-/

namespace A130853.P2571778498035617932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130853.P2571778498035617932

namespace A130853

/-- `A088705(eq[A087117(n+1), A088705(n)])` -/
def P2571778498035617932.Spec : Prop :=
  ∀ n, P2571778498035617932.a n = A130853 (n + 1)

end A130853

/-! ## A130853.P10847975801540504547

`A087117(lt[n*A087117(n), A003188(n)])`
-/

namespace A130853.P10847975801540504547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130853.P10847975801540504547

namespace A130853

/-- `A087117(lt[n*A087117(n), A003188(n)])` -/
def P10847975801540504547.Spec : Prop :=
  ∀ n, P10847975801540504547.a n = A130853 (n + 1)

end A130853

/-!
# A130854: Runs of 1's of lengths 1 for decimal expansion of Pi (A000796), separated by 0's.

The programs for A130854, there is no canonical definition to state claims against.
-/

/-! ## A130854.P14040504052250220173

`1-A089024(n+1)`
-/

namespace A130854.P14040504052250220173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089024 (n + 1)

end

end A130854.P14040504052250220173

/-! ## A130854.P5996649841839620396

`char[∑[char[A046974(n)]+1]]`
-/

namespace A130854.P5996649841839620396
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A130854.P5996649841839620396

/-! ## A130854.P13475392941414678356

`xor(1, A089024(Δ[n²]-n))`
-/

namespace A130854.P13475392941414678356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A089024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A130854.P13475392941414678356

/-! ## A130854.P1898967119757982257

`char[A089024(n+2)+n+1]`
-/

namespace A130854.P1898967119757982257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089024 (n + 2) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A130854.P1898967119757982257

/-! ## A130854.P11567943741786896451

`1-char[A059582(n)-1+n]`
-/

namespace A130854.P11567943741786896451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A130854.P11567943741786896451

/-! ## A130854.P17176831158909129735

`xor(A089024(n+1), A361338(n))`
-/

namespace A130854.P17176831158909129735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A089024 (n + 1)) (A361338 n)

end

end A130854.P17176831158909129735

/-! ## A130854.P7937360543300812196

`1-char[A023443(A059582(n)+n)]`
-/

namespace A130854.P7937360543300812196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A059582 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A130854.P7937360543300812196

/-! ## A130854.P319850665705198583

`1-char[A059582(n)-A024000(n)]`
-/

namespace A130854.P319850665705198583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n - A024000 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A130854.P319850665705198583

/-! ## A130854.P4182454247157313010

`A000007((n+1)*A089024(n+1))`
-/

namespace A130854.P4182454247157313010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A089024 (n + 1)).toNat

end

end A130854.P4182454247157313010

/-! ## A130854.P12669856224236476703

`val((A089024(n+1)+2)*A016127(n), 2)`
-/

namespace A130854.P12669856224236476703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A089024 (n + 1) + 2) * A016127 n).toNat 2

end

end A130854.P12669856224236476703

/-! ## A130854.P9703686552911282934

`A089012(A119788(n+1)+A089024(n+1))`
-/

namespace A130854.P9703686552911282934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089012 (A119788 (n + 1) + A089024 (n + 1)).toNat

end

end A130854.P9703686552911282934

/-! ## A130854.P10812512626896375328

`A089024(A354487(n+4)+A089024(n+1))`
-/

namespace A130854.P10812512626896375328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089024 (A354487 (n + 4) + A089024 (n + 1)).toNat

end

end A130854.P10812512626896375328

/-! ## A130854.P14168374935601652701

`val(A016127(n), A016127(A089024(n+1)+n))`
-/

namespace A130854.P14168374935601652701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016127 n).toNat (A016127 (A089024 (n + 1) + (n : ℤ)).toNat).toNat

end

end A130854.P14168374935601652701

/-!
# A130855: 2n appears 2n+1 times, 2n+1 appears 2n times.

The programs for A130855, the canonical program `A130855.P3617134350545637610` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130855 has offset 0).

The definition of A130855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130855.P10537387577788089616

`comp[∑[n]+or(1, n)]-n`
-/

namespace A130855.P10537387577788089616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A130855.P10537387577788089616

namespace A130855

/-- `comp[∑[n]+or(1, n)]-n` -/
def P10537387577788089616.Spec : Prop :=
  ∀ n, P10537387577788089616.a n = A130855 n

end A130855

/-! ## A130855.P6637338421170940469

`comp[∑[xor(1, n)]+n]-n`
-/

namespace A130855.P6637338421170940469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A130855.P6637338421170940469

namespace A130855

/-- `comp[∑[xor(1, n)]+n]-n` -/
def P6637338421170940469.Spec : Prop :=
  ∀ n, P6637338421170940469.a n = A130855 n

end A130855

/-! ## A130855.P8835533653966520592

`comp[∑[n-(-1)^n]]-n`
-/

namespace A130855.P8835533653966520592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130855.P8835533653966520592

namespace A130855

/-- `comp[∑[n-(-1)^n]]-n` -/
def P8835533653966520592.Spec : Prop :=
  ∀ n, P8835533653966520592.a n = A130855 n

end A130855

/-! ## A130855.P6342771392945735848

`round(sqrt(record[n*ceil(sqrt(n+1))%2]))`
-/

namespace A130855.P6342771392945735848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ⌈Real.sqrt (n + 1 : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A130855.P6342771392945735848

namespace A130855

/-- `round(sqrt(record[n*ceil(sqrt(n+1))%2]))` -/
def P6342771392945735848.Spec : Prop :=
  ∀ n, P6342771392945735848.a n = A130855 n

end A130855

/-! ## A130855.P4344669326227338144

`abs(n-comp[A084265(n)])`
-/

namespace A130855.P4344669326227338144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)|

end

end A130855.P4344669326227338144

namespace A130855

/-- `abs(n-comp[A084265(n)])` -/
def P4344669326227338144.Spec : Prop :=
  ∀ n, P4344669326227338144.a n = A130855 n

end A130855

/-! ## A130855.P6064143911221737305

`round(sqrt(eq[1, gcd(2, A000005(n)+a(n-1))]))` with `a(0)=1`
-/

namespace A130855.P6064143911221737305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.gcd 2 (A000005 n + (f2 (n - 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℝ))

end

end A130855.P6064143911221737305

namespace A130855

/-- `round(sqrt(eq[1, gcd(2, A000005(n)+a(n-1))]))` -/
def P6064143911221737305.Spec : Prop :=
  ∀ n, P6064143911221737305.a n = A130855 n

end A130855

/-! ## A130855.P3617134350545637610

`A123578(A057212(n+1)+n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A130855

/-- `A123578(A057212(n+1)+n)` -/
def P3617134350545637610.Spec : Prop :=
  ∀ n, P3617134350545637610.a n = A130855 n

theorem P3617134350545637610.correct : P3617134350545637610.Spec := by
  intro n
  simp only [A130855]

end A130855

/-! ## A130855.P4003456932161675304

`A123578(1-A057211(n+1)+n)`
-/

namespace A130855.P4003456932161675304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (1 - A057211 (n + 1) + (n : ℤ)).toNat

end

end A130855.P4003456932161675304

namespace A130855

/-- `A123578(1-A057211(n+1)+n)` -/
def P4003456932161675304.Spec : Prop :=
  ∀ n, P4003456932161675304.a n = A130855 n

end A130855

/-! ## A130855.P7178430222795431999

`A123578(and(1, A123578(n))+n)`
-/

namespace A130855.P7178430222795431999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.land 1 (A123578 n) + (n : ℤ)).toNat

end

end A130855.P7178430222795431999

namespace A130855

/-- `A123578(and(1, A123578(n))+n)` -/
def P7178430222795431999.Spec : Prop :=
  ∀ n, P7178430222795431999.a n = A130855 n

end A130855

/-! ## A130855.P16996271674199522038

`round(sqrt(eq[1, A266982(n)]))`
-/

namespace A130855.P16996271674199522038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℝ))

end

end A130855.P16996271674199522038

namespace A130855

/-- `round(sqrt(eq[1, A266982(n)]))` -/
def P16996271674199522038.Spec : Prop :=
  ∀ n, P16996271674199522038.a n = A130855 n

end A130855

/-! ## A130855.P13757909420000682305

`A000194(A056011(n+1)-1+n)`
-/

namespace A130855.P13757909420000682305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A056011 (n + 1) - 1 + (n : ℤ)).toNat

end

end A130855.P13757909420000682305

namespace A130855

/-- `A000194(A056011(n+1)-1+n)` -/
def P13757909420000682305.Spec : Prop :=
  ∀ n, P13757909420000682305.a n = A130855 n

end A130855

/-! ## A130855.P10379255460227809582

`A000194(2*n+1-A054521(n+2))`
-/

namespace A130855.P10379255460227809582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((2 * n + 1 : ℤ) - A054521 (n + 2)).toNat

end

end A130855.P10379255460227809582

namespace A130855

/-- `A000194(2*n+1-A054521(n+2))` -/
def P10379255460227809582.Spec : Prop :=
  ∀ n, P10379255460227809582.a n = A130855 n

end A130855

/-! ## A130855.P16535548051878365548

`A000194(A004273(n+1)-A263919(2*n+1))`
-/

namespace A130855.P16535548051878365548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A004273 (n + 1) - A263919 (2 * n + 1)).toNat

end

end A130855.P16535548051878365548

namespace A130855

/-- `A000194(A004273(n+1)-A263919(2*n+1))` -/
def P16535548051878365548.Spec : Prop :=
  ∀ n, P16535548051878365548.a n = A130855 n

end A130855

/-! ## A130855.P17396512106420338419

`round(sqrt(eq[A005369(n), A266666(n)]))`
-/

namespace A130855.P17396512106420338419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℝ))

end

end A130855.P17396512106420338419

namespace A130855

/-- `round(sqrt(eq[A005369(n), A266666(n)]))` -/
def P17396512106420338419.Spec : Prop :=
  ∀ n, P17396512106420338419.a n = A130855 n

end A130855

/-! ## A130855.P5783599420076151355

`A000196(2*(A307707(n+1)+n))`
-/

namespace A130855.P5783599420076151355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * (A307707 (n + 1) + (n : ℤ))).toNat

end

end A130855.P5783599420076151355

namespace A130855

/-- `A000196(2*(A307707(n+1)+n))` -/
def P5783599420076151355.Spec : Prop :=
  ∀ n, P5783599420076151355.a n = A130855 n

end A130855

/-! ## A130855.P14082250030975789769

`A000196(2*comp[A134869(2*n+1)])`
-/

namespace A130855.P14082250030975789769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130855.P14082250030975789769

namespace A130855

/-- `A000196(2*comp[A134869(2*n+1)])` -/
def P14082250030975789769.Spec : Prop :=
  ∀ n, P14082250030975789769.a n = A130855 n

end A130855

/-! ## A130855.P16420144538003608374

`round(sqrt(A280682(n+1)))`
-/

namespace A130855.P16420144538003608374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A280682 (n + 1) : ℝ))

end

end A130855.P16420144538003608374

namespace A130855

/-- `round(sqrt(A280682(n+1)))` -/
def P16420144538003608374.Spec : Prop :=
  ∀ n, P16420144538003608374.a n = A130855 n

end A130855

/-! ## A130855.P5699678447913478616

`A000194(A280682(n+1))`
-/

namespace A130855.P5699678447913478616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A280682 (n + 1)).toNat

end

end A130855.P5699678447913478616

namespace A130855

/-- `A000194(A280682(n+1))` -/
def P5699678447913478616.Spec : Prop :=
  ∀ n, P5699678447913478616.a n = A130855 n

end A130855

/-! ## A130855.P8276502379711315490

`A172471(A371355(n+1)+n)`
-/

namespace A130855.P8276502379711315490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A371355 (n + 1) + (n : ℤ)).toNat

end

end A130855.P8276502379711315490

namespace A130855

/-- `A172471(A371355(n+1)+n)` -/
def P8276502379711315490.Spec : Prop :=
  ∀ n, P8276502379711315490.a n = A130855 n

end A130855

/-!
# A130856: The digital root (A010888) of the Catalan numbers A000108.

The programs for A130856, the canonical program `A130856.P714069976236224100` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130856 has offset 0).

The definition of A130856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130856.P714069976236224100

`dr(A004095(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130856

/-- `dr(A004095(n))` -/
def P714069976236224100.Spec : Prop :=
  ∀ n, (P714069976236224100.a n : ℤ) = A130856 n

theorem P714069976236224100.correct : P714069976236224100.Spec := by
  intro n
  simp only [A130856]

end A130856

/-! ## A130856.P8996211589513343868

`dr(A130851(n)+9)`
-/

namespace A130856.P8996211589513343868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130851 n + 9)

end

end A130856.P8996211589513343868

namespace A130856

/-- `dr(A130851(n)+9)` -/
def P8996211589513343868.Spec : Prop :=
  ∀ n, (P8996211589513343868.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P14538333490662697519

`A010888(A130851(n)+n-A010888(n))`
-/

namespace A130856.P14538333490662697519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A130851 n + ((n : ℤ) - A010888 n)).toNat

end

end A130856.P14538333490662697519

namespace A130856

/-- `A010888(A130851(n)+n-A010888(n))` -/
def P14538333490662697519.Spec : Prop :=
  ∀ n, P14538333490662697519.a n = A130856 n

end A130856

/-! ## A130856.P8568158516124763517

`A010888(n-(A010888(n)-A130851(n)))`
-/

namespace A130856.P8568158516124763517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 ((n : ℤ) - (A010888 n - A130851 n)).toNat

end

end A130856.P8568158516124763517

namespace A130856

/-- `A010888(n-(A010888(n)-A130851(n)))` -/
def P8568158516124763517.Spec : Prop :=
  ∀ n, P8568158516124763517.a n = A130856 n

end A130856

/-! ## A130856.P2600991208083014407

`A010888(A004095(n)+9)`
-/

namespace A130856.P2600991208083014407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A004095 n + 9).toNat

end

end A130856.P2600991208083014407

namespace A130856

/-- `A010888(A004095(n)+9)` -/
def P2600991208083014407.Spec : Prop :=
  ∀ n, P2600991208083014407.a n = A130856 n

end A130856

/-! ## A130856.P16724217718966529620

`A010878(A004095(n)-1)+1`
-/

namespace A130856.P16724217718966529620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A004095 n - 1).toNat + 1

end

end A130856.P16724217718966529620

namespace A130856

/-- `A010878(A004095(n)-1)+1` -/
def P16724217718966529620.Spec : Prop :=
  ∀ n, P16724217718966529620.a n = A130856 n

end A130856

/-! ## A130856.P14551755014888054009

`or(A010888(A004095(n)), A130851(n))`
-/

namespace A130856.P14551755014888054009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010888 (A004095 n).toNat) (A130851 n)

end

end A130856.P14551755014888054009

namespace A130856

/-- `or(A010888(A004095(n)), A130851(n))` -/
def P14551755014888054009.Spec : Prop :=
  ∀ n, P14551755014888054009.a n = A130856 n

end A130856

/-! ## A130856.P8467263722358076208

`dr(A133375(n))`
-/

namespace A130856.P8467263722358076208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A133375 n)

end

end A130856.P8467263722358076208

namespace A130856

/-- `dr(A133375(n))` -/
def P8467263722358076208.Spec : Prop :=
  ∀ n, (P8467263722358076208.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P10075717349585991177

`dr(A004096(n))`
-/

namespace A130856.P10075717349585991177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004096 n)

end

end A130856.P10075717349585991177

namespace A130856

/-- `dr(A004096(n))` -/
def P10075717349585991177.Spec : Prop :=
  ∀ n, (P10075717349585991177.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P15237537669166754422

`dr(A000108(n))`
-/

namespace A130856.P15237537669166754422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000108 n)

end

end A130856.P15237537669166754422

namespace A130856

/-- `dr(A000108(n))` -/
def P15237537669166754422.Spec : Prop :=
  ∀ n, (P15237537669166754422.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P8185273394709650129

`dr(A168491(n))`
-/

namespace A130856.P8185273394709650129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A168491 n)

end

end A130856.P8185273394709650129

namespace A130856

/-- `dr(A168491(n))` -/
def P8185273394709650129.Spec : Prop :=
  ∀ n, (P8185273394709650129.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P4817215324460731898

`dr(A115140(n+1))`
-/

namespace A130856.P4817215324460731898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A115140 (n + 1))

end

end A130856.P4817215324460731898

namespace A130856

/-- `dr(A115140(n+1))` -/
def P4817215324460731898.Spec : Prop :=
  ∀ n, (P4817215324460731898.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P13315401133486180300

`dr(A120588(n+1))`
-/

namespace A130856.P13315401133486180300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A120588 (n + 1))

end

end A130856.P13315401133486180300

namespace A130856

/-- `dr(A120588(n+1))` -/
def P13315401133486180300.Spec : Prop :=
  ∀ n, (P13315401133486180300.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P1842853772874451429

`dr(A120304(n)+2)`
-/

namespace A130856.P1842853772874451429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A120304 n + 2)

end

end A130856.P1842853772874451429

namespace A130856

/-- `dr(A120304(n)+2)` -/
def P1842853772874451429.Spec : Prop :=
  ∀ n, (P1842853772874451429.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P14570250943439248152

`dr(A028303(2*n))`
-/

namespace A130856.P14570250943439248152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028303 (2 * n))

end

end A130856.P14570250943439248152

namespace A130856

/-- `dr(A028303(2*n))` -/
def P14570250943439248152.Spec : Prop :=
  ∀ n, (P14570250943439248152.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P18304300685418224805

`dr(A028304(2*n))`
-/

namespace A130856.P18304300685418224805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028304 (2 * n))

end

end A130856.P18304300685418224805

namespace A130856

/-- `dr(A028304(2*n))` -/
def P18304300685418224805.Spec : Prop :=
  ∀ n, (P18304300685418224805.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P6405365332285018452

`dr(A126120(2*n))`
-/

namespace A130856.P6405365332285018452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A126120 (2 * n))

end

end A130856.P6405365332285018452

namespace A130856

/-- `dr(A126120(2*n))` -/
def P6405365332285018452.Spec : Prop :=
  ∀ n, (P6405365332285018452.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P3725826792501882004

`dr(A126324(2*n))`
-/

namespace A130856.P3725826792501882004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A126324 (2 * n))

end

end A130856.P3725826792501882004

namespace A130856

/-- `dr(A126324(2*n))` -/
def P3725826792501882004.Spec : Prop :=
  ∀ n, (P3725826792501882004.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P6531526481185020072

`dr(A208355(2*n))`
-/

namespace A130856.P6531526481185020072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A208355 (2 * n))

end

end A130856.P6531526481185020072

namespace A130856

/-- `dr(A208355(2*n))` -/
def P6531526481185020072.Spec : Prop :=
  ∀ n, (P6531526481185020072.a n : ℤ) = A130856 n

end A130856

/-! ## A130856.P5856609859871975071

`dr(A089408(2*n+1))`
-/

namespace A130856.P5856609859871975071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A089408 (2 * n + 1))

end

end A130856.P5856609859871975071

namespace A130856

/-- `dr(A089408(2*n+1))` -/
def P5856609859871975071.Spec : Prop :=
  ∀ n, (P5856609859871975071.a n : ℤ) = A130856 n

end A130856

/-!
# A130857: a(n) = (n-1)*n*(n+1)*(n+2)*(2n+11)/120.

The programs for A130857, the canonical program `A130857.P459025519411909195` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130857 has offset 1).

The definition of A130857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130857.P459025519411909195

`n*(n+1)*(n+2)*(n+3)*(2*(n+1)+11)/120`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130857

/-- `n*(n+1)*(n+2)*(n+3)*(2*(n+1)+11)/120` -/
def P459025519411909195.Spec : Prop :=
  ∀ n, P459025519411909195.a n = (A130857 (n + 1) : ℚ)

end A130857

/-! ## A130857.P16859003258353599606

`floor(∑[∑[∑[∑[a(n-1)+2]]]])` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A130857.P16859003258353599606
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f4 =>
  f4 (n - 1) + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130857.P16859003258353599606

namespace A130857

/-- `floor(∑[∑[∑[∑[a(n-1)+2]]]])` -/
def P16859003258353599606.Spec : Prop :=
  ∀ n, (P16859003258353599606.a n : ℤ) = A130857 (n + 1)

end A130857

/-! ## A130857.P6778546290113404023

`ceil(∑[∑[∑[∑[a(n-1)+2]]]])` with `a(0)=0, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A130857.P6778546290113404023
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f4 =>
  f4 (n - 1) + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130857.P6778546290113404023

namespace A130857

/-- `ceil(∑[∑[∑[∑[a(n-1)+2]]]])` -/
def P6778546290113404023.Spec : Prop :=
  ∀ n, (P6778546290113404023.a n : ℤ) = A130857 (n + 1)

end A130857

/-! ## A130857.P9124356137091116229

`∑[∑[(n+1)²-1]]+a(n-1)` with `a(0)=0`
-/

namespace A130857.P9124356137091116229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A130857.P9124356137091116229

namespace A130857

/-- `∑[∑[(n+1)²-1]]+a(n-1)` -/
def P9124356137091116229.Spec : Prop :=
  ∀ n, P9124356137091116229.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P15516209973464022726

`floor(∑[∑[∑[n-∑[a(n-1)-2]]]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A130857.P15516209973464022726
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f4 =>
  f4 (n - 1) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130857.P15516209973464022726

namespace A130857

/-- `floor(∑[∑[∑[n-∑[a(n-1)-2]]]])` -/
def P15516209973464022726.Spec : Prop :=
  ∀ n, P15516209973464022726.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P13946958310283605424

`a(n-1)-∑[∑[a(n-1)-(n+1+n)]]` with `a(0)=0`
-/

namespace A130857.P13946958310283605424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - (n + 1 + n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130857.P13946958310283605424

namespace A130857

/-- `a(n-1)-∑[∑[a(n-1)-(n+1+n)]]` -/
def P13946958310283605424.Spec : Prop :=
  ∀ n, P13946958310283605424.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P9718567766600494363

`∑[∑[∑[6*A005563(n)]]]/6`
-/

namespace A130857.P9718567766600494363
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A130857.P9718567766600494363

namespace A130857

/-- `∑[∑[∑[6*A005563(n)]]]/6` -/
def P9718567766600494363.Spec : Prop :=
  ∀ n, P9718567766600494363.a n = (A130857 (n + 1) : ℚ)

end A130857

/-! ## A130857.P5924972852475284655

`A051877(n)-A006414(n)`
-/

namespace A130857.P5924972852475284655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051877 n - A006414 n

end

end A130857.P5924972852475284655

namespace A130857

/-- `A051877(n)-A006414(n)` -/
def P5924972852475284655.Spec : Prop :=
  ∀ n, P5924972852475284655.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P13561043738079464212

`A095669(n)-A062966(n)`
-/

namespace A130857.P13561043738079464212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n - A062966 n

end

end A130857.P13561043738079464212

namespace A130857

/-- `A095669(n)-A062966(n)` -/
def P13561043738079464212.Spec : Prop :=
  ∀ n, P13561043738079464212.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P541126582802079933

`∑[A005701(n)]-A005701(n)`
-/

namespace A130857.P541126582802079933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005701 n

end

end A130857.P541126582802079933

namespace A130857

/-- `∑[A005701(n)]-A005701(n)` -/
def P541126582802079933.Spec : Prop :=
  ∀ n, P541126582802079933.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P9908919720488679939

`A278670(n+1)-A055796(n)`
-/

namespace A130857.P9908919720488679939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) - A055796 n

end

end A130857.P9908919720488679939

namespace A130857

/-- `A278670(n+1)-A055796(n)` -/
def P9908919720488679939.Spec : Prop :=
  ∀ n, P9908919720488679939.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P14556499043770295831

`A005585(n+1)-A000292(n+1)`
-/

namespace A130857.P14556499043770295831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) - A000292 (n + 1)

end

end A130857.P14556499043770295831

namespace A130857

/-- `A005585(n+1)-A000292(n+1)` -/
def P14556499043770295831.Spec : Prop :=
  ∀ n, P14556499043770295831.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P14245414933657007071

`A051843(n+1)-A033455(n+1)`
-/

namespace A130857.P14245414933657007071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051843 (n + 1) - A033455 (n + 1)

end

end A130857.P14245414933657007071

namespace A130857

/-- `A051843(n+1)-A033455(n+1)` -/
def P14245414933657007071.Spec : Prop :=
  ∀ n, P14245414933657007071.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P11321673484322325145

`A005585(n+1)+A095661(n)-A095667(n)`
-/

namespace A130857.P11321673484322325145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A095661 n - A095667 n)

end

end A130857.P11321673484322325145

namespace A130857

/-- `A005585(n+1)+A095661(n)-A095667(n)` -/
def P11321673484322325145.Spec : Prop :=
  ∀ n, P11321673484322325145.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P16549792383541920679

`A005582(n+1)+A005585(n+1)-A095661(n)`
-/

namespace A130857.P16549792383541920679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1) + (A005585 (n + 1) - A095661 n)

end

end A130857.P16549792383541920679

namespace A130857

/-- `A005582(n+1)+A005585(n+1)-A095661(n)` -/
def P16549792383541920679.Spec : Prop :=
  ∀ n, P16549792383541920679.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P12279339055115543603

`∑[A050297(n+2)]-1`
-/

namespace A130857.P12279339055115543603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050297 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A130857.P12279339055115543603

namespace A130857

/-- `∑[A050297(n+2)]-1` -/
def P12279339055115543603.Spec : Prop :=
  ∀ n, P12279339055115543603.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P14188017374006985360

`A005585(n+1)-A004302(n+1)/A000217(n+1)`
-/

namespace A130857.P14188017374006985360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005585 (n + 1) : ℚ) - (A004302 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A130857.P14188017374006985360

namespace A130857

/-- `A005585(n+1)-A004302(n+1)/A000217(n+1)` -/
def P14188017374006985360.Spec : Prop :=
  ∀ n, P14188017374006985360.a n = (A130857 (n + 1) : ℚ)

end A130857

/-! ## A130857.P12606210649611873870

`A253942(n+4)-∑[A005718(n)]`
-/

namespace A130857.P12606210649611873870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130857.P12606210649611873870

namespace A130857

/-- `A253942(n+4)-∑[A005718(n)]` -/
def P12606210649611873870.Spec : Prop :=
  ∀ n, P12606210649611873870.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P18155015838029784556

`∑[A117662(n+3)]-A117662(n+3)`
-/

namespace A130857.P18155015838029784556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A117662 (n + 3)

end

end A130857.P18155015838029784556

namespace A130857

/-- `∑[A117662(n+3)]-A117662(n+3)` -/
def P18155015838029784556.Spec : Prop :=
  ∀ n, P18155015838029784556.a n = A130857 (n + 1)

end A130857

/-! ## A130857.P7834981948747955546

`A081282(n)+A000914(n)`
-/

namespace A130857.P7834981948747955546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081282 n + A000914 n

end

end A130857.P7834981948747955546

namespace A130857

/-- `A081282(n)+A000914(n)` -/
def P7834981948747955546.Spec : Prop :=
  ∀ n, P7834981948747955546.a n = A130857 (n + 1)

end A130857

/-!
# A130858: Smallest k such that A061762(k) = n.

The programs for A130858, there is no canonical definition to state claims against.
-/

/-! ## A130858.P14219044643075374953

`A138234(A332177(n+1))`
-/

namespace A130858.P14219044643075374953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (A332177 (n + 1)).toNat

end

end A130858.P14219044643075374953

/-! ## A130858.P7617014666643363699

`A098760(n)%A085450(A207901(n))`
-/

namespace A130858.P7617014666643363699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098760 n) (A085450 (A207901 n).toNat)

end

end A130858.P7617014666643363699

/-! ## A130858.P6087906336991032527

`∑{d}[A347520(A332177(n+1)), A000010(#)]`
-/

namespace A130858.P6087906336991032527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A332177 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A130858.P6087906336991032527

/-! ## A130858.P4693676333463883914

`char[A007318(n)]*A347520(A332177(n+1))`
-/

namespace A130858.P4693676333463883914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A347520 (A332177 (n + 1)).toNat

end

end A130858.P4693676333463883914

/-!
# A130859: 1729-gonal numbers.

The programs for A130859, the canonical program `A130859.P12784899593507626492` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130859 has offset 1).

The definition of A130859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130859.P12784899593507626492

`∑[19*91*n]+1-n²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130859

/-- `∑[19*91*n]+1-n²` -/
def P12784899593507626492.Spec : Prop :=
  ∀ n, P12784899593507626492.a n = A130859 (n + 1)

theorem P12784899593507626492.correct : P12784899593507626492.Spec := by
  intro n
  simp only [A130859, Nat.add_sub_cancel]

end A130859

/-! ## A130859.P6744417837656023498

`abs(n²-A130876(n))`
-/

namespace A130859.P6744417837656023498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A130876 n|

end

end A130859.P6744417837656023498

namespace A130859

/-- `abs(n²-A130876(n))` -/
def P6744417837656023498.Spec : Prop :=
  ∀ n, P6744417837656023498.a n = A130859 (n + 1)

end A130859

/-! ## A130859.P7450208489644619044

`∑[A138129(n)-(2*n-1)]`
-/

namespace A130859.P7450208489644619044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138129 n - ((2 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130859.P7450208489644619044

namespace A130859

/-- `∑[A138129(n)-(2*n-1)]` -/
def P7450208489644619044.Spec : Prop :=
  ∀ n, P7450208489644619044.a n = A130859 (n + 1)

end A130859

/-! ## A130859.P252912764111461696

`abs(A130876(n)-A000290(n))`
-/

namespace A130859.P252912764111461696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130876 n - A000290 n|

end

end A130859.P252912764111461696

namespace A130859

/-- `abs(A130876(n)-A000290(n))` -/
def P252912764111461696.Spec : Prop :=
  ∀ n, P252912764111461696.a n = A130859 (n + 1)

end A130859

/-! ## A130859.P16905927913651265929

`(A130876(n)-n²)%A016791(n)²`
-/

namespace A130859.P16905927913651265929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130876 n - (n ^ 2 : ℤ)) (A016791 n ^ 2)

end

end A130859.P16905927913651265929

namespace A130859

/-- `(A130876(n)-n²)%A016791(n)²` -/
def P16905927913651265929.Spec : Prop :=
  ∀ n, P16905927913651265929.a n = A130859 (n + 1)

end A130859

/-! ## A130859.P15028284162863361963

`(A130876(n)-n²)*A253414(2*n)²`
-/

namespace A130859.P15028284162863361963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130876 n - (n ^ 2 : ℤ)) * A253414 (2 * n) ^ 2

end

end A130859.P15028284162863361963

namespace A130859

/-- `(A130876(n)-n²)*A253414(2*n)²` -/
def P15028284162863361963.Spec : Prop :=
  ∀ n, P15028284162863361963.a n = A130859 (n + 1)

end A130859

/-! ## A130859.P17406394573997242005

`(A130876(n)-n²)*A014963(C(n+5, 2))`
-/

namespace A130859.P17406394573997242005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130876 n - (n ^ 2 : ℤ)) * A014963 (Nat.choose (n + 5) 2)

end

end A130859.P17406394573997242005

namespace A130859

/-- `(A130876(n)-n²)*A014963(C(n+5, 2))` -/
def P17406394573997242005.Spec : Prop :=
  ∀ n, P17406394573997242005.a n = A130859 (n + 1)

end A130859

/-!
# A130861: a(n) = (n-1)*(2*n+5).

The programs for A130861, the canonical program `A130861.P192506127688999638` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130861 has offset 1).

The definition of A130861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*(n+1)+5)` (program `A130861.P192506127688999638`, by `A130861.P192506127688999638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130861.P6068896887878690166

`n*(2*n+7)`
-/

namespace A130861.P6068896887878690166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 7)

end

end A130861.P6068896887878690166

namespace A130861

/-- `n*(2*n+7)` -/
def P6068896887878690166.Spec : Prop :=
  ∀ n, (P6068896887878690166.a n : ℤ) = A130861 (n + 1)

theorem P6068896887878690166.correct : P6068896887878690166.Spec := by
  intro n
  simp only [A130861, Nat.add_sub_cancel, A130861.P6068896887878690166.a, A130861.P192506127688999638.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A130861

/-! ## A130861.P192506127688999638

`n*(2*(n+1)+5)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130861

/-- `n*(2*(n+1)+5)` -/
def P192506127688999638.Spec : Prop :=
  ∀ n, (P192506127688999638.a n : ℤ) = A130861 (n + 1)

theorem P192506127688999638.correct : P192506127688999638.Spec := by
  intro n
  simp only [A130861, Nat.add_sub_cancel]

end A130861

/-! ## A130861.P2973539022865068489

`∑[a(n-1)+4]` with `a(0)=0, a(1)=9`
-/

namespace A130861.P2973539022865068489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130861.P2973539022865068489

namespace A130861

/-- `∑[a(n-1)+4]` -/
def P2973539022865068489.Spec : Prop :=
  ∀ n, (P2973539022865068489.a n : ℤ) = A130861 (n + 1)

end A130861

/-! ## A130861.P15460721703834883407

`record[(n-4)*2*n]-n`
-/

namespace A130861.P15460721703834883407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A130861.P15460721703834883407

namespace A130861

/-- `record[(n-4)*2*n]-n` -/
def P15460721703834883407.Spec : Prop :=
  ∀ n, P15460721703834883407.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P9487141277443968771

`lcm(n+2, n+3+n)-6`
-/

namespace A130861.P9487141277443968771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (n + 3 + n) : ℤ) - 6

end

end A130861.P9487141277443968771

namespace A130861

/-- `lcm(n+2, n+3+n)-6` -/
def P9487141277443968771.Spec : Prop :=
  ∀ n, P9487141277443968771.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P62386756498897333

`5*n-∑[a(n-1)-4]` with `a(0)=0`
-/

namespace A130861.P62386756498897333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130861.P62386756498897333

namespace A130861

/-- `5*n-∑[a(n-1)-4]` -/
def P62386756498897333.Spec : Prop :=
  ∀ n, P62386756498897333.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P12209004103538111240

`∑[record[6-xor(3, -n)]]-(n+3)`
-/

namespace A130861.P12209004103538111240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.xor 3 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 3 : ℤ)

end

end A130861.P12209004103538111240

namespace A130861

/-- `∑[record[6-xor(3, -n)]]-(n+3)` -/
def P12209004103538111240.Spec : Prop :=
  ∀ n, P12209004103538111240.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P14778086402506388515

`∑[record[6-xor(3, -n)]]-3-n`
-/

namespace A130861.P14778086402506388515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.xor 3 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3 - (n : ℤ)

end

end A130861.P14778086402506388515

namespace A130861

/-- `∑[record[6-xor(3, -n)]]-3-n` -/
def P14778086402506388515.Spec : Prop :=
  ∀ n, P14778086402506388515.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P15256862674789541543

`5-(n-5*n-a(n-1))` with `a(0)=0`
-/

namespace A130861.P15256862674789541543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - ((n : ℤ) - (5 * n : ℤ) - a (n - 1))

end

end A130861.P15256862674789541543

namespace A130861

/-- `5-(n-5*n-a(n-1))` -/
def P15256862674789541543.Spec : Prop :=
  ∀ n, P15256862674789541543.a n = A130861 (n + 1)

theorem P15256862674789541543.correct : P15256862674789541543.Spec := by
  intro n
  induction n with
  | zero => simp [A130861, A130861.P15256862674789541543.a, A130861.P192506127688999638.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A130861, Nat.add_sub_cancel, A130861.P15256862674789541543.a, A130861.P192506127688999638.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A130861

/-! ## A130861.P6718680825211268460

`n-3+C(n+3+n, 2)+n`
-/

namespace A130861.P6718680825211268460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 + (Nat.choose (n + 3 + n) 2 + n : ℤ)

end

end A130861.P6718680825211268460

namespace A130861

/-- `n-3+C(n+3+n, 2)+n` -/
def P6718680825211268460.Spec : Prop :=
  ∀ n, P6718680825211268460.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P11549543454382289038

`lcm(n, n*Δ[(n-3-2*n)²])`
-/

namespace A130861.P11549543454382289038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 - (2 * n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * (f1 (n + 1) - f1 n))

end

end A130861.P11549543454382289038

namespace A130861

/-- `lcm(n, n*Δ[(n-3-2*n)²])` -/
def P11549543454382289038.Spec : Prop :=
  ∀ n, (P11549543454382289038.a n : ℤ) = A130861 (n + 1)

end A130861

/-! ## A130861.P7228924307787851382

`A139570(n)+n`
-/

namespace A130861.P7228924307787851382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139570 n + (n : ℤ)

end

end A130861.P7228924307787851382

namespace A130861

/-- `A139570(n)+n` -/
def P7228924307787851382.Spec : Prop :=
  ∀ n, P7228924307787851382.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P656636653526746574

`A028563(n)+n²`
-/

namespace A130861.P656636653526746574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028563 n + (n ^ 2 : ℤ)

end

end A130861.P656636653526746574

namespace A130861

/-- `A028563(n)+n²` -/
def P656636653526746574.Spec : Prop :=
  ∀ n, P656636653526746574.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P8006964413339652203

`A140672(n)+∑[n]`
-/

namespace A130861.P8006964413339652203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130861.P8006964413339652203

namespace A130861

/-- `A140672(n)+∑[n]` -/
def P8006964413339652203.Spec : Prop :=
  ∀ n, P8006964413339652203.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P11931429023404569439

`A091823(n+1)-4`
-/

namespace A130861.P11931429023404569439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091823 (n + 1) - 4

end

end A130861.P11931429023404569439

namespace A130861

/-- `A091823(n+1)-4` -/
def P11931429023404569439.Spec : Prop :=
  ∀ n, P11931429023404569439.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P763035020274743912

`A059993(n)-1+n`
-/

namespace A130861.P763035020274743912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n - 1 + (n : ℤ)

end

end A130861.P763035020274743912

namespace A130861

/-- `A059993(n)-1+n` -/
def P763035020274743912.Spec : Prop :=
  ∀ n, P763035020274743912.a n = A130861 (n + 1)

end A130861

/-! ## A130861.P4426905644165028329

`A161532(n)-(n+1)`
-/

namespace A130861.P4426905644165028329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n - (n + 1 : ℤ)

end

end A130861.P4426905644165028329

namespace A130861

/-- `A161532(n)-(n+1)` -/
def P4426905644165028329.Spec : Prop :=
  ∀ n, P4426905644165028329.a n = A130861 (n + 1)

end A130861

/-!
# A130862: a(n) = (n-1)*(n+2)*(2*n+11)/2.

The programs for A130862, the canonical program `A130862.P13267099843462978650` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130862 has offset 1).

The definition of A130862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+3)*(2*(n+1)+11)/2` (program `A130862.P2761944857597935613`, by `A130862.P2761944857597935613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130862.P2761944857597935613

`n*(n+3)*(2*(n+1)+11)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A130862.P2761944857597935613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 3 : ℚ) * ((2 * (n + 1) + 11 : ℚ) / 2))

end

end A130862.P2761944857597935613

namespace A130862

/-- `n*(n+3)*(2*(n+1)+11)/2` -/
def P2761944857597935613.Spec : Prop :=
  ∀ n, P2761944857597935613.a n = (A130862 (n + 1) : ℚ)

theorem P2761944857597935613.correct : P2761944857597935613.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A130862, Nat.add_sub_cancel, A130862.P2761944857597935613.a, A130862.P13267099843462978650.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A130862, Nat.add_sub_cancel, A130862.P2761944857597935613.a, A130862.P13267099843462978650.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A130862

/-! ## A130862.P13267099843462978650

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=30, a(2)=85, a(3)=171`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130862

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13267099843462978650.Spec : Prop :=
  ∀ n, P13267099843462978650.a n = A130862 (n + 1)

theorem P13267099843462978650.correct : P13267099843462978650.Spec := by
  intro n
  simp only [A130862, Nat.add_sub_cancel]

end A130862

/-! ## A130862.P5155957765550084888

`∑[A140680(n)]+11*n`
-/

namespace A130862.P5155957765550084888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (11 * n : ℤ)

end

end A130862.P5155957765550084888

namespace A130862

/-- `∑[A140680(n)]+11*n` -/
def P5155957765550084888.Spec : Prop :=
  ∀ n, P5155957765550084888.a n = A130862 (n + 1)

end A130862

/-! ## A130862.P2513894679972933443

`A370914(n)-A212331(n)`
-/

namespace A130862.P2513894679972933443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370914 n - A212331 n

end

end A130862.P2513894679972933443

namespace A130862

/-- `A370914(n)-A212331(n)` -/
def P2513894679972933443.Spec : Prop :=
  ∀ n, P2513894679972933443.a n = A130862 (n + 1)

end A130862

/-! ## A130862.P1058277381950086046

`A140679(n)+∑[A140678(n)]`
-/

namespace A130862.P1058277381950086046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140679 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130862.P1058277381950086046

namespace A130862

/-- `A140679(n)+∑[A140678(n)]` -/
def P1058277381950086046.Spec : Prop :=
  ∀ n, P1058277381950086046.a n = A130862 (n + 1)

end A130862

/-! ## A130862.P2976173542467811756

`A140090(n)+n*A020705(n)²`
-/

namespace A130862.P2976173542467811756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 n + (n : ℤ) * A020705 n ^ 2

end

end A130862.P2976173542467811756

namespace A130862

/-- `A140090(n)+n*A020705(n)²` -/
def P2976173542467811756.Spec : Prop :=
  ∀ n, P2976173542467811756.a n = A130862 (n + 1)

end A130862

/-! ## A130862.P10078169310144783966

`(n+1)²+A162258(n+2)-10`
-/

namespace A130862.P10078169310144783966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A162258 (n + 2) - 10)

end

end A130862.P10078169310144783966

namespace A130862

/-- `(n+1)²+A162258(n+2)-10` -/
def P10078169310144783966.Spec : Prop :=
  ∀ n, P10078169310144783966.a n = A130862 (n + 1)

end A130862

/-! ## A130862.P13932485171269497782

`ceil((A056115(2*(n+2))+9)*n/2)`
-/

namespace A130862.P13932485171269497782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056115 (2 * (n + 2)) + 9 : ℚ) * ((n : ℚ) / 2)⌉

end

end A130862.P13932485171269497782

namespace A130862

/-- `ceil((A056115(2*(n+2))+9)*n/2)` -/
def P13932485171269497782.Spec : Prop :=
  ∀ n, P13932485171269497782.a n = A130862 (n + 1)

end A130862

/-! ## A130862.P17679835968057729765

`A160378(n)+A008592(A005563(n))`
-/

namespace A130862.P17679835968057729765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A008592 (A005563 n).toNat

end

end A130862.P17679835968057729765

namespace A130862

/-- `A160378(n)+A008592(A005563(n))` -/
def P17679835968057729765.Spec : Prop :=
  ∀ n, P17679835968057729765.a n = A130862 (n + 1)

end A130862

/-!
# A130863: Ratio of quadruple Sum of k^2-1 to quadruple sum of k made into an integer sequence: (1/6)*(-1 + n)*(2 + n)*(3 + n)*(7 + n).

The programs for A130863, the canonical program `A130863.P7613907202910305908` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130863 has offset 1).

The definition of A130863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130863.P7613907202910305908

`record[(C(n+3, 3)-(n+1))*(n-3)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130863

/-- `record[(C(n+3, 3)-(n+1))*(n-3)]` -/
def P7613907202910305908.Spec : Prop :=
  ∀ n, P7613907202910305908.a n = A130863 (n + 1)

theorem P7613907202910305908.correct : P7613907202910305908.Spec := by
  intro n
  simp only [A130863, Nat.add_sub_cancel]

end A130863

/-! ## A130863.P15433544847698094118

`n*(A005586(n)+A020705(n)²)`
-/

namespace A130863.P15433544847698094118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005586 n + A020705 n ^ 2)

end

end A130863.P15433544847698094118

namespace A130863

/-- `n*(A005586(n)+A020705(n)²)` -/
def P15433544847698094118.Spec : Prop :=
  ∀ n, P15433544847698094118.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P4407772417431755877

`n*(Δ[A005587(n)]+2)`
-/

namespace A130863.P4407772417431755877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n + 2)

end

end A130863.P4407772417431755877

namespace A130863

/-- `n*(Δ[A005587(n)]+2)` -/
def P4407772417431755877.Spec : Prop :=
  ∀ n, P4407772417431755877.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P15973943417462958765

`n*(Δ[A024191(n+1)]+2)`
-/

namespace A130863.P15973943417462958765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n + 2)

end

end A130863.P15973943417462958765

namespace A130863

/-- `n*(Δ[A024191(n+1)]+2)` -/
def P15973943417462958765.Spec : Prop :=
  ∀ n, P15973943417462958765.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P4631149240323433570

`n*(A008778(n+2)+n+3)`
-/

namespace A130863.P4631149240323433570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008778 (n + 2) + (n + 3 : ℤ))

end

end A130863.P4631149240323433570

namespace A130863

/-- `n*(A008778(n+2)+n+3)` -/
def P4631149240323433570.Spec : Prop :=
  ∀ n, P4631149240323433570.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P17800771184749223933

`n*Δ[A063258(n)+A062748(n)]`
-/

namespace A130863.P17800771184749223933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n + A062748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A130863.P17800771184749223933

namespace A130863

/-- `n*Δ[A063258(n)+A062748(n)]` -/
def P17800771184749223933.Spec : Prop :=
  ∀ n, P17800771184749223933.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P2956963375159639591

`n*Δ[A264443(n)+A005712(n+2)]`
-/

namespace A130863.P2956963375159639591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + A005712 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A130863.P2956963375159639591

namespace A130863

/-- `n*Δ[A264443(n)+A005712(n+2)]` -/
def P2956963375159639591.Spec : Prop :=
  ∀ n, P2956963375159639591.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P3037666822591331515

`n*Δ[A023545(n+1)+A005712(n+2)]`
-/

namespace A130863.P3037666822591331515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) + A005712 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A130863.P3037666822591331515

namespace A130863

/-- `n*Δ[A023545(n+1)+A005712(n+2)]` -/
def P3037666822591331515.Spec : Prop :=
  ∀ n, P3037666822591331515.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P4783972125400663254

`n*Δ[A005582(n+2)]`
-/

namespace A130863.P4783972125400663254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A130863.P4783972125400663254

namespace A130863

/-- `n*Δ[A005582(n+2)]` -/
def P4783972125400663254.Spec : Prop :=
  ∀ n, P4783972125400663254.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P11490032399032015435

`n*(A005286(n+2)+1)`
-/

namespace A130863.P11490032399032015435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005286 (n + 2) + 1)

end

end A130863.P11490032399032015435

namespace A130863

/-- `n*(A005286(n+2)+1)` -/
def P11490032399032015435.Spec : Prop :=
  ∀ n, P11490032399032015435.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P6736014670270367004

`n*(A005586(n+2)+2)`
-/

namespace A130863.P6736014670270367004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005586 (n + 2) + 2)

end

end A130863.P6736014670270367004

namespace A130863

/-- `n*(A005586(n+2)+2)` -/
def P6736014670270367004.Spec : Prop :=
  ∀ n, P6736014670270367004.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P7763563097752093020

`n*(A092286(n+2)-n)`
-/

namespace A130863.P7763563097752093020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A092286 (n + 2) - (n : ℤ))

end

end A130863.P7763563097752093020

namespace A130863

/-- `n*(A092286(n+2)-n)` -/
def P7763563097752093020.Spec : Prop :=
  ∀ n, P7763563097752093020.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P3687862578046101388

`n*Δ[Δ[A005583(n+1)]]`
-/

namespace A130863.P3687862578046101388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A130863.P3687862578046101388

namespace A130863

/-- `n*Δ[Δ[A005583(n+1)]]` -/
def P3687862578046101388.Spec : Prop :=
  ∀ n, P3687862578046101388.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P3147420254644218788

`n*(A074742(n+3)+n+1)`
-/

namespace A130863.P3147420254644218788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A074742 (n + 3) + (n + 1 : ℤ))

end

end A130863.P3147420254644218788

namespace A130863

/-- `n*(A074742(n+3)+n+1)` -/
def P3147420254644218788.Spec : Prop :=
  ∀ n, P3147420254644218788.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P2475621315264286911

`n*(A062748(n+2)-(n+3))`
-/

namespace A130863.P2475621315264286911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A062748 (n + 2) - (n + 3 : ℤ))

end

end A130863.P2475621315264286911

namespace A130863

/-- `n*(A062748(n+2)-(n+3))` -/
def P2475621315264286911.Spec : Prop :=
  ∀ n, P2475621315264286911.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P15124536758557271148

`record[(n-3)*∑[∑[n]+n]]`
-/

namespace A130863.P15124536758557271148
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130863.P15124536758557271148

namespace A130863

/-- `record[(n-3)*∑[∑[n]+n]]` -/
def P15124536758557271148.Spec : Prop :=
  ∀ n, P15124536758557271148.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P334030759433620032

`n/3*A267370(n+3)`
-/

namespace A130863.P334030759433620032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A267370 (n + 3) : ℚ)

end

end A130863.P334030759433620032

namespace A130863

/-- `n/3*A267370(n+3)` -/
def P334030759433620032.Spec : Prop :=
  ∀ n, P334030759433620032.a n = (A130863 (n + 1) : ℚ)

end A130863

/-! ## A130863.P16534600359820409108

`n*A005581(n+4)`
-/

namespace A130863.P16534600359820409108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005581 (n + 4)

end

end A130863.P16534600359820409108

namespace A130863

/-- `n*A005581(n+4)` -/
def P16534600359820409108.Spec : Prop :=
  ∀ n, P16534600359820409108.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P18253187645469697599

`n*(A129936(n+4)+2)`
-/

namespace A130863.P18253187645469697599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A129936 (n + 4) + 2)

end

end A130863.P18253187645469697599

namespace A130863

/-- `n*(A129936(n+4)+2)` -/
def P18253187645469697599.Spec : Prop :=
  ∀ n, P18253187645469697599.a n = A130863 (n + 1)

end A130863

/-! ## A130863.P6416132550262982807

`n*(A020722(2*n)+A006416(n+3))`
-/

namespace A130863.P6416132550262982807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A020722 (2 * n) + A006416 (n + 3))

end

end A130863.P6416132550262982807

namespace A130863

/-- `n*(A020722(2*n)+A006416(n+3))` -/
def P6416132550262982807.Spec : Prop :=
  ∀ n, P6416132550262982807.a n = A130863 (n + 1)

end A130863

/-!
# A130866: Number of polyominoes (or square animals) with at most n cells.

The programs for A130866, there is no canonical definition to state claims against.
-/

/-! ## A130866.P256568912122435519

`A173271(n+1)-1`
-/

namespace A130866.P256568912122435519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 (n + 1) - 1

end

end A130866.P256568912122435519

/-! ## A130866.P15919359944416954188

`∑[A000105(n+1)]`
-/

namespace A130866.P15919359944416954188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130866.P15919359944416954188

/-! ## A130866.P15267749455618877769

`∑[abs(Δ[A173271(n)])]`
-/

namespace A130866.P15267749455618877769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130866.P15267749455618877769

/-! ## A130866.P3594694440926127498

`∑[∑[A283109(n)]+1]`
-/

namespace A130866.P3594694440926127498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130866.P3594694440926127498

/-! ## A130866.P7314159163336416036

`∑[A006765(n+1)+1]`
-/

namespace A130866.P7314159163336416036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130866.P7314159163336416036

/-! ## A130866.P8421888502078816911

`∑[A057766(n+1)/(n+1)]`
-/

namespace A130866.P8421888502078816911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057766 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130866.P8421888502078816911

/-! ## A130866.P2739042906701762963

`record[A173271(A081753(n))-1]`
-/

namespace A130866.P2739042906701762963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 (A081753 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130866.P2739042906701762963

/-!
# A130867: Triangular polyominoes (or polyiamonds) with n cells at most (turning over is allowed, holes are allowed, must be connected along edges).

The programs for A130867, there is no canonical definition to state claims against.
-/

/-! ## A130867.P10462862048780451055

`∑[A000577(n+1)]`
-/

namespace A130867.P10462862048780451055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130867.P10462862048780451055

/-! ## A130867.P10080261643382968641

`∑[A096361(n+1)/(n+1)]`
-/

namespace A130867.P10080261643382968641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096361 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130867.P10080261643382968641

/-! ## A130867.P17347400330438017373

`A000577(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A130867.P17347400330438017373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000577 (n + 1) + a (A023443 n).toNat

end

end A130867.P17347400330438017373

/-! ## A130867.P14266972251030958354

`∑[A119532(n+1)-Δ[A173271(n)]]`
-/

namespace A130867.P14266972251030958354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119532 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130867.P14266972251030958354

/-! ## A130867.P7556304316473186179

`∑[A030224(n+1)+A030223(n+1)]`
-/

namespace A130867.P7556304316473186179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030224 (n + 1) + A030223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130867.P7556304316473186179

/-!
# A130869: Partial sums of A130752.

The programs for A130869, the canonical program `A130869.P337791573145592` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130869 has offset 0).

The definition of A130869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130869.P337791573145592

`2^(n+2)-A131026(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130869

/-- `2^(n+2)-A131026(n+2)` -/
def P337791573145592.Spec : Prop :=
  ∀ n, P337791573145592.a n = A130869 n

theorem P337791573145592.correct : P337791573145592.Spec := by
  intro n
  simp only [A130869]

end A130869

/-! ## A130869.P15444051665869605404

`∑[∑[round(cos(n%6))+2^n]]`
-/

namespace A130869.P15444051665869605404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ)) + (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130869.P15444051665869605404

namespace A130869

/-- `∑[∑[round(cos(n%6))+2^n]]` -/
def P15444051665869605404.Spec : Prop :=
  ∀ n, P15444051665869605404.a n = A130869 n

end A130869

/-! ## A130869.P1905518420250232961

`(1-a(n-1))%3+2^(n+2)` with `a(0)=2`
-/

namespace A130869.P1905518420250232961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (1 - a (n - 1)) 3 + (2 ^ (n + 2) : ℤ)

end

end A130869.P1905518420250232961

namespace A130869

/-- `(1-a(n-1))%3+2^(n+2)` -/
def P1905518420250232961.Spec : Prop :=
  ∀ n, P1905518420250232961.a n = A130869 n

end A130869

/-! ## A130869.P3214268594056027842

`∑[2*a(n-1)]+(2*a(n-1))%3` with `a(0)=2`
-/

namespace A130869.P3214268594056027842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1) % 3

end

end A130869.P3214268594056027842

namespace A130869

/-- `∑[2*a(n-1)]+(2*a(n-1))%3` -/
def P3214268594056027842.Spec : Prop :=
  ∀ n, (P3214268594056027842.a n : ℤ) = A130869 n

end A130869

/-! ## A130869.P13550988890073880373

`∑[A130752(n)]`
-/

namespace A130869.P13550988890073880373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130869.P13550988890073880373

namespace A130869

/-- `∑[A130752(n)]` -/
def P13550988890073880373.Spec : Prop :=
  ∀ n, P13550988890073880373.a n = A130869 n

end A130869

/-! ## A130869.P3003229954462915861

`∑[abs(Δ[A130750(n)])]`
-/

namespace A130869.P3003229954462915861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130869.P3003229954462915861

namespace A130869

/-- `∑[abs(Δ[A130750(n)])]` -/
def P3003229954462915861.Spec : Prop :=
  ∀ n, P3003229954462915861.a n = A130869 n

end A130869

/-! ## A130869.P4047891941731729077

`A130750(n+1)-1`
-/

namespace A130869.P4047891941731729077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 (n + 1) - 1

end

end A130869.P4047891941731729077

namespace A130869

/-- `A130750(n+1)-1` -/
def P4047891941731729077.Spec : Prop :=
  ∀ n, P4047891941731729077.a n = A130869 n

end A130869

/-! ## A130869.P9292257687057185578

`A281166(n+2)-1`
-/

namespace A130869.P9292257687057185578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281166 (n + 2) - 1

end

end A130869.P9292257687057185578

namespace A130869

/-- `A281166(n+2)-1` -/
def P9292257687057185578.Spec : Prop :=
  ∀ n, P9292257687057185578.a n = A130869 n

end A130869

/-! ## A130869.P9200468828736336545

`∑[∑[A282153(n)+2]]`
-/

namespace A130869.P9200468828736336545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282153 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130869.P9200468828736336545

namespace A130869

/-- `∑[∑[A282153(n)+2]]` -/
def P9200468828736336545.Spec : Prop :=
  ∀ n, P9200468828736336545.a n = A130869 n

end A130869

/-! ## A130869.P8405680812775871675

`A158745(3*(n+1))-1`
-/

namespace A130869.P8405680812775871675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158745 (3 * (n + 1)) - 1

end

end A130869.P8405680812775871675

namespace A130869

/-- `A158745(3*(n+1))-1` -/
def P8405680812775871675.Spec : Prop :=
  ∀ n, P8405680812775871675.a n = A130869 n

end A130869

/-! ## A130869.P341860982425429437

`∑[∑[A010892(n)+2^n]]`
-/

namespace A130869.P341860982425429437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130869.P341860982425429437

namespace A130869

/-- `∑[∑[A010892(n)+2^n]]` -/
def P341860982425429437.Spec : Prop :=
  ∀ n, P341860982425429437.a n = A130869 n

end A130869

/-! ## A130869.P17017552183257911003

`∑[A158745(2*n+1+n)]`
-/

namespace A130869.P17017552183257911003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158745 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130869.P17017552183257911003

namespace A130869

/-- `∑[A158745(2*n+1+n)]` -/
def P17017552183257911003.Spec : Prop :=
  ∀ n, P17017552183257911003.a n = A130869 n

end A130869

/-! ## A130869.P4109984836708220499

`∑[A128834(n)+2^(n+1)]`
-/

namespace A130869.P4109984836708220499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (2 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130869.P4109984836708220499

namespace A130869

/-- `∑[A128834(n)+2^(n+1)]` -/
def P4109984836708220499.Spec : Prop :=
  ∀ n, P4109984836708220499.a n = A130869 n

end A130869

/-! ## A130869.P6291419034862441308

`2^(n+2)-A164965(n+2)`
-/

namespace A130869.P6291419034862441308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A164965 (n + 2)

end

end A130869.P6291419034862441308

namespace A130869

/-- `2^(n+2)-A164965(n+2)` -/
def P6291419034862441308.Spec : Prop :=
  ∀ n, P6291419034862441308.a n = A130869 n

end A130869

/-! ## A130869.P10622560862526114713

`A131290(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A130869.P10622560862526114713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A131290 n + 2 * a (n - 1)

end

end A130869.P10622560862526114713

namespace A130869

/-- `A131290(n)+2*a(n-1)` -/
def P10622560862526114713.Spec : Prop :=
  ∀ n, P10622560862526114713.a n = A130869 n

end A130869

/-! ## A130869.P6836459556953906007

`A130785(n)+A126646(n)`
-/

namespace A130869.P6836459556953906007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130785 n + A126646 n

end

end A130869.P6836459556953906007

namespace A130869

/-- `A130785(n)+A126646(n)` -/
def P6836459556953906007.Spec : Prop :=
  ∀ n, P6836459556953906007.a n = A130869 n

end A130869

/-! ## A130869.P3382667158575816642

`A125128(n+1)+A077859(n)`
-/

namespace A130869.P3382667158575816642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1) + A077859 n

end

end A130869.P3382667158575816642

namespace A130869

/-- `A125128(n+1)+A077859(n)` -/
def P3382667158575816642.Spec : Prop :=
  ∀ n, P3382667158575816642.a n = A130869 n

end A130869

/-! ## A130869.P3105717127549652185

`A077859(n)+A000295(n+2)`
-/

namespace A130869.P3105717127549652185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077859 n + A000295 (n + 2)

end

end A130869.P3105717127549652185

namespace A130869

/-- `A077859(n)+A000295(n+2)` -/
def P3105717127549652185.Spec : Prop :=
  ∀ n, P3105717127549652185.a n = A130869 n

end A130869

/-! ## A130869.P2015575229576555309

`A130752(n+1)-A131290(n+1)`
-/

namespace A130869.P2015575229576555309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 (n + 1) - A131290 (n + 1)

end

end A130869.P2015575229576555309

namespace A130869

/-- `A130752(n+1)-A131290(n+1)` -/
def P2015575229576555309.Spec : Prop :=
  ∀ n, P2015575229576555309.a n = A130869 n

end A130869

/-!
# A130870: Palindromic primes with squareful neighbors.

The programs for A130870, there is no canonical definition to state claims against.
-/

/-! ## A130870.P17758696323939092741

`p?[A055483(A075432(n+1))]`
-/

namespace A130870.P17758696323939092741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A075432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130870.P17758696323939092741

/-!
# A130871: Numbers k such that the sum of the prime factors with multiplicity of k divides k+1.

The programs for A130871, the canonical program `A130871.P6796833549983646184` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130871 has offset 1).

The definition of A130871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130871.P6796833549983646184

`eq[n+2, lcm(n+2, A001414(n+1))]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130871

/-- `eq[n+2, lcm(n+2, A001414(n+1))]+1` -/
def P6796833549983646184.Spec : Prop :=
  ∀ n, (P6796833549983646184.a n : ℤ) = A130871 (n + 1)

theorem P6796833549983646184.correct : P6796833549983646184.Spec := by
  intro n
  simp only [A130871, Nat.add_sub_cancel]

end A130871

/-! ## A130871.P12421809126063145689

`eq[1, (n+3)%A107463(n+1)]+1`
-/

namespace A130871.P12421809126063145689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A107463 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130871.P12421809126063145689

namespace A130871

/-- `eq[1, (n+3)%A107463(n+1)]+1` -/
def P12421809126063145689.Spec : Prop :=
  ∀ n, (P12421809126063145689.a n : ℤ) = A130871 (n + 1)

end A130871

/-! ## A130871.P7484603431942715403

`eq[n+1, lcm(n+1, A001414(A028310(n)))]`
-/

namespace A130871.P7484603431942715403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001414 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130871.P7484603431942715403

namespace A130871

/-- `eq[n+1, lcm(n+1, A001414(A028310(n)))]` -/
def P7484603431942715403.Spec : Prop :=
  ∀ n, (P7484603431942715403.a n : ℤ) = A130871 (n + 1)

end A130871

/-!
# A130873: Sums of two distinct prime 4th powers.

The programs for A130873, there is no canonical definition to state claims against.
-/

/-! ## A130873.P2611115247037778574

`∩[A003336(n+1), A130833(n+1)]`
-/

namespace A130873.P2611115247037778574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130873.P2611115247037778574

/-! ## A130873.P3860211427184289248

`∩[A004831(n+1), A130833(n+1)]`
-/

namespace A130873.P3860211427184289248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130873.P3860211427184289248

/-! ## A130873.P1727593274725083102

`∩[A088687(n+1), A130833(n+1)]`
-/

namespace A130873.P1727593274725083102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130873.P1727593274725083102

/-! ## A130873.P2011085274564721910

`filter[A130833(n+1), A216284(#)]`
-/

namespace A130873.P2011085274564721910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216284 (f1 j).toNat = 1) n)

end

end A130873.P2011085274564721910

/-!
# A130874: Anti-divisorial numbers: the product of all anti-divisors of all integers less than or equal to n.

The programs for A130874, there is no canonical definition to state claims against.
-/

/-! ## A130874.P10144853647475227591

`∏[A091507(n+3)]`
-/

namespace A130874.P10144853647475227591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091507 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130874.P10144853647475227591

/-! ## A130874.P4183290387876415531

`∏[A093394(n+3)*A093396(n+3)]`
-/

namespace A130874.P4183290387876415531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093394 (n + 3) * A093396 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130874.P4183290387876415531

/-! ## A130874.P13083364324052467621

`a(n-A033999(n)²)*A091507(n+3)` with `a(0)=2`
-/

namespace A130874.P13083364324052467621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - A033999 n ^ 2).toNat * A091507 (n + 3)

end

end A130874.P13083364324052467621

/-! ## A130874.P15088906728684015429

`gcd(A014297(n), A091507(n+3))*a(n-1)` with `a(0)=2`
-/

namespace A130874.P15088906728684015429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.gcd (A014297 n) (A091507 (n + 3)) * a (n - 1)

end

end A130874.P15088906728684015429

/-! ## A130874.P15370152736496991502

`∏[(n+3)/A093395(n+3)*A093396(n+3)]`
-/

namespace A130874.P15370152736496991502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A093395 (n + 3) : ℚ) * (A093396 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130874.P15370152736496991502

/-!
# A130875: Absolute difference of final digits of two consecutive cubes.

The programs for A130875, the canonical program `A130875.P6522207113163388234` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130875 has offset 1).

The definition of A130875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130875.P6522207113163388234

`a(n-10)` with `a(0)=1, a(1)=7, a(2)=1, a(3)=3, a(4)=1, a(5)=1, a(6)=3, a(7)=1, a(8)=7, a(9)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130875

/-- `a(n-10)` -/
def P6522207113163388234.Spec : Prop :=
  ∀ n, (P6522207113163388234.a n : ℤ) = A130875 (n + 1)

theorem P6522207113163388234.correct : P6522207113163388234.Spec := by
  intro n
  simp only [A130875, Nat.add_sub_cancel]

end A130875

/-!
# A130876: Centered 1729-gonal numbers.

The programs for A130876, the canonical program `A130876.P13426216915032121415` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130876 has offset 0).

The definition of A130876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130876.P13426216915032121415

`∑[19*91*n]+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130876

/-- `∑[19*91*n]+1` -/
def P13426216915032121415.Spec : Prop :=
  ∀ n, (P13426216915032121415.a n : ℤ) = A130876 n

theorem P13426216915032121415.correct : P13426216915032121415.Spec := by
  intro n
  simp only [A130876]

end A130876

/-! ## A130876.P244063884798292599

`abs(a(n-1)+19*91*n)` with `a(0)=1`
-/

namespace A130876.P244063884798292599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 19 * (91 * n)

end

end A130876.P244063884798292599

namespace A130876

/-- `abs(a(n-1)+19*91*n)` -/
def P244063884798292599.Spec : Prop :=
  ∀ n, (P244063884798292599.a n : ℤ) = A130876 n

end A130876

/-! ## A130876.P3935115649463285272

`floor(a(n-1)+19*91*n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130876.P3935115649463285272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 19 * (91 * n)

end

end A130876.P3935115649463285272

namespace A130876

/-- `floor(a(n-1)+19*91*n)` -/
def P3935115649463285272.Spec : Prop :=
  ∀ n, (P3935115649463285272.a n : ℤ) = A130876 n

end A130876

/-! ## A130876.P3628118734274005163

`ceil(a(n-1)+19*91*n)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A130876.P3628118734274005163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 19 * (91 * n)

end

end A130876.P3628118734274005163

namespace A130876

/-- `ceil(a(n-1)+19*91*n)` -/
def P3628118734274005163.Spec : Prop :=
  ∀ n, (P3628118734274005163.a n : ℤ) = A130876 n

end A130876

/-! ## A130876.P2048981133030904855

`round(a(n-1)+19*91*n)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A130876.P2048981133030904855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 19 * (91 * n)

end

end A130876.P2048981133030904855

namespace A130876

/-- `round(a(n-1)+19*91*n)` -/
def P2048981133030904855.Spec : Prop :=
  ∀ n, (P2048981133030904855.a n : ℤ) = A130876 n

end A130876

/-! ## A130876.P13495056203084322032

`∑[A138129(n)+A000007(n)]`
-/

namespace A130876.P13495056203084322032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138129 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130876.P13495056203084322032

namespace A130876

/-- `∑[A138129(n)+A000007(n)]` -/
def P13495056203084322032.Spec : Prop :=
  ∀ n, P13495056203084322032.a n = A130876 n

end A130876

/-!
# A130877: Numbers that are congruent to {0, 5} mod 9.

The programs for A130877, the canonical program `A130877.P10599967228612317759` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130877 has offset 1).

The definition of A130877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130877.P63561413430490956

`ceil(9*n/2)`
-/

namespace A130877.P63561413430490956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈9 * ((n : ℚ) / 2)⌉

end

end A130877.P63561413430490956

namespace A130877

/-- `ceil(9*n/2)` -/
def P63561413430490956.Spec : Prop :=
  ∀ n, P63561413430490956.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P10599967228612317759

`a(n-2)+9` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130877

/-- `a(n-2)+9` -/
def P10599967228612317759.Spec : Prop :=
  ∀ n, (P10599967228612317759.a n : ℤ) = A130877 (n + 1)

theorem P10599967228612317759.correct : P10599967228612317759.Spec := by
  intro n
  simp only [A130877, Nat.add_sub_cancel]

end A130877

/-! ## A130877.P13560913403634706639

`∑[n%2+4]-4`
-/

namespace A130877.P13560913403634706639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A130877.P13560913403634706639

namespace A130877

/-- `∑[n%2+4]-4` -/
def P13560913403634706639.Spec : Prop :=
  ∀ n, P13560913403634706639.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P11466956429112640473

`∑[6-gcd(2, n)]-4`
-/

namespace A130877.P11466956429112640473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A130877.P11466956429112640473

namespace A130877

/-- `∑[6-gcd(2, n)]-4` -/
def P11466956429112640473.Spec : Prop :=
  ∀ n, P11466956429112640473.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P2413879145866812758

`∑[and(1, n)+4]-4`
-/

namespace A130877.P2413879145866812758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A130877.P2413879145866812758

namespace A130877

/-- `∑[and(1, n)+4]-4` -/
def P2413879145866812758.Spec : Prop :=
  ∀ n, P2413879145866812758.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P16160165057463670047

`∑[and(1, n)]+4*n`
-/

namespace A130877.P16160165057463670047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * n

end

end A130877.P16160165057463670047

namespace A130877

/-- `∑[and(1, n)]+4*n` -/
def P16160165057463670047.Spec : Prop :=
  ∀ n, (P16160165057463670047.a n : ℤ) = A130877 (n + 1)

end A130877

/-! ## A130877.P7958631399827512697

`record[n-dr(5*n²)]`
-/

namespace A130877.P7958631399827512697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (5 * n ^ 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130877.P7958631399827512697

namespace A130877

/-- `record[n-dr(5*n²)]` -/
def P7958631399827512697.Spec : Prop :=
  ∀ n, P7958631399827512697.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P9862576744790910171

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=5, a(2)=4`
-/

namespace A130877.P9862576744790910171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130877.P9862576744790910171

namespace A130877

/-- `∑[abs(a(n-2))]` -/
def P9862576744790910171.Spec : Prop :=
  ∀ n, (P9862576744790910171.a n : ℤ) = A130877 (n + 1)

end A130877

/-! ## A130877.P10493685407921138546

`∑[9-a(n-1)]` with `a(0)=0, a(1)=5`
-/

namespace A130877.P10493685407921138546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130877.P10493685407921138546

namespace A130877

/-- `∑[9-a(n-1)]` -/
def P10493685407921138546.Spec : Prop :=
  ∀ n, P10493685407921138546.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P9109057331988474649

`record[(2*n)²%9+n]`
-/

namespace A130877.P9109057331988474649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 % 9 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130877.P9109057331988474649

namespace A130877

/-- `record[(2*n)²%9+n]` -/
def P9109057331988474649.Spec : Prop :=
  ∀ n, (P9109057331988474649.a n : ℤ) = A130877 (n + 1)

end A130877

/-! ## A130877.P16431221178421677698

`∑[5-and(1, n-1)]-4`
-/

namespace A130877.P16431221178421677698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.land 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A130877.P16431221178421677698

namespace A130877

/-- `∑[5-and(1, n-1)]-4` -/
def P16431221178421677698.Spec : Prop :=
  ∀ n, P16431221178421677698.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P8941454386117456438

`9-floor(-a(n-2))` with `a(0)=0, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A130877.P8941454386117456438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  9 - (-a (n - 2))

end

end A130877.P8941454386117456438

namespace A130877

/-- `9-floor(-a(n-2))` -/
def P8941454386117456438.Spec : Prop :=
  ∀ n, P8941454386117456438.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P4493814981219496675

`9-ceil(-a(n-2))` with `a(0)=0, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A130877.P4493814981219496675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  9 - (-a (n - 2))

end

end A130877.P4493814981219496675

namespace A130877

/-- `9-ceil(-a(n-2))` -/
def P4493814981219496675.Spec : Prop :=
  ∀ n, P4493814981219496675.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P12906703785698268062

`9-round(-a(n-2))` with `a(0)=0, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A130877.P12906703785698268062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  9 - (-a (n - 2))

end

end A130877.P12906703785698268062

namespace A130877

/-- `9-round(-a(n-2))` -/
def P12906703785698268062.Spec : Prop :=
  ∀ n, P12906703785698268062.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P265054517327769010

`lt[1, val((n+2)²+5, 3)]`
-/

namespace A130877.P265054517327769010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 2) ^ 2 + 5) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130877.P265054517327769010

namespace A130877

/-- `lt[1, val((n+2)²+5, 3)]` -/
def P265054517327769010.Spec : Prop :=
  ∀ n, (P265054517327769010.a n : ℤ) = A130877 (n + 1)

end A130877

/-! ## A130877.P1404663003093170548

`9*n-4-a(n-1)` with `a(0)=0`
-/

namespace A130877.P1404663003093170548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (9 * n : ℤ) - 4 - a (n - 1)

end

end A130877.P1404663003093170548

namespace A130877

/-- `9*n-4-a(n-1)` -/
def P1404663003093170548.Spec : Prop :=
  ∀ n, P1404663003093170548.a n = A130877 (n + 1)

end A130877

/-! ## A130877.P4156067540082195576

`lt[0, (-(n+1))^dr((n+2)²)]`
-/

namespace A130877.P4156067540082195576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ SequenceMachineLib.digitalRoot ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A130877.P4156067540082195576

namespace A130877

/-- `lt[0, (-(n+1))^dr((n+2)²)]` -/
def P4156067540082195576.Spec : Prop :=
  ∀ n, (P4156067540082195576.a n : ℤ) = A130877 (n + 1)

end A130877

/-! ## A130877.P4576672579072923490

`lt[(n+1)^((2*n)%9), n+2]`
-/

namespace A130877.P4576672579072923490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (2 * n % 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130877.P4576672579072923490

namespace A130877

/-- `lt[(n+1)^((2*n)%9), n+2]` -/
def P4576672579072923490.Spec : Prop :=
  ∀ n, (P4576672579072923490.a n : ℤ) = A130877 (n + 1)

end A130877

/-!
# A130878: Inverse Moebius transform of A100107.

The programs for A130878, the canonical program `A130878.P6854840787225791751` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130878 has offset 1).

The definition of A130878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130878.P6854840787225791751

`∑{d}[n+1, A100107(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130878

/-- `∑{d}[n+1, A100107(#)]` -/
def P6854840787225791751.Spec : Prop :=
  ∀ n, P6854840787225791751.a n = A130878 (n + 1)

theorem P6854840787225791751.correct : P6854840787225791751.Spec := by
  intro n
  simp only [A130878, Nat.add_sub_cancel]

end A130878

/-! ## A130878.P8242379712389622045

`∑{d}[n+1, A000032(#)*A000005((n+1)/#)]`
-/

namespace A130878.P8242379712389622045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000032 d * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130878.P8242379712389622045

namespace A130878

/-- `∑{d}[n+1, A000032(#)*A000005((n+1)/#)]` -/
def P8242379712389622045.Spec : Prop :=
  ∀ n, P8242379712389622045.a n = A130878 (n + 1)

end A130878

/-! ## A130878.P663159032399096990

`∑{d}[n+1, A000005(#)*A000204((n+1)/#)]`
-/

namespace A130878.P663159032399096990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000204 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130878.P663159032399096990

namespace A130878

/-- `∑{d}[n+1, A000005(#)*A000204((n+1)/#)]` -/
def P663159032399096990.Spec : Prop :=
  ∀ n, P663159032399096990.a n = A130878 (n + 1)

end A130878

/-!
# A130880: Decimal expansion of 2*sin(Pi/18).

The programs for A130880, there is no canonical definition to state claims against.
-/

/-! ## A130880.P10089059920163126195

`9-A178959(n)`
-/

namespace A130880.P10089059920163126195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A178959 n

end

end A130880.P10089059920163126195

/-!
# A130881: Numbers m such that digitsum((m+k)*abs(m-k)) = m for some k >= 0.

The programs for A130881, there is no canonical definition to state claims against.
-/

/-! ## A130881.P17450451068884532530

`lt[(n+1)%9*atan(n), 3]`
-/

namespace A130881.P17450451068884532530
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 9 : ℕ) : ℝ) * Real.arctan (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A130881.P17450451068884532530

/-! ## A130881.P13672890710600530220

`∪[A274406(n+1), A008532(n)]`
-/

namespace A130881.P13672890710600530220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130881.P13672890710600530220

/-! ## A130881.P18069928332811564130

`∪[A274406(n+1), A055408(n)]`
-/

namespace A130881.P18069928332811564130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130881.P18069928332811564130

/-! ## A130881.P858262509311180483

`∪[A274406(n+1), A079914(n)]`
-/

namespace A130881.P858262509311180483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130881.P858262509311180483

/-! ## A130881.P8533095579614874870

`∪[A274406(n+1), A103623(n)]`
-/

namespace A130881.P8533095579614874870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103623 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130881.P8533095579614874870

/-! ## A130881.P15844281333980776095

`∪[A274406(n+1), A106629(n)]`
-/

namespace A130881.P15844281333980776095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106629 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130881.P15844281333980776095

/-! ## A130881.P8379184089616464975

`∪[A274406(n+1), A108276(n)]`
-/

namespace A130881.P8379184089616464975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130881.P8379184089616464975

/-! ## A130881.P14074966725177216066

`∪[A274406(n+1), A117312(n)]`
-/

namespace A130881.P14074966725177216066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130881.P14074966725177216066

/-! ## A130881.P13313486732604635770

`∪[A274406(n+1), A179095(n)]`
-/

namespace A130881.P13313486732604635770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130881.P13313486732604635770

/-! ## A130881.P3076382625691537434

`∪[A117404(n+1), A274406(n+1)]`
-/

namespace A130881.P3076382625691537434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130881.P3076382625691537434

/-!
# A130882: a(n) = smallest k such that A002808(n+1) = A002808(n) + (A002808(n) mod k), or 0 if no such k exists.

The programs for A130882, there is no canonical definition to state claims against.
-/

/-! ## A130882.P17019922452537184582

`A179620(n+1)/A028310(A179621(n+1))`
-/

namespace A130882.P17019922452537184582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179620 (n + 1) : ℚ) / (A028310 (A179621 (n + 1)).toNat : ℚ)

end

end A130882.P17019922452537184582

/-! ## A130882.P6843422280431603906

`A179620(n+1)/A179621(A348776(n+1))`
-/

namespace A130882.P6843422280431603906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179620 (n + 1) : ℚ) / (A179621 (A348776 (n + 1)).toNat : ℚ)

end

end A130882.P6843422280431603906

/-! ## A130882.P17063152557100479574

`A179620(n+1)/A179621(A094727(∑[n-1]+3))`
-/

namespace A130882.P17063152557100479574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179620 (n + 1) : ℚ) / (A179621 (A094727 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat).toNat : ℚ)

end

end A130882.P17063152557100479574

/-!
# A130883: a(n) = 2*n^2 - n + 1.

The programs for A130883, the canonical program `A130883.P3687789307616654688` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130883 has offset 0).

The definition of A130883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130883.P3687789307616654688

`n*(2*n-1)+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130883

/-- `n*(2*n-1)+1` -/
def P3687789307616654688.Spec : Prop :=
  ∀ n, P3687789307616654688.a n = A130883 n

theorem P3687789307616654688.correct : P3687789307616654688.Spec := by
  intro n
  simp only [A130883]

end A130883

/-! ## A130883.P4179228897069946772

`A128918(2*n)`
-/

namespace A130883.P4179228897069946772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128918 (2 * n)

end

end A130883.P4179228897069946772

namespace A130883

/-- `A128918(2*n)` -/
def P4179228897069946772.Spec : Prop :=
  ∀ n, P4179228897069946772.a n = A130883 n

end A130883

/-! ## A130883.P18403588986978572326

`A152947(2*n+1)`
-/

namespace A130883.P18403588986978572326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (2 * n + 1)

end

end A130883.P18403588986978572326

namespace A130883

/-- `A152947(2*n+1)` -/
def P18403588986978572326.Spec : Prop :=
  ∀ n, P18403588986978572326.a n = A130883 n

end A130883

/-! ## A130883.P17946681717964341062

`round(2/acot(n)²-n)`
-/

namespace A130883.P17946681717964341062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ) ^ 2 - (n : ℝ))

end

end A130883.P17946681717964341062

namespace A130883

/-- `round(2/acot(n)²-n)` -/
def P17946681717964341062.Spec : Prop :=
  ∀ n, P17946681717964341062.a n = A130883 n

end A130883

/-! ## A130883.P3838294940728474867

`abs(xor(C(2*n, 2), -1))`
-/

namespace A130883.P3838294940728474867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Nat.choose (2 * n) 2 : ℤ) (-1)|

end

end A130883.P3838294940728474867

namespace A130883

/-- `abs(xor(C(2*n, 2), -1))` -/
def P3838294940728474867.Spec : Prop :=
  ∀ n, P3838294940728474867.a n = A130883 n

end A130883

/-! ## A130883.P9214179561717422185

`-xor(C(2*n, 2), -1)`
-/

namespace A130883.P9214179561717422185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (Nat.choose (2 * n) 2 : ℤ) (-1)

end

end A130883.P9214179561717422185

namespace A130883

/-- `-xor(C(2*n, 2), -1)` -/
def P9214179561717422185.Spec : Prop :=
  ∀ n, P9214179561717422185.a n = A130883 n

end A130883

/-! ## A130883.P16533559479505831896

`∑[a(n-1)+4]` with `a(0)=1, a(1)=1`
-/

namespace A130883.P16533559479505831896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130883.P16533559479505831896

namespace A130883

/-- `∑[a(n-1)+4]` -/
def P16533559479505831896.Spec : Prop :=
  ∀ n, (P16533559479505831896.a n : ℤ) = A130883 n

end A130883

/-! ## A130883.P14818537836765524549

`abs(or(1, 2*n²)-n)`
-/

namespace A130883.P14818537836765524549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 (2 * n ^ 2) : ℤ) - (n : ℤ)|

end

end A130883.P14818537836765524549

namespace A130883

/-- `abs(or(1, 2*n²)-n)` -/
def P14818537836765524549.Spec : Prop :=
  ∀ n, P14818537836765524549.a n = A130883 n

end A130883

/-! ## A130883.P4265998766216842393

`abs(xor(1, 2*n²)-n)`
-/

namespace A130883.P4265998766216842393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 1 (2 * n ^ 2) : ℤ) - (n : ℤ)|

end

end A130883.P4265998766216842393

namespace A130883

/-- `abs(xor(1, 2*n²)-n)` -/
def P4265998766216842393.Spec : Prop :=
  ∀ n, P4265998766216842393.a n = A130883 n

end A130883

/-! ## A130883.P17552585320853468812

`∑[lcm(2, 1-2*n)-1]`
-/

namespace A130883.P17552585320853468812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - (2 * n : ℤ)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130883.P17552585320853468812

namespace A130883

/-- `∑[lcm(2, 1-2*n)-1]` -/
def P17552585320853468812.Spec : Prop :=
  ∀ n, P17552585320853468812.a n = A130883 n

end A130883

/-! ## A130883.P17719786294821183413

`xor(n-2-2*n², -1)`
-/

namespace A130883.P17719786294821183413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 2 - (2 * n ^ 2 : ℤ)) (-1)

end

end A130883.P17719786294821183413

namespace A130883

/-- `xor(n-2-2*n², -1)` -/
def P17719786294821183413.Spec : Prop :=
  ∀ n, P17719786294821183413.a n = A130883 n

end A130883

/-! ## A130883.P12346420477815425470

`floor(ϕ²-(ϕ-C(2*n, 2)))`
-/

namespace A130883.P12346420477815425470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ 2 - (Real.goldenRatio - (Nat.choose (2 * n) 2 : ℝ))⌋

end

end A130883.P12346420477815425470

namespace A130883

/-- `floor(ϕ²-(ϕ-C(2*n, 2)))` -/
def P12346420477815425470.Spec : Prop :=
  ∀ n, P12346420477815425470.a n = A130883 n

end A130883

/-! ## A130883.P17391944459901904746

`floor(2*n/acot(n)-(n-1))`
-/

namespace A130883.P17391944459901904746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / SequenceMachineLib.acot (n : ℝ) - ((n : ℤ) - 1 : ℝ)⌋

end

end A130883.P17391944459901904746

namespace A130883

/-- `floor(2*n/acot(n)-(n-1))` -/
def P17391944459901904746.Spec : Prop :=
  ∀ n, P17391944459901904746.a n = A130883 n

end A130883

/-! ## A130883.P14189032305762298407

`round(n/acot(2*n)-(n-1))`
-/

namespace A130883.P14189032305762298407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) - ((n : ℤ) - 1 : ℝ))

end

end A130883.P14189032305762298407

namespace A130883

/-- `round(n/acot(2*n)-(n-1))` -/
def P14189032305762298407.Spec : Prop :=
  ∀ n, P14189032305762298407.a n = A130883 n

end A130883

/-!
# A130884: a(n) = 3n^3 + 2n^2 + n + 1.

The programs for A130884, the canonical program `A130884.P10799048341863338117` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130884 has offset 0).

The definition of A130884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^3+2*n²+n+1` (program `A130884.P10799048341863338117`, by `A130884.P10799048341863338117.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130884.P10799048341863338117

`3*n^3+2*n²+n+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130884

/-- `3*n^3+2*n²+n+1` -/
def P10799048341863338117.Spec : Prop :=
  ∀ n, (P10799048341863338117.a n : ℤ) = A130884 n

theorem P10799048341863338117.correct : P10799048341863338117.Spec := by
  intro n
  simp only [A130884]

end A130884

/-! ## A130884.P13202947571047216125

`or(1, n*(Δ[n^3]-n))`
-/

namespace A130884.P13202947571047216125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)))

end

end A130884.P13202947571047216125

namespace A130884

/-- `or(1, n*(Δ[n^3]-n))` -/
def P13202947571047216125.Spec : Prop :=
  ∀ n, P13202947571047216125.a n = A130884 n

end A130884

/-! ## A130884.P7423001457783652061

`xor(1, n*(Δ[n^3]-n))`
-/

namespace A130884.P7423001457783652061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)))

end

end A130884.P7423001457783652061

namespace A130884

/-- `xor(1, n*(Δ[n^3]-n))` -/
def P7423001457783652061.Spec : Prop :=
  ∀ n, P7423001457783652061.a n = A130884 n

end A130884

/-! ## A130884.P15336260513875041184

`∑[A383466(n)-n²]`
-/

namespace A130884.P15336260513875041184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383466 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130884.P15336260513875041184

namespace A130884

/-- `∑[A383466(n)-n²]` -/
def P15336260513875041184.Spec : Prop :=
  ∀ n, P15336260513875041184.a n = A130884 n

end A130884

/-! ## A130884.P11853831241582909813

`∑[A010002(n)-5*n]`
-/

namespace A130884.P11853831241582909813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n - (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130884.P11853831241582909813

namespace A130884

/-- `∑[A010002(n)-5*n]` -/
def P11853831241582909813.Spec : Prop :=
  ∀ n, P11853831241582909813.a n = A130884 n

end A130884

/-! ## A130884.P8526056237790214753

`ceil(A067389(n)+acot(n+1))`
-/

namespace A130884.P8526056237790214753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067389 n : ℝ) + SequenceMachineLib.acot (n + 1 : ℝ)⌉

end

end A130884.P8526056237790214753

namespace A130884

/-- `ceil(A067389(n)+acot(n+1))` -/
def P8526056237790214753.Spec : Prop :=
  ∀ n, P8526056237790214753.a n = A130884 n

end A130884

/-! ## A130884.P17026689145575906747

`∑[(1-A008486(n))²+n+1]`
-/

namespace A130884.P17026689145575906747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008486 n) ^ 2 + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130884.P17026689145575906747

namespace A130884

/-- `∑[(1-A008486(n))²+n+1]` -/
def P17026689145575906747.Spec : Prop :=
  ∀ n, P17026689145575906747.a n = A130884 n

end A130884

/-! ## A130884.P15185587493579350359

`∑[(A004273(n)+n)²+n+1]`
-/

namespace A130884.P15185587493579350359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + (n : ℤ)) ^ 2 + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130884.P15185587493579350359

namespace A130884

/-- `∑[(A004273(n)+n)²+n+1]` -/
def P15185587493579350359.Spec : Prop :=
  ∀ n, P15185587493579350359.a n = A130884 n

end A130884

/-! ## A130884.P16450807639229689349

`∑[(A004277(n)-1+n)²+n+1]`
-/

namespace A130884.P16450807639229689349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - 1 + (n : ℤ)) ^ 2 + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130884.P16450807639229689349

namespace A130884

/-- `∑[(A004277(n)-1+n)²+n+1]` -/
def P16450807639229689349.Spec : Prop :=
  ∀ n, P16450807639229689349.a n = A130884 n

end A130884

/-! ## A130884.P3555974399689416483

`abs((n²+1+n)*3*n+1-A005563(n))`
-/

namespace A130884.P3555974399689416483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 + 1 + n) * (3 * n) + 1 : ℤ) - A005563 n|

end

end A130884.P3555974399689416483

namespace A130884

/-- `abs((n²+1+n)*3*n+1-A005563(n))` -/
def P3555974399689416483.Spec : Prop :=
  ∀ n, P3555974399689416483.a n = A130884 n

end A130884

/-! ## A130884.P1004860256163225139

`∑[A077591(n)+A028552(n)]`
-/

namespace A130884.P1004860256163225139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n + A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130884.P1004860256163225139

namespace A130884

/-- `∑[A077591(n)+A028552(n)]` -/
def P1004860256163225139.Spec : Prop :=
  ∀ n, P1004860256163225139.a n = A130884 n

end A130884

/-! ## A130884.P5156526476257877165

`∑[A139268(n)+A005893(n)]`
-/

namespace A130884.P5156526476257877165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n + A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130884.P5156526476257877165

namespace A130884

/-- `∑[A139268(n)+A005893(n)]` -/
def P5156526476257877165.Spec : Prop :=
  ∀ n, P5156526476257877165.a n = A130884 n

end A130884

/-! ## A130884.P16572604711716352533

`C(A067389(n)+1, A067389(n))`
-/

namespace A130884.P16572604711716352533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067389 n + 1).toNat (A067389 n).toNat

end

end A130884.P16572604711716352533

namespace A130884

/-- `C(A067389(n)+1, A067389(n))` -/
def P16572604711716352533.Spec : Prop :=
  ∀ n, (P16572604711716352533.a n : ℤ) = A130884 n

end A130884

/-! ## A130884.P10578863052391062488

`ceil(A067389(n)+A008480(A000015(n+1))/2)`
-/

namespace A130884.P10578863052391062488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067389 n : ℚ) + (A008480 (A000015 (n + 1)).toNat : ℚ) / 2⌉

end

end A130884.P10578863052391062488

namespace A130884

/-- `ceil(A067389(n)+A008480(A000015(n+1))/2)` -/
def P10578863052391062488.Spec : Prop :=
  ∀ n, P10578863052391062488.a n = A130884 n

end A130884

/-! ## A130884.P11819336354448779819

`∑[record[A173732(n)²+1]+n]`
-/

namespace A130884.P11819336354448779819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173732 n ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130884.P11819336354448779819

namespace A130884

/-- `∑[record[A173732(n)²+1]+n]` -/
def P11819336354448779819.Spec : Prop :=
  ∀ n, P11819336354448779819.a n = A130884 n

end A130884

/-! ## A130884.P5980194842644521702

`∑[A002061(3*n)-A004273(n)]`
-/

namespace A130884.P5980194842644521702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (3 * n) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130884.P5980194842644521702

namespace A130884

/-- `∑[A002061(3*n)-A004273(n)]` -/
def P5980194842644521702.Spec : Prop :=
  ∀ n, P5980194842644521702.a n = A130884 n

end A130884

/-! ## A130884.P17135198036827771997

`(A067389(n)+1)%A103123(n+1)`
-/

namespace A130884.P17135198036827771997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067389 n + 1) (A103123 (n + 1))

end

end A130884.P17135198036827771997

namespace A130884

/-- `(A067389(n)+1)%A103123(n+1)` -/
def P17135198036827771997.Spec : Prop :=
  ∀ n, P17135198036827771997.a n = A130884 n

end A130884

/-! ## A130884.P12161577800410041852

`(A067389(n)+1)*A014963(A004011(n))`
-/

namespace A130884.P12161577800410041852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067389 n + 1) * A014963 (A004011 n).toNat

end

end A130884.P12161577800410041852

namespace A130884

/-- `(A067389(n)+1)*A014963(A004011(n))` -/
def P12161577800410041852.Spec : Prop :=
  ∀ n, P12161577800410041852.a n = A130884 n

end A130884

/-!
# A130885: a(n) = 3n^3 - 2n^2 + n - 1.

The programs for A130885, the canonical program `A130885.P4124811654629993367` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130885 has offset 1).

The definition of A130885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)^3-2*(n+1)²+n` (program `A130885.P4124811654629993367`, by `A130885.P4124811654629993367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130885.P4124811654629993367

`3*(n+1)^3-2*(n+1)²+n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130885

/-- `3*(n+1)^3-2*(n+1)²+n` -/
def P4124811654629993367.Spec : Prop :=
  ∀ n, P4124811654629993367.a n = A130885 (n + 1)

theorem P4124811654629993367.correct : P4124811654629993367.Spec := by
  intro n
  simp only [A130885, Nat.add_sub_cancel]

end A130885

/-! ## A130885.P17431902160142796429

`∑[A010002(n)+5*n]`
-/

namespace A130885.P17431902160142796429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n + (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130885.P17431902160142796429

namespace A130885

/-- `∑[A010002(n)+5*n]` -/
def P17431902160142796429.Spec : Prop :=
  ∀ n, P17431902160142796429.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P6087297732253757526

`∑[A016778(n)-(2*n)%(n+1)]`
-/

namespace A130885.P6087297732253757526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n - ((2 * n % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130885.P6087297732253757526

namespace A130885

/-- `∑[A016778(n)-(2*n)%(n+1)]` -/
def P6087297732253757526.Spec : Prop :=
  ∀ n, P6087297732253757526.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P3302933754944183037

`xor(1, (∑[A016777(n)+1]+1)*2*n)`
-/

namespace A130885.P3302933754944183037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * (2 * n : ℤ))

end

end A130885.P3302933754944183037

namespace A130885

/-- `xor(1, (∑[A016777(n)+1]+1)*2*n)` -/
def P3302933754944183037.Spec : Prop :=
  ∀ n, P3302933754944183037.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P1710625392009098411

`abs((A003215(n)+1+n)*(n+1)-1)`
-/

namespace A130885.P1710625392009098411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A003215 n + 1 + (n : ℤ)) * (n + 1 : ℤ) - 1|

end

end A130885.P1710625392009098411

namespace A130885

/-- `abs((A003215(n)+1+n)*(n+1)-1)` -/
def P1710625392009098411.Spec : Prop :=
  ∀ n, P1710625392009098411.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P17932273209928329650

`∑[A103517(n)+A045945(n)]`
-/

namespace A130885.P17932273209928329650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A045945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130885.P17932273209928329650

namespace A130885

/-- `∑[A103517(n)+A045945(n)]` -/
def P17932273209928329650.Spec : Prop :=
  ∀ n, P17932273209928329650.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P13804449213925041523

`∑[A001504(n)-A008574(n)]`
-/

namespace A130885.P13804449213925041523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 n - A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130885.P13804449213925041523

namespace A130885

/-- `∑[A001504(n)-A008574(n)]` -/
def P13804449213925041523.Spec : Prop :=
  ∀ n, P13804449213925041523.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P13043851194310897109

`∑[A010005(n)-A051866(n)]`
-/

namespace A130885.P13043851194310897109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n - A051866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130885.P13043851194310897109

namespace A130885

/-- `∑[A010005(n)-A051866(n)]` -/
def P13043851194310897109.Spec : Prop :=
  ∀ n, P13043851194310897109.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P12759047108949789386

`abs(A001489(n)-A100176(n+1))`
-/

namespace A130885.P12759047108949789386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A100176 (n + 1)|

end

end A130885.P12759047108949789386

namespace A130885

/-- `abs(A001489(n)-A100176(n+1))` -/
def P12759047108949789386.Spec : Prop :=
  ∀ n, P12759047108949789386.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P16743115498734748543

`∑[A214660(n+1)-A004273(n)]`
-/

namespace A130885.P16743115498734748543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214660 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130885.P16743115498734748543

namespace A130885

/-- `∑[A214660(n+1)-A004273(n)]` -/
def P16743115498734748543.Spec : Prop :=
  ∀ n, P16743115498734748543.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P5194384135600225021

`∑[(A057427(n)+1)*A064225(n)]`
-/

namespace A130885.P5194384135600225021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A064225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130885.P5194384135600225021

namespace A130885

/-- `∑[(A057427(n)+1)*A064225(n)]` -/
def P5194384135600225021.Spec : Prop :=
  ∀ n, P5194384135600225021.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P13780778909843130166

`∑[A103517(n)+n*A017197(n)]`
-/

namespace A130885.P13780778909843130166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + (n : ℤ) * A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130885.P13780778909843130166

namespace A130885

/-- `∑[A103517(n)+n*A017197(n)]` -/
def P13780778909843130166.Spec : Prop :=
  ∀ n, P13780778909843130166.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P12485397098153874530

`xor(1, A008865(n+1)+A005915(n))`
-/

namespace A130885.P12485397098153874530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008865 (n + 1) + A005915 n)

end

end A130885.P12485397098153874530

namespace A130885

/-- `xor(1, A008865(n+1)+A005915(n))` -/
def P12485397098153874530.Spec : Prop :=
  ∀ n, P12485397098153874530.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P2206060537086996143

`∑[A214675(n+1)+A000583(n)%(n+1)]`
-/

namespace A130885.P2206060537086996143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214675 (n + 1) + Int.tmod (A000583 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130885.P2206060537086996143

namespace A130885

/-- `∑[A214675(n+1)+A000583(n)%(n+1)]` -/
def P2206060537086996143.Spec : Prop :=
  ∀ n, P2206060537086996143.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P14190907805431267856

`∑[A214675(n+1)+A178334(A178334(n))]`
-/

namespace A130885.P14190907805431267856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214675 (n + 1) + A178334 (A178334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130885.P14190907805431267856

namespace A130885

/-- `∑[A214675(n+1)+A178334(A178334(n))]` -/
def P14190907805431267856.Spec : Prop :=
  ∀ n, P14190907805431267856.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P2027203936197164860

`abs(Δ[A172045(n)]+n)`
-/

namespace A130885.P2027203936197164860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n : ℤ)|

end

end A130885.P2027203936197164860

namespace A130885

/-- `abs(Δ[A172045(n)]+n)` -/
def P2027203936197164860.Spec : Prop :=
  ∀ n, P2027203936197164860.a n = A130885 (n + 1)

end A130885

/-! ## A130885.P14648022533562546350

`abs(1-(n+1)*A056105(n+1))`
-/

namespace A130885.P14648022533562546350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n + 1 : ℤ) * A056105 (n + 1)|

end

end A130885.P14648022533562546350

namespace A130885

/-- `abs(1-(n+1)*A056105(n+1))` -/
def P14648022533562546350.Spec : Prop :=
  ∀ n, P14648022533562546350.a n = A130885 (n + 1)

end A130885

/-!
# A130886: a(n) = 4*n^4 + 3*n^3 + 2*n^2 + n + 1.

The programs for A130886, the canonical program `A130886.P15942180567570794780` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130886 has offset 0).

The definition of A130886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^4+3*n^3+2*n²+n+1` (program `A130886.P15942180567570794780`, by `A130886.P15942180567570794780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130886.P15942180567570794780

`4*n^4+3*n^3+2*n²+n+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130886

/-- `4*n^4+3*n^3+2*n²+n+1` -/
def P15942180567570794780.Spec : Prop :=
  ∀ n, (P15942180567570794780.a n : ℤ) = A130886 n

theorem P15942180567570794780.correct : P15942180567570794780.Spec := by
  intro n
  simp only [A130886]

end A130886

/-! ## A130886.P2736884826313152719

`or(1, ((2*n+1)²-(n-1))*n²+n+1)`
-/

namespace A130886.P2736884826313152719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((2 * n + 1) ^ 2 : ℤ) - ((n : ℤ) - 1)) * (n ^ 2 : ℤ) + (n + 1 : ℤ))

end

end A130886.P2736884826313152719

namespace A130886

/-- `or(1, ((2*n+1)²-(n-1))*n²+n+1)` -/
def P2736884826313152719.Spec : Prop :=
  ∀ n, P2736884826313152719.a n = A130886 n

end A130886

/-! ## A130886.P13906158812982080970

`xor(1, n*A056578(n))`
-/

namespace A130886.P13906158812982080970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * A056578 n)

end

end A130886.P13906158812982080970

namespace A130886

/-- `xor(1, n*A056578(n))` -/
def P13906158812982080970.Spec : Prop :=
  ∀ n, P13906158812982080970.a n = A130886 n

end A130886

/-! ## A130886.P9875384804566841918

`abs(A239607(n)+n*(3*(n+1)²-2))`
-/

namespace A130886.P9875384804566841918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239607 n + (n : ℤ) * ((3 * (n + 1) ^ 2 : ℤ) - 2)|

end

end A130886.P9875384804566841918

namespace A130886

/-- `abs(A239607(n)+n*(3*(n+1)²-2))` -/
def P9875384804566841918.Spec : Prop :=
  ∀ n, P9875384804566841918.a n = A130886 n

end A130886

/-! ## A130886.P6196691532176815795

`abs(((2*n+1)²-(n-1))*n²+1-A001489(n))`
-/

namespace A130886.P6196691532176815795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((2 * n + 1) ^ 2 : ℤ) - ((n : ℤ) - 1)) * (n ^ 2 : ℤ) + 1 - A001489 n|

end

end A130886.P6196691532176815795

namespace A130886

/-- `abs(((2*n+1)²-(n-1))*n²+1-A001489(n))` -/
def P6196691532176815795.Spec : Prop :=
  ∀ n, P6196691532176815795.a n = A130886 n

end A130886

/-! ## A130886.P4881811450265036044

`(n*A056578(n)+1)*A057427(n+1)`
-/

namespace A130886.P4881811450265036044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A056578 n + 1) * A057427 (n + 1)

end

end A130886.P4881811450265036044

namespace A130886

/-- `(n*A056578(n)+1)*A057427(n+1)` -/
def P4881811450265036044.Spec : Prop :=
  ∀ n, P4881811450265036044.a n = A130886 n

end A130886

/-! ## A130886.P11560674772204052688

`(n*A056578(n)+1)*A055396(2*(n+1))`
-/

namespace A130886.P11560674772204052688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A056578 n + 1) * A055396 (2 * (n + 1))

end

end A130886.P11560674772204052688

namespace A130886

/-- `(n*A056578(n)+1)*A055396(2*(n+1))` -/
def P11560674772204052688.Spec : Prop :=
  ∀ n, P11560674772204052688.a n = A130886 n

end A130886

/-! ## A130886.P13221191001795224372

`(n*A056578(n)+1)*A014963(A325802(n+1))`
-/

namespace A130886.P13221191001795224372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A056578 n + 1) * A014963 (A325802 (n + 1)).toNat

end

end A130886.P13221191001795224372

namespace A130886

/-- `(n*A056578(n)+1)*A014963(A325802(n+1))` -/
def P13221191001795224372.Spec : Prop :=
  ∀ n, P13221191001795224372.a n = A130886 n

end A130886

/-!
# A130887: Inverse Moebius transform of the Mersenne numbers: a(n) = Sum_{d|n} (2^d - 1).

The programs for A130887, the canonical program `A130887.P15162267021100695887` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130887 has offset 1).

The definition of A130887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130887.P15162267021100695887

`∑{d}[n+1, 2^#-1]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130887

/-- `∑{d}[n+1, 2^#-1]` -/
def P15162267021100695887.Spec : Prop :=
  ∀ n, P15162267021100695887.a n = A130887 (n + 1)

theorem P15162267021100695887.correct : P15162267021100695887.Spec := by
  intro n
  simp only [A130887, Nat.add_sub_cancel]

end A130887

/-! ## A130887.P1634950449769952178

`record[∑{d}[n-1, 2^#-1]]`
-/

namespace A130887.P1634950449769952178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, ((2 ^ d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130887.P1634950449769952178

namespace A130887

/-- `record[∑{d}[n-1, 2^#-1]]` -/
def P1634950449769952178.Spec : Prop :=
  ∀ n, P1634950449769952178.a n = A130887 (n + 1)

end A130887

/-! ## A130887.P2584529473961603893

`A055895(n+1)-A000005(n+1)`
-/

namespace A130887.P2584529473961603893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055895 (n + 1) - A000005 (n + 1)

end

end A130887.P2584529473961603893

namespace A130887

/-- `A055895(n+1)-A000005(n+1)` -/
def P2584529473961603893.Spec : Prop :=
  ∀ n, P2584529473961603893.a n = A130887 (n + 1)

end A130887

/-! ## A130887.P9772345912624170852

`2*A034729(n+1)-A000005(n+1)`
-/

namespace A130887.P9772345912624170852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034729 (n + 1) - A000005 (n + 1)

end

end A130887.P9772345912624170852

namespace A130887

/-- `2*A034729(n+1)-A000005(n+1)` -/
def P9772345912624170852.Spec : Prop :=
  ∀ n, P9772345912624170852.a n = A130887 (n + 1)

end A130887

/-! ## A130887.P15475749476628265624

`∑{d}[n+1, A000079(#)]-A000005(n+1)`
-/

namespace A130887.P15475749476628265624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 d - A000005 (n + 1)

end

end A130887.P15475749476628265624

namespace A130887

/-- `∑{d}[n+1, A000079(#)]-A000005(n+1)` -/
def P15475749476628265624.Spec : Prop :=
  ∀ n, P15475749476628265624.a n = A130887 (n + 1)

end A130887

/-! ## A130887.P7894936271803348697

`2*A034729(n+1)-A070939(A100587(n+1))`
-/

namespace A130887.P7894936271803348697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034729 (n + 1) - A070939 (A100587 (n + 1)).toNat

end

end A130887.P7894936271803348697

namespace A130887

/-- `2*A034729(n+1)-A070939(A100587(n+1))` -/
def P7894936271803348697.Spec : Prop :=
  ∀ n, P7894936271803348697.a n = A130887 (n + 1)

end A130887

/-!
# A130888: Triangle read by rows, A051731(n,k) dot (1, 3, 7, 15, ...) with like numbers of terms.

The programs for A130888, the canonical program `A130888.P7694398595024222231` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130888 has offset 1).

The definition of A130888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130888.P11828315325575605540

`2^A127093(n+1)-1`
-/

namespace A130888.P11828315325575605540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127093 (n + 1) : ℤ) - 1

end

end A130888.P11828315325575605540

namespace A130888

/-- `2^A127093(n+1)-1` -/
def P11828315325575605540.Spec : Prop :=
  ∀ n, P11828315325575605540.a n = (A130888 (n + 1) : ℚ)

end A130888

/-! ## A130888.P18012055325845708734

`2^sqrt(A134575(n+1))-1`
-/

namespace A130888.P18012055325845708734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A134575 (n + 1) : ℝ)) - 1

end

end A130888.P18012055325845708734

namespace A130888

/-- `2^sqrt(A134575(n+1))-1` -/
def P18012055325845708734.Spec : Prop :=
  ∀ n, P18012055325845708734.a n = (A130888 (n + 1) : ℝ)

end A130888

/-! ## A130888.P472908872706576926

`2^ceil(A134560(n+1)/2)-1`
-/

namespace A130888.P472908872706576926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(A134560 (n + 1) : ℚ) / 2⌉ : ℤ) - 1

end

end A130888.P472908872706576926

namespace A130888

/-- `2^ceil(A134560(n+1)/2)-1` -/
def P472908872706576926.Spec : Prop :=
  ∀ n, P472908872706576926.a n = (A130888 (n + 1) : ℚ)

end A130888

/-! ## A130888.P7694398595024222231

`A000225(A127093(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130888

/-- `A000225(A127093(n+1))` -/
def P7694398595024222231.Spec : Prop :=
  ∀ n, P7694398595024222231.a n = A130888 (n + 1)

theorem P7694398595024222231.correct : P7694398595024222231.Spec := by
  intro n
  simp only [A130888, Nat.add_sub_cancel]

end A130888

/-! ## A130888.P4135832116156147678

`A087100(A134560(n+1))`
-/

namespace A130888.P4135832116156147678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087100 (A134560 (n + 1)).toNat

end

end A130888.P4135832116156147678

namespace A130888

/-- `A087100(A134560(n+1))` -/
def P4135832116156147678.Spec : Prop :=
  ∀ n, P4135832116156147678.a n = A130888 (n + 1)

end A130888

/-! ## A130888.P534216685783646155

`A051731(n+1)*A228035(n)`
-/

namespace A130888.P534216685783646155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A228035 n

end

end A130888.P534216685783646155

namespace A130888

/-- `A051731(n+1)*A228035(n)` -/
def P534216685783646155.Spec : Prop :=
  ∀ n, P534216685783646155.a n = A130888 (n + 1)

end A130888

/-! ## A130888.P5746798283255936678

`A046143(n+1)*A051731(n+1)`
-/

namespace A130888.P5746798283255936678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046143 (n + 1) * A051731 (n + 1)

end

end A130888.P5746798283255936678

namespace A130888

/-- `A046143(n+1)*A051731(n+1)` -/
def P5746798283255936678.Spec : Prop :=
  ∀ n, P5746798283255936678.a n = A130888 (n + 1)

end A130888

/-! ## A130888.P456061262610137122

`2*A143425(n+1)-A051731(n+1)`
-/

namespace A130888.P456061262610137122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143425 (n + 1) - A051731 (n + 1)

end

end A130888.P456061262610137122

namespace A130888

/-- `2*A143425(n+1)-A051731(n+1)` -/
def P456061262610137122.Spec : Prop :=
  ∀ n, P456061262610137122.a n = A130888 (n + 1)

end A130888

/-! ## A130888.P17370644057566612068

`∑{d}[A143425(n+1), #]`
-/

namespace A130888.P17370644057566612068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130888.P17370644057566612068

namespace A130888

/-- `∑{d}[A143425(n+1), #]` -/
def P17370644057566612068.Spec : Prop :=
  ∀ n, (P17370644057566612068.a n : ℤ) = A130888 (n + 1)

end A130888

/-! ## A130888.P13299235879747914004

`∑{d}[floor(2^A176079(n+1)), #]`
-/

namespace A130888.P13299235879747914004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A176079 (n + 1) : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130888.P13299235879747914004

namespace A130888

/-- `∑{d}[floor(2^A176079(n+1)), #]` -/
def P13299235879747914004.Spec : Prop :=
  ∀ n, (P13299235879747914004.a n : ℤ) = A130888 (n + 1)

end A130888

/-! ## A130888.P8369444077012274067

`A003817(A143425(n+1))`
-/

namespace A130888.P8369444077012274067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A143425 (n + 1)).toNat

end

end A130888.P8369444077012274067

namespace A130888

/-- `A003817(A143425(n+1))` -/
def P8369444077012274067.Spec : Prop :=
  ∀ n, P8369444077012274067.a n = A130888 (n + 1)

end A130888

/-!
# A130889: a(n) = smallest k such that A000959(n+1) = A000959(n) + (A000959(n) mod k), or 0 if no such k exists.

The programs for A130889, there is no canonical definition to state claims against.
-/

/-! ## A130889.P7765375791568866639

`A184827(n+1)/A093178(A184828(n+1))`
-/

namespace A130889.P7765375791568866639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184827 (n + 1) : ℚ) / (A093178 (A184828 (n + 1)).toNat : ℚ)

end

end A130889.P7765375791568866639

/-! ## A130889.P13153152182268267004

`A184827(n+1)%A003814(A002445(n))`
-/

namespace A130889.P13153152182268267004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184827 (n + 1)) (A003814 (A002445 n).toNat)

end

end A130889.P13153152182268267004

/-! ## A130889.P6744324376428896408

`A184827(n+1)/A006530(A184828(n+1)!)`
-/

namespace A130889.P6744324376428896408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184827 (n + 1) : ℚ) / (A006530 (Nat.factorial (A184828 (n + 1)).toNat) : ℚ)

end

end A130889.P6744324376428896408

/-! ## A130889.P4121723690132762201

`A184827(n+1)%A173795(n)`
-/

namespace A130889.P4121723690132762201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184827 (n + 1)) (A173795 n)

end

end A130889.P4121723690132762201

/-! ## A130889.P437264006839361004

`A184827(n+1)+A000007(A192665(n))`
-/

namespace A130889.P437264006839361004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184827 (n + 1) + A000007 (A192665 n).toNat

end

end A130889.P437264006839361004

/-!
# A130891: a(n) = n if n is not an odd prime number. Otherwise, a(n) = k*floor(n/10), where k is the smallest integer such that n < 10^k.

The programs for A130891, there is no canonical definition to state claims against.
-/

/-! ## A130891.P5004932345594476365

`A130892(n+1)-A130758(n+1)%A009001(n)`
-/

namespace A130891.P5004932345594476365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130892 (n + 1) - Int.tmod (A130758 (n + 1)) (A009001 n)

end

end A130891.P5004932345594476365

/-! ## A130891.P11009204902853904599

`n%A081599(A086508(n+1))`
-/

namespace A130891.P11009204902853904599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A081599 (A086508 (n + 1)).toNat)

end

end A130891.P11009204902853904599

/-! ## A130891.P13416449679442999784

`A130758(n+1)-A178333(A022900(n+1))`
-/

namespace A130891.P13416449679442999784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130758 (n + 1) - A178333 (A022900 (n + 1)).toNat

end

end A130891.P13416449679442999784

/-! ## A130891.P1456229732170771828

`A130758(n+1)-A025426(A001700(A008611(n)))`
-/

namespace A130891.P1456229732170771828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130758 (n + 1) - A025426 (A001700 (A008611 n).toNat).toNat

end

end A130891.P1456229732170771828

/-! ## A130891.P12940954700276295083

`C(A130758(n+1), A003989(A215991(n+1)))`
-/

namespace A130891.P12940954700276295083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130758 (n + 1)).toNat (A003989 (A215991 (n + 1)).toNat).toNat

end

end A130891.P12940954700276295083

/-!
# A130892: a(n) = n if n is not an odd prime number. Otherwise, a(n) = k*ceiling(n/10), where k is the smallest integer such that n < 10^k.

The programs for A130892, there is no canonical definition to state claims against.
-/

/-! ## A130892.P10741553151522251327

`n%xor(-n, ∏{d}[n, #])*A010121(A172343(n))`
-/

namespace A130892.P10741553151522251327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (Int.xor (-(n : ℤ)) ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) * A010121 (A172343 n).toNat

end

end A130892.P10741553151522251327

/-! ## A130892.P4753316017922613680

`A010121(A172343(n))*A131516(n)`
-/

namespace A130892.P4753316017922613680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A172343 n).toNat * A131516 n

end

end A130892.P4753316017922613680

/-! ## A130892.P6365443271429378779

`A131516(n)*A338428(A008292(n+1))`
-/

namespace A130892.P6365443271429378779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 n * A338428 (A008292 (n + 1)).toNat

end

end A130892.P6365443271429378779

/-! ## A130892.P32389085788119251

`A130758(n+1)^A309876(A309876(n))`
-/

namespace A130892.P32389085788119251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130758 (n + 1) : ℚ) ^ (A309876 (A309876 n).toNat : ℤ)

end

end A130892.P32389085788119251

/-! ## A130892.P13233924482501688501

`lcm(A010121(A172343(n)), A130758(n+1))`
-/

namespace A130892.P13233924482501688501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010121 (A172343 n).toNat) (A130758 (n + 1))

end

end A130892.P13233924482501688501

/-!
# A130893: Lucas numbers (beginning with 1) mod 10.

The programs for A130893, the canonical program `A130893.P5334810793308659274` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130893 has offset 0).

The definition of A130893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130893.P5334810793308659274

`(7*a(n-3))%10` with `a(0)=1, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130893

/-- `(7*a(n-3))%10` -/
def P5334810793308659274.Spec : Prop :=
  ∀ n, (P5334810793308659274.a n : ℤ) = A130893 n

theorem P5334810793308659274.correct : P5334810793308659274.Spec := by
  intro n
  simp only [A130893]

end A130893

/-!
# A130894: Numerator of Sum_{k=1..n} H(k)*H(n+1-k), where H(k) is the k-th harmonic number (Sum_{j=1..k} 1/j).

The programs for A130894, there is no canonical definition to state claims against.
-/

/-! ## A130894.P12050078135241673896

`A001706(n)/A053615(A001706(n))`
-/

namespace A130894.P12050078135241673896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001706 n : ℚ) / (A053615 (A001706 n).toNat : ℚ)

end

end A130894.P12050078135241673896

/-!
# A130897: Numbers that are not exponentially squarefree.

The programs for A130897, there is no canonical definition to state claims against.
-/

/-! ## A130897.P4414594187265955759

`eq[3, A096309(n+1)]+1`
-/

namespace A130897.P4414594187265955759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130897.P4414594187265955759

/-! ## A130897.P4654844591941632190

`lt[1, A005361(A072411(n+1))]+1`
-/

namespace A130897.P4654844591941632190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A072411 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A130897.P4654844591941632190

/-! ## A130897.P6672948996284237284

`lt[2, A185102(n+1)]+1`
-/

namespace A130897.P6672948996284237284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A130897.P6672948996284237284

/-! ## A130897.P12841899298297089952

`lt[A338782(n+1), n]+1`
-/

namespace A130897.P12841899298297089952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A130897.P12841899298297089952

/-! ## A130897.P3285869580034947024

`eq[0, A166234(A028310(n))]`
-/

namespace A130897.P3285869580034947024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130897.P3285869580034947024

/-! ## A130897.P9213732526457103512

`A020725(eq[3, A096309(n+1)])`
-/

namespace A130897.P9213732526457103512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130897.P9213732526457103512

/-! ## A130897.P14593927200681435500

`lt[A069543(n+1), A303822(n+1)]+1`
-/

namespace A130897.P14593927200681435500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A130897.P14593927200681435500

/-! ## A130897.P13039052962955725837

`lt[A069543(n+1), A303822(A028310(n))]`
-/

namespace A130897.P13039052962955725837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303822 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130897.P13039052962955725837

/-!
# A130898: Number of partitions of n into "number of partitions of n into partition numbers" numbers.

The programs for A130898, there is no canonical definition to state claims against.
-/

/-! ## A130898.P13143060834785152107

`record[A199016(n)-A172537(n+1)]`
-/

namespace A130898.P13143060834785152107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199016 n - A172537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130898.P13143060834785152107

/-! ## A130898.P9378609415056700224

`record[A199016(A347794(n))]`
-/

namespace A130898.P9378609415056700224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199016 (A347794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130898.P9378609415056700224

/-! ## A130898.P15699299363703946252

`record[A199016(A291041(n+1)-1)]`
-/

namespace A130898.P15699299363703946252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199016 (A291041 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130898.P15699299363703946252

/-! ## A130898.P17800642668837743915

`A199016(n+1)%A383471(3*n+1)`
-/

namespace A130898.P17800642668837743915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199016 (n + 1)) (A383471 (3 * n + 1))

end

end A130898.P17800642668837743915

/-! ## A130898.P5046057444351175252

`A199016(n+1)%A001359(A000108(n))`
-/

namespace A130898.P5046057444351175252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199016 (n + 1)) (A001359 (A000108 n).toNat)

end

end A130898.P5046057444351175252

/-!
# A130899: Number of partitions of n into "number of partitions of n into 'number of partitions of n into partition numbers' numbers" numbers.

The programs for A130899, there is no canonical definition to state claims against.
-/

/-! ## A130899.P9473805943663516046

`A007210(n+1)-A340988(A007279(n))`
-/

namespace A130899.P9473805943663516046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007210 (n + 1) - A340988 ((A007279 n).toNat + 91)

end

end A130899.P9473805943663516046

/-! ## A130899.P12491891534449121748

`A007210(n+1)-A249832(A092263(n+1))`
-/

namespace A130899.P12491891534449121748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007210 (n + 1) - A249832 (A092263 (n + 1)).toNat

end

end A130899.P12491891534449121748

/-! ## A130899.P16389172613254496835

`A007210(n+1)-C(val(A121428(3*(n+1))+1, 2), 5)`
-/

namespace A130899.P16389172613254496835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007210 (n + 1) - (Nat.choose (SequenceMachineLib.valuation (A121428 (3 * (n + 1)) + 1).toNat 2) 5 : ℤ)

end

end A130899.P16389172613254496835

/-! ## A130899.P3516057701207140542

`A007210(n+1)-A014093(A051219(3*n+4))`
-/

namespace A130899.P3516057701207140542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007210 (n + 1) - A014093 (A051219 (3 * n + 4)).toNat

end

end A130899.P3516057701207140542

/-! ## A130899.P3044500920177973233

`A118759(A007210(n+1))`
-/

namespace A130899.P3044500920177973233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A007210 (n + 1)).toNat

end

end A130899.P3044500920177973233

