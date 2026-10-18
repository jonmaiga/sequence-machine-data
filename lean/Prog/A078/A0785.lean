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
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A078500: Primes occurring only twice in a decade.

The programs for A078500, there is no canonical definition to state claims against.
-/

/-! ## A078500.P11974249297638621131

`p?[A050653(n+1)+1]`
-/

namespace A078500.P11974249297638621131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050653 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078500.P11974249297638621131

/-! ## A078500.P5078294819127119029

`p?[eq[2, A048853(n+1)]+2]`
-/

namespace A078500.P5078294819127119029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078500.P5078294819127119029

/-! ## A078500.P7594215177630902347

`p?[A004442(A050653(n+1))]`
-/

namespace A078500.P7594215177630902347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A050653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078500.P7594215177630902347

/-! ## A078500.P14586254874486225678

`record[A058977(A050653(n+2))]`
-/

namespace A078500.P14586254874486225678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (A050653 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078500.P14586254874486225678

/-! ## A078500.P6970949044720199042

`eq[A038800(A059995(n)), A327859(n)]`
-/

namespace A078500.P6970949044720199042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A059995 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078500.P6970949044720199042

/-!
# A078501: a(n) = Sum_{k=1..n^2} A078446(k).

The programs for A078501, the canonical program `A078501.P313352578335629401` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078501 has offset 1).

The definition of A078501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078501.P313352578335629401

`2*(n-1)*2^(n+1)+(n+1)*(n+2)/2+4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078501

/-- `2*(n-1)*2^(n+1)+(n+1)*(n+2)/2+4` -/
def P313352578335629401.Spec : Prop :=
  ∀ n, P313352578335629401.a n = (A078501 (n + 1) : ℚ)

end A078501

/-! ## A078501.P15850673939894933080

`record[A213747(n+1)+n]`
-/

namespace A078501.P15850673939894933080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213747 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078501.P15850673939894933080

namespace A078501

/-- `record[A213747(n+1)+n]` -/
def P15850673939894933080.Spec : Prop :=
  ∀ n, P15850673939894933080.a n = A078501 (n + 1)

end A078501

/-!
# A078502: a(n) = smallest positive integer N such that (N - k)/k is prime for k = 1, 2, ..., n.

The programs for A078502, there is no canonical definition to state claims against.
-/

/-! ## A078502.P3505972901752133782

`A093554(n+1)+1`
-/

namespace A078502.P3505972901752133782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093554 (n + 1) + 1

end

end A078502.P3505972901752133782

/-!
# A078503: a(n) = binomial(phi(n+1),phi(n)).

The programs for A078503, the canonical program `A078503.P2127838197446641013` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078503 has offset 1).

The definition of A078503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078503.P5948582634614586975

`C(A000010(n+2), Δ[A002088(n)])`
-/

namespace A078503.P5948582634614586975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 2)).toNat (f1 (n + 1) - f1 n).toNat

end

end A078503.P5948582634614586975

namespace A078503

/-- `C(A000010(n+2), Δ[A002088(n)])` -/
def P5948582634614586975.Spec : Prop :=
  ∀ n, (P5948582634614586975.a n : ℤ) = A078503 (n + 1)

end A078503

/-! ## A078503.P12512011366104396021

`C(A000010(n+2), Δ[A005728(n)])`
-/

namespace A078503.P12512011366104396021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 2)).toNat (f1 (n + 1) - f1 n).toNat

end

end A078503.P12512011366104396021

namespace A078503

/-- `C(A000010(n+2), Δ[A005728(n)])` -/
def P12512011366104396021.Spec : Prop :=
  ∀ n, (P12512011366104396021.a n : ℤ) = A078503 (n + 1)

end A078503

/-! ## A078503.P197899910060969141

`C(A225530(n+2), Δ[A002088(n)])`
-/

namespace A078503.P197899910060969141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225530 (n + 2)).toNat (f1 (n + 1) - f1 n).toNat

end

end A078503.P197899910060969141

namespace A078503

/-- `C(A225530(n+2), Δ[A002088(n)])` -/
def P197899910060969141.Spec : Prop :=
  ∀ n, (P197899910060969141.a n : ℤ) = A078503 (n + 1)

end A078503

/-! ## A078503.P6728853364117657059

`C(A000010(n+2), A000010(n+1))`
-/

namespace A078503.P6728853364117657059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 2)).toNat (A000010 (n + 1)).toNat

end

end A078503.P6728853364117657059

namespace A078503

/-- `C(A000010(n+2), A000010(n+1))` -/
def P6728853364117657059.Spec : Prop :=
  ∀ n, (P6728853364117657059.a n : ℤ) = A078503 (n + 1)

end A078503

/-! ## A078503.P3173553181737519637

`C(A349137(A026741(2*n+3)), A109606(n+1)+1)`
-/

namespace A078503.P3173553181737519637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349137 (A026741 (2 * n + 3)).toNat).toNat (A109606 (n + 1) + 1).toNat

end

end A078503.P3173553181737519637

namespace A078503

/-- `C(A349137(A026741(2*n+3)), A109606(n+1)+1)` -/
def P3173553181737519637.Spec : Prop :=
  ∀ n, (P3173553181737519637.a n : ℤ) = A078503 (n + 1)

end A078503

/-! ## A078503.P2127838197446641013

`C(A349137(A026741(2*n+3)), A200905(n+1)/3)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078503

/-- `C(A349137(A026741(2*n+3)), A200905(n+1)/3)` -/
def P2127838197446641013.Spec : Prop :=
  ∀ n, (P2127838197446641013.a n : ℤ) = A078503 (n + 1)

theorem P2127838197446641013.correct : P2127838197446641013.Spec := by
  intro n
  simp only [A078503, Nat.add_sub_cancel]

end A078503

/-!
# A078504: a(n) = binomial(sigma(n+1), sigma(n)).

The programs for A078504, the canonical program `A078504.P7339778567562742423` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078504 has offset 1).

The definition of A078504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078504.P7339778567562742423

`C(∑{d}[n+2, #], ∑{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078504

/-- `C(∑{d}[n+2, #], ∑{d}[n+1, #])` -/
def P7339778567562742423.Spec : Prop :=
  ∀ n, (P7339778567562742423.a n : ℤ) = A078504 (n + 1)

theorem P7339778567562742423.correct : P7339778567562742423.Spec := by
  intro n
  simp only [A078504, Nat.add_sub_cancel]

end A078504

/-! ## A078504.P15624822840366035642

`C(A000203(n+2), Δ[A160664(n)])`
-/

namespace A078504.P15624822840366035642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 2)).toNat (f1 (n + 1) - f1 n).toNat

end

end A078504.P15624822840366035642

namespace A078504

/-- `C(A000203(n+2), Δ[A160664(n)])` -/
def P15624822840366035642.Spec : Prop :=
  ∀ n, (P15624822840366035642.a n : ℤ) = A078504 (n + 1)

end A078504

/-! ## A078504.P4254362937676510240

`C(A000203(n+2), A000203(n+1))`
-/

namespace A078504.P4254362937676510240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 2)).toNat (A000203 (n + 1)).toNat

end

end A078504.P4254362937676510240

namespace A078504

/-- `C(A000203(n+2), A000203(n+1))` -/
def P4254362937676510240.Spec : Prop :=
  ∀ n, (P4254362937676510240.a n : ℤ) = A078504 (n + 1)

end A078504

/-! ## A078504.P13701913813130952413

`C(A326065(2*(n+2)), Δ[A160664(n)])`
-/

namespace A078504.P13701913813130952413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326065 (2 * (n + 2))).toNat (f1 (n + 1) - f1 n).toNat

end

end A078504.P13701913813130952413

namespace A078504

/-- `C(A326065(2*(n+2)), Δ[A160664(n)])` -/
def P13701913813130952413.Spec : Prop :=
  ∀ n, (P13701913813130952413.a n : ℤ) = A078504 (n + 1)

end A078504

/-! ## A078504.P14670866060133203885

`C(abs(A143348(n+2)), A039653(n+1)+1)`
-/

namespace A078504.P14670866060133203885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A143348 (n + 2)|.toNat (A039653 (n + 1) + 1).toNat

end

end A078504.P14670866060133203885

namespace A078504

/-- `C(abs(A143348(n+2)), A039653(n+1)+1)` -/
def P14670866060133203885.Spec : Prop :=
  ∀ n, (P14670866060133203885.a n : ℤ) = A078504 (n + 1)

end A078504

/-! ## A078504.P11775607414212945324

`C(Δ[A160664(n+1)], A039653(n+1)+1)`
-/

namespace A078504.P11775607414212945324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A039653 (n + 1) + 1).toNat

end

end A078504.P11775607414212945324

namespace A078504

/-- `C(Δ[A160664(n+1)], A039653(n+1)+1)` -/
def P11775607414212945324.Spec : Prop :=
  ∀ n, (P11775607414212945324.a n : ℤ) = A078504 (n + 1)

end A078504

/-! ## A078504.P2335804242379206521

`C(Δ[A024916(n+1)], A239050(n+1)/4)`
-/

namespace A078504.P2335804242379206521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 4)).toNat

end

end A078504.P2335804242379206521

namespace A078504

/-- `C(Δ[A024916(n+1)], A239050(n+1)/4)` -/
def P2335804242379206521.Spec : Prop :=
  ∀ n, (P2335804242379206521.a n : ℤ) = A078504 (n + 1)

end A078504

/-!
# A078505: Possible values for smallest pseudoprime ( > n ) to base n.

The programs for A078505, there is no canonical definition to state claims against.
-/

/-! ## A078505.P105888548267341268

`lt[0, char[A007535(n+1)]]`
-/

namespace A078505.P105888548267341268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078505.P105888548267341268

/-! ## A078505.P14211789173255623536

`eq[1, char[A007535(floor(n/2)+1)]]`
-/

namespace A078505.P14211789173255623536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (⌊(n : ℚ) / 2⌋ + 1).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078505.P14211789173255623536

/-! ## A078505.P4603303744985986335

`eq[0, char[A007535(A028310(n))]-1]`
-/

namespace A078505.P4603303744985986335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (A028310 n).toNat

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078505.P4603303744985986335

/-! ## A078505.P18329261582551600319

`eq[0, (char[A007535(n+1)]-1)*A179458(n+2)]`
-/

namespace A078505.P18329261582551600319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) * A179458 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078505.P18329261582551600319

/-! ## A078505.P15476334372868883665

`eq[char[A007535(n+1)], A001511(2*n+3)]`
-/

namespace A078505.P15476334372868883665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A078505.P15476334372868883665

/-!
# A078508: Number of primes between sqrt(n^3) and sqrt((n+1)^3).

The programs for A078508, there is no canonical definition to state claims against.
-/

/-! ## A078508.P11556064399215500243

`A003842(A014376(n))*A014306(n)`
-/

namespace A078508.P11556064399215500243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A014376 n).toNat * A014306 n

end

end A078508.P11556064399215500243

/-! ## A078508.P11249266900481441701

`A258045(A258076(3*n+4)+A258057(n+1))`
-/

namespace A078508.P11249266900481441701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258045 (A258076 (3 * n + 4) + A258057 (n + 1)).toNat

end

end A078508.P11249266900481441701

/-! ## A078508.P3094687171971187707

`A044941(A022319(n))+A014306(n)`
-/

namespace A078508.P3094687171971187707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A022319 n).toNat + A014306 n

end

end A078508.P3094687171971187707

/-! ## A078508.P4071998955824511914

`A014306(n)*A347456(A288386(n))`
-/

namespace A078508.P4071998955824511914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 n * A347456 (A288386 n).toNat

end

end A078508.P4071998955824511914

/-! ## A078508.P9795744646746191574

`A096921(A116407(n))%A194848(n)`
-/

namespace A078508.P9795744646746191574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096921 (A116407 n).toNat) (A194848 n)

end

end A078508.P9795744646746191574

/-!
# A078509: Number of permutations p of {1,2,...,n} such that p(i)-i != 1 and p(i)-i != 2 for all i.

The programs for A078509, the canonical program `A078509.P9581909679434584411` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078509 has offset 0).

The definition of A078509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078509.P9581909679434584411

`(n-1)*a(n-1)+(n-3)*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078509

/-- `(n-1)*a(n-1)+(n-3)*a(n-2)+a(n-3)` -/
def P9581909679434584411.Spec : Prop :=
  ∀ n, P9581909679434584411.a n = A078509 n

theorem P9581909679434584411.correct : P9581909679434584411.Spec := by
  intro n
  simp only [A078509]

end A078509

/-! ## A078509.P8659787488135524899

`A047922(∑[n-char[1]]+n)`
-/

namespace A078509.P8659787488135524899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A078509.P8659787488135524899

namespace A078509

/-- `A047922(∑[n-char[1]]+n)` -/
def P8659787488135524899.Spec : Prop :=
  ∀ n, P8659787488135524899.a n = A078509 n

end A078509

/-! ## A078509.P4247052269392858095

`A113002(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A078509.P4247052269392858095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A113002 (a (n - 1)).toNat

end

end A078509.P4247052269392858095

namespace A078509

/-- `A113002(a(n-1))` -/
def P4247052269392858095.Spec : Prop :=
  ∀ n, P4247052269392858095.a n = A078509 n

end A078509

/-!
# A078510: Spiro-Fibonacci numbers, a(n) = sum of two previous terms that are nearest when terms arranged in a spiral.

The programs for A078510, the canonical program `A078510.P9276633091591292466` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078510 has offset 0).

The definition of A078510 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078510.P12131682055780762018

`a(n-1)+a(A265409(n))` with `a(0)=0, a(1)=1`
-/

namespace A078510.P12131682055780762018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (A265409 n).toNat

end

end A078510.P12131682055780762018

namespace A078510

/-- `a(n-1)+a(A265409(n))` -/
def P12131682055780762018.Spec : Prop :=
  ∀ n, (P12131682055780762018.a n : ℤ) = A078510 n

end A078510

/-! ## A078510.P9276633091591292466

`a(n-1)+a(n-A265359(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078510

/-- `a(n-1)+a(n-A265359(n))` -/
def P9276633091591292466.Spec : Prop :=
  ∀ n, (P9276633091591292466.a n : ℤ) = A078510 n

theorem P9276633091591292466.correct : P9276633091591292466.Spec := by
  intro n
  simp only [A078510]

end A078510

/-! ## A078510.P14601839803232845584

`a(n-1)+a(A248333(A248333(n)+1))` with `a(0)=0, a(1)=1`
-/

namespace A078510.P14601839803232845584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (A248333 (A248333 n + 1).toNat).toNat

end

end A078510.P14601839803232845584

namespace A078510

/-- `a(n-1)+a(A248333(A248333(n)+1))` -/
def P14601839803232845584.Spec : Prop :=
  ∀ n, (P14601839803232845584.a n : ℤ) = A078510 n

end A078510

/-!
# A078511: Numbers k such that sopfr(k)=tau(k).

The programs for A078511, there is no canonical definition to state claims against.
-/

/-! ## A078511.P5243831277038736753

`A118336(A022106(n)+A000069(n+1))`
-/

namespace A078511.P5243831277038736753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118336 (A022106 n + A000069 (n + 1)).toNat

end

end A078511.P5243831277038736753

/-!
# A078513: a(0)=0, a(1)=1, a(n)=a(n-1)+a(n-2)+a(n-3) if a(n-1) is even, a(n)=a(n-1)+a(n-2) if a(n-1) is odd.

The programs for A078513, there is no canonical definition to state claims against.
-/

/-! ## A078513.P8130518139181758323

`A004525(n)+A004524(A113863(n))`
-/

namespace A078513.P8130518139181758323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A004524 (A113863 n).toNat

end

end A078513.P8130518139181758323

/-! ## A078513.P18013158629966023118

`A214526(∑[A003724(n+1)])`
-/

namespace A078513.P18013158629966023118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078513.P18013158629966023118

/-! ## A078513.P7315309496698166482

`A002262(A163547(n)+A003422(n))`
-/

namespace A078513.P7315309496698166482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163547 n + A003422 n).toNat

end

end A078513.P7315309496698166482

/-! ## A078513.P8417524936470343791

`A112318(A367736(n)-A008290(n))`
-/

namespace A078513.P8417524936470343791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A367736 n - A008290 n).toNat

end

end A078513.P8417524936470343791

/-!
# A078514: Numbers k such that the smallest prime dividing k is the largest exponent in the factorization of k.

The programs for A078514, there is no canonical definition to state claims against.
-/

/-! ## A078514.P11109709649112811169

`eq[A020639(n+1), A051903(n+1)]+1`
-/

namespace A078514.P11109709649112811169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078514.P11109709649112811169

/-! ## A078514.P17873062453834797237

`eq[A051903(n+1), A074828(n+1)]+1`
-/

namespace A078514.P17873062453834797237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078514.P17873062453834797237

/-! ## A078514.P17145402929445556857

`∩[A111371(n+1), A380693(n+1)]`
-/

namespace A078514.P17145402929445556857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078514.P17145402929445556857

/-! ## A078514.P8496721920616364950

`∩[A137257(n+1), A380693(n+1)]`
-/

namespace A078514.P8496721920616364950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078514.P8496721920616364950

/-! ## A078514.P154629475541047861

`∩[A144976(n+1), A380693(n+1)]`
-/

namespace A078514.P154629475541047861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078514.P154629475541047861

/-! ## A078514.P274138599546191411

`∩[A368715(n+1), A380693(n+1)]`
-/

namespace A078514.P274138599546191411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078514.P274138599546191411

/-! ## A078514.P9990099355232960749

`eq[A051903(n+1), A272565(n+1)]+1`
-/

namespace A078514.P9990099355232960749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078514.P9990099355232960749

/-! ## A078514.P16623279683951662454

`A061767(eq[A020639(n+1), A051903(n+1)])`
-/

namespace A078514.P16623279683951662454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A078514.P16623279683951662454

/-! ## A078514.P12836810955507176879

`eq[A020639(n+1), A007814(A046523(n+1))]+1`
-/

namespace A078514.P12836810955507176879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078514.P12836810955507176879

/-!
# A078515: Numbers n such that A053597(n) sets a new record.

The programs for A078515, there is no canonical definition to state claims against.
-/

/-! ## A078515.P12199967351412625198

`A000720(A079889(n+1))`
-/

namespace A078515.P12199967351412625198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079889 (n + 1)).toNat

end

end A078515.P12199967351412625198

/-! ## A078515.P5831209047844059460

`A000720(A079007(n+2))`
-/

namespace A078515.P5831209047844059460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079007 (n + 2)).toNat

end

end A078515.P5831209047844059460

/-! ## A078515.P18235302982506972642

`A061395(p?[A079889(n+1)])`
-/

namespace A078515.P18235302982506972642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078515.P18235302982506972642

/-! ## A078515.P12450168681518110143

`A061395(p?[A079007(n+2)])`
-/

namespace A078515.P12450168681518110143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079007 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078515.P12450168681518110143

/-! ## A078515.P7944504615263618098

`∑{d}[A079889(n+1), A061395(#)]`
-/

namespace A078515.P7944504615263618098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A078515.P7944504615263618098

/-!
# A078516: Sum of balls on the lawn for the s=4 tennis ball problem.

The programs for A078516, there is no canonical definition to state claims against.
-/

/-! ## A078516.P2947223006560478910

`((4*n²+11*n+8)*A002293(n+1)-A078995(n+1))/2`
-/

namespace A078516.P2947223006560478910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 2 + 11 * n + 8 : ℤ) * A002293 (n + 1) - A078995 (n + 1) : ℚ) / 2

end

end A078516.P2947223006560478910

/-!
# A078522: Numbers k such that (k+1)*(2*k+1) is a perfect square.

The programs for A078522, the canonical program `A078522.P18325188573431788692` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078522 has offset 1).

The definition of A078522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078522.P18325188573431788692

`34*a(n-1)-a(n-2)+24` with `a(0)=0, a(1)=24`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078522

/-- `34*a(n-1)-a(n-2)+24` -/
def P18325188573431788692.Spec : Prop :=
  ∀ n, P18325188573431788692.a n = A078522 (n + 1)

theorem P18325188573431788692.correct : P18325188573431788692.Spec := by
  intro n
  simp only [A078522, Nat.add_sub_cancel]

end A078522

/-! ## A078522.P15999683233485061827

`A008844(n)-1`
-/

namespace A078522.P15999683233485061827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008844 n - 1

end

end A078522.P15999683233485061827

namespace A078522

/-- `A008844(n)-1` -/
def P15999683233485061827.Spec : Prop :=
  ∀ n, P15999683233485061827.a n = A078522 (n + 1)

end A078522

/-! ## A078522.P4992633523010090208

`A001653(n+1)²-1`
-/

namespace A078522.P4992633523010090208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) ^ 2 - 1

end

end A078522.P4992633523010090208

namespace A078522

/-- `A001653(n+1)²-1` -/
def P4992633523010090208.Spec : Prop :=
  ∀ n, P4992633523010090208.a n = A078522 (n + 1)

end A078522

/-! ## A078522.P10713996060770039081

`A001542(n)*A001542(n+1)`
-/

namespace A078522.P10713996060770039081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n * A001542 (n + 1)

end

end A078522.P10713996060770039081

namespace A078522

/-- `A001542(n)*A001542(n+1)` -/
def P10713996060770039081.Spec : Prop :=
  ∀ n, P10713996060770039081.a n = A078522 (n + 1)

end A078522

/-! ## A078522.P13564884260429156768

`6*∑[34*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=4`
-/

namespace A078522.P13564884260429156768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  34 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078522.P13564884260429156768

namespace A078522

/-- `6*∑[34*a(n-1)-a(n-2)]` -/
def P13564884260429156768.Spec : Prop :=
  ∀ n, P13564884260429156768.a n = A078522 (n + 1)

end A078522

/-! ## A078522.P11059976827246762915

`record[1-floor(a(n-1)/(3-sqrt(8)))]-1` with `a(0)=1, a(1)=1`
-/

namespace A078522.P11059976827246762915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A078522.P11059976827246762915

namespace A078522

/-- `record[1-floor(a(n-1)/(3-sqrt(8)))]-1` -/
def P11059976827246762915.Spec : Prop :=
  ∀ n, P11059976827246762915.a n = A078522 (n + 1)

end A078522

/-! ## A078522.P3732523055149029883

`record[a(n-2)-2*a(n-1)]²-1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A078522.P3732523055149029883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0] fun n f1 =>
  f1 (n - 2) - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - 1

end

end A078522.P3732523055149029883

namespace A078522

/-- `record[a(n-2)-2*a(n-1)]²-1` -/
def P3732523055149029883.Spec : Prop :=
  ∀ n, P3732523055149029883.a n = A078522 (n + 1)

end A078522

/-! ## A078522.P6074024995642232532

`2*A098602(n)`
-/

namespace A078522.P6074024995642232532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098602 n

end

end A078522.P6074024995642232532

namespace A078522

/-- `2*A098602(n)` -/
def P6074024995642232532.Spec : Prop :=
  ∀ n, P6074024995642232532.a n = A078522 (n + 1)

end A078522

/-! ## A078522.P10210556481948356567

`A008845(n)/2`
-/

namespace A078522.P10210556481948356567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008845 n : ℚ) / 2

end

end A078522.P10210556481948356567

namespace A078522

/-- `A008845(n)/2` -/
def P10210556481948356567.Spec : Prop :=
  ∀ n, P10210556481948356567.a n = (A078522 (n + 1) : ℚ)

end A078522

/-! ## A078522.P7793500116616823443

`4*A029549(n)`
-/

namespace A078522.P7793500116616823443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A029549 n

end

end A078522.P7793500116616823443

namespace A078522

/-- `4*A029549(n)` -/
def P7793500116616823443.Spec : Prop :=
  ∀ n, P7793500116616823443.a n = A078522 (n + 1)

end A078522

/-!
# A078523: Primes of the form a^2 + b^6.

The programs for A078523, there is no canonical definition to state claims against.
-/

/-! ## A078523.P11906979274195149978

`∩[A066649(n+1), A303372(n+1)]`
-/

namespace A078523.P11906979274195149978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P11906979274195149978

/-! ## A078523.P3809502964457073730

`p?[A303372(n+1)]`
-/

namespace A078523.P3809502964457073730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078523.P3809502964457073730

/-! ## A078523.P4072293197934206214

`record[p?[A303372(A052938(n))]]`
-/

namespace A078523.P4072293197934206214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078523.P4072293197934206214

/-! ## A078523.P11553697533940053042

`∩[A002313(n+1), A303372(n+1)]`
-/

namespace A078523.P11553697533940053042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P11553697533940053042

/-! ## A078523.P13992938333203553344

`∩[A055025(n+1), A303372(n+1)]`
-/

namespace A078523.P13992938333203553344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P13992938333203553344

/-! ## A078523.P8386552412099899346

`∩[A109515(n+1), A303372(n+1)]`
-/

namespace A078523.P8386552412099899346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P8386552412099899346

/-! ## A078523.P17756223451072211197

`∩[A266987(n+1), A303372(n+1)]`
-/

namespace A078523.P17756223451072211197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P17756223451072211197

/-! ## A078523.P2138419350327392931

`∩[A042998(n+1), A303372(n+1)]`
-/

namespace A078523.P2138419350327392931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P2138419350327392931

/-! ## A078523.P5434387576783843840

`∩[A045352(n+1), A303372(n+1)]`
-/

namespace A078523.P5434387576783843840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P5434387576783843840

/-! ## A078523.P2972679627467128630

`∩[A270617(n+1), A303372(n+1)]`
-/

namespace A078523.P2972679627467128630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P2972679627467128630

/-! ## A078523.P9239518962594135496

`∩[A303372(n+1), A042988(n)]`
-/

namespace A078523.P9239518962594135496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P9239518962594135496

/-! ## A078523.P1444799958541326720

`∩[A044042(n+1), A303372(n+1)]`
-/

namespace A078523.P1444799958541326720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P1444799958541326720

/-! ## A078523.P3738343326490519818

`∩[A000040(n+1), A303372(n+1)]`
-/

namespace A078523.P3738343326490519818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P3738343326490519818

/-! ## A078523.P9179518283068814167

`∩[A008578(n+1), A303372(n+1)]`
-/

namespace A078523.P9179518283068814167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P9179518283068814167

/-! ## A078523.P355886158008810591

`∩[A033946(n+1), A303372(n+1)]`
-/

namespace A078523.P355886158008810591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P355886158008810591

/-! ## A078523.P12659030763345028284

`∩[A045344(n+1), A303372(n+1)]`
-/

namespace A078523.P12659030763345028284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P12659030763345028284

/-! ## A078523.P10343125860712625933

`∩[A046022(n+1), A303372(n+1)]`
-/

namespace A078523.P10343125860712625933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P10343125860712625933

/-! ## A078523.P2028463716832673530

`∩[A051948(n+1), A303372(n+1)]`
-/

namespace A078523.P2028463716832673530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P2028463716832673530

/-! ## A078523.P17365366228002070070

`∩[A053813(n+1), A303372(n+1)]`
-/

namespace A078523.P17365366228002070070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P17365366228002070070

/-! ## A078523.P17613451100530556439

`∩[A060634(n+1), A303372(n+1)]`
-/

namespace A078523.P17613451100530556439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078523.P17613451100530556439

/-!
# A078526: Probability P(n) of the occurrence of a 2D self-trapping walk of length n.

The programs for A078526, there is no canonical definition to state claims against.
-/

/-! ## A078526.P18410888845923977571

`A026741(record[A077483(n+7)])`
-/

namespace A078526.P18410888845923977571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077483 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078526.P18410888845923977571

/-!
# A078528: Number of unconstrained walks on square lattice trapped after n steps.

The programs for A078528, there is no canonical definition to state claims against.
-/

/-! ## A078528.P13379521851123005779

`A374704(n)-A007814(A117156(n))`
-/

namespace A078528.P13379521851123005779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374704 n - A007814 (A117156 n).toNat

end

end A078528.P13379521851123005779

/-! ## A078528.P5829922546724383917

`A026819(A026709(n)*A026735(n))`
-/

namespace A078528.P5829922546724383917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A026709 n * A026735 n).toNat

end

end A078528.P5829922546724383917

/-! ## A078528.P12914344688385642951

`A374704(n)-A341602(A001008(n+1))`
-/

namespace A078528.P12914344688385642951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374704 n - A341602 (A001008 (n + 1)).toNat

end

end A078528.P12914344688385642951

/-! ## A078528.P12795800792821417894

`A374704(n)-A337690(A374703(n+2))`
-/

namespace A078528.P12795800792821417894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374704 n - A337690 (A374703 (n + 2)).toNat

end

end A078528.P12795800792821417894

/-!
# A078531: Coefficients of power series that satisfies A(x)^2 - 4*x*A(x)^3 = 1, A(0)=1.

The programs for A078531, there is no canonical definition to state claims against.
-/

/-! ## A078531.P7313324218873726613

`(A085614(n+1)+A007297(n+1))/2`
-/

namespace A078531.P7313324218873726613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085614 (n + 1) + A007297 (n + 1) : ℚ) / 2

end

end A078531.P7313324218873726613

/-! ## A078531.P10334834455419406886

`A091527(n)/(n+1)`
-/

namespace A078531.P10334834455419406886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n : ℚ) / (n + 1 : ℚ)

end

end A078531.P10334834455419406886

/-! ## A078531.P2024406815256001177

`A001764(n)/A174687(n)*A091527(n)`
-/

namespace A078531.P2024406815256001177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 n : ℚ) / (A174687 n : ℚ) * (A091527 n : ℚ)

end

end A078531.P2024406815256001177

/-! ## A078531.P10637897916611810699

`(n+1)^A008683(A002146(n))*A091527(n)`
-/

namespace A078531.P10637897916611810699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A002146 n).toNat : ℤ) * (A091527 n : ℚ)

end

end A078531.P10637897916611810699

/-! ## A078531.P1543885464137384023

`A054335(∑[4*n])/(n+1)`
-/

namespace A078531.P1543885464137384023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054335 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A078531.P1543885464137384023

/-! ## A078531.P3426004626814063115

`A205813(A001105(n+1))/(n+1)`
-/

namespace A078531.P3426004626814063115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205813 (A001105 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A078531.P3426004626814063115

/-! ## A078531.P16574244526572533248

`A330843(∑[n+3])/(n+1)`
-/

namespace A078531.P16574244526572533248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330843 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A078531.P16574244526572533248

/-!
# A078532: Coefficients of power series that satisfies A(x)^3 - 9*x*A(x)^4 = 1, A(0)=1.

The programs for A078532, there is no canonical definition to state claims against.
-/

/-! ## A078532.P11769417274158104851

`A308358(A121401(n)²)`
-/

namespace A078532.P11769417274158104851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (A121401 n ^ 2).toNat

end

end A078532.P11769417274158104851

/-!
# A078533: Coefficients of power series that satisfies A(x)^4 - 16x*A(x)^5 = 1, A(0)=1.

The programs for A078533, there is no canonical definition to state claims against.
-/

/-! ## A078533.P1762589029883429554

`A369534(n+1)+A214814(A214814(n))`
-/

namespace A078533.P1762589029883429554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369534 (n + 1) + A214814 (A214814 n).toNat

end

end A078533.P1762589029883429554

/-!
# A078534: Coefficients of power series that satisfies A(x)^5 - 25*x*A(x)^6 = 1, A(0)=1.

The programs for A078534, there is no canonical definition to state claims against.
-/

/-! ## A078534.P10111859083672865233

`A369535(n+1)+A006924(A006924(n))`
-/

namespace A078534.P10111859083672865233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369535 (n + 1) + A006924 (A006924 n).toNat

end

end A078534.P10111859083672865233

/-!
# A078536: Infinite lower triangular matrix, M, that satisfies [M^4](i,j) = M(i+1,j+1) for all i,j>=0 where [M^n](i,j) denotes the element at row i, column j, of the n-th power of matrix M, with M(0,k)=1 and M(k,k)=1 for all k>=0.

The programs for A078536, there is no canonical definition to state claims against.
-/

/-! ## A078536.P9697183965486708313

`A301342(A253145(n)+A193592(n))`
-/

namespace A078536.P9697183965486708313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301342 (A253145 n + A193592 n).toNat

end

end A078536.P9697183965486708313

/-! ## A078536.P13075108631373403968

`A301342(A193592(n)+A000217(n+1))`
-/

namespace A078536.P13075108631373403968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301342 (A193592 n + A000217 (n + 1)).toNat

end

end A078536.P13075108631373403968

/-!
# A078537: Number of partitions of 4^n into powers of 4 (without regard to order).

The programs for A078537, there is no canonical definition to state claims against.
-/

/-! ## A078537.P8169868210085364655

`∑[A111846(n)]`
-/

namespace A078537.P8169868210085364655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078537.P8169868210085364655

/-! ## A078537.P7304550973424980706

`A145515(A052905(n+2))`
-/

namespace A078537.P7304550973424980706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (A052905 (n + 2)).toNat

end

end A078537.P7304550973424980706

/-! ## A078537.P7593658702320936963

`A145515(eq[4, A025581(n)])`
-/

namespace A078537.P7593658702320936963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078537.P7593658702320936963

/-! ## A078537.P13253511272703664193

`A145515(eq[5, A195663(n)])`
-/

namespace A078537.P13253511272703664193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078537.P13253511272703664193

/-! ## A078537.P1362542002908359006

`A145515(A055999(n+2)+1)`
-/

namespace A078537.P1362542002908359006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (A055999 (n + 2) + 1).toNat

end

end A078537.P1362542002908359006

/-!
# A078541: Refactorable numbers x, such that quotient x/A000005(x) equals a power of 2.

The programs for A078541, there is no canonical definition to state claims against.
-/

/-! ## A078541.P16397798505469144651

`eq[A000265(A000005(n+1)), A000265(n+1)]+1`
-/

namespace A078541.P16397798505469144651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078541.P16397798505469144651

/-! ## A078541.P947800655698559799

`∩[A143263(n+1), A162952(n+1)]`
-/

namespace A078541.P947800655698559799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078541.P947800655698559799

/-! ## A078541.P737639745777900366

`eq[A000593(A000005(n+1)), A000593(n+1)]+1`
-/

namespace A078541.P737639745777900366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078541.P737639745777900366

/-! ## A078541.P12767570747356043120

`eq[A049773(A000005(n+1)), A049773(n+1)]+1`
-/

namespace A078541.P12767570747356043120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078541.P12767570747356043120

/-! ## A078541.P9933062932645580158

`eq[A213916(A000005(n+1)), A213916(n+1)]+1`
-/

namespace A078541.P9933062932645580158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213916 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078541.P9933062932645580158

/-!
# A078542: Unbalanced composite numbers.

The programs for A078542, there is no canonical definition to state claims against.
-/

/-! ## A078542.P5969555633347044435

`∩[A002808(n+1), comp[A020492(n+1)]]`
-/

namespace A078542.P5969555633347044435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A078542.P5969555633347044435

/-! ## A078542.P15269008052178577708

`∩[A018252(n+1), comp[A020492(n+1)]]`
-/

namespace A078542.P15269008052178577708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A078542.P15269008052178577708

/-! ## A078542.P3886868722150012810

`eq[char[A020492(n+1)], A339579(n+1)]`
-/

namespace A078542.P3886868722150012810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A078542.P3886868722150012810

/-!
# A078543: Balanced refactorable numbers.

The programs for A078543, there is no canonical definition to state claims against.
-/

/-! ## A078543.P14954965642122249395

`∩[A020492(n+1), A033950(n+1)]`
-/

namespace A078543.P14954965642122249395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078543.P14954965642122249395

/-!
# A078544: Non-balanced numbers in A015761.

The programs for A078544, there is no canonical definition to state claims against.
-/

/-! ## A078544.P1066477553807786530

`∩[A015761(n+1), A078542(n+1)]`
-/

namespace A078544.P1066477553807786530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078544.P1066477553807786530

/-! ## A078544.P9305197569441142365

`A077801(comp[A205295(2*n+1)²])`
-/

namespace A078544.P9305197569441142365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077801 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A078544.P9305197569441142365

/-! ## A078544.P17518909515502272694

`A077801(A187829(n+1))`
-/

namespace A078544.P17518909515502272694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077801 (A187829 (n + 1)).toNat

end

end A078544.P17518909515502272694

/-! ## A078544.P17030909410603460193

`A077801(n-val(A238475(3*n+1), 2)+1)`
-/

namespace A078544.P17030909410603460193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077801 ((n : ℤ) - (SequenceMachineLib.valuation (A238475 (3 * n + 1)).toNat 2 : ℤ) + 1).toNat

end

end A078544.P17030909410603460193

/-! ## A078544.P8063228450880889878

`A077801(n+1)+A046080(A000079(n))`
-/

namespace A078544.P8063228450880889878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077801 (n + 1) + A046080 (A000079 n).toNat

end

end A078544.P8063228450880889878

/-!
# A078545: Largest prime dividing tau(n), the number of divisors of n.

The programs for A078545, the canonical program `A078545.P16287826699666276305` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078545 has offset 2).

The definition of A078545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078545.P16287826699666276305

`A006530(∏{e}[n+2, #+1])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078545

/-- `A006530(∏{e}[n+2, #+1])` -/
def P16287826699666276305.Spec : Prop :=
  ∀ n, P16287826699666276305.a n = A078545 (n + 2)

theorem P16287826699666276305.correct : P16287826699666276305.Spec := by
  intro n
  simp only [A078545, Nat.add_sub_cancel]

end A078545

/-! ## A078545.P5582694196765370363

`A006530(∑{d}[n+2, ceil(acot(#))])`
-/

namespace A078545.P5582694196765370363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A078545.P5582694196765370363

namespace A078545

/-- `A006530(∑{d}[n+2, ceil(acot(#))])` -/
def P5582694196765370363.Spec : Prop :=
  ∀ n, P5582694196765370363.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P6412242367253509404

`A006530(∑{d}[n+2, (#%2)!])`
-/

namespace A078545.P6412242367253509404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2))

end

end A078545.P6412242367253509404

namespace A078545

/-- `A006530(∑{d}[n+2, (#%2)!])` -/
def P6412242367253509404.Spec : Prop :=
  ∀ n, P6412242367253509404.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P9351659852290662143

`A006530(∑{d}[n+2, gcd(#, n+1)])`
-/

namespace A078545.P9351659852290662143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd d (n + 1))

end

end A078545.P9351659852290662143

namespace A078545

/-- `A006530(∑{d}[n+2, gcd(#, n+1)])` -/
def P9351659852290662143.Spec : Prop :=
  ∀ n, P9351659852290662143.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P179165474546548571

`A006530(∑{d}[n+2, ((-1)^#)²])`
-/

namespace A078545.P179165474546548571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), ((-1) ^ d) ^ 2).toNat

end

end A078545.P179165474546548571

namespace A078545

/-- `A006530(∑{d}[n+2, ((-1)^#)²])` -/
def P179165474546548571.Spec : Prop :=
  ∀ n, P179165474546548571.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P14263462044750744368

`A006530(A000005(n+2))`
-/

namespace A078545.P14263462044750744368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000005 (n + 2)).toNat

end

end A078545.P14263462044750744368

namespace A078545

/-- `A006530(A000005(n+2))` -/
def P14263462044750744368.Spec : Prop :=
  ∀ n, P14263462044750744368.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P8054066672457307023

`A006530(A335841(n+2))`
-/

namespace A078545.P8054066672457307023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A335841 (n + 2)).toNat

end

end A078545.P8054066672457307023

namespace A078545

/-- `A006530(A335841(n+2))` -/
def P8054066672457307023.Spec : Prop :=
  ∀ n, P8054066672457307023.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P8239274774625068256

`A068211(A000005(n+2)²)`
-/

namespace A078545.P8239274774625068256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068211 (A000005 (n + 2) ^ 2).toNat

end

end A078545.P8239274774625068256

namespace A078545

/-- `A068211(A000005(n+2)²)` -/
def P8239274774625068256.Spec : Prop :=
  ∀ n, P8239274774625068256.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P5316962308606623217

`A082061(A000005(n+2)²)`
-/

namespace A078545.P5316962308606623217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A000005 (n + 2) ^ 2).toNat

end

end A078545.P5316962308606623217

namespace A078545

/-- `A082061(A000005(n+2)²)` -/
def P5316962308606623217.Spec : Prop :=
  ∀ n, P5316962308606623217.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P9683854566521859885

`A085392(A000005(n+2)²)`
-/

namespace A078545.P9683854566521859885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A000005 (n + 2) ^ 2).toNat

end

end A078545.P9683854566521859885

namespace A078545

/-- `A085392(A000005(n+2)²)` -/
def P9683854566521859885.Spec : Prop :=
  ∀ n, P9683854566521859885.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P11120264234254972358

`A087039(A000005(n+2)²)`
-/

namespace A078545.P11120264234254972358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A000005 (n + 2) ^ 2).toNat

end

end A078545.P11120264234254972358

namespace A078545

/-- `A087039(A000005(n+2)²)` -/
def P11120264234254972358.Spec : Prop :=
  ∀ n, P11120264234254972358.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P3685805870927951352

`A111089(A000005(n+2)²)`
-/

namespace A078545.P3685805870927951352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A000005 (n + 2) ^ 2).toNat

end

end A078545.P3685805870927951352

namespace A078545

/-- `A111089(A000005(n+2)²)` -/
def P3685805870927951352.Spec : Prop :=
  ∀ n, P3685805870927951352.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P521280036399938657

`A189172(A000005(n+2)²)`
-/

namespace A078545.P521280036399938657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189172 (A000005 (n + 2) ^ 2).toNat

end

end A078545.P521280036399938657

namespace A078545

/-- `A189172(A000005(n+2)²)` -/
def P521280036399938657.Spec : Prop :=
  ∀ n, P521280036399938657.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P3346850845458065056

`A217581(A000005(n+2)²)`
-/

namespace A078545.P3346850845458065056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A000005 (n + 2) ^ 2).toNat

end

end A078545.P3346850845458065056

namespace A078545

/-- `A217581(A000005(n+2)²)` -/
def P3346850845458065056.Spec : Prop :=
  ∀ n, P3346850845458065056.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P8540582324701497200

`A249740(A000005(n+2)²)`
-/

namespace A078545.P8540582324701497200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A000005 (n + 2) ^ 2).toNat

end

end A078545.P8540582324701497200

namespace A078545

/-- `A249740(A000005(n+2)²)` -/
def P8540582324701497200.Spec : Prop :=
  ∀ n, P8540582324701497200.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P7525649713996331668

`A006530(Δ[A006218(n+1)])`
-/

namespace A078545.P7525649713996331668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A078545.P7525649713996331668

namespace A078545

/-- `A006530(Δ[A006218(n+1)])` -/
def P7525649713996331668.Spec : Prop :=
  ∀ n, P7525649713996331668.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P16061357575204423751

`A085392(2*A000005(n+2))`
-/

namespace A078545.P16061357575204423751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A000005 (n + 2)).toNat

end

end A078545.P16061357575204423751

namespace A078545

/-- `A085392(2*A000005(n+2))` -/
def P16061357575204423751.Spec : Prop :=
  ∀ n, P16061357575204423751.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P10290127409427717674

`A006530(2*A000005(2-(n-2*n)))`
-/

namespace A078545.P10290127409427717674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A000005 (2 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A078545.P10290127409427717674

namespace A078545

/-- `A006530(2*A000005(2-(n-2*n)))` -/
def P10290127409427717674.Spec : Prop :=
  ∀ n, P10290127409427717674.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P15224266157375947862

`A020639(A345941(A000005(n+2)²))`
-/

namespace A078545.P15224266157375947862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A345941 (A000005 (n + 2) ^ 2).toNat).toNat

end

end A078545.P15224266157375947862

namespace A078545

/-- `A020639(A345941(A000005(n+2)²))` -/
def P15224266157375947862.Spec : Prop :=
  ∀ n, P15224266157375947862.a n = A078545 (n + 2)

end A078545

/-! ## A078545.P10584548444312737931

`A366765(A083730(A000005(n+2)²))`
-/

namespace A078545.P10584548444312737931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366765 (A083730 (A000005 (n + 2) ^ 2).toNat).toNat

end

end A078545.P10584548444312737931

namespace A078545

/-- `A366765(A083730(A000005(n+2)²))` -/
def P10584548444312737931.Spec : Prop :=
  ∀ n, P10584548444312737931.a n = A078545 (n + 2)

end A078545

/-!
# A078546: LCM of n and its nonzero decimal digits.

The programs for A078546, there is no canonical definition to state claims against.
-/

/-! ## A078546.P13234145629544305583

`lcm(n+1, A052429(n+1))`
-/

namespace A078546.P13234145629544305583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A052429 (n + 1))

end

end A078546.P13234145629544305583

/-! ## A078546.P10005033563549473689

`A078547(n+1)+1+n`
-/

namespace A078546.P10005033563549473689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078547 (n + 1) + 1 + (n : ℤ)

end

end A078546.P10005033563549473689

/-! ## A078546.P6167549644351166392

`(n+1)*floor(A078548(n+1)/(n+1))+n+1`
-/

namespace A078546.P6167549644351166392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A078548 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + (n + 1 : ℤ)

end

end A078546.P6167549644351166392

/-! ## A078546.P4554028505275510100

`A078548(n+1)+A052429(n+1)`
-/

namespace A078546.P4554028505275510100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078548 (n + 1) + A052429 (n + 1)

end

end A078546.P4554028505275510100

/-! ## A078546.P6478719782598999923

`lcm(-xor(n, -1), A062078(A004719(n+1)))`
-/

namespace A078546.P6478719782598999923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-Int.xor (n : ℤ) (-1)) (A062078 (A004719 (n + 1)).toNat)

end

end A078546.P6478719782598999923

/-! ## A078546.P2512164152504211584

`A051173(A052429(n+1)+∑[n])`
-/

namespace A078546.P2512164152504211584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (A052429 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A078546.P2512164152504211584

/-!
# A078547: a(n) = lcm(n, A052429(n)) - n.

The programs for A078547, there is no canonical definition to state claims against.
-/

/-! ## A078547.P10837041367940003409

`lcm(n+1, A052429(n+1))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078547.P10837041367940003409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A052429 (n + 1)) : ℤ) - (n + 1 : ℤ)

end

end A078547.P10837041367940003409

/-! ## A078547.P3511078516968682780

`A078546(n+1)-(n+1)`
-/

namespace A078547.P3511078516968682780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078546 (n + 1) - (n + 1 : ℤ)

end

end A078547.P3511078516968682780

/-! ## A078547.P3552325575381131196

`(n+1)*floor(A078548(n+1)/(n+1))`
-/

namespace A078547.P3552325575381131196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A078548 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A078547.P3552325575381131196

/-! ## A078547.P14248356437346922783

`lcm(-xor(n, -1), A062078(A004719(n+1)))-(n+1)`
-/

namespace A078547.P14248356437346922783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (-Int.xor (n : ℤ) (-1)) (A062078 (A004719 (n + 1)).toNat) : ℤ) - (n + 1 : ℤ)

end

end A078547.P14248356437346922783

/-! ## A078547.P6707093876351353822

`A079781(n+1)%A078546(n+1)`
-/

namespace A078547.P6707093876351353822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079781 (n + 1)) (A078546 (n + 1))

end

end A078547.P6707093876351353822

/-! ## A078547.P3048320055548467480

`A023443(A078546(n+1)-n)`
-/

namespace A078547.P3048320055548467480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A078546 (n + 1) - (n : ℤ)).toNat

end

end A078547.P3048320055548467480

/-! ## A078547.P7987975928242882772

`A023443(lcm(n+1, A052429(n+1))-n)`
-/

namespace A078547.P7987975928242882772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.lcm (n + 1 : ℤ) (A052429 (n + 1)) - n)

end

end A078547.P7987975928242882772

/-! ## A078547.P11678935784209726650

`A051173(A052429(n+1)+∑[n])-(n+1)`
-/

namespace A078547.P11678935784209726650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (A052429 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat - (n + 1 : ℤ)

end

end A078547.P11678935784209726650

/-!
# A078548: a(n) = lcm(n, A052429(n)) - A052429(n).

The programs for A078548, there is no canonical definition to state claims against.
-/

/-! ## A078548.P6146478866057132643

`lcm(n+1, A052429(n+1))-A052429(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078548.P6146478866057132643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A052429 (n + 1)) : ℤ) - A052429 (n + 1)

end

end A078548.P6146478866057132643

/-! ## A078548.P622323704195165908

`A078546(n+1)-A052429(n+1)`
-/

namespace A078548.P622323704195165908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078546 (n + 1) - A052429 (n + 1)

end

end A078548.P622323704195165908

/-! ## A078548.P8302771817118400280

`A078547(n+1)+1+n-A052429(n+1)`
-/

namespace A078548.P8302771817118400280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078547 (n + 1) + 1 + (n : ℤ) - A052429 (n + 1)

end

end A078548.P8302771817118400280

/-! ## A078548.P16337042282056127302

`A078546(n+1)-A062078(A004185(n+1))`
-/

namespace A078548.P16337042282056127302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078546 (n + 1) - A062078 (A004185 (n + 1)).toNat

end

end A078548.P16337042282056127302

/-! ## A078548.P14762758162103800943

`A078546(n+1)-A062078(A004719(n+1))`
-/

namespace A078548.P14762758162103800943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078546 (n + 1) - A062078 (A004719 (n + 1)).toNat

end

end A078548.P14762758162103800943

/-! ## A078548.P17791270371830896957

`A078546(n+1)-A062078(A180410(n+1))`
-/

namespace A078548.P17791270371830896957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078546 (n + 1) - A062078 (A180410 (n + 1)).toNat

end

end A078548.P17791270371830896957

/-! ## A078548.P413943015447151495

`(A000578(n)*A052429(n+1))%A078546(n+1)`
-/

namespace A078548.P413943015447151495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n * A052429 (n + 1)) (A078546 (n + 1))

end

end A078548.P413943015447151495

/-! ## A078548.P11822539784700604557

`A078546(n+1)-A062078(A343750(n+1))`
-/

namespace A078548.P11822539784700604557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078546 (n + 1) - A062078 (A343750 (n + 1)).toNat

end

end A078548.P11822539784700604557

/-!
# A078550: Non-balanced numbers in A015774.

The programs for A078550, there is no canonical definition to state claims against.
-/

/-! ## A078550.P16139777411117111024

`∩[A015774(n+1), A078542(n+1)]`
-/

namespace A078550.P16139777411117111024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078550.P16139777411117111024

/-!
# A078551: Largest prime dividing sigma(2,n).

The programs for A078551, the canonical program `A078551.P4479326662747081933` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078551 has offset 2).

The definition of A078551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078551.P4479326662747081933

`A006530(A001157(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078551

/-- `A006530(A001157(n+2))` -/
def P4479326662747081933.Spec : Prop :=
  ∀ n, P4479326662747081933.a n = A078551 (n + 2)

theorem P4479326662747081933.correct : P4479326662747081933.Spec := by
  intro n
  simp only [A078551, Nat.add_sub_cancel]

end A078551

/-! ## A078551.P1067907810516868515

`A006530(A158299(n+2))`
-/

namespace A078551.P1067907810516868515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158299 (n + 2)).toNat

end

end A078551.P1067907810516868515

namespace A078551

/-- `A006530(A158299(n+2))` -/
def P1067907810516868515.Spec : Prop :=
  ∀ n, P1067907810516868515.a n = A078551 (n + 2)

end A078551

/-! ## A078551.P8415241903468806818

`A006530(A080399(n+2))`
-/

namespace A078551.P8415241903468806818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A080399 (n + 2)).toNat

end

end A078551.P8415241903468806818

namespace A078551

/-- `A006530(A080399(n+2))` -/
def P8415241903468806818.Spec : Prop :=
  ∀ n, P8415241903468806818.a n = A078551 (n + 2)

end A078551

/-! ## A078551.P3086557581029953646

`A006530(∑{d}[n+2, #²])`
-/

namespace A078551.P3086557581029953646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A078551.P3086557581029953646

namespace A078551

/-- `A006530(∑{d}[n+2, #²])` -/
def P3086557581029953646.Spec : Prop :=
  ∀ n, P3086557581029953646.a n = A078551 (n + 2)

end A078551

/-! ## A078551.P8554652689957910378

`A006530(sqrt(A356533(n+2)))`
-/

namespace A078551.P8554652689957910378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A356533 (n + 2) : ℝ))).toNat

end

end A078551.P8554652689957910378

namespace A078551

/-- `A006530(sqrt(A356533(n+2)))` -/
def P8554652689957910378.Spec : Prop :=
  ∀ n, P8554652689957910378.a n = A078551 (n + 2)

end A078551

/-! ## A078551.P17169463620101669707

`A006530(Δ[A064602(n+1)])`
-/

namespace A078551.P17169463620101669707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A078551.P17169463620101669707

namespace A078551

/-- `A006530(Δ[A064602(n+1)])` -/
def P17169463620101669707.Spec : Prop :=
  ∀ n, P17169463620101669707.a n = A078551 (n + 2)

end A078551

/-! ## A078551.P16078242237125915901

`A006530(A067558(n+2)+(n+2)²)`
-/

namespace A078551.P16078242237125915901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A067558 (n + 2) + ((n + 2) ^ 2 : ℤ)).toNat

end

end A078551.P16078242237125915901

namespace A078551

/-- `A006530(A067558(n+2)+(n+2)²)` -/
def P16078242237125915901.Spec : Prop :=
  ∀ n, P16078242237125915901.a n = A078551 (n + 2)

end A078551

/-! ## A078551.P12277579611861578213

`A006530(A035316((n+2)²))`
-/

namespace A078551.P12277579611861578213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035316 ((n + 2) ^ 2)).toNat

end

end A078551.P12277579611861578213

namespace A078551

/-- `A006530(A035316((n+2)²))` -/
def P12277579611861578213.Spec : Prop :=
  ∀ n, P12277579611861578213.a n = A078551 (n + 2)

end A078551

/-! ## A078551.P3119137137125638752

`A006530(A076752((n+2)²))`
-/

namespace A078551.P3119137137125638752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076752 ((n + 2) ^ 2)).toNat

end

end A078551.P3119137137125638752

namespace A078551

/-- `A006530(A076752((n+2)²))` -/
def P3119137137125638752.Spec : Prop :=
  ∀ n, P3119137137125638752.a n = A078551 (n + 2)

end A078551

/-! ## A078551.P18391637904242480863

`A006530(A293235(A184636(n+2)))`
-/

namespace A078551.P18391637904242480863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A293235 (A184636 (n + 2)).toNat).toNat

end

end A078551.P18391637904242480863

namespace A078551

/-- `A006530(A293235(A184636(n+2)))` -/
def P18391637904242480863.Spec : Prop :=
  ∀ n, P18391637904242480863.a n = A078551 (n + 2)

end A078551

/-!
# A078552: Largest prime dividing sigma(3,n).

The programs for A078552, the canonical program `A078552.P17214500758562532020` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078552 has offset 2).

The definition of A078552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078552.P17214500758562532020

`A006530(A001158(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078552

/-- `A006530(A001158(n+2))` -/
def P17214500758562532020.Spec : Prop :=
  ∀ n, P17214500758562532020.a n = A078552 (n + 2)

theorem P17214500758562532020.correct : P17214500758562532020.Spec := by
  intro n
  simp only [A078552, Nat.add_sub_cancel]

end A078552

/-! ## A078552.P11667408169974348210

`A006530(A091259(n+2))`
-/

namespace A078552.P11667408169974348210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A091259 (n + 2)).toNat

end

end A078552.P11667408169974348210

namespace A078552

/-- `A006530(A091259(n+2))` -/
def P11667408169974348210.Spec : Prop :=
  ∀ n, P11667408169974348210.a n = A078552 (n + 2)

end A078552

/-! ## A078552.P12690742371438987813

`p?[A034699(A007947(A091259(n+1)))]`
-/

namespace A078552.P12690742371438987813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A007947 (A091259 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078552.P12690742371438987813

namespace A078552

/-- `p?[A034699(A007947(A091259(n+1)))]` -/
def P12690742371438987813.Spec : Prop :=
  ∀ n, P12690742371438987813.a n = A078552 (n + 2)

end A078552

/-! ## A078552.P15452065663743862480

`A006530(∏{p}[∑{d}[n+2, #^3], #])`
-/

namespace A078552.P15452065663743862480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078552.P15452065663743862480

namespace A078552

/-- `A006530(∏{p}[∑{d}[n+2, #^3], #])` -/
def P15452065663743862480.Spec : Prop :=
  ∀ n, P15452065663743862480.a n = A078552 (n + 2)

end A078552

/-! ## A078552.P1713963158031785251

`A006530(A080238(n+2))`
-/

namespace A078552.P1713963158031785251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A080238 (n + 2)).toNat

end

end A078552.P1713963158031785251

namespace A078552

/-- `A006530(A080238(n+2))` -/
def P1713963158031785251.Spec : Prop :=
  ∀ n, P1713963158031785251.a n = A078552 (n + 2)

end A078552

/-!
# A078553: Largest prime dividing sigma(4,n).

The programs for A078553, the canonical program `A078553.P15455178871410636653` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078553 has offset 2).

The definition of A078553 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001159, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078553.P15455178871410636653

`A006530(A001159(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078553

/-- `A006530(A001159(n+2))` -/
def P15455178871410636653.Spec : Prop :=
  ∀ n, P15455178871410636653.a n = A078553 (n + 2)

theorem P15455178871410636653.correct : P15455178871410636653.Spec := by
  intro n
  simp only [A078553, Nat.add_sub_cancel]

end A078553

/-! ## A078553.P6256859892728288355

`A078551(A355038(n+2))`
-/

namespace A078553.P6256859892728288355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078551 (A355038 (n + 2)).toNat

end

end A078553.P6256859892728288355

namespace A078553

/-- `A078551(A355038(n+2))` -/
def P6256859892728288355.Spec : Prop :=
  ∀ n, P6256859892728288355.a n = A078553 (n + 2)

end A078553

/-! ## A078553.P15284840333033109979

`A006530(∑{d}[n+2, #^4])`
-/

namespace A078553.P15284840333033109979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), d ^ 4)

end

end A078553.P15284840333033109979

namespace A078553

/-- `A006530(∑{d}[n+2, #^4])` -/
def P15284840333033109979.Spec : Prop :=
  ∀ n, P15284840333033109979.a n = A078553 (n + 2)

end A078553

/-! ## A078553.P18193952464393016552

`A006530(record[∑{d}[2-n, #²²]])`
-/

namespace A078553.P18193952464393016552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A078553.P18193952464393016552

namespace A078553

/-- `A006530(record[∑{d}[2-n, #²²]])` -/
def P18193952464393016552.Spec : Prop :=
  ∀ n, P18193952464393016552.a n = A078553 (n + 2)

end A078553

/-! ## A078553.P7652685239089373170

`A006530(A017671(n+2))`
-/

namespace A078553.P7652685239089373170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017671 (n + 2)).toNat

end

end A078553.P7652685239089373170

namespace A078553

/-- `A006530(A017671(n+2))` -/
def P7652685239089373170.Spec : Prop :=
  ∀ n, P7652685239089373170.a n = A078553 (n + 2)

end A078553

/-!
# A078554: Largest prime dividing sigma(5,n).

The programs for A078554, the canonical program `A078554.P10578055555926618645` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078554 has offset 2).

The definition of A078554 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001160, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078554.P10578055555926618645

`A006530(A001160(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078554

/-- `A006530(A001160(n+2))` -/
def P10578055555926618645.Spec : Prop :=
  ∀ n, P10578055555926618645.a n = A078554 (n + 2)

theorem P10578055555926618645.correct : P10578055555926618645.Spec := by
  intro n
  simp only [A078554, Nat.add_sub_cancel]

end A078554

/-! ## A078554.P15870780432120803291

`A006530(A017673(n+2))`
-/

namespace A078554.P15870780432120803291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017673 (n + 2)).toNat

end

end A078554.P15870780432120803291

namespace A078554

/-- `A006530(A017673(n+2))` -/
def P15870780432120803291.Spec : Prop :=
  ∀ n, P15870780432120803291.a n = A078554 (n + 2)

end A078554

/-!
# A078556: Moebius mu of balanced numbers.

The programs for A078556, there is no canonical definition to state claims against.
-/

/-! ## A078556.P3602625679871130942

`A008683(A020492(n+1))`
-/

namespace A078556.P3602625679871130942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020492 (n + 1)).toNat

end

end A078556.P3602625679871130942

/-! ## A078556.P10556302527972622395

`∏{e}[A020492(n+1), A016411(#)]`
-/

namespace A078556.P10556302527972622395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016411 (Nat.factorization (f1 n).natAbs p)

end

end A078556.P10556302527972622395

/-! ## A078556.P12612658971889975319

`∏{e}[A020492(n+1), A057094(A000124(#))]`
-/

namespace A078556.P12612658971889975319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A057094 (A000124 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A078556.P12612658971889975319

/-! ## A078556.P14501828748711611856

`∏{e}[A020492(n+1), A015920(A076304(#))]`
-/

namespace A078556.P14501828748711611856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A015920 (A076304 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A078556.P14501828748711611856

/-! ## A078556.P13211132265812467252

`∏{e}[A020492(n+1), A302234(A001222(#)+1)]`
-/

namespace A078556.P13211132265812467252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302234 (A001222 (Nat.factorization (f1 n).natAbs p) + 1).toNat

end

end A078556.P13211132265812467252

/-! ## A078556.P15717405483349058611

`A008683(∩[A015763(n+1), A015765(n+1)])`
-/

namespace A078556.P15717405483349058611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A078556.P15717405483349058611

/-!
# A078557: Squarefree balanced numbers (i.e., squarefree members of A020492).

The programs for A078557, there is no canonical definition to state claims against.
-/

/-! ## A078557.P15589523446631080949

`∩[A123041(n+1), A258077(n+1)]`
-/

namespace A078557.P15589523446631080949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P15589523446631080949

/-! ## A078557.P4026815967063130860

`A020492(eq[1, A078556(n+1)²]+1)`
-/

namespace A078557.P4026815967063130860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078556 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078557.P4026815967063130860

/-! ## A078557.P9979412706141008304

`record[lcm(A020492(n+1), A078556(n+1))]`
-/

namespace A078557.P9979412706141008304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020492 (n + 1)) (A078556 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078557.P9979412706141008304

/-! ## A078557.P6934010146688805624

`∩[A258077(n+1), A335288(n+1)]`
-/

namespace A078557.P6934010146688805624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P6934010146688805624

/-! ## A078557.P9382150427456766026

`∩[A020492(n+1), A123041(n+1)]`
-/

namespace A078557.P9382150427456766026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P9382150427456766026

/-! ## A078557.P11513926113176347034

`∩[A122839(n+1), A258077(n+1)]`
-/

namespace A078557.P11513926113176347034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P11513926113176347034

/-! ## A078557.P4542294796237262407

`∩[A015771(n+1), A123041(n+1)]`
-/

namespace A078557.P4542294796237262407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P4542294796237262407

/-! ## A078557.P11242881258725101175

`∩[A020492(n+1), A353869(n+1)]`
-/

namespace A078557.P11242881258725101175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P11242881258725101175

/-! ## A078557.P11871827975727235927

`∩[A335288(n+1), A353869(n+1)]`
-/

namespace A078557.P11871827975727235927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P11871827975727235927

/-! ## A078557.P10429944229283414003

`∩[A015765(n+1), A123041(n+1)]`
-/

namespace A078557.P10429944229283414003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P10429944229283414003

/-! ## A078557.P13319744678603006294

`∩[A015769(n+1), A123041(n+1)]`
-/

namespace A078557.P13319744678603006294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P13319744678603006294

/-! ## A078557.P10378025207285180081

`∩[A258077(n+1), A353869(n+1)]`
-/

namespace A078557.P10378025207285180081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P10378025207285180081

/-! ## A078557.P13577267286464910730

`∩[A123041(n+1), A353869(n+1)]`
-/

namespace A078557.P13577267286464910730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P13577267286464910730

/-! ## A078557.P1547830576067612465

`∩[A015763(n+1), A123041(n+1)]`
-/

namespace A078557.P1547830576067612465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P1547830576067612465

/-! ## A078557.P17568070231073362313

`∩[A015771(n+1), A122839(n+1)]`
-/

namespace A078557.P17568070231073362313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P17568070231073362313

/-! ## A078557.P7626647010243316725

`record[∏{p}[A020492(n+1), #]]`
-/

namespace A078557.P7626647010243316725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078557.P7626647010243316725

/-! ## A078557.P11354054736171189687

`∩[A015765(n+1), A122839(n+1)]`
-/

namespace A078557.P11354054736171189687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078557.P11354054736171189687

/-!
# A078558: GCD of sigma(p#) and phi(p#) where p# = A002110(n) is the product of the first n primes.

The programs for A078558, there is no canonical definition to state claims against.
-/

/-! ## A078558.P11485134110070864950

`A005867(n+1)/A078560(n+1)`
-/

namespace A078558.P11485134110070864950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 (n + 1) : ℚ) / (A078560 (n + 1) : ℚ)

end

end A078558.P11485134110070864950

/-! ## A078558.P17644702005465496913

`A054640(n+1)/A078559(n+1)`
-/

namespace A078558.P17644702005465496913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054640 (n + 1) : ℚ) / (A078559 (n + 1) : ℚ)

end

end A078558.P17644702005465496913

/-! ## A078558.P11930131683612491728

`∏[A008864(n+1)]/A078559(n+1)`
-/

namespace A078558.P11930131683612491728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A078559 (n + 1) : ℚ)

end

end A078558.P11930131683612491728

/-! ## A078558.P16153517459222683153

`gcd(∏[A008864(n+1)], A005867(n+1))`
-/

namespace A078558.P16153517459222683153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A005867 (n + 1))

end

end A078558.P16153517459222683153

/-! ## A078558.P3243201579170127997

`(A002110(n+1)-A053144(n+1))/A078560(n+1)`
-/

namespace A078558.P3243201579170127997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) - A053144 (n + 1) : ℚ) / (A078560 (n + 1) : ℚ)

end

end A078558.P3243201579170127997

/-!
# A078559: Numerator of Product_{i=1..n} (p_i + 1)/(p_i - 1) where p_i is the i-th prime.

The programs for A078559, there is no canonical definition to state claims against.
-/

/-! ## A078559.P2068889440382539435

`A054640(n+1)/A078558(n+1)`
-/

namespace A078559.P2068889440382539435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054640 (n + 1) : ℚ) / (A078558 (n + 1) : ℚ)

end

end A078559.P2068889440382539435

/-! ## A078559.P5499570670502255182

`∏[A008864(n+1)]/A078558(n+1)`
-/

namespace A078559.P5499570670502255182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A078558 (n + 1) : ℚ)

end

end A078559.P5499570670502255182

/-! ## A078559.P4624770510749441235

`A054640(n+1)/A005867(n+1)*A078560(n+1)`
-/

namespace A078559.P4624770510749441235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054640 (n + 1) : ℚ) / (A005867 (n + 1) : ℚ) * (A078560 (n + 1) : ℚ)

end

end A078559.P4624770510749441235

/-!
# A078560: Denominator of Product_{i=1..n} (p_i+1)/(p_i-1). Numerators are in A078559.

The programs for A078560, there is no canonical definition to state claims against.
-/

/-! ## A078560.P15226489491292181899

`A005867(n+1)/A078558(n+1)`
-/

namespace A078560.P15226489491292181899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 (n + 1) : ℚ) / (A078558 (n + 1) : ℚ)

end

end A078560.P15226489491292181899

/-! ## A078560.P17785477736360013204

`A005867(n+1)/A054640(n+1)*A078559(n+1)`
-/

namespace A078560.P17785477736360013204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 (n + 1) : ℚ) / (A054640 (n + 1) : ℚ) * (A078559 (n + 1) : ℚ)

end

end A078560.P17785477736360013204

/-!
# A078561: p, p+4 and p+10 are consecutive primes.

The programs for A078561, there is no canonical definition to state claims against.
-/

/-! ## A078561.P16271827466390619732

`∩[A046136(n+1), A286313(n+1)]`
-/

namespace A078561.P16271827466390619732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P16271827466390619732

/-! ## A078561.P2358633466748653875

`∩[A015913(n+1), A286313(n+1)]`
-/

namespace A078561.P2358633466748653875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P2358633466748653875

/-! ## A078561.P14043647846164204512

`∩[A029710(n+1), A286313(n+1)]`
-/

namespace A078561.P14043647846164204512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P14043647846164204512

/-! ## A078561.P7500654654624970627

`∩[A172238(n+1), A286313(n+1)]`
-/

namespace A078561.P7500654654624970627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P7500654654624970627

/-! ## A078561.P16146381288705260332

`∩[A164572(n+1), A286313(n+1)]`
-/

namespace A078561.P16146381288705260332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P16146381288705260332

/-! ## A078561.P8308639288367243926

`∩[A056772(n+1), A286313(n+1)]`
-/

namespace A078561.P8308639288367243926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P8308639288367243926

/-! ## A078561.P12286177994912364975

`p?[A031924(n+1)-4]`
-/

namespace A078561.P12286177994912364975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078561.P12286177994912364975

/-! ## A078561.P8972822426307480427

`∩[A111980(n+1), A286313(n+1)]`
-/

namespace A078561.P8972822426307480427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P8972822426307480427

/-! ## A078561.P18375686690847963430

`∩[A286313(n+1), A394735(n+1)]`
-/

namespace A078561.P18375686690847963430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P18375686690847963430

/-! ## A078561.P5714961748346978127

`p?[A072571(n+1)-7]`
-/

namespace A078561.P5714961748346978127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078561.P5714961748346978127

/-! ## A078561.P12155671099144738857

`∩[A061771(n+1), A286313(n+1)]`
-/

namespace A078561.P12155671099144738857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P12155671099144738857

/-! ## A078561.P9721915477367663191

`∩[A098059(n+1), A286313(n+1)]`
-/

namespace A078561.P9721915477367663191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P9721915477367663191

/-! ## A078561.P6726130702687004378

`∩[A046136(n+1), A063535(n)]`
-/

namespace A078561.P6726130702687004378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P6726130702687004378

/-! ## A078561.P944085937640308313

`∩[A086135(n+1), A063535(n)]`
-/

namespace A078561.P944085937640308313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P944085937640308313

/-! ## A078561.P16719356855260468573

`∩[A286313(n+1), A063535(n)]`
-/

namespace A078561.P16719356855260468573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P16719356855260468573

/-! ## A078561.P12983400563204703977

`∩[A147813(n+1), A286313(n+1)]`
-/

namespace A078561.P12983400563204703977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P12983400563204703977

/-! ## A078561.P8717085734253130535

`∩[A253969(n+1), A286313(n+1)]`
-/

namespace A078561.P8717085734253130535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P8717085734253130535

/-! ## A078561.P10650454733705266404

`∩[A140555(n+1), A286313(n+1)]`
-/

namespace A078561.P10650454733705266404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P10650454733705266404

/-! ## A078561.P6180813304017332462

`p?[A000040(A320701(n+1))-4]`
-/

namespace A078561.P6180813304017332462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320701 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078561.P6180813304017332462

/-! ## A078561.P662872645309055083

`∩[A172367(n+1), A286313(n+1)]`
-/

namespace A078561.P662872645309055083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078561.P662872645309055083

/-!
# A078562: p, p+6 and p+10 are consecutive primes.

The programs for A078562, there is no canonical definition to state claims against.
-/

/-! ## A078562.P4998818403634397119

`∩[A046139(n+1), A286313(n+1)]`
-/

namespace A078562.P4998818403634397119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P4998818403634397119

/-! ## A078562.P14020150915778495910

`∩[A046139(n+1), A052158(n+1)]`
-/

namespace A078562.P14020150915778495910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P14020150915778495910

/-! ## A078562.P18349556597711045067

`∩[A052158(n+1), A086135(n+1)]`
-/

namespace A078562.P18349556597711045067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P18349556597711045067

/-! ## A078562.P17071053351415886614

`∩[A052158(n+1), A286313(n+1)]`
-/

namespace A078562.P17071053351415886614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P17071053351415886614

/-! ## A078562.P12011762748274693652

`∩[A015916(n+1), A052158(n+1)]`
-/

namespace A078562.P12011762748274693652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P12011762748274693652

/-! ## A078562.P16696622588121656670

`∩[A052158(n+1), A262086(n+1)]`
-/

namespace A078562.P16696622588121656670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P16696622588121656670

/-! ## A078562.P1203973354589968308

`p?[A031924(n+1)+10]-10`
-/

namespace A078562.P1203973354589968308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 10

end

end A078562.P1203973354589968308

/-! ## A078562.P7234797368487078694

`∩[A015916(n+1), A031924(n+1)]`
-/

namespace A078562.P7234797368487078694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P7234797368487078694

/-! ## A078562.P16224409390772876842

`∩[A031924(n+1), A046139(n+1)]`
-/

namespace A078562.P16224409390772876842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P16224409390772876842

/-! ## A078562.P14783201140233106221

`∩[A031924(n+1), A086135(n+1)]`
-/

namespace A078562.P14783201140233106221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P14783201140233106221

/-! ## A078562.P8038823954140471083

`∩[A031924(n+1), A262086(n+1)]`
-/

namespace A078562.P8038823954140471083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P8038823954140471083

/-! ## A078562.P10130282859905579296

`∩[A031924(n+1), A286313(n+1)]`
-/

namespace A078562.P10130282859905579296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P10130282859905579296

/-! ## A078562.P8110372109803074570

`∩[A015914(n+1), A286313(n+1)]`
-/

namespace A078562.P8110372109803074570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P8110372109803074570

/-! ## A078562.P3008486071958269544

`∩[A023201(n+1), A286313(n+1)]`
-/

namespace A078562.P3008486071958269544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P3008486071958269544

/-! ## A078562.P11589039480860927331

`∩[A262084(n+1), A286313(n+1)]`
-/

namespace A078562.P11589039480860927331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P11589039480860927331

/-! ## A078562.P14688306588340185200

`∩[A015916(n+1), A258578(n+1)]`
-/

namespace A078562.P14688306588340185200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P14688306588340185200

/-! ## A078562.P9120283109266201907

`∩[A046139(n+1), A258578(n+1)]`
-/

namespace A078562.P9120283109266201907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078562.P9120283109266201907

/-!
# A078563: a(n) is the least positive integer k such that g(k) = n*g(k-1), where g(k) = prime(k+1) - prime(k).

The programs for A078563, there is no canonical definition to state claims against.
-/

/-! ## A078563.P6490080914250396046

`A000720(A179210(n+1))`
-/

namespace A078563.P6490080914250396046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A179210 (n + 1)).toNat

end

end A078563.P6490080914250396046

/-! ## A078563.P17622346937590741442

`A304106(A181994(n+1))`
-/

namespace A078563.P17622346937590741442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (A181994 (n + 1)).toNat

end

end A078563.P17622346937590741442

/-! ## A078563.P3902208416591077319

`A061395(p?[A179210(n+1)])`
-/

namespace A078563.P3902208416591077319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078563.P3902208416591077319

/-! ## A078563.P17829562986940919814

`A061395(2*A179210(n+1))`
-/

namespace A078563.P17829562986940919814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A179210 (n + 1)).toNat

end

end A078563.P17829562986940919814

/-! ## A078563.P2338269710368249691

`A061395(lcm(2, A179210(n+1)))`
-/

namespace A078563.P2338269710368249691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A179210 (n + 1)))

end

end A078563.P2338269710368249691

/-!
# A078564: Number of (simple, undirected, unlabeled, connected) graphs with n vertices which contain no induced subgraph isomorphic to the complement of P5 (the "house" graph).

The programs for A078564, there is no canonical definition to state claims against.
-/

/-! ## A078564.P4516001730090027604

`A050499(n*n!+2)-a(C(2, n))` with `a(0)=1, a(1)=1`
-/

namespace A078564.P4516001730090027604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A050499 (n * Nat.factorial n + 2) - a (Nat.choose 2 n)

end

end A078564.P4516001730090027604

/-! ## A078564.P964579802899242418

`A110655(2*A013170(n))`
-/

namespace A078564.P964579802899242418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A013170 n).toNat

end

end A078564.P964579802899242418

/-! ## A078564.P4558129697995916064

`A245573(5*A013170(n))`
-/

namespace A078564.P4558129697995916064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (5 * A013170 n).toNat

end

end A078564.P4558129697995916064

/-!
# A078565: Number of zeros in the binary expansion of n!.

The programs for A078565, there is no canonical definition to state claims against.
-/

/-! ## A078565.P5400389253826668613

`A072831(n)-A079584(n)`
-/

namespace A078565.P5400389253826668613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - A079584 n

end

end A078565.P5400389253826668613

/-! ## A078565.P5538478963408526230

`A067850(n)+1-A079584(n)`
-/

namespace A078565.P5538478963408526230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 n + (1 - A079584 n)

end

end A078565.P5538478963408526230

/-! ## A078565.P14614418144824899741

`A072831(n)-(n!-A245087(n))`
-/

namespace A078565.P14614418144824899741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - ((Nat.factorial n : ℤ) - A245087 n)

end

end A078565.P14614418144824899741

/-! ## A078565.P14651964123673980909

`A072831(n)+A245087(n)-A000142(n)`
-/

namespace A078565.P14651964123673980909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n + (A245087 n - A000142 n)

end

end A078565.P14651964123673980909

/-! ## A078565.P13094450191462391855

`(A245087(n)+A072831(n))%A004154(n)`
-/

namespace A078565.P13094450191462391855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245087 n + A072831 n) (A004154 n)

end

end A078565.P13094450191462391855

/-! ## A078565.P2311181258639861868

`A072831(n)-(∏[A028310(n)]-A245087(n))`
-/

namespace A078565.P2311181258639861868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - (∏ j ∈ Finset.range (n + 1), f1 j - A245087 n)

end

end A078565.P2311181258639861868

/-!
# A078566: Number of (simple, undirected, unlabeled, connected) graphs with n vertices which contain no induced subgraph isomorphic to a C5 (the cycle on 5 vertices).

The programs for A078566, there is no canonical definition to state claims against.
-/

/-! ## A078566.P359618973752720482

`n*A245454(a(n-1))` with `a(0)=1`
-/

namespace A078566.P359618973752720482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A245454 (a (n - 1)).toNat

end

end A078566.P359618973752720482

/-! ## A078566.P10576726974458181211

`A028310(n*A026834(n!))`
-/

namespace A078566.P10576726974458181211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A026834 (Nat.factorial n)).toNat

end

end A078566.P10576726974458181211

/-! ## A078566.P17164036177500030706

`lcm(A026834(n!), A028310(n))`
-/

namespace A078566.P17164036177500030706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026834 (Nat.factorial n)) (A028310 n)

end

end A078566.P17164036177500030706

/-!
# A078567: Number of arithmetic subsequences of [1..n] with length > 1.

The programs for A078567, the canonical program `A078567.P1546433028043554864` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078567 has offset 1).

The definition of A078567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078567.P6368184099968087044

`∑[∑[∑{d}[n, ceil(acot(#))]]]`
-/

namespace A078567.P6368184099968087044
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078567.P6368184099968087044

namespace A078567

/-- `∑[∑[∑{d}[n, ceil(acot(#))]]]` -/
def P6368184099968087044.Spec : Prop :=
  ∀ n, P6368184099968087044.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P1546433028043554864

`∑[∑[∑{d}[n, ceil(1/#)]]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078567

/-- `∑[∑[∑{d}[n, ceil(1/#)]]]` -/
def P1546433028043554864.Spec : Prop :=
  ∀ n, P1546433028043554864.a n = A078567 (n + 1)

theorem P1546433028043554864.correct : P1546433028043554864.Spec := by
  intro n
  simp only [A078567, Nat.add_sub_cancel]

end A078567

/-! ## A078567.P9908812014742167995

`∑[∑[∏{e}[n, #+1]]-1]`
-/

namespace A078567.P9908812014742167995
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078567.P9908812014742167995

namespace A078567

/-- `∑[∑[∏{e}[n, #+1]]-1]` -/
def P9908812014742167995.Spec : Prop :=
  ∀ n, P9908812014742167995.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P7771766913463113887

`∑[∑[∑{d}[n, (n+1)%#]]]+∑[n]`
-/

namespace A078567.P7771766913463113887
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (n + 1) % d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f4 j

end

end A078567.P7771766913463113887

namespace A078567

/-- `∑[∑[∑{d}[n, (n+1)%#]]]+∑[n]` -/
def P7771766913463113887.Spec : Prop :=
  ∀ n, (P7771766913463113887.a n : ℤ) = A078567 (n + 1)

end A078567

/-! ## A078567.P3133068133727404688

`∑[A006218(n)]`
-/

namespace A078567.P3133068133727404688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078567.P3133068133727404688

namespace A078567

/-- `∑[A006218(n)]` -/
def P3133068133727404688.Spec : Prop :=
  ∀ n, P3133068133727404688.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P4197922321703104668

`∑[A054519(n)-1]`
-/

namespace A078567.P4197922321703104668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078567.P4197922321703104668

namespace A078567

/-- `∑[A054519(n)-1]` -/
def P4197922321703104668.Spec : Prop :=
  ∀ n, P4197922321703104668.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P17141777296792753686

`∑[A325459(n)]+n²`
-/

namespace A078567.P17141777296792753686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A078567.P17141777296792753686

namespace A078567

/-- `∑[A325459(n)]+n²` -/
def P17141777296792753686.Spec : Prop :=
  ∀ n, P17141777296792753686.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P4098505635818609122

`∑[∑[A032741(n)]+n]`
-/

namespace A078567.P4098505635818609122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078567.P4098505635818609122

namespace A078567

/-- `∑[∑[A032741(n)]+n]` -/
def P4098505635818609122.Spec : Prop :=
  ∀ n, P4098505635818609122.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P3446262892336983750

`∑[A350102(n+1)-2]`
-/

namespace A078567.P3446262892336983750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078567.P3446262892336983750

namespace A078567

/-- `∑[A350102(n+1)-2]` -/
def P3446262892336983750.Spec : Prop :=
  ∀ n, P3446262892336983750.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P3396521771637428324

`A330285(n+1)+∑[n]`
-/

namespace A078567.P3396521771637428324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330285 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A078567.P3396521771637428324

namespace A078567

/-- `A330285(n+1)+∑[n]` -/
def P3396521771637428324.Spec : Prop :=
  ∀ n, P3396521771637428324.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P5019482700416576308

`A051336(n+1)-(n+1)`
-/

namespace A078567.P5019482700416576308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051336 (n + 1) - (n + 1 : ℤ)

end

end A078567.P5019482700416576308

namespace A078567

/-- `A051336(n+1)-(n+1)` -/
def P5019482700416576308.Spec : Prop :=
  ∀ n, P5019482700416576308.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P17311410459269463146

`∑[A106633(n)]-(n+1)²`
-/

namespace A078567.P17311410459269463146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A078567.P17311410459269463146

namespace A078567

/-- `∑[A106633(n)]-(n+1)²` -/
def P17311410459269463146.Spec : Prop :=
  ∀ n, P17311410459269463146.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P9466850968058748874

`∑[A006590(n+1)-(n+1)]`
-/

namespace A078567.P9466850968058748874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078567.P9466850968058748874

namespace A078567

/-- `∑[A006590(n+1)-(n+1)]` -/
def P9466850968058748874.Spec : Prop :=
  ∀ n, P9466850968058748874.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P2998182421693746535

`∑[A000005(n)+a(n-1)]` with `a(0)=0`
-/

namespace A078567.P2998182421693746535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000005 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078567.P2998182421693746535

namespace A078567

/-- `∑[A000005(n)+a(n-1)]` -/
def P2998182421693746535.Spec : Prop :=
  ∀ n, P2998182421693746535.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P9063401298436895667

`a(n-1)+A002541(n)+n` with `a(0)=0`
-/

namespace A078567.P9063401298436895667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A002541 n + (n : ℤ))

end

end A078567.P9063401298436895667

namespace A078567

/-- `a(n-1)+A002541(n)+n` -/
def P9063401298436895667.Spec : Prop :=
  ∀ n, P9063401298436895667.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P7938832342240164749

`∑[∑[A000005(abs(1-n)+1)]-2]`
-/

namespace A078567.P7938832342240164749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078567.P7938832342240164749

namespace A078567

/-- `∑[∑[A000005(abs(1-n)+1)]-2]` -/
def P7938832342240164749.Spec : Prop :=
  ∀ n, P7938832342240164749.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P8335744833151802922

`A281376(n+1)+A006578(n)`
-/

namespace A078567.P8335744833151802922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281376 (n + 1) + A006578 n

end

end A078567.P8335744833151802922

namespace A078567

/-- `A281376(n+1)+A006578(n)` -/
def P8335744833151802922.Spec : Prop :=
  ∀ n, P8335744833151802922.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P6908405114835494505

`∑[∑[A320111(A257088(n))]-1]`
-/

namespace A078567.P6908405114835494505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A257088 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078567.P6908405114835494505

namespace A078567

/-- `∑[∑[A320111(A257088(n))]-1]` -/
def P6908405114835494505.Spec : Prop :=
  ∀ n, P6908405114835494505.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P12948621784572293474

`A143274(n+1)-A143127(n+1)`
-/

namespace A078567.P12948621784572293474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143274 (n + 1) - A143127 (n + 1)

end

end A078567.P12948621784572293474

namespace A078567

/-- `A143274(n+1)-A143127(n+1)` -/
def P12948621784572293474.Spec : Prop :=
  ∀ n, P12948621784572293474.a n = A078567 (n + 1)

end A078567

/-! ## A078567.P4381266163366308517

`∑[A002541(n+1)+n]-A002541(n+1)`
-/

namespace A078567.P4381266163366308517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002541 (n + 1)

end

end A078567.P4381266163366308517

namespace A078567

/-- `∑[A002541(n+1)+n]-A002541(n+1)` -/
def P4381266163366308517.Spec : Prop :=
  ∀ n, P4381266163366308517.a n = A078567 (n + 1)

end A078567

/-!
# A078568: Repunits concatenated with A000422, where A000422 is the concatenation of numbers from n down to 1.

The programs for A078568, there is no canonical definition to state claims against.
-/

/-! ## A078568.P17251671656025784847

`A052245(n)+record[A285540(A001104(n+1))]`
-/

namespace A078568.P17251671656025784847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285540 (A001104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052245 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078568.P17251671656025784847

/-!
# A078569: Numbers k such that A078568(k) is prime.

The programs for A078569, there is no canonical definition to state claims against.
-/

/-! ## A078569.P12999781253841367176

`or(A001108(n), A088177(A001019(n)))`
-/

namespace A078569.P12999781253841367176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001108 n) (A088177 (A001019 n).toNat)

end

end A078569.P12999781253841367176

/-!
# A078570: Number of distinct prime factors of the average of n-th twin prime pair.

The programs for A078570, the canonical program `A078570.P17012133397264023821` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078570 has offset 1).

The definition of A078570 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078570.P17012133397264023821

`A001221(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078570

/-- `A001221(A014574(n+1))` -/
def P17012133397264023821.Spec : Prop :=
  ∀ n, P17012133397264023821.a n = A078570 (n + 1)

theorem P17012133397264023821.correct : P17012133397264023821.Spec := by
  intro n
  simp only [A078570, Nat.add_sub_cancel]

end A078570

/-! ## A078570.P8315659541247892813

`∑{e}[A078579(n+1), #]`
-/

namespace A078570.P8315659541247892813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078570.P8315659541247892813

namespace A078570

/-- `∑{e}[A078579(n+1), #]` -/
def P8315659541247892813.Spec : Prop :=
  ∀ n, (P8315659541247892813.a n : ℤ) = A078570 (n + 1)

end A078570

/-! ## A078570.P17853304019137337303

`∑{p}[A014574(n+1), A001222(#)]`
-/

namespace A078570.P17853304019137337303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A078570.P17853304019137337303

namespace A078570

/-- `∑{p}[A014574(n+1), A001222(#)]` -/
def P17853304019137337303.Spec : Prop :=
  ∀ n, P17853304019137337303.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P16852734410125679005

`A001222(A078579(n+1)/2)+1`
-/

namespace A078570.P16852734410125679005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A078579 (n + 1) : ℚ) / 2)).toNat + 1

end

end A078570.P16852734410125679005

namespace A078570

/-- `A001222(A078579(n+1)/2)+1` -/
def P16852734410125679005.Spec : Prop :=
  ∀ n, P16852734410125679005.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P7765779570909751725

`A008335(A029707(n+1))`
-/

namespace A078570.P7765779570909751725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008335 (A029707 (n + 1)).toNat

end

end A078570.P7765779570909751725

namespace A078570

/-- `A008335(A029707(n+1))` -/
def P7765779570909751725.Spec : Prop :=
  ∀ n, P7765779570909751725.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P13775344027507132084

`A008334(A107770(n+1))`
-/

namespace A078570.P13775344027507132084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (A107770 (n + 1)).toNat

end

end A078570.P13775344027507132084

namespace A078570

/-- `A008334(A107770(n+1))` -/
def P13775344027507132084.Spec : Prop :=
  ∀ n, P13775344027507132084.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P17945574782112048131

`∑{p}[p?[A000040(n+1)-2]+1, A001222(#)]`
-/

namespace A078570.P17945574782112048131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A078570.P17945574782112048131

namespace A078570

/-- `∑{p}[p?[A000040(n+1)-2]+1, A001222(#)]` -/
def P17945574782112048131.Spec : Prop :=
  ∀ n, P17945574782112048131.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P11877279180056065516

`A001221(A078579(n+1))`
-/

namespace A078570.P11877279180056065516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A078579 (n + 1)).toNat

end

end A078570.P11877279180056065516

namespace A078570

/-- `A001221(A078579(n+1))` -/
def P11877279180056065516.Spec : Prop :=
  ∀ n, P11877279180056065516.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P11454598873814487944

`A001222(∏{p}[A014574(n+1), #])`
-/

namespace A078570.P11454598873814487944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A078570.P11454598873814487944

namespace A078570

/-- `A001222(∏{p}[A014574(n+1), #])` -/
def P11454598873814487944.Spec : Prop :=
  ∀ n, P11454598873814487944.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P9847615616325733982

`A001221(sqrt(A075369(n+1)))`
-/

namespace A078570.P9847615616325733982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A078570.P9847615616325733982

namespace A078570

/-- `A001221(sqrt(A075369(n+1)))` -/
def P9847615616325733982.Spec : Prop :=
  ∀ n, P9847615616325733982.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P6799373337588112867

`A001221(A001359(n+1)+1)`
-/

namespace A078570.P6799373337588112867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001359 (n + 1) + 1).toNat

end

end A078570.P6799373337588112867

namespace A078570

/-- `A001221(A001359(n+1)+1)` -/
def P6799373337588112867.Spec : Prop :=
  ∀ n, P6799373337588112867.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P6717941587932962142

`A001221(A111166(n+1)+1)`
-/

namespace A078570.P6717941587932962142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A111166 (n + 1) + 1).toNat

end

end A078570.P6717941587932962142

namespace A078570

/-- `A001221(A111166(n+1)+1)` -/
def P6717941587932962142.Spec : Prop :=
  ∀ n, P6717941587932962142.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P10762793639002660245

`A001221(A006512(n+1)-1)`
-/

namespace A078570.P10762793639002660245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006512 (n + 1) - 1).toNat

end

end A078570.P10762793639002660245

namespace A078570

/-- `A001221(A006512(n+1)-1)` -/
def P10762793639002660245.Spec : Prop :=
  ∀ n, P10762793639002660245.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P2011893700444812403

`A001221(A067829(n+2)-1)`
-/

namespace A078570.P2011893700444812403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A067829 (n + 2) - 1).toNat

end

end A078570.P2011893700444812403

namespace A078570

/-- `A001221(A067829(n+2)-1)` -/
def P2011893700444812403.Spec : Prop :=
  ∀ n, P2011893700444812403.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P17065817969762585968

`A001221(2*A040040(n+1))`
-/

namespace A078570.P17065817969762585968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A040040 (n + 1)).toNat

end

end A078570.P17065817969762585968

namespace A078570

/-- `A001221(2*A040040(n+1))` -/
def P17065817969762585968.Spec : Prop :=
  ∀ n, P17065817969762585968.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P11395268627598505122

`A001221(A054735(n+1)/2)`
-/

namespace A078570.P11395268627598505122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2)).toNat

end

end A078570.P11395268627598505122

namespace A078570

/-- `A001221(A054735(n+1)/2)` -/
def P11395268627598505122.Spec : Prop :=
  ∀ n, P11395268627598505122.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P6843655259864240368

`A001221(A077800(2*n+1)+1)`
-/

namespace A078570.P6843655259864240368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A077800 (2 * n + 1) + 1).toNat

end

end A078570.P6843655259864240368

namespace A078570

/-- `A001221(A077800(2*n+1)+1)` -/
def P6843655259864240368.Spec : Prop :=
  ∀ n, P6843655259864240368.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P10986379384201926462

`A001221(A171821(2*n+1)+1)`
-/

namespace A078570.P10986379384201926462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A171821 (2 * n + 1) + 1).toNat

end

end A078570.P10986379384201926462

namespace A078570

/-- `A001221(A171821(2*n+1)+1)` -/
def P10986379384201926462.Spec : Prop :=
  ∀ n, P10986379384201926462.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P8390161479130453291

`A001221(A001097(2*n+1)-1)`
-/

namespace A078570.P8390161479130453291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001097 (2 * n + 1) - 1).toNat

end

end A078570.P8390161479130453291

namespace A078570

/-- `A001221(A001097(2*n+1)-1)` -/
def P8390161479130453291.Spec : Prop :=
  ∀ n, P8390161479130453291.a n = A078570 (n + 1)

end A078570

/-! ## A078570.P18410558290117136232

`A001221(p?[A000040(n+1)+2]-1)`
-/

namespace A078570.P18410558290117136232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A078570.P18410558290117136232

namespace A078570

/-- `A001221(p?[A000040(n+1)+2]-1)` -/
def P18410558290117136232.Spec : Prop :=
  ∀ n, P18410558290117136232.a n = A078570 (n + 1)

end A078570

/-!
# A078571: Total number of prime factors of the average of n-th twin prime pair.

The programs for A078571, the canonical program `A078571.P1736636003966483613` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078571 has offset 1).

The definition of A078571 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078571.P1736636003966483613

`A001222(A014574(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A078571

/-- `A001222(A014574(n+1))` -/
def P1736636003966483613.Spec : Prop :=
  ∀ n, P1736636003966483613.a n = A078571 (n + 1)

theorem P1736636003966483613.correct : P1736636003966483613.Spec := by
  intro n
  simp only [A078571, Nat.add_sub_cancel]

end A078571

/-! ## A078571.P15440386451731063603

`A014574(n+1)-A176915(n+1)`
-/

namespace A078571.P15440386451731063603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A176915 (n + 1)

end

end A078571.P15440386451731063603

namespace A078571

/-- `A014574(n+1)-A176915(n+1)` -/
def P15440386451731063603.Spec : Prop :=
  ∀ n, P15440386451731063603.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P5623036927631912648

`sqrt(A075369(n+1))-A176915(n+1)`
-/

namespace A078571.P5623036927631912648
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ) - (A176915 (n + 1) : ℝ)

end

end A078571.P5623036927631912648

namespace A078571

/-- `sqrt(A075369(n+1))-A176915(n+1)` -/
def P5623036927631912648.Spec : Prop :=
  ∀ n, P5623036927631912648.a n = (A078571 (n + 1) : ℝ)

end A078571

/-! ## A078571.P14697295944043788073

`A006512(n+1)-(A176915(n+1)+1)`
-/

namespace A078571.P14697295944043788073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - (A176915 (n + 1) + 1)

end

end A078571.P14697295944043788073

namespace A078571

/-- `A006512(n+1)-(A176915(n+1)+1)` -/
def P14697295944043788073.Spec : Prop :=
  ∀ n, P14697295944043788073.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P3840303686181698060

`A144834(n+1)+2-A176915(n+1)`
-/

namespace A078571.P3840303686181698060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + (2 - A176915 (n + 1))

end

end A078571.P3840303686181698060

namespace A078571

/-- `A144834(n+1)+2-A176915(n+1)` -/
def P3840303686181698060.Spec : Prop :=
  ∀ n, P3840303686181698060.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P6426306162553194386

`2*A040040(n+1)-A176915(n+1)`
-/

namespace A078571.P6426306162553194386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) - A176915 (n + 1)

end

end A078571.P6426306162553194386

namespace A078571

/-- `2*A040040(n+1)-A176915(n+1)` -/
def P6426306162553194386.Spec : Prop :=
  ∀ n, P6426306162553194386.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P16856608211262421594

`A054735(n+1)/2-A176915(n+1)`
-/

namespace A078571.P16856608211262421594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 2 - (A176915 (n + 1) : ℚ)

end

end A078571.P16856608211262421594

namespace A078571

/-- `A054735(n+1)/2-A176915(n+1)` -/
def P16856608211262421594.Spec : Prop :=
  ∀ n, P16856608211262421594.a n = (A078571 (n + 1) : ℚ)

end A078571

/-! ## A078571.P1112672361603197703

`A111046(n+1)/4-A176915(n+1)`
-/

namespace A078571.P1112672361603197703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111046 (n + 1) : ℚ) / 4 - (A176915 (n + 1) : ℚ)

end

end A078571.P1112672361603197703

namespace A078571

/-- `A111046(n+1)/4-A176915(n+1)` -/
def P1112672361603197703.Spec : Prop :=
  ∀ n, P1112672361603197703.a n = (A078571 (n + 1) : ℚ)

end A078571

/-! ## A078571.P17239584042422318545

`floor(sqrt(A135286(n+1))-A176915(n+1))`
-/

namespace A078571.P17239584042422318545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A135286 (n + 1) : ℝ) - (A176915 (n + 1) : ℝ)⌋

end

end A078571.P17239584042422318545

namespace A078571

/-- `floor(sqrt(A135286(n+1))-A176915(n+1))` -/
def P17239584042422318545.Spec : Prop :=
  ∀ n, P17239584042422318545.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P3604407189800236921

`ceil(sqrt(A037074(n+1))-A176915(n+1))`
-/

namespace A078571.P3604407189800236921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A037074 (n + 1) : ℝ) - (A176915 (n + 1) : ℝ)⌉

end

end A078571.P3604407189800236921

namespace A078571

/-- `ceil(sqrt(A037074(n+1))-A176915(n+1))` -/
def P3604407189800236921.Spec : Prop :=
  ∀ n, P3604407189800236921.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P6841008477591394271

`∑{e}[sqrt(A075369(n+1)), #]`
-/

namespace A078571.P6841008477591394271
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A078571.P6841008477591394271

namespace A078571

/-- `∑{e}[sqrt(A075369(n+1)), #]` -/
def P6841008477591394271.Spec : Prop :=
  ∀ n, (P6841008477591394271.a n : ℤ) = A078571 (n + 1)

end A078571

/-! ## A078571.P8938037722862088996

`∑{e}[A001359(n+1)+1, #]`
-/

namespace A078571.P8938037722862088996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078571.P8938037722862088996

namespace A078571

/-- `∑{e}[A001359(n+1)+1, #]` -/
def P8938037722862088996.Spec : Prop :=
  ∀ n, (P8938037722862088996.a n : ℤ) = A078571 (n + 1)

end A078571

/-! ## A078571.P4285789136647023643

`A001222(A040040(n+1))+1`
-/

namespace A078571.P4285789136647023643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A040040 (n + 1)).toNat + 1

end

end A078571.P4285789136647023643

namespace A078571

/-- `A001222(A040040(n+1))+1` -/
def P4285789136647023643.Spec : Prop :=
  ∀ n, P4285789136647023643.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P18238390200768531500

`A001222(A054735(n+1)/4)+1`
-/

namespace A078571.P18238390200768531500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 4)).toNat + 1

end

end A078571.P18238390200768531500

namespace A078571

/-- `A001222(A054735(n+1)/4)+1` -/
def P18238390200768531500.Spec : Prop :=
  ∀ n, P18238390200768531500.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P17996969955484654738

`A001222(A111046(n+1)/8)+1`
-/

namespace A078571.P17996969955484654738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A111046 (n + 1) : ℚ) / 8)).toNat + 1

end

end A078571.P17996969955484654738

namespace A078571

/-- `A001222(A111046(n+1)/8)+1` -/
def P17996969955484654738.Spec : Prop :=
  ∀ n, P17996969955484654738.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P8374988264897471706

`A001222((A001359(n+1)+1)/2)+1`
-/

namespace A078571.P8374988264897471706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A001359 (n + 1) + 1 : ℚ) / 2)).toNat + 1

end

end A078571.P8374988264897471706

namespace A078571

/-- `A001222((A001359(n+1)+1)/2)+1` -/
def P8374988264897471706.Spec : Prop :=
  ∀ n, P8374988264897471706.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P11822834168322510456

`A001222(A120876(n+1)%A006512(n+1))+1`
-/

namespace A078571.P11822834168322510456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A120876 (n + 1)) (A006512 (n + 1))).toNat + 1

end

end A078571.P11822834168322510456

namespace A078571

/-- `A001222(A120876(n+1)%A006512(n+1))+1` -/
def P11822834168322510456.Spec : Prop :=
  ∀ n, P11822834168322510456.a n = A078571 (n + 1)

end A078571

/-! ## A078571.P1246173556546278558

`∑{e}[p?[A000040(n+3)-2]+1, #]`
-/

namespace A078571.P1246173556546278558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078571.P1246173556546278558

namespace A078571

/-- `∑{e}[p?[A000040(n+3)-2]+1, #]` -/
def P1246173556546278558.Spec : Prop :=
  ∀ n, (P1246173556546278558.a n : ℤ) = A078571 (n + 1)

end A078571

/-! ## A078571.P6336720241790204625

`A023514(A029707(n+1))`
-/

namespace A078571.P6336720241790204625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (A029707 (n + 1)).toNat

end

end A078571.P6336720241790204625

namespace A078571

/-- `A023514(A029707(n+1))` -/
def P6336720241790204625.Spec : Prop :=
  ∀ n, P6336720241790204625.a n = A078571 (n + 1)

end A078571

/-!
# A078572: The minimum exponent in prime factorization of the average of n-th twin prime pair.

The programs for A078572, the canonical program `A078572.P12682185819737863424` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078572 has offset 1).

The definition of A078572 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, A051904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078572.P12682185819737863424

`A051904(A014574(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A078572

/-- `A051904(A014574(n+1))` -/
def P12682185819737863424.Spec : Prop :=
  ∀ n, P12682185819737863424.a n = A078572 (n + 1)

theorem P12682185819737863424.correct : P12682185819737863424.Spec := by
  intro n
  simp only [A078572, Nat.add_sub_cancel]

end A078572

/-! ## A078572.P5001216255415834658

`A051904(A001359(n+1)+1)`
-/

namespace A078572.P5001216255415834658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A001359 (n + 1) + 1).toNat

end

end A078572.P5001216255415834658

namespace A078572

/-- `A051904(A001359(n+1)+1)` -/
def P5001216255415834658.Spec : Prop :=
  ∀ n, P5001216255415834658.a n = A078572 (n + 1)

end A078572

/-! ## A078572.P1368514699408614042

`A051904(A006512(n+1)-1)`
-/

namespace A078572.P1368514699408614042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A006512 (n + 1) - 1).toNat

end

end A078572.P1368514699408614042

namespace A078572

/-- `A051904(A006512(n+1)-1)` -/
def P1368514699408614042.Spec : Prop :=
  ∀ n, P1368514699408614042.a n = A078572 (n + 1)

end A078572

/-! ## A078572.P7497412061536498143

`A051904(p?[A000040(n+1)-2]+1)`
-/

namespace A078572.P7497412061536498143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A078572.P7497412061536498143

namespace A078572

/-- `A051904(p?[A000040(n+1)-2]+1)` -/
def P7497412061536498143.Spec : Prop :=
  ∀ n, P7497412061536498143.a n = A078572 (n + 1)

end A078572

/-! ## A078572.P10095795940186040712

`A051904(p?[A001223(n+1)+a(n-1)]+1)` with `a(0)=1`
-/

namespace A078572.P10095795940186040712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001223 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A078572.P10095795940186040712

namespace A078572

/-- `A051904(p?[A001223(n+1)+a(n-1)]+1)` -/
def P10095795940186040712.Spec : Prop :=
  ∀ n, P10095795940186040712.a n = A078572 (n + 1)

end A078572

/-! ## A078572.P1889458665746819100

`A051904(A000203(A001359(n+1)))`
-/

namespace A078572.P1889458665746819100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A000203 (A001359 (n + 1)).toNat).toNat

end

end A078572.P1889458665746819100

namespace A078572

/-- `A051904(A000203(A001359(n+1)))` -/
def P1889458665746819100.Spec : Prop :=
  ∀ n, P1889458665746819100.a n = A078572 (n + 1)

end A078572

/-! ## A078572.P14080316705337951577

`A051904(A000010(A006512(n+1)))`
-/

namespace A078572.P14080316705337951577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A000010 (A006512 (n + 1)).toNat).toNat

end

end A078572.P14080316705337951577

namespace A078572

/-- `A051904(A000010(A006512(n+1)))` -/
def P14080316705337951577.Spec : Prop :=
  ∀ n, P14080316705337951577.a n = A078572 (n + 1)

end A078572

/-! ## A078572.P13262891542277850820

`A051904(A167777(n+2))`
-/

namespace A078572.P13262891542277850820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A167777 (n + 2)).toNat

end

end A078572.P13262891542277850820

namespace A078572

/-- `A051904(A167777(n+2))` -/
def P13262891542277850820.Spec : Prop :=
  ∀ n, P13262891542277850820.a n = A078572 (n + 1)

end A078572

/-!
# A078573: The maximum exponent in prime factorization of the average of n-th twin prime pair.

The programs for A078573, the canonical program `A078573.P930645810505514658` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078573 has offset 1).

The definition of A078573 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078573.P930645810505514658

`A051903(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078573

/-- `A051903(A014574(n+1))` -/
def P930645810505514658.Spec : Prop :=
  ∀ n, P930645810505514658.a n = A078573 (n + 1)

theorem P930645810505514658.correct : P930645810505514658.Spec := by
  intro n
  simp only [A078573, Nat.add_sub_cancel]

end A078573

/-! ## A078573.P18240228582756443228

`A023510(A029707(n+1))`
-/

namespace A078573.P18240228582756443228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023510 (A029707 (n + 1)).toNat

end

end A078573.P18240228582756443228

namespace A078573

/-- `A023510(A029707(n+1))` -/
def P18240228582756443228.Spec : Prop :=
  ∀ n, P18240228582756443228.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P11159021390415193638

`A023504(A107770(n+1))`
-/

namespace A078573.P11159021390415193638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023504 (A107770 (n + 1)).toNat

end

end A078573.P11159021390415193638

namespace A078573

/-- `A023504(A107770(n+1))` -/
def P11159021390415193638.Spec : Prop :=
  ∀ n, P11159021390415193638.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P10224485043586494365

`A051903(sqrt(A075369(n+1)))`
-/

namespace A078573.P10224485043586494365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A078573.P10224485043586494365

namespace A078573

/-- `A051903(sqrt(A075369(n+1)))` -/
def P10224485043586494365.Spec : Prop :=
  ∀ n, P10224485043586494365.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P3743085665116855196

`A051903(A001359(n+1)+1)`
-/

namespace A078573.P3743085665116855196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A001359 (n + 1) + 1).toNat

end

end A078573.P3743085665116855196

namespace A078573

/-- `A051903(A001359(n+1)+1)` -/
def P3743085665116855196.Spec : Prop :=
  ∀ n, P3743085665116855196.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P11492790506472995860

`A051903(A006512(n+1)-1)`
-/

namespace A078573.P11492790506472995860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A006512 (n + 1) - 1).toNat

end

end A078573.P11492790506472995860

namespace A078573

/-- `A051903(A006512(n+1)-1)` -/
def P11492790506472995860.Spec : Prop :=
  ∀ n, P11492790506472995860.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P17813845103717106960

`A051903(p?[A000040(n+1)-2]+1)`
-/

namespace A078573.P17813845103717106960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A078573.P17813845103717106960

namespace A078573

/-- `A051903(p?[A000040(n+1)-2]+1)` -/
def P17813845103717106960.Spec : Prop :=
  ∀ n, P17813845103717106960.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P12150106678559103284

`A051903(A000203(A001359(n+1)))`
-/

namespace A078573.P12150106678559103284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000203 (A001359 (n + 1)).toNat).toNat

end

end A078573.P12150106678559103284

namespace A078573

/-- `A051903(A000203(A001359(n+1)))` -/
def P12150106678559103284.Spec : Prop :=
  ∀ n, P12150106678559103284.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P15089119850575518223

`A051903(A000010(A006512(n+1)))`
-/

namespace A078573.P15089119850575518223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000010 (A006512 (n + 1)).toNat).toNat

end

end A078573.P15089119850575518223

namespace A078573

/-- `A051903(A000010(A006512(n+1)))` -/
def P15089119850575518223.Spec : Prop :=
  ∀ n, P15089119850575518223.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P18211682742724239700

`A375040(A040040(n+1))`
-/

namespace A078573.P18211682742724239700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375040 (A040040 (n + 1)).toNat

end

end A078573.P18211682742724239700

namespace A078573

/-- `A375040(A040040(n+1))` -/
def P18211682742724239700.Spec : Prop :=
  ∀ n, P18211682742724239700.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P6800498618080246253

`A375040(A168497(n+2))`
-/

namespace A078573.P6800498618080246253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375040 (A168497 (n + 2)).toNat

end

end A078573.P6800498618080246253

namespace A078573

/-- `A375040(A168497(n+2))` -/
def P6800498618080246253.Spec : Prop :=
  ∀ n, P6800498618080246253.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P18253394441438253406

`A334572(A006512(n+1))`
-/

namespace A078573.P18253394441438253406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334572 (A006512 (n + 1)).toNat

end

end A078573.P18253394441438253406

namespace A078573

/-- `A334572(A006512(n+1))` -/
def P18253394441438253406.Spec : Prop :=
  ∀ n, P18253394441438253406.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P12672790717426021241

`A334572(A067829(n+2))`
-/

namespace A078573.P12672790717426021241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334572 (A067829 (n + 2)).toNat

end

end A078573.P12672790717426021241

namespace A078573

/-- `A334572(A067829(n+2))` -/
def P12672790717426021241.Spec : Prop :=
  ∀ n, P12672790717426021241.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P3041682851392598722

`A334572(A094743(n+2))`
-/

namespace A078573.P3041682851392598722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334572 (A094743 (n + 2)).toNat

end

end A078573.P3041682851392598722

namespace A078573

/-- `A334572(A094743(n+2))` -/
def P3041682851392598722.Spec : Prop :=
  ∀ n, P3041682851392598722.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P1828371315741207711

`A067132(p?[A008864(n+1)+1]-1)-1`
-/

namespace A078573.P1828371315741207711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat - 1

end

end A078573.P1828371315741207711

namespace A078573

/-- `A067132(p?[A008864(n+1)+1]-1)-1` -/
def P1828371315741207711.Spec : Prop :=
  ∀ n, P1828371315741207711.a n = A078573 (n + 1)

end A078573

/-! ## A078573.P6391812567265045229

`A067132(p?[A000040(n+1)-2]+1)-1`
-/

namespace A078573.P6391812567265045229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat - 1

end

end A078573.P6391812567265045229

namespace A078573

/-- `A067132(p?[A000040(n+1)-2]+1)-1` -/
def P6391812567265045229.Spec : Prop :=
  ∀ n, P6391812567265045229.a n = A078573 (n + 1)

end A078573

/-!
# A078574: Number of divisors of the average of n-th twin prime pair.

The programs for A078574, the canonical program `A078574.P14179404823940370907` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078574 has offset 1).

The definition of A078574 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078574.P14179404823940370907

`A000005(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078574

/-- `A000005(A014574(n+1))` -/
def P14179404823940370907.Spec : Prop :=
  ∀ n, P14179404823940370907.a n = A078574 (n + 1)

theorem P14179404823940370907.correct : P14179404823940370907.Spec := by
  intro n
  simp only [A078574, Nat.add_sub_cancel]

end A078574

/-! ## A078574.P16863146215076123993

`A099777(A040040(n+1))`
-/

namespace A078574.P16863146215076123993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A040040 (n + 1)).toNat

end

end A078574.P16863146215076123993

namespace A078574

/-- `A099777(A040040(n+1))` -/
def P16863146215076123993.Spec : Prop :=
  ∀ n, P16863146215076123993.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P1633127209556040506

`A099777(A168497(n+2))`
-/

namespace A078574.P1633127209556040506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A168497 (n + 2)).toNat

end

end A078574.P1633127209556040506

namespace A078574

/-- `A099777(A168497(n+2))` -/
def P1633127209556040506.Spec : Prop :=
  ∀ n, P1633127209556040506.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P16523390294699024739

`A008329(A029707(n+1))`
-/

namespace A078574.P16523390294699024739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (A029707 (n + 1)).toNat

end

end A078574.P16523390294699024739

namespace A078574

/-- `A008329(A029707(n+1))` -/
def P16523390294699024739.Spec : Prop :=
  ∀ n, P16523390294699024739.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P2932802515511419037

`A008328(A107770(n+1))`
-/

namespace A078574.P2932802515511419037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (A107770 (n + 1)).toNat

end

end A078574.P2932802515511419037

namespace A078574

/-- `A008328(A107770(n+1))` -/
def P2932802515511419037.Spec : Prop :=
  ∀ n, P2932802515511419037.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P17626820199338900078

`A078809(A155752(n+1))`
-/

namespace A078574.P17626820199338900078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078809 (A155752 (n + 1)).toNat

end

end A078574.P17626820199338900078

namespace A078574

/-- `A078809(A155752(n+1))` -/
def P17626820199338900078.Spec : Prop :=
  ∀ n, P17626820199338900078.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P4551115793445831094

`A000005(sqrt(A075369(n+1)))`
-/

namespace A078574.P4551115793445831094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A078574.P4551115793445831094

namespace A078574

/-- `A000005(sqrt(A075369(n+1)))` -/
def P4551115793445831094.Spec : Prop :=
  ∀ n, P4551115793445831094.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P18358451178432287466

`A000005(A001359(n+1)+1)`
-/

namespace A078574.P18358451178432287466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001359 (n + 1) + 1).toNat

end

end A078574.P18358451178432287466

namespace A078574

/-- `A000005(A001359(n+1)+1)` -/
def P18358451178432287466.Spec : Prop :=
  ∀ n, P18358451178432287466.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P13520880297444565589

`A000005(A006512(n+1)-1)`
-/

namespace A078574.P13520880297444565589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006512 (n + 1) - 1).toNat

end

end A078574.P13520880297444565589

namespace A078574

/-- `A000005(A006512(n+1)-1)` -/
def P13520880297444565589.Spec : Prop :=
  ∀ n, P13520880297444565589.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P2940532684719356025

`A000005(A067829(n+2)-1)`
-/

namespace A078574.P2940532684719356025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A067829 (n + 2) - 1).toNat

end

end A078574.P2940532684719356025

namespace A078574

/-- `A000005(A067829(n+2)-1)` -/
def P2940532684719356025.Spec : Prop :=
  ∀ n, P2940532684719356025.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P11538386029224261720

`A000005(2*A040040(n+1))`
-/

namespace A078574.P11538386029224261720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A040040 (n + 1)).toNat

end

end A078574.P11538386029224261720

namespace A078574

/-- `A000005(2*A040040(n+1))` -/
def P11538386029224261720.Spec : Prop :=
  ∀ n, P11538386029224261720.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P7742019104942945186

`A000005(A054735(n+1)/2)`
-/

namespace A078574.P7742019104942945186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2)).toNat

end

end A078574.P7742019104942945186

namespace A078574

/-- `A000005(A054735(n+1)/2)` -/
def P7742019104942945186.Spec : Prop :=
  ∀ n, P7742019104942945186.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P8947308521655109377

`A000005(xor(1, A006512(n+1)))`
-/

namespace A078574.P8947308521655109377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor 1 (A006512 (n + 1))).toNat

end

end A078574.P8947308521655109377

namespace A078574

/-- `A000005(xor(1, A006512(n+1)))` -/
def P8947308521655109377.Spec : Prop :=
  ∀ n, P8947308521655109377.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P16034734565295478542

`A000005(A077800(2*n+1)+1)`
-/

namespace A078574.P16034734565295478542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A077800 (2 * n + 1) + 1).toNat

end

end A078574.P16034734565295478542

namespace A078574

/-- `A000005(A077800(2*n+1)+1)` -/
def P16034734565295478542.Spec : Prop :=
  ∀ n, P16034734565295478542.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P10533292317096077766

`A000005(A108605(n+1)/2+1)`
-/

namespace A078574.P10533292317096077766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A108605 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A078574.P10533292317096077766

namespace A078574

/-- `A000005(A108605(n+1)/2+1)` -/
def P10533292317096077766.Spec : Prop :=
  ∀ n, P10533292317096077766.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P14033287560530938177

`A000005(A176810(n+1)/2-1)`
-/

namespace A078574.P14033287560530938177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A176810 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A078574.P14033287560530938177

namespace A078574

/-- `A000005(A176810(n+1)/2-1)` -/
def P14033287560530938177.Spec : Prop :=
  ∀ n, P14033287560530938177.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P10725782455361257444

`A000005(p?[A000040(n+1)+2]-1)`
-/

namespace A078574.P10725782455361257444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A078574.P10725782455361257444

namespace A078574

/-- `A000005(p?[A000040(n+1)+2]-1)` -/
def P10725782455361257444.Spec : Prop :=
  ∀ n, P10725782455361257444.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P16846063218123467207

`A000005(A000203(A001359(n+1)))`
-/

namespace A078574.P16846063218123467207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (A001359 (n + 1)).toNat).toNat

end

end A078574.P16846063218123467207

namespace A078574

/-- `A000005(A000203(A001359(n+1)))` -/
def P16846063218123467207.Spec : Prop :=
  ∀ n, P16846063218123467207.a n = A078574 (n + 1)

end A078574

/-! ## A078574.P126787632903353031

`A000005(A000010(A006512(n+1)))`
-/

namespace A078574.P126787632903353031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (A006512 (n + 1)).toNat).toNat

end

end A078574.P126787632903353031

namespace A078574

/-- `A000005(A000010(A006512(n+1)))` -/
def P126787632903353031.Spec : Prop :=
  ∀ n, P126787632903353031.a n = A078574 (n + 1)

end A078574

/-!
# A078575: Sum of divisors of the average of n-th twin prime pair.

The programs for A078575, the canonical program `A078575.P13635635749802338245` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078575 has offset 1).

The definition of A078575 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078575.P13635635749802338245

`A000203(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078575

/-- `A000203(A014574(n+1))` -/
def P13635635749802338245.Spec : Prop :=
  ∀ n, P13635635749802338245.a n = A078575 (n + 1)

theorem P13635635749802338245.correct : P13635635749802338245.Spec := by
  intro n
  simp only [A078575, Nat.add_sub_cancel]

end A078575

/-! ## A078575.P9105052833673596945

`∑{d}[sqrt(A075369(n+1)), #]`
-/

namespace A078575.P9105052833673596945
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A078575.P9105052833673596945

namespace A078575

/-- `∑{d}[sqrt(A075369(n+1)), #]` -/
def P9105052833673596945.Spec : Prop :=
  ∀ n, (P9105052833673596945.a n : ℤ) = A078575 (n + 1)

end A078575

/-! ## A078575.P3752650793888339860

`∑{d}[floor(sqrt(A037074(n+1)))+1, #]`
-/

namespace A078575.P3752650793888339860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A037074 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078575.P3752650793888339860

namespace A078575

/-- `∑{d}[floor(sqrt(A037074(n+1)))+1, #]` -/
def P3752650793888339860.Spec : Prop :=
  ∀ n, (P3752650793888339860.a n : ℤ) = A078575 (n + 1)

end A078575

/-! ## A078575.P11928770234225979887

`A008333(A029707(n+1))`
-/

namespace A078575.P11928770234225979887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (A029707 (n + 1)).toNat

end

end A078575.P11928770234225979887

namespace A078575

/-- `A008333(A029707(n+1))` -/
def P11928770234225979887.Spec : Prop :=
  ∀ n, P11928770234225979887.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P983300444621837644

`A008332(A107770(n+1))`
-/

namespace A078575.P983300444621837644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008332 (A107770 (n + 1)).toNat

end

end A078575.P983300444621837644

namespace A078575

/-- `A008332(A107770(n+1))` -/
def P983300444621837644.Spec : Prop :=
  ∀ n, P983300444621837644.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P10674288651625202841

`A078835(A155752(n+1))`
-/

namespace A078575.P10674288651625202841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078835 (A155752 (n + 1)).toNat

end

end A078575.P10674288651625202841

namespace A078575

/-- `A078835(A155752(n+1))` -/
def P10674288651625202841.Spec : Prop :=
  ∀ n, P10674288651625202841.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P791204996883736008

`A000203(sqrt(A075369(n+1)))`
-/

namespace A078575.P791204996883736008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A078575.P791204996883736008

namespace A078575

/-- `A000203(sqrt(A075369(n+1)))` -/
def P791204996883736008.Spec : Prop :=
  ∀ n, P791204996883736008.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P6416764296162200126

`A000203(record[A362296(n+2)])`
-/

namespace A078575.P6416764296162200126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362296 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078575.P6416764296162200126

namespace A078575

/-- `A000203(record[A362296(n+2)])` -/
def P6416764296162200126.Spec : Prop :=
  ∀ n, P6416764296162200126.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P8160362216878406248

`A000203(A001359(n+1)+1)`
-/

namespace A078575.P8160362216878406248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001359 (n + 1) + 1).toNat

end

end A078575.P8160362216878406248

namespace A078575

/-- `A000203(A001359(n+1)+1)` -/
def P8160362216878406248.Spec : Prop :=
  ∀ n, P8160362216878406248.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P7837751611280386704

`A000203(A006512(n+1)-1)`
-/

namespace A078575.P7837751611280386704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006512 (n + 1) - 1).toNat

end

end A078575.P7837751611280386704

namespace A078575

/-- `A000203(A006512(n+1)-1)` -/
def P7837751611280386704.Spec : Prop :=
  ∀ n, P7837751611280386704.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P14414001742143802011

`A000203(A144834(n+1)+2)`
-/

namespace A078575.P14414001742143802011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A144834 (n + 1) + 2).toNat

end

end A078575.P14414001742143802011

namespace A078575

/-- `A000203(A144834(n+1)+2)` -/
def P14414001742143802011.Spec : Prop :=
  ∀ n, P14414001742143802011.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P1437763875231952884

`A000203(A067829(n+2)-1)`
-/

namespace A078575.P1437763875231952884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A067829 (n + 2) - 1).toNat

end

end A078575.P1437763875231952884

namespace A078575

/-- `A000203(A067829(n+2)-1)` -/
def P1437763875231952884.Spec : Prop :=
  ∀ n, P1437763875231952884.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P10812414512125421340

`A000203(2*A040040(n+1))`
-/

namespace A078575.P10812414512125421340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A040040 (n + 1)).toNat

end

end A078575.P10812414512125421340

namespace A078575

/-- `A000203(2*A040040(n+1))` -/
def P10812414512125421340.Spec : Prop :=
  ∀ n, P10812414512125421340.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P10272628734293690308

`A000203(A054735(n+1)/2)`
-/

namespace A078575.P10272628734293690308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2)).toNat

end

end A078575.P10272628734293690308

namespace A078575

/-- `A000203(A054735(n+1)/2)` -/
def P10272628734293690308.Spec : Prop :=
  ∀ n, P10272628734293690308.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P11892658231205883039

`A000203(2*A168497(n+2))`
-/

namespace A078575.P11892658231205883039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A168497 (n + 2)).toNat

end

end A078575.P11892658231205883039

namespace A078575

/-- `A000203(2*A168497(n+2))` -/
def P11892658231205883039.Spec : Prop :=
  ∀ n, P11892658231205883039.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P9298402473151190804

`A000203(A111046(n+1)/4)`
-/

namespace A078575.P9298402473151190804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A111046 (n + 1) : ℚ) / 4)).toNat

end

end A078575.P9298402473151190804

namespace A078575

/-- `A000203(A111046(n+1)/4)` -/
def P9298402473151190804.Spec : Prop :=
  ∀ n, P9298402473151190804.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P1003270638821513209

`A000203(xor(1, A006512(n+1)))`
-/

namespace A078575.P1003270638821513209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.xor 1 (A006512 (n + 1))).toNat

end

end A078575.P1003270638821513209

namespace A078575

/-- `A000203(xor(1, A006512(n+1)))` -/
def P1003270638821513209.Spec : Prop :=
  ∀ n, P1003270638821513209.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P4872695134126214753

`A000203(p?[A040976(n+1)]+1)`
-/

namespace A078575.P4872695134126214753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A078575.P4872695134126214753

namespace A078575

/-- `A000203(p?[A040976(n+1)]+1)` -/
def P4872695134126214753.Spec : Prop :=
  ∀ n, P4872695134126214753.a n = A078575 (n + 1)

end A078575

/-! ## A078575.P10341287039597270912

`A000203(A077800(2*n+1)+1)`
-/

namespace A078575.P10341287039597270912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A077800 (2 * n + 1) + 1).toNat

end

end A078575.P10341287039597270912

namespace A078575

/-- `A000203(A077800(2*n+1)+1)` -/
def P10341287039597270912.Spec : Prop :=
  ∀ n, P10341287039597270912.a n = A078575 (n + 1)

end A078575

/-!
# A078576: Sum of distinct prime factors of the average of n-th twin prime pair.

The programs for A078576, the canonical program `A078576.P9951242192980910513` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078576 has offset 1).

The definition of A078576 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078576.P9951242192980910513

`A008472(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078576

/-- `A008472(A014574(n+1))` -/
def P9951242192980910513.Spec : Prop :=
  ∀ n, P9951242192980910513.a n = A078576 (n + 1)

theorem P9951242192980910513.correct : P9951242192980910513.Spec := by
  intro n
  simp only [A078576, Nat.add_sub_cancel]

end A078576

/-! ## A078576.P11364533055473161570

`∑{p}[A078579(n+1), #]`
-/

namespace A078576.P11364533055473161570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P11364533055473161570

namespace A078576

/-- `∑{p}[A078579(n+1), #]` -/
def P11364533055473161570.Spec : Prop :=
  ∀ n, (P11364533055473161570.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P3586975577538650452

`∑{p}[sqrt(A075369(n+1)), #]`
-/

namespace A078576.P3586975577538650452
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A078576.P3586975577538650452

namespace A078576

/-- `∑{p}[sqrt(A075369(n+1)), #]` -/
def P3586975577538650452.Spec : Prop :=
  ∀ n, (P3586975577538650452.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P342434064676955369

`∑{p}[A001359(n+1)+1, #]`
-/

namespace A078576.P342434064676955369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P342434064676955369

namespace A078576

/-- `∑{p}[A001359(n+1)+1, #]` -/
def P342434064676955369.Spec : Prop :=
  ∀ n, (P342434064676955369.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P281046079928603527

`∑{p}[1-A006512(n+1), #]`
-/

namespace A078576.P281046079928603527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P281046079928603527

namespace A078576

/-- `∑{p}[1-A006512(n+1), #]` -/
def P281046079928603527.Spec : Prop :=
  ∀ n, (P281046079928603527.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P4249524949435981142

`∑{p}[1-A001097(2*n+1), #]`
-/

namespace A078576.P4249524949435981142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001097 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P4249524949435981142

namespace A078576

/-- `∑{p}[1-A001097(2*n+1), #]` -/
def P4249524949435981142.Spec : Prop :=
  ∀ n, (P4249524949435981142.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P16423085396233888406

`∑{p}[A054735(n+1), #]`
-/

namespace A078576.P16423085396233888406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P16423085396233888406

namespace A078576

/-- `∑{p}[A054735(n+1), #]` -/
def P16423085396233888406.Spec : Prop :=
  ∀ n, (P16423085396233888406.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P10734287458895042951

`∑{p}[A108605(n+1)+2, #]`
-/

namespace A078576.P10734287458895042951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P10734287458895042951

namespace A078576

/-- `∑{p}[A108605(n+1)+2, #]` -/
def P10734287458895042951.Spec : Prop :=
  ∀ n, (P10734287458895042951.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P14037544780429923256

`∑{p}[A096281(2*n+1), #]`
-/

namespace A078576.P14037544780429923256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P14037544780429923256

namespace A078576

/-- `∑{p}[A096281(2*n+1), #]` -/
def P14037544780429923256.Spec : Prop :=
  ∀ n, (P14037544780429923256.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P9041197702184559850

`∑{p}[A111046(n+1), #]`
-/

namespace A078576.P9041197702184559850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P9041197702184559850

namespace A078576

/-- `∑{p}[A111046(n+1), #]` -/
def P9041197702184559850.Spec : Prop :=
  ∀ n, (P9041197702184559850.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P13952817307368826728

`A001414(A078579(n+1)/2)+2`
-/

namespace A078576.P13952817307368826728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A078579 (n + 1) : ℚ) / 2)).toNat + 2

end

end A078576.P13952817307368826728

namespace A078576

/-- `A001414(A078579(n+1)/2)+2` -/
def P13952817307368826728.Spec : Prop :=
  ∀ n, P13952817307368826728.a n = A078576 (n + 1)

end A078576

/-! ## A078576.P13087165291538442977

`∑{p}[p?[A040976(n+1)]+1, #]`
-/

namespace A078576.P13087165291538442977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P13087165291538442977

namespace A078576

/-- `∑{p}[p?[A040976(n+1)]+1, #]` -/
def P13087165291538442977.Spec : Prop :=
  ∀ n, (P13087165291538442977.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P4344268246562195069

`∑{p}[p?[A000040(n+1)+2]-1, #]`
-/

namespace A078576.P4344268246562195069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078576.P4344268246562195069

namespace A078576

/-- `∑{p}[p?[A000040(n+1)+2]-1, #]` -/
def P4344268246562195069.Spec : Prop :=
  ∀ n, (P4344268246562195069.a n : ℤ) = A078576 (n + 1)

end A078576

/-! ## A078576.P2344032804480496720

`A023513(A029707(n+1))`
-/

namespace A078576.P2344032804480496720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023513 (A029707 (n + 1)).toNat

end

end A078576.P2344032804480496720

namespace A078576

/-- `A023513(A029707(n+1))` -/
def P2344032804480496720.Spec : Prop :=
  ∀ n, P2344032804480496720.a n = A078576 (n + 1)

end A078576

/-! ## A078576.P7026947172218148587

`A023507(A107770(n+1))`
-/

namespace A078576.P7026947172218148587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023507 (A107770 (n + 1)).toNat

end

end A078576.P7026947172218148587

namespace A078576

/-- `A023507(A107770(n+1))` -/
def P7026947172218148587.Spec : Prop :=
  ∀ n, P7026947172218148587.a n = A078576 (n + 1)

end A078576

/-! ## A078576.P9935215535997188065

`A001414(A078579(n+1))`
-/

namespace A078576.P9935215535997188065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A078579 (n + 1)).toNat

end

end A078576.P9935215535997188065

namespace A078576

/-- `A001414(A078579(n+1))` -/
def P9935215535997188065.Spec : Prop :=
  ∀ n, P9935215535997188065.a n = A078576 (n + 1)

end A078576

/-! ## A078576.P9672706782104261172

`A008472(A001359(n+1)+1)`
-/

namespace A078576.P9672706782104261172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A001359 (n + 1) + 1).toNat

end

end A078576.P9672706782104261172

namespace A078576

/-- `A008472(A001359(n+1)+1)` -/
def P9672706782104261172.Spec : Prop :=
  ∀ n, P9672706782104261172.a n = A078576 (n + 1)

end A078576

/-! ## A078576.P15200749774643278481

`A008472(A006512(n+1)-1)`
-/

namespace A078576.P15200749774643278481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006512 (n + 1) - 1).toNat

end

end A078576.P15200749774643278481

namespace A078576

/-- `A008472(A006512(n+1)-1)` -/
def P15200749774643278481.Spec : Prop :=
  ∀ n, P15200749774643278481.a n = A078576 (n + 1)

end A078576

/-! ## A078576.P8987854404575438370

`A008472(A054735(n+1)/2)`
-/

namespace A078576.P8987854404575438370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2)).toNat

end

end A078576.P8987854404575438370

namespace A078576

/-- `A008472(A054735(n+1)/2)` -/
def P8987854404575438370.Spec : Prop :=
  ∀ n, P8987854404575438370.a n = A078576 (n + 1)

end A078576

/-!
# A078577: Sum of all prime factors of the average of n-th twin prime pair.

The programs for A078577, the canonical program `A078577.P4951498025031175163` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078577 has offset 1).

The definition of A078577 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078577.P4951498025031175163

`A001414(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078577

/-- `A001414(A014574(n+1))` -/
def P4951498025031175163.Spec : Prop :=
  ∀ n, P4951498025031175163.a n = A078577 (n + 1)

theorem P4951498025031175163.correct : P4951498025031175163.Spec := by
  intro n
  simp only [A078577, Nat.add_sub_cancel]

end A078577

/-! ## A078577.P3625089256956361524

`A001414(A040040(n+1))+2`
-/

namespace A078577.P3625089256956361524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A040040 (n + 1)).toNat + 2

end

end A078577.P3625089256956361524

namespace A078577

/-- `A001414(A040040(n+1))+2` -/
def P3625089256956361524.Spec : Prop :=
  ∀ n, P3625089256956361524.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P8815724466424602422

`A210934(A029707(n+1))`
-/

namespace A078577.P8815724466424602422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210934 (A029707 (n + 1)).toNat

end

end A078577.P8815724466424602422

namespace A078577

/-- `A210934(A029707(n+1))` -/
def P8815724466424602422.Spec : Prop :=
  ∀ n, P8815724466424602422.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P1841040031064626698

`A210936(A107770(n+1))`
-/

namespace A078577.P1841040031064626698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210936 (A107770 (n + 1)).toNat

end

end A078577.P1841040031064626698

namespace A078577

/-- `A210936(A107770(n+1))` -/
def P1841040031064626698.Spec : Prop :=
  ∀ n, P1841040031064626698.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P17037825307673143326

`A210936(A029707(n+1)+1)`
-/

namespace A078577.P17037825307673143326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210936 (A029707 (n + 1) + 1).toNat

end

end A078577.P17037825307673143326

namespace A078577

/-- `A210936(A029707(n+1)+1)` -/
def P17037825307673143326.Spec : Prop :=
  ∀ n, P17037825307673143326.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P3392394365162724331

`A001414(A001359(n+1)+1)`
-/

namespace A078577.P3392394365162724331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A001359 (n + 1) + 1).toNat

end

end A078577.P3392394365162724331

namespace A078577

/-- `A001414(A001359(n+1)+1)` -/
def P3392394365162724331.Spec : Prop :=
  ∀ n, P3392394365162724331.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P3597613505220374261

`A001414(A006512(n+1)-1)`
-/

namespace A078577.P3597613505220374261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A006512 (n + 1) - 1).toNat

end

end A078577.P3597613505220374261

namespace A078577

/-- `A001414(A006512(n+1)-1)` -/
def P3597613505220374261.Spec : Prop :=
  ∀ n, P3597613505220374261.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P2783907991018212012

`A001414(A181747(n+2)+1)`
-/

namespace A078577.P2783907991018212012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A181747 (n + 2) + 1).toNat

end

end A078577.P2783907991018212012

namespace A078577

/-- `A001414(A181747(n+2)+1)` -/
def P2783907991018212012.Spec : Prop :=
  ∀ n, P2783907991018212012.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P6369092545307811754

`A001414(A067829(n+2)-1)`
-/

namespace A078577.P6369092545307811754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A067829 (n + 2) - 1).toNat

end

end A078577.P6369092545307811754

namespace A078577

/-- `A001414(A067829(n+2)-1)` -/
def P6369092545307811754.Spec : Prop :=
  ∀ n, P6369092545307811754.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P16942673562183726042

`A001414(A054735(n+1)/2)`
-/

namespace A078577.P16942673562183726042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2)).toNat

end

end A078577.P16942673562183726042

namespace A078577

/-- `A001414(A054735(n+1)/2)` -/
def P16942673562183726042.Spec : Prop :=
  ∀ n, P16942673562183726042.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P17335105057145003693

`A001414(A077800(2*n+1)+1)`
-/

namespace A078577.P17335105057145003693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A077800 (2 * n + 1) + 1).toNat

end

end A078577.P17335105057145003693

namespace A078577

/-- `A001414(A077800(2*n+1)+1)` -/
def P17335105057145003693.Spec : Prop :=
  ∀ n, P17335105057145003693.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P3322022050087726324

`A001414(A108605(n+1)/2+1)`
-/

namespace A078577.P3322022050087726324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A108605 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A078577.P3322022050087726324

namespace A078577

/-- `A001414(A108605(n+1)/2+1)` -/
def P3322022050087726324.Spec : Prop :=
  ∀ n, P3322022050087726324.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P9256657348273922616

`A001414(A000203(A001359(n+1)))`
-/

namespace A078577.P9256657348273922616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000203 (A001359 (n + 1)).toNat).toNat

end

end A078577.P9256657348273922616

namespace A078577

/-- `A001414(A000203(A001359(n+1)))` -/
def P9256657348273922616.Spec : Prop :=
  ∀ n, P9256657348273922616.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P3482285353363382792

`A001414(A000010(A006512(n+1)))`
-/

namespace A078577.P3482285353363382792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000010 (A006512 (n + 1)).toNat).toNat

end

end A078577.P3482285353363382792

namespace A078577

/-- `A001414(A000010(A006512(n+1)))` -/
def P3482285353363382792.Spec : Prop :=
  ∀ n, P3482285353363382792.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P16531707201507564743

`A001414(A000010(A077800(2*(n+1))))`
-/

namespace A078577.P16531707201507564743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000010 (A077800 (2 * (n + 1))).toNat).toNat

end

end A078577.P16531707201507564743

namespace A078577

/-- `A001414(A000010(A077800(2*(n+1))))` -/
def P16531707201507564743.Spec : Prop :=
  ∀ n, P16531707201507564743.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P1944380247601448751

`A001414(A000203(A077800(2*n+1)))`
-/

namespace A078577.P1944380247601448751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000203 (A077800 (2 * n + 1)).toNat).toNat

end

end A078577.P1944380247601448751

namespace A078577

/-- `A001414(A000203(A077800(2*n+1)))` -/
def P1944380247601448751.Spec : Prop :=
  ∀ n, P1944380247601448751.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P1026943725840758833

`A001414(A108605(n+1)+2)-2`
-/

namespace A078577.P1026943725840758833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A108605 (n + 1) + 2).toNat - 2

end

end A078577.P1026943725840758833

namespace A078577

/-- `A001414(A108605(n+1)+2)-2` -/
def P1026943725840758833.Spec : Prop :=
  ∀ n, P1026943725840758833.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P8376709378368978333

`A100006(A040040(n+1))`
-/

namespace A078577.P8376709378368978333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (A040040 (n + 1)).toNat

end

end A078577.P8376709378368978333

namespace A078577

/-- `A100006(A040040(n+1))` -/
def P8376709378368978333.Spec : Prop :=
  ∀ n, P8376709378368978333.a n = A078577 (n + 1)

end A078577

/-! ## A078577.P10593867111771842944

`A100006(A168497(n+2))`
-/

namespace A078577.P10593867111771842944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (A168497 (n + 2)).toNat

end

end A078577.P10593867111771842944

namespace A078577

/-- `A100006(A168497(n+2))` -/
def P10593867111771842944.Spec : Prop :=
  ∀ n, P10593867111771842944.a n = A078577 (n + 1)

end A078577

/-!
# A078578: Euler's totient of the average of n-th twin prime pair.

The programs for A078578, the canonical program `A078578.P9085346359755394727` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078578 has offset 1).

The definition of A078578 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078578.P9085346359755394727

`A000010(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078578

/-- `A000010(A014574(n+1))` -/
def P9085346359755394727.Spec : Prop :=
  ∀ n, P9085346359755394727.a n = A078578 (n + 1)

theorem P9085346359755394727.correct : P9085346359755394727.Spec := by
  intro n
  simp only [A078578, Nat.add_sub_cancel]

end A078578

/-! ## A078578.P6504060809906199676

`A062570(A040040(n+1))`
-/

namespace A078578.P6504060809906199676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A040040 (n + 1)).toNat

end

end A078578.P6504060809906199676

namespace A078578

/-- `A062570(A040040(n+1))` -/
def P6504060809906199676.Spec : Prop :=
  ∀ n, P6504060809906199676.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P1146327735224616766

`A008331(A029707(n+1))`
-/

namespace A078578.P1146327735224616766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008331 (A029707 (n + 1)).toNat

end

end A078578.P1146327735224616766

namespace A078578

/-- `A008331(A029707(n+1))` -/
def P1146327735224616766.Spec : Prop :=
  ∀ n, P1146327735224616766.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P12193884141751290804

`A008330(A107770(n+1))`
-/

namespace A078578.P12193884141751290804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (A107770 (n + 1)).toNat

end

end A078578.P12193884141751290804

namespace A078578

/-- `A008330(A107770(n+1))` -/
def P12193884141751290804.Spec : Prop :=
  ∀ n, P12193884141751290804.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P15378131918336601300

`A008330(A029707(n+1)+1)`
-/

namespace A078578.P15378131918336601300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (A029707 (n + 1) + 1).toNat

end

end A078578.P15378131918336601300

namespace A078578

/-- `A008330(A029707(n+1)+1)` -/
def P15378131918336601300.Spec : Prop :=
  ∀ n, P15378131918336601300.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P12348686772412717300

`A000010(sqrt(A075369(n+1)))`
-/

namespace A078578.P12348686772412717300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A078578.P12348686772412717300

namespace A078578

/-- `A000010(sqrt(A075369(n+1)))` -/
def P12348686772412717300.Spec : Prop :=
  ∀ n, P12348686772412717300.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P8094821572335870623

`A000010(A001359(n+1)+1)`
-/

namespace A078578.P8094821572335870623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001359 (n + 1) + 1).toNat

end

end A078578.P8094821572335870623

namespace A078578

/-- `A000010(A001359(n+1)+1)` -/
def P8094821572335870623.Spec : Prop :=
  ∀ n, P8094821572335870623.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P4200781165425482351

`A000010(A111166(n+1)+1)`
-/

namespace A078578.P4200781165425482351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A111166 (n + 1) + 1).toNat

end

end A078578.P4200781165425482351

namespace A078578

/-- `A000010(A111166(n+1)+1)` -/
def P4200781165425482351.Spec : Prop :=
  ∀ n, P4200781165425482351.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P7345573736040362107

`A000010(A006512(n+1)-1)`
-/

namespace A078578.P7345573736040362107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006512 (n + 1) - 1).toNat

end

end A078578.P7345573736040362107

namespace A078578

/-- `A000010(A006512(n+1)-1)` -/
def P7345573736040362107.Spec : Prop :=
  ∀ n, P7345573736040362107.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P6256848947164963511

`A000010(A144834(n+1)+2)`
-/

namespace A078578.P6256848947164963511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A144834 (n + 1) + 2).toNat

end

end A078578.P6256848947164963511

namespace A078578

/-- `A000010(A144834(n+1)+2)` -/
def P6256848947164963511.Spec : Prop :=
  ∀ n, P6256848947164963511.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P13121168436677957141

`A000010(A067829(n+2)-1)`
-/

namespace A078578.P13121168436677957141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A067829 (n + 2) - 1).toNat

end

end A078578.P13121168436677957141

namespace A078578

/-- `A000010(A067829(n+2)-1)` -/
def P13121168436677957141.Spec : Prop :=
  ∀ n, P13121168436677957141.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P6811027545507450104

`A000010(2*A040040(n+1))`
-/

namespace A078578.P6811027545507450104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A040040 (n + 1)).toNat

end

end A078578.P6811027545507450104

namespace A078578

/-- `A000010(2*A040040(n+1))` -/
def P6811027545507450104.Spec : Prop :=
  ∀ n, P6811027545507450104.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P63569373809534641

`A000010(A054735(n+1)/2)`
-/

namespace A078578.P63569373809534641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2)).toNat

end

end A078578.P63569373809534641

namespace A078578

/-- `A000010(A054735(n+1)/2)` -/
def P63569373809534641.Spec : Prop :=
  ∀ n, P63569373809534641.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P1013151916173694571

`A000010(2*A168497(n+2))`
-/

namespace A078578.P1013151916173694571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A168497 (n + 2)).toNat

end

end A078578.P1013151916173694571

namespace A078578

/-- `A000010(2*A168497(n+2))` -/
def P1013151916173694571.Spec : Prop :=
  ∀ n, P1013151916173694571.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P17572797716900980861

`A000010(A111046(n+1)/4)`
-/

namespace A078578.P17572797716900980861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A111046 (n + 1) : ℚ) / 4)).toNat

end

end A078578.P17572797716900980861

namespace A078578

/-- `A000010(A111046(n+1)/4)` -/
def P17572797716900980861.Spec : Prop :=
  ∀ n, P17572797716900980861.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P16137375884275153658

`A000010(A077800(2*n+1)+1)`
-/

namespace A078578.P16137375884275153658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A077800 (2 * n + 1) + 1).toNat

end

end A078578.P16137375884275153658

namespace A078578

/-- `A000010(A077800(2*n+1)+1)` -/
def P16137375884275153658.Spec : Prop :=
  ∀ n, P16137375884275153658.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P3555603368404074137

`A000010(A171821(2*n+1)+1)`
-/

namespace A078578.P3555603368404074137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A171821 (2 * n + 1) + 1).toNat

end

end A078578.P3555603368404074137

namespace A078578

/-- `A000010(A171821(2*n+1)+1)` -/
def P3555603368404074137.Spec : Prop :=
  ∀ n, P3555603368404074137.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P1443816659524521077

`A000010(A108605(n+1)/2+1)`
-/

namespace A078578.P1443816659524521077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A108605 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A078578.P1443816659524521077

namespace A078578

/-- `A000010(A108605(n+1)/2+1)` -/
def P1443816659524521077.Spec : Prop :=
  ∀ n, P1443816659524521077.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P16406738962256306966

`A000010(A176810(n+1)/2-1)`
-/

namespace A078578.P16406738962256306966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A176810 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A078578.P16406738962256306966

namespace A078578

/-- `A000010(A176810(n+1)/2-1)` -/
def P16406738962256306966.Spec : Prop :=
  ∀ n, P16406738962256306966.a n = A078578 (n + 1)

end A078578

/-! ## A078578.P16600501926184732562

`A000010(p?[A000040(n+1)+2]-1)`
-/

namespace A078578.P16600501926184732562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A078578.P16600501926184732562

namespace A078578

/-- `A000010(p?[A000040(n+1)+2]-1)` -/
def P16600501926184732562.Spec : Prop :=
  ∀ n, P16600501926184732562.a n = A078578 (n + 1)

end A078578

/-!
# A078579: Squarefree kernel of the average of n-th twin prime pair.

The programs for A078579, the canonical program `A078579.P13520828778632311138` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078579 has offset 1).

The definition of A078579 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078579.P13520828778632311138

`A007947(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078579

/-- `A007947(A014574(n+1))` -/
def P13520828778632311138.Spec : Prop :=
  ∀ n, P13520828778632311138.a n = A078579 (n + 1)

theorem P13520828778632311138.correct : P13520828778632311138.Spec := by
  intro n
  simp only [A078579, Nat.add_sub_cancel]

end A078579

/-! ## A078579.P15904915859539586605

`∏{p}[sqrt(A075369(n+1)), #]`
-/

namespace A078579.P15904915859539586605
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A078579.P15904915859539586605

namespace A078579

/-- `∏{p}[sqrt(A075369(n+1)), #]` -/
def P15904915859539586605.Spec : Prop :=
  ∀ n, (P15904915859539586605.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P4053668714475000371

`∏{p}[A001359(n+1)+1, #]`
-/

namespace A078579.P4053668714475000371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P4053668714475000371

namespace A078579

/-- `∏{p}[A001359(n+1)+1, #]` -/
def P4053668714475000371.Spec : Prop :=
  ∀ n, (P4053668714475000371.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P8391562327046224651

`∏{p}[1-A006512(n+1), #]`
-/

namespace A078579.P8391562327046224651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P8391562327046224651

namespace A078579

/-- `∏{p}[1-A006512(n+1), #]` -/
def P8391562327046224651.Spec : Prop :=
  ∀ n, (P8391562327046224651.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P6850710863807612005

`∏{p}[A144834(n+1)+2, #]`
-/

namespace A078579.P6850710863807612005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P6850710863807612005

namespace A078579

/-- `∏{p}[A144834(n+1)+2, #]` -/
def P6850710863807612005.Spec : Prop :=
  ∀ n, (P6850710863807612005.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P11347777524549275805

`∏{p}[2*A040040(n+1), #]`
-/

namespace A078579.P11347777524549275805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P11347777524549275805

namespace A078579

/-- `∏{p}[2*A040040(n+1), #]` -/
def P11347777524549275805.Spec : Prop :=
  ∀ n, (P11347777524549275805.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P9090725424891856115

`∏{p}[1-A171821(2*(n+1)), #]`
-/

namespace A078579.P9090725424891856115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171821 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P9090725424891856115

namespace A078579

/-- `∏{p}[1-A171821(2*(n+1)), #]` -/
def P9090725424891856115.Spec : Prop :=
  ∀ n, (P9090725424891856115.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P2662500434570485593

`∏{p}[A054735(n+1), #]`
-/

namespace A078579.P2662500434570485593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P2662500434570485593

namespace A078579

/-- `∏{p}[A054735(n+1), #]` -/
def P2662500434570485593.Spec : Prop :=
  ∀ n, (P2662500434570485593.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P1078016411294509394

`∏{p}[A108605(n+1)+2, #]`
-/

namespace A078579.P1078016411294509394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P1078016411294509394

namespace A078579

/-- `∏{p}[A108605(n+1)+2, #]` -/
def P1078016411294509394.Spec : Prop :=
  ∀ n, (P1078016411294509394.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P11064383413081204237

`∏{p}[A096281(2*n+1), #]`
-/

namespace A078579.P11064383413081204237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P11064383413081204237

namespace A078579

/-- `∏{p}[A096281(2*n+1), #]` -/
def P11064383413081204237.Spec : Prop :=
  ∀ n, (P11064383413081204237.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P223104911595063469

`∏{p}[A111046(n+1), #]`
-/

namespace A078579.P223104911595063469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P223104911595063469

namespace A078579

/-- `∏{p}[A111046(n+1), #]` -/
def P223104911595063469.Spec : Prop :=
  ∀ n, (P223104911595063469.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P9360932266897182209

`∏{p}[p?[abs(2-A000040(n+1))]+1, #]`
-/

namespace A078579.P9360932266897182209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000040 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078579.P9360932266897182209

namespace A078579

/-- `∏{p}[p?[abs(2-A000040(n+1))]+1, #]` -/
def P9360932266897182209.Spec : Prop :=
  ∀ n, (P9360932266897182209.a n : ℤ) = A078579 (n + 1)

end A078579

/-! ## A078579.P10204039715163357496

`A077066(A029707(n+1))`
-/

namespace A078579.P10204039715163357496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077066 (A029707 (n + 1)).toNat

end

end A078579.P10204039715163357496

namespace A078579

/-- `A077066(A029707(n+1))` -/
def P10204039715163357496.Spec : Prop :=
  ∀ n, P10204039715163357496.a n = A078579 (n + 1)

end A078579

/-! ## A078579.P3636713025618763122

`A077063(A107770(n+1))`
-/

namespace A078579.P3636713025618763122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077063 (A107770 (n + 1)).toNat

end

end A078579.P3636713025618763122

namespace A078579

/-- `A077063(A107770(n+1))` -/
def P3636713025618763122.Spec : Prop :=
  ∀ n, P3636713025618763122.a n = A078579 (n + 1)

end A078579

/-! ## A078579.P3243078654057082360

`A007947(A001359(n+1)+1)`
-/

namespace A078579.P3243078654057082360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001359 (n + 1) + 1).toNat

end

end A078579.P3243078654057082360

namespace A078579

/-- `A007947(A001359(n+1)+1)` -/
def P3243078654057082360.Spec : Prop :=
  ∀ n, P3243078654057082360.a n = A078579 (n + 1)

end A078579

/-! ## A078579.P10189304854193045536

`A007947(A006512(n+1)-1)`
-/

namespace A078579.P10189304854193045536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A006512 (n + 1) - 1).toNat

end

end A078579.P10189304854193045536

namespace A078579

/-- `A007947(A006512(n+1)-1)` -/
def P10189304854193045536.Spec : Prop :=
  ∀ n, P10189304854193045536.a n = A078579 (n + 1)

end A078579

/-! ## A078579.P8670496858672316739

`A007947(2*A040040(n+1))`
-/

namespace A078579.P8670496858672316739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * A040040 (n + 1)).toNat

end

end A078579.P8670496858672316739

namespace A078579

/-- `A007947(2*A040040(n+1))` -/
def P8670496858672316739.Spec : Prop :=
  ∀ n, P8670496858672316739.a n = A078579 (n + 1)

end A078579

/-! ## A078579.P10998455583655880419

`A007947(A054735(n+1)/2)`
-/

namespace A078579.P10998455583655880419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2)).toNat

end

end A078579.P10998455583655880419

namespace A078579

/-- `A007947(A054735(n+1)/2)` -/
def P10998455583655880419.Spec : Prop :=
  ∀ n, P10998455583655880419.a n = A078579 (n + 1)

end A078579

/-! ## A078579.P12545145451942245486

`A007947(2*A168497(n+2))`
-/

namespace A078579.P12545145451942245486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * A168497 (n + 2)).toNat

end

end A078579.P12545145451942245486

namespace A078579

/-- `A007947(2*A168497(n+2))` -/
def P12545145451942245486.Spec : Prop :=
  ∀ n, P12545145451942245486.a n = A078579 (n + 1)

end A078579

/-!
# A078580: Moebius function mu of the average of n-th twin prime pair.

The programs for A078580, the canonical program `A078580.P13382631111612144934` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078580 has offset 1).

The definition of A078580 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078580.P13382631111612144934

`A008683(A014574(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A078580

/-- `A008683(A014574(n+1))` -/
def P13382631111612144934.Spec : Prop :=
  ∀ n, P13382631111612144934.a n = A078580 (n + 1)

theorem P13382631111612144934.correct : P13382631111612144934.Spec := by
  intro n
  simp only [A078580, Nat.add_sub_cancel]

end A078580

/-! ## A078580.P18296188131415727014

`A079627(A029707(n+1))`
-/

namespace A078580.P18296188131415727014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079627 (A029707 (n + 1)).toNat

end

end A078580.P18296188131415727014

namespace A078580

/-- `A079627(A029707(n+1))` -/
def P18296188131415727014.Spec : Prop :=
  ∀ n, P18296188131415727014.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P5478182182494686165

`A089451(A107770(n+1))`
-/

namespace A078580.P5478182182494686165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089451 (A107770 (n + 1)).toNat

end

end A078580.P5478182182494686165

namespace A078580

/-- `A089451(A107770(n+1))` -/
def P5478182182494686165.Spec : Prop :=
  ∀ n, P5478182182494686165.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P764030345397077223

`A008683(sqrt(A075369(n+1)))`
-/

namespace A078580.P764030345397077223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A078580.P764030345397077223

namespace A078580

/-- `A008683(sqrt(A075369(n+1)))` -/
def P764030345397077223.Spec : Prop :=
  ∀ n, P764030345397077223.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P7914432903738610684

`A008683(record[A362296(n+2)])`
-/

namespace A078580.P7914432903738610684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362296 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078580.P7914432903738610684

namespace A078580

/-- `A008683(record[A362296(n+2)])` -/
def P7914432903738610684.Spec : Prop :=
  ∀ n, P7914432903738610684.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P5372198032020777598

`A008683(A001359(n+1)+1)`
-/

namespace A078580.P5372198032020777598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1) + 1).toNat

end

end A078580.P5372198032020777598

namespace A078580

/-- `A008683(A001359(n+1)+1)` -/
def P5372198032020777598.Spec : Prop :=
  ∀ n, P5372198032020777598.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P408957650316714793

`A008683(A006512(n+1)-1)`
-/

namespace A078580.P408957650316714793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006512 (n + 1) - 1).toNat

end

end A078580.P408957650316714793

namespace A078580

/-- `A008683(A006512(n+1)-1)` -/
def P408957650316714793.Spec : Prop :=
  ∀ n, P408957650316714793.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P3823446187247572013

`A008683(A067829(n+2)-1)`
-/

namespace A078580.P3823446187247572013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A067829 (n + 2) - 1).toNat

end

end A078580.P3823446187247572013

namespace A078580

/-- `A008683(A067829(n+2)-1)` -/
def P3823446187247572013.Spec : Prop :=
  ∀ n, P3823446187247572013.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P12458307340039743864

`A008683(2*A040040(n+1))`
-/

namespace A078580.P12458307340039743864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A040040 (n + 1)).toNat

end

end A078580.P12458307340039743864

namespace A078580

/-- `A008683(2*A040040(n+1))` -/
def P12458307340039743864.Spec : Prop :=
  ∀ n, P12458307340039743864.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P1386652150382039906

`A008683(A054735(n+1)/2)`
-/

namespace A078580.P1386652150382039906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2)).toNat

end

end A078580.P1386652150382039906

namespace A078580

/-- `A008683(A054735(n+1)/2)` -/
def P1386652150382039906.Spec : Prop :=
  ∀ n, P1386652150382039906.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P9327957337227959918

`A008683(2*A168497(n+2))`
-/

namespace A078580.P9327957337227959918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A168497 (n + 2)).toNat

end

end A078580.P9327957337227959918

namespace A078580

/-- `A008683(2*A168497(n+2))` -/
def P9327957337227959918.Spec : Prop :=
  ∀ n, P9327957337227959918.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P306154208288935932

`A008683(xor(1, A006512(n+1)))`
-/

namespace A078580.P306154208288935932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.xor 1 (A006512 (n + 1))).toNat

end

end A078580.P306154208288935932

namespace A078580

/-- `A008683(xor(1, A006512(n+1)))` -/
def P306154208288935932.Spec : Prop :=
  ∀ n, P306154208288935932.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P1579929778748382107

`A008683(p?[A040976(n+1)]+1)`
-/

namespace A078580.P1579929778748382107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A078580.P1579929778748382107

namespace A078580

/-- `A008683(p?[A040976(n+1)]+1)` -/
def P1579929778748382107.Spec : Prop :=
  ∀ n, P1579929778748382107.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P5951313862225596175

`A008683(p?[A072281(n+1)]-1)`
-/

namespace A078580.P5951313862225596175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A078580.P5951313862225596175

namespace A078580

/-- `A008683(p?[A072281(n+1)]-1)` -/
def P5951313862225596175.Spec : Prop :=
  ∀ n, P5951313862225596175.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P1023164889802976714

`A008683(p?[A028815(n)-3]+1)`
-/

namespace A078580.P1023164889802976714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A078580.P1023164889802976714

namespace A078580

/-- `A008683(p?[A028815(n)-3]+1)` -/
def P1023164889802976714.Spec : Prop :=
  ∀ n, P1023164889802976714.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P1094239129241094886

`A008683(A077800(2*n+1)+1)`
-/

namespace A078580.P1094239129241094886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A077800 (2 * n + 1) + 1).toNat

end

end A078580.P1094239129241094886

namespace A078580

/-- `A008683(A077800(2*n+1)+1)` -/
def P1094239129241094886.Spec : Prop :=
  ∀ n, P1094239129241094886.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P13045009077982724419

`A008683(A176810(n+1)/2-1)`
-/

namespace A078580.P13045009077982724419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A176810 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A078580.P13045009077982724419

namespace A078580

/-- `A008683(A176810(n+1)/2-1)` -/
def P13045009077982724419.Spec : Prop :=
  ∀ n, P13045009077982724419.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P6106926902648178286

`A008683(p?[A000040(n+1)+2]-1)`
-/

namespace A078580.P6106926902648178286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A078580.P6106926902648178286

namespace A078580

/-- `A008683(p?[A000040(n+1)+2]-1)` -/
def P6106926902648178286.Spec : Prop :=
  ∀ n, P6106926902648178286.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P9850146893829489735

`A008683(xor(1, p?[A000040(n+1)+2]))`
-/

namespace A078580.P9850146893829489735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A078580.P9850146893829489735

namespace A078580

/-- `A008683(xor(1, p?[A000040(n+1)+2]))` -/
def P9850146893829489735.Spec : Prop :=
  ∀ n, P9850146893829489735.a n = A078580 (n + 1)

end A078580

/-! ## A078580.P17502376784607478271

`A008683(A000203(A001359(n+1)))`
-/

namespace A078580.P17502376784607478271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000203 (A001359 (n + 1)).toNat).toNat

end

end A078580.P17502376784607478271

namespace A078580

/-- `A008683(A000203(A001359(n+1)))` -/
def P17502376784607478271.Spec : Prop :=
  ∀ n, P17502376784607478271.a n = A078580 (n + 1)

end A078580

/-!
# A078581: Arithmetic derivative of the average of n-th twin prime pair.

The programs for A078581, the canonical program `A078581.P15978629172773451273` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078581 has offset 1).

The definition of A078581 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078581.P15978629172773451273

`A003415(A014574(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078581

/-- `A003415(A014574(n+1))` -/
def P15978629172773451273.Spec : Prop :=
  ∀ n, P15978629172773451273.a n = A078581 (n + 1)

theorem P15978629172773451273.correct : P15978629172773451273.Spec := by
  intro n
  simp only [A078581, Nat.add_sub_cancel]

end A078581

/-! ## A078581.P3438132488133172011

`A068719(A040040(n+1))`
-/

namespace A078581.P3438132488133172011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068719 (A040040 (n + 1)).toNat

end

end A078581.P3438132488133172011

namespace A078581

/-- `A068719(A040040(n+1))` -/
def P3438132488133172011.Spec : Prop :=
  ∀ n, P3438132488133172011.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P12342613434438579370

`A068719(A168497(n+2))`
-/

namespace A078581.P12342613434438579370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068719 (A168497 (n + 2)).toNat

end

end A078581.P12342613434438579370

namespace A078581

/-- `A068719(A168497(n+2))` -/
def P12342613434438579370.Spec : Prop :=
  ∀ n, P12342613434438579370.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P8302280069672964555

`A351571(A001359(n+1))`
-/

namespace A078581.P8302280069672964555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351571 (A001359 (n + 1)).toNat

end

end A078581.P8302280069672964555

namespace A078581

/-- `A351571(A001359(n+1))` -/
def P8302280069672964555.Spec : Prop :=
  ∀ n, P8302280069672964555.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P7415962178200727288

`A328237(A124588(n+2))`
-/

namespace A078581.P7415962178200727288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328237 (A124588 (n + 2)).toNat

end

end A078581.P7415962178200727288

namespace A078581

/-- `A328237(A124588(n+2))` -/
def P7415962178200727288.Spec : Prop :=
  ∀ n, P7415962178200727288.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P16550328280491456842

`A328237(A181747(n+2))`
-/

namespace A078581.P16550328280491456842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328237 (A181747 (n + 2)).toNat

end

end A078581.P16550328280491456842

namespace A078581

/-- `A328237(A181747(n+2))` -/
def P16550328280491456842.Spec : Prop :=
  ∀ n, P16550328280491456842.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P4621954044169600261

`A342925(A144834(n+1)+1)`
-/

namespace A078581.P4621954044169600261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (A144834 (n + 1) + 1).toNat

end

end A078581.P4621954044169600261

namespace A078581

/-- `A342925(A144834(n+1)+1)` -/
def P4621954044169600261.Spec : Prop :=
  ∀ n, P4621954044169600261.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P5196270475263456809

`A342925(A014574(n+1)-1)`
-/

namespace A078581.P5196270475263456809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (A014574 (n + 1) - 1).toNat

end

end A078581.P5196270475263456809

namespace A078581

/-- `A342925(A014574(n+1)-1)` -/
def P5196270475263456809.Spec : Prop :=
  ∀ n, P5196270475263456809.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P16485120237175851360

`A342925(A006512(n+1)-2)`
-/

namespace A078581.P16485120237175851360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (A006512 (n + 1) - 2).toNat

end

end A078581.P16485120237175851360

namespace A078581

/-- `A342925(A006512(n+1)-2)` -/
def P16485120237175851360.Spec : Prop :=
  ∀ n, P16485120237175851360.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P16684429137204004192

`A328237(p?[A000040(n+1)-2])`
-/

namespace A078581.P16684429137204004192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328237 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078581.P16684429137204004192

namespace A078581

/-- `A328237(p?[A000040(n+1)-2])` -/
def P16684429137204004192.Spec : Prop :=
  ∀ n, P16684429137204004192.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P5273232874164345709

`A342925(p?[A000040(n+1)-2])`
-/

namespace A078581.P5273232874164345709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078581.P5273232874164345709

namespace A078581

/-- `A342925(p?[A000040(n+1)-2])` -/
def P5273232874164345709.Spec : Prop :=
  ∀ n, P5273232874164345709.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P6139409554483324763

`A260624(A169643(n+1))`
-/

namespace A078581.P6139409554483324763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260624 (A169643 (n + 1)).toNat

end

end A078581.P6139409554483324763

namespace A078581

/-- `A260624(A169643(n+1))` -/
def P6139409554483324763.Spec : Prop :=
  ∀ n, P6139409554483324763.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P865404187598518963

`A099310(A006512(n+1))`
-/

namespace A078581.P865404187598518963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099310 (A006512 (n + 1)).toNat

end

end A078581.P865404187598518963

namespace A078581

/-- `A099310(A006512(n+1))` -/
def P865404187598518963.Spec : Prop :=
  ∀ n, P865404187598518963.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P5568926026418724910

`A099310(A067829(n+2))`
-/

namespace A078581.P5568926026418724910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099310 (A067829 (n + 2)).toNat

end

end A078581.P5568926026418724910

namespace A078581

/-- `A099310(A067829(n+2))` -/
def P5568926026418724910.Spec : Prop :=
  ∀ n, P5568926026418724910.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P12976693820568459152

`A099310(A094743(n+2))`
-/

namespace A078581.P12976693820568459152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099310 (A094743 (n + 2)).toNat

end

end A078581.P12976693820568459152

namespace A078581

/-- `A099310(A094743(n+2))` -/
def P12976693820568459152.Spec : Prop :=
  ∀ n, P12976693820568459152.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P16684549664439117988

`A003415(eq[1, A325142(n)])`
-/

namespace A078581.P16684549664439117988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078581.P16684549664439117988

namespace A078581

/-- `A003415(eq[1, A325142(n)])` -/
def P16684549664439117988.Spec : Prop :=
  ∀ n, P16684549664439117988.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P7104713841578902224

`A003415(A001359(n+1)+1)`
-/

namespace A078581.P7104713841578902224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001359 (n + 1) + 1).toNat

end

end A078581.P7104713841578902224

namespace A078581

/-- `A003415(A001359(n+1)+1)` -/
def P7104713841578902224.Spec : Prop :=
  ∀ n, P7104713841578902224.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P10736467350632688246

`A003415(A006512(n+1)-1)`
-/

namespace A078581.P10736467350632688246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006512 (n + 1) - 1).toNat

end

end A078581.P10736467350632688246

namespace A078581

/-- `A003415(A006512(n+1)-1)` -/
def P10736467350632688246.Spec : Prop :=
  ∀ n, P10736467350632688246.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P2436703869365766263

`A003415(A144834(n+1)+2)`
-/

namespace A078581.P2436703869365766263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A144834 (n + 1) + 2).toNat

end

end A078581.P2436703869365766263

namespace A078581

/-- `A003415(A144834(n+1)+2)` -/
def P2436703869365766263.Spec : Prop :=
  ∀ n, P2436703869365766263.a n = A078581 (n + 1)

end A078581

/-! ## A078581.P11587681283821032589

`A003415(2*A040040(n+1))`
-/

namespace A078581.P11587681283821032589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (2 * A040040 (n + 1)).toNat

end

end A078581.P11587681283821032589

namespace A078581

/-- `A003415(2*A040040(n+1))` -/
def P11587681283821032589.Spec : Prop :=
  ∀ n, P11587681283821032589.a n = A078581 (n + 1)

end A078581

/-!
# A078583: Numbers k such that 2^k - prime(k) is prime.

The programs for A078583, there is no canonical definition to state claims against.
-/

/-! ## A078583.P6161493220479548463

`A000720(A078686(n+1))`
-/

namespace A078583.P6161493220479548463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A078686 (n + 1)).toNat

end

end A078583.P6161493220479548463

/-! ## A078583.P12190644578120666450

`A061395(p?[A078686(n+1)])`
-/

namespace A078583.P12190644578120666450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078583.P12190644578120666450

/-! ## A078583.P13542724908761413423

`A061395(or(1, A078686(n+1)))`
-/

namespace A078583.P13542724908761413423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A078686 (n + 1))).toNat

end

end A078583.P13542724908761413423

/-! ## A078583.P8808560105522639149

`∑{d}[A078686(n+1), A061395(#)]`
-/

namespace A078583.P8808560105522639149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A078583.P8808560105522639149

/-! ## A078583.P5713004098622340979

`A061395(∏{d}[A078686(n+1), #])`
-/

namespace A078583.P5713004098622340979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A078583.P5713004098622340979

/-!
# A078584: a(n) = prime(2n) - prime(2n-1).

The programs for A078584, the canonical program `A078584.P18414486940805299967` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078584 has offset 1).

The definition of A078584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078584.P12945203673308507248

`A001223(Δ[n²])`
-/

namespace A078584.P12945203673308507248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078584.P12945203673308507248

namespace A078584

/-- `A001223(Δ[n²])` -/
def P12945203673308507248.Spec : Prop :=
  ∀ n, P12945203673308507248.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P18414486940805299967

`Δ[A008347(2*n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078584

/-- `Δ[A008347(2*n)]` -/
def P18414486940805299967.Spec : Prop :=
  ∀ n, P18414486940805299967.a n = A078584 (n + 1)

theorem P18414486940805299967.correct : P18414486940805299967.Spec := by
  intro n
  simp only [A078584, Nat.add_sub_cancel]

end A078584

/-! ## A078584.P12756842409921333455

`A256737(n+1)+1`
-/

namespace A078584.P12756842409921333455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256737 (n + 1) + 1

end

end A078584.P12756842409921333455

namespace A078584

/-- `A256737(n+1)+1` -/
def P12756842409921333455.Spec : Prop :=
  ∀ n, P12756842409921333455.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P11581156085993235477

`A110854(n)+a(n-1)` with `a(0)=1`
-/

namespace A078584.P11581156085993235477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110854 n + a (n - 1)

end

end A078584.P11581156085993235477

namespace A078584

/-- `A110854(n)+a(n-1)` -/
def P11581156085993235477.Spec : Prop :=
  ∀ n, P11581156085993235477.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P2499354137672488806

`and(-1, A001223(2*n+1))`
-/

namespace A078584.P2499354137672488806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001223 (2 * n + 1))

end

end A078584.P2499354137672488806

namespace A078584

/-- `and(-1, A001223(2*n+1))` -/
def P2499354137672488806.Spec : Prop :=
  ∀ n, P2499354137672488806.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P11186289337211263207

`A015906(A256737(n+1))`
-/

namespace A078584.P11186289337211263207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A256737 (n + 1)).toNat

end

end A078584.P11186289337211263207

namespace A078584

/-- `A015906(A256737(n+1))` -/
def P11186289337211263207.Spec : Prop :=
  ∀ n, P11186289337211263207.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P3218167199919432304

`A000027(A001223(2*n+1))`
-/

namespace A078584.P3218167199919432304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001223 (2 * n + 1)).toNat

end

end A078584.P3218167199919432304

namespace A078584

/-- `A000027(A001223(2*n+1))` -/
def P3218167199919432304.Spec : Prop :=
  ∀ n, P3218167199919432304.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P7530804761030112779

`A031215(n+1)-A031368(n+1)`
-/

namespace A078584.P7530804761030112779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A031368 (n + 1)

end

end A078584.P7530804761030112779

namespace A078584

/-- `A031215(n+1)-A031368(n+1)` -/
def P7530804761030112779.Spec : Prop :=
  ∀ n, P7530804761030112779.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P2383194618576056144

`A155067(n+1)-A088680(n+1)`
-/

namespace A078584.P2383194618576056144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (n + 1) - A088680 (n + 1)

end

end A078584.P2383194618576056144

namespace A078584

/-- `A155067(n+1)-A088680(n+1)` -/
def P2383194618576056144.Spec : Prop :=
  ∀ n, P2383194618576056144.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P16642102582761234788

`A092163(n+1)-A345071(n+1)`
-/

namespace A078584.P16642102582761234788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) - A345071 (n + 1)

end

end A078584.P16642102582761234788

namespace A078584

/-- `A092163(n+1)-A345071(n+1)` -/
def P16642102582761234788.Spec : Prop :=
  ∀ n, P16642102582761234788.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P16947746663400964062

`A077133(n+1)-A008347(2*n)`
-/

namespace A078584.P16947746663400964062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077133 (n + 1) - A008347 (2 * n)

end

end A078584.P16947746663400964062

namespace A078584

/-- `A077133(n+1)-A008347(2*n)` -/
def P16947746663400964062.Spec : Prop :=
  ∀ n, P16947746663400964062.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P9789158427970461576

`A007795(n+1)%A031368(n+1)`
-/

namespace A078584.P9789158427970461576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007795 (n + 1)) (A031368 (n + 1))

end

end A078584.P9789158427970461576

namespace A078584

/-- `A007795(n+1)%A031368(n+1)` -/
def P9789158427970461576.Spec : Prop :=
  ∀ n, P9789158427970461576.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P13836254030914177363

`A100479(n+1)%A031368(n+1)`
-/

namespace A078584.P13836254030914177363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100479 (n + 1)) (A031368 (n + 1))

end

end A078584.P13836254030914177363

namespace A078584

/-- `A100479(n+1)%A031368(n+1)` -/
def P13836254030914177363.Spec : Prop :=
  ∀ n, P13836254030914177363.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P12583740775012320727

`filter[A001223(2*n+1), A022932(#)]`
-/

namespace A078584.P12583740775012320727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A078584.P12583740775012320727

namespace A078584

/-- `filter[A001223(2*n+1), A022932(#)]` -/
def P12583740775012320727.Spec : Prop :=
  ∀ n, P12583740775012320727.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P16614484921270153513

`val(A024062(A001223(2*n+1)-1)+1, 2)+1`
-/

namespace A078584.P16614484921270153513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A024062 (A001223 (2 * n + 1) - 1).toNat + 1).toNat 2 + 1

end

end A078584.P16614484921270153513

namespace A078584

/-- `val(A024062(A001223(2*n+1)-1)+1, 2)+1` -/
def P16614484921270153513.Spec : Prop :=
  ∀ n, (P16614484921270153513.a n : ℤ) = A078584 (n + 1)

end A078584

/-! ## A078584.P7242601928508387199

`A008866(Δ[n²])`
-/

namespace A078584.P7242601928508387199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008866 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078584.P7242601928508387199

namespace A078584

/-- `A008866(Δ[n²])` -/
def P7242601928508387199.Spec : Prop :=
  ∀ n, P7242601928508387199.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P5341267292688195843

`A075526(Δ[n²])`
-/

namespace A078584.P5341267292688195843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078584.P5341267292688195843

namespace A078584

/-- `A075526(Δ[n²])` -/
def P5341267292688195843.Spec : Prop :=
  ∀ n, P5341267292688195843.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P4792143031147340925

`Δ[A083236(2*n)]`
-/

namespace A078584.P4792143031147340925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083236 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078584.P4792143031147340925

namespace A078584

/-- `Δ[A083236(2*n)]` -/
def P4792143031147340925.Spec : Prop :=
  ∀ n, P4792143031147340925.a n = A078584 (n + 1)

end A078584

/-! ## A078584.P13245233428960276291

`sqrt(A076821(Δ[n²]))`
-/

namespace A078584.P13245233428960276291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A078584.P13245233428960276291

namespace A078584

/-- `sqrt(A076821(Δ[n²]))` -/
def P13245233428960276291.Spec : Prop :=
  ∀ n, P13245233428960276291.a n = (A078584 (n + 1) : ℝ)

end A078584

/-! ## A078584.P18254155534974903103

`log2(A218075(Δ[n²]))`
-/

namespace A078584.P18254155534974903103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A078584.P18254155534974903103

namespace A078584

/-- `log2(A218075(Δ[n²]))` -/
def P18254155534974903103.Spec : Prop :=
  ∀ n, P18254155534974903103.a n = (A078584 (n + 1) : ℝ)

end A078584

/-!
# A078586: a(n) is the product of the first n primes of the form 4k+3.

The programs for A078586, there is no canonical definition to state claims against.
-/

/-! ## A078586.P4820036037453815859

`∏[p?[record[xor(3, n)]]]`
-/

namespace A078586.P4820036037453815859
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078586.P4820036037453815859

/-! ## A078586.P15612762787696930309

`∏[p?[4*n-1]]`
-/

namespace A078586.P15612762787696930309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078586.P15612762787696930309

/-! ## A078586.P9936796090638646697

`a(n-1)*p?[a(n-1)+4]` with `a(0)=3`
-/

namespace A078586.P9936796090638646697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078586.P9936796090638646697

/-! ## A078586.P4215295975298292765

`∏[A002145(n+1)]`
-/

namespace A078586.P4215295975298292765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078586.P4215295975298292765

/-!
# A078587: Largest prime p such that p

The programs for A078587, there is no canonical definition to state claims against.
-/

/-! ## A078587.P9679248608298160509

`2*(n+4)-A078496(n+4)`
-/

namespace A078587.P9679248608298160509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 4) : ℤ) - A078496 (n + 4)

end

end A078587.P9679248608298160509

/-! ## A078587.P10687758470109585539

`4-A082467(n+4)+n`
-/

namespace A078587.P10687758470109585539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A082467 (n + 4) + (n : ℤ)

end

end A078587.P10687758470109585539

/-! ## A078587.P1117454602028933983

`4-sqrt(A143697(n+4))+n`
-/

namespace A078587.P1117454602028933983
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 - Real.sqrt (A143697 (n + 4) : ℝ) + (n : ℝ)

end

end A078587.P1117454602028933983

/-! ## A078587.P9278887754928551403

`A020705(n)-A082467(n+4)`
-/

namespace A078587.P9278887754928551403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - A082467 (n + 4)

end

end A078587.P9278887754928551403

/-! ## A078587.P9543984022274629977

`A020744(n)%A078496(n+4)`
-/

namespace A078587.P9543984022274629977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020744 n) (A078496 (n + 4))

end

end A078587.P9543984022274629977

/-! ## A078587.P4574171073515982089

`A020705(n)-sqrt(A143697(n+4))`
-/

namespace A078587.P4574171073515982089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020705 n : ℝ) - Real.sqrt (A143697 (n + 4) : ℝ)

end

end A078587.P4574171073515982089

/-! ## A078587.P3882697514230334158

`A028310(A020744(n)-A078496(n+4))`
-/

namespace A078587.P3882697514230334158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020744 n - A078496 (n + 4)).toNat

end

end A078587.P3882697514230334158

/-! ## A078587.P11490446369187851047

`A020744(n+2)-A020705(A078496(n+4))`
-/

namespace A078587.P11490446369187851047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 (n + 2) - A020705 (A078496 (n + 4)).toNat

end

end A078587.P11490446369187851047

/-! ## A078587.P4544719012267356342

`A241686(n+4)`
-/

namespace A078587.P4544719012267356342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241686 (n + 4)

end

end A078587.P4544719012267356342

/-! ## A078587.P3818561697452451467

`4-A138567(n+4)+n`
-/

namespace A078587.P3818561697452451467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A138567 (n + 4) + (n : ℤ)

end

end A078587.P3818561697452451467

/-!
# A078588: a(n) = 1 if the integer multiple of phi nearest n is greater than n, otherwise 0, where phi = (1+sqrt(5))/2.

The programs for A078588, the canonical program `A078588.P12729353000492278480` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078588 has offset 0).

The definition of A078588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078588.P12729353000492278480

`round(ϕ*n)-floor(ϕ*n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078588

/-- `round(ϕ*n)-floor(ϕ*n)` -/
def P12729353000492278480.Spec : Prop :=
  ∀ n, P12729353000492278480.a n = A078588 n

theorem P12729353000492278480.correct : P12729353000492278480.Spec := by
  intro n
  simp only [A078588]

end A078588

/-! ## A078588.P1330483502451830700

`floor(2*ϕ*n)%2`
-/

namespace A078588.P1330483502451830700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ 2

end

end A078588.P1330483502451830700

namespace A078588

/-- `floor(2*ϕ*n)%2` -/
def P1330483502451830700.Spec : Prop :=
  ∀ n, P1330483502451830700.a n = A078588 n

end A078588

/-! ## A078588.P1163488987102394382

`and(1, floor(2*ϕ*n))`
-/

namespace A078588.P1163488987102394382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

end

end A078588.P1163488987102394382

namespace A078588

/-- `and(1, floor(2*ϕ*n))` -/
def P1163488987102394382.Spec : Prop :=
  ∀ n, P1163488987102394382.a n = A078588 n

end A078588

/-! ## A078588.P2161190317597216011

`(ceil(n*(3-sqrt(5)))%2)²`
-/

namespace A078588.P2161190317597216011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) * (3 - Real.sqrt (5 : ℝ))⌉ 2 ^ 2

end

end A078588.P2161190317597216011

namespace A078588

/-- `(ceil(n*(3-sqrt(5)))%2)²` -/
def P2161190317597216011.Spec : Prop :=
  ∀ n, P2161190317597216011.a n = A078588 n

end A078588

/-! ## A078588.P12277386370059149426

`and(1, ceil(n*(3-sqrt(5))))²`
-/

namespace A078588.P12277386370059149426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈(n : ℝ) * (3 - Real.sqrt (5 : ℝ))⌉ ^ 2

end

end A078588.P12277386370059149426

namespace A078588

/-- `and(1, ceil(n*(3-sqrt(5))))²` -/
def P12277386370059149426.Spec : Prop :=
  ∀ n, P12277386370059149426.a n = A078588 n

end A078588

/-! ## A078588.P4406402300490491278

`C(round(n*ϕ²), comp[ceil(ϕ*n)])`
-/

namespace A078588.P4406402300490491278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 2)).toNat (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A078588.P4406402300490491278

namespace A078588

/-- `C(round(n*ϕ²), comp[ceil(ϕ*n)])` -/
def P4406402300490491278.Spec : Prop :=
  ∀ n, (P4406402300490491278.a n : ℤ) = A078588 n

end A078588

/-! ## A078588.P10728224800885101664

`char[A005652(n+1)]`
-/

namespace A078588.P10728224800885101664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A078588.P10728224800885101664

namespace A078588

/-- `char[A005652(n+1)]` -/
def P10728224800885101664.Spec : Prop :=
  ∀ n, (P10728224800885101664.a n : ℤ) = A078588 n

end A078588

/-! ## A078588.P6674283029793176364

`a(1-A089809(n))` with `a(0)=0, a(1)=1`
-/

namespace A078588.P6674283029793176364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (1 - A089809 n).toNat

end

end A078588.P6674283029793176364

namespace A078588

/-- `a(1-A089809(n))` -/
def P6674283029793176364.Spec : Prop :=
  ∀ n, (P6674283029793176364.a n : ℤ) = A078588 n

end A078588

/-! ## A078588.P118828882961947153

`a(A188189(n)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A078588.P118828882961947153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A188189 n + (a (n - 2) : ℤ)).toNat

end

end A078588.P118828882961947153

namespace A078588

/-- `a(A188189(n)+a(n-2))` -/
def P118828882961947153.Spec : Prop :=
  ∀ n, (P118828882961947153.a n : ℤ) = A078588 n

end A078588

/-! ## A078588.P15459350570849567127

`A000035(A195172(n))`
-/

namespace A078588.P15459350570849567127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195172 n).toNat

end

end A078588.P15459350570849567127

namespace A078588

/-- `A000035(A195172(n))` -/
def P15459350570849567127.Spec : Prop :=
  ∀ n, P15459350570849567127.a n = A078588 n

end A078588

/-! ## A078588.P9264887330165733869

`A096270(A004937(n))`
-/

namespace A078588.P9264887330165733869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A004937 n).toNat

end

end A078588.P9264887330165733869

namespace A078588

/-- `A096270(A004937(n))` -/
def P9264887330165733869.Spec : Prop :=
  ∀ n, P9264887330165733869.a n = A078588 n

end A078588

/-! ## A078588.P7163880136264785872

`A166946(A026351(n))`
-/

namespace A078588.P7163880136264785872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166946 (A026351 n).toNat

end

end A078588.P7163880136264785872

namespace A078588

/-- `A166946(A026351(n))` -/
def P7163880136264785872.Spec : Prop :=
  ∀ n, P7163880136264785872.a n = A078588 n

end A078588

/-! ## A078588.P15512102776563751443

`A166946(A026355(n+1)-1)`
-/

namespace A078588.P15512102776563751443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166946 (A026355 (n + 1) - 1).toNat

end

end A078588.P15512102776563751443

namespace A078588

/-- `A166946(A026355(n+1)-1)` -/
def P15512102776563751443.Spec : Prop :=
  ∀ n, P15512102776563751443.a n = A078588 n

end A078588

/-! ## A078588.P16513429560923995688

`A327174(A004919(n))`
-/

namespace A078588.P16513429560923995688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (A004919 n).toNat

end

end A078588.P16513429560923995688

namespace A078588

/-- `A327174(A004919(n))` -/
def P16513429560923995688.Spec : Prop :=
  ∀ n, P16513429560923995688.a n = A078588 n

end A078588

/-! ## A078588.P18428235456649602014

`A327174(A004939(n))`
-/

namespace A078588.P18428235456649602014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (A004939 n).toNat

end

end A078588.P18428235456649602014

namespace A078588

/-- `A327174(A004939(n))` -/
def P18428235456649602014.Spec : Prop :=
  ∀ n, P18428235456649602014.a n = A078588 n

end A078588

/-! ## A078588.P14084879572599048220

`A171587(A004273(n))`
-/

namespace A078588.P14084879572599048220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A004273 n).toNat

end

end A078588.P14084879572599048220

namespace A078588

/-- `A171587(A004273(n))` -/
def P14084879572599048220.Spec : Prop :=
  ∀ n, P14084879572599048220.a n = A078588 n

end A078588

/-! ## A078588.P12461761083226506385

`A171587(2*n-A096270(2*n))`
-/

namespace A078588.P12461761083226506385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 ((2 * n : ℤ) - A096270 (2 * n)).toNat

end

end A078588.P12461761083226506385

namespace A078588

/-- `A171587(2*n-A096270(2*n))` -/
def P12461761083226506385.Spec : Prop :=
  ∀ n, P12461761083226506385.a n = A078588 n

end A078588

/-! ## A078588.P11144057076601953393

`A000035(A276854(n))`
-/

namespace A078588.P11144057076601953393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A276854 n).toNat

end

end A078588.P11144057076601953393

namespace A078588

/-- `A000035(A276854(n))` -/
def P11144057076601953393.Spec : Prop :=
  ∀ n, P11144057076601953393.a n = A078588 n

end A078588

/-! ## A078588.P13966022514513693079

`A003849(A004976(n))`
-/

namespace A078588.P13966022514513693079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A004976 n).toNat

end

end A078588.P13966022514513693079

namespace A078588

/-- `A003849(A004976(n))` -/
def P13966022514513693079.Spec : Prop :=
  ∀ n, P13966022514513693079.a n = A078588 n

end A078588

/-! ## A078588.P6255135085305831072

`A003849(A276854(n)+n)`
-/

namespace A078588.P6255135085305831072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A276854 n + (n : ℤ)).toNat

end

end A078588.P6255135085305831072

namespace A078588

/-- `A003849(A276854(n)+n)` -/
def P6255135085305831072.Spec : Prop :=
  ∀ n, P6255135085305831072.a n = A078588 n

end A078588

/-!
# A078589: a(1)=0, a(2)=1, a(n) = abs(abs(a(n-1)) - a(n-2) - n + 1).

The programs for A078589, the canonical program `A078589.P8228596327923209022` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078589 has offset 1).

The definition of A078589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(abs(a(n-1))-a(n-2)-n)` (program `A078589.P8228596327923209022`, by `A078589.P8228596327923209022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078589.P8228596327923209022

`abs(abs(a(n-1))-a(n-2)-n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078589

/-- `abs(abs(a(n-1))-a(n-2)-n)` -/
def P8228596327923209022.Spec : Prop :=
  ∀ n, P8228596327923209022.a n = A078589 (n + 1)

theorem P8228596327923209022.correct : P8228596327923209022.Spec := by
  intro n
  simp only [A078589, Nat.add_sub_cancel]

end A078589

/-! ## A078589.P11558708899264370084

`abs(a(n-1)-(a(n-2)+n))` with `a(0)=0, a(1)=1`
-/

namespace A078589.P11558708899264370084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |a (n - 1) - (a (n - 2) + (n : ℤ))|

end

end A078589.P11558708899264370084

namespace A078589

/-- `abs(a(n-1)-(a(n-2)+n))` -/
def P11558708899264370084.Spec : Prop :=
  ∀ n, P11558708899264370084.a n = A078589 (n + 1)

end A078589

/-! ## A078589.P14738070287699315590

`abs(a(n-1)-a(n-2)-n)` with `a(0)=0, a(1)=1`
-/

namespace A078589.P14738070287699315590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |a (n - 1) - a (n - 2) - (n : ℤ)|

end

end A078589.P14738070287699315590

namespace A078589

/-- `abs(a(n-1)-a(n-2)-n)` -/
def P14738070287699315590.Spec : Prop :=
  ∀ n, P14738070287699315590.a n = A078589 (n + 1)

end A078589

/-! ## A078589.P15631652290569916643

`(a(n-1)-(a(n-2)+n))²^(1/2)` with `a(0)=0, a(1)=1`
-/

namespace A078589.P15631652290569916643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((a (n - 1) - (a (n - 2) + (n : ℝ))) ^ 2) ^ ((1 : ℚ) / 2 : ℝ)

end

end A078589.P15631652290569916643

namespace A078589

/-- `(a(n-1)-(a(n-2)+n))²^(1/2)` -/
def P15631652290569916643.Spec : Prop :=
  ∀ n, P15631652290569916643.a n = (A078589 (n + 1) : ℝ)

end A078589

/-! ## A078589.P7265793199813363844

`(a(n-1)-a(n-2)-n)²^(1/2)` with `a(0)=0, a(1)=1`
-/

namespace A078589.P7265793199813363844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((a (n - 1) - a (n - 2) - (n : ℝ)) ^ 2) ^ ((1 : ℚ) / 2 : ℝ)

end

end A078589.P7265793199813363844

namespace A078589

/-- `(a(n-1)-a(n-2)-n)²^(1/2)` -/
def P7265793199813363844.Spec : Prop :=
  ∀ n, P7265793199813363844.a n = (A078589 (n + 1) : ℝ)

end A078589

/-! ## A078589.P8415485197805998426

`gcd(a(n-1)-(a(n-2)+n), n%-1)` with `a(0)=0, a(1)=1`
-/

namespace A078589.P8415485197805998426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) - (a (n - 2) + n : ℤ)) (Int.tmod (n : ℤ) (-1))

end

end A078589.P8415485197805998426

namespace A078589

/-- `gcd(a(n-1)-(a(n-2)+n), n%-1)` -/
def P8415485197805998426.Spec : Prop :=
  ∀ n, (P8415485197805998426.a n : ℤ) = A078589 (n + 1)

end A078589

/-! ## A078589.P14896338162687252277

`gcd(a(n-1)-a(n-2)-n, -n%n)` with `a(0)=0, a(1)=1`
-/

namespace A078589.P14896338162687252277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) - (a (n - 2) : ℤ) - (n : ℤ)) (Int.tmod (-(n : ℤ)) (n : ℤ))

end

end A078589.P14896338162687252277

namespace A078589

/-- `gcd(a(n-1)-a(n-2)-n, -n%n)` -/
def P14896338162687252277.Spec : Prop :=
  ∀ n, (P14896338162687252277.a n : ℤ) = A078589 (n + 1)

end A078589

/-! ## A078589.P17170064434987808301

`lcm(2, 2*(a(n-1)-(a(n-2)+n)))/2` with `a(0)=0, a(1)=1`
-/

namespace A078589.P17170064434987808301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.lcm 2 (SequenceMachineLib.roundAway (2 * (a (n - 1) - (a (n - 2) + (n : ℚ))))) : ℚ) / 2

end

end A078589.P17170064434987808301

namespace A078589

/-- `lcm(2, 2*(a(n-1)-(a(n-2)+n)))/2` -/
def P17170064434987808301.Spec : Prop :=
  ∀ n, P17170064434987808301.a n = (A078589 (n + 1) : ℚ)

end A078589

/-! ## A078589.P2780782320751255020

`lcm(a(n-1)-(a(n-2)+n), a(n-2)+n-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A078589.P2780782320751255020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm ((a (n - 1) : ℤ) - (a (n - 2) + n : ℤ)) ((a (n - 2) + n : ℤ) - (a (n - 1) : ℤ))

end

end A078589.P2780782320751255020

namespace A078589

/-- `lcm(a(n-1)-(a(n-2)+n), a(n-2)+n-a(n-1))` -/
def P2780782320751255020.Spec : Prop :=
  ∀ n, (P2780782320751255020.a n : ℤ) = A078589 (n + 1)

end A078589

/-!
# A078590: a(1)=1, a(2)=1, a(n)=(2^a(n-1) + 1)/a(n-2).

The programs for A078590, the canonical program `A078590.P2551638786350929686` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078590 has offset 1).

The definition of A078590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078590.P2551638786350929686

`(2^a(n-1)+1)/a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078590

/-- `(2^a(n-1)+1)/a(n-2)` -/
def P2551638786350929686.Spec : Prop :=
  ∀ n, P2551638786350929686.a n = (A078590 (n + 1) : ℝ)

end A078590

/-!
# A078591: Number of nonisomorphic ways a loop can cross a road (running East-West) 2n times.

The programs for A078591, there is no canonical definition to state claims against.
-/

/-! ## A078591.P8542183597442949596

`ceil(A005315(n)/2)`
-/

namespace A078591.P8542183597442949596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005315 n : ℚ) / 2⌉

end

end A078591.P8542183597442949596

/-! ## A078591.P5571662619501453064

`ceil(A005316(A004273(n))/2)`
-/

namespace A078591.P5571662619501453064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005316 (A004273 n).toNat : ℚ) / 2⌉

end

end A078591.P5571662619501453064

/-! ## A078591.P13406367848412795537

`A005315(n)/A292563(A029923(n))`
-/

namespace A078591.P13406367848412795537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005315 n : ℚ) / (A292563 (A029923 n).toNat : ℚ)

end

end A078591.P13406367848412795537

/-! ## A078591.P6965310917701957494

`ceil(A259974(A002522(n))/2)`
-/

namespace A078591.P6965310917701957494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A259974 (A002522 n).toNat : ℚ) / 2⌉

end

end A078591.P6965310917701957494

/-!
# A078592: Call two meanders from A005316 with 2n crossings equivalent if they differ by reflections in the X or Y axes. Sequence gives number of inequivalent meanders.

The programs for A078592, there is no canonical definition to state claims against.
-/

/-! ## A078592.P8626608194855517175

`(A005316(2*n)+A005316(n))/2`
-/

namespace A078592.P8626608194855517175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005316 (2 * n) + A005316 n : ℚ) / 2

end

end A078592.P8626608194855517175

/-! ## A078592.P9231612294553727231

`(A077054(n)+A005316(n))/2`
-/

namespace A078592.P9231612294553727231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077054 n + A005316 n : ℚ) / 2

end

end A078592.P9231612294553727231

/-! ## A078592.P18378134389592819635

`A077055(A004273(n))`
-/

namespace A078592.P18378134389592819635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077055 (A004273 n).toNat

end

end A078592.P18378134389592819635

/-! ## A078592.P13237204691964251305

`A077055(A004274(n+1))`
-/

namespace A078592.P13237204691964251305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077055 (A004274 (n + 1)).toNat

end

end A078592.P13237204691964251305

/-! ## A078592.P12790830800837057265

`A077055(A004280(n+1))`
-/

namespace A078592.P12790830800837057265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077055 (A004280 (n + 1)).toNat

end

end A078592.P12790830800837057265

/-!
# A078593: Number of pairs (x,y) 1<=x<=y<=n such that 1/x+1/y+1/n < 1/2.

The programs for A078593, there is no canonical definition to state claims against.
-/

/-! ## A078593.P1298570096403995014

`∑[∑{e}[A051695(A233583(n+1)), #]]`
-/

namespace A078593.P1298570096403995014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051695 (A233583 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078593.P1298570096403995014

/-! ## A078593.P3133879250493235536

`A274947(∑[∑[floor((n²-n)/11)]])`
-/

namespace A078593.P3133879250493235536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 11⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274947 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078593.P3133879250493235536

/-! ## A078593.P6183649592316726005

`∑[A004233(A000383(n)²)]`
-/

namespace A078593.P6183649592316726005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (A000383 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078593.P6183649592316726005

/-! ## A078593.P3495387097228289771

`∑[∑[A262695(A002529(n))]]`
-/

namespace A078593.P3495387097228289771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262695 (A002529 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078593.P3495387097228289771

/-!
# A078594: Number of pairs (x,y) 1<=x<=y<=n such that 1/x+1/y+1/n > 1/2.

The programs for A078594, there is no canonical definition to state claims against.
-/

/-! ## A078594.P16896507792777147936

`A303431(lt[A202006(n+1), A178878(2*n+1)])`
-/

namespace A078594.P16896507792777147936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178878 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A078594.P16896507792777147936

/-!
# A078595: Number of pairs (x,y) 1<=x<=y<=n such that 1/x+1/y+1/n = 1/2.

The programs for A078595, there is no canonical definition to state claims against.
-/

/-! ## A078595.P3730530228691221934

`∑[n+1]-(A078594(n+1)+A078593(n+1))`
-/

namespace A078595.P3730530228691221934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A078594 (n + 1) + A078593 (n + 1))

end

end A078595.P3730530228691221934

/-!
# A078596: Numbers m such that there is at least one pair (x,y) 1 <= x <= y <= m such that 1/x + 1/y + 1/m = 1/phi(m).

The programs for A078596, there is no canonical definition to state claims against.
-/

/-! ## A078596.P10370623490401949813

`∩[A141698(n+1), A279029(n+1)]`
-/

namespace A078596.P10370623490401949813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078596.P10370623490401949813

/-! ## A078596.P18144531997986270969

`∩[A141698(n+1), A280270(n+1)]`
-/

namespace A078596.P18144531997986270969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078596.P18144531997986270969

/-! ## A078596.P12357159578648153285

`A040006(A324695(2*(n+2)))*A155182(n+1)`
-/

namespace A078596.P12357159578648153285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A324695 (2 * (n + 2))).toNat * A155182 (n + 1)

end

end A078596.P12357159578648153285

/-! ## A078596.P4740768965767244370

`∩[A141698(n+1), A319796(n+2)]`
-/

namespace A078596.P4740768965767244370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319796 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078596.P4740768965767244370

/-! ## A078596.P6280444951250240849

`A033620(n+1)*A220468(A254754(n+1))`
-/

namespace A078596.P6280444951250240849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1) * A220468 (A254754 (n + 1)).toNat

end

end A078596.P6280444951250240849

/-!
# A078597: Primes of the form p*(p+4)+2 where p and p+4 are primes.

The programs for A078597, there is no canonical definition to state claims against.
-/

/-! ## A078597.P16460614330130569598

`∩[A028870(n+1), A087679(n+1)]²-2`
-/

namespace A078597.P16460614330130569598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 : ℤ) - 2

end

end A078597.P16460614330130569598

/-! ## A078597.P1584710214900245492

`record[A059772(A087679(n+1))]`
-/

namespace A078597.P1584710214900245492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (A087679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078597.P1584710214900245492

/-! ## A078597.P5812314922989868174

`A008865(∩[A028870(n+1), A087679(n+1)])`
-/

namespace A078597.P5812314922989868174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A078597.P5812314922989868174

/-! ## A078597.P3346635200734590913

`A164314(∩[A028870(n+1), A087679(n+1)])`
-/

namespace A078597.P3346635200734590913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A078597.P3346635200734590913

/-! ## A078597.P144138893076118582

`∩[A028871(n+1), A073577(A088762(n+1))]`
-/

namespace A078597.P144138893076118582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (A088762 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078597.P144138893076118582

/-!
# A078598: Primes p for which one of the two factors in the factorization of the polynomial Sum_{i=0..p-1} p^i*x^(2i) has only positive coefficients.

The programs for A078598, there is no canonical definition to state claims against.
-/

/-! ## A078598.P10830669014617088044

`p?[A008574(n)-A337328(n+1)]`
-/

namespace A078598.P10830669014617088044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A337328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078598.P10830669014617088044

/-! ## A078598.P13794226000188020103

`p?[xor(A130824(n), A337328(n+1))]`
-/

namespace A078598.P13794226000188020103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130824 n) (A337328 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078598.P13794226000188020103

/-! ## A078598.P8475575487928280115

`p?[C(A019425(2*n+1), A001221(n+1))-3]`
-/

namespace A078598.P8475575487928280115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A019425 (2 * n + 1)).toNat (A001221 (n + 1)).toNat : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078598.P8475575487928280115

/-! ## A078598.P5824619782220795711

`A007521(lt[A045931(n), lcm(6, n+1)/6])`
-/

namespace A078598.P5824619782220795711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 (n + 1) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A078598.P5824619782220795711

/-! ## A078598.P5709020935784792216

`A007521(A328595(n+1)+A228912(n))`
-/

namespace A078598.P5709020935784792216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (A328595 (n + 1) + A228912 n).toNat

end

end A078598.P5709020935784792216

/-!
# A078599: Product of squarefree divisors of n.

The programs for A078599, the canonical program `A078599.P6674880348428160` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078599 has offset 1).

The definition of A078599 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078599.P6674880348428160

`A007947(n+1)^A007875(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078599

/-- `A007947(n+1)^A007875(n+1)` -/
def P6674880348428160.Spec : Prop :=
  ∀ n, P6674880348428160.a n = (A078599 (n + 1) : ℚ)

end A078599

/-! ## A078599.P9562332429127797584

`A007955(A007947(n+1))`
-/

namespace A078599.P9562332429127797584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A007947 (n + 1)).toNat

end

end A078599.P9562332429127797584

namespace A078599

/-- `A007955(A007947(n+1))` -/
def P9562332429127797584.Spec : Prop :=
  ∀ n, P9562332429127797584.a n = A078599 (n + 1)

end A078599

/-! ## A078599.P10405906903983712920

`∏{d}[∏{p}[n+1, #], #]`
-/

namespace A078599.P10405906903983712920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A078599.P10405906903983712920

namespace A078599

/-- `∏{d}[∏{p}[n+1, #], #]` -/
def P10405906903983712920.Spec : Prop :=
  ∀ n, (P10405906903983712920.a n : ℤ) = A078599 (n + 1)

end A078599

/-! ## A078599.P18397032811532848604

`∏{d}[A062953(n+1), #]`
-/

namespace A078599.P18397032811532848604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078599.P18397032811532848604

namespace A078599

/-- `∏{d}[A062953(n+1), #]` -/
def P18397032811532848604.Spec : Prop :=
  ∀ n, (P18397032811532848604.a n : ℤ) = A078599 (n + 1)

end A078599

/-! ## A078599.P13332464352668839735

`∏{d}[n+1, A385212(#)]`
-/

namespace A078599.P13332464352668839735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A385212 d

end

end A078599.P13332464352668839735

namespace A078599

/-- `∏{d}[n+1, A385212(#)]` -/
def P13332464352668839735.Spec : Prop :=
  ∀ n, P13332464352668839735.a n = A078599 (n + 1)

end A078599

/-! ## A078599.P7623078129767933227

`A061537(∏{p}[n+1, #])`
-/

namespace A078599.P7623078129767933227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078599.P7623078129767933227

namespace A078599

/-- `A061537(∏{p}[n+1, #])` -/
def P7623078129767933227.Spec : Prop :=
  ∀ n, P7623078129767933227.a n = A078599 (n + 1)

end A078599

/-! ## A078599.P9980270635847048198

`∏{d}[sqrt(A078615(n+1)), #]`
-/

namespace A078599.P9980270635847048198
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A078599.P9980270635847048198

namespace A078599

/-- `∏{d}[sqrt(A078615(n+1)), #]` -/
def P9980270635847048198.Spec : Prop :=
  ∀ n, (P9980270635847048198.a n : ℤ) = A078599 (n + 1)

end A078599

/-! ## A078599.P3994399467217572336

`∏{d}[n+1, #^A008683(#)²]`
-/

namespace A078599.P3994399467217572336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A008683 d ^ 2 : ℤ)

end

end A078599.P3994399467217572336

namespace A078599

/-- `∏{d}[n+1, #^A008683(#)²]` -/
def P3994399467217572336.Spec : Prop :=
  ∀ n, P3994399467217572336.a n = (A078599 (n + 1) : ℚ)

end A078599

/-! ## A078599.P6920334325173125547

`∏{d}[∑{d}[n+1, #]-A326142(n+1), #]`
-/

namespace A078599.P6920334325173125547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - A326142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078599.P6920334325173125547

namespace A078599

/-- `∏{d}[∑{d}[n+1, #]-A326142(n+1), #]` -/
def P6920334325173125547.Spec : Prop :=
  ∀ n, (P6920334325173125547.a n : ℤ) = A078599 (n + 1)

end A078599

/-! ## A078599.P1928340335654856427

`∏{p}[n+1, #]^A038548(∏{p}[n+1, #])`
-/

namespace A078599.P1928340335654856427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A038548 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℤ)

end

end A078599.P1928340335654856427

namespace A078599

/-- `∏{p}[n+1, #]^A038548(∏{p}[n+1, #])` -/
def P1928340335654856427.Spec : Prop :=
  ∀ n, P1928340335654856427.a n = (A078599 (n + 1) : ℚ)

end A078599

/-! ## A078599.P5681551377033515022

`∏{d}[A053166(A053166(n+1)), #]`
-/

namespace A078599.P5681551377033515022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078599.P5681551377033515022

namespace A078599

/-- `∏{d}[A053166(A053166(n+1)), #]` -/
def P5681551377033515022.Spec : Prop :=
  ∀ n, (P5681551377033515022.a n : ℤ) = A078599 (n + 1)

end A078599

/-! ## A078599.P1724138448546656460

`A007947(n+1)*A290479(n+1)`
-/

namespace A078599.P1724138448546656460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A290479 (n + 1)

end

end A078599.P1724138448546656460

namespace A078599

/-- `A007947(n+1)*A290479(n+1)` -/
def P1724138448546656460.Spec : Prop :=
  ∀ n, P1724138448546656460.a n = A078599 (n + 1)

end A078599

/-! ## A078599.P17335415564446626938

`A166140(n+1)*A166142(n+1)`
-/

namespace A078599.P17335415564446626938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166140 (n + 1) * A166142 (n + 1)

end

end A078599.P17335415564446626938

namespace A078599

/-- `A166140(n+1)*A166142(n+1)` -/
def P17335415564446626938.Spec : Prop :=
  ∀ n, P17335415564446626938.a n = A078599 (n + 1)

end A078599

/-! ## A078599.P12601760336817426157

`A061537((n+1)/A003557(n+1))`
-/

namespace A078599.P12601760336817426157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A078599.P12601760336817426157

namespace A078599

/-- `A061537((n+1)/A003557(n+1))` -/
def P12601760336817426157.Spec : Prop :=
  ∀ n, P12601760336817426157.a n = A078599 (n + 1)

end A078599

/-! ## A078599.P18178688986125707381

`A166142(n+1)²*A014963(n+1)`
-/

namespace A078599.P18178688986125707381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166142 (n + 1) ^ 2 * A014963 (n + 1)

end

end A078599.P18178688986125707381

namespace A078599

/-- `A166142(n+1)²*A014963(n+1)` -/
def P18178688986125707381.Spec : Prop :=
  ∀ n, P18178688986125707381.a n = A078599 (n + 1)

end A078599

/-! ## A078599.P2719048041869136161

`lcm(A166142(n+1)², A006530(n+1))`
-/

namespace A078599.P2719048041869136161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166142 (n + 1) ^ 2) (A006530 (n + 1))

end

end A078599.P2719048041869136161

namespace A078599

/-- `lcm(A166142(n+1)², A006530(n+1))` -/
def P2719048041869136161.Spec : Prop :=
  ∀ n, (P2719048041869136161.a n : ℤ) = A078599 (n + 1)

end A078599

/-! ## A078599.P17823268730518441251

`A166140(n+1)/A014963(n+1)*A166140(n+1)`
-/

namespace A078599.P17823268730518441251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166140 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ) * (A166140 (n + 1) : ℚ)

end

end A078599.P17823268730518441251

namespace A078599

/-- `A166140(n+1)/A014963(n+1)*A166140(n+1)` -/
def P17823268730518441251.Spec : Prop :=
  ∀ n, P17823268730518441251.a n = (A078599 (n + 1) : ℚ)

end A078599

/-! ## A078599.P14551363453427721257

`A274029(∏{p}[n+1, #])`
-/

namespace A078599.P14551363453427721257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274029 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078599.P14551363453427721257

namespace A078599

/-- `A274029(∏{p}[n+1, #])` -/
def P14551363453427721257.Spec : Prop :=
  ∀ n, P14551363453427721257.a n = A078599 (n + 1)

end A078599

/-! ## A078599.P12307196862391140701

`A007955(∏{p}[n+1, #])`
-/

namespace A078599.P12307196862391140701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078599.P12307196862391140701

namespace A078599

/-- `A007955(∏{p}[n+1, #])` -/
def P12307196862391140701.Spec : Prop :=
  ∀ n, P12307196862391140701.a n = A078599 (n + 1)

end A078599

