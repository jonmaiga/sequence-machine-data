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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A285800: Numbers having more than one odd prime factor to an odd power in their prime factorization.

The programs for A285800, the canonical program `A285800.P7588634103840983572` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285800 has offset 1).

The definition of A285800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285800.P7588634103840983572

`eq[0, A340372(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A285800

/-- `eq[0, A340372(n+1)]+1` -/
def P7588634103840983572.Spec : Prop :=
  ∀ n, (P7588634103840983572.a n : ℤ) = A285800 (n + 1)

theorem P7588634103840983572.correct : P7588634103840983572.Spec := by
  intro n
  simp only [A285800, Nat.add_sub_cancel]

end A285800

/-! ## A285800.P2903273259946757452

`lt[1, A353376(A007913(n+1))]+1`
-/

namespace A285800.P2903273259946757452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285800.P2903273259946757452

namespace A285800

/-- `lt[1, A353376(A007913(n+1))]+1` -/
def P2903273259946757452.Spec : Prop :=
  ∀ n, (P2903273259946757452.a n : ℤ) = A285800 (n + 1)

end A285800

/-! ## A285800.P7039733999553932683

`comp[A000027(n+1)*A340372(n+1)]`
-/

namespace A285800.P7039733999553932683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A340372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285800.P7039733999553932683

namespace A285800

/-- `comp[A000027(n+1)*A340372(n+1)]` -/
def P7039733999553932683.Spec : Prop :=
  ∀ n, (P7039733999553932683.a n : ℤ) = A285800 (n + 1)

end A285800

/-! ## A285800.P1944718419849272401

`eq[0, A340372(A008574(n))]`
-/

namespace A285800.P1944718419849272401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285800.P1944718419849272401

namespace A285800

/-- `eq[0, A340372(A008574(n))]` -/
def P1944718419849272401.Spec : Prop :=
  ∀ n, (P1944718419849272401.a n : ℤ) = A285800 (n + 1)

end A285800

/-! ## A285800.P4910007599015367241

`A153152(eq[0, A340372(n+1)])`
-/

namespace A285800.P4910007599015367241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285800.P4910007599015367241

namespace A285800

/-- `A153152(eq[0, A340372(n+1)])` -/
def P4910007599015367241.Spec : Prop :=
  ∀ n, P4910007599015367241.a n = A285800 (n + 1)

end A285800

/-! ## A285800.P6723825078667669187

`lt[1, A034380(A007913(abs(1-n)+1))]`
-/

namespace A285800.P6723825078667669187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A007913 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285800.P6723825078667669187

namespace A285800

/-- `lt[1, A034380(A007913(abs(1-n)+1))]` -/
def P6723825078667669187.Spec : Prop :=
  ∀ n, (P6723825078667669187.a n : ℤ) = A285800 (n + 1)

end A285800

/-! ## A285800.P15485285313192206521

`eq[0, A340372(A022144(n))]`
-/

namespace A285800.P15485285313192206521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285800.P15485285313192206521

namespace A285800

/-- `eq[0, A340372(A022144(n))]` -/
def P15485285313192206521.Spec : Prop :=
  ∀ n, (P15485285313192206521.a n : ℤ) = A285800 (n + 1)

end A285800

/-! ## A285800.P11901163891481312961

`eq[0, A340372(A233583(n+1))]`
-/

namespace A285800.P11901163891481312961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340372 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285800.P11901163891481312961

namespace A285800

/-- `eq[0, A340372(A233583(n+1))]` -/
def P11901163891481312961.Spec : Prop :=
  ∀ n, (P11901163891481312961.a n : ℤ) = A285800 (n + 1)

end A285800

/-!
# A285801: Numbers having at most one odd prime factor to an odd power in their prime factorization.

The programs for A285801, the canonical program `A285801.P12013862398410093951` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285801 has offset 1).

The definition of A285801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285801.P12013862398410093951

`eq[1, A340372(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A285801

/-- `eq[1, A340372(n+1)]+1` -/
def P12013862398410093951.Spec : Prop :=
  ∀ n, (P12013862398410093951.a n : ℤ) = A285801 (n + 1)

theorem P12013862398410093951.correct : P12013862398410093951.Spec := by
  intro n
  simp only [A285801, Nat.add_sub_cancel]

end A285801

/-! ## A285801.P7282133792149014064

`lt[A336158(A007913(n+1)), 3]+1`
-/

namespace A285801.P7282133792149014064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A007913 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285801.P7282133792149014064

namespace A285801

/-- `lt[A336158(A007913(n+1)), 3]+1` -/
def P7282133792149014064.Spec : Prop :=
  ∀ n, (P7282133792149014064.a n : ℤ) = A285801 (n + 1)

end A285801

/-! ## A285801.P706523839578039502

`record[A000027(n+1)*A340372(n+1)]`
-/

namespace A285801.P706523839578039502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A340372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285801.P706523839578039502

namespace A285801

/-- `record[A000027(n+1)*A340372(n+1)]` -/
def P706523839578039502.Spec : Prop :=
  ∀ n, P706523839578039502.a n = A285801 (n + 1)

end A285801

/-! ## A285801.P10920796980427649726

`∪[2*A265640(n+1), A265640(n+1)]`
-/

namespace A285801.P10920796980427649726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285801.P10920796980427649726

namespace A285801

/-- `∪[2*A265640(n+1), A265640(n+1)]` -/
def P10920796980427649726.Spec : Prop :=
  ∀ n, (P10920796980427649726.a n : ℤ) = A285801 (n + 1)

end A285801

/-! ## A285801.P4993781167681561959

`eq[1, A327670(n+1)%2]+1`
-/

namespace A285801.P4993781167681561959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327670 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285801.P4993781167681561959

namespace A285801

/-- `eq[1, A327670(n+1)%2]+1` -/
def P4993781167681561959.Spec : Prop :=
  ∀ n, (P4993781167681561959.a n : ℤ) = A285801 (n + 1)

end A285801

/-! ## A285801.P1944016221547730262

`filter[n+1, A340372(#)]`
-/

namespace A285801.P1944016221547730262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j) = 1) n)

end

end A285801.P1944016221547730262

namespace A285801

/-- `filter[n+1, A340372(#)]` -/
def P1944016221547730262.Spec : Prop :=
  ∀ n, (P1944016221547730262.a n : ℤ) = A285801 (n + 1)

end A285801

/-! ## A285801.P13503500633089705989

`record[A213854(n+1)*A340372(A213854(n+1))]`
-/

namespace A285801.P13503500633089705989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213854 (n + 1) * A340372 (A213854 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285801.P13503500633089705989

namespace A285801

/-- `record[A213854(n+1)*A340372(A213854(n+1))]` -/
def P13503500633089705989.Spec : Prop :=
  ∀ n, P13503500633089705989.a n = A285801 (n + 1)

end A285801

/-! ## A285801.P3167806404806976991

`record[A008621(n)*A340372(A008621(n))]`
-/

namespace A285801.P3167806404806976991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A340372 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285801.P3167806404806976991

namespace A285801

/-- `record[A008621(n)*A340372(A008621(n))]` -/
def P3167806404806976991.Spec : Prop :=
  ∀ n, P3167806404806976991.a n = A285801 (n + 1)

end A285801

/-! ## A285801.P422029038634138508

`record[n+1-and(2, A335489(A000265(n+1)))]`
-/

namespace A285801.P422029038634138508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land 2 (A335489 (A000265 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285801.P422029038634138508

namespace A285801

/-- `record[n+1-and(2, A335489(A000265(n+1)))]` -/
def P422029038634138508.Spec : Prop :=
  ∀ n, P422029038634138508.a n = A285801 (n + 1)

end A285801

/-! ## A285801.P9719358297528721920

`record[A327498((n+1)*A004525(n+1))/(n+1)]`
-/

namespace A285801.P9719358297528721920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327498 ((n + 1 : ℤ) * A004525 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285801.P9719358297528721920

namespace A285801

/-- `record[A327498((n+1)*A004525(n+1))/(n+1)]` -/
def P9719358297528721920.Spec : Prop :=
  ∀ n, P9719358297528721920.a n = (A285801 (n + 1) : ℚ)

end A285801

/-!
# A285804: Composite numbers of the form 12*k+5 or 12*k+7 for some k.

The programs for A285804, there is no canonical definition to state claims against.
-/

/-! ## A285804.P5100364077588799670

`∩[xor(2, 6*n)+3, A014684(xor(2, 6*n)+3)]`
-/

namespace A285804.P5100364077588799670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (Nat.xor 2 (6 * n) + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285804.P5100364077588799670

/-! ## A285804.P14933014681679906270

`eq[A010171(n), A107393(n)]`
-/

namespace A285804.P14933014681679906270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285804.P14933014681679906270

/-! ## A285804.P16618695969552226432

`eq[A040220(n), A107393(n)]`
-/

namespace A285804.P16618695969552226432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285804.P16618695969552226432

/-! ## A285804.P543361269117236881

`eq[A040286(n), A107393(n)]`
-/

namespace A285804.P543361269117236881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285804.P543361269117236881

/-! ## A285804.P3731217841834703665

`eq[A040310(n), A107393(n)]`
-/

namespace A285804.P3731217841834703665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285804.P3731217841834703665

/-!
# A285805: Prime numbers p such that 6*p-1 and 6*p+1 are composite numbers.

The programs for A285805, the canonical program `A285805.P3259867179575910996` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285805 has offset 1).

The definition of A285805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285805.P17297002982105229128

`p?[A060461(n+1)]`
-/

namespace A285805.P17297002982105229128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285805.P17297002982105229128

namespace A285805

/-- `p?[A060461(n+1)]` -/
def P17297002982105229128.Spec : Prop :=
  ∀ n, P17297002982105229128.a n = A285805 (n + 1)

end A285805

/-! ## A285805.P3259867179575910996

`p?[A171696(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A285805

/-- `p?[A171696(n+1)]` -/
def P3259867179575910996.Spec : Prop :=
  ∀ n, P3259867179575910996.a n = A285805 (n + 1)

theorem P3259867179575910996.correct : P3259867179575910996.Spec := by
  intro n
  simp only [A285805, Nat.add_sub_cancel]

end A285805

/-! ## A285805.P15824380610734185901

`record[A006530(A060461(n+3))]`
-/

namespace A285805.P15824380610734185901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060461 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285805.P15824380610734185901

namespace A285805

/-- `record[A006530(A060461(n+3))]` -/
def P15824380610734185901.Spec : Prop :=
  ∀ n, P15824380610734185901.a n = A285805 (n + 1)

end A285805

/-! ## A285805.P1330972357555635485

`record[A006530(A120382(n+3))]`
-/

namespace A285805.P1330972357555635485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A120382 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285805.P1330972357555635485

namespace A285805

/-- `record[A006530(A120382(n+3))]` -/
def P1330972357555635485.Spec : Prop :=
  ∀ n, P1330972357555635485.a n = A285805 (n + 1)

end A285805

/-! ## A285805.P746460563335943044

`record[A006530(A171696(n+4))]`
-/

namespace A285805.P746460563335943044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A171696 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285805.P746460563335943044

namespace A285805

/-- `record[A006530(A171696(n+4))]` -/
def P746460563335943044.Spec : Prop :=
  ∀ n, P746460563335943044.a n = A285805 (n + 1)

end A285805

/-! ## A285805.P13267351737608666329

`filter[A060461(n+1), A010051(#)]`
-/

namespace A285805.P13267351737608666329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A285805.P13267351737608666329

namespace A285805

/-- `filter[A060461(n+1), A010051(#)]` -/
def P13267351737608666329.Spec : Prop :=
  ∀ n, P13267351737608666329.a n = A285805 (n + 1)

end A285805

/-! ## A285805.P13744047619026533092

`filter[A171696(n+2), A010051(#)]`
-/

namespace A285805.P13744047619026533092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A285805.P13744047619026533092

namespace A285805

/-- `filter[A171696(n+2), A010051(#)]` -/
def P13744047619026533092.Spec : Prop :=
  ∀ n, P13744047619026533092.a n = A285805 (n + 1)

end A285805

/-! ## A285805.P14087102140728144140

`∩[A000040(n+1), A060461(n+1)]`
-/

namespace A285805.P14087102140728144140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P14087102140728144140

namespace A285805

/-- `∩[A000040(n+1), A060461(n+1)]` -/
def P14087102140728144140.Spec : Prop :=
  ∀ n, (P14087102140728144140.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P10064044129857761554

`∩[A004139(n+1), A060461(n+1)]`
-/

namespace A285805.P10064044129857761554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P10064044129857761554

namespace A285805

/-- `∩[A004139(n+1), A060461(n+1)]` -/
def P10064044129857761554.Spec : Prop :=
  ∀ n, (P10064044129857761554.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P6993833546645057707

`∩[A006005(n+1), A060461(n+1)]`
-/

namespace A285805.P6993833546645057707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P6993833546645057707

namespace A285805

/-- `∩[A006005(n+1), A060461(n+1)]` -/
def P6993833546645057707.Spec : Prop :=
  ∀ n, (P6993833546645057707.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P17137262691587554137

`∩[A008578(n+1), A060461(n+1)]`
-/

namespace A285805.P17137262691587554137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P17137262691587554137

namespace A285805

/-- `∩[A008578(n+1), A060461(n+1)]` -/
def P17137262691587554137.Spec : Prop :=
  ∀ n, (P17137262691587554137.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P6163505978979125312

`∩[A033946(n+1), A060461(n+1)]`
-/

namespace A285805.P6163505978979125312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P6163505978979125312

namespace A285805

/-- `∩[A033946(n+1), A060461(n+1)]` -/
def P6163505978979125312.Spec : Prop :=
  ∀ n, (P6163505978979125312.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P13198439790833906422

`∩[A045319(n+1), A060461(n+1)]`
-/

namespace A285805.P13198439790833906422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P13198439790833906422

namespace A285805

/-- `∩[A045319(n+1), A060461(n+1)]` -/
def P13198439790833906422.Spec : Prop :=
  ∀ n, (P13198439790833906422.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P1499041948377000965

`∩[A045344(n+1), A060461(n+1)]`
-/

namespace A285805.P1499041948377000965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P1499041948377000965

namespace A285805

/-- `∩[A045344(n+1), A060461(n+1)]` -/
def P1499041948377000965.Spec : Prop :=
  ∀ n, (P1499041948377000965.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P10642872187833919426

`∩[A046022(n+1), A060461(n+1)]`
-/

namespace A285805.P10642872187833919426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P10642872187833919426

namespace A285805

/-- `∩[A046022(n+1), A060461(n+1)]` -/
def P10642872187833919426.Spec : Prop :=
  ∀ n, (P10642872187833919426.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P13674486827518719375

`∩[A051948(n+1), A060461(n+1)]`
-/

namespace A285805.P13674486827518719375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P13674486827518719375

namespace A285805

/-- `∩[A051948(n+1), A060461(n+1)]` -/
def P13674486827518719375.Spec : Prop :=
  ∀ n, (P13674486827518719375.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P16813203506612786382

`∩[A060461(n+1), A062972(n+1)]`
-/

namespace A285805.P16813203506612786382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P16813203506612786382

namespace A285805

/-- `∩[A060461(n+1), A062972(n+1)]` -/
def P16813203506612786382.Spec : Prop :=
  ∀ n, (P16813203506612786382.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P12377563780645772835

`∩[A060461(n+1), A065091(n+1)]`
-/

namespace A285805.P12377563780645772835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P12377563780645772835

namespace A285805

/-- `∩[A060461(n+1), A065091(n+1)]` -/
def P12377563780645772835.Spec : Prop :=
  ∀ n, (P12377563780645772835.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P17003893734242461473

`∩[A060461(n+1), A066050(n+1)]`
-/

namespace A285805.P17003893734242461473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P17003893734242461473

namespace A285805

/-- `∩[A060461(n+1), A066050(n+1)]` -/
def P17003893734242461473.Spec : Prop :=
  ∀ n, (P17003893734242461473.a n : ℤ) = A285805 (n + 1)

end A285805

/-! ## A285805.P12246366506598686217

`∩[A060461(n+1), A067126(n+1)]`
-/

namespace A285805.P12246366506598686217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285805.P12246366506598686217

namespace A285805

/-- `∩[A060461(n+1), A067126(n+1)]` -/
def P12246366506598686217.Spec : Prop :=
  ∀ n, (P12246366506598686217.a n : ℤ) = A285805 (n + 1)

end A285805

/-!
# A285807: Square array A(m,n) = concatenation of { m, m+1, ..., m+n }, with m, n >= 1, read by falling antidiagonals.

The programs for A285807, there is no canonical definition to state claims against.
-/

/-! ## A285807.P14741407255042036324

`A048794(A130328(comp[∑[n-1]]))`
-/

namespace A285807.P14741407255042036324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A130328 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A285807.P14741407255042036324

/-! ## A285807.P16629979836647418407

`A048794(A292600(A136318(n+1)))`
-/

namespace A285807.P16629979836647418407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A292600 (A136318 (n + 1)).toNat).toNat

end

end A285807.P16629979836647418407

/-! ## A285807.P14988031079557504487

`A048794(A140513(n)+A130328(n))`
-/

namespace A285807.P14988031079557504487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A140513 n + A130328 n).toNat

end

end A285807.P14988031079557504487

/-! ## A285807.P7355309903905490655

`A048794(or(A130328(n), A140513(n)))`
-/

namespace A285807.P7355309903905490655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (Int.lor (A130328 n) (A140513 n)).toNat

end

end A285807.P7355309903905490655

/-! ## A285807.P18242244826958501117

`A048794(xor(A130328(n), A140513(n)))`
-/

namespace A285807.P18242244826958501117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (Int.xor (A130328 n) (A140513 n)).toNat

end

end A285807.P18242244826958501117

/-!
# A285808: a(n) = smallest k such that (6*k-3)*2^n-1 is prime.

The programs for A285808, there is no canonical definition to state claims against.
-/

/-! ## A285808.P8061791532772305023

`(A264097(n+1)/3+1)/2`
-/

namespace A285808.P8061791532772305023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A264097 (n + 1) : ℚ) / 3 + 1) / 2

end

end A285808.P8061791532772305023

/-! ## A285808.P1536633785409710536

`ceil(A210651(n+1)/2)`
-/

namespace A285808.P1536633785409710536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210651 (n + 1) : ℚ) / 2⌉

end

end A285808.P1536633785409710536

/-! ## A285808.P16368535530931908493

`A000463(A210651(n+1))`
-/

namespace A285808.P16368535530931908493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A210651 (n + 1)).toNat

end

end A285808.P16368535530931908493

/-! ## A285808.P17865038985162996720

`A004525(A210651(n+1)+1)`
-/

namespace A285808.P17865038985162996720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A210651 (n + 1) + 1).toNat

end

end A285808.P17865038985162996720

/-! ## A285808.P16958502320903108926

`A026741(A210651(n+1)+1)`
-/

namespace A285808.P16958502320903108926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A210651 (n + 1) + 1).toNat

end

end A285808.P16958502320903108926

/-! ## A285808.P5799141170299551509

`A008619(A264097(n+1)/3)`
-/

namespace A285808.P5799141170299551509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A264097 (n + 1) : ℚ) / 3)).toNat

end

end A285808.P5799141170299551509

/-! ## A285808.P5344884203328621856

`A008612(A264097(n+1))`
-/

namespace A285808.P5344884203328621856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A264097 (n + 1)).toNat

end

end A285808.P5344884203328621856

/-!
# A285809: Primes equal to a centered triangular number plus 1.

The programs for A285809, the canonical program `A285809.P16988534934707749637` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285809 has offset 1).

The definition of A285809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285809.P16988534934707749637

`p?[∑[3*n]+2]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A285809

/-- `p?[∑[3*n]+2]` -/
def P16988534934707749637.Spec : Prop :=
  ∀ n, (P16988534934707749637.a n : ℤ) = A285809 (n + 1)

theorem P16988534934707749637.correct : P16988534934707749637.Spec := by
  intro n
  simp only [A285809, Nat.add_sub_cancel]

end A285809

/-! ## A285809.P7909250292146897167

`record[∑{p}[∑[3*n]+2, #]]`
-/

namespace A285809.P7909250292146897167
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285809.P7909250292146897167

namespace A285809

/-- `record[∑{p}[∑[3*n]+2, #]]` -/
def P7909250292146897167.Spec : Prop :=
  ∀ n, (P7909250292146897167.a n : ℤ) = A285809 (n + 1)

end A285809

/-! ## A285809.P15756507040827031756

`∏{d}[p?[3*C(n+1, 2)+2], #]`
-/

namespace A285809.P15756507040827031756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 1) 2 + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A285809.P15756507040827031756

namespace A285809

/-- `∏{d}[p?[3*C(n+1, 2)+2], #]` -/
def P15756507040827031756.Spec : Prop :=
  ∀ n, (P15756507040827031756.a n : ℤ) = A285809 (n + 1)

end A285809

/-! ## A285809.P13489712123157109495

`∏{p}[p?[3*C(n+1, 2)+2], #]`
-/

namespace A285809.P13489712123157109495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 1) 2 + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A285809.P13489712123157109495

namespace A285809

/-- `∏{p}[p?[3*C(n+1, 2)+2], #]` -/
def P13489712123157109495.Spec : Prop :=
  ∀ n, (P13489712123157109495.a n : ℤ) = A285809 (n + 1)

end A285809

/-! ## A285809.P14543158846203621102

`∏{p}[p?[a(n-1)+3*n], #]` with `a(0)=2`
-/

namespace A285809.P14543158846203621102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A285809.P14543158846203621102

namespace A285809

/-- `∏{p}[p?[a(n-1)+3*n], #]` -/
def P14543158846203621102.Spec : Prop :=
  ∀ n, (P14543158846203621102.a n : ℤ) = A285809 (n + 1)

end A285809

/-! ## A285809.P2088125730920666068

`or(p?[a(n-1)+3*n], char[1])` with `a(0)=2`
-/

namespace A285809.P2088125730920666068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (if ∃ j, f2 j = n then 1 else 0)

end

end A285809.P2088125730920666068

namespace A285809

/-- `or(p?[a(n-1)+3*n], char[1])` -/
def P2088125730920666068.Spec : Prop :=
  ∀ n, (P2088125730920666068.a n : ℤ) = A285809 (n + 1)

end A285809

/-! ## A285809.P13536938686867168686

`∑{p}[p?[A139482(n+1)], #]`
-/

namespace A285809.P13536938686867168686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A285809.P13536938686867168686

namespace A285809

/-- `∑{p}[p?[A139482(n+1)], #]` -/
def P13536938686867168686.Spec : Prop :=
  ∀ n, (P13536938686867168686.a n : ℤ) = A285809 (n + 1)

end A285809

/-! ## A285809.P11494321663093227169

`∏{p}[p?[A045943(n)+2], #]`
-/

namespace A285809.P11494321663093227169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A285809.P11494321663093227169

namespace A285809

/-- `∏{p}[p?[A045943(n)+2], #]` -/
def P11494321663093227169.Spec : Prop :=
  ∀ n, (P11494321663093227169.a n : ℤ) = A285809 (n + 1)

end A285809

/-! ## A285809.P17714738753474062009

`∑{p}[p?[3*A000124(n)-1], #]`
-/

namespace A285809.P17714738753474062009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000124 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A285809.P17714738753474062009

namespace A285809

/-- `∑{p}[p?[3*A000124(n)-1], #]` -/
def P17714738753474062009.Spec : Prop :=
  ∀ n, (P17714738753474062009.a n : ℤ) = A285809 (n + 1)

end A285809

/-! ## A285809.P836924192149502344

`∑{p}[p?[n²+A000124(n+1)], #]`
-/

namespace A285809.P836924192149502344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A000124 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A285809.P836924192149502344

namespace A285809

/-- `∑{p}[p?[n²+A000124(n+1)], #]` -/
def P836924192149502344.Spec : Prop :=
  ∀ n, (P836924192149502344.a n : ℤ) = A285809 (n + 1)

end A285809

/-! ## A285809.P11581527697601197207

`or(p?[A139482(n+1)], A010060(n))`
-/

namespace A285809.P11581527697601197207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A010060 n)

end

end A285809.P11581527697601197207

namespace A285809

/-- `or(p?[A139482(n+1)], A010060(n))` -/
def P11581527697601197207.Spec : Prop :=
  ∀ n, P11581527697601197207.a n = A285809 (n + 1)

end A285809

/-! ## A285809.P4223575086749588237

`A007318(C(2, n))*p?[A139482(n+1)]`
-/

namespace A285809.P4223575086749588237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285809.P4223575086749588237

namespace A285809

/-- `A007318(C(2, n))*p?[A139482(n+1)]` -/
def P4223575086749588237.Spec : Prop :=
  ∀ n, P4223575086749588237.a n = A285809 (n + 1)

end A285809

/-! ## A285809.P10566647757630474289

`p?[A269112(n+1)]-A000005(n²+1)%2`
-/

namespace A285809.P10566647757630474289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A285809.P10566647757630474289

namespace A285809

/-- `p?[A269112(n+1)]-A000005(n²+1)%2` -/
def P10566647757630474289.Spec : Prop :=
  ∀ n, P10566647757630474289.a n = A285809 (n + 1)

end A285809

/-! ## A285809.P12910744486005560181

`A014963(6*(n+2))*p?[3*A000124(n)-1]`
-/

namespace A285809.P12910744486005560181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000124 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285809.P12910744486005560181

namespace A285809

/-- `A014963(6*(n+2))*p?[3*A000124(n)-1]` -/
def P12910744486005560181.Spec : Prop :=
  ∀ n, P12910744486005560181.a n = A285809 (n + 1)

end A285809

/-! ## A285809.P7706128370338051314

`p?[A139482(n+1)]*A000034(A081963(n+1))`
-/

namespace A285809.P7706128370338051314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (A081963 (n + 1)).toNat

end

end A285809.P7706128370338051314

namespace A285809

/-- `p?[A139482(n+1)]*A000034(A081963(n+1))` -/
def P7706128370338051314.Spec : Prop :=
  ∀ n, P7706128370338051314.a n = A285809 (n + 1)

end A285809

/-! ## A285809.P2065116509423637219

`∩[A106887(n+1), A139482(n+1)]`
-/

namespace A285809.P2065116509423637219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285809.P2065116509423637219

namespace A285809

/-- `∩[A106887(n+1), A139482(n+1)]` -/
def P2065116509423637219.Spec : Prop :=
  ∀ n, (P2065116509423637219.a n : ℤ) = A285809 (n + 1)

end A285809

/-!
# A285810: Primes equal to a centered pentagonal number plus 1.

The programs for A285810, there is no canonical definition to state claims against.
-/

/-! ## A285810.P7014256176743971546

`p?[∑[5*n]+2]`
-/

namespace A285810.P7014256176743971546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A285810.P7014256176743971546

/-! ## A285810.P13294738100762903778

`∏{p}[p?[a(n-1)+5*n], #]` with `a(0)=2`
-/

namespace A285810.P13294738100762903778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 5 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A285810.P13294738100762903778

/-! ## A285810.P16035836792523770920

`∏{d}[p?[A005891(n)+1], #]`
-/

namespace A285810.P16035836792523770920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A285810.P16035836792523770920

/-! ## A285810.P1382797525922972902

`A020985(n)²*p?[a(n-1)+5*n]` with `a(0)=2`
-/

namespace A285810.P1382797525922972902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A285810.P1382797525922972902

/-! ## A285810.P13276004526620665222

`or(p?[A005891(n)+1], A010060(n))`
-/

namespace A285810.P13276004526620665222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A010060 n)

end

end A285810.P13276004526620665222

/-! ## A285810.P3640400557342137102

`p?[A005891(n)+1]^A144464(∑[n])`
-/

namespace A285810.P3640400557342137102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A144464 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A285810.P3640400557342137102

/-! ## A285810.P11567753809938237910

`p?[A005891(n)+1]*A059841(2*n)`
-/

namespace A285810.P11567753809938237910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A059841 (2 * n)

end

end A285810.P11567753809938237910

/-! ## A285810.P11791051115289415167

`or(p?[A005891(n)+1], A069513(n+1))`
-/

namespace A285810.P11791051115289415167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A069513 (n + 1))

end

end A285810.P11791051115289415167

/-! ## A285810.P16171824586305582365

`p?[A005891(n)+1]+A008683(4*(n+1))`
-/

namespace A285810.P16171824586305582365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A285810.P16171824586305582365

/-! ## A285810.P8706139843780535157

`gcd(13, A000005(n+2))*p?[A005891(n)+1]`
-/

namespace A285810.P8706139843780535157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 13 (A000005 (n + 2)) : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285810.P8706139843780535157

/-!
# A285811: Primes equal to a centered heptagonal number plus 1.

The programs for A285811, there is no canonical definition to state claims against.
-/

/-! ## A285811.P888991346051970398

`∩[A141888(n+1), A209294(n+1)]`
-/

namespace A285811.P888991346051970398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285811.P888991346051970398

/-! ## A285811.P6110919861067442194

`p?[∑[7*n]+2]`
-/

namespace A285811.P6110919861067442194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A285811.P6110919861067442194

/-! ## A285811.P3249709854067532706

`∑{p}[p?[a(n-1)+7*n], #]` with `a(0)=2`
-/

namespace A285811.P3249709854067532706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 7 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A285811.P3249709854067532706

/-! ## A285811.P9078632445869491180

`∏{p}[p?[a(n-1)+7*n], #]` with `a(0)=2`
-/

namespace A285811.P9078632445869491180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 7 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A285811.P9078632445869491180

/-! ## A285811.P10903057809384018309

`∏{p}[p?[floor((2*n+1)²+ϕ-C(n+1, 2))], #]`
-/

namespace A285811.P10903057809384018309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) ^ 2 : ℝ) + (Real.goldenRatio - (Nat.choose (n + 1) 2 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A285811.P10903057809384018309

/-! ## A285811.P2208033852126567813

`∏{d}[p?[A209294(n+1)], #]`
-/

namespace A285811.P2208033852126567813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209294 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A285811.P2208033852126567813

/-! ## A285811.P310703271191460856

`∏{d}[p?[A069099(n+1)+1], #]`
-/

namespace A285811.P310703271191460856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A285811.P310703271191460856

/-! ## A285811.P4976365651235057231

`gcd(p?[A209294(n+1)], A000038(n))`
-/

namespace A285811.P4976365651235057231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000038 n)

end

end A285811.P4976365651235057231

/-! ## A285811.P8633613614535489179

`or(p?[A209294(n+1)], A000035(n))`
-/

namespace A285811.P8633613614535489179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A285811.P8633613614535489179

/-! ## A285811.P10524266835216376347

`p?[A209294(n+1)]+A008683(8*n+4)`
-/

namespace A285811.P10524266835216376347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (8 * n + 4)

end

end A285811.P10524266835216376347

/-!
# A285812: Primes equal to a centered 9-gonal number plus 1.

The programs for A285812, there is no canonical definition to state claims against.
-/

/-! ## A285812.P3696855164516019531

`∩[A055469(n+1), A062123(n)]`
-/

namespace A285812.P3696855164516019531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285812.P3696855164516019531

/-! ## A285812.P12790308905207121490

`record[A055469(n+1)/dr(A129545(n+1))]`
-/

namespace A285812.P12790308905207121490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055469 (n + 1) : ℚ) / (SequenceMachineLib.digitalRoot (A129545 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285812.P12790308905207121490

/-! ## A285812.P4029054715707454478

`record[A118680(3*n+1)]`
-/

namespace A285812.P4029054715707454478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285812.P4029054715707454478

/-! ## A285812.P7886646689440567838

`record[A271322(3*(n+1))-A255738(3*n+1)]`
-/

namespace A285812.P7886646689440567838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271322 (3 * (n + 1)) - A255738 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285812.P7886646689440567838

/-! ## A285812.P14540667764163412599

`∩[A077128(n+1), A062123(n)]`
-/

namespace A285812.P14540667764163412599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285812.P14540667764163412599

/-! ## A285812.P11733513806432074786

`∩[A106926(n+1), A000124(n)]`
-/

namespace A285812.P11733513806432074786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285812.P11733513806432074786

/-! ## A285812.P6711555654865235178

`∩[A106926(n+1), A062123(n)]`
-/

namespace A285812.P6711555654865235178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285812.P6711555654865235178

/-! ## A285812.P5922367645557520953

`∩[A055469(n+1), A106926(n+1)]`
-/

namespace A285812.P5922367645557520953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285812.P5922367645557520953

/-! ## A285812.P10512411993257369550

`∩[A106926(n+1), A134519(n+1)]`
-/

namespace A285812.P10512411993257369550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285812.P10512411993257369550

/-! ## A285812.P17739031285494897647

`∩[A106926(n+1), A342939(n+1)]`
-/

namespace A285812.P17739031285494897647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285812.P17739031285494897647

/-!
# A285813: Let p_1

The programs for A285813, there is no canonical definition to state claims against.
-/

/-! ## A285813.P9093569661243921918

`A074600(n)%A242029(A020712(n))`
-/

namespace A285813.P9093569661243921918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074600 n) (A242029 (A020712 n).toNat)

end

end A285813.P9093569661243921918

/-! ## A285813.P17538577825286504572

`A033264(A341512(n+1)+A130709(n))`
-/

namespace A285813.P17538577825286504572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A341512 (n + 1) + A130709 n).toNat

end

end A285813.P17538577825286504572

/-! ## A285813.P2881993150818541791

`A134022(and(A008776(n), A046630(n)))`
-/

namespace A285813.P2881993150818541791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (Int.land (A008776 n) (A046630 n)).toNat

end

end A285813.P2881993150818541791

/-! ## A285813.P12377382233322041109

`A025864(A187829(n+1)+A077467(n+1))`
-/

namespace A285813.P12377382233322041109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 (A187829 (n + 1) + A077467 (n + 1)).toNat

end

end A285813.P12377382233322041109

/-! ## A285813.P8445716884492015649

`A102669(A182223(n+1))`
-/

namespace A285813.P8445716884492015649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A182223 (n + 1)).toNat

end

end A285813.P8445716884492015649

/-!
# A285815: Numbers k such that, for any divisor d of k, the digital sum of d divides k.

The programs for A285815, there is no canonical definition to state claims against.
-/

/-! ## A285815.P13746861230334922087

`xor(A005349(n+1), A337853(A080953(n)))`
-/

namespace A285815.P13746861230334922087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005349 (n + 1)) (A337853 (A080953 n).toNat)

end

end A285815.P13746861230334922087

/-! ## A285815.P11368426504918235543

`A252897(A110566(n+1))+A234474(n+1)`
-/

namespace A285815.P11368426504918235543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252897 (A110566 (n + 1)).toNat + A234474 (n + 1)

end

end A285815.P11368426504918235543

/-!
# A285817: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A285817, there is no canonical definition to state claims against.
-/

/-! ## A285817.P8789849483268460256

`A007088(A285819(n))`
-/

namespace A285817.P8789849483268460256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285819 n).toNat

end

end A285817.P8789849483268460256

/-! ## A285817.P8828826618324674766

`A007088(A287760(n))`
-/

namespace A285817.P8828826618324674766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287760 n).toNat

end

end A285817.P8828826618324674766

/-!
# A285818: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A285818, there is no canonical definition to state claims against.
-/

/-! ## A285818.P16787631511303661183

`A287759(n)-A185255(A094437(n))`
-/

namespace A285818.P16787631511303661183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287759 n - A185255 (A094437 n).toNat

end

end A285818.P16787631511303661183

/-! ## A285818.P2509312422481381199

`A287759(n)-A185255(A285824(n))`
-/

namespace A285818.P2509312422481381199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287759 n - A185255 (A285824 n).toNat

end

end A285818.P2509312422481381199

/-! ## A285818.P8870884704031312588

`A052410(A287759(n))`
-/

namespace A285818.P8870884704031312588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A287759 n).toNat

end

end A285818.P8870884704031312588

/-! ## A285818.P13871348839304314663

`A287759(A051903(2^n))`
-/

namespace A285818.P13871348839304314663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287759 (A051903 (2 ^ n)).toNat

end

end A285818.P13871348839304314663

/-! ## A285818.P4537770156825237427

`filter[A287759(n), A296077(#)]`
-/

namespace A285818.P4537770156825237427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296077 (f1 j).toNat = 1) n)

end

end A285818.P4537770156825237427

/-!
# A285819: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 97", based on the 5-celled von Neumann neighborhood.

The programs for A285819, there is no canonical definition to state claims against.
-/

/-! ## A285819.P9956502479399832969

`A287760(A091536(n)+n)`
-/

namespace A285819.P9956502479399832969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287760 (A091536 n + (n : ℤ)).toNat

end

end A285819.P9956502479399832969

/-! ## A285819.P5275196412213051670

`A287760(or(n, A091536(n)))`
-/

namespace A285819.P5275196412213051670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287760 (Int.lor (n : ℤ) (A091536 n)).toNat

end

end A285819.P5275196412213051670

/-! ## A285819.P10799922059907890708

`A287760(xor(n, A091536(n)))`
-/

namespace A285819.P10799922059907890708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287760 (Int.xor (n : ℤ) (A091536 n)).toNat

end

end A285819.P10799922059907890708

/-! ## A285819.P1992994362636509685

`∏{e}[A287705(n), A287760(#)]`
-/

namespace A285819.P1992994362636509685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A287760 (Nat.factorization (f1 n).natAbs p)

end

end A285819.P1992994362636509685

/-! ## A285819.P7686469592479817127

`A331288(A287760(n))`
-/

namespace A285819.P7686469592479817127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331288 (A287760 n).toNat

end

end A285819.P7686469592479817127

/-!
# A285820: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A285820, there is no canonical definition to state claims against.
-/

/-! ## A285820.P2139911833046342305

`A007088(A285822(n))`
-/

namespace A285820.P2139911833046342305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285822 n).toNat

end

end A285820.P2139911833046342305

/-! ## A285820.P10615274888248985932

`A185544(2*A285822(n))`
-/

namespace A285820.P10615274888248985932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285822 n).toNat

end

end A285820.P10615274888248985932

/-!
# A285821: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A285821, there is no canonical definition to state claims against.
-/

/-! ## A285821.P9657176850707475084

`A007088(A285823(n))`
-/

namespace A285821.P9657176850707475084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285823 n).toNat

end

end A285821.P9657176850707475084

/-! ## A285821.P15206393945633101432

`A185544(2*A285823(n))`
-/

namespace A285821.P15206393945633101432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285823 n).toNat

end

end A285821.P15206393945633101432

/-! ## A285821.P13707944313884599196

`A285833(A046469(n))`
-/

namespace A285821.P13707944313884599196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285833 (A046469 n).toNat

end

end A285821.P13707944313884599196

/-! ## A285821.P16722832441803829706

`A285833(A056143(n))`
-/

namespace A285821.P16722832441803829706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285833 (A056143 n).toNat

end

end A285821.P16722832441803829706

/-! ## A285821.P15493552299620403945

`A285833(A082216(n))`
-/

namespace A285821.P15493552299620403945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285833 (A082216 n).toNat

end

end A285821.P15493552299620403945

/-!
# A285822: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A285822, there is no canonical definition to state claims against.
-/

/-! ## A285822.P12682248077813957952

`A285834(n)-A185264(A007444(n+1))`
-/

namespace A285822.P12682248077813957952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285834 n - A185264 (A007444 (n + 1)).toNat

end

end A285822.P12682248077813957952

/-! ## A285822.P3466590146208033689

`or(A000120(A116825(n+2)), A285843(n))`
-/

namespace A285822.P3466590146208033689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A116825 (n + 2)).toNat) (A285843 n)

end

end A285822.P3466590146208033689

/-! ## A285822.P11929582332576812354

`A285834(A046469(n))`
-/

namespace A285822.P11929582332576812354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285834 (A046469 n).toNat

end

end A285822.P11929582332576812354

/-! ## A285822.P14147926682765163495

`A285834(A087036(n))`
-/

namespace A285822.P14147926682765163495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285834 (A087036 n).toNat

end

end A285822.P14147926682765163495

/-! ## A285822.P2508217481921983370

`A285834(A087051(n))`
-/

namespace A285822.P2508217481921983370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285834 (A087051 n).toNat

end

end A285822.P2508217481921983370

/-!
# A285823: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 99", based on the 5-celled von Neumann neighborhood.

The programs for A285823, there is no canonical definition to state claims against.
-/

/-! ## A285823.P12098373686215612662

`A285835(A046469(n))`
-/

namespace A285823.P12098373686215612662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285835 (A046469 n).toNat

end

end A285823.P12098373686215612662

/-! ## A285823.P17927925181225411963

`A285835(A087036(n))`
-/

namespace A285823.P17927925181225411963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285835 (A087036 n).toNat

end

end A285823.P17927925181225411963

/-! ## A285823.P15478688741075434678

`A285835(A087051(n))`
-/

namespace A285823.P15478688741075434678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285835 (A087051 n).toNat

end

end A285823.P15478688741075434678

/-! ## A285823.P17256965929965022719

`A285835(A004893(n+1))`
-/

namespace A285823.P17256965929965022719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285835 (A004893 (n + 1)).toNat

end

end A285823.P17256965929965022719

/-! ## A285823.P12883528981288456447

`A285835(n^A214268(n+3))`
-/

namespace A285823.P12883528981288456447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285835 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A214268 (n + 3) : ℤ))).toNat

end

end A285823.P12883528981288456447

/-!
# A285824: Number T(n,k) of ordered set partitions of [n] into k blocks such that equal-sized blocks are ordered with increasing least elements; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A285824, there is no canonical definition to state claims against.
-/

/-! ## A285824.P5644550071773688238

`A154129(A154129(A058710(n)))`
-/

namespace A285824.P5644550071773688238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154129 (A154129 (A058710 n).toNat).toNat

end

end A285824.P5644550071773688238

/-! ## A285824.P8526605803864983212

`A059253(A004396(A230049(n)²))`
-/

namespace A285824.P8526605803864983212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A004396 (A230049 n ^ 2).toNat).toNat

end

end A285824.P8526605803864983212

/-! ## A285824.P3954271850787978379

`∑{d}[A281891(n), A255833(A137512(#))]`
-/

namespace A285824.P3954271850787978379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A255833 (A137512 d).toNat

end

end A285824.P3954271850787978379

/-! ## A285824.P6694217692773751685

`∑{p}[A283477(A211399(n)), A004396(#)]`
-/

namespace A285824.P6694217692773751685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283477 (A211399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A004396 p

end

end A285824.P6694217692773751685

/-! ## A285824.P6275974921127211849

`∑{p}[A283477(A211399(n)), A250470(#)]`
-/

namespace A285824.P6275974921127211849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283477 (A211399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A250470 p

end

end A285824.P6275974921127211849

/-!
# A285825: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A285825, there is no canonical definition to state claims against.
-/

/-! ## A285825.P5464669320577357269

`A007088(A285827(n))`
-/

namespace A285825.P5464669320577357269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285827 n).toNat

end

end A285825.P5464669320577357269

/-! ## A285825.P9795183059783583776

`A185544(2*A285827(n))`
-/

namespace A285825.P9795183059783583776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285827 n).toNat

end

end A285825.P9795183059783583776

/-! ## A285825.P11289308796815063637

`A288584(A073789(n))`
-/

namespace A285825.P11289308796815063637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288584 (A073789 n).toNat

end

end A285825.P11289308796815063637

/-! ## A285825.P16031235559799141796

`A288584(A004891(n+1))`
-/

namespace A285825.P16031235559799141796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288584 (A004891 (n + 1)).toNat

end

end A285825.P16031235559799141796

/-!
# A285826: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A285826, there is no canonical definition to state claims against.
-/

/-! ## A285826.P9574801035413528982

`A007088(A285828(n))`
-/

namespace A285826.P9574801035413528982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285828 n).toNat

end

end A285826.P9574801035413528982

/-! ## A285826.P7311697380150194087

`A185544(2*A285828(n))`
-/

namespace A285826.P7311697380150194087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285828 n).toNat

end

end A285826.P7311697380150194087

/-! ## A285826.P571940832615064350

`A007088(A288587(n)%A096059(n+1))`
-/

namespace A285826.P571940832615064350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A288587 n) (A096059 (n + 1))).toNat

end

end A285826.P571940832615064350

/-! ## A285826.P7711774588341683707

`A288585(A073789(n))`
-/

namespace A285826.P7711774588341683707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288585 (A073789 n).toNat

end

end A285826.P7711774588341683707

/-!
# A285827: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A285827, there is no canonical definition to state claims against.
-/

/-! ## A285827.P8278379345476661625

`A288586(A004891(n+1))`
-/

namespace A285827.P8278379345476661625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288586 (A004891 (n + 1)).toNat

end

end A285827.P8278379345476661625

/-! ## A285827.P17389802182058833919

`A288586(A004902(n+1))`
-/

namespace A285827.P17389802182058833919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288586 (A004902 (n + 1)).toNat

end

end A285827.P17389802182058833919

/-! ## A285827.P1346423286420950156

`A288586(A004913(n+1))`
-/

namespace A285827.P1346423286420950156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288586 (A004913 (n + 1)).toNat

end

end A285827.P1346423286420950156

/-! ## A285827.P2448915738568520352

`A288586(A032551(n+1))`
-/

namespace A285827.P2448915738568520352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288586 (A032551 (n + 1)).toNat

end

end A285827.P2448915738568520352

/-!
# A285828: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A285828, there is no canonical definition to state claims against.
-/

/-! ## A285828.P7989412763266133685

`A288587(n)%A096059(n+1)`
-/

namespace A285828.P7989412763266133685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288587 n) (A096059 (n + 1))

end

end A285828.P7989412763266133685

/-! ## A285828.P11928259834486457036

`A288587(n)%A350182(A350274(n))`
-/

namespace A285828.P11928259834486457036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288587 n) (A350182 (A350274 n).toNat)

end

end A285828.P11928259834486457036

/-!
# A285829: Numbers n such that, for any i and j with i >= j >= 0, ds^i(n) divides ds^j(n) (where ds^k denotes the k-th iteration of the digital sum).

The programs for A285829, there is no canonical definition to state claims against.
-/

/-! ## A285829.P9235823820202916332

`record[A113315(n+1)*A360074(A325454(n+1))]`
-/

namespace A285829.P9235823820202916332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A360074 (A325454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285829.P9235823820202916332

/-! ## A285829.P14467722038603223303

`record[A005349(n+1)/A065518(A325454(n+1))]`
-/

namespace A285829.P14467722038603223303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005349 (n + 1) : ℚ) / (A065518 (A325454 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285829.P14467722038603223303

/-!
# A285830: Triangular array: row n shows the n+1 zero-one subwords of length n that occur in the infinite Fibonacci word A003849, in the order of occurrence.

The programs for A285830, there is no canonical definition to state claims against.
-/

/-! ## A285830.P1912107619096015973

`A050356(A050039(n+1))%A001468(n)`
-/

namespace A285830.P1912107619096015973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050356 (A050039 (n + 1)).toNat) (A001468 n)

end

end A285830.P1912107619096015973

/-! ## A285830.P2936262792978942026

`ceil(sqrt(A001822(n+1)*A369892(2*(n+1))))%2`
-/

namespace A285830.P2936262792978942026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A001822 (n + 1) * A369892 (2 * (n + 1)) : ℝ)⌉ 2

end

end A285830.P2936262792978942026

/-! ## A285830.P10209669623055913517

`A283991(A313391(n)%A181793(2*(n+2)))`
-/

namespace A285830.P10209669623055913517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (Int.tmod (A313391 n) (A181793 (2 * (n + 2)))).toNat

end

end A285830.P10209669623055913517

/-! ## A285830.P1533741509191863313

`and(A096270(n), A329130(A351471(2*n+3)))`
-/

namespace A285830.P1533741509191863313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096270 n) (A329130 (A351471 (2 * n + 3)).toNat)

end

end A285830.P1533741509191863313

/-! ## A285830.P4056534446549553548

`A003849(A318636(n+1)+A074342(2*n+5))`
-/

namespace A285830.P4056534446549553548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A318636 (n + 1) + A074342 (2 * n + 5)).toNat

end

end A285830.P4056534446549553548

/-!
# A285831: Triangular array: row n shows the n+1 zero-one subwords of length n that occur in the infinite Fibonacci word A003849, in lexicographic order.

The programs for A285831, there is no canonical definition to state claims against.
-/

/-! ## A285831.P10455564791549052696

`A288216(A255898(A255898(n+1))+A032863(n+1))`
-/

namespace A285831.P10455564791549052696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288216 (A255898 (A255898 (n + 1)).toNat + A032863 (n + 1)).toNat

end

end A285831.P10455564791549052696

/-! ## A285831.P7311217379112184315

`A316863(A308912(n+1))%2`
-/

namespace A285831.P7311217379112184315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316863 (A308912 (n + 1)).toNat) 2

end

end A285831.P7311217379112184315

/-! ## A285831.P12522276844692001007

`and(A000040(n+1), A316863(A308912(n+1)))`
-/

namespace A285831.P12522276844692001007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A316863 (A308912 (n + 1)).toNat)

end

end A285831.P12522276844692001007

/-! ## A285831.P8647840796812160635

`A066829(A214015(3*n+4)+A201715(n+1))`
-/

namespace A285831.P8647840796812160635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A214015 (3 * n + 4) + A201715 (n + 1)).toNat

end

end A285831.P8647840796812160635

/-! ## A285831.P13089896108870429248

`and(A014963(4*n+3), A316863(A308912(n+1)))`
-/

namespace A285831.P13089896108870429248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (4 * n + 3)) (A316863 (A308912 (n + 1)).toNat)

end

end A285831.P13089896108870429248

/-!
# A285833: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 107", based on the 5-celled von Neumann neighborhood.

The programs for A285833, there is no canonical definition to state claims against.
-/

/-! ## A285833.P17836821586272382952

`A007088(A285835(n))`
-/

namespace A285833.P17836821586272382952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285835 n).toNat

end

end A285833.P17836821586272382952

/-! ## A285833.P7574978408041962380

`A007088(lcm(A106664(n), A285834(n)))`
-/

namespace A285833.P7574978408041962380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A106664 n) (A285834 n))

end

end A285833.P7574978408041962380

/-! ## A285833.P9965118488719538276

`A185544(2*A285835(n))`
-/

namespace A285833.P9965118488719538276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285835 n).toNat

end

end A285833.P9965118488719538276

/-! ## A285833.P13167336807581253990

`A221714(A285835(n)^gcd(2*n+1, 4*n))`
-/

namespace A285833.P13167336807581253990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (A285835 n ^ Nat.gcd (2 * n + 1) (4 * n)).toNat

end

end A285833.P13167336807581253990

/-! ## A285833.P8360898038955902604

`A221714(A285835(n)+A185264(n))`
-/

namespace A285833.P8360898038955902604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (A285835 n + A185264 n).toNat

end

end A285833.P8360898038955902604

/-!
# A285834: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 107", based on the 5-celled von Neumann neighborhood.

The programs for A285834, there is no canonical definition to state claims against.
-/

/-! ## A285834.P3088095363414523034

`A285822(n)+A185264(A007444(n+1))`
-/

namespace A285834.P3088095363414523034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285822 n + A185264 (A007444 (n + 1)).toNat

end

end A285834.P3088095363414523034

/-! ## A285834.P15877600732359157061

`A233569(A285822(n))`
-/

namespace A285834.P15877600732359157061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A285822 n).toNat

end

end A285834.P15877600732359157061

/-!
# A285835: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 107", based on the 5-celled von Neumann neighborhood.

The programs for A285835, there is no canonical definition to state claims against.
-/

/-! ## A285835.P1667667644447564479

`lcm(A106664(n), A285834(n))`
-/

namespace A285835.P1667667644447564479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106664 n) (A285834 n)

end

end A285835.P1667667644447564479

/-! ## A285835.P17369907126140888249

`lcm(-A106664(n), A233569(A285822(n)))`
-/

namespace A285835.P17369907126140888249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A106664 n) (A233569 (A285822 n).toNat)

end

end A285835.P17369907126140888249

/-!
# A285837: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A285837, there is no canonical definition to state claims against.
-/

/-! ## A285837.P8651962363319329925

`A007088(A285839(n))`
-/

namespace A285837.P8651962363319329925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285839 n).toNat

end

end A285837.P8651962363319329925

/-! ## A285837.P8398407304767389480

`A185544(2*A285839(n))`
-/

namespace A285837.P8398407304767389480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285839 n).toNat

end

end A285837.P8398407304767389480

/-! ## A285837.P17953445669059803436

`A185544(A285839(n)+A285839(n))`
-/

namespace A285837.P17953445669059803436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285839 n + A285839 n).toNat

end

end A285837.P17953445669059803436

/-!
# A285838: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A285838, there is no canonical definition to state claims against.
-/

/-! ## A285838.P5031546852389808114

`A007088(A285840(n))`
-/

namespace A285838.P5031546852389808114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285840 n).toNat

end

end A285838.P5031546852389808114

/-! ## A285838.P11140150494845448096

`A185544(2*A285840(n))`
-/

namespace A285838.P11140150494845448096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285840 n).toNat

end

end A285838.P11140150494845448096

/-!
# A285840: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A285840, there is no canonical definition to state claims against.
-/

/-! ## A285840.P15215535452797851170

`gcd(A198442(A053497(n)), A285819(n))`
-/

namespace A285840.P15215535452797851170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198442 (A053497 n).toNat) (A285819 n)

end

end A285840.P15215535452797851170

/-! ## A285840.P6890439380347823524

`gcd(A198442(A053497(n))², A287760(n))`
-/

namespace A285840.P6890439380347823524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198442 (A053497 n).toNat ^ 2) (A287760 n)

end

end A285840.P6890439380347823524

/-!
# A285841: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A285841, there is no canonical definition to state claims against.
-/

/-! ## A285841.P10493709747721254804

`A007088(A285843(n))`
-/

namespace A285841.P10493709747721254804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285843 n).toNat

end

end A285841.P10493709747721254804

/-! ## A285841.P16503564004584315277

`A007088(A285947(n))`
-/

namespace A285841.P16503564004584315277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285947 n).toNat

end

end A285841.P16503564004584315277

/-!
# A285842: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A285842, there is no canonical definition to state claims against.
-/

/-! ## A285842.P7680119683651668041

`A007088(A285844(n))`
-/

namespace A285842.P7680119683651668041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285844 n).toNat

end

end A285842.P7680119683651668041

/-!
# A285844: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A285844, there is no canonical definition to state claims against.
-/

/-! ## A285844.P274878858685684089

`A285948(n)%A002149(n²)`
-/

namespace A285844.P274878858685684089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285948 n) (A002149 (n ^ 2))

end

end A285844.P274878858685684089

/-! ## A285844.P5951469742136861539

`A285948(lcm(n, A326034(3*(n+1))))`
-/

namespace A285844.P5951469742136861539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285948 (Int.lcm (n : ℤ) (A326034 (3 * (n + 1))))

end

end A285844.P5951469742136861539

/-! ## A285844.P15409469926173824359

`A285948(C(2, A196356(2*n+3))+n)`
-/

namespace A285844.P15409469926173824359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285948 (Nat.choose 2 (A196356 (2 * n + 3)).toNat + n)

end

end A285844.P15409469926173824359

/-! ## A285844.P9108959225850781446

`A285948(n)+A010059(A016116(n))`
-/

namespace A285844.P9108959225850781446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285948 n + A010059 (A016116 n).toNat

end

end A285844.P9108959225850781446

/-! ## A285844.P2131294355856987369

`A285948(n)+A055668(A164015(n))`
-/

namespace A285844.P2131294355856987369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285948 n + A055668 (A164015 n).toNat

end

end A285844.P2131294355856987369

/-!
# A285845: Powers (A001597) that are also cyclops numbers (A134808).

The programs for A285845, there is no canonical definition to state claims against.
-/

/-! ## A285845.P1915483164394881456

`A160711(A077168(n)+1)`
-/

namespace A285845.P1915483164394881456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160711 (A077168 n + 1).toNat

end

end A285845.P1915483164394881456

/-! ## A285845.P17255962625753703476

`A160711(A187829(n+2))`
-/

namespace A285845.P17255962625753703476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160711 (A187829 (n + 2)).toNat

end

end A285845.P17255962625753703476

/-! ## A285845.P16311925673531346319

`A160711(A288417(2^n)+1)`
-/

namespace A285845.P16311925673531346319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160711 (A288417 (2 ^ n) + 1).toNat

end

end A285845.P16311925673531346319

/-! ## A285845.P17500553455077054771

`A160711(A056239(2^n)+2)`
-/

namespace A285845.P17500553455077054771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160711 (A056239 (2 ^ n) + 2).toNat

end

end A285845.P17500553455077054771

/-! ## A285845.P3609855077234576865

`A160711(2*A077168(n)-n)`
-/

namespace A285845.P3609855077234576865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160711 (2 * A077168 n - (n : ℤ)).toNat

end

end A285845.P3609855077234576865

/-!
# A285846: A039938 with duplicates removed.

The programs for A285846, there is no canonical definition to state claims against.
-/

/-! ## A285846.P9760270922391614496

`record[A039938(round(lcm(2, n+3)/6))]`
-/

namespace A285846.P9760270922391614496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039938 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285846.P9760270922391614496

/-! ## A285846.P2887663398899923029

`record[A039938(gcd(n+1, ceil(n/2)))]`
-/

namespace A285846.P2887663398899923029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039938 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285846.P2887663398899923029

/-! ## A285846.P9339353630592863139

`record[A039938(ceil(C(or(1, n), n)/2))]`
-/

namespace A285846.P9339353630592863139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039938 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285846.P9339353630592863139

/-! ## A285846.P2231115118956960517

`record[A039938(n+1)-val(n+1, 10)]`
-/

namespace A285846.P2231115118956960517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039938 (n + 1) - (SequenceMachineLib.valuation (n + 1) 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285846.P2231115118956960517

/-! ## A285846.P14019567431526443306

`record[A039938(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A285846.P14019567431526443306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039938 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285846.P14019567431526443306

/-!
# A285847: N-positions in the sum-from-product game.

The programs for A285847, there is no canonical definition to state claims against.
-/

/-! ## A285847.P12532581321541396532

`comp[A285304(n+1)-1]+1`
-/

namespace A285847.P12532581321541396532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285847.P12532581321541396532

/-! ## A285847.P15021519311517290108

`comp[A285304(n+1)%A227691(2*n+5)]`
-/

namespace A285847.P15021519311517290108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285304 (n + 1)) (A227691 (2 * n + 5))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285847.P15021519311517290108

/-! ## A285847.P8944554826727903909

`eq[char[A285304(n+1)], A151933(n)]`
-/

namespace A285847.P8944554826727903909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285847.P8944554826727903909

/-! ## A285847.P18007727704248375417

`eq[char[A285304(n+1)], A151622(n)]`
-/

namespace A285847.P18007727704248375417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285847.P18007727704248375417

/-! ## A285847.P9577191247549810765

`lt[A006530(A293284(n+1)), A002445(n)]`
-/

namespace A285847.P9577191247549810765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A293284 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285847.P9577191247549810765

/-!
# A285849: Number T(n,k) of permutations of [n] with k ordered cycles such that equal-sized cycles are ordered with increasing least elements; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A285849, there is no canonical definition to state claims against.
-/

/-! ## A285849.P17983733191583321901

`A091951(A048993(n)*A084938(n))`
-/

namespace A285849.P17983733191583321901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091951 (A048993 n * A084938 n).toNat

end

end A285849.P17983733191583321901

/-! ## A285849.P5203451775937450437

`A091951(A084938(n)*A151511(n))`
-/

namespace A285849.P5203451775937450437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091951 (A084938 n * A151511 n).toNat

end

end A285849.P5203451775937450437

/-! ## A285849.P4921319312318689832

`A091951(A187556(n))`
-/

namespace A285849.P4921319312318689832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091951 (A187556 n).toNat

end

end A285849.P4921319312318689832

/-! ## A285849.P1902810713246709286

`A342291(A346415(n))`
-/

namespace A285849.P1902810713246709286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342291 (A346415 n).toNat

end

end A285849.P1902810713246709286

/-! ## A285849.P14476537867734092224

`A218654(A029635(n)!)`
-/

namespace A285849.P14476537867734092224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218654 (Nat.factorial (A029635 n).toNat)

end

end A285849.P14476537867734092224

/-!
# A285850: Number of ways n couples can sit in a row such that exactly one couple sits next to each other.

The programs for A285850, there is no canonical definition to state claims against.
-/

/-! ## A285850.P17801416409660831097

`A193639(∑[n]+1)`
-/

namespace A285850.P17801416409660831097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A285850.P17801416409660831097

/-! ## A285850.P13840989203657153900

`lcm(2, A193639(A000124(n)))`
-/

namespace A285850.P13840989203657153900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A193639 (A000124 n).toNat)

end

end A285850.P13840989203657153900

/-! ## A285850.P4606733375503890325

`record[A193639(n+1)/A193633(n)]`
-/

namespace A285850.P4606733375503890325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193639 (n + 1) : ℚ) / (A193633 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285850.P4606733375503890325

/-! ## A285850.P6375020647431040312

`record[A193639(n+1)/A193634(n)]`
-/

namespace A285850.P6375020647431040312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193639 (n + 1) : ℚ) / (A193634 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285850.P6375020647431040312

/-! ## A285850.P12340235584223789689

`A057427(n)*A193639(A000124(n))`
-/

namespace A285850.P12340235584223789689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A193639 (A000124 n).toNat

end

end A285850.P12340235584223789689

/-!
# A285851: Denominator of the ratio of alternate consecutive prime gaps: Denominator((prime(n + 3) - prime(n + 2))/(prime(n + 1) - prime(n))).

The programs for A285851, the canonical program `A285851.P12289983839867635812` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285851 has offset 1).

The definition of A285851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285851.P12289983839867635812

`A001223(n+1)/gcd(A001223(n+1), A226502(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285851

/-- `A001223(n+1)/gcd(A001223(n+1), A226502(n+1))` -/
def P12289983839867635812.Spec : Prop :=
  ∀ n, P12289983839867635812.a n = (A285851 (n + 1) : ℚ)

end A285851

/-! ## A285851.P2427494192270677269

`lcm(A001223(n+1), A001223(n+3))/A001223(n+3)`
-/

namespace A285851.P2427494192270677269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001223 (n + 1)) (A001223 (n + 3)) : ℚ) / (A001223 (n + 3) : ℚ)

end

end A285851.P2427494192270677269

namespace A285851

/-- `lcm(A001223(n+1), A001223(n+3))/A001223(n+3)` -/
def P2427494192270677269.Spec : Prop :=
  ∀ n, P2427494192270677269.a n = (A285851 (n + 1) : ℚ)

end A285851

/-! ## A285851.P2300087802166480098

`A067029(A367682(2*(n+2))+A070002(2*n+3))`
-/

namespace A285851.P2300087802166480098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A367682 (2 * (n + 2)) + A070002 (2 * n + 3)).toNat

end

end A285851.P2300087802166480098

namespace A285851

/-- `A067029(A367682(2*(n+2))+A070002(2*n+3))` -/
def P2300087802166480098.Spec : Prop :=
  ∀ n, P2300087802166480098.a n = A285851 (n + 1)

end A285851

/-! ## A285851.P14722005281288156261

`A260372(A344393(n)+1)`
-/

namespace A285851.P14722005281288156261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260372 (A344393 n + 1).toNat

end

end A285851.P14722005281288156261

namespace A285851

/-- `A260372(A344393(n)+1)` -/
def P14722005281288156261.Spec : Prop :=
  ∀ n, P14722005281288156261.a n = A285851 (n + 1)

end A285851

/-! ## A285851.P6315981302324099273

`gcd(A026741(A001223(n+1)), A121433(2*(n+2)))`
-/

namespace A285851.P6315981302324099273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (A001223 (n + 1)).toNat) (A121433 (2 * (n + 2)))

end

end A285851.P6315981302324099273

namespace A285851

/-- `gcd(A026741(A001223(n+1)), A121433(2*(n+2)))` -/
def P6315981302324099273.Spec : Prop :=
  ∀ n, (P6315981302324099273.a n : ℤ) = A285851 (n + 1)

end A285851

/-!
# A285853: Number of permutations of [n] with two ordered cycles such that equal-sized cycles are ordered with increasing least elements.

The programs for A285853, there is no canonical definition to state claims against.
-/

/-! ## A285853.P10316767688229405852

`record[A285849(∑[n]+2)]`
-/

namespace A285853.P10316767688229405852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285853.P10316767688229405852

/-! ## A285853.P9840309040479964787

`A285849(∑[n+2]+3)`
-/

namespace A285853.P9840309040479964787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A285853.P9840309040479964787

/-! ## A285853.P685722175978805365

`record[A285849(n+2)/A062190(n)]`
-/

namespace A285853.P685722175978805365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285849 (n + 2) : ℚ) / (A062190 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285853.P685722175978805365

/-! ## A285853.P10768688500141684903

`record[gcd(A285824(n), A285849(n+2))]`
-/

namespace A285853.P10768688500141684903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285824 n) (A285849 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285853.P10768688500141684903

/-! ## A285853.P7681465623585021751

`record[A285849(n+2)/A241171(n+1)]`
-/

namespace A285853.P7681465623585021751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285849 (n + 2) : ℚ) / (A241171 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285853.P7681465623585021751

/-!
# A285854: Number of permutations of [n] with three ordered cycles such that equal-sized cycles are ordered with increasing least elements.

The programs for A285854, there is no canonical definition to state claims against.
-/

/-! ## A285854.P12023571760665835692

`A285849(A167614(n+2))`
-/

namespace A285854.P12023571760665835692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A167614 (n + 2)).toNat

end

end A285854.P12023571760665835692

/-! ## A285854.P8711498864340509874

`A285849(A052905(n)+8)`
-/

namespace A285854.P8711498864340509874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A052905 n + 8).toNat

end

end A285854.P8711498864340509874

/-! ## A285854.P12024158953216236625

`A285849(A055999(n)+9)`
-/

namespace A285854.P12024158953216236625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A055999 n + 9).toNat

end

end A285854.P12024158953216236625

/-! ## A285854.P11855594893898695485

`A285849(eq[3, A002262(n)])`
-/

namespace A285854.P11855594893898695485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285854.P11855594893898695485

/-! ## A285854.P17413132116199772281

`A285849(eq[8, A059268(n)])`
-/

namespace A285854.P17413132116199772281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285854.P17413132116199772281

/-! ## A285854.P11876139723452306085

`record[A285849(A133263(n)+1)]`
-/

namespace A285854.P11876139723452306085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A133263 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285854.P11876139723452306085

/-! ## A285854.P18417433919317887836

`record[A285849(∑[A233583(n+1)])]`
-/

namespace A285854.P18417433919317887836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285854.P18417433919317887836

/-! ## A285854.P15990309615642186692

`record[A285849(A145018(n+2)-1)]`
-/

namespace A285854.P15990309615642186692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A145018 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285854.P15990309615642186692

/-! ## A285854.P17111540206195808741

`A285849(eq[1, A144328(n+1)-2])`
-/

namespace A285854.P17111540206195808741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285854.P17111540206195808741

/-! ## A285854.P14617002302095830081

`A285849(eq[2, A002260(n+1)-2])`
-/

namespace A285854.P14617002302095830081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285854.P14617002302095830081

/-!
# A285855: Number of permutations of [n] with four ordered cycles such that equal-sized cycles are ordered with increasing least elements.

The programs for A285855, there is no canonical definition to state claims against.
-/

/-! ## A285855.P1941620143198068564

`A285849(A155212(n)+12)`
-/

namespace A285855.P1941620143198068564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A155212 n + 12).toNat

end

end A285855.P1941620143198068564

/-! ## A285855.P8544383238259995843

`A285849(A056000(n)+14)`
-/

namespace A285855.P8544383238259995843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A056000 n + 14).toNat

end

end A285855.P8544383238259995843

/-! ## A285855.P10447438277866882130

`A285849(eq[4, A002262(n)])`
-/

namespace A285855.P10447438277866882130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285855.P10447438277866882130

/-! ## A285855.P7966753503454455387

`A285849(eq[16, A059268(n)])`
-/

namespace A285855.P7966753503454455387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285855.P7966753503454455387

/-! ## A285855.P6109075184413839822

`A285849(A167614(n+3)+1)`
-/

namespace A285855.P6109075184413839822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A167614 (n + 3) + 1).toNat

end

end A285855.P6109075184413839822

/-! ## A285855.P488951792041090303

`A285849(eq[4, A144328(n+1)])`
-/

namespace A285855.P488951792041090303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285855.P488951792041090303

/-! ## A285855.P5693454371228109741

`A285849(eq[5, A002260(n+1)])`
-/

namespace A285855.P5693454371228109741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285855.P5693454371228109741

/-!
# A285856: Number of permutations of [n] with five ordered cycles such that equal-sized cycles are ordered with increasing least elements.

The programs for A285856, there is no canonical definition to state claims against.
-/

/-! ## A285856.P3415713779988004951

`A285849(A167499(n+4))`
-/

namespace A285856.P3415713779988004951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A167499 (n + 4)).toNat

end

end A285856.P3415713779988004951

/-! ## A285856.P12333141138984789698

`A285849(eq[5, A002262(n)])`
-/

namespace A285856.P12333141138984789698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285856.P12333141138984789698

/-! ## A285856.P11227301608869372006

`A285849(eq[5, A144328(n+1)])`
-/

namespace A285856.P11227301608869372006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285856.P11227301608869372006

/-! ## A285856.P17598233055558593532

`A285849(eq[6, A002260(n+1)])`
-/

namespace A285856.P17598233055558593532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285856.P17598233055558593532

/-! ## A285856.P1107704788791745369

`A285849(eq[6, A134868(n+1)])`
-/

namespace A285856.P1107704788791745369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285856.P1107704788791745369

/-! ## A285856.P8570412606952499293

`A285849(eq[11, A158405(n+1)])`
-/

namespace A285856.P8570412606952499293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285856.P8570412606952499293

/-!
# A285857: Number of permutations of [n] with six ordered cycles such that equal-sized cycles are ordered with increasing least elements.

The programs for A285857, there is no canonical definition to state claims against.
-/

/-! ## A285857.P11485958196926367792

`A285849(eq[6, A002262(n)])`
-/

namespace A285857.P11485958196926367792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285857.P11485958196926367792

/-! ## A285857.P10925716011461632015

`A285849(eq[6, A144328(n+1)])`
-/

namespace A285857.P10925716011461632015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285857.P10925716011461632015

/-! ## A285857.P6000314538944603463

`A285849(eq[7, A002260(n+1)])`
-/

namespace A285857.P6000314538944603463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285857.P6000314538944603463

/-! ## A285857.P16817897678542055274

`A285849(eq[7, A134868(n+1)])`
-/

namespace A285857.P16817897678542055274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285857.P16817897678542055274

/-! ## A285857.P213782375463596494

`A285849(eq[13, A158405(n+1)])`
-/

namespace A285857.P213782375463596494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285857.P213782375463596494

/-!
# A285858: Number of permutations of [n] with seven ordered cycles such that equal-sized cycles are ordered with increasing least elements.

The programs for A285858, there is no canonical definition to state claims against.
-/

/-! ## A285858.P12882550220707651577

`A285849(eq[7, A002262(n)])`
-/

namespace A285858.P12882550220707651577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285858.P12882550220707651577

/-! ## A285858.P8871001244986668180

`A285849(eq[7, A144328(n+1)])`
-/

namespace A285858.P8871001244986668180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285858.P8871001244986668180

/-! ## A285858.P14010011719733083637

`A285849(eq[8, A002260(n+1)])`
-/

namespace A285858.P14010011719733083637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285858.P14010011719733083637

/-! ## A285858.P2544326547430938680

`A285849(eq[8, A134868(n+1)])`
-/

namespace A285858.P2544326547430938680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285858.P2544326547430938680

/-! ## A285858.P13681635058806895578

`A285849(eq[15, A158405(n+1)])`
-/

namespace A285858.P13681635058806895578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285858.P13681635058806895578

/-! ## A285858.P9711865753777255822

`A285849(eq[19, A037126(n+1)])`
-/

namespace A285858.P9711865753777255822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285858.P9711865753777255822

/-!
# A285859: Number of permutations of [n] with eight ordered cycles such that equal-sized cycles are ordered with increasing least elements.

The programs for A285859, there is no canonical definition to state claims against.
-/

/-! ## A285859.P8354293644029888598

`A285849(eq[8, A002262(n)])`
-/

namespace A285859.P8354293644029888598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285859.P8354293644029888598

/-! ## A285859.P723408283519608519

`A285849(eq[8, A144328(n+1)])`
-/

namespace A285859.P723408283519608519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285859.P723408283519608519

/-! ## A285859.P8628102462883470568

`A285849(eq[9, A002260(n+1)])`
-/

namespace A285859.P8628102462883470568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285859.P8628102462883470568

/-! ## A285859.P7714767955938557642

`A285849(eq[9, A134868(n+1)])`
-/

namespace A285859.P7714767955938557642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285859.P7714767955938557642

/-! ## A285859.P7723135529172048890

`A285849(A000217(n+9)-(n+1))`
-/

namespace A285859.P7723135529172048890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A285859.P7723135529172048890

/-!
# A285860: Number of permutations of [n] with nine ordered cycles such that equal-sized cycles are ordered with increasing least elements.

The programs for A285860, there is no canonical definition to state claims against.
-/

/-! ## A285860.P8743203065886579710

`A285849(eq[9, A002262(n)])`
-/

namespace A285860.P8743203065886579710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285860.P8743203065886579710

/-! ## A285860.P2376108338282975568

`A285849(eq[9, A144328(n+1)])`
-/

namespace A285860.P2376108338282975568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285860.P2376108338282975568

/-! ## A285860.P10428223838262594908

`A285849(eq[10, A002260(n+1)])`
-/

namespace A285860.P10428223838262594908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285860.P10428223838262594908

/-! ## A285860.P8262637408554434638

`A285849(eq[10, A134868(n+1)])`
-/

namespace A285860.P8262637408554434638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285860.P8262637408554434638

/-! ## A285860.P8626504644039205383

`A285849(eq[19, A158405(n+1)])`
-/

namespace A285860.P8626504644039205383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285860.P8626504644039205383

/-!
# A285861: Number of permutations of [n] with ten ordered cycles such that equal-sized cycles are ordered with increasing least elements.

The programs for A285861, there is no canonical definition to state claims against.
-/

/-! ## A285861.P17569724922388849858

`A285849(eq[10, A002262(n)])`
-/

namespace A285861.P17569724922388849858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285861.P17569724922388849858

/-! ## A285861.P18303364270047036438

`A285849(eq[10, A144328(n+1)])`
-/

namespace A285861.P18303364270047036438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285861.P18303364270047036438

/-! ## A285861.P15020970780634134249

`A285849(eq[11, A002260(n+1)])`
-/

namespace A285861.P15020970780634134249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285861.P15020970780634134249

/-! ## A285861.P13920599147810399660

`A285849(eq[11, A134868(n+1)])`
-/

namespace A285861.P13920599147810399660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285861.P13920599147810399660

/-! ## A285861.P8662994287620309629

`A285849(eq[11, A135223(n+1)])`
-/

namespace A285861.P8662994287620309629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285861.P8662994287620309629

/-!
# A285862: Number of permutations of [2n] with n ordered cycles such that equal-sized cycles are ordered with increasing least elements.

The programs for A285862, there is no canonical definition to state claims against.
-/

/-! ## A285862.P13745473426291203170

`A285849(∑[4*n])`
-/

namespace A285862.P13745473426291203170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285862.P13745473426291203170

/-! ## A285862.P5837804716631997110

`or(1, A285849(A046092(n)))`
-/

namespace A285862.P5837804716631997110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A285849 (A046092 n).toNat)

end

end A285862.P5837804716631997110

/-! ## A285862.P17900655290635666348

`or(1, A285849(A106232(n+1)))`
-/

namespace A285862.P17900655290635666348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A285849 (A106232 (n + 1)).toNat)

end

end A285862.P17900655290635666348

/-! ## A285862.P16513939264384647324

`A285849(A046092(n))+A025466(n)`
-/

namespace A285862.P16513939264384647324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285849 (A046092 n).toNat + A025466 n

end

end A285862.P16513939264384647324

/-! ## A285862.P748802224313694250

`lcm(A070750(3*n+5), A285849(A046092(n)))`
-/

namespace A285862.P748802224313694250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070750 (3 * n + 5)) (A285849 (A046092 n).toNat)

end

end A285862.P748802224313694250

/-!
# A285863: Numerators of Bernoulli numbers 3^n*B(n), with B(n) = A027641(n)/A027642(n).

The programs for A285863, there is no canonical definition to state claims against.
-/

/-! ## A285863.P13381948833356950579

`A027641(n)*A133494(char[1]+n)`
-/

namespace A285863.P13381948833356950579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A133494 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A285863.P13381948833356950579

/-! ## A285863.P5517509621768385067

`A027641(n)/A027642(n)*A157800(n)`
-/

namespace A285863.P5517509621768385067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 n : ℚ) / (A027642 n : ℚ) * (A157800 n : ℚ)

end

end A285863.P5517509621768385067

/-! ## A285863.P10181846358566885910

`A133494(n)*A227570(n)`
-/

namespace A285863.P10181846358566885910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n * A227570 n

end

end A285863.P10181846358566885910

/-! ## A285863.P7841164949481376723

`A182522(A004273(n))*A227570(n)`
-/

namespace A285863.P7841164949481376723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A004273 n).toNat * A227570 n

end

end A285863.P7841164949481376723

/-! ## A285863.P3434676216516442954

`A003959(A011782(n))*A227570(n)`
-/

namespace A285863.P3434676216516442954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A011782 n).toNat * A227570 n

end

end A285863.P3434676216516442954

/-!
# A285865: Denominator of the coefficient triangle B2(n, m) of generalized Bernoulli polynomials PB2(n, x) read by rows.

The programs for A285865, there is no canonical definition to state claims against.
-/

/-! ## A285865.P6341333395199353117

`lcm(2, A196839(n))/2`
-/

namespace A285865.P6341333395199353117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A196839 n) : ℚ) / 2

end

end A285865.P6341333395199353117

/-! ## A285865.P4742660717151527155

`A000265(A196839(n))`
-/

namespace A285865.P4742660717151527155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A196839 n).toNat

end

end A285865.P4742660717151527155

/-! ## A285865.P8831900312053173213

`A000265(A335948(n))`
-/

namespace A285865.P8831900312053173213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A335948 n).toNat

end

end A285865.P8831900312053173213

/-! ## A285865.P3668868744116948656

`A083346(A196839(n)²)`
-/

namespace A285865.P3668868744116948656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A196839 n ^ 2).toNat

end

end A285865.P3668868744116948656

/-! ## A285865.P3948310748758993926

`A204455(A196839(n)²)`
-/

namespace A285865.P3948310748758993926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A196839 n ^ 2).toNat

end

end A285865.P3948310748758993926

/-! ## A285865.P10447333836868648067

`A028234(2*A196839(n))`
-/

namespace A285865.P10447333836868648067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A196839 n).toNat

end

end A285865.P10447333836868648067

/-! ## A285865.P3104064741663339921

`A030101(2*A196839(n))`
-/

namespace A285865.P3104064741663339921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A196839 n).toNat

end

end A285865.P3104064741663339921

/-! ## A285865.P1271013450322300439

`A204455(2*A196839(n))`
-/

namespace A285865.P1271013450322300439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (2 * A196839 n).toNat

end

end A285865.P1271013450322300439

/-! ## A285865.P292825440618742364

`A001281(lcm(2, A196839(n)))`
-/

namespace A285865.P292825440618742364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A196839 n))

end

end A285865.P292825440618742364

/-! ## A285865.P16039603263309621506

`gcd(A001897(n), A196839(n))`
-/

namespace A285865.P16039603263309621506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001897 n) (A196839 n)

end

end A285865.P16039603263309621506

/-!
# A285866: a(n) = numerator((-2)^n*Sum_{k=0..n} binomial(n,k) * Bernoulli(k, 1/2)).

The programs for A285866, there is no canonical definition to state claims against.
-/

/-! ## A285866.P2772032604939456868

`A000034(n)*A157781(n)`
-/

namespace A285866.P2772032604939456868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A157781 n

end

end A285866.P2772032604939456868

/-! ## A285866.P17181869316038714188

`(A000035(n)+1)*A157781(n)`
-/

namespace A285866.P17181869316038714188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A157781 n

end

end A285866.P17181869316038714188

/-! ## A285866.P8873731434754747841

`(A157819(n)+A157817(n))/2`
-/

namespace A285866.P8873731434754747841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157819 n + A157817 n : ℚ) / 2

end

end A285866.P8873731434754747841

/-! ## A285866.P3796618285676688053

`A014709(2*n)*A157781(n)`
-/

namespace A285866.P3796618285676688053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (2 * n) * A157781 n

end

end A285866.P3796618285676688053

/-! ## A285866.P13737119223060366137

`A001511(A019565(n))*A157781(n)`
-/

namespace A285866.P13737119223060366137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A019565 n).toNat * A157781 n

end

end A285866.P13737119223060366137

/-!
# A285867: Triangle T(n, k) read by rows: T(n, k) = S2(n, k)*k! + S2(n, k-1)*(k-1)! with the Stirling2 triangle S2 = A048993.

The programs for A285867, there is no canonical definition to state claims against.
-/

/-! ## A285867.P17892884072502865811

`A142071(comp[∑[n-1]]+floor(acot(n)))`
-/

namespace A285867.P17892884072502865811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A285867.P17892884072502865811

/-! ## A285867.P16167136503413601077

`A142071(comp[∑[n-1]]+C(2, n+2))`
-/

namespace A285867.P16167136503413601077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + Nat.choose 2 (n + 2))

end

end A285867.P16167136503413601077

/-! ## A285867.P9922616305886434386

`A142071(comp[∑[n-1]]+floor(1/(n+1)))`
-/

namespace A285867.P9922616305886434386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A285867.P9922616305886434386

/-! ## A285867.P6304779248560937565

`A122300(A373086(n))`
-/

namespace A285867.P6304779248560937565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122300 (A373086 n).toNat

end

end A285867.P6304779248560937565

/-! ## A285867.P12432627513348360393

`A373624(A211608(n))`
-/

namespace A285867.P12432627513348360393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373624 (A211608 n).toNat

end

end A285867.P12432627513348360393

/-!
# A285868: Row sums of triangle A285867.

The programs for A285868, there is no canonical definition to state claims against.
-/

/-! ## A285868.P9974474632155799723

`A076726(n)-n!`
-/

namespace A285868.P9974474632155799723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076726 n - (Nat.factorial n : ℤ)

end

end A285868.P9974474632155799723

/-! ## A285868.P10391380622388126302

`A005840(n)+n*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A285868.P10391380622388126302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A005840 n + (n : ℤ) * a (n - 1)

end

end A285868.P10391380622388126302

/-! ## A285868.P2350604273965773049

`A019472(n)+A000670(n)`
-/

namespace A285868.P2350604273965773049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019472 n + A000670 n

end

end A285868.P2350604273965773049

/-! ## A285868.P5291574260990245524

`A076726(n)-A000142(n)`
-/

namespace A285868.P5291574260990245524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076726 n - A000142 n

end

end A285868.P5291574260990245524

/-!
# A285869: a(n) is the number of zeros of the Chebyshev S(n, x) polynomial in the open interval (-sqrt(2), +sqrt(2)).

The programs for A285869, the canonical program `A285869.P8750248249387989221` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285869 has offset 0).

The definition of A285869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285869.P8750248249387989221

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A285869

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P8750248249387989221.Spec : Prop :=
  ∀ n, P8750248249387989221.a n = A285869 n

theorem P8750248249387989221.correct : P8750248249387989221.Spec := by
  intro n
  simp only [A285869]

end A285869

/-! ## A285869.P16992753602554085140

`ceil(or(2, n-1)/2)`
-/

namespace A285869.P16992753602554085140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A285869.P16992753602554085140

namespace A285869

/-- `ceil(or(2, n-1)/2)` -/
def P16992753602554085140.Spec : Prop :=
  ∀ n, P16992753602554085140.a n = A285869 n

end A285869

/-! ## A285869.P13480755423566309039

`n-∑[and(2, n^3)]`
-/

namespace A285869.P13480755423566309039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A285869.P13480755423566309039

namespace A285869

/-- `n-∑[and(2, n^3)]` -/
def P13480755423566309039.Spec : Prop :=
  ∀ n, P13480755423566309039.a n = A285869 n

end A285869

/-! ## A285869.P3831210147090730171

`n-a(n-gcd(2, n))` with `a(0)=0`
-/

namespace A285869.P3831210147090730171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (n - Nat.gcd 2 n)

end

end A285869.P3831210147090730171

namespace A285869

/-- `n-a(n-gcd(2, n))` -/
def P3831210147090730171.Spec : Prop :=
  ∀ n, P3831210147090730171.a n = A285869 n

end A285869

/-! ## A285869.P15415574811392512299

`floor(n/2)+∑[n]%2`
-/

namespace A285869.P15415574811392512299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A285869.P15415574811392512299

namespace A285869

/-- `floor(n/2)+∑[n]%2` -/
def P15415574811392512299.Spec : Prop :=
  ∀ n, P15415574811392512299.a n = A285869 n

end A285869

/-! ## A285869.P5576873930330487016

`floor(and(1, ∑[n])+n/2)`
-/

namespace A285869.P5576873930330487016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (n : ℚ) / 2⌋

end

end A285869.P5576873930330487016

namespace A285869

/-- `floor(and(1, ∑[n])+n/2)` -/
def P5576873930330487016.Spec : Prop :=
  ∀ n, P5576873930330487016.a n = A285869 n

end A285869

/-! ## A285869.P6122509350713070381

`a(n-4)+2` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A285869.P6122509350713070381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1] fun n a =>
  a (n - 4) + 2

end

end A285869.P6122509350713070381

namespace A285869

/-- `a(n-4)+2` -/
def P6122509350713070381.Spec : Prop :=
  ∀ n, (P6122509350713070381.a n : ℤ) = A285869 n

end A285869

/-! ## A285869.P9447664708937017504

`floor((or(2, n-1)+1)/2)`
-/

namespace A285869.P9447664708937017504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lor 2 ((n : ℤ) - 1) + 1 : ℚ) / 2⌋

end

end A285869.P9447664708937017504

namespace A285869

/-- `floor((or(2, n-1)+1)/2)` -/
def P9447664708937017504.Spec : Prop :=
  ∀ n, P9447664708937017504.a n = A285869 n

end A285869

/-! ## A285869.P5636651979084688108

`round(or(2, n+3)/2)-2`
-/

namespace A285869.P5636651979084688108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (n + 3) : ℚ) / 2) - 2

end

end A285869.P5636651979084688108

namespace A285869

/-- `round(or(2, n+3)/2)-2` -/
def P5636651979084688108.Spec : Prop :=
  ∀ n, P5636651979084688108.a n = A285869 n

end A285869

/-! ## A285869.P7761883857700836582

`round(or(4, 2*n-1)/4)`
-/

namespace A285869.P7761883857700836582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 4 ((2 * n : ℤ) - 1) : ℚ) / 4)

end

end A285869.P7761883857700836582

namespace A285869

/-- `round(or(4, 2*n-1)/4)` -/
def P7761883857700836582.Spec : Prop :=
  ∀ n, P7761883857700836582.a n = A285869 n

end A285869

/-! ## A285869.P6665456485047186108

`n-and(n+1, -4)/2`
-/

namespace A285869.P6665456485047186108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Int.land (n + 1 : ℤ) (-4) : ℚ) / 2

end

end A285869.P6665456485047186108

namespace A285869

/-- `n-and(n+1, -4)/2` -/
def P6665456485047186108.Spec : Prop :=
  ∀ n, P6665456485047186108.a n = (A285869 n : ℚ)

end A285869

/-! ## A285869.P12346133119173363211

`n-2*floor((n+1)/4)`
-/

namespace A285869.P12346133119173363211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * ⌊(n + 1 : ℚ) / 4⌋

end

end A285869.P12346133119173363211

namespace A285869

/-- `n-2*floor((n+1)/4)` -/
def P12346133119173363211.Spec : Prop :=
  ∀ n, P12346133119173363211.a n = A285869 n

end A285869

/-! ## A285869.P10802948019601933850

`floor(((n+1)%4+n)/2)`
-/

namespace A285869.P10802948019601933850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) % 4 + n : ℕ) : ℚ) / 2⌋

end

end A285869.P10802948019601933850

namespace A285869

/-- `floor(((n+1)%4+n)/2)` -/
def P10802948019601933850.Spec : Prop :=
  ∀ n, P10802948019601933850.a n = A285869 n

end A285869

/-! ## A285869.P5905891355292657269

`floor((and(2, n+1)+n)/2)`
-/

namespace A285869.P5905891355292657269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 2 (n + 1) + n : ℚ) / 2⌋

end

end A285869.P5905891355292657269

namespace A285869

/-- `floor((and(2, n+1)+n)/2)` -/
def P5905891355292657269.Spec : Prop :=
  ∀ n, P5905891355292657269.a n = A285869 n

end A285869

/-! ## A285869.P12487122358108694353

`ceil((xor(2, n-1)+n)/4)`
-/

namespace A285869.P12487122358108694353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 2 ((n : ℤ) - 1) + (n : ℤ) : ℚ) / 4⌉

end

end A285869.P12487122358108694353

namespace A285869

/-- `ceil((xor(2, n-1)+n)/4)` -/
def P12487122358108694353.Spec : Prop :=
  ∀ n, P12487122358108694353.a n = A285869 n

end A285869

/-! ## A285869.P11251764496781546735

`floor((xor(2, n+3)+n)/4)`
-/

namespace A285869.P11251764496781546735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (n + 3) + n : ℚ) / 4⌋

end

end A285869.P11251764496781546735

namespace A285869

/-- `floor((xor(2, n+3)+n)/4)` -/
def P11251764496781546735.Spec : Prop :=
  ∀ n, P11251764496781546735.a n = A285869 n

end A285869

/-! ## A285869.P17098792669373262309

`floor(n-or(3, n-3)/2)`
-/

namespace A285869.P17098792669373262309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (Int.lor 3 ((n : ℤ) - 3) : ℚ) / 2⌋

end

end A285869.P17098792669373262309

namespace A285869

/-- `floor(n-or(3, n-3)/2)` -/
def P17098792669373262309.Spec : Prop :=
  ∀ n, P17098792669373262309.a n = A285869 n

end A285869

/-! ## A285869.P8631357901349703970

`(and(3, n+1)+n-1)/2`
-/

namespace A285869.P8631357901349703970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 3 (n + 1) : ℤ) + ((n : ℤ) - 1) : ℚ) / 2

end

end A285869.P8631357901349703970

namespace A285869

/-- `(and(3, n+1)+n-1)/2` -/
def P8631357901349703970.Spec : Prop :=
  ∀ n, P8631357901349703970.a n = (A285869 n : ℚ)

end A285869

/-! ## A285869.P4350131623356820492

`∑[(-a(n-2))^n]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A285869.P4350131623356820492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  (-f1 (n - 2)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285869.P4350131623356820492

namespace A285869

/-- `∑[(-a(n-2))^n]` -/
def P4350131623356820492.Spec : Prop :=
  ∀ n, P4350131623356820492.a n = A285869 n

end A285869

/-! ## A285869.P14042716087063498784

`floor(∑[n+1]/or(2, n+1))`
-/

namespace A285869.P14042716087063498784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 2 (n + 1) : ℚ)⌋

end

end A285869.P14042716087063498784

namespace A285869

/-- `floor(∑[n+1]/or(2, n+1))` -/
def P14042716087063498784.Spec : Prop :=
  ∀ n, P14042716087063498784.a n = A285869 n

end A285869

/-!
# A285870: a(n) = floor(n/2) - floor((n+1)/6), n >= 0.

The programs for A285870, the canonical program `A285870.P658585684159856494` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285870 has offset 0).

The definition of A285870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)-floor((n+1)/6)` (program `A285870.P658585684159856494`, by `A285870.P658585684159856494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A285870.P658585684159856494

`floor(n/2)-floor((n+1)/6)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A285870

/-- `floor(n/2)-floor((n+1)/6)` -/
def P658585684159856494.Spec : Prop :=
  ∀ n, P658585684159856494.a n = A285870 n

theorem P658585684159856494.correct : P658585684159856494.Spec := by
  intro n
  simp only [A285870]

end A285870

/-! ## A285870.P6031098059259484347

`round(xor(1, n)/3)`
-/

namespace A285870.P6031098059259484347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 3)

end

end A285870.P6031098059259484347

namespace A285870

/-- `round(xor(1, n)/3)` -/
def P6031098059259484347.Spec : Prop :=
  ∀ n, P6031098059259484347.a n = A285870 n

end A285870

/-! ## A285870.P11833401346369759664

`floor(abs(xor(n, -2))/3)`
-/

namespace A285870.P11833401346369759664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|Int.xor (n : ℤ) (-2)| : ℚ) / 3⌋

end

end A285870.P11833401346369759664

namespace A285870

/-- `floor(abs(xor(n, -2))/3)` -/
def P11833401346369759664.Spec : Prop :=
  ∀ n, P11833401346369759664.a n = A285870 n

end A285870

/-! ## A285870.P12431599846742364428

`floor((xor(1, n)+1)/3)`
-/

namespace A285870.P12431599846742364428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n + 1 : ℚ) / 3⌋

end

end A285870.P12431599846742364428

namespace A285870

/-- `floor((xor(1, n)+1)/3)` -/
def P12431599846742364428.Spec : Prop :=
  ∀ n, P12431599846742364428.a n = A285870 n

end A285870

/-! ## A285870.P17008043975484051813

`ceil((xor(1, n)-1)/3)`
-/

namespace A285870.P17008043975484051813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.xor 1 n : ℤ) - 1 : ℚ) / 3⌉

end

end A285870.P17008043975484051813

namespace A285870

/-- `ceil((xor(1, n)-1)/3)` -/
def P17008043975484051813.Spec : Prop :=
  ∀ n, P17008043975484051813.a n = A285870 n

end A285870

/-! ## A285870.P17640822603424148021

`floor(-xor(n, -2)/3)`
-/

namespace A285870.P17640822603424148021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Int.xor (n : ℤ) (-2) : ℚ) / 3)⌋

end

end A285870.P17640822603424148021

namespace A285870

/-- `floor(-xor(n, -2)/3)` -/
def P17640822603424148021.Spec : Prop :=
  ∀ n, P17640822603424148021.a n = A285870 n

end A285870

/-! ## A285870.P7471583229398092703

`-ceil(xor(n, -2)/3)`
-/

namespace A285870.P7471583229398092703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor (n : ℤ) (-2) : ℚ) / 3⌉

end

end A285870.P7471583229398092703

namespace A285870

/-- `-ceil(xor(n, -2)/3)` -/
def P7471583229398092703.Spec : Prop :=
  ∀ n, P7471583229398092703.a n = A285870 n

end A285870

/-! ## A285870.P18426210906328905617

`floor((2*or(1, n)-n)/3)`
-/

namespace A285870.P18426210906328905617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * Nat.lor 1 n : ℤ) - (n : ℤ) : ℚ) / 3⌋

end

end A285870.P18426210906328905617

namespace A285870

/-- `floor((2*or(1, n)-n)/3)` -/
def P18426210906328905617.Spec : Prop :=
  ∀ n, P18426210906328905617.a n = A285870 n

end A285870

/-! ## A285870.P3460871399969347897

`ceil((n-2*and(1, n))/3)`
-/

namespace A285870.P3460871399969347897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - (2 * Nat.land 1 n : ℤ) : ℚ) / 3⌉

end

end A285870.P3460871399969347897

namespace A285870

/-- `ceil((n-2*and(1, n))/3)` -/
def P3460871399969347897.Spec : Prop :=
  ∀ n, P3460871399969347897.a n = A285870 n

end A285870

/-! ## A285870.P3308200236618450772

`round((n+1-2*and(1, n))/3)`
-/

namespace A285870.P3308200236618450772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) - (2 * Nat.land 1 n : ℤ) : ℚ) / 3)

end

end A285870.P3308200236618450772

namespace A285870

/-- `round((n+1-2*and(1, n))/3)` -/
def P3308200236618450772.Spec : Prop :=
  ∀ n, P3308200236618450772.a n = A285870 n

end A285870

/-! ## A285870.P10600576625880942762

`round((2*or(1, n)-(n+1))/3)`
-/

namespace A285870.P10600576625880942762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * Nat.lor 1 n : ℤ) - (n + 1 : ℤ) : ℚ) / 3)

end

end A285870.P10600576625880942762

namespace A285870

/-- `round((2*or(1, n)-(n+1))/3)` -/
def P10600576625880942762.Spec : Prop :=
  ∀ n, P10600576625880942762.a n = A285870 n

end A285870

/-! ## A285870.P9274875739358723935

`ceil((2*or(1, n)-(n+2))/3)`
-/

namespace A285870.P9274875739358723935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * Nat.lor 1 n : ℤ) - (n + 2 : ℤ) : ℚ) / 3⌉

end

end A285870.P9274875739358723935

namespace A285870

/-- `ceil((2*or(1, n)-(n+2))/3)` -/
def P9274875739358723935.Spec : Prop :=
  ∀ n, P9274875739358723935.a n = A285870 n

end A285870

/-! ## A285870.P4267018756234780042

`floor((2*n-xor(1, n-1))/3)`
-/

namespace A285870.P4267018756234780042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℤ) - Int.xor 1 ((n : ℤ) - 1) : ℚ) / 3⌋

end

end A285870.P4267018756234780042

namespace A285870

/-- `floor((2*n-xor(1, n-1))/3)` -/
def P4267018756234780042.Spec : Prop :=
  ∀ n, P4267018756234780042.a n = A285870 n

end A285870

/-! ## A285870.P16957140067198032346

`∑[(n+1)²%(a(n-1)+2)-a(n-1)]` with `a(0)=0`
-/

namespace A285870.P16957140067198032346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (f1 (n - 1) + 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285870.P16957140067198032346

namespace A285870

/-- `∑[(n+1)²%(a(n-1)+2)-a(n-1)]` -/
def P16957140067198032346.Spec : Prop :=
  ∀ n, P16957140067198032346.a n = A285870 n

end A285870

/-! ## A285870.P8323805310201954858

`round(A004442(n)/3)`
-/

namespace A285870.P8323805310201954858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004442 n : ℚ) / 3)

end

end A285870.P8323805310201954858

namespace A285870

/-- `round(A004442(n)/3)` -/
def P8323805310201954858.Spec : Prop :=
  ∀ n, P8323805310201954858.a n = A285870 n

end A285870

/-! ## A285870.P2432325456686617167

`A002264(xor(1, n)+1)`
-/

namespace A285870.P2432325456686617167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Nat.xor 1 n + 1)

end

end A285870.P2432325456686617167

namespace A285870

/-- `A002264(xor(1, n)+1)` -/
def P2432325456686617167.Spec : Prop :=
  ∀ n, P2432325456686617167.a n = A285870 n

end A285870

/-! ## A285870.P409980404627116892

`A004526(A285872(n))`
-/

namespace A285870.P409980404627116892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285872 n).toNat

end

end A285870.P409980404627116892

namespace A285870

/-- `A004526(A285872(n))` -/
def P409980404627116892.Spec : Prop :=
  ∀ n, P409980404627116892.a n = A285870 n

end A285870

/-! ## A285870.P4453952695419629485

`A002264(A014681(n+1))`
-/

namespace A285870.P4453952695419629485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A014681 (n + 1)).toNat

end

end A285870.P4453952695419629485

namespace A285870

/-- `A002264(A014681(n+1))` -/
def P4453952695419629485.Spec : Prop :=
  ∀ n, P4453952695419629485.a n = A285870 n

end A285870

/-! ## A285870.P13827056310484290607

`A002264(A103889(n+1))`
-/

namespace A285870.P13827056310484290607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A103889 (n + 1)).toNat

end

end A285870.P13827056310484290607

namespace A285870

/-- `A002264(A103889(n+1))` -/
def P13827056310484290607.Spec : Prop :=
  ∀ n, P13827056310484290607.a n = A285870 n

end A285870

/-! ## A285870.P10546777439441943682

`A002264(A114112(n+1))`
-/

namespace A285870.P10546777439441943682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A114112 (n + 1)).toNat

end

end A285870.P10546777439441943682

namespace A285870

/-- `A002264(A114112(n+1))` -/
def P10546777439441943682.Spec : Prop :=
  ∀ n, P10546777439441943682.a n = A285870 n

end A285870

/-!
# A285872: a(n) is the number of zeros of the Chebyshev S(n, x) polynomial (A049310) in the open interval (-sqrt(3), +sqrt(3)).

The programs for A285872, the canonical program `A285872.P2212217720614639867` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285872 has offset 0).

The definition of A285872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285872.P2212217720614639867

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=3, a(6)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A285872

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P2212217720614639867.Spec : Prop :=
  ∀ n, P2212217720614639867.a n = A285872 n

theorem P2212217720614639867.correct : P2212217720614639867.Spec := by
  intro n
  simp only [A285872]

end A285872

/-! ## A285872.P3661437972479192788

`n-2*floor((n+1)/6)`
-/

namespace A285872.P3661437972479192788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * ⌊(n + 1 : ℚ) / 6⌋

end

end A285872.P3661437972479192788

namespace A285872

/-- `n-2*floor((n+1)/6)` -/
def P3661437972479192788.Spec : Prop :=
  ∀ n, P3661437972479192788.a n = A285872 n

end A285872

/-! ## A285872.P10212135826713090427

`(3*n+2)%∑[A093718(n)!]`
-/

namespace A285872.P10212135826713090427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A093718 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 2) % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285872.P10212135826713090427

namespace A285872

/-- `(3*n+2)%∑[A093718(n)!]` -/
def P10212135826713090427.Spec : Prop :=
  ∀ n, (P10212135826713090427.a n : ℤ) = A285872 n

end A285872

/-! ## A285872.P696112988259931980

`∑[or((4-n%6)%2, A057427(n))]`
-/

namespace A285872.P696112988259931980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (4 - ((n % 6 : ℕ) : ℤ)) 2) (A057427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285872.P696112988259931980

namespace A285872

/-- `∑[or((4-n%6)%2, A057427(n))]` -/
def P696112988259931980.Spec : Prop :=
  ∀ n, P696112988259931980.a n = A285872 n

end A285872

/-! ## A285872.P12928006359943564838

`∑[A134667(n)^A163811(n)]`
-/

namespace A285872.P12928006359943564838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134667 n : ℚ) ^ (A163811 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285872.P12928006359943564838

namespace A285872

/-- `∑[A134667(n)^A163811(n)]` -/
def P12928006359943564838.Spec : Prop :=
  ∀ n, P12928006359943564838.a n = (A285872 n : ℚ)

end A285872

/-! ## A285872.P15196616907786632418

`∑[A134667(n)^A163817(n)]`
-/

namespace A285872.P15196616907786632418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134667 n : ℚ) ^ (A163817 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285872.P15196616907786632418

namespace A285872

/-- `∑[A134667(n)^A163817(n)]` -/
def P15196616907786632418.Spec : Prop :=
  ∀ n, P15196616907786632418.a n = (A285872 n : ℚ)

end A285872

/-! ## A285872.P10319566349334170542

`Δ[A000217(n)-A008813(n)]`
-/

namespace A285872.P10319566349334170542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A008813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285872.P10319566349334170542

namespace A285872

/-- `Δ[A000217(n)-A008813(n)]` -/
def P10319566349334170542.Spec : Prop :=
  ∀ n, P10319566349334170542.a n = A285872 n

end A285872

/-! ## A285872.P15613223612695386548

`A004396(A010872(A004526(n+1))+n)`
-/

namespace A285872.P15613223612695386548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A010872 (A004526 (n + 1)).toNat + (n : ℤ)).toNat

end

end A285872.P15613223612695386548

namespace A285872

/-- `A004396(A010872(A004526(n+1))+n)` -/
def P15613223612695386548.Spec : Prop :=
  ∀ n, P15613223612695386548.a n = A285872 n

end A285872

/-! ## A285872.P581622984311727093

`A004523(A010872(A004526(n+1))+n)`
-/

namespace A285872.P581622984311727093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A010872 (A004526 (n + 1)).toNat + (n : ℤ)).toNat

end

end A285872.P581622984311727093

namespace A285872

/-- `A004523(A010872(A004526(n+1))+n)` -/
def P581622984311727093.Spec : Prop :=
  ∀ n, P581622984311727093.a n = A285872 n

end A285872

/-! ## A285872.P6345391713689929014

`A341311(Δ[A341311(n+1)]+n)`
-/

namespace A285872.P6345391713689929014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341311 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A285872.P6345391713689929014

namespace A285872

/-- `A341311(Δ[A341311(n+1)]+n)` -/
def P6345391713689929014.Spec : Prop :=
  ∀ n, P6345391713689929014.a n = A285872 n

end A285872

/-! ## A285872.P13666759182798269764

`A285869(A047563(n+1))`
-/

namespace A285872.P13666759182798269764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A047563 (n + 1)).toNat

end

end A285872.P13666759182798269764

namespace A285872

/-- `A285869(A047563(n+1))` -/
def P13666759182798269764.Spec : Prop :=
  ∀ n, P13666759182798269764.a n = A285872 n

end A285872

/-! ## A285872.P17870775535868533855

`A285869(A047569(n+1))`
-/

namespace A285872.P17870775535868533855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A047569 (n + 1)).toNat

end

end A285872.P17870775535868533855

namespace A285872

/-- `A285869(A047569(n+1))` -/
def P17870775535868533855.Spec : Prop :=
  ∀ n, P17870775535868533855.a n = A285872 n

end A285872

/-! ## A285872.P17512247371090451339

`A285869(A047581(n+1))`
-/

namespace A285872.P17512247371090451339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A047581 (n + 1)).toNat

end

end A285872.P17512247371090451339

namespace A285872

/-- `A285869(A047581(n+1))` -/
def P17512247371090451339.Spec : Prop :=
  ∀ n, P17512247371090451339.a n = A285872 n

end A285872

/-! ## A285872.P6520228625693232501

`A008611(or(1, n)+n)`
-/

namespace A285872.P6520228625693232501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Nat.lor 1 n + n)

end

end A285872.P6520228625693232501

namespace A285872

/-- `A008611(or(1, n)+n)` -/
def P6520228625693232501.Spec : Prop :=
  ∀ n, P6520228625693232501.a n = A285872 n

end A285872

/-! ## A285872.P17300064140906505551

`A008611(A042948(n)+1)`
-/

namespace A285872.P17300064140906505551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A042948 n + 1).toNat

end

end A285872.P17300064140906505551

namespace A285872

/-- `A008611(A042948(n)+1)` -/
def P17300064140906505551.Spec : Prop :=
  ∀ n, P17300064140906505551.a n = A285872 n

end A285872

/-! ## A285872.P10812896392144126290

`A008611(A042963(n+1))`
-/

namespace A285872.P10812896392144126290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A042963 (n + 1)).toNat

end

end A285872.P10812896392144126290

namespace A285872

/-- `A008611(A042963(n+1))` -/
def P10812896392144126290.Spec : Prop :=
  ∀ n, P10812896392144126290.a n = A285872 n

end A285872

/-! ## A285872.P16678330488146274414

`A008611(A109613(n)+n)`
-/

namespace A285872.P16678330488146274414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A109613 n + (n : ℤ)).toNat

end

end A285872.P16678330488146274414

namespace A285872

/-- `A008611(A109613(n)+n)` -/
def P16678330488146274414.Spec : Prop :=
  ∀ n, P16678330488146274414.a n = A285872 n

end A285872

/-! ## A285872.P9583005231627302046

`A008611(A014601(n+1)-2)`
-/

namespace A285872.P9583005231627302046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A014601 (n + 1) - 2).toNat

end

end A285872.P9583005231627302046

namespace A285872

/-- `A008611(A014601(n+1)-2)` -/
def P9583005231627302046.Spec : Prop :=
  ∀ n, P9583005231627302046.a n = A285872 n

end A285872

/-! ## A285872.P13279236151752751026

`A008611(A154708(n+1)-2)`
-/

namespace A285872.P13279236151752751026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A154708 (n + 1) - 2).toNat

end

end A285872.P13279236151752751026

namespace A285872

/-- `A008611(A154708(n+1)-2)` -/
def P13279236151752751026.Spec : Prop :=
  ∀ n, P13279236151752751026.a n = A285872 n

end A285872

/-! ## A285872.P17963158108441661915

`A008611(A052928(n)+1+n)`
-/

namespace A285872.P17963158108441661915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A052928 n + 1 + (n : ℤ)).toNat

end

end A285872.P17963158108441661915

namespace A285872

/-- `A008611(A052928(n)+1+n)` -/
def P17963158108441661915.Spec : Prop :=
  ∀ n, P17963158108441661915.a n = A285872 n

end A285872

/-!
# A285879: Number of odd squarefree numbers <= n.

The programs for A285879, the canonical program `A285879.P12342465036758239665` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285879 has offset 1).

The definition of A285879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285879.P3700223324472338492

`A013928(n+2)-A285881(n+1)`
-/

namespace A285879.P3700223324472338492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A285881 (n + 1)

end

end A285879.P3700223324472338492

namespace A285879

/-- `A013928(n+2)-A285881(n+1)` -/
def P3700223324472338492.Spec : Prop :=
  ∀ n, P3700223324472338492.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P1513508554146592485

`A285881(2*(n+1))`
-/

namespace A285879.P1513508554146592485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (2 * (n + 1))

end

end A285879.P1513508554146592485

namespace A285879

/-- `A285881(2*(n+1))` -/
def P1513508554146592485.Spec : Prop :=
  ∀ n, P1513508554146592485.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P12342465036758239665

`∑[A323239(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285879

/-- `∑[A323239(n+1)]` -/
def P12342465036758239665.Spec : Prop :=
  ∀ n, P12342465036758239665.a n = A285879 (n + 1)

theorem P12342465036758239665.correct : P12342465036758239665.Spec := by
  intro n
  simp only [A285879, Nat.add_sub_cancel]

end A285879

/-! ## A285879.P9478080947477471605

`∑[abs(A087003(n+1))]`
-/

namespace A285879.P9478080947477471605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087003 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P9478080947477471605

namespace A285879

/-- `∑[abs(A087003(n+1))]` -/
def P9478080947477471605.Spec : Prop :=
  ∀ n, P9478080947477471605.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P4983539597116965814

`∑[abs(A091069(n+1))]`
-/

namespace A285879.P4983539597116965814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091069 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P4983539597116965814

namespace A285879

/-- `∑[abs(A091069(n+1))]` -/
def P4983539597116965814.Spec : Prop :=
  ∀ n, P4983539597116965814.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P9509639368698906560

`∑[abs(A099991(n+1))]`
-/

namespace A285879.P9509639368698906560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099991 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P9509639368698906560

namespace A285879

/-- `∑[abs(A099991(n+1))]` -/
def P9509639368698906560.Spec : Prop :=
  ∀ n, P9509639368698906560.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P17956507190055134263

`∑[abs(A318608(n+1))]`
-/

namespace A285879.P17956507190055134263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A318608 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P17956507190055134263

namespace A285879

/-- `∑[abs(A318608(n+1))]` -/
def P17956507190055134263.Spec : Prop :=
  ∀ n, P17956507190055134263.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P9522441911045233237

`∑[abs(A374367(n+1))]`
-/

namespace A285879.P9522441911045233237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A374367 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P9522441911045233237

namespace A285879

/-- `∑[abs(A374367(n+1))]` -/
def P9522441911045233237.Spec : Prop :=
  ∀ n, P9522441911045233237.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P14113671503487680775

`∑[A008966(2*(n+1))]`
-/

namespace A285879.P14113671503487680775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P14113671503487680775

namespace A285879

/-- `∑[A008966(2*(n+1))]` -/
def P14113671503487680775.Spec : Prop :=
  ∀ n, P14113671503487680775.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P12529215247132734703

`∑[A379966(2*(n+1))]`
-/

namespace A285879.P12529215247132734703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379966 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P12529215247132734703

namespace A285879

/-- `∑[A379966(2*(n+1))]` -/
def P12529215247132734703.Spec : Prop :=
  ∀ n, P12529215247132734703.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P13596505765622275921

`∑[A359471(4*(n+1))]`
-/

namespace A285879.P13596505765622275921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359471 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P13596505765622275921

namespace A285879

/-- `∑[A359471(4*(n+1))]` -/
def P13596505765622275921.Spec : Prop :=
  ∀ n, P13596505765622275921.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P14007962504056477799

`∑[A359474(4*(n+1))]`
-/

namespace A285879.P14007962504056477799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359474 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P14007962504056477799

namespace A285879

/-- `∑[A359474(4*(n+1))]` -/
def P14007962504056477799.Spec : Prop :=
  ∀ n, P14007962504056477799.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P8536682222608051829

`∑[A359592(4*(n+1))]`
-/

namespace A285879.P8536682222608051829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359592 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P8536682222608051829

namespace A285879

/-- `∑[A359592(4*(n+1))]` -/
def P8536682222608051829.Spec : Prop :=
  ∀ n, P8536682222608051829.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P9245686211391467721

`∑[A379970(4*(n+1))]`
-/

namespace A285879.P9245686211391467721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379970 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P9245686211391467721

namespace A285879

/-- `∑[A379970(4*(n+1))]` -/
def P9245686211391467721.Spec : Prop :=
  ∀ n, P9245686211391467721.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P15434594913910450373

`∑[abs(A008683(2*(n+1)))]`
-/

namespace A285879.P15434594913910450373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P15434594913910450373

namespace A285879

/-- `∑[abs(A008683(2*(n+1)))]` -/
def P15434594913910450373.Spec : Prop :=
  ∀ n, P15434594913910450373.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P4752934576395920108

`∑[abs(A292273(2*(n+1)))]`
-/

namespace A285879.P4752934576395920108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292273 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P4752934576395920108

namespace A285879

/-- `∑[abs(A292273(2*(n+1)))]` -/
def P4752934576395920108.Spec : Prop :=
  ∀ n, P4752934576395920108.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P14458769479233491235

`∑[abs(A359155(2*(n+1)))]`
-/

namespace A285879.P14458769479233491235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359155 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P14458769479233491235

namespace A285879

/-- `∑[abs(A359155(2*(n+1)))]` -/
def P14458769479233491235.Spec : Prop :=
  ∀ n, P14458769479233491235.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P7708097600004295264

`∑[A008683(2*n+2)²]`
-/

namespace A285879.P7708097600004295264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P7708097600004295264

namespace A285879

/-- `∑[A008683(2*n+2)²]` -/
def P7708097600004295264.Spec : Prop :=
  ∀ n, P7708097600004295264.a n = A285879 (n + 1)

end A285879

/-! ## A285879.P3622135738309445094

`∑[char[A076109(n+1)-1]]`
-/

namespace A285879.P3622135738309445094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076109 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P3622135738309445094

namespace A285879

/-- `∑[char[A076109(n+1)-1]]` -/
def P3622135738309445094.Spec : Prop :=
  ∀ n, (P3622135738309445094.a n : ℤ) = A285879 (n + 1)

end A285879

/-! ## A285879.P10107444426143727458

`∑[char[A075423(2*n+1)]]`
-/

namespace A285879.P10107444426143727458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P10107444426143727458

namespace A285879

/-- `∑[char[A075423(2*n+1)]]` -/
def P10107444426143727458.Spec : Prop :=
  ∀ n, (P10107444426143727458.a n : ℤ) = A285879 (n + 1)

end A285879

/-!
# A285880: Number of dominating sets in the stacked prism graph C_3 X P_n.

The programs for A285880, there is no canonical definition to state claims against.
-/

/-! ## A285880.P2496602025301276167

`A286514(∑[n+2]+4)`
-/

namespace A285880.P2496602025301276167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286514 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A285880.P2496602025301276167

/-! ## A285880.P5882730010470178760

`or(1, A286514(A167614(n+1)))`
-/

namespace A285880.P5882730010470178760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A286514 (A167614 (n + 1)).toNat)

end

end A285880.P5882730010470178760

/-! ## A285880.P12608719640960858274

`A286514(A167614(n+1))+A025438(n)`
-/

namespace A285880.P12608719640960858274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286514 (A167614 (n + 1)).toNat + A025438 n

end

end A285880.P12608719640960858274

/-! ## A285880.P7234909383549435130

`A286514(A167614(n+1))+A185284(n)`
-/

namespace A285880.P7234909383549435130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286514 (A167614 (n + 1)).toNat + A185284 n

end

end A285880.P7234909383549435130

/-! ## A285880.P9017313914381936309

`A036225(n)*A286514(A167614(n+1))`
-/

namespace A285880.P9017313914381936309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A286514 (A167614 (n + 1)).toNat

end

end A285880.P9017313914381936309

/-!
# A285881: Number of even squarefree numbers <= n.

The programs for A285881, the canonical program `A285881.P15118884319307160235` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285881 has offset 1).

The definition of A285881 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A285879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285881.P15118884319307160235

`A013928(n+2)-A285879(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A285881

/-- `A013928(n+2)-A285879(n+1)` -/
def P15118884319307160235.Spec : Prop :=
  ∀ n, P15118884319307160235.a n = A285881 (n + 1)

theorem P15118884319307160235.correct : P15118884319307160235.Spec := by
  intro n
  simp only [A285881, Nat.add_sub_cancel]

end A285881

/-! ## A285881.P7430156508028632270

`∑[char[lcm(2, ∏{p}[n, #])-1]]`
-/

namespace A285881.P7430156508028632270
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f3 n), p) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P7430156508028632270

namespace A285881

/-- `∑[char[lcm(2, ∏{p}[n, #])-1]]` -/
def P7430156508028632270.Spec : Prop :=
  ∀ n, (P7430156508028632270.a n : ℤ) = A285881 (n + 1)

end A285881

/-! ## A285881.P13536346896190314214

`∑[and(n, char[∏{p}[n, #]-1])]`
-/

namespace A285881.P13536346896190314214
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P13536346896190314214

namespace A285881

/-- `∑[and(n, char[∏{p}[n, #]-1])]` -/
def P13536346896190314214.Spec : Prop :=
  ∀ n, (P13536346896190314214.a n : ℤ) = A285881 (n + 1)

end A285881

/-! ## A285881.P17520394988537479346

`∑[C(n%2, ∏{e}[n+1, #])]`
-/

namespace A285881.P17520394988537479346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n % 2) (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P17520394988537479346

namespace A285881

/-- `∑[C(n%2, ∏{e}[n+1, #])]` -/
def P17520394988537479346.Spec : Prop :=
  ∀ n, (P17520394988537479346.a n : ℤ) = A285881 (n + 1)

end A285881

/-! ## A285881.P13284044421565375242

`∑[char[∏{p}[2*(n+1), #]-1]]`
-/

namespace A285881.P13284044421565375242
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P13284044421565375242

namespace A285881

/-- `∑[char[∏{p}[2*(n+1), #]-1]]` -/
def P13284044421565375242.Spec : Prop :=
  ∀ n, (P13284044421565375242.a n : ℤ) = A285881 (n + 1)

end A285881

/-! ## A285881.P18177424278217942188

`∑[char[∏{p}[2*n, #]-1]]-1`
-/

namespace A285881.P18177424278217942188
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A285881.P18177424278217942188

namespace A285881

/-- `∑[char[∏{p}[2*n, #]-1]]-1` -/
def P18177424278217942188.Spec : Prop :=
  ∀ n, P18177424278217942188.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P4092470260024003060

`∑[A379966(n+1)]`
-/

namespace A285881.P4092470260024003060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P4092470260024003060

namespace A285881

/-- `∑[A379966(n+1)]` -/
def P4092470260024003060.Spec : Prop :=
  ∀ n, P4092470260024003060.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P14973904152312709823

`∑[abs(A292273(n+1))]`
-/

namespace A285881.P14973904152312709823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292273 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P14973904152312709823

namespace A285881

/-- `∑[abs(A292273(n+1))]` -/
def P14973904152312709823.Spec : Prop :=
  ∀ n, P14973904152312709823.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P12747794862839266817

`∑[1-A105234(n+1)]`
-/

namespace A285881.P12747794862839266817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A105234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P12747794862839266817

namespace A285881

/-- `∑[1-A105234(n+1)]` -/
def P12747794862839266817.Spec : Prop :=
  ∀ n, P12747794862839266817.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P13491644042889957987

`∑[A359592(2*(n+1))]`
-/

namespace A285881.P13491644042889957987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359592 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P13491644042889957987

namespace A285881

/-- `∑[A359592(2*(n+1))]` -/
def P13491644042889957987.Spec : Prop :=
  ∀ n, P13491644042889957987.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P13265606959080171939

`∑[A379970(2*(n+1))]`
-/

namespace A285881.P13265606959080171939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379970 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P13265606959080171939

namespace A285881

/-- `∑[A379970(2*(n+1))]` -/
def P13265606959080171939.Spec : Prop :=
  ∀ n, P13265606959080171939.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P8826754166205659908

`∑[A359472(4*(n+1))]`
-/

namespace A285881.P8826754166205659908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359472 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P8826754166205659908

namespace A285881

/-- `∑[A359472(4*(n+1))]` -/
def P8826754166205659908.Spec : Prop :=
  ∀ n, P8826754166205659908.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P9740267264202526426

`∑[and(n, A008966(n+1))]`
-/

namespace A285881.P9740267264202526426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A008966 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P9740267264202526426

namespace A285881

/-- `∑[and(n, A008966(n+1))]` -/
def P9740267264202526426.Spec : Prop :=
  ∀ n, P9740267264202526426.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P10722392310782274167

`2-A105235(n+1)+n`
-/

namespace A285881.P10722392310782274167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A105235 (n + 1) + (n : ℤ)

end

end A285881.P10722392310782274167

namespace A285881

/-- `2-A105235(n+1)+n` -/
def P10722392310782274167.Spec : Prop :=
  ∀ n, P10722392310782274167.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P7706309478850800262

`∑[A359591(2*(n+1))²]`
-/

namespace A285881.P7706309478850800262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P7706309478850800262

namespace A285881

/-- `∑[A359591(2*(n+1))²]` -/
def P7706309478850800262.Spec : Prop :=
  ∀ n, P7706309478850800262.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P14517588835765027667

`∑[char[A039956(n+1)-1]]`
-/

namespace A285881.P14517588835765027667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P14517588835765027667

namespace A285881

/-- `∑[char[A039956(n+1)-1]]` -/
def P14517588835765027667.Spec : Prop :=
  ∀ n, (P14517588835765027667.a n : ℤ) = A285881 (n + 1)

end A285881

/-! ## A285881.P16923664234512741235

`∑[char[A075423(2*(n+1))]]`
-/

namespace A285881.P16923664234512741235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P16923664234512741235

namespace A285881

/-- `∑[char[A075423(2*(n+1))]]` -/
def P16923664234512741235.Spec : Prop :=
  ∀ n, (P16923664234512741235.a n : ℤ) = A285881 (n + 1)

end A285881

/-! ## A285881.P2269521125339306858

`∑[abs(A008683(gcd(4, n)+n))]`
-/

namespace A285881.P2269521125339306858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (Nat.gcd 4 n + n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P2269521125339306858

namespace A285881

/-- `∑[abs(A008683(gcd(4, n)+n))]` -/
def P2269521125339306858.Spec : Prop :=
  ∀ n, P2269521125339306858.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P13100511119878456858

`∑[and(n, abs(A008683(n+1)))]`
-/

namespace A285881.P13100511119878456858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P13100511119878456858

namespace A285881

/-- `∑[and(n, abs(A008683(n+1)))]` -/
def P13100511119878456858.Spec : Prop :=
  ∀ n, P13100511119878456858.a n = A285881 (n + 1)

end A285881

/-! ## A285881.P16114865917435317770

`∑[and(n, A008683(2*n+1-n)²)]`
-/

namespace A285881.P16114865917435317770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A008683 (2 * n + 1 - n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285881.P16114865917435317770

namespace A285881

/-- `∑[and(n, A008683(2*n+1-n)²)]` -/
def P16114865917435317770.Spec : Prop :=
  ∀ n, P16114865917435317770.a n = A285881 (n + 1)

end A285881

/-!
# A285882: Numbers which are twice a U(2,4) number but not the sum of two distinct U(2,4) numbers.

The programs for A285882, there is no canonical definition to state claims against.
-/

/-! ## A285882.P14790242262611011116

`2*A287611(n+1)`
-/

namespace A285882.P14790242262611011116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287611 (n + 1)

end

end A285882.P14790242262611011116

/-! ## A285882.P12624348953103395309

`A004277(A287611(n+1))`
-/

namespace A285882.P12624348953103395309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A287611 (n + 1)).toNat

end

end A285882.P12624348953103395309

/-! ## A285882.P9950710879135348278

`A004275(A287611(n+1)+1)`
-/

namespace A285882.P9950710879135348278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A287611 (n + 1) + 1).toNat

end

end A285882.P9950710879135348278

/-! ## A285882.P11927469135147984636

`A019425(A287611(n+1)+1)`
-/

namespace A285882.P11927469135147984636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A287611 (n + 1) + 1).toNat

end

end A285882.P11927469135147984636

/-!
# A285883: Let d(n,k) be the n-th divisor of a number k. a(n) is the smallest k such that d(n+1,k+1) = d(n,k) + 1.

The programs for A285883, there is no canonical definition to state claims against.
-/

/-! ## A285883.P10444068035488986654

`A087576(A357341(n))`
-/

namespace A285883.P10444068035488986654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087576 (A357341 n).toNat

end

end A285883.P10444068035488986654

/-!
# A285885: Ulam numbers n such that 3*n is also an Ulam number.

The programs for A285885, there is no canonical definition to state claims against.
-/

/-! ## A285885.P2204566313335004516

`A287212(n+1)/3`
-/

namespace A285885.P2204566313335004516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287212 (n + 1) : ℚ) / 3

end

end A285885.P2204566313335004516

/-! ## A285885.P1069155480746932644

`A255588(A287212(n+1))`
-/

namespace A285885.P1069155480746932644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A287212 (n + 1)).toNat

end

end A285885.P1069155480746932644

/-! ## A285885.P4466769579346508297

`A002264(A287212(n+1)+1)`
-/

namespace A285885.P4466769579346508297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A287212 (n + 1) + 1).toNat

end

end A285885.P4466769579346508297

/-! ## A285885.P7547255663026997892

`A008611(A287212(n+1)+1)`
-/

namespace A285885.P7547255663026997892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A287212 (n + 1) + 1).toNat

end

end A285885.P7547255663026997892

/-! ## A285885.P11691641303063206884

`A008620(A287212(n+1)-1)`
-/

namespace A285885.P11691641303063206884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A287212 (n + 1) - 1).toNat

end

end A285885.P11691641303063206884

/-!
# A285886: Primes of the form (1 + x)^y + (-x)^y where x is a divisor of y.

The programs for A285886, there is no canonical definition to state claims against.
-/

/-! ## A285886.P11244766000150167512

`A087731(A317308(n+1)+2)`
-/

namespace A285886.P11244766000150167512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087731 (A317308 (n + 1) + 2).toNat

end

end A285886.P11244766000150167512

/-! ## A285886.P10157724037938948981

`A287614(lt[A049330(floor(n/(n%2+2))+1), 2]+1)`
-/

namespace A285886.P10157724037938948981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049330 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287614 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A285886.P10157724037938948981

/-!
# A285887: Primes of the form (1 + x)^y + (-x)^y where y is a divisor of x.

The programs for A285887, there is no canonical definition to state claims against.
-/

/-! ## A285887.P11997400352462677041

`A263725(A161707(n)+1)`
-/

namespace A285887.P11997400352462677041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263725 (A161707 n + 1).toNat

end

end A285887.P11997400352462677041

/-!
# A285888: Numbers n such that (1 + n)^n + (-n)^n is prime.

The programs for A285888, there is no canonical definition to state claims against.
-/

/-! ## A285888.P6376369722304804833

`record[xor(n+1, A354135(n))]`
-/

namespace A285888.P6376369722304804833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A354135 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285888.P6376369722304804833

/-! ## A285888.P6290652377818269550

`record[xor(n+1, A354137(n))]`
-/

namespace A285888.P6290652377818269550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A354137 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285888.P6290652377818269550

/-! ## A285888.P491686704877779941

`A186449(a(n-1))` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A285888.P491686704877779941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4] fun n a =>
  A186449 (a (n - 1)).toNat

end

end A285888.P491686704877779941

/-!
# A285889: The smaller of the lexicographically least pair (x, y) such that 0 < x < y and sigma(x) = sigma(y) = n + x + y.

The programs for A285889, there is no canonical definition to state claims against.
-/

/-! ## A285889.P10786017403055690721

`A001065(A285890(n))-n`
-/

namespace A285889.P10786017403055690721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A285890 n).toNat - (n : ℤ)

end

end A285889.P10786017403055690721

/-!
# A285890: The greater of the lexicographically least pair (x, y) such that 0 < x < y and sigma(x) = sigma(y) = n + x + y.

The programs for A285890, there is no canonical definition to state claims against.
-/

/-! ## A285890.P3966017609893694565

`A001065(A285889(n))-n`
-/

namespace A285890.P3966017609893694565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A285889 n).toNat - (n : ℤ)

end

end A285890.P3966017609893694565

/-!
# A285891: Triangle read by rows: T(n,k) = n*A237048(n,k).

The programs for A285891, there is no canonical definition to state claims against.
-/

/-! ## A285891.P18309334062944819305

`A002024(∑[A237591(n+1)])*A237048(n+1)`
-/

namespace A285891.P18309334062944819305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A237048 (n + 1)

end

end A285891.P18309334062944819305

/-! ## A285891.P6480580751397952672

`A004526((A338721(n+1)+A285914(n+1))*A285914(n+1))`
-/

namespace A285891.P6480580751397952672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A338721 (n + 1) + A285914 (n + 1)) * A285914 (n + 1)).toNat

end

end A285891.P6480580751397952672

/-! ## A285891.P409714348416838389

`A237048(n+1)*A329255(n+1)`
-/

namespace A285891.P409714348416838389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1) * A329255 (n + 1)

end

end A285891.P409714348416838389

/-! ## A285891.P15905970361111443491

`lcm(A261699(n+1), A329255(n+1))`
-/

namespace A285891.P15905970361111443491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A261699 (n + 1)) (A329255 (n + 1))

end

end A285891.P15905970361111443491

/-! ## A285891.P4430278473332271902

`(1-A347579(n+1))*A329255(n+1)`
-/

namespace A285891.P4430278473332271902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A347579 (n + 1)) * A329255 (n + 1)

end

end A285891.P4430278473332271902

/-! ## A285891.P18129724965162365535

`A196020(n+1)%2*A329255(n+1)`
-/

namespace A285891.P18129724965162365535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196020 (n + 1)) 2 * A329255 (n + 1)

end

end A285891.P18129724965162365535

/-! ## A285891.P12953783620629627038

`A329255(n+1)%(2^A286013(n+1))`
-/

namespace A285891.P12953783620629627038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329255 (n + 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A286013 (n + 1) : ℤ)))

end

end A285891.P12953783620629627038

/-! ## A285891.P10742206376826501494

`A000035(A196020(n+1))*A329255(n+1)`
-/

namespace A285891.P10742206376826501494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A196020 (n + 1)).toNat * A329255 (n + 1)

end

end A285891.P10742206376826501494

/-! ## A285891.P4685513967255207258

`A019431(A239662(n+1))*A329255(n+1)`
-/

namespace A285891.P4685513967255207258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A239662 (n + 1)).toNat * A329255 (n + 1)

end

end A285891.P4685513967255207258

/-! ## A285891.P2946414568048996502

`A000035(A272026(n+1))*A329255(n+1)`
-/

namespace A285891.P2946414568048996502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A272026 (n + 1)).toNat * A329255 (n + 1)

end

end A285891.P2946414568048996502

/-!
# A285894: Number of length-n binary sequences whose subword complexity is <= 2i, for all i.

The programs for A285894, there is no canonical definition to state claims against.
-/

/-! ## A285894.P14336869290786930309

`record[A000079(n)%A138871(3*n+1)]`
-/

namespace A285894.P14336869290786930309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A138871 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285894.P14336869290786930309

/-! ## A285894.P1481015588161863246

`record[A011782(n)%A306119(3*n+1)]`
-/

namespace A285894.P1481015588161863246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n) (A306119 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285894.P1481015588161863246

/-! ## A285894.P15628738295800366309

`A000079(n)-A098852(A005347(n))`
-/

namespace A285894.P15628738295800366309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A098852 (A005347 n).toNat

end

end A285894.P15628738295800366309

/-! ## A285894.P3567845852737078672

`A000051(n)-A319646(A181153(n))`
-/

namespace A285894.P3567845852737078672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A319646 (A181153 n).toNat

end

end A285894.P3567845852737078672

/-!
# A285895: Sum of divisors d of n such that n/d is not congruent to 0 mod 4.

The programs for A285895, the canonical program `A285895.P10646935884568177305` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285895 has offset 1).

The definition of A285895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285895.P4292195785967522512

`3^(n%2)*A327095(n+1)`
-/

namespace A285895.P4292195785967522512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A327095 (n + 1)

end

end A285895.P4292195785967522512

namespace A285895

/-- `3^(n%2)*A327095(n+1)` -/
def P4292195785967522512.Spec : Prop :=
  ∀ n, P4292195785967522512.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P10646935884568177305

`∑{d}[n+1, gcd(#, A000217(#+n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285895

/-- `∑{d}[n+1, gcd(#, A000217(#+n))]` -/
def P10646935884568177305.Spec : Prop :=
  ∀ n, (P10646935884568177305.a n : ℤ) = A285895 (n + 1)

theorem P10646935884568177305.correct : P10646935884568177305.Spec := by
  intro n
  simp only [A285895, Nat.add_sub_cancel]

end A285895

/-! ## A285895.P2598243480951161778

`∑{d}[n+1, #*A166486((n+1)/#)]`
-/

namespace A285895.P2598243480951161778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A166486 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285895.P2598243480951161778

namespace A285895

/-- `∑{d}[n+1, #*A166486((n+1)/#)]` -/
def P2598243480951161778.Spec : Prop :=
  ∀ n, P2598243480951161778.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P6454599094162078983

`ceil(xor(n, n+1)/4)*A046897(n+1)`
-/

namespace A285895.P6454599094162078983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ * A046897 (n + 1)

end

end A285895.P6454599094162078983

namespace A285895

/-- `ceil(xor(n, n+1)/4)*A046897(n+1)` -/
def P6454599094162078983.Spec : Prop :=
  ∀ n, P6454599094162078983.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P12046007232865747640

`∑{d}[n+1, #]/xor(n, n+1)*A003945(val(n+1, 2))`
-/

namespace A285895.P12046007232865747640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (A003945 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A285895.P12046007232865747640

namespace A285895

/-- `∑{d}[n+1, #]/xor(n, n+1)*A003945(val(n+1, 2))` -/
def P12046007232865747640.Spec : Prop :=
  ∀ n, P12046007232865747640.a n = (A285895 (n + 1) : ℚ)

end A285895

/-! ## A285895.P8103078654989337483

`∑{d}[(n+1)/and(n+1, -(n+1)), #]*A063946(and(n+1, -(n+1)))`
-/

namespace A285895.P8103078654989337483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ) * A063946 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A285895.P8103078654989337483

namespace A285895

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), #]*A063946(and(n+1, -(n+1)))` -/
def P8103078654989337483.Spec : Prop :=
  ∀ n, P8103078654989337483.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P8558899304388665600

`A010684(n)*A327095(n+1)`
-/

namespace A285895.P8558899304388665600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A327095 (n + 1)

end

end A285895.P8558899304388665600

namespace A285895

/-- `A010684(n)*A327095(n+1)` -/
def P8558899304388665600.Spec : Prop :=
  ∀ n, P8558899304388665600.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P16314636077591507054

`A054785(n+1)-A327095(n+1)`
-/

namespace A285895.P16314636077591507054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A327095 (n + 1)

end

end A285895.P16314636077591507054

namespace A285895

/-- `A054785(n+1)-A327095(n+1)` -/
def P16314636077591507054.Spec : Prop :=
  ∀ n, P16314636077591507054.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P15719370681333044408

`A046897(n+1)*A160467(n+1)`
-/

namespace A285895.P15719370681333044408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046897 (n + 1) * A160467 (n + 1)

end

end A285895.P15719370681333044408

namespace A285895

/-- `A046897(n+1)*A160467(n+1)` -/
def P15719370681333044408.Spec : Prop :=
  ∀ n, P15719370681333044408.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P15614252904512343772

`(A010694(n)-1)*A327095(n+1)`
-/

namespace A285895.P15614252904512343772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010694 n - 1) * A327095 (n + 1)

end

end A285895.P15614252904512343772

namespace A285895

/-- `(A010694(n)-1)*A327095(n+1)` -/
def P15614252904512343772.Spec : Prop :=
  ∀ n, P15614252904512343772.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P1364584042016236320

`A185152(n+1)/A259445(n+1)`
-/

namespace A285895.P1364584042016236320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185152 (n + 1) : ℚ) / (A259445 (n + 1) : ℚ)

end

end A285895.P1364584042016236320

namespace A285895

/-- `A185152(n+1)/A259445(n+1)` -/
def P1364584042016236320.Spec : Prop :=
  ∀ n, P1364584042016236320.a n = (A285895 (n + 1) : ℚ)

end A285895

/-! ## A285895.P944520823252546093

`lcm(A046897(n+1), A327095(n+1))`
-/

namespace A285895.P944520823252546093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046897 (n + 1)) (A327095 (n + 1))

end

end A285895.P944520823252546093

namespace A285895

/-- `lcm(A046897(n+1), A327095(n+1))` -/
def P944520823252546093.Spec : Prop :=
  ∀ n, (P944520823252546093.a n : ℤ) = A285895 (n + 1)

end A285895

/-! ## A285895.P15226725765683920943

`(A069184(n+1)+A000203(n+1))/2`
-/

namespace A285895.P15226725765683920943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069184 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A285895.P15226725765683920943

namespace A285895

/-- `(A069184(n+1)+A000203(n+1))/2` -/
def P15226725765683920943.Spec : Prop :=
  ∀ n, P15226725765683920943.a n = (A285895 (n + 1) : ℚ)

end A285895

/-! ## A285895.P9140838331184385593

`2*A002131(n+1)-A327095(n+1)`
-/

namespace A285895.P9140838331184385593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002131 (n + 1) - A327095 (n + 1)

end

end A285895.P9140838331184385593

namespace A285895

/-- `2*A002131(n+1)-A327095(n+1)` -/
def P9140838331184385593.Spec : Prop :=
  ∀ n, P9140838331184385593.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P11697874842451205590

`∑{d}[A259445(n+1), #*A160467(n+1)]`
-/

namespace A285895.P11697874842451205590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A160467 (n + 1)

end

end A285895.P11697874842451205590

namespace A285895

/-- `∑{d}[A259445(n+1), #*A160467(n+1)]` -/
def P11697874842451205590.Spec : Prop :=
  ∀ n, P11697874842451205590.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P4088573922378625998

`∑{d}[n+1, A002131(#)*A019590((n+1)/#)]`
-/

namespace A285895.P4088573922378625998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A019590 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285895.P4088573922378625998

namespace A285895

/-- `∑{d}[n+1, A002131(#)*A019590((n+1)/#)]` -/
def P4088573922378625998.Spec : Prop :=
  ∀ n, P4088573922378625998.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P8108263348737829803

`∑{d}[n+1, A000010(#)*A069733((n+1)/#)]`
-/

namespace A285895.P8108263348737829803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A069733 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285895.P8108263348737829803

namespace A285895

/-- `∑{d}[n+1, A000010(#)*A069733((n+1)/#)]` -/
def P8108263348737829803.Spec : Prop :=
  ∀ n, P8108263348737829803.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P5119864151242791856

`∑{d}[n+1, A001615(#)*A098108((n+1)/#)]`
-/

namespace A285895.P5119864151242791856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A098108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285895.P5119864151242791856

namespace A285895

/-- `∑{d}[n+1, A001615(#)*A098108((n+1)/#)]` -/
def P5119864151242791856.Spec : Prop :=
  ∀ n, P5119864151242791856.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P8141232090024617871

`∑{d}[n+1, A001227(#)*A126246((n+1)/#)]`
-/

namespace A285895.P8141232090024617871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A126246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285895.P8141232090024617871

namespace A285895

/-- `∑{d}[n+1, A001227(#)*A126246((n+1)/#)]` -/
def P8141232090024617871.Spec : Prop :=
  ∀ n, P8141232090024617871.a n = A285895 (n + 1)

end A285895

/-! ## A285895.P13775673964806225833

`∑{d}[n+1, A008683(#)*A263828((n+1)/#)]`
-/

namespace A285895.P13775673964806225833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A263828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285895.P13775673964806225833

namespace A285895

/-- `∑{d}[n+1, A008683(#)*A263828((n+1)/#)]` -/
def P13775673964806225833.Spec : Prop :=
  ∀ n, P13775673964806225833.a n = A285895 (n + 1)

end A285895

/-!
# A285896: Sum of divisors d of n such that n/d is not congruent to 0 mod 5.

The programs for A285896, the canonical program `A285896.P13805736718187406496` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285896 has offset 1).

The definition of A285896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285896.P13805736718187406496

`(A000203(5*(n+1))-A000203(n+1))/5`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285896

/-- `(A000203(5*(n+1))-A000203(n+1))/5` -/
def P13805736718187406496.Spec : Prop :=
  ∀ n, P13805736718187406496.a n = (A285896 (n + 1) : ℚ)

end A285896

/-! ## A285896.P7013669895608726308

`∑{d}[n+1, #*A011558((n+1)/#)]`
-/

namespace A285896.P7013669895608726308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A011558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285896.P7013669895608726308

namespace A285896

/-- `∑{d}[n+1, #*A011558((n+1)/#)]` -/
def P7013669895608726308.Spec : Prop :=
  ∀ n, P7013669895608726308.a n = A285896 (n + 1)

end A285896

/-! ## A285896.P18159773866789106672

`A060904(n+1)*A116073(n+1)`
-/

namespace A285896.P18159773866789106672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (n + 1) * A116073 (n + 1)

end

end A285896.P18159773866789106672

namespace A285896

/-- `A060904(n+1)*A116073(n+1)` -/
def P18159773866789106672.Spec : Prop :=
  ∀ n, P18159773866789106672.a n = A285896 (n + 1)

end A285896

/-! ## A285896.P13558583822128282249

`A064987(n+1)/A359100(n+1)`
-/

namespace A285896.P13558583822128282249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A359100 (n + 1) : ℚ)

end

end A285896.P13558583822128282249

namespace A285896

/-- `A064987(n+1)/A359100(n+1)` -/
def P13558583822128282249.Spec : Prop :=
  ∀ n, P13558583822128282249.a n = (A285896 (n + 1) : ℚ)

end A285896

/-! ## A285896.P4797552211834947242

`∑{d}[n+1, A000010(#)*A035207((n+1)/#)]`
-/

namespace A285896.P4797552211834947242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A035207 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285896.P4797552211834947242

namespace A285896

/-- `∑{d}[n+1, A000010(#)*A035207((n+1)/#)]` -/
def P4797552211834947242.Spec : Prop :=
  ∀ n, P4797552211834947242.a n = A285896 (n + 1)

end A285896

/-! ## A285896.P9097034134510793202

`∑{d}[n+1, A060904(#)*A091703((n+1)/#)]`
-/

namespace A285896.P9097034134510793202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060904 d * A091703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285896.P9097034134510793202

namespace A285896

/-- `∑{d}[n+1, A060904(#)*A091703((n+1)/#)]` -/
def P9097034134510793202.Spec : Prop :=
  ∀ n, P9097034134510793202.a n = A285896 (n + 1)

end A285896

/-! ## A285896.P13049409922846957693

`∑{d}[n+1, A001615(#)*A214293((n+1)/#)]`
-/

namespace A285896.P13049409922846957693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A214293 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285896.P13049409922846957693

namespace A285896

/-- `∑{d}[n+1, A001615(#)*A214293((n+1)/#)]` -/
def P13049409922846957693.Spec : Prop :=
  ∀ n, P13049409922846957693.a n = A285896 (n + 1)

end A285896

/-! ## A285896.P6483465243395640398

`∑{d}[n+1, A035165(#)*A204617((n+1)/#)]`
-/

namespace A285896.P6483465243395640398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035165 d * A204617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285896.P6483465243395640398

namespace A285896

/-- `∑{d}[n+1, A035165(#)*A204617((n+1)/#)]` -/
def P6483465243395640398.Spec : Prop :=
  ∀ n, P6483465243395640398.a n = A285896 (n + 1)

end A285896

/-! ## A285896.P5411703715012467460

`∑{d}[n+1, A162289(#)*A385137((n+1)/#)]`
-/

namespace A285896.P5411703715012467460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162289 d * A385137 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285896.P5411703715012467460

namespace A285896

/-- `∑{d}[n+1, A162289(#)*A385137((n+1)/#)]` -/
def P5411703715012467460.Spec : Prop :=
  ∀ n, P5411703715012467460.a n = A285896 (n + 1)

end A285896

/-! ## A285896.P17730539801805401944

`∑{d}[n+1, A053694(#-1)*A395768((n+1)/#)]`
-/

namespace A285896.P17730539801805401944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053694 (d - 1) * A395768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A285896.P17730539801805401944

namespace A285896

/-- `∑{d}[n+1, A053694(#-1)*A395768((n+1)/#)]` -/
def P17730539801805401944.Spec : Prop :=
  ∀ n, P17730539801805401944.a n = A285896 (n + 1)

end A285896

/-! ## A285896.P10198394856414284887

`A000203(A132739(n+1))*A060904(n+1)`
-/

namespace A285896.P10198394856414284887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A132739 (n + 1)).toNat * A060904 (n + 1)

end

end A285896.P10198394856414284887

namespace A285896

/-- `A000203(A132739(n+1))*A060904(n+1)` -/
def P10198394856414284887.Spec : Prop :=
  ∀ n, P10198394856414284887.a n = A285896 (n + 1)

end A285896

/-!
# A285897: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A285897, there is no canonical definition to state claims against.
-/

/-! ## A285897.P13290298301969160333

`A007088(A285908(n))`
-/

namespace A285897.P13290298301969160333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285908 n).toNat

end

end A285897.P13290298301969160333

/-! ## A285897.P13967023903664949688

`A185544(2*A285908(n))`
-/

namespace A285897.P13967023903664949688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285908 n).toNat

end

end A285897.P13967023903664949688

/-! ## A285897.P3205895141214510985

`A185544(A285908(n)+A285908(n))`
-/

namespace A285897.P3205895141214510985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285908 n + A285908 n).toNat

end

end A285897.P3205895141214510985

/-! ## A285897.P10040306168749951864

`A288805(A351870(n)-A011765(n+1))`
-/

namespace A285897.P10040306168749951864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (A351870 n - A011765 (n + 1)).toNat

end

end A285897.P10040306168749951864

/-! ## A285897.P18116389668964820015

`A288805(xor(A011765(n+1), A351870(n)))`
-/

namespace A285897.P18116389668964820015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (Int.xor (A011765 (n + 1)) (A351870 n)).toNat

end

end A285897.P18116389668964820015

/-!
# A285898: Triangle read by row: T(n,k) = number of partitions of n into exactly k consecutive parts (1 <= k <= n).

The programs for A285898, the canonical program `A285898.P6248290526350817964` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285898 has offset 1).

The definition of A285898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285898.P302948667143570694

`char[A161680(A049777(n+1))+A025581(n)]`
-/

namespace A285898.P302948667143570694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A049777 (n + 1)).toNat + A025581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285898.P302948667143570694

namespace A285898

/-- `char[A161680(A049777(n+1))+A025581(n)]` -/
def P302948667143570694.Spec : Prop :=
  ∀ n, (P302948667143570694.a n : ℤ) = A285898 (n + 1)

end A285898

/-! ## A285898.P6248290526350817964

`val(A077320(A049777(n+1)), A077320(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A285898

/-- `val(A077320(A049777(n+1)), A077320(n+1))` -/
def P6248290526350817964.Spec : Prop :=
  ∀ n, (P6248290526350817964.a n : ℤ) = A285898 (n + 1)

theorem P6248290526350817964.correct : P6248290526350817964.Spec := by
  intro n
  simp only [A285898, Nat.add_sub_cancel]

end A285898

/-! ## A285898.P3497876708162475579

`char[A004736(n+1)-A080956(A049777(n+1))]`
-/

namespace A285898.P3497876708162475579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A080956 (A049777 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285898.P3497876708162475579

namespace A285898

/-- `char[A004736(n+1)-A080956(A049777(n+1))]` -/
def P3497876708162475579.Spec : Prop :=
  ∀ n, (P3497876708162475579.a n : ℤ) = A285898 (n + 1)

end A285898

/-! ## A285898.P18151936507557311618

`A000007(A083173(A049777(n+1))%A083173(n+1))`
-/

namespace A285898.P18151936507557311618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A083173 (A049777 (n + 1)).toNat) (A083173 (n + 1))).toNat

end

end A285898.P18151936507557311618

namespace A285898

/-- `A000007(A083173(A049777(n+1))%A083173(n+1))` -/
def P18151936507557311618.Spec : Prop :=
  ∀ n, P18151936507557311618.a n = A285898 (n + 1)

end A285898

/-! ## A285898.P3345231594873279822

`A316341(and(A322265(n+1), A322279(n)))`
-/

namespace A285898.P3345231594873279822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (Int.land (A322265 (n + 1)) (A322279 n)).toNat

end

end A285898.P3345231594873279822

namespace A285898

/-- `A316341(and(A322265(n+1), A322279(n)))` -/
def P3345231594873279822.Spec : Prop :=
  ∀ n, P3345231594873279822.a n = A285898 (n + 1)

end A285898

/-! ## A285898.P2005214357451452920

`A000045(and(A161789(3*n+5), A350365(n)))`
-/

namespace A285898.P2005214357451452920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (A161789 (3 * n + 5)) (A350365 n)).toNat

end

end A285898.P2005214357451452920

namespace A285898

/-- `A000045(and(A161789(3*n+5), A350365(n)))` -/
def P2005214357451452920.Spec : Prop :=
  ∀ n, P2005214357451452920.a n = A285898 (n + 1)

end A285898

/-!
# A285899: Total number of parts in all partitions of all positive integers <= n into consecutive parts.

The programs for A285899, there is no canonical definition to state claims against.
-/

/-! ## A285899.P4345061656012597139

`∑[A204217(n+1)]`
-/

namespace A285899.P4345061656012597139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285899.P4345061656012597139

/-! ## A285899.P16026334423444282857

`∑[A357618(n+1)+1]`
-/

namespace A285899.P16026334423444282857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357618 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285899.P16026334423444282857

/-! ## A285899.P1793268364417044151

`∑[A338616(n+1)/2]`
-/

namespace A285899.P1793268364417044151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338616 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285899.P1793268364417044151

/-! ## A285899.P9358128936901560226

`∑[A319895(n+1)-∑{d}[n+1, #%2]]`
-/

namespace A285899.P9358128936901560226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319895 (n + 1) - ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285899.P9358128936901560226

/-! ## A285899.P1568168280019751393

`∑[∑{d}[n+1, lcm(2, #)]-A353149(n+1)]`
-/

namespace A285899.P1568168280019751393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), Nat.lcm 2 d : ℕ) : ℤ) - A353149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285899.P1568168280019751393

/-! ## A285899.P10199703633848921887

`A001281(∑[A338616(n+1)])`
-/

namespace A285899.P10199703633848921887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285899.P10199703633848921887

/-! ## A285899.P12842536492475611773

`abs(A001057(∑[A338616(n+1)]))`
-/

namespace A285899.P12842536492475611773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A285899.P12842536492475611773

/-! ## A285899.P12575187228410940245

`∑[A001057(A338616(n+1)-1)]`
-/

namespace A285899.P12575187228410940245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A338616 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285899.P12575187228410940245

/-! ## A285899.P7977941200926227310

`∑[A000203(n+1)-A284475(n+1)]`
-/

namespace A285899.P7977941200926227310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A284475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285899.P7977941200926227310

/-! ## A285899.P4917006315592056483

`a(n-1)+A204217(n+1)%A000040(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A285899.P4917006315592056483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.tmod (A204217 (n + 1)) (A000040 (n + 1))

end

end A285899.P4917006315592056483

