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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.Opaque.C026

/-!
# A334101: Numbers of the form q*(2^k), where q is one of the Fermat primes and k >= 0; Numbers n for which A329697(n) == 1.

The programs for A334101, there is no canonical definition to state claims against.
-/

/-! ## A334101.P12349391885031113819

`∩[A003401(n+1), A018900(n+1)]`
-/

namespace A334101.P12349391885031113819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334101.P12349391885031113819

/-! ## A334101.P13726776820200245806

`A173786(eq[A173786(n), A276618(n)])`
-/

namespace A334101.P13726776820200245806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334101.P13726776820200245806

/-! ## A334101.P18163405105778529437

`A276618(eq[A099627(n)+1, A276618(n)])`
-/

namespace A334101.P18163405105778529437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334101.P18163405105778529437

/-! ## A334101.P6832973068554046914

`A276618(eq[A048645(n+2), A276618(n)])`
-/

namespace A334101.P6832973068554046914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334101.P6832973068554046914

/-! ## A334101.P2330471231430787405

`A276618(eq[1, A276618(n)-A099627(n)])`
-/

namespace A334101.P2330471231430787405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n - A099627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334101.P2330471231430787405

/-! ## A334101.P3270854181307643410

`record[A018900(n+1)*A036987(A025581(n))]`
-/

namespace A334101.P3270854181307643410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) * A036987 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334101.P3270854181307643410

/-! ## A334101.P15544354816404874174

`record[A018900(n+1)/A080079(A099375(n))]`
-/

namespace A334101.P15544354816404874174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018900 (n + 1) : ℚ) / (A080079 (A099375 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334101.P15544354816404874174

/-! ## A334101.P9101266204001543467

`record[A006530(A018900(n+1))*A059268(n)]`
-/

namespace A334101.P9101266204001543467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A018900 (n + 1)).toNat * A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334101.P9101266204001543467

/-! ## A334101.P1691112111790063578

`filter[A173786(n), A353670(#)]`
-/

namespace A334101.P1691112111790063578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A334101.P1691112111790063578

/-! ## A334101.P1524958005099013602

`filter[A276618(n), A340373(#)]`
-/

namespace A334101.P1524958005099013602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A334101.P1524958005099013602

/-!
# A334102: Numbers n for which A329697(n) == 2.

The programs for A334102, the canonical program `A334102.P14426080341620597071` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334102 has offset 1).

The definition of A334102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334102.P14426080341620597071

`eq[2, A329697(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A334102

/-- `eq[2, A329697(n+1)]+1` -/
def P14426080341620597071.Spec : Prop :=
  ∀ n, (P14426080341620597071.a n : ℤ) = A334102 (n + 1)

theorem P14426080341620597071.correct : P14426080341620597071.Spec := by
  intro n
  simp only [A334102, Nat.add_sub_cancel]

end A334102

/-! ## A334102.P16413887116067951265

`eq[n, n-a(A329697(n))]` with `a(0)=2`
-/

namespace A334102.P16413887116067951265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) - f2 (A329697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334102.P16413887116067951265

namespace A334102

/-- `eq[n, n-a(A329697(n))]` -/
def P16413887116067951265.Spec : Prop :=
  ∀ n, (P16413887116067951265.a n : ℤ) = A334102 (n + 1)

end A334102

/-! ## A334102.P5203527812990534209

`eq[2, A329697(A004277(n))]`
-/

namespace A334102.P5203527812990534209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334102.P5203527812990534209

namespace A334102

/-- `eq[2, A329697(A004277(n))]` -/
def P5203527812990534209.Spec : Prop :=
  ∀ n, (P5203527812990534209.a n : ℤ) = A334102 (n + 1)

end A334102

/-! ## A334102.P10818097455511196083

`eq[2, A329697(A008574(n))]`
-/

namespace A334102.P10818097455511196083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334102.P10818097455511196083

namespace A334102

/-- `eq[2, A329697(A008574(n))]` -/
def P10818097455511196083.Spec : Prop :=
  ∀ n, (P10818097455511196083.a n : ℤ) = A334102 (n + 1)

end A334102

/-! ## A334102.P16736534997182432174

`eq[2, A329697(A028310(n))]`
-/

namespace A334102.P16736534997182432174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334102.P16736534997182432174

namespace A334102

/-- `eq[2, A329697(A028310(n))]` -/
def P16736534997182432174.Spec : Prop :=
  ∀ n, (P16736534997182432174.a n : ℤ) = A334102 (n + 1)

end A334102

/-! ## A334102.P11390780218357118634

`eq[3, A329697(A008458(n))]`
-/

namespace A334102.P11390780218357118634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334102.P11390780218357118634

namespace A334102

/-- `eq[3, A329697(A008458(n))]` -/
def P11390780218357118634.Spec : Prop :=
  ∀ n, (P11390780218357118634.a n : ℤ) = A334102 (n + 1)

end A334102

/-! ## A334102.P11307876976047671128

`eq[3, A329697(A008486(n))]`
-/

namespace A334102.P11307876976047671128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334102.P11307876976047671128

namespace A334102

/-- `eq[3, A329697(A008486(n))]` -/
def P11307876976047671128.Spec : Prop :=
  ∀ n, (P11307876976047671128.a n : ℤ) = A334102 (n + 1)

end A334102

/-! ## A334102.P9816684109169880917

`eq[3, A329697(A008706(n))]`
-/

namespace A334102.P9816684109169880917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334102.P9816684109169880917

namespace A334102

/-- `eq[3, A329697(A008706(n))]` -/
def P9816684109169880917.Spec : Prop :=
  ∀ n, (P9816684109169880917.a n : ℤ) = A334102 (n + 1)

end A334102

/-! ## A334102.P7651988940912214451

`eq[3, A329697(A298026(n))]`
-/

namespace A334102.P7651988940912214451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A298026 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334102.P7651988940912214451

namespace A334102

/-- `eq[3, A329697(A298026(n))]` -/
def P7651988940912214451.Spec : Prop :=
  ∀ n, (P7651988940912214451.a n : ℤ) = A334102 (n + 1)

end A334102

/-! ## A334102.P2015536493196492108

`eq[2, A329697(A022144(n))]`
-/

namespace A334102.P2015536493196492108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334102.P2015536493196492108

namespace A334102

/-- `eq[2, A329697(A022144(n))]` -/
def P2015536493196492108.Spec : Prop :=
  ∀ n, (P2015536493196492108.a n : ℤ) = A334102 (n + 1)

end A334102

/-!
# A334103: Numbers n for which A329697(n) == 3.

The programs for A334103, the canonical program `A334103.P8770700371739961028` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334103 has offset 1).

The definition of A334103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 584 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334103.P8770700371739961028

`eq[3, A329697(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A334103

/-- `eq[3, A329697(n+1)]+1` -/
def P8770700371739961028.Spec : Prop :=
  ∀ n, (P8770700371739961028.a n : ℤ) = A334103 (n + 1)

theorem P8770700371739961028.correct : P8770700371739961028.Spec := by
  intro n
  simp only [A334103, Nat.add_sub_cancel]

end A334103

/-! ## A334103.P10201875692514264718

`eq[3, A056239(A359587(n+1))]+1`
-/

namespace A334103.P10201875692514264718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A359587 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334103.P10201875692514264718

namespace A334103

/-- `eq[3, A056239(A359587(n+1))]+1` -/
def P10201875692514264718.Spec : Prop :=
  ∀ n, (P10201875692514264718.a n : ℤ) = A334103 (n + 1)

end A334103

/-! ## A334103.P14699331631862257908

`eq[3, A329697(A008574(n))]`
-/

namespace A334103.P14699331631862257908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334103.P14699331631862257908

namespace A334103

/-- `eq[3, A329697(A008574(n))]` -/
def P14699331631862257908.Spec : Prop :=
  ∀ n, (P14699331631862257908.a n : ℤ) = A334103 (n + 1)

end A334103

/-! ## A334103.P3090840413958599490

`eq[3, A329697(A028310(n))]`
-/

namespace A334103.P3090840413958599490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334103.P3090840413958599490

namespace A334103

/-- `eq[3, A329697(A028310(n))]` -/
def P3090840413958599490.Spec : Prop :=
  ∀ n, (P3090840413958599490.a n : ℤ) = A334103 (n + 1)

end A334103

/-! ## A334103.P12992239204992707705

`eq[4, A329697(A008458(n))]`
-/

namespace A334103.P12992239204992707705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334103.P12992239204992707705

namespace A334103

/-- `eq[4, A329697(A008458(n))]` -/
def P12992239204992707705.Spec : Prop :=
  ∀ n, (P12992239204992707705.a n : ℤ) = A334103 (n + 1)

end A334103

/-! ## A334103.P17019315186759100297

`eq[4, A329697(A008486(n))]`
-/

namespace A334103.P17019315186759100297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334103.P17019315186759100297

namespace A334103

/-- `eq[4, A329697(A008486(n))]` -/
def P17019315186759100297.Spec : Prop :=
  ∀ n, (P17019315186759100297.a n : ℤ) = A334103 (n + 1)

end A334103

/-! ## A334103.P12541272574242220509

`eq[4, A329697(A008706(n))]`
-/

namespace A334103.P12541272574242220509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334103.P12541272574242220509

namespace A334103

/-- `eq[4, A329697(A008706(n))]` -/
def P12541272574242220509.Spec : Prop :=
  ∀ n, (P12541272574242220509.a n : ℤ) = A334103 (n + 1)

end A334103

/-! ## A334103.P660770183580404815

`eq[4, A329697(A298028(n))]`
-/

namespace A334103.P660770183580404815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A298028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334103.P660770183580404815

namespace A334103

/-- `eq[4, A329697(A298028(n))]` -/
def P660770183580404815.Spec : Prop :=
  ∀ n, (P660770183580404815.a n : ℤ) = A334103 (n + 1)

end A334103

/-! ## A334103.P3728388104741060050

`eq[1, A329697(A004277(n))-2]`
-/

namespace A334103.P3728388104741060050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A004277 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334103.P3728388104741060050

namespace A334103

/-- `eq[1, A329697(A004277(n))-2]` -/
def P3728388104741060050.Spec : Prop :=
  ∀ n, (P3728388104741060050.a n : ℤ) = A334103 (n + 1)

end A334103

/-! ## A334103.P4585368246667564787

`A153152(eq[3, A329697(n+1)])`
-/

namespace A334103.P4585368246667564787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334103.P4585368246667564787

namespace A334103

/-- `A153152(eq[3, A329697(n+1)])` -/
def P4585368246667564787.Spec : Prop :=
  ∀ n, P4585368246667564787.a n = A334103 (n + 1)

end A334103

/-! ## A334103.P8407730946809637952

`eq[2, A329697(A298026(n))-2]`
-/

namespace A334103.P8407730946809637952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A298026 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334103.P8407730946809637952

namespace A334103

/-- `eq[2, A329697(A298026(n))-2]` -/
def P8407730946809637952.Spec : Prop :=
  ∀ n, (P8407730946809637952.a n : ℤ) = A334103 (n + 1)

end A334103

/-! ## A334103.P15878421116457914633

`eq[3, A329697(A022144(n))]`
-/

namespace A334103.P15878421116457914633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334103.P15878421116457914633

namespace A334103

/-- `eq[3, A329697(A022144(n))]` -/
def P15878421116457914633.Spec : Prop :=
  ∀ n, (P15878421116457914633.a n : ℤ) = A334103 (n + 1)

end A334103

/-! ## A334103.P5928883710197117805

`eq[2, A329697(A298036(n))-2]`
-/

namespace A334103.P5928883710197117805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A298036 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334103.P5928883710197117805

namespace A334103

/-- `eq[2, A329697(A298036(n))-2]` -/
def P5928883710197117805.Spec : Prop :=
  ∀ n, (P5928883710197117805.a n : ℤ) = A334103 (n + 1)

end A334103

/-!
# A334104: Numbers m for which A329697(m) = 4.

The programs for A334104, the canonical program `A334104.P1035099503995948317` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334104 has offset 1).

The definition of A334104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334104.P1035099503995948317

`eq[4, A329697(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A334104

/-- `eq[4, A329697(n+1)]+1` -/
def P1035099503995948317.Spec : Prop :=
  ∀ n, (P1035099503995948317.a n : ℤ) = A334104 (n + 1)

theorem P1035099503995948317.correct : P1035099503995948317.Spec := by
  intro n
  simp only [A334104, Nat.add_sub_cancel]

end A334104

/-! ## A334104.P14288762719279037741

`eq[4, A056239(A359587(n+1))]+1`
-/

namespace A334104.P14288762719279037741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A359587 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334104.P14288762719279037741

namespace A334104

/-- `eq[4, A056239(A359587(n+1))]+1` -/
def P14288762719279037741.Spec : Prop :=
  ∀ n, (P14288762719279037741.a n : ℤ) = A334104 (n + 1)

end A334104

/-! ## A334104.P16117773776255319057

`eq[4, A329697(A004277(n))]`
-/

namespace A334104.P16117773776255319057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334104.P16117773776255319057

namespace A334104

/-- `eq[4, A329697(A004277(n))]` -/
def P16117773776255319057.Spec : Prop :=
  ∀ n, (P16117773776255319057.a n : ℤ) = A334104 (n + 1)

end A334104

/-! ## A334104.P5933878901861123354

`eq[4, A329697(A028310(n))]`
-/

namespace A334104.P5933878901861123354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334104.P5933878901861123354

namespace A334104

/-- `eq[4, A329697(A028310(n))]` -/
def P5933878901861123354.Spec : Prop :=
  ∀ n, (P5933878901861123354.a n : ℤ) = A334104 (n + 1)

end A334104

/-! ## A334104.P6137672889175159497

`eq[5, A329697(A008486(n))]`
-/

namespace A334104.P6137672889175159497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334104.P6137672889175159497

namespace A334104

/-- `eq[5, A329697(A008486(n))]` -/
def P6137672889175159497.Spec : Prop :=
  ∀ n, (P6137672889175159497.a n : ℤ) = A334104 (n + 1)

end A334104

/-! ## A334104.P11146839256695706602

`eq[5, A329697(A008706(n))]`
-/

namespace A334104.P11146839256695706602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334104.P11146839256695706602

namespace A334104

/-- `eq[5, A329697(A008706(n))]` -/
def P11146839256695706602.Spec : Prop :=
  ∀ n, (P11146839256695706602.a n : ℤ) = A334104 (n + 1)

end A334104

/-! ## A334104.P14186768255019773266

`eq[4, A329697(A008574(n))]`
-/

namespace A334104.P14186768255019773266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334104.P14186768255019773266

namespace A334104

/-- `eq[4, A329697(A008574(n))]` -/
def P14186768255019773266.Spec : Prop :=
  ∀ n, (P14186768255019773266.a n : ℤ) = A334104 (n + 1)

end A334104

/-! ## A334104.P15155708637605844338

`eq[5, A329697(A008458(n))]`
-/

namespace A334104.P15155708637605844338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334104.P15155708637605844338

namespace A334104

/-- `eq[5, A329697(A008458(n))]` -/
def P15155708637605844338.Spec : Prop :=
  ∀ n, (P15155708637605844338.a n : ℤ) = A334104 (n + 1)

end A334104

/-! ## A334104.P7621572783162896951

`eq[4, A329697(A022144(n))]`
-/

namespace A334104.P7621572783162896951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334104.P7621572783162896951

namespace A334104

/-- `eq[4, A329697(A022144(n))]` -/
def P7621572783162896951.Spec : Prop :=
  ∀ n, (P7621572783162896951.a n : ℤ) = A334104 (n + 1)

end A334104

/-!
# A334105: Numbers m for which A329697(m) = 5.

The programs for A334105, the canonical program `A334105.P6599962454632674818` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334105 has offset 1).

The definition of A334105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3896 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334105.P6599962454632674818

`eq[5, A329697(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A334105

/-- `eq[5, A329697(n+1)]+1` -/
def P6599962454632674818.Spec : Prop :=
  ∀ n, (P6599962454632674818.a n : ℤ) = A334105 (n + 1)

theorem P6599962454632674818.correct : P6599962454632674818.Spec := by
  intro n
  simp only [A334105, Nat.add_sub_cancel]

end A334105

/-! ## A334105.P17644540456257341017

`eq[5, A329697(A008574(n))]`
-/

namespace A334105.P17644540456257341017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334105.P17644540456257341017

namespace A334105

/-- `eq[5, A329697(A008574(n))]` -/
def P17644540456257341017.Spec : Prop :=
  ∀ n, (P17644540456257341017.a n : ℤ) = A334105 (n + 1)

end A334105

/-! ## A334105.P5853832577369020378

`eq[6, A329697(A008458(n))]`
-/

namespace A334105.P5853832577369020378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334105.P5853832577369020378

namespace A334105

/-- `eq[6, A329697(A008458(n))]` -/
def P5853832577369020378.Spec : Prop :=
  ∀ n, (P5853832577369020378.a n : ℤ) = A334105 (n + 1)

end A334105

/-! ## A334105.P16920143696748513810

`eq[6, A329697(A008486(n))]`
-/

namespace A334105.P16920143696748513810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334105.P16920143696748513810

namespace A334105

/-- `eq[6, A329697(A008486(n))]` -/
def P16920143696748513810.Spec : Prop :=
  ∀ n, (P16920143696748513810.a n : ℤ) = A334105 (n + 1)

end A334105

/-! ## A334105.P2207083213366063480

`eq[6, A329697(A008706(n))]`
-/

namespace A334105.P2207083213366063480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334105.P2207083213366063480

namespace A334105

/-- `eq[6, A329697(A008706(n))]` -/
def P2207083213366063480.Spec : Prop :=
  ∀ n, (P2207083213366063480.a n : ℤ) = A334105 (n + 1)

end A334105

/-! ## A334105.P12878103089384858686

`eq[6, A329697(A298028(n))]`
-/

namespace A334105.P12878103089384858686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A298028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334105.P12878103089384858686

namespace A334105

/-- `eq[6, A329697(A298028(n))]` -/
def P12878103089384858686.Spec : Prop :=
  ∀ n, (P12878103089384858686.a n : ℤ) = A334105 (n + 1)

end A334105

/-! ## A334105.P3568862304744468574

`eq[5, A329697(A022144(n))]`
-/

namespace A334105.P3568862304744468574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334105.P3568862304744468574

namespace A334105

/-- `eq[5, A329697(A022144(n))]` -/
def P3568862304744468574.Spec : Prop :=
  ∀ n, (P3568862304744468574.a n : ℤ) = A334105 (n + 1)

end A334105

/-! ## A334105.P11311713746997810079

`eq[5, A329697(A233583(n+1))]`
-/

namespace A334105.P11311713746997810079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334105.P11311713746997810079

namespace A334105

/-- `eq[5, A329697(A233583(n+1))]` -/
def P11311713746997810079.Spec : Prop :=
  ∀ n, (P11311713746997810079.a n : ℤ) = A334105 (n + 1)

end A334105

/-!
# A334106: Numbers n for which A329697(n) == 6.

The programs for A334106, the canonical program `A334106.P945696782660963161` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334106 has offset 1).

The definition of A334106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334106.P945696782660963161

`eq[6, A329697(A004277(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A334106

/-- `eq[6, A329697(A004277(n))]` -/
def P945696782660963161.Spec : Prop :=
  ∀ n, (P945696782660963161.a n : ℤ) = A334106 (n + 1)

theorem P945696782660963161.correct : P945696782660963161.Spec := by
  intro n
  simp only [A334106, Nat.add_sub_cancel]

end A334106

/-! ## A334106.P11272197982683827737

`eq[6, A329697(A008574(n))]`
-/

namespace A334106.P11272197982683827737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334106.P11272197982683827737

namespace A334106

/-- `eq[6, A329697(A008574(n))]` -/
def P11272197982683827737.Spec : Prop :=
  ∀ n, (P11272197982683827737.a n : ℤ) = A334106 (n + 1)

end A334106

/-! ## A334106.P17354613183535913637

`eq[6, A329697(A028310(n))]`
-/

namespace A334106.P17354613183535913637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334106.P17354613183535913637

namespace A334106

/-- `eq[6, A329697(A028310(n))]` -/
def P17354613183535913637.Spec : Prop :=
  ∀ n, (P17354613183535913637.a n : ℤ) = A334106 (n + 1)

end A334106

/-! ## A334106.P7234238980181030513

`eq[7, A329697(A008458(n))]`
-/

namespace A334106.P7234238980181030513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334106.P7234238980181030513

namespace A334106

/-- `eq[7, A329697(A008458(n))]` -/
def P7234238980181030513.Spec : Prop :=
  ∀ n, (P7234238980181030513.a n : ℤ) = A334106 (n + 1)

end A334106

/-! ## A334106.P14064371174309496192

`eq[7, A329697(A008486(n))]`
-/

namespace A334106.P14064371174309496192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334106.P14064371174309496192

namespace A334106

/-- `eq[7, A329697(A008486(n))]` -/
def P14064371174309496192.Spec : Prop :=
  ∀ n, (P14064371174309496192.a n : ℤ) = A334106 (n + 1)

end A334106

/-! ## A334106.P13130336705598616229

`eq[7, A329697(A008706(n))]`
-/

namespace A334106.P13130336705598616229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334106.P13130336705598616229

namespace A334106

/-- `eq[7, A329697(A008706(n))]` -/
def P13130336705598616229.Spec : Prop :=
  ∀ n, (P13130336705598616229.a n : ℤ) = A334106 (n + 1)

end A334106

/-! ## A334106.P14820643764493181260

`eq[6, A329697(A022144(n))]`
-/

namespace A334106.P14820643764493181260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334106.P14820643764493181260

namespace A334106

/-- `eq[6, A329697(A022144(n))]` -/
def P14820643764493181260.Spec : Prop :=
  ∀ n, (P14820643764493181260.a n : ℤ) = A334106 (n + 1)

end A334106

/-!
# A334107: a(n) = A329697(A122111(n)).

The programs for A334107, there is no canonical definition to state claims against.
-/

/-! ## A334107.P5451670133727262493

`A329697(A322865(n+1))`
-/

namespace A334107.P5451670133727262493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A322865 (n + 1)).toNat

end

end A334107.P5451670133727262493

/-! ## A334107.P12998551095597028260

`A001222(∏{e}[A331188(n+1), A111234(#)])`
-/

namespace A334107.P12998551095597028260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A111234 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A334107.P12998551095597028260

/-! ## A334107.P11004395342739345122

`A334098(∏{e}[A331188(n+1), A111234(#)])`
-/

namespace A334107.P11004395342739345122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334098 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A111234 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A334107.P11004395342739345122

/-! ## A334107.P5364706615567086689

`A275024(A329382(n+1))`
-/

namespace A334107.P5364706615567086689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A329382 (n + 1)).toNat

end

end A334107.P5364706615567086689

/-! ## A334107.P5639920979950476609

`A346700(n+1)-A185284(A325567(n+1))`
-/

namespace A334107.P5639920979950476609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (n + 1) - A185284 (A325567 (n + 1)).toNat

end

end A334107.P5639920979950476609

/-! ## A334107.P11440223880227319063

`A001222(A330690(n+1)%A225982(n+1))`
-/

namespace A334107.P11440223880227319063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A330690 (n + 1)) (A225982 (n + 1))).toNat

end

end A334107.P11440223880227319063

/-! ## A334107.P7095378463361578336

`A001222(A330690(n+1))%A272958(n+1)`
-/

namespace A334107.P7095378463361578336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A330690 (n + 1)).toNat) (A272958 (n + 1))

end

end A334107.P7095378463361578336

/-! ## A334107.P372255120017610040

`∑{e}[A329602(n+1)², A000010(#)]`
-/

namespace A334107.P372255120017610040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A334107.P372255120017610040

/-! ## A334107.P11718829287323504989

`∑{e}[A329602(n+1)², A001222(#)]`
-/

namespace A334107.P11718829287323504989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A334107.P11718829287323504989

/-! ## A334107.P6099678909985800356

`∑{e}[A329602(n+1)², A329602(#)]`
-/

namespace A334107.P6099678909985800356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A329602 (Nat.factorization (f1 n).natAbs p)

end

end A334107.P6099678909985800356

/-! ## A334107.P15447361645564027397

`A001222(∏{e}[A329602(n+1)², #])`
-/

namespace A334107.P15447361645564027397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A334107.P15447361645564027397

/-! ## A334107.P11573144378246409871

`A001221(A000225(A330690(n+1)))`
-/

namespace A334107.P11573144378246409871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000225 (A330690 (n + 1)).toNat).toNat

end

end A334107.P11573144378246409871

/-! ## A334107.P3299359119306292483

`∑{p}[A000225(A330690(n+1)), A001222(#)]`
-/

namespace A334107.P3299359119306292483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A330690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A334107.P3299359119306292483

/-! ## A334107.P10936417579408250335

`∑{p}[A000225(A330690(n+1)), A330690(#)]`
-/

namespace A334107.P10936417579408250335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A330690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A330690 p

end

end A334107.P10936417579408250335

/-! ## A334107.P10706528530072675627

`A001222(A330690(n+1)%A198277(n))`
-/

namespace A334107.P10706528530072675627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A330690 (n + 1)) (A198277 n)).toNat

end

end A334107.P10706528530072675627

/-!
# A334108: a(n) = A331410(A122111(n)).

The programs for A334108, there is no canonical definition to state claims against.
-/

/-! ## A334108.P17789061950502536068

`A331410(A322865(n+1))`
-/

namespace A334108.P17789061950502536068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A322865 (n + 1)).toNat

end

end A334108.P17789061950502536068

/-! ## A334108.P1399437079972510286

`A334861(A322865(n+1))-A334107(n+1)`
-/

namespace A334108.P1399437079972510286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (A322865 (n + 1)).toNat - A334107 (n + 1)

end

end A334108.P1399437079972510286

/-! ## A334108.P4733791075217565301

`∑{e}[A181821(A322865(n+1)), A000120(#)]`
-/

namespace A334108.P4733791075217565301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A322865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A334108.P4733791075217565301

/-! ## A334108.P2687227935450452529

`∑{e}[A181821(A322865(n+1)), A323424(#)]`
-/

namespace A334108.P2687227935450452529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A322865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A323424 (Nat.factorization (f1 n).natAbs p)

end

end A334108.P2687227935450452529

/-! ## A334108.P6636504691671999583

`∑{e}[A181821(A322865(n+1)), A336158(#)]`
-/

namespace A334108.P6636504691671999583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A322865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A336158 (Nat.factorization (f1 n).natAbs p)

end

end A334108.P6636504691671999583

/-! ## A334108.P9542775952672159698

`A331410(A122111(n+1)%A335431(n+1))`
-/

namespace A334108.P9542775952672159698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (Int.tmod (A122111 (n + 1)) (A335431 (n + 1))).toNat

end

end A334108.P9542775952672159698

/-! ## A334108.P3919722146750859309

`∑{e}[A331188(n+1), A073341(A017557(#^#))]`
-/

namespace A334108.P3919722146750859309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A073341 (A017557 (Nat.factorization (f1 n).natAbs p ^ Nat.factorization (f1 n).natAbs p)).toNat

end

end A334108.P3919722146750859309

/-! ## A334108.P1669895687665584771

`A365385(A253566(n+1))`
-/

namespace A334108.P1669895687665584771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365385 (A253566 (n + 1)).toNat

end

end A334108.P1669895687665584771

/-! ## A334108.P4705030839322458186

`A331410(A122111(n+1))`
-/

namespace A334108.P4705030839322458186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A122111 (n + 1)).toNat

end

end A334108.P4705030839322458186

/-!
# A334109: a(n) = A329697(A225546(n)).

The programs for A334109, the canonical program `A334109.P1143459477839108207` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334109 has offset 1).

The definition of A334109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334109.P9716825077960922468

`A048675(A019554(A000188(n+1)))`
-/

namespace A334109.P9716825077960922468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A019554 (A000188 (n + 1)).toNat).toNat

end

end A334109.P9716825077960922468

namespace A334109

/-- `A048675(A019554(A000188(n+1)))` -/
def P9716825077960922468.Spec : Prop :=
  ∀ n, P9716825077960922468.a n = A334109 (n + 1)

end A334109

/-! ## A334109.P1143459477839108207

`A048675(A019554((n+1)/A019554(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A334109

/-- `A048675(A019554((n+1)/A019554(n+1)))` -/
def P1143459477839108207.Spec : Prop :=
  ∀ n, P1143459477839108207.a n = A334109 (n + 1)

theorem P1143459477839108207.correct : P1143459477839108207.Spec := by
  intro n
  simp only [A334109, Nat.add_sub_cancel]

end A334109

/-! ## A334109.P15558169437807526969

`A048675(A000188(n+1)/A053164(n+1))`
-/

namespace A334109.P15558169437807526969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.roundAway ((A000188 (n + 1) : ℚ) / (A053164 (n + 1) : ℚ))).toNat

end

end A334109.P15558169437807526969

namespace A334109

/-- `A048675(A000188(n+1)/A053164(n+1))` -/
def P15558169437807526969.Spec : Prop :=
  ∀ n, P15558169437807526969.a n = A334109 (n + 1)

end A334109

/-! ## A334109.P18029359744148160483

`A048675(A019554(A019554(A008833(n+1))))`
-/

namespace A334109.P18029359744148160483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A019554 (A019554 (A008833 (n + 1)).toNat).toNat).toNat

end

end A334109.P18029359744148160483

namespace A334109

/-- `A048675(A019554(A019554(A008833(n+1))))` -/
def P18029359744148160483.Spec : Prop :=
  ∀ n, P18029359744148160483.a n = A334109 (n + 1)

end A334109

/-! ## A334109.P11395858985032777812

`A048675(A000188(A000188(n+1)*A007947(n+1)))`
-/

namespace A334109.P11395858985032777812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A000188 (A000188 (n + 1) * A007947 (n + 1)).toNat).toNat

end

end A334109.P11395858985032777812

namespace A334109

/-- `A048675(A000188(A000188(n+1)*A007947(n+1)))` -/
def P11395858985032777812.Spec : Prop :=
  ∀ n, P11395858985032777812.a n = A334109 (n + 1)

end A334109

/-! ## A334109.P17306029420840241987

`A048675(A000188(n+1)/A000188(A000188(n+1)))`
-/

namespace A334109.P17306029420840241987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.roundAway ((A000188 (n + 1) : ℚ) / (A000188 (A000188 (n + 1)).toNat : ℚ))).toNat

end

end A334109.P17306029420840241987

namespace A334109

/-- `A048675(A000188(n+1)/A000188(A000188(n+1)))` -/
def P17306029420840241987.Spec : Prop :=
  ∀ n, P17306029420840241987.a n = A334109 (n + 1)

end A334109

/-! ## A334109.P13390017053088265130

`A048675(A008833(n+1)/A000190(A008833(n+1)))`
-/

namespace A334109.P13390017053088265130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.roundAway ((A008833 (n + 1) : ℚ) / (A000190 (A008833 (n + 1)).toNat : ℚ))).toNat

end

end A334109.P13390017053088265130

namespace A334109

/-- `A048675(A008833(n+1)/A000190(A008833(n+1)))` -/
def P13390017053088265130.Spec : Prop :=
  ∀ n, P13390017053088265130.a n = A334109 (n + 1)

end A334109

/-! ## A334109.P14772223495577341197

`A001222(A225546(sqrt(A008833(n+1))))`
-/

namespace A334109.P14772223495577341197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225546 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat).toNat

end

end A334109.P14772223495577341197

namespace A334109

/-- `A001222(A225546(sqrt(A008833(n+1))))` -/
def P14772223495577341197.Spec : Prop :=
  ∀ n, P14772223495577341197.a n = A334109 (n + 1)

end A334109

/-! ## A334109.P14376408344748795962

`∑{e}[A331736(n+1), #]`
-/

namespace A334109.P14376408344748795962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A334109.P14376408344748795962

namespace A334109

/-- `∑{e}[A331736(n+1), #]` -/
def P14376408344748795962.Spec : Prop :=
  ∀ n, (P14376408344748795962.a n : ℤ) = A334109 (n + 1)

end A334109

/-! ## A334109.P5774753041177310870

`A001222(A331736(n+1))`
-/

namespace A334109.P5774753041177310870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331736 (n + 1)).toNat

end

end A334109.P5774753041177310870

namespace A334109

/-- `A001222(A331736(n+1))` -/
def P5774753041177310870.Spec : Prop :=
  ∀ n, P5774753041177310870.a n = A334109 (n + 1)

end A334109

/-! ## A334109.P4692031057699558762

`A335885(2*A331736(n+1))`
-/

namespace A334109.P4692031057699558762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (2 * A331736 (n + 1)).toNat

end

end A334109.P4692031057699558762

namespace A334109

/-- `A335885(2*A331736(n+1))` -/
def P4692031057699558762.Spec : Prop :=
  ∀ n, P4692031057699558762.a n = A334109 (n + 1)

end A334109

/-!
# A334110: The squares of squarefree numbers (A062503), ordered lexicographically according to their prime factors. a(n) = Product_{k in I} prime(k+1)^2, where I are the indices of nonzero binary digits in n = Sum_{k in I} 2^k.

The programs for A334110, there is no canonical definition to state claims against.
-/

/-! ## A334110.P1995554371185659273

`A019565(n)²`
-/

namespace A334110.P1995554371185659273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n ^ 2

end

end A334110.P1995554371185659273

/-! ## A334110.P323809071237568787

`(A339809(n)+1)²`
-/

namespace A334110.P323809071237568787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339809 n + 1) ^ 2

end

end A334110.P323809071237568787

/-! ## A334110.P8012590378646453830

`root(A019565(2*n-n), 1/2)`
-/

namespace A334110.P8012590378646453830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A019565 (2 * n - n) : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A334110.P8012590378646453830

/-! ## A334110.P6785252406514402628

`A365810(A193231(n))²`
-/

namespace A334110.P6785252406514402628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 (A193231 n).toNat ^ 2

end

end A334110.P6785252406514402628

/-! ## A334110.P8505722226364093623

`A303760(A303768(n))²`
-/

namespace A334110.P8505722226364093623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 (A303768 n).toNat ^ 2

end

end A334110.P8505722226364093623

/-! ## A334110.P17411216437539625688

`xor(A010684(n), A339809(n))²`
-/

namespace A334110.P17411216437539625688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A339809 n) ^ 2

end

end A334110.P17411216437539625688

/-! ## A334110.P6658890916544558958

`(A339809(n)+1)*A019565(n)`
-/

namespace A334110.P6658890916544558958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339809 n + 1) * A019565 n

end

end A334110.P6658890916544558958

/-! ## A334110.P7955088275325767614

`A019565(n)^A020639(2*(n+1))`
-/

namespace A334110.P7955088275325767614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A334110.P7955088275325767614

/-! ## A334110.P231332339420670600

`A019565(n)*A019565(n%(n+1))`
-/

namespace A334110.P231332339420670600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n * A019565 (n % (n + 1))

end

end A334110.P231332339420670600

/-! ## A334110.P7898748475353283716

`A019565(n)^A000040(gcd(n, n+1))`
-/

namespace A334110.P7898748475353283716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 n : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A334110.P7898748475353283716

/-! ## A334110.P8735668739295926160

`A019565(n)^A000032(C(n, n+1))`
-/

namespace A334110.P8735668739295926160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 n : ℚ) ^ (A000032 (Nat.choose n (n + 1)) : ℤ)

end

end A334110.P8735668739295926160

/-! ## A334110.P17160906804441927464

`A019565(n)^A006530(ceil(root(3, n+1)))`
-/

namespace A334110.P17160906804441927464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 n : ℚ) ^ (A006530 ⌈(3 : ℝ) ^ (1 / (n + 1 : ℝ))⌉.toNat : ℤ)

end

end A334110.P17160906804441927464

/-! ## A334110.P13653033313735675688

`A019565(n)^A014963(ceil(root(3, n+1)))`
-/

namespace A334110.P13653033313735675688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 n : ℚ) ^ (A014963 ⌈(3 : ℝ) ^ (1 / (n + 1 : ℝ))⌉.toNat : ℤ)

end

end A334110.P13653033313735675688

/-! ## A334110.P7218362469207664657

`A019565(n)^A001222(2*A006530(n+1))`
-/

namespace A334110.P7218362469207664657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 n : ℚ) ^ (A001222 (2 * A006530 (n + 1)).toNat : ℤ)

end

end A334110.P7218362469207664657

/-! ## A334110.P722658078546506960

`A284003(A003188(n))²`
-/

namespace A334110.P722658078546506960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 n).toNat ^ 2

end

end A334110.P722658078546506960

/-! ## A334110.P3400212210087802906

`A302033(A006068(n))²`
-/

namespace A334110.P3400212210087802906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A006068 n).toNat ^ 2

end

end A334110.P3400212210087802906

/-! ## A334110.P8143313115038864939

`A019565(n)*A284003(A003188(n))`
-/

namespace A334110.P8143313115038864939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n * A284003 (A003188 n).toNat

end

end A334110.P8143313115038864939

/-! ## A334110.P17747792256413924734

`A019565(n)*A302033(A006068(n))`
-/

namespace A334110.P17747792256413924734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n * A302033 (A006068 n).toNat

end

end A334110.P17747792256413924734

/-! ## A334110.P9603725286647973982

`A019565(n)^A000005(A002144(n+1))`
-/

namespace A334110.P9603725286647973982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 n : ℚ) ^ (A000005 (A002144 (n + 1)).toNat : ℤ)

end

end A334110.P9603725286647973982

/-! ## A334110.P1158180419097594408

`A304087(A304084(n))²`
-/

namespace A334110.P1158180419097594408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 (A304084 n).toNat ^ 2

end

end A334110.P1158180419097594408

/-!
# A334111: Irregular triangle where row n gives all terms k for which A064097(k) = n.

The programs for A334111, there is no canonical definition to state claims against.
-/

/-! ## A334111.P1606970784953577286

`A215366(n)-A115861(A115051(n+3))`
-/

namespace A334111.P1606970784953577286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 n - A115861 (A115051 (n + 3)).toNat

end

end A334111.P1606970784953577286

/-!
# A334112: a(n) = A332809(n) - A000005(n).

The programs for A334112, there is no canonical definition to state claims against.
-/

/-! ## A334112.P9359189045415115143

`A332809(n+1)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334112.P9359189045415115143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (n + 1) - A000005 (n + 1)

end

end A334112.P9359189045415115143

/-! ## A334112.P9661830514869671920

`A049820(n+1)-A332810(n+1)`
-/

namespace A334112.P9661830514869671920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A332810 (n + 1)

end

end A334112.P9661830514869671920

/-! ## A334112.P8358818901565836702

`∑[A332902(n+1)]-A000005(n+1)`
-/

namespace A334112.P8358818901565836702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000005 (n + 1)

end

end A334112.P8358818901565836702

/-! ## A334112.P1290220858980500126

`n+1-(A332810(n+1)+A000005(n+1))`
-/

namespace A334112.P1290220858980500126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A332810 (n + 1) + A000005 (n + 1))

end

end A334112.P1290220858980500126

/-! ## A334112.P7410289125248990180

`A332809(n+1)-A001227(n+1)*A001511(n+1)`
-/

namespace A334112.P7410289125248990180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (n + 1) - A001227 (n + 1) * A001511 (n + 1)

end

end A334112.P7410289125248990180

/-!
# A334113: Positive numbers not of the form 4*x^4 + y*(y+1)/2 + z*(z+1)/2, where x,y,z are nonnegative integers.

The programs for A334113, there is no canonical definition to state claims against.
-/

/-! ## A334113.P12985110237358275464

`A003986(A001597(3*n+4)*A324814(2*n+5))`
-/

namespace A334113.P12985110237358275464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A001597 (3 * n + 4) * A324814 (2 * n + 5)).toNat

end

end A334113.P12985110237358275464

/-!
# A334117: Odd numbers with abundancy >= 3/2; that is, numbers m such that sigma(m) >= 3m/2.

The programs for A334117, the canonical program `A334117.P7213088979993363911` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334117 has offset 1).

The definition of A334117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334117.P7213088979993363911

`eq[2, A082898(A093178(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334117

/-- `eq[2, A082898(A093178(n))]` -/
def P7213088979993363911.Spec : Prop :=
  ∀ n, (P7213088979993363911.a n : ℤ) = A334117 (n + 1)

theorem P7213088979993363911.correct : P7213088979993363911.Spec := by
  intro n
  simp only [A334117, Nat.add_sub_cancel]

end A334117

/-! ## A334117.P5859327241123302102

`2*lt[n, A091570(2*n+1)]+1`
-/

namespace A334117.P5859327241123302102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334117.P5859327241123302102

namespace A334117

/-- `2*lt[n, A091570(2*n+1)]+1` -/
def P5859327241123302102.Spec : Prop :=
  ∀ n, (P5859327241123302102.a n : ℤ) = A334117 (n + 1)

end A334117

/-! ## A334117.P3228991593436210902

`A005408(lt[n, A001065(2*n+1)])`
-/

namespace A334117.P3228991593436210902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A334117.P3228991593436210902

namespace A334117

/-- `A005408(lt[n, A001065(2*n+1)])` -/
def P3228991593436210902.Spec : Prop :=
  ∀ n, P3228991593436210902.a n = A334117 (n + 1)

end A334117

/-! ## A334117.P15321063953020943149

`eq[A005843(n), A082895(A093178(n))]`
-/

namespace A334117.P15321063953020943149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334117.P15321063953020943149

namespace A334117

/-- `eq[A005843(n), A082895(A093178(n))]` -/
def P15321063953020943149.Spec : Prop :=
  ∀ n, (P15321063953020943149.a n : ℤ) = A334117 (n + 1)

end A334117

/-! ## A334117.P6702584023915335131

`eq[2*n, A082895(A257143(n))]`
-/

namespace A334117.P6702584023915335131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (A257143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334117.P6702584023915335131

namespace A334117

/-- `eq[2*n, A082895(A257143(n))]` -/
def P6702584023915335131.Spec : Prop :=
  ∀ n, (P6702584023915335131.a n : ℤ) = A334117 (n + 1)

end A334117

/-! ## A334117.P16295826980057823551

`eq[1, A005843(n)/A082895(A257143(n))]`
-/

namespace A334117.P16295826980057823551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A082895 (A257143 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A334117.P16295826980057823551

namespace A334117

/-- `eq[1, A005843(n)/A082895(A257143(n))]` -/
def P16295826980057823551.Spec : Prop :=
  ∀ n, (P16295826980057823551.a n : ℤ) = A334117 (n + 1)

end A334117

/-! ## A334117.P9648187597841379807

`eq[2*n, A082895(A257088(n))]`
-/

namespace A334117.P9648187597841379807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334117.P9648187597841379807

namespace A334117

/-- `eq[2*n, A082895(A257088(n))]` -/
def P9648187597841379807.Spec : Prop :=
  ∀ n, (P9648187597841379807.a n : ℤ) = A334117 (n + 1)

end A334117

/-! ## A334117.P6996127443863530800

`eq[1, A005843(n)/A082895(A257088(n))]`
-/

namespace A334117.P6996127443863530800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A082895 (A257088 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A334117.P6996127443863530800

namespace A334117

/-- `eq[1, A005843(n)/A082895(A257088(n))]` -/
def P6996127443863530800.Spec : Prop :=
  ∀ n, (P6996127443863530800.a n : ℤ) = A334117 (n + 1)

end A334117

/-! ## A334117.P571160387029968820

`eq[1, A064680(n)/A082895(A257088(n))]`
-/

namespace A334117.P571160387029968820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064680 n : ℚ) / (A082895 (A257088 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A334117.P571160387029968820

namespace A334117

/-- `eq[1, A064680(n)/A082895(A257088(n))]` -/
def P571160387029968820.Spec : Prop :=
  ∀ n, (P571160387029968820.a n : ℤ) = A334117 (n + 1)

end A334117

/-! ## A334117.P14608074113710730757

`lt[A160413(3*n+2), A000203(n+1)]+1`
-/

namespace A334117.P14608074113710730757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A334117.P14608074113710730757

namespace A334117

/-- `lt[A160413(3*n+2), A000203(n+1)]+1` -/
def P14608074113710730757.Spec : Prop :=
  ∀ n, (P14608074113710730757.a n : ℤ) = A334117 (n + 1)

end A334117

/-!
# A334118: Primitive terms of A334117: odd numbers m such that sigma(m, -1) >= 3/2 with no proper divisors sharing this property.

The programs for A334118, there is no canonical definition to state claims against.
-/

/-! ## A334118.P4089066487490684202

`∩[A089025(n+1), A128693(n+1)]`
-/

namespace A334118.P4089066487490684202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334118.P4089066487490684202

/-! ## A334118.P960919704914151637

`∩[A089025(n+1), A392494(n+1)]`
-/

namespace A334118.P960919704914151637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334118.P960919704914151637

/-! ## A334118.P14905354650714760657

`∩[A328338(n+1), A334117(n+1)]`
-/

namespace A334118.P14905354650714760657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334118.P14905354650714760657

/-!
# A334119: Total area of all triangles such that p + q = 2*n, p < q (p, q prime), with base (q - p) and height q.

The programs for A334119, there is no canonical definition to state claims against.
-/

/-! ## A334119.P18092156997307243647

`A334065(n+1)-A334079(n+1)`
-/

namespace A334119.P18092156997307243647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334065 (n + 1) - A334079 (n + 1)

end

end A334119.P18092156997307243647

/-! ## A334119.P5611001070776298219

`(n+1)*Δ[A279726(A028310(n))]-A334079(n+1)`
-/

namespace A334119.P5611001070776298219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A334079 (n + 1)

end

end A334119.P5611001070776298219

/-! ## A334119.P6682443908725148151

`(n+1)*Δ[A279726(A000007(n)+n)]-A334079(n+1)`
-/

namespace A334119.P6682443908725148151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A334079 (n + 1)

end

end A334119.P6682443908725148151

/-! ## A334119.P17737584356657886506

`(n+1)*A187619(abs(1-n)+2)-A334079(n+1)`
-/

namespace A334119.P17737584356657886506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A187619 (|1 - (n : ℤ)| + 2).toNat - A334079 (n + 1)

end

end A334119.P17737584356657886506

/-! ## A334119.P3349690010334549608

`(n+1)*lcm(2, A187619(A028310(n)+1))-A334079(n+1)`
-/

namespace A334119.P3349690010334549608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Int.lcm 2 (A187619 (A028310 n + 1).toNat) : ℤ) - A334079 (n + 1)

end

end A334119.P3349690010334549608

/-! ## A334119.P7353582595110149277

`A303232(2*(n+1))/2`
-/

namespace A334119.P7353582595110149277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303232 (2 * (n + 1)) : ℚ) / 2

end

end A334119.P7353582595110149277

/-! ## A334119.P12273278066429229835

`(n+1)*Δ[A279726(A233583(n+1))]-A334079(n+1)`
-/

namespace A334119.P12273278066429229835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A334079 (n + 1)

end

end A334119.P12273278066429229835

/-!
# A334120: Sum of the largest side lengths of all primitive Heronian triangles with perimeter A096468(n).

The programs for A334120, there is no canonical definition to state claims against.
-/

/-! ## A334120.P15708926960989816042

`A330874(n+1)+A334018(n+1)-A334970(n+1)`
-/

namespace A334120.P15708926960989816042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330874 (n + 1) + (A334018 (n + 1) - A334970 (n + 1))

end

end A334120.P15708926960989816042

/-!
# A334122: a(n) is the sum of all primes <= n, mod n.

The programs for A334122, the canonical program `A334122.P15893402239212662447` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334122 has offset 1).

The definition of A334122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334122.P13428232957044574481

`A034387(n+1)%(n+1)`
-/

namespace A334122.P13428232957044574481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034387 (n + 1)) (n + 1 : ℤ)

end

end A334122.P13428232957044574481

namespace A334122

/-- `A034387(n+1)%(n+1)` -/
def P13428232957044574481.Spec : Prop :=
  ∀ n, P13428232957044574481.a n = A334122 (n + 1)

end A334122

/-! ## A334122.P1892214453540524427

`∑[A061397(n+1)]%(n+1)`
-/

namespace A334122.P1892214453540524427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A334122.P1892214453540524427

namespace A334122

/-- `∑[A061397(n+1)]%(n+1)` -/
def P1892214453540524427.Spec : Prop :=
  ∀ n, P1892214453540524427.a n = A334122 (n + 1)

end A334122

/-! ## A334122.P15893402239212662447

`(∑[A171511(n+1)]+n)%(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334122

/-- `(∑[A171511(n+1)]+n)%(n+1)` -/
def P15893402239212662447.Spec : Prop :=
  ∀ n, P15893402239212662447.a n = A334122 (n + 1)

theorem P15893402239212662447.correct : P15893402239212662447.Spec := by
  intro n
  simp only [A334122, Nat.add_sub_cancel]

end A334122

/-! ## A334122.P11119565770642196278

`∑[n*char[A000040(n+1)]]%(n+1)`
-/

namespace A334122.P11119565770642196278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A334122.P11119565770642196278

namespace A334122

/-- `∑[n*char[A000040(n+1)]]%(n+1)` -/
def P11119565770642196278.Spec : Prop :=
  ∀ n, (P11119565770642196278.a n : ℤ) = A334122 (n + 1)

end A334122

/-! ## A334122.P3062238980809237220

`∑[(n+1)*A010051(n+1)]%(n+1)`
-/

namespace A334122.P3062238980809237220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A334122.P3062238980809237220

namespace A334122

/-- `∑[(n+1)*A010051(n+1)]%(n+1)` -/
def P3062238980809237220.Spec : Prop :=
  ∀ n, P3062238980809237220.a n = A334122 (n + 1)

end A334122

/-! ## A334122.P2769388605488467916

`∑[(n+1)%A014963(n+1)²]%(n+1)`
-/

namespace A334122.P2769388605488467916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A334122.P2769388605488467916

namespace A334122

/-- `∑[(n+1)%A014963(n+1)²]%(n+1)` -/
def P2769388605488467916.Spec : Prop :=
  ∀ n, P2769388605488467916.a n = A334122 (n + 1)

end A334122

/-! ## A334122.P7241287106114791571

`A007504(A230980(n))%(n+1)`
-/

namespace A334122.P7241287106114791571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A230980 n).toNat) (n + 1 : ℤ)

end

end A334122.P7241287106114791571

namespace A334122

/-- `A007504(A230980(n))%(n+1)` -/
def P7241287106114791571.Spec : Prop :=
  ∀ n, P7241287106114791571.a n = A334122 (n + 1)

end A334122

/-! ## A334122.P7403732630828749424

`A007504(A000720(n+1))%(n+1)`
-/

namespace A334122.P7403732630828749424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A000720 (n + 1)).toNat) (n + 1 : ℤ)

end

end A334122.P7403732630828749424

namespace A334122

/-- `A007504(A000720(n+1))%(n+1)` -/
def P7403732630828749424.Spec : Prop :=
  ∀ n, P7403732630828749424.a n = A334122 (n + 1)

end A334122

/-! ## A334122.P11365427670748958320

`A007504(∑[A010051(n+1)])%(n+1)`
-/

namespace A334122.P11365427670748958320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (n + 1 : ℤ)

end

end A334122.P11365427670748958320

namespace A334122

/-- `A007504(∑[A010051(n+1)])%(n+1)` -/
def P11365427670748958320.Spec : Prop :=
  ∀ n, P11365427670748958320.a n = A334122 (n + 1)

end A334122

/-! ## A334122.P7028539910829156255

`∑[A000203(A089026(n+1))]%(n+1)`
-/

namespace A334122.P7028539910829156255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A334122.P7028539910829156255

namespace A334122

/-- `∑[A000203(A089026(n+1))]%(n+1)` -/
def P7028539910829156255.Spec : Prop :=
  ∀ n, P7028539910829156255.a n = A334122 (n + 1)

end A334122

/-! ## A334122.P12039517734826715816

`A007504(∑[char[A006530(n+2)]])%(n+1)`
-/

namespace A334122.P12039517734826715816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A334122.P12039517734826715816

namespace A334122

/-- `A007504(∑[char[A006530(n+2)]])%(n+1)` -/
def P12039517734826715816.Spec : Prop :=
  ∀ n, P12039517734826715816.a n = A334122 (n + 1)

end A334122

/-! ## A334122.P263900791326350232

`A007504(n-∑[char[A018252(n+1)]])%(n+1)`
-/

namespace A334122.P263900791326350232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n - ∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A334122.P263900791326350232

namespace A334122

/-- `A007504(n-∑[char[A018252(n+1)]])%(n+1)` -/
def P263900791326350232.Spec : Prop :=
  ∀ n, P263900791326350232.a n = A334122 (n + 1)

end A334122

/-! ## A334122.P15285362132472933272

`A063960(2*n+1)%(n+1)`
-/

namespace A334122.P15285362132472933272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063960 (2 * n + 1)) (n + 1 : ℤ)

end

end A334122.P15285362132472933272

namespace A334122

/-- `A063960(2*n+1)%(n+1)` -/
def P15285362132472933272.Spec : Prop :=
  ∀ n, P15285362132472933272.a n = A334122 (n + 1)

end A334122

/-!
# A334123: Number of labeled tournaments on n vertices with the maximum number of Hamiltonian paths.

The programs for A334123, there is no canonical definition to state claims against.
-/

/-! ## A334123.P6838678581004036075

`4*gcd(2, n)*n*a(n-2)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A334123.P6838678581004036075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  4 * Nat.gcd 2 n * (n * a (n - 2))

end

end A334123.P6838678581004036075

/-!
# A334124: a(n) = 2^n * sqrt(Resultant(U_{2*n}(x/2), T_{2*n}(i*x/2))), where T_n(x) is a Chebyshev polynomial of the first kind, U_n(x) is a Chebyshev polynomial of the second kind and i = sqrt(-1).

The programs for A334124, there is no canonical definition to state claims against.
-/

/-! ## A334124.P4734196917023542827

`record[gcd(A051159(n+3), A256045(n+1))]`
-/

namespace A334124.P4734196917023542827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051159 (n + 3)) (A256045 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334124.P4734196917023542827

/-!
# A334125: Number of subsets of {1, 3, ..., 2*n-1} which sum to 0 modulo 2*n-1.

The programs for A334125, there is no canonical definition to state claims against.
-/

/-! ## A334125.P5016155058954883920

`2*abs(A042980(2*n+1)-A042979(2*n+1))`
-/

namespace A334125.P5016155058954883920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |A042980 (2 * n + 1) - A042979 (2 * n + 1)|

end

end A334125.P5016155058954883920

/-! ## A334125.P16655488495879510848

`abs(2*(2*A042980(2*n+1)-A000048(2*n+1)))`
-/

namespace A334125.P16655488495879510848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (2 * A042980 (2 * n + 1) - A000048 (2 * n + 1))|

end

end A334125.P16655488495879510848

/-! ## A334125.P12581704899898839161

`abs(2*(A000048(2*n+1)-2*A042979(2*n+1)))`
-/

namespace A334125.P12581704899898839161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A000048 (2 * n + 1) - 2 * A042979 (2 * n + 1))|

end

end A334125.P12581704899898839161

/-! ## A334125.P4794155553215889884

`abs(2*A178738(n+1))`
-/

namespace A334125.P4794155553215889884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A178738 (n + 1)|

end

end A334125.P4794155553215889884

/-! ## A334125.P6857283330654552218

`gcd(2*A178738(n+1), A008683(72*n+32))`
-/

namespace A334125.P6857283330654552218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A178738 (n + 1)) (A008683 (72 * n + 32))

end

end A334125.P6857283330654552218

/-!
# A334129: Numbers that can be written as a product of one or more consecutive triangular numbers.

The programs for A334129, there is no canonical definition to state claims against.
-/

/-! ## A334129.P8092292427120719620

`eq[A002322(A028275(n)), A080934(n)]`
-/

namespace A334129.P8092292427120719620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A028275 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334129.P8092292427120719620

/-! ## A334129.P2220088228695046632

`eq[A080934(n), A134478(A007318(n))]`
-/

namespace A334129.P2220088228695046632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A007318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334129.P2220088228695046632

/-! ## A334129.P18099878093142695239

`eq[A003991(A007318(n)), A288942(n)]`
-/

namespace A334129.P18099878093142695239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334129.P18099878093142695239

/-! ## A334129.P3962112025936652087

`eq[A002322(A028275(n)), A287847(n)]`
-/

namespace A334129.P3962112025936652087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A028275 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334129.P3962112025936652087

/-! ## A334129.P3684894486046926173

`eq[A002322(A028275(n)), A288942(n)]`
-/

namespace A334129.P3684894486046926173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A028275 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334129.P3684894486046926173

/-!
# A334130: Numbers that can be written as a product of distinct triangular numbers.

The programs for A334130, there is no canonical definition to state claims against.
-/

/-! ## A334130.P6261692371389810862

`A054731(a(floor(5/A127100(n+1)))+n)` with `a(0)=0, a(1)=1`
-/

namespace A334130.P6261692371389810862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A054731 (a ⌊5 / (A127100 (n + 1) : ℚ)⌋.toNat + (n : ℤ)).toNat

end

end A334130.P6261692371389810862

/-! ## A334130.P13761505752111140780

`A085782(comp[A056239(14^∑{e}[n+1, #])])`
-/

namespace A334130.P13761505752111140780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (14 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085782 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A334130.P13761505752111140780

/-! ## A334130.P7072281377548648150

`eq[A080852(n), A100226(n)]`
-/

namespace A334130.P7072281377548648150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334130.P7072281377548648150

/-! ## A334130.P15126403858727926168

`eq[A100224(n), A228147(n)]`
-/

namespace A334130.P15126403858727926168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228147 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334130.P15126403858727926168

/-! ## A334130.P8930834406779746919

`eq[A027422(n), A382100(n)]`
-/

namespace A334130.P8930834406779746919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334130.P8930834406779746919

/-!
# A334131: Numbers that can be written as a product of distinct repunits.

The programs for A334131, there is no canonical definition to state claims against.
-/

/-! ## A334131.P8421370628463973324

`record[A102659(A000005(n+1))-A347615(n)]`
-/

namespace A334131.P8421370628463973324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102659 (A000005 (n + 1)).toNat - A347615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334131.P8421370628463973324

/-! ## A334131.P9024770786111246627

`∪[A002275(n), A274766(n)]%A174356(3*n+1)`
-/

namespace A334131.P9024770786111246627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A174356 (3 * n + 1))

end

end A334131.P9024770786111246627

/-!
# A334132: Smallest prime factor of n-th term in Look and Say sequence A005150, with a(1)=1.

The programs for A334132, there is no canonical definition to state claims against.
-/

/-! ## A334132.P9033223037310482073

`gcd(A005150(n+1), A146074(A006881(n+1)))`
-/

namespace A334132.P9033223037310482073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005150 (n + 1)) (A146074 (A006881 (n + 1)).toNat)

end

end A334132.P9033223037310482073

/-!
# A334133: Numbers k > 2 such that gpf(A111076(k)^lambda(k) - 1) = gpf(lambda(k) + 1); where gpf is the greatest prime factor (A006530), and lambda = A002322 is the Carmichael function.

The programs for A334133, there is no canonical definition to state claims against.
-/

/-! ## A334133.P4017989793060567704

`A198454(∑[A000010(n+2)])+1`
-/

namespace A334133.P4017989793060567704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198454 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A334133.P4017989793060567704

/-! ## A334133.P12519761888406937920

`∑[gcd(A260616(n+2), A260651(3*n+5))]`
-/

namespace A334133.P12519761888406937920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260616 (n + 2)) (A260651 (3 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334133.P12519761888406937920

/-! ## A334133.P7207400984374110804

`A277024(A141523(n))+A184835(n+1)`
-/

namespace A334133.P7207400984374110804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 (A141523 n).toNat + A184835 (n + 1)

end

end A334133.P7207400984374110804

/-!
# A334134: Number of integer-sided triangles with perimeter n whose side lengths can be written as the sum of two primes in the same number of ways.

The programs for A334134, there is no canonical definition to state claims against.
-/

/-! ## A334134.P1259502461408717793

`A324904(A080248(p?[A155457(n)]))`
-/

namespace A334134.P1259502461408717793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (A080248 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A334134.P1259502461408717793

/-! ## A334134.P11419061472508220463

`A014852(2*n+5)%Δ[A014873(n+1)]`
-/

namespace A334134.P11419061472508220463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014852 (2 * n + 5)) (f1 (n + 1) - f1 n)

end

end A334134.P11419061472508220463

/-! ## A334134.P5281886913222165555

`A217869(A186421(A000041(n)))`
-/

namespace A334134.P5281886913222165555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (A186421 (A000041 n).toNat).toNat

end

end A334134.P5281886913222165555

/-! ## A334134.P15500497555576276247

`A217869(A186421(A213598(n)))`
-/

namespace A334134.P15500497555576276247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (A186421 (A213598 n).toNat).toNat

end

end A334134.P15500497555576276247

/-! ## A334134.P4269246430029062637

`A196564(A037861(n)+A018177(n))`
-/

namespace A334134.P4269246430029062637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A037861 n + A018177 n).toNat

end

end A334134.P4269246430029062637

/-!
# A334135: Number of dimer tilings of a 2*n x 4 Moebius strip.

The programs for A334135, the canonical program `A334135.P14503852507497789286` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334135 has offset 0).

The definition of A334135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334135.P14503852507497789286

`14*a(n-1)-34*a(n-2)+14*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=71, a(3)=769`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A334135

/-- `14*a(n-1)-34*a(n-2)+14*a(n-3)-a(n-4)` -/
def P14503852507497789286.Spec : Prop :=
  ∀ n, P14503852507497789286.a n = A334135 n

theorem P14503852507497789286.correct : P14503852507497789286.Spec := by
  intro n
  simp only [A334135]

end A334135

/-! ## A334135.P1119668160064381785

`A028469(n)/A001835(n+1)`
-/

namespace A334135.P1119668160064381785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028469 n : ℚ) / (A001835 (n + 1) : ℚ)

end

end A334135.P1119668160064381785

namespace A334135

/-- `A028469(n)/A001835(n+1)` -/
def P1119668160064381785.Spec : Prop :=
  ∀ n, P1119668160064381785.a n = (A334135 n : ℚ)

end A334135

/-! ## A334135.P10444316801127215851

`A189004(2*n)/Δ[A001353(n)]`
-/

namespace A334135.P10444316801127215851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189004 (2 * n) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A334135.P10444316801127215851

namespace A334135

/-- `A189004(2*n)/Δ[A001353(n)]` -/
def P10444316801127215851.Spec : Prop :=
  ∀ n, P10444316801127215851.a n = (A334135 n : ℚ)

end A334135

/-! ## A334135.P11911694354909482374

`A189004(2*n)/Δ[A072110(n)]`
-/

namespace A334135.P11911694354909482374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072110 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189004 (2 * n) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A334135.P11911694354909482374

namespace A334135

/-- `A189004(2*n)/Δ[A072110(n)]` -/
def P11911694354909482374.Spec : Prop :=
  ∀ n, P11911694354909482374.a n = (A334135 n : ℚ)

end A334135

/-! ## A334135.P1004521305941190343

`A189004(2*n)/A002530(2*n+1)`
-/

namespace A334135.P1004521305941190343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189004 (2 * n) : ℚ) / (A002530 (2 * n + 1) : ℚ)

end

end A334135.P1004521305941190343

namespace A334135

/-- `A189004(2*n)/A002530(2*n+1)` -/
def P1004521305941190343.Spec : Prop :=
  ∀ n, P1004521305941190343.a n = (A334135 n : ℚ)

end A334135

/-!
# A334136: a(n) = (n-1)*sigma(n) where sigma is the sum of divisors A000203.

The programs for A334136, the canonical program `A334136.P14433116544812876041` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334136 has offset 1).

The definition of A334136 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334136.P14433116544812876041

`A064987(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A334136

/-- `A064987(n+1)-A000203(n+1)` -/
def P14433116544812876041.Spec : Prop :=
  ∀ n, P14433116544812876041.a n = A334136 (n + 1)

theorem P14433116544812876041.correct : P14433116544812876041.Spec := by
  intro n
  simp only [A334136, Nat.add_sub_cancel]

end A334136

/-! ## A334136.P16278708422705805697

`∑{d}[n+1, n*#]`
-/

namespace A334136.P16278708422705805697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), n * d

end

end A334136.P16278708422705805697

namespace A334136

/-- `∑{d}[n+1, n*#]` -/
def P16278708422705805697.Spec : Prop :=
  ∀ n, (P16278708422705805697.a n : ℤ) = A334136 (n + 1)

end A334136

/-! ## A334136.P7597062160253020739

`n*∑{d}[xor(n, -1), #]`
-/

namespace A334136.P7597062160253020739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A334136.P7597062160253020739

namespace A334136

/-- `n*∑{d}[xor(n, -1), #]` -/
def P7597062160253020739.Spec : Prop :=
  ∀ n, (P7597062160253020739.a n : ℤ) = A334136 (n + 1)

end A334136

/-! ## A334136.P15100767176824902926

`lcm(n, ∑{d}[n+1, lcm(n, #)])`
-/

namespace A334136.P15100767176824902926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∑ d ∈ Nat.divisors (f1 n), Nat.lcm n d)

end

end A334136.P15100767176824902926

namespace A334136

/-- `lcm(n, ∑{d}[n+1, lcm(n, #)])` -/
def P15100767176824902926.Spec : Prop :=
  ∀ n, (P15100767176824902926.a n : ℤ) = A334136 (n + 1)

end A334136

/-! ## A334136.P2705911980005907574

`n/∑{d}[n+1, #]^-1`
-/

namespace A334136.P2705911980005907574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A334136.P2705911980005907574

namespace A334136

/-- `n/∑{d}[n+1, #]^-1` -/
def P2705911980005907574.Spec : Prop :=
  ∀ n, P2705911980005907574.a n = (A334136 (n + 1) : ℚ)

end A334136

/-! ## A334136.P11485784957713876294

`n*∑{d}[2*n-(n-1), #]`
-/

namespace A334136.P11485784957713876294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A334136.P11485784957713876294

namespace A334136

/-- `n*∑{d}[2*n-(n-1), #]` -/
def P11485784957713876294.Spec : Prop :=
  ∀ n, (P11485784957713876294.a n : ℤ) = A334136 (n + 1)

end A334136

/-! ## A334136.P11021569751558813507

`n*Δ[A160664(n)]`
-/

namespace A334136.P11021569751558813507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A334136.P11021569751558813507

namespace A334136

/-- `n*Δ[A160664(n)]` -/
def P11021569751558813507.Spec : Prop :=
  ∀ n, P11021569751558813507.a n = A334136 (n + 1)

end A334136

/-! ## A334136.P10996388610492606851

`A000203(n+1)*n`
-/

namespace A334136.P10996388610492606851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (n : ℤ)

end

end A334136.P10996388610492606851

namespace A334136

/-- `A000203(n+1)*n` -/
def P10996388610492606851.Spec : Prop :=
  ∀ n, P10996388610492606851.a n = A334136 (n + 1)

end A334136

/-! ## A334136.P5201544425774648099

`abs(n*Δ[A330725(n)])`
-/

namespace A334136.P5201544425774648099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A334136.P5201544425774648099

namespace A334136

/-- `abs(n*Δ[A330725(n)])` -/
def P5201544425774648099.Spec : Prop :=
  ∀ n, P5201544425774648099.a n = A334136 (n + 1)

end A334136

/-! ## A334136.P8205688918197690936

`n*A245092(Δ[n²])`
-/

namespace A334136.P8205688918197690936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A334136.P8205688918197690936

namespace A334136

/-- `n*A245092(Δ[n²])` -/
def P8205688918197690936.Spec : Prop :=
  ∀ n, P8205688918197690936.a n = A334136 (n + 1)

end A334136

/-! ## A334136.P12172952535186271391

`abs(n*A143348(n+1))`
-/

namespace A334136.P12172952535186271391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A143348 (n + 1)|

end

end A334136.P12172952535186271391

namespace A334136

/-- `abs(n*A143348(n+1))` -/
def P12172952535186271391.Spec : Prop :=
  ∀ n, P12172952535186271391.a n = A334136 (n + 1)

end A334136

/-! ## A334136.P5712559025774094019

`n*sqrt(A072861(n+1))`
-/

namespace A334136.P5712559025774094019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A072861 (n + 1) : ℝ)

end

end A334136.P5712559025774094019

namespace A334136

/-- `n*sqrt(A072861(n+1))` -/
def P5712559025774094019.Spec : Prop :=
  ∀ n, P5712559025774094019.a n = (A334136 (n + 1) : ℝ)

end A334136

/-! ## A334136.P10972679764384548710

`n*∑[A340793(n+1)]`
-/

namespace A334136.P10972679764384548710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334136.P10972679764384548710

namespace A334136

/-- `n*∑[A340793(n+1)]` -/
def P10972679764384548710.Spec : Prop :=
  ∀ n, P10972679764384548710.a n = A334136 (n + 1)

end A334136

/-! ## A334136.P12781205403140855030

`n*(A039653(n+1)+1)`
-/

namespace A334136.P12781205403140855030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A039653 (n + 1) + 1)

end

end A334136.P12781205403140855030

namespace A334136

/-- `n*(A039653(n+1)+1)` -/
def P12781205403140855030.Spec : Prop :=
  ∀ n, P12781205403140855030.a n = A334136 (n + 1)

end A334136

/-! ## A334136.P14195376025012035074

`n*(A088580(n+1)-1)`
-/

namespace A334136.P14195376025012035074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A088580 (n + 1) - 1)

end

end A334136.P14195376025012035074

namespace A334136

/-- `n*(A088580(n+1)-1)` -/
def P14195376025012035074.Spec : Prop :=
  ∀ n, P14195376025012035074.a n = A334136 (n + 1)

end A334136

/-! ## A334136.P12397820808569679750

`n/2*A074400(n+1)`
-/

namespace A334136.P12397820808569679750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A334136.P12397820808569679750

namespace A334136

/-- `n/2*A074400(n+1)` -/
def P12397820808569679750.Spec : Prop :=
  ∀ n, P12397820808569679750.a n = (A334136 (n + 1) : ℚ)

end A334136

/-! ## A334136.P14054337820410393572

`n/3*A272027(n+1)`
-/

namespace A334136.P14054337820410393572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A272027 (n + 1) : ℚ)

end

end A334136.P14054337820410393572

namespace A334136

/-- `n/3*A272027(n+1)` -/
def P14054337820410393572.Spec : Prop :=
  ∀ n, P14054337820410393572.a n = (A334136 (n + 1) : ℚ)

end A334136

/-! ## A334136.P11617299783038626111

`n/4*A239050(n+1)`
-/

namespace A334136.P11617299783038626111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A239050 (n + 1) : ℚ)

end

end A334136.P11617299783038626111

namespace A334136

/-- `n/4*A239050(n+1)` -/
def P11617299783038626111.Spec : Prop :=
  ∀ n, P11617299783038626111.a n = (A334136 (n + 1) : ℚ)

end A334136

/-! ## A334136.P15067866100471393002

`n/5*A274535(n+1)`
-/

namespace A334136.P15067866100471393002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5 * (A274535 (n + 1) : ℚ)

end

end A334136.P15067866100471393002

namespace A334136

/-- `n/5*A274535(n+1)` -/
def P15067866100471393002.Spec : Prop :=
  ∀ n, P15067866100471393002.a n = (A334136 (n + 1) : ℚ)

end A334136

/-! ## A334136.P4953449754029710718

`n*sqrt(sqrt(A361179(n+1)))`
-/

namespace A334136.P4953449754029710718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (Real.sqrt (A361179 (n + 1) : ℝ))

end

end A334136.P4953449754029710718

namespace A334136

/-- `n*sqrt(sqrt(A361179(n+1)))` -/
def P4953449754029710718.Spec : Prop :=
  ∀ n, P4953449754029710718.a n = (A334136 (n + 1) : ℝ)

end A334136

/-!
# A334139: Numbers that are equal to the LCM of their palindromic divisors.

The programs for A334139, there is no canonical definition to state claims against.
-/

/-! ## A334139.P11850002547030874134

`record[A087999(n+1)]`
-/

namespace A334139.P11850002547030874134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334139.P11850002547030874134

/-! ## A334139.P16092054863551305362

`eq[n, A087999(abs(1-n)+1)]`
-/

namespace A334139.P16092054863551305362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334139.P16092054863551305362

/-! ## A334139.P5764054805134970429

`∪[A056525(n+1), A178864(n+1)]`
-/

namespace A334139.P5764054805134970429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334139.P5764054805134970429

/-! ## A334139.P13250338261751971900

`∪[A083136(n+1), A178864(n+1)]`
-/

namespace A334139.P13250338261751971900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334139.P13250338261751971900

/-! ## A334139.P9109747182227316607

`∪[A083158(n+1), A178864(n+1)]`
-/

namespace A334139.P9109747182227316607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334139.P9109747182227316607

/-! ## A334139.P1680642021919061758

`∪[A098897(n+1), A178864(n+1)]`
-/

namespace A334139.P1680642021919061758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334139.P1680642021919061758

/-! ## A334139.P3874800642615992299

`∪[A110751(n+1), A178864(n+1)]`
-/

namespace A334139.P3874800642615992299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334139.P3874800642615992299

/-! ## A334139.P12469846828765792531

`∪[A178864(n+1), A282115(n+1)]`
-/

namespace A334139.P12469846828765792531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334139.P12469846828765792531

/-!
# A334140: Numbers that can be written as a product of distinct palindromes.

The programs for A334140, there is no canonical definition to state claims against.
-/

/-! ## A334140.P7949856339380283125

`lt[A302643(n+4), A219231(A074206(n))]`
-/

namespace A334140.P7949856339380283125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219231 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334140.P7949856339380283125

/-! ## A334140.P418791117108751274

`lt[A163483(n+4), A203612(A326842(n))]`
-/

namespace A334140.P418791117108751274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163483 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203612 (A326842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334140.P418791117108751274

/-! ## A334140.P5023060787303603476

`lt[A135331(A051724(n)), A375397(n+1)]`
-/

namespace A334140.P5023060787303603476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135331 (A051724 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334140.P5023060787303603476

/-! ## A334140.P876719217862627730

`lt[A112528(A281541(n+1)), A336669(n)]`
-/

namespace A334140.P876719217862627730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112528 (A281541 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334140.P876719217862627730

/-! ## A334140.P13077520103854249419

`lt[A135331(A051724(n)), A250120(3*(n+1))]`
-/

namespace A334140.P13077520103854249419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135331 (A051724 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334140.P13077520103854249419

/-!
# A334141: Numbers that are the product of distinct twin primes.

The programs for A334141, there is no canonical definition to state claims against.
-/

/-! ## A334141.P2832207651281690648

`filter[A062505(n+1), A008966(#)]`
-/

namespace A334141.P2832207651281690648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A334141.P2832207651281690648

/-! ## A334141.P14735018473320879244

`filter[A062505(n+1), A323154(#)]`
-/

namespace A334141.P14735018473320879244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A334141.P14735018473320879244

/-! ## A334141.P7066552254099288951

`filter[A062505(n+1), A323239(#)]`
-/

namespace A334141.P7066552254099288951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A334141.P7066552254099288951

/-! ## A334141.P6447641930191992167

`filter[A062505(n+1), A353559(#)]`
-/

namespace A334141.P6447641930191992167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A334141.P6447641930191992167

/-! ## A334141.P5153071299410984567

`filter[A062505(n+1), A353627(#)]`
-/

namespace A334141.P5153071299410984567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A334141.P5153071299410984567

/-! ## A334141.P12598319821236217370

`filter[A062505(n+1), A359590(#)]`
-/

namespace A334141.P12598319821236217370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A334141.P12598319821236217370

/-! ## A334141.P6458055218144169814

`filter[A062505(n+1), A359592(#)]`
-/

namespace A334141.P6458055218144169814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A334141.P6458055218144169814

/-! ## A334141.P757651860116027988

`filter[A062505(n+1), A359834(#)]`
-/

namespace A334141.P757651860116027988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A334141.P757651860116027988

/-! ## A334141.P2066991122107578066

`∩[A056911(n+1), A062505(n+1)]`
-/

namespace A334141.P2066991122107578066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P2066991122107578066

/-! ## A334141.P16889934071505085179

`∩[A062505(n+1), A091428(n+1)]`
-/

namespace A334141.P16889934071505085179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P16889934071505085179

/-! ## A334141.P13454884780495438510

`∩[A062505(n+1), A354270(n+1)]`
-/

namespace A334141.P13454884780495438510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P13454884780495438510

/-! ## A334141.P5939629111760502304

`∩[A005117(n+1), A062505(n+1)]`
-/

namespace A334141.P5939629111760502304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P5939629111760502304

/-! ## A334141.P9100882175907061743

`∩[A062505(n+1), A064594(n+1)]`
-/

namespace A334141.P9100882175907061743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P9100882175907061743

/-! ## A334141.P3953904597909941693

`∩[A062505(n+1), A348506(n+1)]`
-/

namespace A334141.P3953904597909941693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P3953904597909941693

/-! ## A334141.P16673005609602599960

`∩[A062505(n+1), A348499(n+1)]`
-/

namespace A334141.P16673005609602599960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P16673005609602599960

/-! ## A334141.P17267185775608023481

`∩[A062505(n+1), A143719(n+1)]`
-/

namespace A334141.P17267185775608023481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P17267185775608023481

/-! ## A334141.P6890329747810626479

`∩[A062505(n+1), A349019(n+1)]`
-/

namespace A334141.P6890329747810626479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P6890329747810626479

/-! ## A334141.P15587157880748781977

`∩[A062505(n+1), A078779(n+1)]`
-/

namespace A334141.P15587157880748781977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P15587157880748781977

/-! ## A334141.P13564092903678934800

`∩[A062505(n+1), A122132(n+1)]`
-/

namespace A334141.P13564092903678934800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334141.P13564092903678934800

/-! ## A334141.P7393198804353028540

`record[A072963(A005117(n+1))]`
-/

namespace A334141.P7393198804353028540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334141.P7393198804353028540

/-!
# A334142: Indices of twin primes.

The programs for A334142, the canonical program `A334142.P14995440457120433005` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334142 has offset 1).

The definition of A334142 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A001097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334142.P14995440457120433005

`A000720(A001097(n+1)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A334142

/-- `A000720(A001097(n+1)+1)` -/
def P14995440457120433005.Spec : Prop :=
  ∀ n, P14995440457120433005.a n = A334142 (n + 1)

theorem P14995440457120433005.correct : P14995440457120433005.Spec := by
  intro n
  simp only [A334142, Nat.add_sub_cancel]

end A334142

/-! ## A334142.P15616310187580461155

`∪[A029707(n+1), A107770(n+1)]`
-/

namespace A334142.P15616310187580461155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334142.P15616310187580461155

namespace A334142

/-- `∪[A029707(n+1), A107770(n+1)]` -/
def P15616310187580461155.Spec : Prop :=
  ∀ n, (P15616310187580461155.a n : ℤ) = A334142 (n + 1)

end A334142

/-! ## A334142.P14064295208918687869

`lt[A046929(n+2), 2]+2`
-/

namespace A334142.P14064295208918687869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A334142.P14064295208918687869

namespace A334142

/-- `lt[A046929(n+2), 2]+2` -/
def P14064295208918687869.Spec : Prop :=
  ∀ n, (P14064295208918687869.a n : ℤ) = A334142 (n + 1)

end A334142

/-! ## A334142.P17680075116990846725

`eq[1, A000045(A237260(n+1))]`
-/

namespace A334142.P17680075116990846725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A237260 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334142.P17680075116990846725

namespace A334142

/-- `eq[1, A000045(A237260(n+1))]` -/
def P17680075116990846725.Spec : Prop :=
  ∀ n, (P17680075116990846725.a n : ℤ) = A334142 (n + 1)

end A334142

/-! ## A334142.P10073319964299042153

`eq[2, A272605(A237260(n+1)+1)]`
-/

namespace A334142.P10073319964299042153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272605 (A237260 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334142.P10073319964299042153

namespace A334142

/-- `eq[2, A272605(A237260(n+1)+1)]` -/
def P10073319964299042153.Spec : Prop :=
  ∀ n, (P10073319964299042153.a n : ℤ) = A334142 (n + 1)

end A334142

/-! ## A334142.P15450815124474884519

`A000720(A001097(n+1))`
-/

namespace A334142.P15450815124474884519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001097 (n + 1)).toNat

end

end A334142.P15450815124474884519

namespace A334142

/-- `A000720(A001097(n+1))` -/
def P15450815124474884519.Spec : Prop :=
  ∀ n, P15450815124474884519.a n = A334142 (n + 1)

end A334142

/-! ## A334142.P3203328604017396938

`A000720(A171821(n+2))`
-/

namespace A334142.P3203328604017396938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A171821 (n + 2)).toNat

end

end A334142.P3203328604017396938

namespace A334142

/-- `A000720(A171821(n+2))` -/
def P3203328604017396938.Spec : Prop :=
  ∀ n, P3203328604017396938.a n = A334142 (n + 1)

end A334142

/-! ## A334142.P567966892941772121

`A061395(p?[A001097(n+1)])`
-/

namespace A334142.P567966892941772121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A334142.P567966892941772121

namespace A334142

/-- `A061395(p?[A001097(n+1)])` -/
def P567966892941772121.Spec : Prop :=
  ∀ n, P567966892941772121.a n = A334142 (n + 1)

end A334142

/-! ## A334142.P2503804265899640937

`A061395(∏{d}[A001097(n+1), #])`
-/

namespace A334142.P2503804265899640937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A334142.P2503804265899640937

namespace A334142

/-- `A061395(∏{d}[A001097(n+1), #])` -/
def P2503804265899640937.Spec : Prop :=
  ∀ n, P2503804265899640937.a n = A334142 (n + 1)

end A334142

/-! ## A334142.P3020608230122180047

`A061395(2*A001097(n+1))`
-/

namespace A334142.P3020608230122180047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A001097 (n + 1)).toNat

end

end A334142.P3020608230122180047

namespace A334142

/-- `A061395(2*A001097(n+1))` -/
def P3020608230122180047.Spec : Prop :=
  ∀ n, P3020608230122180047.a n = A334142 (n + 1)

end A334142

/-! ## A334142.P2895220879863503003

`eq[1, A129950(A008578(n+1))]`
-/

namespace A334142.P2895220879863503003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334142.P2895220879863503003

namespace A334142

/-- `eq[1, A129950(A008578(n+1))]` -/
def P2895220879863503003.Spec : Prop :=
  ∀ n, (P2895220879863503003.a n : ℤ) = A334142 (n + 1)

end A334142

/-! ## A334142.P15344762235074800556

`A036234(A001097(n+1)-1)`
-/

namespace A334142.P15344762235074800556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A001097 (n + 1) - 1).toNat

end

end A334142.P15344762235074800556

namespace A334142

/-- `A036234(A001097(n+1)-1)` -/
def P15344762235074800556.Spec : Prop :=
  ∀ n, P15344762235074800556.a n = A334142 (n + 1)

end A334142

/-! ## A334142.P12198959495362405788

`A003963(A278972(n+1)/2)`
-/

namespace A334142.P12198959495362405788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((A278972 (n + 1) : ℚ) / 2)).toNat

end

end A334142.P12198959495362405788

namespace A334142

/-- `A003963(A278972(n+1)/2)` -/
def P12198959495362405788.Spec : Prop :=
  ∀ n, P12198959495362405788.a n = A334142 (n + 1)

end A334142

/-! ## A334142.P14492864987101861628

`A056239(or(1, A001097(n+1)))`
-/

namespace A334142.P14492864987101861628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A001097 (n + 1))).toNat

end

end A334142.P14492864987101861628

namespace A334142

/-- `A056239(or(1, A001097(n+1)))` -/
def P14492864987101861628.Spec : Prop :=
  ∀ n, P14492864987101861628.a n = A334142 (n + 1)

end A334142

/-! ## A334142.P3992355628155693568

`A036234(xor(1, A001097(n+1)))`
-/

namespace A334142.P3992355628155693568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.xor 1 (A001097 (n + 1))).toNat

end

end A334142.P3992355628155693568

namespace A334142

/-- `A036234(xor(1, A001097(n+1)))` -/
def P3992355628155693568.Spec : Prop :=
  ∀ n, P3992355628155693568.a n = A334142 (n + 1)

end A334142

/-! ## A334142.P72269684480899379

`lt[1, A072963(A000040(n+1))]+1`
-/

namespace A334142.P72269684480899379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334142.P72269684480899379

namespace A334142

/-- `lt[1, A072963(A000040(n+1))]+1` -/
def P72269684480899379.Spec : Prop :=
  ∀ n, (P72269684480899379.a n : ℤ) = A334142 (n + 1)

end A334142

/-! ## A334142.P498735555966854150

`record[(n+2)%(2*A072963(A000040(n+2)))]`
-/

namespace A334142.P498735555966854150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (2 * A072963 (A000040 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334142.P498735555966854150

namespace A334142

/-- `record[(n+2)%(2*A072963(A000040(n+2)))]` -/
def P498735555966854150.Spec : Prop :=
  ∀ n, P498735555966854150.a n = A334142 (n + 1)

end A334142

/-! ## A334142.P7763444147375322734

`lt[A019590(n+1), A164292(A008578(n+1))]`
-/

namespace A334142.P7763444147375322734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334142.P7763444147375322734

namespace A334142

/-- `lt[A019590(n+1), A164292(A008578(n+1))]` -/
def P7763444147375322734.Spec : Prop :=
  ∀ n, (P7763444147375322734.a n : ℤ) = A334142 (n + 1)

end A334142

/-! ## A334142.P14628267782200195771

`lt[A164292(n+1), 2*A164292(A008578(n+1))]`
-/

namespace A334142.P14628267782200195771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164292 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334142.P14628267782200195771

namespace A334142

/-- `lt[A164292(n+1), 2*A164292(A008578(n+1))]` -/
def P14628267782200195771.Spec : Prop :=
  ∀ n, (P14628267782200195771.a n : ℤ) = A334142 (n + 1)

end A334142

/-!
# A334143: a(n) = bitwise NOR of prime(n) and prime(n+1).

The programs for A334143, the canonical program `A334143.P15608283684406534922` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334143 has offset 1).

The definition of A334143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035327, A175329, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334143.P15608283684406534922

`A035327(A175329(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A334143

/-- `A035327(A175329(n+1))` -/
def P15608283684406534922.Spec : Prop :=
  ∀ n, P15608283684406534922.a n = A334143 (n + 1)

theorem P15608283684406534922.correct : P15608283684406534922.Spec := by
  intro n
  simp only [A334143, Nat.add_sub_cancel]

end A334143

/-! ## A334143.P12726729096909527263

`A334172(n+1)-A175330(n+1)`
-/

namespace A334143.P12726729096909527263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334172 (n + 1) - A175330 (n + 1)

end

end A334143.P12726729096909527263

namespace A334143

/-- `A334172(n+1)-A175330(n+1)` -/
def P12726729096909527263.Spec : Prop :=
  ∀ n, P12726729096909527263.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P7856706499111133797

`A334172(n+1)-and(A000040(n+1), A334172(n+1))`
-/

namespace A334143.P7856706499111133797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334172 (n + 1) - Int.land (A000040 (n + 1)) (A334172 (n + 1))

end

end A334143.P7856706499111133797

namespace A334143

/-- `A334172(n+1)-and(A000040(n+1), A334172(n+1))` -/
def P7856706499111133797.Spec : Prop :=
  ∀ n, P7856706499111133797.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P9419275582800161170

`A334172(n+1)-and(A045319(n+1), A334172(n+1))`
-/

namespace A334143.P9419275582800161170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334172 (n + 1) - Int.land (A045319 (n + 1)) (A334172 (n + 1))

end

end A334143.P9419275582800161170

namespace A334143

/-- `A334172(n+1)-and(A045319(n+1), A334172(n+1))` -/
def P9419275582800161170.Spec : Prop :=
  ∀ n, P9419275582800161170.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P18434777673808845800

`A334172(n+1)-and(A045344(n+1), A334172(n+1))`
-/

namespace A334143.P18434777673808845800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334172 (n + 1) - Int.land (A045344 (n + 1)) (A334172 (n + 1))

end

end A334143.P18434777673808845800

namespace A334143

/-- `A334172(n+1)-and(A045344(n+1), A334172(n+1))` -/
def P18434777673808845800.Spec : Prop :=
  ∀ n, P18434777673808845800.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P10135914685523102880

`A035327(or(p?[xor(1, n)], p?[2*n+1]))`
-/

namespace A334143.P10135914685523102880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Nat.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)))

end

end A334143.P10135914685523102880

namespace A334143

/-- `A035327(or(p?[xor(1, n)], p?[2*n+1]))` -/
def P10135914685523102880.Spec : Prop :=
  ∀ n, P10135914685523102880.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P5443998203696015369

`A035327(or(p?[n*n%2], p?[xor(1, n)]))`
-/

namespace A334143.P5443998203696015369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Nat.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)))

end

end A334143.P5443998203696015369

namespace A334143

/-- `A035327(or(p?[n*n%2], p?[xor(1, n)]))` -/
def P5443998203696015369.Spec : Prop :=
  ∀ n, P5443998203696015369.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P347646375876167886

`A035327(or(record[A000010(n+1)], p?[2*n+1]))`
-/

namespace A334143.P347646375876167886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)).toNat

end

end A334143.P347646375876167886

namespace A334143

/-- `A035327(or(record[A000010(n+1)], p?[2*n+1]))` -/
def P347646375876167886.Spec : Prop :=
  ∀ n, P347646375876167886.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P11395967712058371506

`A035327(or(A000040(n+1), A000040(n+2)))`
-/

namespace A334143.P11395967712058371506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.lor (A000040 (n + 1)) (A000040 (n + 2))).toNat

end

end A334143.P11395967712058371506

namespace A334143

/-- `A035327(or(A000040(n+1), A000040(n+2)))` -/
def P11395967712058371506.Spec : Prop :=
  ∀ n, P11395967712058371506.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P9168943332565226301

`A080079(or(A000040(n+1), A000040(n+2)))-1`
-/

namespace A334143.P9168943332565226301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (Int.lor (A000040 (n + 1)) (A000040 (n + 2))).toNat - 1

end

end A334143.P9168943332565226301

namespace A334143

/-- `A080079(or(A000040(n+1), A000040(n+2)))-1` -/
def P9168943332565226301.Spec : Prop :=
  ∀ n, P9168943332565226301.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P960202716110810235

`and(A145382(n+1), A334172(n+1))`
-/

namespace A334143.P960202716110810235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145382 (n + 1)) (A334172 (n + 1))

end

end A334143.P960202716110810235

namespace A334143

/-- `and(A145382(n+1), A334172(n+1))` -/
def P960202716110810235.Spec : Prop :=
  ∀ n, P960202716110810235.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P14376195217652856356

`A035327(A175330(n+1)+A112591(n+1))`
-/

namespace A334143.P14376195217652856356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A175330 (n + 1) + A112591 (n + 1)).toNat

end

end A334143.P14376195217652856356

namespace A334143

/-- `A035327(A175330(n+1)+A112591(n+1))` -/
def P14376195217652856356.Spec : Prop :=
  ∀ n, P14376195217652856356.a n = A334143 (n + 1)

end A334143

/-! ## A334143.P17535840726709057960

`A112591(n+1)+A334172(n+1)-A175329(n+1)`
-/

namespace A334143.P17535840726709057960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112591 (n + 1) + (A334172 (n + 1) - A175329 (n + 1))

end

end A334143.P17535840726709057960

namespace A334143

/-- `A112591(n+1)+A334172(n+1)-A175329(n+1)` -/
def P17535840726709057960.Spec : Prop :=
  ∀ n, P17535840726709057960.a n = A334143 (n + 1)

end A334143

/-!
# A334145: a(n) = A335978(n)/9.

The programs for A334145, there is no canonical definition to state claims against.
-/

/-! ## A334145.P18182029706424240127

`A335978(n+1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334145.P18182029706424240127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335978 (n + 1) : ℚ) / 9

end

end A334145.P18182029706424240127

/-! ## A334145.P9693569204320617663

`A106610(A335978(n+1))`
-/

namespace A334145.P9693569204320617663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A335978 (n + 1)).toNat

end

end A334145.P9693569204320617663

/-! ## A334145.P6552341988095988154

`lt[A008585(A062003(n)), A059643(3*n+4)]`
-/

namespace A334145.P6552341988095988154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A062003 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059643 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334145.P6552341988095988154

/-! ## A334145.P10415959713731418310

`lt[A250120(A062003(n)), A250193(3*n+4)]`
-/

namespace A334145.P10415959713731418310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A062003 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250193 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334145.P10415959713731418310

/-! ## A334145.P6126247088635889087

`lt[A062003(A118759(n)), A191933(n+1)]`
-/

namespace A334145.P6126247088635889087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 (A118759 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334145.P6126247088635889087

/-!
# A334146: Numbers with at least two prime factors greater than 3 counted with multiplicity.

The programs for A334146, there is no canonical definition to state claims against.
-/

/-! ## A334146.P4196888272119120021

`lt[7, A069283(lcm(9, n))]`
-/

namespace A334146.P4196888272119120021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (Nat.lcm 9 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334146.P4196888272119120021

/-! ## A334146.P1257518913175227883

`lt[1, A106799(n+1)]+1`
-/

namespace A334146.P1257518913175227883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334146.P1257518913175227883

/-! ## A334146.P10960980281069331726

`lt[2, A035218(n+1)]+1`
-/

namespace A334146.P10960980281069331726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334146.P10960980281069331726

/-! ## A334146.P2383756345944997194

`lt[3, A087039(n+1)]+1`
-/

namespace A334146.P2383756345944997194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334146.P2383756345944997194

/-! ## A334146.P10932950061402293722

`lt[3, A099313(n+1)]+1`
-/

namespace A334146.P10932950061402293722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099313 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334146.P10932950061402293722

/-! ## A334146.P17397926384311973269

`lt[2, A320015(2*(n+1))]+1`
-/

namespace A334146.P17397926384311973269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334146.P17397926384311973269

/-! ## A334146.P9845966861697263939

`eq[3, A257990(A008706(n))]`
-/

namespace A334146.P9845966861697263939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334146.P9845966861697263939

/-! ## A334146.P12172372488603400881

`lt[1, A001222(A065330(n+1))]+1`
-/

namespace A334146.P12172372488603400881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065330 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334146.P12172372488603400881

/-! ## A334146.P17508547596197366383

`lt[3, A006530((n+1)/A006530(n+1))]+1`
-/

namespace A334146.P17508547596197366383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A334146.P17508547596197366383

/-!
# A334147: Numbers which can be written uniquely as x^4 + y*(2y+1) + z*(3z+1), where x,y,z are integers with x>=0.

The programs for A334147, there is no canonical definition to state claims against.
-/

/-! ## A334147.P17290793568082537752

`eq[1, A334138(n)]`
-/

namespace A334147.P17290793568082537752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334138 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334147.P17290793568082537752

/-! ## A334147.P2427416318688835951

`lt[A054440(A334138(n)²), 1]`
-/

namespace A334147.P2427416318688835951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054440 (A334138 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334147.P2427416318688835951

/-! ## A334147.P10728938131606277942

`lt[A257628(n), A317300(A334138(n)²)]`
-/

namespace A334147.P10728938131606277942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 (A334138 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334147.P10728938131606277942

/-! ## A334147.P11155711470930702359

`lt[A054440(A334138(n)), A040001(n+1)]`
-/

namespace A334147.P11155711470930702359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054440 (A334138 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334147.P11155711470930702359

/-! ## A334147.P13935304619034528435

`lt[A040001(n)*A054440(A334138(n)), 1]`
-/

namespace A334147.P13935304619034528435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A054440 (A334138 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334147.P13935304619034528435

/-!
# A334150: Primes p such that p AND q = 1, where q is the next prime after p and AND is the bitwise operation.

The programs for A334150, there is no canonical definition to state claims against.
-/

/-! ## A334150.P1426916253374795406

`A014234(A214415(n))`
-/

namespace A334150.P1426916253374795406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (A214415 n).toNat

end

end A334150.P1426916253374795406

/-! ## A334150.P1582533529631484925

`A000040(A366550(n+1))`
-/

namespace A334150.P1582533529631484925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A366550 (n + 1)).toNat

end

end A334150.P1582533529631484925

/-!
# A334151: Numbers k such that k / rad(k) > m / rad(m) for all m < k.

The programs for A334151, there is no canonical definition to state claims against.
-/

/-! ## A334151.P16466044893070336782

`A065642(record[A306458(n+1)])`
-/

namespace A334151.P16466044893070336782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334151.P16466044893070336782

/-! ## A334151.P17912842964531593489

`A065642(record[A001597(n+1)/A025478(n+1)])`
-/

namespace A334151.P17912842964531593489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℚ) / (A025478 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A334151.P17912842964531593489

/-! ## A334151.P17222369055566609394

`A065642(record[A001597(n+1)/A076403(n+1)])`
-/

namespace A334151.P17222369055566609394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℚ) / (A076403 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A334151.P17222369055566609394

/-! ## A334151.P9971206092567636

`A065642(record[A001694(n+1)/A084371(n+1)])`
-/

namespace A334151.P9971206092567636
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A084371 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A334151.P9971206092567636

/-! ## A334151.P5940909099828935548

`A065642(record[A340588(n+1)/A076405(n+1)])`
-/

namespace A334151.P5940909099828935548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340588 (n + 1) : ℚ) / (A076405 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A334151.P5940909099828935548

/-!
# A334152: Number of Goldbach partitions (p,q) of 2n, such that p-2 and q-2 are both prime or both not prime.

The programs for A334152, there is no canonical definition to state claims against.
-/

/-! ## A334152.P9460754931045259954

`A045917(n+1)-A334153(n+1)`
-/

namespace A334152.P9460754931045259954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - A334153 (n + 1)

end

end A334152.P9460754931045259954

/-! ## A334152.P13083355197430552439

`A061358(2*(n+1))-A334153(n+1)`
-/

namespace A334152.P13083355197430552439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 * (n + 1)) - A334153 (n + 1)

end

end A334152.P13083355197430552439

/-! ## A334152.P15160111100295671209

`A068307(2*(n+2))-A334153(n+1)`
-/

namespace A334152.P15160111100295671209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * (n + 2)) - A334153 (n + 1)

end

end A334152.P15160111100295671209

/-! ## A334152.P9572396118507568700

`1-A227065(n+1)+n-A334153(n+1)`
-/

namespace A334152.P9572396118507568700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A227065 (n + 1) + (n : ℤ) - A334153 (n + 1)

end

end A334152.P9572396118507568700

/-! ## A334152.P3773497497265811839

`A226237(n+1)/(2*(n+1))-A334153(n+1)`
-/

namespace A334152.P3773497497265811839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226237 (n + 1) : ℚ) / (2 * (n + 1) : ℚ) - (A334153 (n + 1) : ℚ)

end

end A334152.P3773497497265811839

/-! ## A334152.P11945355469665051745

`char[1]+round(A002372(n+1)/2)-A334153(n+1)`
-/

namespace A334152.P11945355469665051745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((A002372 (n + 1) : ℚ) / 2) - A334153 (n + 1)

end

end A334152.P11945355469665051745

/-! ## A334152.P6734942062785434805

`A110654(A035026(n+1))-A334153(n+1)`
-/

namespace A334152.P6734942062785434805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A035026 (n + 1)).toNat - A334153 (n + 1)

end

end A334152.P6734942062785434805

/-! ## A334152.P8617755235100366141

`(A226237(n+1)-A334153(n+1))%A005408(n)`
-/

namespace A334152.P8617755235100366141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226237 (n + 1) - A334153 (n + 1)) (A005408 n)

end

end A334152.P8617755235100366141

/-!
# A334153: Number of Goldbach partitions (p,q) of 2n, such that exactly one of p-2 or q-2 is prime.

The programs for A334153, there is no canonical definition to state claims against.
-/

/-! ## A334153.P9086036788607860512

`A045917(n+1)-A334152(n+1)`
-/

namespace A334153.P9086036788607860512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - A334152 (n + 1)

end

end A334153.P9086036788607860512

/-! ## A334153.P4450950442864085271

`A068307(2*(n+2))-A334152(n+1)`
-/

namespace A334153.P4450950442864085271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * (n + 2)) - A334152 (n + 1)

end

end A334153.P4450950442864085271

/-! ## A334153.P2072313776309599488

`ceil(A035026(n+1)/2)-A334152(n+1)`
-/

namespace A334153.P2072313776309599488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035026 (n + 1) : ℚ) / 2⌉ - A334152 (n + 1)

end

end A334153.P2072313776309599488

/-! ## A334153.P198979057881542586

`A002375(char[1]+1+n)-A334152(n+1)`
-/

namespace A334153.P198979057881542586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) - A334152 (n + 1)

end

end A334153.P198979057881542586

/-! ## A334153.P11758615517193930535

`A226237(n+1)/(2*(n+1))-A334152(n+1)`
-/

namespace A334153.P11758615517193930535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226237 (n + 1) : ℚ) / (2 * (n + 1) : ℚ) - (A334152 (n + 1) : ℚ)

end

end A334153.P11758615517193930535

/-! ## A334153.P5823243819464338864

`char[1]+round(A002372(n+1)/2)-A334152(n+1)`
-/

namespace A334153.P5823243819464338864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((A002372 (n + 1) : ℚ) / 2) - A334152 (n + 1)

end

end A334153.P5823243819464338864

/-! ## A334153.P15805349404628893093

`A110654(A035026(n+1))-A334152(n+1)`
-/

namespace A334153.P15805349404628893093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A035026 (n + 1)).toNat - A334152 (n + 1)

end

end A334153.P15805349404628893093

/-!
# A334154: a(n) is the number of length n decorated permutations avoiding the pattern 012.

The programs for A334154, there is no canonical definition to state claims against.
-/

/-! ## A334154.P17458151965536920917

`A008619(xor(A181954(n+1), A325791(n)))`
-/

namespace A334154.P17458151965536920917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor (A181954 (n + 1)) (A325791 n)).toNat

end

end A334154.P17458151965536920917

/-! ## A334154.P6886250416012968704

`A008619(A104987(n)+A109437(n)+n)`
-/

namespace A334154.P6886250416012968704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A104987 n + (A109437 n + (n : ℤ))).toNat

end

end A334154.P6886250416012968704

/-!
# A334155: a(n) is the number of length n decorated permutations avoiding the pattern 001.

The programs for A334155, there is no canonical definition to state claims against.
-/

/-! ## A334155.P811921953364265809

`n!+∑[n!]-1`
-/

namespace A334155.P811921953364265809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A334155.P811921953364265809

/-! ## A334155.P6277783740232495364

`n!-(1-∑[n!])`
-/

namespace A334155.P6277783740232495364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A334155.P6277783740232495364

/-! ## A334155.P11052935187827049

`∑[lcm(n!, dr(n))]+n!`
-/

namespace A334155.P11052935187827049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n

end

end A334155.P11052935187827049

/-! ## A334155.P4873337423844490908

`xor(4, ∑[n!]+3)+n!`
-/

namespace A334155.P4873337423844490908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + Nat.factorial n

end

end A334155.P4873337423844490908

/-! ## A334155.P14314500897025660204

`∑[A306461(n²+2)]`
-/

namespace A334155.P14314500897025660204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306461 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334155.P14314500897025660204

/-! ## A334155.P11598572627621343384

`A007489(n)+A000142(n)`
-/

namespace A334155.P11598572627621343384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n + A000142 n

end

end A334155.P11598572627621343384

/-! ## A334155.P11543817027462268649

`A033312(n)+∑[A000142(n)]`
-/

namespace A334155.P11543817027462268649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334155.P11543817027462268649

/-! ## A334155.P15405369058197813913

`A033312(n)+A003422(n+1)`
-/

namespace A334155.P15405369058197813913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n + A003422 (n + 1)

end

end A334155.P15405369058197813913

/-! ## A334155.P6546764882973151544

`A007489(n)+A033312(n)+1`
-/

namespace A334155.P6546764882973151544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n + (A033312 n + 1)

end

end A334155.P6546764882973151544

/-!
# A334156: Triangle read by rows: T(n,m) is the number of length n decorated permutations avoiding the word 0^m = 0...0 of m 0's, where 1 <= m <= n.

The programs for A334156, the canonical program `A334156.P17698209707109941031` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334156 has offset 1).

The definition of A334156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334156.P17603788280156610393

`A367962(comp[∑[n-1]])`
-/

namespace A334156.P17603788280156610393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367962 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A334156.P17603788280156610393

namespace A334156

/-- `A367962(comp[∑[n-1]])` -/
def P17603788280156610393.Spec : Prop :=
  ∀ n, P17603788280156610393.a n = A334156 (n + 1)

end A334156

/-! ## A334156.P18054490250945924719

`∑[A010054(n)]*A367962(n)`
-/

namespace A334156.P18054490250945924719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A367962 n

end

end A334156.P18054490250945924719

namespace A334156

/-- `∑[A010054(n)]*A367962(n)` -/
def P18054490250945924719.Spec : Prop :=
  ∀ n, P18054490250945924719.a n = A334156 (n + 1)

end A334156

/-! ## A334156.P8171333621734890148

`A002024(n+1)*A367962(n)`
-/

namespace A334156.P8171333621734890148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A367962 n

end

end A334156.P8171333621734890148

namespace A334156

/-- `A002024(n+1)*A367962(n)` -/
def P8171333621734890148.Spec : Prop :=
  ∀ n, P8171333621734890148.a n = A334156 (n + 1)

end A334156

/-! ## A334156.P17698209707109941031

`A007526(A002260(n+1))*A173333(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A334156

/-- `A007526(A002260(n+1))*A173333(n+1)` -/
def P17698209707109941031.Spec : Prop :=
  ∀ n, P17698209707109941031.a n = A334156 (n + 1)

theorem P17698209707109941031.correct : P17698209707109941031.Spec := by
  intro n
  simp only [A334156, Nat.add_sub_cancel]

end A334156

/-! ## A334156.P994337107800803463

`A068424(A038722(n+1))*A073474(A112367(n))`
-/

namespace A334156.P994337107800803463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (A038722 (n + 1)).toNat * A073474 (A112367 n).toNat

end

end A334156.P994337107800803463

namespace A334156

/-- `A068424(A038722(n+1))*A073474(A112367(n))` -/
def P994337107800803463.Spec : Prop :=
  ∀ n, P994337107800803463.a n = A334156 (n + 1)

end A334156

/-!
# A334157: Row sums of array A158777.

The programs for A334157, there is no canonical definition to state claims against.
-/

/-! ## A334157.P12553324868735096471

`A000027(A294467(n)-A007531(n))`
-/

namespace A334157.P12553324868735096471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A294467 n - A007531 n).toNat

end

end A334157.P12553324868735096471

/-! ## A334157.P12201421172402505132

`A023816(floor((n+1)^n/2)+1)`
-/

namespace A334157.P12201421172402505132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (⌊((n + 1) ^ n : ℚ) / 2⌋ + 1).toNat

end

end A334157.P12201421172402505132

/-!
# A334158: Number of Goldbach partitions (p,q) of 2n such that primes p and q can also be written as the sum of two primes.

The programs for A334158, there is no canonical definition to state claims against.
-/

/-! ## A334158.P9257707607111859711

`A309163(A270339(n+1)-A309162(3*n+2))`
-/

namespace A334158.P9257707607111859711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309163 (A270339 (n + 1) - A309162 (3 * n + 2)).toNat

end

end A334158.P9257707607111859711

/-! ## A334158.P4039758852819154484

`A342515(A138988(n+1))%A000177(n)`
-/

namespace A334158.P4039758852819154484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342515 (A138988 (n + 1)).toNat) (A000177 n)

end

end A334158.P4039758852819154484

/-! ## A334158.P9848939714536351926

`A070092(∑[A040001(A295850(n))])`
-/

namespace A334158.P9848939714536351926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A295850 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334158.P9848939714536351926

/-! ## A334158.P4577280482209999957

`A052344(A182097(n)*A194602(n))`
-/

namespace A334158.P4577280482209999957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (A182097 n * A194602 n).toNat

end

end A334158.P4577280482209999957

/-! ## A334158.P6629028358922615103

`and(A046691(A114320(n)), A211111(n))`
-/

namespace A334158.P6629028358922615103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046691 (A114320 n).toNat) (A211111 n)

end

end A334158.P6629028358922615103

/-!
# A334160: Even numbers with a Goldbach partition (p,q), p < q, such that p and q can be written as the sum of two primes.

The programs for A334160, there is no canonical definition to state claims against.
-/

/-! ## A334160.P13244565406152409220

`2*(eq[2, A240697(n+1)]+2)`
-/

namespace A334160.P13244565406152409220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A334160.P13244565406152409220

/-! ## A334160.P9458484316242362429

`A020739(eq[2, A240697(n+2)])`
-/

namespace A334160.P9458484316242362429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334160.P9458484316242362429

/-! ## A334160.P14442954251997678265

`A103517(eq[2, A240697(n+1)]+1)`
-/

namespace A334160.P14442954251997678265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A334160.P14442954251997678265

/-! ## A334160.P9034972341006533401

`A187797(n+1)+2`
-/

namespace A334160.P9034972341006533401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187797 (n + 1) + 2

end

end A334160.P9034972341006533401

/-! ## A334160.P14810852241418034792

`A009056(A187797(n+1))`
-/

namespace A334160.P14810852241418034792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A187797 (n + 1)).toNat

end

end A334160.P14810852241418034792

/-!
# A334162: a(0) = 1; thereafter a(n) = exp(-1/n) * Sum_{k>=0} (n*k + 1)^n / (n^k * k!).

The programs for A334162, there is no canonical definition to state claims against.
-/

/-! ## A334162.P17131053235982212981

`A334165(2*n²)`
-/

namespace A334162.P17131053235982212981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (2 * n ^ 2)

end

end A334162.P17131053235982212981

/-! ## A334162.P8576174746080707055

`record[A334165(A035607(n))]`
-/

namespace A334162.P8576174746080707055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (A035607 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334162.P8576174746080707055

/-!
# A334163: Primes p whose continued fraction expansion of sqrt(p) has a 1 in the second position.

The programs for A334163, the canonical program `A334163.P14937506091226471622` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334163 has offset 1).

The definition of A334163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334163.P14937506091226471622

`A000040(A247515(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A334163

/-- `A000040(A247515(n+1))` -/
def P14937506091226471622.Spec : Prop :=
  ∀ n, P14937506091226471622.a n = A334163 (n + 1)

theorem P14937506091226471622.correct : P14937506091226471622.Spec := by
  intro n
  simp only [A334163, Nat.add_sub_cancel]

end A334163

/-! ## A334163.P18264691488674277324

`p?[2*(n+1)-A002260(n+1)]`
-/

namespace A334163.P18264691488674277324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334163.P18264691488674277324

namespace A334163

/-- `p?[2*(n+1)-A002260(n+1)]` -/
def P18264691488674277324.Spec : Prop :=
  ∀ n, P18264691488674277324.a n = A334163 (n + 1)

end A334163

/-! ## A334163.P13457427811147319312

`p?[A063657(n+1)]`
-/

namespace A334163.P13457427811147319312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334163.P13457427811147319312

namespace A334163

/-- `p?[A063657(n+1)]` -/
def P13457427811147319312.Spec : Prop :=
  ∀ n, P13457427811147319312.a n = A334163 (n + 1)

end A334163

/-! ## A334163.P10702920512484886127

`p?[A217575(n+1)+1]`
-/

namespace A334163.P10702920512484886127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334163.P10702920512484886127

namespace A334163

/-- `p?[A217575(n+1)+1]` -/
def P10702920512484886127.Spec : Prop :=
  ∀ n, P10702920512484886127.a n = A334163 (n + 1)

end A334163

/-! ## A334163.P13473358044489174063

`record[A006530(A217575(n+2))]`
-/

namespace A334163.P13473358044489174063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A217575 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334163.P13473358044489174063

namespace A334163

/-- `record[A006530(A217575(n+2))]` -/
def P13473358044489174063.Spec : Prop :=
  ∀ n, P13473358044489174063.a n = A334163 (n + 1)

end A334163

/-! ## A334163.P14267334320276098216

`filter[A063657(n+1), A010051(#)]`
-/

namespace A334163.P14267334320276098216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A334163.P14267334320276098216

namespace A334163

/-- `filter[A063657(n+1), A010051(#)]` -/
def P14267334320276098216.Spec : Prop :=
  ∀ n, P14267334320276098216.a n = A334163 (n + 1)

end A334163

/-! ## A334163.P9945211320006082094

`filter[A063657(n+1), A302777(#)]`
-/

namespace A334163.P9945211320006082094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A334163.P9945211320006082094

namespace A334163

/-- `filter[A063657(n+1), A302777(#)]` -/
def P9945211320006082094.Spec : Prop :=
  ∀ n, P9945211320006082094.a n = A334163 (n + 1)

end A334163

/-! ## A334163.P5111910026249851940

`filter[A063657(n+1), A323153(#)]`
-/

namespace A334163.P5111910026249851940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A334163.P5111910026249851940

namespace A334163

/-- `filter[A063657(n+1), A323153(#)]` -/
def P5111910026249851940.Spec : Prop :=
  ∀ n, P5111910026249851940.a n = A334163 (n + 1)

end A334163

/-! ## A334163.P7108711064841595904

`filter[A063657(n+1), A355937(#)]`
-/

namespace A334163.P7108711064841595904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A334163.P7108711064841595904

namespace A334163

/-- `filter[A063657(n+1), A355937(#)]` -/
def P7108711064841595904.Spec : Prop :=
  ∀ n, P7108711064841595904.a n = A334163 (n + 1)

end A334163

/-! ## A334163.P621119093642805080

`∩[A063657(n+1), A222030(n)]`
-/

namespace A334163.P621119093642805080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334163.P621119093642805080

namespace A334163

/-- `∩[A063657(n+1), A222030(n)]` -/
def P621119093642805080.Spec : Prop :=
  ∀ n, (P621119093642805080.a n : ℤ) = A334163 (n + 1)

end A334163

/-! ## A334163.P6343795788698049896

`∩[A000040(n+1), A063657(n+1)]`
-/

namespace A334163.P6343795788698049896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334163.P6343795788698049896

namespace A334163

/-- `∩[A000040(n+1), A063657(n+1)]` -/
def P6343795788698049896.Spec : Prop :=
  ∀ n, (P6343795788698049896.a n : ℤ) = A334163 (n + 1)

end A334163

/-! ## A334163.P13968448051622930335

`∩[A000430(n+1), A063657(n+1)]`
-/

namespace A334163.P13968448051622930335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334163.P13968448051622930335

namespace A334163

/-- `∩[A000430(n+1), A063657(n+1)]` -/
def P13968448051622930335.Spec : Prop :=
  ∀ n, (P13968448051622930335.a n : ℤ) = A334163 (n + 1)

end A334163

/-! ## A334163.P16273634350263617010

`∩[A004139(n+1), A063657(n+1)]`
-/

namespace A334163.P16273634350263617010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334163.P16273634350263617010

namespace A334163

/-- `∩[A004139(n+1), A063657(n+1)]` -/
def P16273634350263617010.Spec : Prop :=
  ∀ n, (P16273634350263617010.a n : ℤ) = A334163 (n + 1)

end A334163

/-! ## A334163.P14686430384415394977

`∩[A006005(n+1), A063657(n+1)]`
-/

namespace A334163.P14686430384415394977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334163.P14686430384415394977

namespace A334163

/-- `∩[A006005(n+1), A063657(n+1)]` -/
def P14686430384415394977.Spec : Prop :=
  ∀ n, (P14686430384415394977.a n : ℤ) = A334163 (n + 1)

end A334163

/-! ## A334163.P16536511596282897231

`∩[A008578(n+1), A063657(n+1)]`
-/

namespace A334163.P16536511596282897231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334163.P16536511596282897231

namespace A334163

/-- `∩[A008578(n+1), A063657(n+1)]` -/
def P16536511596282897231.Spec : Prop :=
  ∀ n, (P16536511596282897231.a n : ℤ) = A334163 (n + 1)

end A334163

/-! ## A334163.P9736563692609676541

`∩[A009087(n+1), A063657(n+1)]`
-/

namespace A334163.P9736563692609676541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334163.P9736563692609676541

namespace A334163

/-- `∩[A009087(n+1), A063657(n+1)]` -/
def P9736563692609676541.Spec : Prop :=
  ∀ n, (P9736563692609676541.a n : ℤ) = A334163 (n + 1)

end A334163

/-! ## A334163.P4787568505119769399

`∩[A033946(n+1), A063657(n+1)]`
-/

namespace A334163.P4787568505119769399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334163.P4787568505119769399

namespace A334163

/-- `∩[A033946(n+1), A063657(n+1)]` -/
def P4787568505119769399.Spec : Prop :=
  ∀ n, (P4787568505119769399.a n : ℤ) = A334163 (n + 1)

end A334163

/-! ## A334163.P5819683905245107848

`∩[A045319(n+1), A063657(n+1)]`
-/

namespace A334163.P5819683905245107848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334163.P5819683905245107848

namespace A334163

/-- `∩[A045319(n+1), A063657(n+1)]` -/
def P5819683905245107848.Spec : Prop :=
  ∀ n, (P5819683905245107848.a n : ℤ) = A334163 (n + 1)

end A334163

/-! ## A334163.P524220025934797360

`∩[A046022(n+1), A063657(n+1)]`
-/

namespace A334163.P524220025934797360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334163.P524220025934797360

namespace A334163

/-- `∩[A046022(n+1), A063657(n+1)]` -/
def P524220025934797360.Spec : Prop :=
  ∀ n, (P524220025934797360.a n : ℤ) = A334163 (n + 1)

end A334163

/-!
# A334164: a(n) is the number of ON-cells in the completed n-th level of a triangular wedge in the hexagonal grid of A151723 (i.e., after 2^k >= n generations of the automaton in A151723 have been computed).

The programs for A334164, there is no canonical definition to state claims against.
-/

/-! ## A334164.P10856926531088915618

`A227140(n)+A097807(A303594(A079582(n)))`
-/

namespace A334164.P10856926531088915618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 n + A097807 (A303594 (A079582 n).toNat).toNat

end

end A334164.P10856926531088915618

/-! ## A334164.P18182723371152899436

`A295303(A263534(n+1))+A106617(n)`
-/

namespace A334164.P18182723371152899436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (A263534 (n + 1)).toNat + A106617 n

end

end A334164.P18182723371152899436

/-! ## A334164.P18349854525253946146

`A327539(n)+A020985(A008441(A295296(n+1)))`
-/

namespace A334164.P18349854525253946146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 n + A020985 (A008441 (A295296 (n + 1)).toNat).toNat

end

end A334164.P18349854525253946146

/-! ## A334164.P8859030801715582960

`A321765(A008277(n+1))+lcm(16, n)/16`
-/

namespace A334164.P8859030801715582960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321765 (A008277 (n + 1)).toNat : ℚ) + (Nat.lcm 16 n : ℚ) / 16

end

end A334164.P8859030801715582960

/-! ## A334164.P2742230810361907918

`A106617(n)-A008683(A336568(3*n+4))`
-/

namespace A334164.P2742230810361907918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n - A008683 (A336568 (3 * n + 4)).toNat

end

end A334164.P2742230810361907918

/-!
# A334165: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals: A(n,k) = exp(-1/k) * Sum_{j>=0} (k*j + 1)^n / (k^j * j!).

The programs for A334165, there is no canonical definition to state claims against.
-/

/-! ## A334165.P17638500919068643384

`A111579((n-comp[∑[n]])²-(n-1))`
-/

namespace A334165.P17638500919068643384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111579 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - ((n : ℤ) - 1)).toNat

end

end A334165.P17638500919068643384

/-! ## A334165.P6305589182688179892

`A029903(A347667(n)-A008279(n))`
-/

namespace A334165.P6305589182688179892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 (A347667 n - A008279 n).toNat

end

end A334165.P6305589182688179892

/-! ## A334165.P2055511082150636761

`A228720(A396800(n+1))`
-/

namespace A334165.P2055511082150636761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228720 (A396800 (n + 1)).toNat

end

end A334165.P2055511082150636761

/-! ## A334165.P16468733890166868381

`A072649(2^A079520(n))`
-/

namespace A334165.P16468733890166868381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A079520 n : ℤ))).toNat

end

end A334165.P16468733890166868381

/-! ## A334165.P13387890461053296887

`A321728(A145085(n))+A203647(n+1)`
-/

namespace A334165.P13387890461053296887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (A145085 n).toNat + A203647 (n + 1)

end

end A334165.P13387890461053296887

/-!
# A334167: a(n) is the number of divisors of n^n-1.

The programs for A334167, there is no canonical definition to state claims against.
-/

/-! ## A334167.P8262670761176142039

`A061392(lcm(A049433(n+1), A083318(n)))`
-/

namespace A334167.P8262670761176142039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (Int.lcm (A049433 (n + 1)) (A083318 n))

end

end A334167.P8262670761176142039

/-! ## A334167.P7694929052289576733

`A010554(A349205(2*(n+1))+A046525(n+2))`
-/

namespace A334167.P7694929052289576733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A349205 (2 * (n + 1) + 21) + A046525 (n + 2)).toNat

end

end A334167.P7694929052289576733

/-! ## A334167.P10105795898069098530

`A046798(A274903(n))*A057940(A324704(n+1))`
-/

namespace A334167.P10105795898069098530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (A274903 n).toNat * A057940 (A324704 (n + 1)).toNat

end

end A334167.P10105795898069098530

/-!
# A334168: Numbers m whose leading digit and the other decimal digits appear respectively before and directly after the decimal point of its m-th root.

The programs for A334168, there is no canonical definition to state claims against.
-/

/-! ## A334168.P5427979028266187793

`floor(10^(n/10^n)*10^n)`
-/

namespace A334168.P5427979028266187793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((n : ℚ) / (10 ^ n : ℚ) : ℝ) * (10 ^ n : ℝ)⌋

end

end A334168.P5427979028266187793

/-! ## A334168.P4615722665226252631

`A034887(n)+A123522(n)+n`
-/

namespace A334168.P4615722665226252631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n + (A123522 n + (n : ℤ))

end

end A334168.P4615722665226252631

/-! ## A334168.P17808071371385886022

`ceil(A002283(n)+log(A062397(n)))`
-/

namespace A334168.P17808071371385886022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002283 n : ℝ) + Real.log (A062397 n : ℝ)⌉

end

end A334168.P17808071371385886022

/-! ## A334168.P12944533747266933721

`ceil(A103456(n)+log(A103456(n)))`
-/

namespace A334168.P12944533747266933721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103456 n : ℝ) + Real.log (A103456 n : ℝ)⌉

end

end A334168.P12944533747266933721

/-! ## A334168.P16727300062370441416

`A284676(n+1)+A002283(n)-1+n`
-/

namespace A334168.P16727300062370441416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) + (A002283 n - 1 + (n : ℤ))

end

end A334168.P16727300062370441416

/-!
# A334169: a(n) is the number of ON-cells in the n-th full level of ON-cells of a triangular wedge in the hexagonal grid of A151723 (after 2^k >= n generations have been computed).

The programs for A334169, there is no canonical definition to state claims against.
-/

/-! ## A334169.P105900928152538032

`record[A030101(n)+1]`
-/

namespace A334169.P105900928152538032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334169.P105900928152538032

/-! ## A334169.P8307945963861120181

`record[A341915(n)+1]`
-/

namespace A334169.P8307945963861120181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334169.P8307945963861120181

/-! ## A334169.P5026792080142396494

`record[A325401(2*n)+1]`
-/

namespace A334169.P5026792080142396494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334169.P5026792080142396494

/-! ## A334169.P16899898664647026007

`record[1-A055945(n)+n]`
-/

namespace A334169.P16899898664647026007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055945 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334169.P16899898664647026007

/-! ## A334169.P3795274779944398203

`record[A055944(n)+1-n]`
-/

namespace A334169.P3795274779944398203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334169.P3795274779944398203

/-! ## A334169.P3823667868243657662

`record[xor(n, A175919(n))+1]`
-/

namespace A334169.P3823667868243657662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175919 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334169.P3823667868243657662

/-! ## A334169.P14571128373212986218

`A073138(a(n-1))+2` with `a(0)=1, a(1)=2`
-/

namespace A334169.P14571128373212986218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A073138 (a (n - 1)).toNat + 2

end

end A334169.P14571128373212986218

/-! ## A334169.P4227187551571942527

`A246593(a(n-1))+2` with `a(0)=1, a(1)=2`
-/

namespace A334169.P4227187551571942527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A246593 (a (n - 1)).toNat + 2

end

end A334169.P4227187551571942527

/-! ## A334169.P17743940953697870874

`A331857(a(n-1))+2` with `a(0)=1, a(1)=2`
-/

namespace A334169.P17743940953697870874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A331857 (a (n - 1)).toNat + 2

end

end A334169.P17743940953697870874

/-!
# A334172: Bitwise XNOR of prime(n) and prime(n + 1).

The programs for A334172, the canonical program `A334172.P15112562064051135258` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334172 has offset 1).

The definition of A334172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334172.P15112562064051135258

`A334143(n+1)+A175330(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A334172

/-- `A334143(n+1)+A175330(n+1)` -/
def P15112562064051135258.Spec : Prop :=
  ∀ n, P15112562064051135258.a n = A334172 (n + 1)

theorem P15112562064051135258.correct : P15112562064051135258.Spec := by
  intro n
  simp only [A334172, Nat.add_sub_cancel]

end A334172

/-! ## A334172.P8923363007467758981

`xor(A000040(n+1), A035327(A000040(n+2)))`
-/

namespace A334172.P8923363007467758981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A035327 (A000040 (n + 2)).toNat)

end

end A334172.P8923363007467758981

namespace A334172

/-- `xor(A000040(n+1), A035327(A000040(n+2)))` -/
def P8923363007467758981.Spec : Prop :=
  ∀ n, P8923363007467758981.a n = A334172 (n + 1)

end A334172

/-! ## A334172.P9249742750030096381

`xor(A008578(n+2), A035327(A008578(n+3)))`
-/

namespace A334172.P9249742750030096381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008578 (n + 2)) (A035327 (A008578 (n + 3)).toNat)

end

end A334172.P9249742750030096381

namespace A334172

/-- `xor(A008578(n+2), A035327(A008578(n+3)))` -/
def P9249742750030096381.Spec : Prop :=
  ∀ n, P9249742750030096381.a n = A334172 (n + 1)

end A334172

/-! ## A334172.P5269862755088228455

`xor(A006093(n+1)+1, A035327(A065091(n+1)))`
-/

namespace A334172.P5269862755088228455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006093 (n + 1) + 1) (A035327 (A065091 (n + 1)).toNat)

end

end A334172.P5269862755088228455

namespace A334172

/-- `xor(A006093(n+1)+1, A035327(A065091(n+1)))` -/
def P5269862755088228455.Spec : Prop :=
  ∀ n, P5269862755088228455.a n = A334172 (n + 1)

end A334172

/-! ## A334172.P14258263923535943451

`xor(A008864(n+1)-1, A035327(A065091(n+1)))`
-/

namespace A334172.P14258263923535943451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008864 (n + 1) - 1) (A035327 (A065091 (n + 1)).toNat)

end

end A334172.P14258263923535943451

namespace A334172

/-- `xor(A008864(n+1)-1, A035327(A065091(n+1)))` -/
def P14258263923535943451.Spec : Prop :=
  ∀ n, P14258263923535943451.a n = A334172 (n + 1)

end A334172

/-! ## A334172.P6428965578810828779

`xor(A001748(n+1)/3, A035327(A065091(n+1)))`
-/

namespace A334172.P6428965578810828779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) (A035327 (A065091 (n + 1)).toNat)

end

end A334172.P6428965578810828779

namespace A334172

/-- `xor(A001748(n+1)/3, A035327(A065091(n+1)))` -/
def P6428965578810828779.Spec : Prop :=
  ∀ n, P6428965578810828779.a n = A334172 (n + 1)

end A334172

/-! ## A334172.P9127391590396183652

`xor(A014688(n+1)-(n+1), A035327(A065091(n+1)))`
-/

namespace A334172.P9127391590396183652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014688 (n + 1) - (n + 1 : ℤ)) (A035327 (A065091 (n + 1)).toNat)

end

end A334172.P9127391590396183652

namespace A334172

/-- `xor(A014688(n+1)-(n+1), A035327(A065091(n+1)))` -/
def P9127391590396183652.Spec : Prop :=
  ∀ n, P9127391590396183652.a n = A334172 (n + 1)

end A334172

/-! ## A334172.P10117007291330497244

`A175330(n+1)+A035327(A175329(n+1))`
-/

namespace A334172.P10117007291330497244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175330 (n + 1) + A035327 (A175329 (n + 1)).toNat

end

end A334172.P10117007291330497244

namespace A334172

/-- `A175330(n+1)+A035327(A175329(n+1))` -/
def P10117007291330497244.Spec : Prop :=
  ∀ n, P10117007291330497244.a n = A334172 (n + 1)

end A334172

/-! ## A334172.P3620927094716005057

`A003817(A065091(n+1))-A112591(n+1)`
-/

namespace A334172.P3620927094716005057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A065091 (n + 1)).toNat - A112591 (n + 1)

end

end A334172.P3620927094716005057

namespace A334172

/-- `A003817(A065091(n+1))-A112591(n+1)` -/
def P3620927094716005057.Spec : Prop :=
  ∀ n, P3620927094716005057.a n = A334172 (n + 1)

end A334172

/-! ## A334172.P3228218608923930107

`A175329(n+1)+A334143(n+1)-A112591(n+1)`
-/

namespace A334172.P3228218608923930107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175329 (n + 1) + (A334143 (n + 1) - A112591 (n + 1))

end

end A334172.P3228218608923930107

namespace A334172

/-- `A175329(n+1)+A334143(n+1)-A112591(n+1)` -/
def P3228218608923930107.Spec : Prop :=
  ∀ n, P3228218608923930107.a n = A334172 (n + 1)

end A334172

/-! ## A334172.P10403002769075224806

`A175330(n+1)+A035327(A175330(n+1)+A112591(n+1))`
-/

namespace A334172.P10403002769075224806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175330 (n + 1) + A035327 (A175330 (n + 1) + A112591 (n + 1)).toNat

end

end A334172.P10403002769075224806

namespace A334172

/-- `A175330(n+1)+A035327(A175330(n+1)+A112591(n+1))` -/
def P10403002769075224806.Spec : Prop :=
  ∀ n, P10403002769075224806.a n = A334172 (n + 1)

end A334172

/-!
# A334173: Least i such that i-th term of Thue-Morse sequence (A010060) differs from (i + n)-th term.

The programs for A334173, there is no canonical definition to state claims against.
-/

/-! ## A334173.P11572764764335224250

`and(A065331(n+1), A089263(A187941(n)))`
-/

namespace A334173.P11572764764335224250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065331 (n + 1)) (A089263 (A187941 n).toNat)

end

end A334173.P11572764764335224250

/-! ## A334173.P15244116007860142330

`and(A110135(n+1), A164677(2^n))`
-/

namespace A334173.P15244116007860142330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110135 (n + 1)) (A164677 (2 ^ n))

end

end A334173.P15244116007860142330

/-! ## A334173.P7971574295511328455

`A103894(A266531(n+1))%A093653(n+1)`
-/

namespace A334173.P7971574295511328455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103894 (A266531 (n + 1)).toNat) (A093653 (n + 1))

end

end A334173.P7971574295511328455

/-! ## A334173.P3545236192491925419

`and(∑[A061931(n+1)], A107834(n+1))`
-/

namespace A334173.P3545236192491925419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A107834 (n + 1))

end

end A334173.P3545236192491925419

/-! ## A334173.P15782375973902138546

`and(A051006(A001906(n)), A143482(n+1))`
-/

namespace A334173.P15782375973902138546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051006 (A001906 n).toNat) (A143482 (n + 1))

end

end A334173.P15782375973902138546

/-!
# A334174: Numbers that can be written as a product of two or more consecutive factorial numbers.

The programs for A334174, there is no canonical definition to state claims against.
-/

/-! ## A334174.P17995984579438742045

`∏[A064814(∏[A087465(n)])]`
-/

namespace A334174.P17995984579438742045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087465 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064814 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334174.P17995984579438742045

/-! ## A334174.P14021730949507419094

`A003958(A000142(n)*A059826(n))`
-/

namespace A334174.P14021730949507419094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000142 n * A059826 n).toNat

end

end A334174.P14021730949507419094

/-!
# A334175: Numbers that can be written as a product of two or more consecutive primorial numbers.

The programs for A334175, there is no canonical definition to state claims against.
-/

/-! ## A334175.P4221629345745085237

`A108951(record[A337470(n+1)])`
-/

namespace A334175.P4221629345745085237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334175.P4221629345745085237

/-! ## A334175.P3770757287231339641

`filter[A322804(2*(n+1)), A014306(#)]`
-/

namespace A334175.P3770757287231339641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322804 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A334175.P3770757287231339641

/-!
# A334176: Squarefree part of numerator of the squared area of the Heronian triangle with sequential odd sides whose shortest leg is 2*n+1.

The programs for A334176, there is no canonical definition to state claims against.
-/

/-! ## A334176.P16511780306502584086

`A007913(3*((2*n+5)²-16))`
-/

namespace A334176.P16511780306502584086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (3 * (((2 * n + 5) ^ 2 : ℤ) - 16)).toNat

end

end A334176.P16511780306502584086

/-!
# A334178: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = 2^n * sqrt(Resultant(U_{2*n}(x/2), T_{k}(i*x/2))), where T_n(x) is a Chebyshev polynomial of the first kind, U_n(x) is a Chebyshev polynomial of the second kind and i = sqrt(-1).

The programs for A334178, there is no canonical definition to state claims against.
-/

/-! ## A334178.P14524036835226931881

`A279709(n+1)^A245111(A173018(n))`
-/

namespace A334178.P14524036835226931881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279709 (n + 1) : ℚ) ^ (A245111 (A173018 n).toNat : ℤ)

end

end A334178.P14524036835226931881

/-! ## A334178.P2725931983201923653

`gcd(A279709(n+1), A319510(A122086(n+1)))`
-/

namespace A334178.P2725931983201923653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A279709 (n + 1)) (A319510 (A122086 (n + 1)).toNat)

end

end A334178.P2725931983201923653

/-! ## A334178.P9285624666974929150

`gcd(record[A105802(n+1)], A302889(n+1))`
-/

namespace A334178.P9285624666974929150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A302889 (n + 1))

end

end A334178.P9285624666974929150

/-! ## A334178.P678455776608930349

`A000032(A003992(n))^A294756(n)`
-/

namespace A334178.P678455776608930349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A003992 n).toNat : ℚ) ^ (A294756 n : ℤ)

end

end A334178.P678455776608930349

/-! ## A334178.P9526876987837931439

`gcd(A013609(n), A357212(A097712(n)))`
-/

namespace A334178.P9526876987837931439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013609 n) (A357212 (A097712 n).toNat)

end

end A334178.P9526876987837931439

/-!
# A334179: Number of dimer tilings of a 2*n x 6 Moebius strip.

The programs for A334179, there is no canonical definition to state claims against.
-/

/-! ## A334179.P10013582224151308806

`A028473(n)/A003775(n)`
-/

namespace A334179.P10013582224151308806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028473 n : ℚ) / (A003775 n : ℚ)

end

end A334179.P10013582224151308806

/-! ## A334179.P4403359728635234659

`A210724(2*n)/A003775(n)`
-/

namespace A334179.P4403359728635234659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210724 (2 * n) : ℚ) / (A003775 n : ℚ)

end

end A334179.P4403359728635234659

/-! ## A334179.P867152145461397676

`A028473(n)/A189003(2*n)`
-/

namespace A334179.P867152145461397676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028473 n : ℚ) / (A189003 (2 * n) : ℚ)

end

end A334179.P867152145461397676

/-! ## A334179.P10279160398806579190

`A210724(2*n)/A189003(2*n)`
-/

namespace A334179.P10279160398806579190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210724 (2 * n) : ℚ) / (A189003 (2 * n) : ℚ)

end

end A334179.P10279160398806579190

/-! ## A334179.P8878157115598961590

`sqrt(A028483(2*n))`
-/

namespace A334179.P8878157115598961590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028483 (2 * n) : ℝ)

end

end A334179.P8878157115598961590

/-!
# A334180: Number of dimer tilings of a 2*n x 8 Moebius strip.

The programs for A334180, there is no canonical definition to state claims against.
-/

/-! ## A334180.P10796771595890009966

`sqrt(A028487(2*n))`
-/

namespace A334180.P10796771595890009966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028487 (2 * n) : ℝ)

end

end A334180.P10796771595890009966

/-! ## A334180.P12968953255486544362

`record[sqrt(A028487(n%or(1, n)))]`
-/

namespace A334180.P12968953255486544362
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028487 (n % Nat.lor 1 n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334180.P12968953255486544362

/-!
# A334181: Number of dimer tilings of a 2*n x 10 Moebius strip.

The programs for A334181, there is no canonical definition to state claims against.
-/

/-! ## A334181.P273302840013826044

`A348566(record[a(n-2)+2])` with `a(0)=45, a(1)=1, a(2)=0`
-/

namespace A334181.P273302840013826044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [45, 1, 0] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348566 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A334181.P273302840013826044

/-!
# A334184: Irregular table read by rows: T(n,k) gives the number of values that can be reached after exactly k iterations of maps of the form (n - n/p) where p is a prime divisor of n. 0 <= k < A073933(n).

The programs for A334184, there is no canonical definition to state claims against.
-/

/-! ## A334184.P6444704398893254593

`A043288(A250174(n+1)+A001522(n+2))`
-/

namespace A334184.P6444704398893254593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (A250174 (n + 1) + A001522 (n + 2)).toNat

end

end A334184.P6444704398893254593

/-! ## A334184.P1717678516068044506

`A318672(A222028(n+2)+1)`
-/

namespace A334184.P1717678516068044506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318672 (A222028 (n + 2) + 1).toNat

end

end A334184.P1717678516068044506

/-! ## A334184.P3304639724676103260

`gcd(A000045(A005206(n+1)), A245936(2*(n+2)))`
-/

namespace A334184.P3304639724676103260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (A005206 (n + 1)).toNat) (A245936 (2 * (n + 2)))

end

end A334184.P3304639724676103260

/-! ## A334184.P5603173376745828242

`A077619(A093995(n+1)*A190439(n+1))`
-/

namespace A334184.P5603173376745828242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077619 (A093995 (n + 1) * A190439 (n + 1)).toNat

end

end A334184.P5603173376745828242

/-! ## A334184.P5596417134698310780

`gcd(A306232(n+3), A306242(A306220(n+4)))`
-/

namespace A334184.P5596417134698310780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306232 (n + 3)) (A306242 (A306220 (n + 4)).toNat)

end

end A334184.P5596417134698310780

/-!
# A334185: Let m = d*q + r be the Euclidean division of m by d. The terms m of this sequence satisfy that r, q, d are consecutive positive integer terms in a geometric progression with a common integer ratio.

The programs for A334185, there is no canonical definition to state claims against.
-/

/-! ## A334185.P9866036448104076301

`∩[A127629(n+1), A184413(n+1)]`
-/

namespace A334185.P9866036448104076301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334185.P9866036448104076301

/-! ## A334185.P2666841464013468646

`∩[A127629(n+1), A207188(n+1)]`
-/

namespace A334185.P2666841464013468646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334185.P2666841464013468646

/-! ## A334185.P10448547024018798738

`A127629(A268335(n+1))%A237639(2*(n+2))`
-/

namespace A334185.P10448547024018798738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127629 (A268335 (n + 1)).toNat) (A237639 (2 * (n + 2)))

end

end A334185.P10448547024018798738

/-!
# A334187: Number T(n,k) of k-element subsets of [n] avoiding 3-term arithmetic progressions; triangle T(n,k), n>=0, 0<=k<=A003002(n), read by rows.

The programs for A334187, there is no canonical definition to state claims against.
-/

/-! ## A334187.P1988959673088982737

`A082870(n+1)-A002262(n)*A102683(A001497(n))`
-/

namespace A334187.P1988959673088982737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082870 (n + 1) - A002262 n * A102683 (A001497 n).toNat

end

end A334187.P1988959673088982737

/-! ## A334187.P17035374092137080325

`A225634(A008621(A220860(n+1)))`
-/

namespace A334187.P17035374092137080325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 (A008621 (A220860 (n + 1)).toNat).toNat

end

end A334187.P17035374092137080325

/-! ## A334187.P6385576131718697798

`A082870(n+1)-A102683(A184964(n))`
-/

namespace A334187.P6385576131718697798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082870 (n + 1) - A102683 (A184964 n).toNat

end

end A334187.P6385576131718697798

/-! ## A334187.P941462049552026281

`gcd(A088809(A241690(n+1)), A381476(n))`
-/

namespace A334187.P941462049552026281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088809 (A241690 (n + 1)).toNat) (A381476 n)

end

end A334187.P941462049552026281

/-! ## A334187.P8940363164207184335

`A381476(n)%A331453(A372014(3*n))`
-/

namespace A334187.P8940363164207184335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381476 n) (A331453 (A372014 (3 * n)).toNat)

end

end A334187.P8940363164207184335

/-!
# A334190: a(n) = exp(1/2) * Sum_{k>=0} (2*k + 1)^n / ((-2)^k * k!).

The programs for A334190, there is no canonical definition to state claims against.
-/

/-! ## A334190.P16166742176412730781

`A334192(∑[n+2]-1)`
-/

namespace A334190.P16166742176412730781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334192 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A334190.P16166742176412730781

/-! ## A334190.P12571817931737783485

`and(1-n, A334192(A034856(n+1)))`
-/

namespace A334190.P12571817931737783485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A334192 (A034856 (n + 1)).toNat)

end

end A334190.P12571817931737783485

/-! ## A334190.P10738007486804876760

`A334192(A034856(n+1))+A025469(n)`
-/

namespace A334190.P10738007486804876760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334192 (A034856 (n + 1)).toNat + A025469 n

end

end A334190.P10738007486804876760

/-! ## A334190.P8899661471781897660

`A334192(A034856(n+1))+A069958(n)`
-/

namespace A334190.P8899661471781897660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334192 (A034856 (n + 1)).toNat + A069958 n

end

end A334190.P8899661471781897660

/-! ## A334190.P5332827530172567738

`A152851(n)*A334192(A034856(n+1))`
-/

namespace A334190.P5332827530172567738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A334192 (A034856 (n + 1)).toNat

end

end A334190.P5332827530172567738

/-!
# A334191: a(n) = exp(1/3) * Sum_{k>=0} (3*k + 1)^n / ((-3)^k * k!).

The programs for A334191, there is no canonical definition to state claims against.
-/

/-! ## A334191.P14490203179118482206

`A334192(∑[n+3])`
-/

namespace A334191.P14490203179118482206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334191.P14490203179118482206

/-! ## A334191.P7886573462889741161

`A334192(A141214(n))+char[9]`
-/

namespace A334191.P7886573462889741161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334192 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A334191.P7886573462889741161

/-! ## A334191.P10413779336896504023

`A047999(n)*A334192(A141214(n))`
-/

namespace A334191.P10413779336896504023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A334192 (A141214 n).toNat

end

end A334191.P10413779336896504023

/-! ## A334191.P1656628702496526299

`A119963(n)*A334192(A141214(n))`
-/

namespace A334191.P1656628702496526299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A334192 (A141214 n).toNat

end

end A334191.P1656628702496526299

/-! ## A334191.P3274119534975571109

`A152851(n)*A334192(A141214(n))`
-/

namespace A334191.P3274119534975571109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A334192 (A141214 n).toNat

end

end A334191.P3274119534975571109

/-!
# A334192: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals: A(n,k) = exp(1/k) * Sum_{j>=0} (k*j + 1)^n / ((-k)^j * j!).

The programs for A334192, there is no canonical definition to state claims against.
-/

/-! ## A334192.P5794362151555467981

`A335434(A156576(n))-A139600(n)`
-/

namespace A334192.P5794362151555467981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335434 (A156576 n).toNat - A139600 n

end

end A334192.P5794362151555467981

/-! ## A334192.P6777209184619453259

`A133181(A059268(n))-A139601(n)`
-/

namespace A334192.P6777209184619453259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133181 (A059268 n).toNat - A139601 n

end

end A334192.P6777209184619453259

/-! ## A334192.P6215902018868306030

`A133181(A256009(n))-A139601(n)`
-/

namespace A334192.P6215902018868306030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133181 (A256009 n).toNat - A139601 n

end

end A334192.P6215902018868306030

/-! ## A334192.P10647760825329064680

`A155586(A054251(n))-A155584(n+1)`
-/

namespace A334192.P10647760825329064680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155586 (A054251 n).toNat - A155584 (n + 1)

end

end A334192.P10647760825329064680

/-! ## A334192.P704420269146686978

`A076929(A051340(n))-(A103438(n)-A102683(2^n))`
-/

namespace A334192.P704420269146686978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076929 (A051340 n).toNat - (A103438 n - A102683 (2 ^ n))

end

end A334192.P704420269146686978

/-!
# A334193: a(0) = 1; thereafter a(n) = exp(1/n) * Sum_{k>=0} (n*k + 1)^n / ((-n)^k * k!).

The programs for A334193, there is no canonical definition to state claims against.
-/

/-! ## A334193.P16463101268503120661

`A334192(2*n²)`
-/

namespace A334193.P16463101268503120661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334192 (2 * n ^ 2)

end

end A334193.P16463101268503120661

/-! ## A334193.P8598721077187616361

`A334192(A001105(n))+A025469(n)`
-/

namespace A334193.P8598721077187616361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334192 (A001105 n).toNat + A025469 n

end

end A334193.P8598721077187616361

/-!
# A334195: a(1) = 0, then after the first differences of A064415.

The programs for A334195, the canonical program `A334195.P3591881704032605966` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334195 has offset 1).

The definition of A334195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334195.P227832039266093216

`A334090(n+1)-A334091(n+1)`
-/

namespace A334195.P227832039266093216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1) - A334091 (n + 1)

end

end A334195.P227832039266093216

namespace A334195

/-- `A334090(n+1)-A334091(n+1)` -/
def P227832039266093216.Spec : Prop :=
  ∀ n, P227832039266093216.a n = A334195 (n + 1)

end A334195

/-! ## A334195.P3591881704032605966

`Δ[A064415(A028310(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A334195

/-- `Δ[A064415(A028310(n))]` -/
def P3591881704032605966.Spec : Prop :=
  ∀ n, P3591881704032605966.a n = A334195 (n + 1)

theorem P3591881704032605966.correct : P3591881704032605966.Spec := by
  intro n
  simp only [A334195, Nat.add_sub_cancel]

end A334195

/-! ## A334195.P3218063983301716346

`A064415(n+1)-A064415(A028310(n))`
-/

namespace A334195.P3218063983301716346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) - A064415 (A028310 n).toNat

end

end A334195.P3218063983301716346

namespace A334195

/-- `A064415(n+1)-A064415(A028310(n))` -/
def P3218063983301716346.Spec : Prop :=
  ∀ n, P3218063983301716346.a n = A334195 (n + 1)

end A334195

/-! ## A334195.P17079416989548038829

`A064415(n+1)-A064415(A000007(n)+n)`
-/

namespace A334195.P17079416989548038829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) - A064415 (A000007 n + (n : ℤ)).toNat

end

end A334195.P17079416989548038829

namespace A334195

/-- `A064415(n+1)-A064415(A000007(n)+n)` -/
def P17079416989548038829.Spec : Prop :=
  ∀ n, P17079416989548038829.a n = A334195 (n + 1)

end A334195

/-! ## A334195.P16048291459228065603

`Δ[A064415(A000007(n)+n)]`
-/

namespace A334195.P16048291459228065603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334195.P16048291459228065603

namespace A334195

/-- `Δ[A064415(A000007(n)+n)]` -/
def P16048291459228065603.Spec : Prop :=
  ∀ n, P16048291459228065603.a n = A334195 (n + 1)

end A334195

/-! ## A334195.P3119435757682502471

`Δ[A064415(and(1, A238533(n+1))+n)]`
-/

namespace A334195.P3119435757682502471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (Int.land 1 (A238533 (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334195.P3119435757682502471

namespace A334195

/-- `Δ[A064415(and(1, A238533(n+1))+n)]` -/
def P3119435757682502471.Spec : Prop :=
  ∀ n, P3119435757682502471.a n = A334195 (n + 1)

end A334195

/-! ## A334195.P17533312552899089074

`Δ[A003434(abs(1-n)+1+n)]`
-/

namespace A334195.P17533312552899089074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334195.P17533312552899089074

namespace A334195

/-- `Δ[A003434(abs(1-n)+1+n)]` -/
def P17533312552899089074.Spec : Prop :=
  ∀ n, P17533312552899089074.a n = A334195 (n + 1)

end A334195

/-! ## A334195.P9298785393474094411

`Δ[A049108(abs(1-n)+n+1)]`
-/

namespace A334195.P9298785393474094411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334195.P9298785393474094411

namespace A334195

/-- `Δ[A049108(abs(1-n)+n+1)]` -/
def P9298785393474094411.Spec : Prop :=
  ∀ n, P9298785393474094411.a n = A334195 (n + 1)

end A334195

/-! ## A334195.P13480443807708994258

`Δ[A064415(abs(1-n)+n+1)]`
-/

namespace A334195.P13480443807708994258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334195.P13480443807708994258

namespace A334195

/-- `Δ[A064415(abs(1-n)+n+1)]` -/
def P13480443807708994258.Spec : Prop :=
  ∀ n, P13480443807708994258.a n = A334195 (n + 1)

end A334195

/-! ## A334195.P14496710423990664462

`A054725(2*(n+1))-A054725(A065190(2*n+1))`
-/

namespace A334195.P14496710423990664462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (2 * (n + 1)) - A054725 (A065190 (2 * n + 1)).toNat

end

end A334195.P14496710423990664462

namespace A334195

/-- `A054725(2*(n+1))-A054725(A065190(2*n+1))` -/
def P14496710423990664462.Spec : Prop :=
  ∀ n, P14496710423990664462.a n = A334195 (n + 1)

end A334195

/-! ## A334195.P8885351235724534379

`A064415(n+1)+1-A064415(A233583(2*n+1))`
-/

namespace A334195.P8885351235724534379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + 1 - A064415 (A233583 (2 * n + 1)).toNat

end

end A334195.P8885351235724534379

namespace A334195

/-- `A064415(n+1)+1-A064415(A233583(2*n+1))` -/
def P8885351235724534379.Spec : Prop :=
  ∀ n, P8885351235724534379.a n = A334195 (n + 1)

end A334195

/-!
# A334196: a(1) = 0, then after the first differences of A003434.

The programs for A334196, the canonical program `A334196.P15371757827923391358` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334196 has offset 1).

The definition of A334196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334196.P9672710256633171728

`Δ[A003434(n-ceil(n/(n+1))+1)]`
-/

namespace A334196.P9672710256633171728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334196.P9672710256633171728

namespace A334196

/-- `Δ[A003434(n-ceil(n/(n+1))+1)]` -/
def P9672710256633171728.Spec : Prop :=
  ∀ n, P9672710256633171728.a n = A334196 (n + 1)

end A334196

/-! ## A334196.P15371757827923391358

`Δ[A049108(n-ceil(n/(n+1))+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A334196

/-- `Δ[A049108(n-ceil(n/(n+1))+1)]` -/
def P15371757827923391358.Spec : Prop :=
  ∀ n, P15371757827923391358.a n = A334196 (n + 1)

theorem P15371757827923391358.correct : P15371757827923391358.Spec := by
  intro n
  simp only [A334196, Nat.add_sub_cancel]

end A334196

/-! ## A334196.P7595386568253832801

`Δ[A159062(a(A000010(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A334196.P7595386568253832801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A159062 (f1 (A000010 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334196.P7595386568253832801

namespace A334196

/-- `Δ[A159062(a(A000010(n)))]` -/
def P7595386568253832801.Spec : Prop :=
  ∀ n, P7595386568253832801.a n = A334196 (n + 1)

end A334196

/-! ## A334196.P5965683970547710127

`Δ[A043320(a(A000010(n))+1)]` with `a(0)=2, a(1)=2`
-/

namespace A334196.P5965683970547710127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  A043320 (f1 (A000010 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334196.P5965683970547710127

namespace A334196

/-- `Δ[A043320(a(A000010(n))+1)]` -/
def P5965683970547710127.Spec : Prop :=
  ∀ n, P5965683970547710127.a n = A334196 (n + 1)

end A334196

/-! ## A334196.P2544890276989841750

`Δ[A085736(a(A000010(n))+1)]` with `a(0)=2, a(1)=2`
-/

namespace A334196.P2544890276989841750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  A085736 (f1 (A000010 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334196.P2544890276989841750

namespace A334196

/-- `Δ[A085736(a(A000010(n))+1)]` -/
def P2544890276989841750.Spec : Prop :=
  ∀ n, P2544890276989841750.a n = A334196 (n + 1)

end A334196

/-! ## A334196.P8186453473767942144

`A003434(n+1)-A003434(A028310(n))`
-/

namespace A334196.P8186453473767942144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) - A003434 (A028310 n).toNat

end

end A334196.P8186453473767942144

namespace A334196

/-- `A003434(n+1)-A003434(A028310(n))` -/
def P8186453473767942144.Spec : Prop :=
  ∀ n, P8186453473767942144.a n = A334196 (n + 1)

end A334196

/-! ## A334196.P16912787170842072187

`A049108(n+1)-A049108(A000007(n)+n)`
-/

namespace A334196.P16912787170842072187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (n + 1) - A049108 (A000007 n + (n : ℤ)).toNat

end

end A334196.P16912787170842072187

namespace A334196

/-- `A049108(n+1)-A049108(A000007(n)+n)` -/
def P16912787170842072187.Spec : Prop :=
  ∀ n, P16912787170842072187.a n = A334196 (n + 1)

end A334196

/-!
# A334197: Positions of records in A334090; After 1, positions of record jumps upward in A064097.

The programs for A334197, there is no canonical definition to state claims against.
-/

/-! ## A334197.P10129022152893439700

`A271269(A320663(n))+A255184(n)`
-/

namespace A334197.P10129022152893439700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (A320663 n).toNat + A255184 n

end

end A334197.P10129022152893439700

/-!
# A334199: a(n) is the first occurrence of n in A334200.

The programs for A334199, there is no canonical definition to state claims against.
-/

/-! ## A334199.P8276162628559990636

`A325366(A058355(n+1))`
-/

namespace A334199.P8276162628559990636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325366 (A058355 (n + 1)).toNat

end

end A334199.P8276162628559990636

/-! ## A334199.P13536551680025103742

`A325366(A022875(n+2))`
-/

namespace A334199.P13536551680025103742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325366 (A022875 (n + 2)).toNat

end

end A334199.P13536551680025103742

/-! ## A334199.P16740076292090616172

`record[A146985(∑[A233249(n+1)])]`
-/

namespace A334199.P16740076292090616172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146985 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334199.P16740076292090616172

/-! ## A334199.P12740013074661944739

`record[A173304(∑[n+1])+n]`
-/

namespace A334199.P12740013074661944739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334199.P12740013074661944739

/-! ## A334199.P7031899489192078114

`∑[A274846(p?[A280169(n)])]`
-/

namespace A334199.P7031899489192078114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274846 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334199.P7031899489192078114

