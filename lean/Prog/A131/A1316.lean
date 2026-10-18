import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A131602: Hexadecimal expansion of golden ratio phi = (1 + sqrt 5) / 2.

The programs for A131602, there is no canonical definition to state claims against.
-/

/-! ## A131602.P4794668975707353866

`A293322(A008574(n))%16`
-/

namespace A131602.P4794668975707353866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293322 (A008574 n).toNat) 16

end

end A131602.P4794668975707353866

/-! ## A131602.P12770937205899991858

`and(15, A293322(A004277(2*n)))`
-/

namespace A131602.P12770937205899991858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A293322 (A004277 (2 * n)).toNat)

end

end A131602.P12770937205899991858

/-! ## A131602.P17548304453830467434

`A293313(4*n)%16`
-/

namespace A131602.P17548304453830467434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293313 (4 * n)) 16

end

end A131602.P17548304453830467434

/-! ## A131602.P13854324736253792313

`and(15, A293313(A008586(n)))`
-/

namespace A131602.P13854324736253792313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A293313 (A008586 n).toNat)

end

end A131602.P13854324736253792313

/-!
# A131604: Primes of the form r(r(r(r(r(r(r(k)+1)+1)+1)+1)+1)+1)+1, where r(k) = A141468(k) = k-th nonprime.

The programs for A131604, there is no canonical definition to state claims against.
-/

/-! ## A131604.P11484551616730128358

`A058501(A109839(n+1))`
-/

namespace A131604.P11484551616730128358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (A109839 (n + 1)).toNat

end

end A131604.P11484551616730128358

/-!
# A131605: Perfect powers of nonprimes (m^k where m is a nonprime positive integer and k >= 2).

The programs for A131605, there is no canonical definition to state claims against.
-/

/-! ## A131605.P2694260885308485618

`record[A052410(A001597(n+1))^A157986(n+1)]`
-/

namespace A131605.P2694260885308485618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052410 (A001597 (n + 1)).toNat : ℚ) ^ (A157986 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131605.P2694260885308485618

/-! ## A131605.P3672370132492789409

`record[A157985(A304088(n))]`
-/

namespace A131605.P3672370132492789409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (A304088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131605.P3672370132492789409

/-! ## A131605.P5716631797591889014

`record[A157985(A056926(n)+1)]`
-/

namespace A131605.P5716631797591889014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (A056926 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131605.P5716631797591889014

/-! ## A131605.P11345884117100730867

`∩[A001597(n+1), A158871(n+1)]`
-/

namespace A131605.P11345884117100730867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131605.P11345884117100730867

/-! ## A131605.P2343703140112709150

`∩[A001597(n+1), A361102(n+1)]`
-/

namespace A131605.P2343703140112709150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131605.P2343703140112709150

/-! ## A131605.P3460553478241268812

`∩[A158871(n+1), A396856(n+1)]`
-/

namespace A131605.P3460553478241268812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131605.P3460553478241268812

/-! ## A131605.P3519134847252687634

`∩[A361102(n+1), A396856(n+1)]`
-/

namespace A131605.P3519134847252687634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131605.P3519134847252687634

/-! ## A131605.P15999977890468585910

`eq[A014963(n+1)², A274459(n+1)]+1`
-/

namespace A131605.P15999977890468585910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A131605.P15999977890468585910

/-! ## A131605.P16424770446387874174

`eq[n, A157985(A069623(n+1))]`
-/

namespace A131605.P16424770446387874174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (A069623 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131605.P16424770446387874174

/-!
# A131606: Triangle read by rows: row n gives coefficients of the polynomial p(x, n) = Sum[Fibonacci[n]^i*x^(n - i), {i, 0, n}].

The programs for A131606, there is no canonical definition to state claims against.
-/

/-! ## A131606.P5869673998615760864

`A131609(∑[2*n]%comp[∑[n]])`
-/

namespace A131606.P5869673998615760864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131609 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A131606.P5869673998615760864

/-! ## A131606.P4385400022211460393

`A131609(∑[char[∑[n]]]²-n-1)`
-/

namespace A131606.P4385400022211460393
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131609 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A131606.P4385400022211460393

/-! ## A131606.P2817266212055866623

`A108037(n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A131606.P2817266212055866623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108037 n : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A131606.P2817266212055866623

/-! ## A131606.P5007617865816651832

`A000045(∑[char[∑[n+1]]])^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A131606.P5007617865816651832
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A131606.P5007617865816651832

/-! ## A131606.P15199378044436466636

`A108037(n)^A025581(n)`
-/

namespace A131606.P15199378044436466636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108037 n : ℚ) ^ (A025581 n : ℤ)

end

end A131606.P15199378044436466636

/-!
# A131607: Pell companion numbers A001333 without last digit.

The programs for A131607, the canonical program `A131607.P9347802856886057719` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131607 has offset 4).

The definition of A131607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131607.P9347802856886057719

`floor(A001333(n+4)/10)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131607

/-- `floor(A001333(n+4)/10)` -/
def P9347802856886057719.Spec : Prop :=
  ∀ n, P9347802856886057719.a n = A131607 (n + 4)

theorem P9347802856886057719.correct : P9347802856886057719.Spec := by
  intro n
  simp only [A131607, Nat.add_sub_cancel]

end A131607

/-! ## A131607.P5698119597660354440

`floor(A048739(n+2)/5)`
-/

namespace A131607.P5698119597660354440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048739 (n + 2) : ℚ) / 5⌋

end

end A131607.P5698119597660354440

namespace A131607

/-- `floor(A048739(n+2)/5)` -/
def P5698119597660354440.Spec : Prop :=
  ∀ n, P5698119597660354440.a n = A131607 (n + 4)

end A131607

/-! ## A131607.P14910472822472994940

`floor(A078057(n+3)/10)`
-/

namespace A131607.P14910472822472994940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078057 (n + 3) : ℚ) / 10⌋

end

end A131607.P14910472822472994940

namespace A131607

/-- `floor(A078057(n+3)/10)` -/
def P14910472822472994940.Spec : Prop :=
  ∀ n, P14910472822472994940.a n = A131607 (n + 4)

end A131607

/-! ## A131607.P18227182372010478023

`floor(A002203(n+4)/20)`
-/

namespace A131607.P18227182372010478023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002203 (n + 4) : ℚ) / 20⌋

end

end A131607.P18227182372010478023

namespace A131607

/-- `floor(A002203(n+4)/20)` -/
def P18227182372010478023.Spec : Prop :=
  ∀ n, P18227182372010478023.a n = A131607 (n + 4)

end A131607

/-! ## A131607.P13728839297332223306

`floor(A100227(n+4)/20)`
-/

namespace A131607.P13728839297332223306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100227 (n + 4) : ℚ) / 20⌋

end

end A131607.P13728839297332223306

namespace A131607

/-- `floor(A100227(n+4)/20)` -/
def P13728839297332223306.Spec : Prop :=
  ∀ n, P13728839297332223306.a n = A131607 (n + 4)

end A131607

/-!
# A131609: Mirror image of triangle in A131606.

The programs for A131609, the canonical program `A131609.P5672711036197391040` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131609 has offset 0).

The definition of A131609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131609.P5672711036197391040

`A108037(n)^A002262(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131609

/-- `A108037(n)^A002262(n)` -/
def P5672711036197391040.Spec : Prop :=
  ∀ n, P5672711036197391040.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P6101948250866211163

`A108037(n)^(A002260(n+1)-1)`
-/

namespace A131609.P6101948250866211163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108037 n : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A131609.P6101948250866211163

namespace A131609

/-- `A108037(n)^(A002260(n+1)-1)` -/
def P6101948250866211163.Spec : Prop :=
  ∀ n, P6101948250866211163.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P12420099649574453568

`A000045(A003056(n))^A002262(n)`
-/

namespace A131609.P12420099649574453568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A003056 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A131609.P12420099649574453568

namespace A131609

/-- `A000045(A003056(n))^A002262(n)` -/
def P12420099649574453568.Spec : Prop :=
  ∀ n, P12420099649574453568.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P11185005675001609038

`A103609(A131507(n))^A002262(n)`
-/

namespace A131609.P11185005675001609038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103609 (A131507 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A131609.P11185005675001609038

namespace A131609

/-- `A103609(A131507(n))^A002262(n)` -/
def P11185005675001609038.Spec : Prop :=
  ∀ n, P11185005675001609038.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P17732138898203971724

`A212804(A123578(n))^A002262(n)`
-/

namespace A131609.P17732138898203971724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (A123578 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A131609.P17732138898203971724

namespace A131609

/-- `A212804(A123578(n))^A002262(n)` -/
def P17732138898203971724.Spec : Prop :=
  ∀ n, P17732138898203971724.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P13701776054324972192

`A212804(A002024(n+1))^A002262(n)`
-/

namespace A131609.P13701776054324972192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (A002024 (n + 1)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A131609.P13701776054324972192

namespace A131609

/-- `A212804(A002024(n+1))^A002262(n)` -/
def P13701776054324972192.Spec : Prop :=
  ∀ n, P13701776054324972192.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P46860167437753121

`A000045(A003056(n))^A057554(Δ[n²])`
-/

namespace A131609.P46860167437753121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A003056 n).toNat : ℚ) ^ (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A131609.P46860167437753121

namespace A131609

/-- `A000045(A003056(n))^A057554(Δ[n²])` -/
def P46860167437753121.Spec : Prop :=
  ∀ n, P46860167437753121.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P11811995571176506329

`A000045(A003056(n))^(A002260(n+1)-1)`
-/

namespace A131609.P11811995571176506329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A003056 n).toNat : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A131609.P11811995571176506329

namespace A131609

/-- `A000045(A003056(n))^(A002260(n+1)-1)` -/
def P11811995571176506329.Spec : Prop :=
  ∀ n, P11811995571176506329.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P14998706288540363825

`A000045(A003056(n))^(A057555(2*n+1)-1)`
-/

namespace A131609.P14998706288540363825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A003056 n).toNat : ℚ) ^ (A057555 (2 * n + 1) - 1 : ℤ)

end

end A131609.P14998706288540363825

namespace A131609

/-- `A000045(A003056(n))^(A057555(2*n+1)-1)` -/
def P14998706288540363825.Spec : Prop :=
  ∀ n, P14998706288540363825.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P6061346871189969292

`A000045(A003056(n))^(A057554(2*n+1)%63)`
-/

namespace A131609.P6061346871189969292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A003056 n).toNat : ℚ) ^ (Int.tmod (A057554 (2 * n + 1)) 63 : ℤ)

end

end A131609.P6061346871189969292

namespace A131609

/-- `A000045(A003056(n))^(A057554(2*n+1)%63)` -/
def P6061346871189969292.Spec : Prop :=
  ∀ n, P6061346871189969292.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P650196829274155030

`A000045(A003056(n))^(A026100(A026098(n+1))-1)`
-/

namespace A131609.P650196829274155030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A003056 n).toNat : ℚ) ^ (A026100 (A026098 (n + 1)).toNat - 1 : ℤ)

end

end A131609.P650196829274155030

namespace A131609

/-- `A000045(A003056(n))^(A026100(A026098(n+1))-1)` -/
def P650196829274155030.Spec : Prop :=
  ∀ n, P650196829274155030.a n = (A131609 n : ℚ)

end A131609

/-! ## A131609.P10461066072704698386

`A108037(n)^A008554(A002260(n+1))`
-/

namespace A131609.P10461066072704698386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108037 n : ℚ) ^ (A008554 (A002260 (n + 1)).toNat : ℤ)

end

end A131609.P10461066072704698386

namespace A131609

/-- `A108037(n)^A008554(A002260(n+1))` -/
def P10461066072704698386.Spec : Prop :=
  ∀ n, P10461066072704698386.a n = (A131609 n : ℚ)

end A131609

/-!
# A131610: Semiprimes that are the sum of three successive semiprimes.

The programs for A131610, the canonical program `A131610.P16069529039383558087` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131610 has offset 1).

The definition of A131610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131610.P3260964204912080560

`∩[A176540(n+1)+A118717(n+1), A176540(n+1)]`
-/

namespace A131610.P3260964204912080560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1) + A118717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131610.P3260964204912080560

namespace A131610

/-- `∩[A176540(n+1)+A118717(n+1), A176540(n+1)]` -/
def P3260964204912080560.Spec : Prop :=
  ∀ n, (P3260964204912080560.a n : ℤ) = A131610 (n + 1)

end A131610

/-! ## A131610.P16069529039383558087

`∩[A001358(n+1), A118717(n+2)+A001358(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A131610

/-- `∩[A001358(n+1), A118717(n+2)+A001358(n+1)]` -/
def P16069529039383558087.Spec : Prop :=
  ∀ n, (P16069529039383558087.a n : ℤ) = A131610 (n + 1)

theorem P16069529039383558087.correct : P16069529039383558087.Spec := by
  intro n
  simp only [A131610, Nat.add_sub_cancel]

end A131610

/-! ## A131610.P9287865230779478310

`∩[A186621(n+1)+1, A118717(n+2)+A186621(n+1)+1]`
-/

namespace A131610.P9287865230779478310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) + (A186621 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131610.P9287865230779478310

namespace A131610

/-- `∩[A186621(n+1)+1, A118717(n+2)+A186621(n+1)+1]` -/
def P9287865230779478310.Spec : Prop :=
  ∀ n, (P9287865230779478310.a n : ℤ) = A131610 (n + 1)

end A131610

/-! ## A131610.P13610329436839388748

`∩[A088707(n+1)-1, A118717(n+2)+A088707(n+1)-1]`
-/

namespace A131610.P13610329436839388748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) + (A088707 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131610.P13610329436839388748

namespace A131610

/-- `∩[A088707(n+1)-1, A118717(n+2)+A088707(n+1)-1]` -/
def P13610329436839388748.Spec : Prop :=
  ∀ n, (P13610329436839388748.a n : ℤ) = A131610 (n + 1)

end A131610

/-! ## A131610.P2087220721893118222

`∩[A175708(n+1)+1+n, A118717(n+2)+A175708(n+1)+1+n]`
-/

namespace A131610.P2087220721893118222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 2) + (A175708 (n + 1) + 1 + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131610.P2087220721893118222

namespace A131610

/-- `∩[A175708(n+1)+1+n, A118717(n+2)+A175708(n+1)+1+n]` -/
def P2087220721893118222.Spec : Prop :=
  ∀ n, (P2087220721893118222.a n : ℤ) = A131610 (n + 1)

end A131610

/-!
# A131612: (Fibonacci(n)^(n+1)-1)/(Fibonacci(n)-1).

The programs for A131612, there is no canonical definition to state claims against.
-/

/-! ## A131612.P500685531235613197

`∑{d}[2^n, A000045(n)^A048675(#)]`
-/

namespace A131612.P500685531235613197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000045 n : ℚ) ^ (A048675 d : ℤ)

end

end A131612.P500685531235613197

/-! ## A131612.P2281610346190963152

`A065608(A100399(n))+n+1`
-/

namespace A131612.P2281610346190963152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A100399 n).toNat + (n + 1 : ℤ)

end

end A131612.P2281610346190963152

/-!
# A131613: Numbers k such that the decimal expansion of 3^k contains no 9.

The programs for A131613, there is no canonical definition to state claims against.
-/

/-! ## A131613.P12785325057785483589

`lt[∑{digits}[A000244(n), C(#, 9)], 1]`
-/

namespace A131613.P12785325057785483589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => Nat.choose x 9).sum

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A131613.P12785325057785483589

/-! ## A131613.P17184747089152831931

`eq[Δ[A055570(n)], A320412(n)]`
-/

namespace A131613.P17184747089152831931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A131613.P17184747089152831931

/-! ## A131613.P2463239933874303685

`lt[n, A046523(A117561(n+3))]`
-/

namespace A131613.P2463239933874303685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A117561 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131613.P2463239933874303685

/-! ## A131613.P10302424330194317468

`lt[p?[A298979(n+1)], A299970(3*n+4)]`
-/

namespace A131613.P10302424330194317468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298979 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299970 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A131613.P10302424330194317468

/-! ## A131613.P11947426322231451728

`lt[A366749(A326326(n)), A002654(3*n+1)]`
-/

namespace A131613.P11947426322231451728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366749 (A326326 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131613.P11947426322231451728

/-!
# A131615: Numbers k such that the decimal expansion of 3^k contains no 7.

The programs for A131615, there is no canonical definition to state claims against.
-/

/-! ## A131615.P12897940176191251857

`lt[A128175(2*(n+1))², A128158(n+1)]`
-/

namespace A131615.P12897940176191251857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131615.P12897940176191251857

/-! ## A131615.P13962508835095482128

`lt[A296339(n), A059218(A057213(n+1))]`
-/

namespace A131615.P13962508835095482128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059218 (A057213 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131615.P13962508835095482128

/-! ## A131615.P6333920212974633440

`eq[A085981(n+1), A085983(A244541(n+2))]`
-/

namespace A131615.P6333920212974633440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085983 (A244541 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131615.P6333920212974633440

/-! ## A131615.P10539537252420871862

`eq[A369004(A342334(n+3))+1, A318622(n+1)]`
-/

namespace A131615.P10539537252420871862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (A342334 (n + 3)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131615.P10539537252420871862

/-! ## A131615.P5912391052513057314

`lt[A028963(A239482(2*(n+3))), A173531(n+2)]`
-/

namespace A131615.P5912391052513057314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 (A239482 (2 * (n + 3))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131615.P5912391052513057314

/-!
# A131618: Numbers k such that the decimal expansion of 3^k contains no 4.

The programs for A131618, there is no canonical definition to state claims against.
-/

/-! ## A131618.P12975894006135151137

`eq[A044936(A005496(n)), A151950(n)]`
-/

namespace A131618.P12975894006135151137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044936 (A005496 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131618.P12975894006135151137

/-! ## A131618.P12621283877912559390

`eq[A213217(A256756(n)), A245477(n)]`
-/

namespace A131618.P12621283877912559390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A256756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131618.P12621283877912559390

/-! ## A131618.P3681895096549888891

`eq[A213217(A256756(n)), A294934(n+1)]`
-/

namespace A131618.P3681895096549888891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A256756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131618.P3681895096549888891

/-! ## A131618.P12108652875036236857

`lt[A213217(A256756(n)), A039710(n+1)]`
-/

namespace A131618.P12108652875036236857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A256756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131618.P12108652875036236857

/-! ## A131618.P2213971675591284855

`lt[A113749(A088902(n+3)), A102478(n+1)]`
-/

namespace A131618.P2213971675591284855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A088902 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131618.P2213971675591284855

/-!
# A131622: Number of cycles in all permutations of n elements with distinct cycle lengths.

The programs for A131622, there is no canonical definition to state claims against.
-/

/-! ## A131622.P9464731310533325055

`A213473(8*n+a(n-1)-7)` with `a(0)=1, a(1)=1`
-/

namespace A131622.P9464731310533325055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A213473 ((8 * n : ℤ) + (a (n - 1) - 7)).toNat

end

end A131622.P9464731310533325055

/-!
# A131623: Number of blocks in all partitions of n-set with distinct block sizes.

The programs for A131623, there is no canonical definition to state claims against.
-/

/-! ## A131623.P17435577549363592251

`A327870(n+1)-A007837(n+1)`
-/

namespace A131623.P17435577549363592251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327870 (n + 1) - A007837 (n + 1)

end

end A131623.P17435577549363592251

/-! ## A131623.P13541372408328989059

`or(n², A193414(A000110(n)))`
-/

namespace A131623.P13541372408328989059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) (A193414 (A000110 n).toNat)

end

end A131623.P13541372408328989059

/-!
# A131625: Numbers k such that decimal expansion of 3^k contains no 2.

The programs for A131625, there is no canonical definition to state claims against.
-/

/-! ## A131625.P14999819635253596439

`lt[3, A294088(A233583(n+1))]`
-/

namespace A131625.P14999819635253596439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294088 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131625.P14999819635253596439

/-!
# A131627: Numbers k such that the decimal expansion of 3^k contains no 1.

The programs for A131627, there is no canonical definition to state claims against.
-/

/-! ## A131627.P5950281661740348702

`∑[A317084(∑[A317081(n+1)]%(n+1))]`
-/

namespace A131627.P5950281661740348702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317084 (Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131627.P5950281661740348702

/-! ## A131627.P5492551389776090900

`eq[Δ[A322794(2*n+5)], A121373(n)]`
-/

namespace A131627.P5492551389776090900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A131627.P5492551389776090900

/-!
# A131629: Numbers k such that the decimal expansion of 3^k contains no 3.

The programs for A131629, there is no canonical definition to state claims against.
-/

/-! ## A131629.P7471656171543856354

`eq[0, A126205(n)]`
-/

namespace A131629.P7471656171543856354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131629.P7471656171543856354

/-! ## A131629.P16117352313374685109

`val(A378557(n+1), 3)`
-/

namespace A131629.P16117352313374685109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A378557 (n + 1)).toNat 3

end

end A131629.P16117352313374685109

/-! ## A131629.P18190718703608048161

`lt[A126205(A118759(n)), 1]`
-/

namespace A131629.P18190718703608048161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 (A118759 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131629.P18190718703608048161

/-! ## A131629.P722996015806272260

`lt[A126207(A126205(n)²), 1]`
-/

namespace A131629.P722996015806272260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126207 (A126205 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131629.P722996015806272260

/-! ## A131629.P5499589720188602936

`lt[A126205(n), A055881(2*n+5)]`
-/

namespace A131629.P5499589720188602936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131629.P5499589720188602936

/-!
# A131631: Supersubfactorials: partial product of positive subfactorials (A000166).

The programs for A131631, there is no canonical definition to state claims against.
-/

/-! ## A131631.P7626906932501387650

`∏[round((n+2)!/e)]`
-/

namespace A131631.P7626906932501387650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 2) : ℝ) / Real.exp 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131631.P7626906932501387650

/-! ## A131631.P11785706681945934562

`∏[round(∏[n+2]/e)]`
-/

namespace A131631.P11785706681945934562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) / Real.exp 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131631.P11785706681945934562

/-! ## A131631.P893833669674607583

`abs(∏[1-(n+2)*a(n-1)])` with `a(0)=1`
-/

namespace A131631.P893833669674607583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - (n + 2 : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A131631.P893833669674607583

/-! ## A131631.P5777018346740103023

`abs(∏[-record[A000166(n)]])`
-/

namespace A131631.P5777018346740103023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A131631.P5777018346740103023

/-! ## A131631.P9592464928022860607

`sqrt(∏[A335691(n+2)])`
-/

namespace A131631.P9592464928022860607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335691 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A131631.P9592464928022860607

/-!
# A131634: n-th even semiprime minus n-th odd semiprime.

The programs for A131634, the canonical program `A131634.P13301814298976685454` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131634 has offset 1).

The definition of A131634 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046315, A100484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131634.P13301814298976685454

`A100484(n+1)-A046315(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A131634

/-- `A100484(n+1)-A046315(n+1)` -/
def P13301814298976685454.Spec : Prop :=
  ∀ n, P13301814298976685454.a n = A131634 (n + 1)

theorem P13301814298976685454.correct : P13301814298976685454.Spec := by
  intro n
  simp only [A131634, Nat.add_sub_cancel]

end A131634

/-! ## A131634.P1583452610466250180

`A037168(n+1)-A176406(n+1)`
-/

namespace A131634.P1583452610466250180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - A176406 (n + 1)

end

end A131634.P1583452610466250180

namespace A131634

/-- `A037168(n+1)-A176406(n+1)` -/
def P1583452610466250180.Spec : Prop :=
  ∀ n, P1583452610466250180.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P11557299032214531545

`A001749(n+1)-A282844(n+1)`
-/

namespace A131634.P11557299032214531545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - A282844 (n + 1)

end

end A131634.P11557299032214531545

namespace A131634

/-- `A001749(n+1)-A282844(n+1)` -/
def P11557299032214531545.Spec : Prop :=
  ∀ n, P11557299032214531545.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P2254262157645471854

`sqrt(A069262(n+1))-A046315(n+1)`
-/

namespace A131634.P2254262157645471854
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069262 (n + 1) : ℝ) - (A046315 (n + 1) : ℝ)

end

end A131634.P2254262157645471854

namespace A131634

/-- `sqrt(A069262(n+1))-A046315(n+1)` -/
def P2254262157645471854.Spec : Prop :=
  ∀ n, P2254262157645471854.a n = (A131634 (n + 1) : ℝ)

end A131634

/-! ## A131634.P5792574813542719806

`A100484(n+1)-(A176406(n+1)+2)`
-/

namespace A131634.P5792574813542719806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - (A176406 (n + 1) + 2)

end

end A131634.P5792574813542719806

namespace A131634

/-- `A100484(n+1)-(A176406(n+1)+2)` -/
def P5792574813542719806.Spec : Prop :=
  ∀ n, P5792574813542719806.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P15410413147378821838

`2*A000040(n+1)-A046315(n+1)`
-/

namespace A131634.P15410413147378821838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A046315 (n + 1)

end

end A131634.P15410413147378821838

namespace A131634

/-- `2*A000040(n+1)-A046315(n+1)` -/
def P15410413147378821838.Spec : Prop :=
  ∀ n, P15410413147378821838.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P16323136297965188010

`A282844(n+1)-2*A046315(n+1)`
-/

namespace A131634.P16323136297965188010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - 2 * A046315 (n + 1)

end

end A131634.P16323136297965188010

namespace A131634

/-- `A282844(n+1)-2*A046315(n+1)` -/
def P16323136297965188010.Spec : Prop :=
  ∀ n, P16323136297965188010.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P16729183169237878381

`2*A100484(n+1)-A282844(n+1)`
-/

namespace A131634.P16729183169237878381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1) - A282844 (n + 1)

end

end A131634.P16729183169237878381

namespace A131634

/-- `2*A100484(n+1)-A282844(n+1)` -/
def P16729183169237878381.Spec : Prop :=
  ∀ n, P16729183169237878381.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P6231927346944151745

`A001749(n+1)/2-A046315(n+1)`
-/

namespace A131634.P6231927346944151745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2 - (A046315 (n + 1) : ℚ)

end

end A131634.P6231927346944151745

namespace A131634

/-- `A001749(n+1)/2-A046315(n+1)` -/
def P6231927346944151745.Spec : Prop :=
  ∀ n, P6231927346944151745.a n = (A131634 (n + 1) : ℚ)

end A131634

/-! ## A131634.P13128824597198621127

`A001358(n+1)+A175511(n+1)-A046315(n+1)`
-/

namespace A131634.P13128824597198621127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A175511 (n + 1) - A046315 (n + 1))

end

end A131634.P13128824597198621127

namespace A131634

/-- `A001358(n+1)+A175511(n+1)-A046315(n+1)` -/
def P13128824597198621127.Spec : Prop :=
  ∀ n, P13128824597198621127.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P5394557860712965605

`A001748(n+1)-A000040(n+1)-A046315(n+1)`
-/

namespace A131634.P5394557860712965605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A000040 (n + 1) - A046315 (n + 1)

end

end A131634.P5394557860712965605

namespace A131634

/-- `A001748(n+1)-A000040(n+1)-A046315(n+1)` -/
def P5394557860712965605.Spec : Prop :=
  ∀ n, P5394557860712965605.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P12087196782180592197

`A001747(n+2)-A046315(n+1)`
-/

namespace A131634.P12087196782180592197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) - A046315 (n + 1)

end

end A131634.P12087196782180592197

namespace A131634

/-- `A001747(n+2)-A046315(n+1)` -/
def P12087196782180592197.Spec : Prop :=
  ∀ n, P12087196782180592197.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P9771144125159375436

`A001748(n+1)-(A046315(n+1)+A008578(n+2))`
-/

namespace A131634.P9771144125159375436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - (A046315 (n + 1) + A008578 (n + 2))

end

end A131634.P9771144125159375436

namespace A131634

/-- `A001748(n+1)-(A046315(n+1)+A008578(n+2))` -/
def P9771144125159375436.Spec : Prop :=
  ∀ n, P9771144125159375436.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P1668111012715525464

`A112773(n+2)-(A046315(n+1)+A008578(n+2))`
-/

namespace A131634.P1668111012715525464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 2) - (A046315 (n + 1) + A008578 (n + 2))

end

end A131634.P1668111012715525464

namespace A131634

/-- `A112773(n+2)-(A046315(n+1)+A008578(n+2))` -/
def P1668111012715525464.Spec : Prop :=
  ∀ n, P1668111012715525464.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P8451900003743444051

`A384940(2*(n+1))-A046315(n+1)`
-/

namespace A131634.P8451900003743444051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384940 (2 * (n + 1)) - A046315 (n + 1)

end

end A131634.P8451900003743444051

namespace A131634

/-- `A384940(2*(n+1))-A046315(n+1)` -/
def P8451900003743444051.Spec : Prop :=
  ∀ n, P8451900003743444051.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P8440919127000257095

`A100484(n+1)-A384940(2*n+1)`
-/

namespace A131634.P8440919127000257095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A384940 (2 * n + 1)

end

end A131634.P8440919127000257095

namespace A131634

/-- `A100484(n+1)-A384940(2*n+1)` -/
def P8440919127000257095.Spec : Prop :=
  ∀ n, P8440919127000257095.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P166614680300848789

`A384940(2*(n+1))-A384940(2*n+1)`
-/

namespace A131634.P166614680300848789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384940 (2 * (n + 1)) - A384940 (2 * n + 1)

end

end A131634.P166614680300848789

namespace A131634

/-- `A384940(2*(n+1))-A384940(2*n+1)` -/
def P166614680300848789.Spec : Prop :=
  ∀ n, P166614680300848789.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P3232498946521557238

`record[2*A093074(n+1)]-A046315(n+1)`
-/

namespace A131634.P3232498946521557238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A046315 (n + 1)

end

end A131634.P3232498946521557238

namespace A131634

/-- `record[2*A093074(n+1)]-A046315(n+1)` -/
def P3232498946521557238.Spec : Prop :=
  ∀ n, P3232498946521557238.a n = A131634 (n + 1)

end A131634

/-! ## A131634.P64890719682327754

`A160995(A000040(n+1))-A046315(n+1)`
-/

namespace A131634.P64890719682327754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160995 (A000040 (n + 1)).toNat - A046315 (n + 1)

end

end A131634.P64890719682327754

namespace A131634

/-- `A160995(A000040(n+1))-A046315(n+1)` -/
def P64890719682327754.Spec : Prop :=
  ∀ n, P64890719682327754.a n = A131634 (n + 1)

end A131634

/-!
# A131635: Triangle T(n,m)=m*n*binomial(m+n,m)^2/(2*(m+n)) read by rows.

The programs for A131635, the canonical program `A131635.P15231796072732893040` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131635 has offset 1).

The definition of A131635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131635.P15231796072732893040

`A132818(A245300(n)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A131635

/-- `A132818(A245300(n)+1)` -/
def P15231796072732893040.Spec : Prop :=
  ∀ n, P15231796072732893040.a n = A131635 (n + 1)

theorem P15231796072732893040.correct : P15231796072732893040.Spec := by
  intro n
  simp only [A131635, Nat.add_sub_cancel]

end A131635

/-! ## A131635.P2195548790410471965

`A174116(A245300(∑[A035214(n)]))`
-/

namespace A131635.P2195548790410471965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174116 (A245300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A131635.P2195548790410471965

namespace A131635

/-- `A174116(A245300(∑[A035214(n)]))` -/
def P2195548790410471965.Spec : Prop :=
  ∀ n, P2195548790410471965.a n = A131635 (n + 1)

end A131635

/-! ## A131635.P13203696513292058915

`A174116(A245300(A014132(n+1)))`
-/

namespace A131635.P13203696513292058915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174116 (A245300 (A014132 (n + 1)).toNat).toNat

end

end A131635.P13203696513292058915

namespace A131635

/-- `A174116(A245300(A014132(n+1)))` -/
def P13203696513292058915.Spec : Prop :=
  ∀ n, P13203696513292058915.a n = A131635 (n + 1)

end A131635

/-!
# A131637: a(n) = Phi(Bell(n)).

The programs for A131637, there is no canonical definition to state claims against.
-/

/-! ## A131637.P6385018303868815467

`A000010(A000110(n))`
-/

namespace A131637.P6385018303868815467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000110 n).toNat

end

end A131637.P6385018303868815467

/-! ## A131637.P15971441107699179398

`A000010(A164863(n))`
-/

namespace A131637.P15971441107699179398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A164863 n).toNat

end

end A131637.P15971441107699179398

/-! ## A131637.P8849172846001984739

`A000010(A164864(n))`
-/

namespace A131637.P8849172846001984739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A164864 n).toNat

end

end A131637.P8849172846001984739

/-! ## A131637.P17966708697391840018

`A000010(A192126(n))`
-/

namespace A131637.P17966708697391840018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A192126 n).toNat

end

end A131637.P17966708697391840018

/-! ## A131637.P773891351240642409

`A000010(A192127(n))`
-/

namespace A131637.P773891351240642409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A192127 n).toNat

end

end A131637.P773891351240642409

/-!
# A131638: Increasing binary trees having exactly two vertices with outdegree 1.

The programs for A131638, there is no canonical definition to state claims against.
-/

/-! ## A131638.P1773079121640333680

`(A002105(n+3)-(n+2)*A002105(n+2))/2`
-/

namespace A131638.P1773079121640333680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002105 (n + 3) - (n + 2 : ℤ) * A002105 (n + 2) : ℚ) / 2

end

end A131638.P1773079121640333680

/-! ## A131638.P7717387939183894096

`A094503((n+2)²-1)`
-/

namespace A131638.P7717387939183894096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094503 ((n + 2) ^ 2 - 1)

end

end A131638.P7717387939183894096

/-! ## A131638.P11892838866689428541

`A096078(∑[n+3])`
-/

namespace A131638.P11892838866689428541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096078 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131638.P11892838866689428541

/-!
# A131640: First differences are periodic: 50, 50, 75, 50, 50, 75, ...

The programs for A131640, the canonical program `A131640.P10121289230262547130` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131640 has offset 0).

The definition of A131640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131640.P10121289230262547130

`5*(35*n+591-5*n%3)/3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A131640

/-- `5*(35*n+591-5*n%3)/3` -/
def P10121289230262547130.Spec : Prop :=
  ∀ n, P10121289230262547130.a n = (A131640 n : ℚ)

end A131640

/-! ## A131640.P310384371455450711

`5/3*(35*n+586+5*A057078(n))`
-/

namespace A131640.P310384371455450711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * ((35 * n : ℤ) + (586 + 5 * A057078 n) : ℚ)

end

end A131640.P310384371455450711

namespace A131640

/-- `5/3*(35*n+586+5*A057078(n))` -/
def P310384371455450711.Spec : Prop :=
  ∀ n, P310384371455450711.a n = (A131640 n : ℚ)

end A131640

/-! ## A131640.P4201286314133342542

`5/3*(35*(n+1)+551+5*(A102283(n+1)+A102283(n)))`
-/

namespace A131640.P4201286314133342542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * ((35 * (n + 1) : ℤ) + (551 + 5 * (A102283 (n + 1) + A102283 n)) : ℚ)

end

end A131640.P4201286314133342542

namespace A131640

/-- `5/3*(35*(n+1)+551+5*(A102283(n+1)+A102283(n)))` -/
def P4201286314133342542.Spec : Prop :=
  ∀ n, P4201286314133342542.a n = (A131640 n : ℚ)

end A131640

/-!
# A131642: a(n) = A001223(n) if the number A001223(n) appears the first time in A001223, a(n) = 1 otherwise.

The programs for A131642, there is no canonical definition to state claims against.
-/

/-! ## A131642.P3698832601615719143

`A001223(n+1)^floor(acot(A171932(n+1)))`
-/

namespace A131642.P3698832601615719143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) ^ (⌊SequenceMachineLib.acot (A171932 (n + 1) : ℝ)⌋ : ℤ)

end

end A131642.P3698832601615719143

/-! ## A131642.P16970130542743161890

`A001223(n*char[A038664(n+1)-1]+1)`
-/

namespace A131642.P16970130542743161890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038664 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A131642.P16970130542743161890

/-! ## A131642.P13010483840374761585

`gcd(A001223(n+1), A309026(A171932(n+1)))`
-/

namespace A131642.P13010483840374761585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001223 (n + 1)) (A309026 (A171932 (n + 1)).toNat)

end

end A131642.P13010483840374761585

/-!
# A131643: Cubes that are also sums of three or more consecutive positive cubes.

The programs for A131643, there is no canonical definition to state claims against.
-/

/-! ## A131643.P10310270929686537743

`A097811(n+1)^3`
-/

namespace A131643.P10310270929686537743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097811 (n + 1) ^ 3

end

end A131643.P10310270929686537743

/-! ## A131643.P9359553127773385504

`A097811(C(n+1, n))²*A097811(n+1)`
-/

namespace A131643.P9359553127773385504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097811 (Nat.choose (n + 1) n) ^ 2 * A097811 (n + 1)

end

end A131643.P9359553127773385504

/-! ## A131643.P13379471739347855394

`A097811(Δ[n²]-n)²*A097811(n+1)`
-/

namespace A131643.P13379471739347855394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097811 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2 * A097811 (n + 1)

end

end A131643.P13379471739347855394

/-! ## A131643.P16236264069299945985

`A000578(A097811(n+1))`
-/

namespace A131643.P16236264069299945985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A097811 (n + 1)).toNat

end

end A131643.P16236264069299945985

/-! ## A131643.P8650842708573864778

`lt[1, A307609(A028310(n))]^3`
-/

namespace A131643.P8650842708573864778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307609 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A131643.P8650842708573864778

/-!
# A131644: a(n) = 2^a(n-1) mod n.

The programs for A131644, the canonical program `A131644.P7995300456950499496` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131644 has offset 1).

The definition of A131644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131644.P15183423540901210589

`(2^a(n-1))%(n+1)` with `a(0)=0`
-/

namespace A131644.P15183423540901210589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 ^ a (n - 1) % (n + 1)

end

end A131644.P15183423540901210589

namespace A131644

/-- `(2^a(n-1))%(n+1)` -/
def P15183423540901210589.Spec : Prop :=
  ∀ n, (P15183423540901210589.a n : ℤ) = A131644 (n + 1)

end A131644

/-! ## A131644.P12619582447593059689

`((1/2)^-a(n-1))%xor(n, -1)` with `a(0)=0`
-/

namespace A131644.P12619582447593059689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway (((1 : ℚ) / 2) ^ (-a (n - 1) : ℤ))) (Int.xor (n : ℤ) (-1))

end

end A131644.P12619582447593059689

namespace A131644

/-- `((1/2)^-a(n-1))%xor(n, -1)` -/
def P12619582447593059689.Spec : Prop :=
  ∀ n, P12619582447593059689.a n = A131644 (n + 1)

end A131644

/-! ## A131644.P7995300456950499496

`A000079(a(n-1))%(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131644

/-- `A000079(a(n-1))%(n+1)` -/
def P7995300456950499496.Spec : Prop :=
  ∀ n, P7995300456950499496.a n = A131644 (n + 1)

theorem P7995300456950499496.correct : P7995300456950499496.Spec := by
  intro n
  simp only [A131644, Nat.add_sub_cancel]

end A131644

/-! ## A131644.P14370721615081498156

`(A000225(a(n-1))+1)%(n+1)` with `a(0)=0`
-/

namespace A131644.P14370721615081498156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A000225 (a (n - 1)).toNat + 1) (n + 1 : ℤ)

end

end A131644.P14370721615081498156

namespace A131644

/-- `(A000225(a(n-1))+1)%(n+1)` -/
def P14370721615081498156.Spec : Prop :=
  ∀ n, P14370721615081498156.a n = A131644 (n + 1)

end A131644

/-! ## A131644.P15123627837434293648

`A011782(a(n-1)+1)%(n+1)` with `a(0)=0`
-/

namespace A131644.P15123627837434293648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A011782 (a (n - 1) + 1).toNat) (n + 1 : ℤ)

end

end A131644.P15123627837434293648

namespace A131644

/-- `A011782(a(n-1)+1)%(n+1)` -/
def P15123627837434293648.Spec : Prop :=
  ∀ n, P15123627837434293648.a n = A131644 (n + 1)

end A131644

/-!
# A131645: Beastly primes (version 2): primes containing 666 as a substring.

The programs for A131645, there is no canonical definition to state claims against.
-/

/-! ## A131645.P15585941441357825323

`p?[A051003(n+1)]`
-/

namespace A131645.P15585941441357825323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131645.P15585941441357825323

/-! ## A131645.P11077898858102164811

`record[p?[A051003(A291769(n))]]`
-/

namespace A131645.P11077898858102164811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051003 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131645.P11077898858102164811

/-! ## A131645.P16229607933824742176

`record[p?[A051003(A324346(n))]]`
-/

namespace A131645.P16229607933824742176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051003 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131645.P16229607933824742176

/-! ## A131645.P4146873177546606255

`or(1, p?[A051003(A028310(n))])`
-/

namespace A131645.P4146873177546606255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051003 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A131645.P4146873177546606255

/-!
# A131647: Composite numbers that are products of distinct primes and divisible by the sum of those primes.

The programs for A131647, the canonical program `A131647.P12411840728779344674` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131647 has offset 1).

The definition of A131647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131647.P12411840728779344674

`record[∏{p}[A066031(n+1), #]]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A131647

/-- `record[∏{p}[A066031(n+1), #]]` -/
def P12411840728779344674.Spec : Prop :=
  ∀ n, (P12411840728779344674.a n : ℤ) = A131647 (n + 1)

theorem P12411840728779344674.correct : P12411840728779344674.Spec := by
  intro n
  simp only [A131647, Nat.add_sub_cancel]

end A131647

/-! ## A131647.P4850417789091862124

`∩[A046346(n+1), A295102(n+1)]`
-/

namespace A131647.P4850417789091862124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131647.P4850417789091862124

namespace A131647

/-- `∩[A046346(n+1), A295102(n+1)]` -/
def P4850417789091862124.Spec : Prop :=
  ∀ n, (P4850417789091862124.a n : ℤ) = A131647 (n + 1)

end A131647

/-! ## A131647.P14259249984624145905

`∩[A066031(n+1), A295102(n+1)]`
-/

namespace A131647.P14259249984624145905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131647.P14259249984624145905

namespace A131647

/-- `∩[A066031(n+1), A295102(n+1)]` -/
def P14259249984624145905.Spec : Prop :=
  ∀ n, (P14259249984624145905.a n : ℤ) = A131647 (n + 1)

end A131647

/-! ## A131647.P6535361570256552107

`∩[A158804(n+1), A295102(n+1)]`
-/

namespace A131647.P6535361570256552107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131647.P6535361570256552107

namespace A131647

/-- `∩[A158804(n+1), A295102(n+1)]` -/
def P6535361570256552107.Spec : Prop :=
  ∀ n, (P6535361570256552107.a n : ℤ) = A131647 (n + 1)

end A131647

/-! ## A131647.P479062878032791642

`record[A007947(A066031(n+1))]`
-/

namespace A131647.P479062878032791642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A066031 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131647.P479062878032791642

namespace A131647

/-- `record[A007947(A066031(n+1))]` -/
def P479062878032791642.Spec : Prop :=
  ∀ n, P479062878032791642.a n = A131647 (n + 1)

end A131647

/-! ## A131647.P9528321432026113111

`filter[A046346(n+1), A008966(#)]`
-/

namespace A131647.P9528321432026113111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A131647.P9528321432026113111

namespace A131647

/-- `filter[A046346(n+1), A008966(#)]` -/
def P9528321432026113111.Spec : Prop :=
  ∀ n, P9528321432026113111.a n = A131647 (n + 1)

end A131647

/-! ## A131647.P2582044379053279987

`filter[A066031(n+1), A008966(#)]`
-/

namespace A131647.P2582044379053279987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A131647.P2582044379053279987

namespace A131647

/-- `filter[A066031(n+1), A008966(#)]` -/
def P2582044379053279987.Spec : Prop :=
  ∀ n, P2582044379053279987.a n = A131647 (n + 1)

end A131647

/-! ## A131647.P16773869432621759589

`filter[A158804(n+1), A008966(#)]`
-/

namespace A131647.P16773869432621759589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A131647.P16773869432621759589

namespace A131647

/-- `filter[A158804(n+1), A008966(#)]` -/
def P16773869432621759589.Spec : Prop :=
  ∀ n, P16773869432621759589.a n = A131647 (n + 1)

end A131647

/-! ## A131647.P11575176678612854490

`filter[A046346(n+1), A354819(#)]`
-/

namespace A131647.P11575176678612854490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A131647.P11575176678612854490

namespace A131647

/-- `filter[A046346(n+1), A354819(#)]` -/
def P11575176678612854490.Spec : Prop :=
  ∀ n, P11575176678612854490.a n = A131647 (n + 1)

end A131647

/-! ## A131647.P9473471563224387850

`filter[A066031(n+1), A354819(#)]`
-/

namespace A131647.P9473471563224387850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A131647.P9473471563224387850

namespace A131647

/-- `filter[A066031(n+1), A354819(#)]` -/
def P9473471563224387850.Spec : Prop :=
  ∀ n, P9473471563224387850.a n = A131647 (n + 1)

end A131647

/-! ## A131647.P8431134271898530031

`filter[A046346(n+1), A380469(#)]`
-/

namespace A131647.P8431134271898530031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A131647.P8431134271898530031

namespace A131647

/-- `filter[A046346(n+1), A380469(#)]` -/
def P8431134271898530031.Spec : Prop :=
  ∀ n, P8431134271898530031.a n = A131647 (n + 1)

end A131647

/-! ## A131647.P18366621195998849910

`filter[A066031(n+1), A380469(#)]`
-/

namespace A131647.P18366621195998849910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A131647.P18366621195998849910

namespace A131647

/-- `filter[A066031(n+1), A380469(#)]` -/
def P18366621195998849910.Spec : Prop :=
  ∀ n, P18366621195998849910.a n = A131647 (n + 1)

end A131647

/-! ## A131647.P6529882024407979390

`∩[A046346(n+1), A164596(n+1)]`
-/

namespace A131647.P6529882024407979390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131647.P6529882024407979390

namespace A131647

/-- `∩[A046346(n+1), A164596(n+1)]` -/
def P6529882024407979390.Spec : Prop :=
  ∀ n, (P6529882024407979390.a n : ℤ) = A131647 (n + 1)

end A131647

/-! ## A131647.P7486980281321235579

`∩[A066031(n+1), A164596(n+1)]`
-/

namespace A131647.P7486980281321235579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131647.P7486980281321235579

namespace A131647

/-- `∩[A066031(n+1), A164596(n+1)]` -/
def P7486980281321235579.Spec : Prop :=
  ∀ n, (P7486980281321235579.a n : ℤ) = A131647 (n + 1)

end A131647

/-! ## A131647.P5146024312670716520

`∩[A158804(n+1), A164596(n+1)]`
-/

namespace A131647.P5146024312670716520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131647.P5146024312670716520

namespace A131647

/-- `∩[A158804(n+1), A164596(n+1)]` -/
def P5146024312670716520.Spec : Prop :=
  ∀ n, (P5146024312670716520.a n : ℤ) = A131647 (n + 1)

end A131647

/-! ## A131647.P6797739172656463231

`∩[A036844(n+1), A164596(n+1)]`
-/

namespace A131647.P6797739172656463231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131647.P6797739172656463231

namespace A131647

/-- `∩[A036844(n+1), A164596(n+1)]` -/
def P6797739172656463231.Spec : Prop :=
  ∀ n, (P6797739172656463231.a n : ℤ) = A131647 (n + 1)

end A131647

/-! ## A131647.P15292766279587513542

`∩[A036844(n+1), A295102(n+1)]`
-/

namespace A131647.P15292766279587513542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131647.P15292766279587513542

namespace A131647

/-- `∩[A036844(n+1), A295102(n+1)]` -/
def P15292766279587513542.Spec : Prop :=
  ∀ n, (P15292766279587513542.a n : ℤ) = A131647 (n + 1)

end A131647

/-!
# A131648: Primes > 100 in which every multi-digit substring is also prime.

The programs for A131648, there is no canonical definition to state claims against.
-/

/-! ## A131648.P16587623060658179574

`∩[A069488(n+1), A244282(n+1)]`
-/

namespace A131648.P16587623060658179574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131648.P16587623060658179574

/-! ## A131648.P11017361032148593548

`∩[A211683(n+1), A244282(n+1)]`
-/

namespace A131648.P11017361032148593548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131648.P11017361032148593548

/-!
# A131649: Number of distinct improper 2-coloring of edges for odd-order cyclic graphs.

The programs for A131649, there is no canonical definition to state claims against.
-/

/-! ## A131649.P14816646149406591230

`∑[n*(6-char[2])-2]+6`
-/

namespace A131649.P14816646149406591230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (6 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A131649.P14816646149406591230

/-! ## A131649.P13968595682963587370

`ogf((4-4x+4x^2+4x^3-2x^4)/(1-3x+3x^2-x^3))`
-/

namespace A131649.P13968595682963587370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, 4, 4, -2] [1, -3, 3, -1] n

end

end A131649.P13968595682963587370

/-! ## A131649.P9222815996001539697

`2*(∑[gcd(n, C(2, n))]+n²+1)`
-/

namespace A131649.P9222815996001539697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 + 1)

end

end A131649.P9222815996001539697

/-! ## A131649.P15507678847112293336

`floor(6*n+a(n-1)-2)` with `a(0)=4, a(1)=8, a(2)=16`

`floor` is left out, it is the identity on integers.
-/

namespace A131649.P15507678847112293336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8, 16] fun n a =>
  (6 * n : ℤ) + (a (n - 1) - 2)

end

end A131649.P15507678847112293336

/-! ## A131649.P12699540350876297178

`floor(6*n-(2-a(n-1)))` with `a(0)=4, a(1)=8, a(2)=16`

`floor` is left out, it is the identity on integers.
-/

namespace A131649.P12699540350876297178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8, 16] fun n a =>
  (6 * n : ℤ) - (2 - a (n - 1))

end

end A131649.P12699540350876297178

/-!
# A131650: Number of symbols in Babylonian numeral representation of n.

The programs for A131650, there is no canonical definition to state claims against.
-/

/-! ## A131650.P5573298267732737401

`∑{digits}[A055643(n+1), #]`
-/

namespace A131650.P5573298267732737401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A131650.P5573298267732737401

/-! ## A131650.P17755616911254398074

`A007953(A055643(n+1))`
-/

namespace A131650.P17755616911254398074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A055643 (n + 1)).toNat

end

end A131650.P17755616911254398074

/-! ## A131650.P9609360574622549536

`A007953(record[A055643(abs(1-n))])`
-/

namespace A131650.P9609360574622549536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131650.P9609360574622549536

/-! ## A131650.P6152384635786434169

`A061762(10*A055643(n+1))`
-/

namespace A131650.P6152384635786434169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (10 * A055643 (n + 1)).toNat

end

end A131650.P6152384635786434169

/-! ## A131650.P14801781230933571310

`A033930(n+1)^A042980(A262079(n+1))`
-/

namespace A131650.P14801781230933571310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033930 (n + 1) : ℚ) ^ (A042980 (A262079 (n + 1)).toNat : ℤ)

end

end A131650.P14801781230933571310

/-! ## A131650.P12510646764354468242

`A007953(n+1)^A088157(A088157(n+1)^n)`
-/

namespace A131650.P12510646764354468242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (n + 1) : ℚ) ^ (A088157 (A088157 (n + 1) ^ n).toNat : ℤ)

end

end A131650.P12510646764354468242

/-! ## A131650.P18056254053829875882

`∑{digits}[n+1, #]%A095275(n)`
-/

namespace A131650.P18056254053829875882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A095275 n)

end

end A131650.P18056254053829875882

/-! ## A131650.P7662352012782391964

`∑{digits}[A001221(A285273(n+1))+n, #]`
-/

namespace A131650.P7662352012782391964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A285273 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A131650.P7662352012782391964

/-! ## A131650.P16520268119327218102

`A001222(A054842(n+1))`
-/

namespace A131650.P16520268119327218102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A054842 (n + 1)).toNat

end

end A131650.P16520268119327218102

/-! ## A131650.P1724523925009597221

`A001222(A069877(n+1))`
-/

namespace A131650.P1724523925009597221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A069877 (n + 1)).toNat

end

end A131650.P1724523925009597221

/-!
# A131651: Positive integers obtained as the difference of two triangular numbers in exactly 4 ways.

The programs for A131651, the canonical program `A131651.P2612238070486693050` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131651 has offset 1).

The definition of A131651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131651.P2237332069021482928

`eq[4, A301957(n+1)]+1`
-/

namespace A131651.P2237332069021482928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131651.P2237332069021482928

namespace A131651

/-- `eq[4, A301957(n+1)]+1` -/
def P2237332069021482928.Spec : Prop :=
  ∀ n, (P2237332069021482928.a n : ℤ) = A131651 (n + 1)

end A131651

/-! ## A131651.P2612238070486693050

`eq[4, A318874(n+1)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A131651

/-- `eq[4, A318874(n+1)]+1` -/
def P2612238070486693050.Spec : Prop :=
  ∀ n, (P2612238070486693050.a n : ℤ) = A131651 (n + 1)

theorem P2612238070486693050.correct : P2612238070486693050.Spec := by
  intro n
  simp only [A131651, Nat.add_sub_cancel]

end A131651

/-! ## A131651.P12198924590335918694

`eq[4, A000005((n+1)/2^val(n+1, 2))]+1`
-/

namespace A131651.P12198924590335918694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131651.P12198924590335918694

namespace A131651

/-- `eq[4, A000005((n+1)/2^val(n+1, 2))]+1` -/
def P12198924590335918694.Spec : Prop :=
  ∀ n, (P12198924590335918694.a n : ℤ) = A131651 (n + 1)

end A131651

/-! ## A131651.P5849951900821955221

`eq[4, A000005((n+1)/(or(n, n+1)-n))]+1`
-/

namespace A131651.P5849951900821955221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131651.P5849951900821955221

namespace A131651

/-- `eq[4, A000005((n+1)/(or(n, n+1)-n))]+1` -/
def P5849951900821955221.Spec : Prop :=
  ∀ n, (P5849951900821955221.a n : ℤ) = A131651 (n + 1)

end A131651

/-! ## A131651.P4717549876728855708

`eq[4, A000005((n+1)/xor(n, or(n, n+1)))]+1`
-/

namespace A131651.P4717549876728855708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131651.P4717549876728855708

namespace A131651

/-- `eq[4, A000005((n+1)/xor(n, or(n, n+1)))]+1` -/
def P4717549876728855708.Spec : Prop :=
  ∀ n, (P4717549876728855708.a n : ℤ) = A131651 (n + 1)

end A131651

/-! ## A131651.P18404364244869366499

`eq[4, A000005((n+1)/and(n+1, -(n+1)))]+1`
-/

namespace A131651.P18404364244869366499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131651.P18404364244869366499

namespace A131651

/-- `eq[4, A000005((n+1)/and(n+1, -(n+1)))]+1` -/
def P18404364244869366499.Spec : Prop :=
  ∀ n, (P18404364244869366499.a n : ℤ) = A131651 (n + 1)

end A131651

/-! ## A131651.P7299247550244734752

`eq[3, A069283(n)]`
-/

namespace A131651.P7299247550244734752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131651.P7299247550244734752

namespace A131651

/-- `eq[3, A069283(n)]` -/
def P7299247550244734752.Spec : Prop :=
  ∀ n, (P7299247550244734752.a n : ℤ) = A131651 (n + 1)

end A131651

/-! ## A131651.P9700242316101379171

`eq[4, A001227(n+1)]+1`
-/

namespace A131651.P9700242316101379171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131651.P9700242316101379171

namespace A131651

/-- `eq[4, A001227(n+1)]+1` -/
def P9700242316101379171.Spec : Prop :=
  ∀ n, (P9700242316101379171.a n : ℤ) = A131651 (n + 1)

end A131651

/-! ## A131651.P16027919348406095596

`eq[3, A032741((n+1)/2^val(n+1, 2))]+1`
-/

namespace A131651.P16027919348406095596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131651.P16027919348406095596

namespace A131651

/-- `eq[3, A032741((n+1)/2^val(n+1, 2))]+1` -/
def P16027919348406095596.Spec : Prop :=
  ∀ n, (P16027919348406095596.a n : ℤ) = A131651 (n + 1)

end A131651

/-!
# A131652: Primes p for which Sum_{1 <= n < p} (n!|p) == 0 (mod p), where (n!|p) is the Legendre symbol.

The programs for A131652, there is no canonical definition to state claims against.
-/

/-! ## A131652.P10830132767742041219

`p?[A176129(n)+A020960(n+1)]`
-/

namespace A131652.P10830132767742041219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 n + A020960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131652.P10830132767742041219

/-! ## A131652.P11610724254949275043

`p?[A063741(n)]%A201386(n+1)`
-/

namespace A131652.P11610724254949275043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A201386 (n + 1))

end

end A131652.P11610724254949275043

/-!
# A131654: Difference mod 10 of successive digits of Pi.

The programs for A131654, there is no canonical definition to state claims against.
-/

/-! ## A131654.P181983602012930775

`dr(and(63, Δ[A000796(n)]))`
-/

namespace A131654.P181983602012930775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 63 (f1 (n + 1) - f1 n))

end

end A131654.P181983602012930775

/-! ## A131654.P2780943970852116370

`(10-Δ[A030644(n)])%10`
-/

namespace A131654.P2780943970852116370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 - (f1 (n + 1) - f1 n)) 10

end

end A131654.P2780943970852116370

/-! ## A131654.P10132671852474998510

`dr(and(63, A095916(n+1)))`
-/

namespace A131654.P10132671852474998510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 63 (A095916 (n + 1)))

end

end A131654.P10132671852474998510

/-! ## A131654.P196227605050525280

`(Δ[Δ[A059582(n)]]+10)%10`
-/

namespace A131654.P196227605050525280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 10) 10

end

end A131654.P196227605050525280

/-! ## A131654.P4984024446873167521

`A007954(Δ[A000796(n)]+10)`
-/

namespace A131654.P4984024446873167521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (n + 1) - f1 n + 10).toNat

end

end A131654.P4984024446873167521

/-! ## A131654.P5422288703286342571

`A010879(Δ[A000796(n)]+10)`
-/

namespace A131654.P5422288703286342571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (f1 (n + 1) - f1 n + 10).toNat

end

end A131654.P5422288703286342571

/-! ## A131654.P12478362153139856030

`A007954(10-Δ[A030644(n)])`
-/

namespace A131654.P12478362153139856030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (10 - (f1 (n + 1) - f1 n)).toNat

end

end A131654.P12478362153139856030

/-! ## A131654.P2466091174006991360

`A010879(10-Δ[A030644(n)])`
-/

namespace A131654.P2466091174006991360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (10 - (f1 (n + 1) - f1 n)).toNat

end

end A131654.P2466091174006991360

/-! ## A131654.P7632163192851778328

`A079475(10-Δ[A030644(n)])`
-/

namespace A131654.P7632163192851778328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079475 (10 - (f1 (n + 1) - f1 n)).toNat

end

end A131654.P7632163192851778328

/-! ## A131654.P17707281562262269364

`A007954(A095916(n+1)+10)`
-/

namespace A131654.P17707281562262269364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A095916 (n + 1) + 10).toNat

end

end A131654.P17707281562262269364

/-! ## A131654.P9558571367521824560

`A079475(A095916(n+1)+10)`
-/

namespace A131654.P9558571367521824560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079475 (A095916 (n + 1) + 10).toNat

end

end A131654.P9558571367521824560

/-!
# A131657: For n >= 1, put A_n(z) = Sum_{j>=0} (n*j)!/(j!^n) * z^j and B_n(z) = Sum_{j>=0} (n*j)!/(j!^n) * z^j * (Sum_{k=1..j*n} (1/k)), and let b(n) be the largest integer for which exp(B_n(z)/(b(n)*A_n(z))) has integral coefficients. The sequence is b(n).

The programs for A131657, there is no canonical definition to state claims against.
-/

/-! ## A131657.P7199506233292241631

`gcd(A024167(n+2)², A081048(n+1))`
-/

namespace A131657.P7199506233292241631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024167 (n + 2) ^ 2) (A081048 (n + 1))

end

end A131657.P7199506233292241631

/-! ## A131657.P10021905230759980800

`A056612(n+1)*A093818(A048671(n+1))`
-/

namespace A131657.P10021905230759980800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056612 (n + 1) * A093818 (A048671 (n + 1)).toNat

end

end A131657.P10021905230759980800

/-! ## A131657.P17680444170282814666

`gcd(A025527(n+1), A025529(n+1))*A025527(n+1)`
-/

namespace A131657.P17680444170282814666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A025527 (n + 1)) (A025529 (n + 1)) : ℤ) * A025527 (n + 1)

end

end A131657.P17680444170282814666

/-! ## A131657.P18173723992639164779

`(n+1)!/A002805(n+1)*A093818(A048671(n+1))`
-/

namespace A131657.P18173723992639164779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A002805 (n + 1) : ℚ) * (A093818 (A048671 (n + 1)).toNat : ℚ)

end

end A131657.P18173723992639164779

/-! ## A131657.P15587767358148591612

`A025527(n+1)*A110566(n+1)*A093818(A048671(n+1))`
-/

namespace A131657.P15587767358148591612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A110566 (n + 1) * A093818 (A048671 (n + 1)).toNat

end

end A131657.P15587767358148591612

/-!
# A131658: For n >= 1, put A_n(z) = Sum_{j>=0} (n*j)!/(j!^n) * z^j and B_n(z) = Sum_{j>=0} (n*j)!/(j!^n) * z^j * (Sum__{k=j+1..j*n} (1/k)), and let u(n) be the largest integer for which exp(B_n(z)/(u(n)*A_n(z))) has integral coefficients. The sequence is u(n).

The programs for A131658, there is no canonical definition to state claims against.
-/

/-! ## A131658.P13533949287584266284

`gcd(n!², A001705(n))`
-/

namespace A131658.P13533949287584266284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n ^ 2 : ℤ) (A001705 n)

end

end A131658.P13533949287584266284

/-! ## A131658.P9137963745298639860

`gcd(A001044(n), A001705(n))`
-/

namespace A131658.P9137963745298639860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001044 n) (A001705 n)

end

end A131658.P9137963745298639860

/-! ## A131658.P17306988057336118587

`gcd(A081047(n+1), A133942(n)²)`
-/

namespace A131658.P17306988057336118587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081047 (n + 1)) (A133942 n ^ 2)

end

end A131658.P17306988057336118587

/-! ## A131658.P7356772244543491315

`gcd(A034386(n), A064169(n+1))*A056612(n+1)`
-/

namespace A131658.P7356772244543491315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A034386 n) (A064169 (n + 1)) : ℤ) * A056612 (n + 1)

end

end A131658.P7356772244543491315

/-! ## A131658.P10350790322253580875

`gcd(A025527(n+1), A027457(n+1))*A025527(n+1)`
-/

namespace A131658.P10350790322253580875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A025527 (n + 1)) (A027457 (n + 1)) : ℤ) * A025527 (n + 1)

end

end A131658.P10350790322253580875

/-!
# A131664: A string of n 1's repeated n times.

The programs for A131664, the canonical program `A131664.P12941882996310743922` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131664 has offset 1).

The definition of A131664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131664.P6518444561745844972

`A000042(∑[char[∑[n]]])`
-/

namespace A131664.P6518444561745844972
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131664.P6518444561745844972

namespace A131664

/-- `A000042(∑[char[∑[n]]])` -/
def P6518444561745844972.Spec : Prop :=
  ∀ n, P6518444561745844972.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P16445589263496736360

`A002275(∑[char[∑[n]]])`
-/

namespace A131664.P16445589263496736360
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131664.P16445589263496736360

namespace A131664

/-- `A002275(∑[char[∑[n]]])` -/
def P16445589263496736360.Spec : Prop :=
  ∀ n, P16445589263496736360.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P14173592670121965455

`A047855(∑[char[∑[n]]])-1`
-/

namespace A131664.P14173592670121965455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A131664.P14173592670121965455

namespace A131664

/-- `A047855(∑[char[∑[n]]])-1` -/
def P14173592670121965455.Spec : Prop :=
  ∀ n, P14173592670121965455.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P9988061251015735434

`A002276(∑[char[∑[n]]])/2`
-/

namespace A131664.P9988061251015735434
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A131664.P9988061251015735434

namespace A131664

/-- `A002276(∑[char[∑[n]]])/2` -/
def P9988061251015735434.Spec : Prop :=
  ∀ n, P9988061251015735434.a n = (A131664 (n + 1) : ℚ)

end A131664

/-! ## A131664.P9950423375918286257

`A105279(∑[char[∑[n+1]]])+1`
-/

namespace A131664.P9950423375918286257
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A131664.P9950423375918286257

namespace A131664

/-- `A105279(∑[char[∑[n+1]]])+1` -/
def P9950423375918286257.Spec : Prop :=
  ∀ n, P9950423375918286257.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P11072098398132805442

`A068995(A131507(n))`
-/

namespace A131664.P11072098398132805442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068995 (A131507 n).toNat

end

end A131664.P11072098398132805442

namespace A131664

/-- `A068995(A131507(n))` -/
def P11072098398132805442.Spec : Prop :=
  ∀ n, P11072098398132805442.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P12941882996310743922

`A287468(A279891(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131664

/-- `A287468(A279891(n))` -/
def P12941882996310743922.Spec : Prop :=
  ∀ n, P12941882996310743922.a n = A131664 (n + 1)

theorem P12941882996310743922.correct : P12941882996310743922.Spec := by
  intro n
  simp only [A131664, Nat.add_sub_cancel]

end A131664

/-! ## A131664.P13392386759753977877

`A081857(A111650(n+1))`
-/

namespace A131664.P13392386759753977877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (A111650 (n + 1)).toNat

end

end A131664.P13392386759753977877

namespace A131664

/-- `A081857(A111650(n+1))` -/
def P13392386759753977877.Spec : Prop :=
  ∀ n, P13392386759753977877.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P14571294051700049610

`A071762(A127739(n+1))`
-/

namespace A131664.P14571294051700049610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (A127739 (n + 1)).toNat

end

end A131664.P14571294051700049610

namespace A131664

/-- `A071762(A127739(n+1))` -/
def P14571294051700049610.Spec : Prop :=
  ∀ n, P14571294051700049610.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P4390318905908859141

`or(1, A105279(A003056(n)))`
-/

namespace A131664.P4390318905908859141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A105279 (A003056 n).toNat)

end

end A131664.P4390318905908859141

namespace A131664

/-- `or(1, A105279(A003056(n)))` -/
def P4390318905908859141.Spec : Prop :=
  ∀ n, P4390318905908859141.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P8004349517735963818

`A094026(2*A003056(n)+1)`
-/

namespace A131664.P8004349517735963818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (2 * A003056 n + 1).toNat

end

end A131664.P8004349517735963818

namespace A131664

/-- `A094026(2*A003056(n)+1)` -/
def P8004349517735963818.Spec : Prop :=
  ∀ n, P8004349517735963818.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P2919463560688510211

`or(1, A000042(A002024(n+1)))`
-/

namespace A131664.P2919463560688510211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000042 (A002024 (n + 1)).toNat)

end

end A131664.P2919463560688510211

namespace A131664

/-- `or(1, A000042(A002024(n+1)))` -/
def P2919463560688510211.Spec : Prop :=
  ∀ n, P2919463560688510211.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P6554417491348175131

`A071762(A025581(n)+n+1)`
-/

namespace A131664.P6554417491348175131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (A025581 n + (n + 1 : ℤ)).toNat

end

end A131664.P6554417491348175131

namespace A131664

/-- `A071762(A025581(n)+n+1)` -/
def P6554417491348175131.Spec : Prop :=
  ∀ n, P6554417491348175131.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P18028126265520360479

`A309761(A004736(n+1)+n)`
-/

namespace A131664.P18028126265520360479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A004736 (n + 1) + (n : ℤ)).toNat

end

end A131664.P18028126265520360479

namespace A131664

/-- `A309761(A004736(n+1)+n)` -/
def P18028126265520360479.Spec : Prop :=
  ∀ n, P18028126265520360479.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P6860485737394229992

`A290671(2*(A002024(n+1)-1))`
-/

namespace A131664.P6860485737394229992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290671 (2 * (A002024 (n + 1) - 1)).toNat

end

end A131664.P6860485737394229992

namespace A131664

/-- `A290671(2*(A002024(n+1)-1))` -/
def P6860485737394229992.Spec : Prop :=
  ∀ n, P6860485737394229992.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P602192645216758097

`2*A034050(n+1)-A199985(n+1)`
-/

namespace A131664.P602192645216758097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034050 (n + 1) - A199985 (n + 1)

end

end A131664.P602192645216758097

namespace A131664

/-- `2*A034050(n+1)-A199985(n+1)` -/
def P602192645216758097.Spec : Prop :=
  ∀ n, P602192645216758097.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P2661850375238463846

`2*A199986(n+1)-A034050(n+1)`
-/

namespace A131664.P2661850375238463846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199986 (n + 1) - A034050 (n + 1)

end

end A131664.P2661850375238463846

namespace A131664

/-- `2*A199986(n+1)-A034050(n+1)` -/
def P2661850375238463846.Spec : Prop :=
  ∀ n, P2661850375238463846.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P14172671771410912885

`A094026(A003056(n)+A003056(n)+1)`
-/

namespace A131664.P14172671771410912885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A003056 n + (A003056 n + 1)).toNat

end

end A131664.P14172671771410912885

namespace A131664

/-- `A094026(A003056(n)+A003056(n)+1)` -/
def P14172671771410912885.Spec : Prop :=
  ∀ n, P14172671771410912885.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P13551426969694199144

`A071762(A057944(A002024(n+1)+n))`
-/

namespace A131664.P13551426969694199144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (A057944 (A002024 (n + 1) + (n : ℤ)).toNat).toNat

end

end A131664.P13551426969694199144

namespace A131664

/-- `A071762(A057944(A002024(n+1)+n))` -/
def P13551426969694199144.Spec : Prop :=
  ∀ n, P13551426969694199144.a n = A131664 (n + 1)

end A131664

/-! ## A131664.P406238599548779344

`A071762(A057944(A003056(n)+n+1))`
-/

namespace A131664.P406238599548779344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (A057944 (A003056 n + (n + 1 : ℤ)).toNat).toNat

end

end A131664.P406238599548779344

namespace A131664

/-- `A071762(A057944(A003056(n)+n+1))` -/
def P406238599548779344.Spec : Prop :=
  ∀ n, P406238599548779344.a n = A131664 (n + 1)

end A131664

/-!
# A131665: Sequence is identical to its third differences in absolute value: a(0), a(1), a(2), a(2n+1)=3a(2n)-3a(2n-1)+2a(2n-2), a(2n+2)=3a(2n+1)-3a(2n), with a(0)=a(1)=0, a(2)=1.

The programs for A131665, the canonical program `A131665.P8280146326283789232` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131665 has offset 0).

The definition of A131665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131665.P8280146326283789232

`3*a(n-2)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6, a(5)=11`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A131665

/-- `3*a(n-2)-3*a(n-4)` -/
def P8280146326283789232.Spec : Prop :=
  ∀ n, P8280146326283789232.a n = A131665 n

theorem P8280146326283789232.correct : P8280146326283789232.Spec := by
  intro n
  simp only [A131665]

end A131665

/-! ## A131665.P16536030563097674212

`A237271(A045655(n))+∑[n]-A185974(n)`
-/

namespace A131665.P16536030563097674212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A045655 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A185974 n

end

end A131665.P16536030563097674212

namespace A131665

/-- `A237271(A045655(n))+∑[n]-A185974(n)` -/
def P16536030563097674212.Spec : Prop :=
  ∀ n, P16536030563097674212.a n = A131665 n

end A131665

/-! ## A131665.P7086319598767461563

`A024327(A064542(n+1)*A291079(n+1))`
-/

namespace A131665.P7086319598767461563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A064542 (n + 1) * A291079 (n + 1)).toNat

end

end A131665.P7086319598767461563

namespace A131665

/-- `A024327(A064542(n+1)*A291079(n+1))` -/
def P7086319598767461563.Spec : Prop :=
  ∀ n, P7086319598767461563.a n = A131665 n

end A131665

/-!
# A131666: First differences of (A113405 prefixed with a 0).

The programs for A131666, the canonical program `A131666.P17333934829367052369` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131666 has offset 0).

The definition of A131666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131666.P17333934829367052369

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A131666

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P17333934829367052369.Spec : Prop :=
  ∀ n, P17333934829367052369.a n = A131666 n

theorem P17333934829367052369.correct : P17333934829367052369.Spec := by
  intro n
  simp only [A131666]

end A131666

/-! ## A131666.P11805270834960837437

`ogf((x^2-x^3)/(1-2x+x^3-2x^4))`
-/

namespace A131666.P11805270834960837437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -2, 0, 1, -2] n

end

end A131666.P11805270834960837437

namespace A131666

/-- `ogf((x^2-x^3)/(1-2x+x^3-2x^4))` -/
def P11805270834960837437.Spec : Prop :=
  ∀ n, P11805270834960837437.a n = A131666 n

end A131666

/-! ## A131666.P17609942119962385746

`2^(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A131666.P17609942119962385746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 3)

end

end A131666.P17609942119962385746

namespace A131666

/-- `2^(n-3)-a(n-3)` -/
def P17609942119962385746.Spec : Prop :=
  ∀ n, P17609942119962385746.a n = (A131666 n : ℚ)

end A131666

/-! ## A131666.P17651892374539402044

`A135259(n)+A092220(n)`
-/

namespace A131666.P17651892374539402044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 n + A092220 n

end

end A131666.P17651892374539402044

namespace A131666

/-- `A135259(n)+A092220(n)` -/
def P17651892374539402044.Spec : Prop :=
  ∀ n, P17651892374539402044.a n = A131666 n

end A131666

/-! ## A131666.P11707109346051253053

`A131090(n)-A092220(n)`
-/

namespace A131666.P11707109346051253053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n - A092220 n

end

end A131666.P11707109346051253053

namespace A131666

/-- `A131090(n)-A092220(n)` -/
def P11707109346051253053.Spec : Prop :=
  ∀ n, P11707109346051253053.a n = A131666 n

end A131666

/-! ## A131666.P13534801435034505013

`A131531(n+1)+A113405(n)`
-/

namespace A131666.P13534801435034505013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + A113405 n

end

end A131666.P13534801435034505013

namespace A131666

/-- `A131531(n+1)+A113405(n)` -/
def P13534801435034505013.Spec : Prop :=
  ∀ n, P13534801435034505013.a n = A131666 n

end A131666

/-! ## A131666.P9627387202940896059

`A328881(n)-A131531(n+3)`
-/

namespace A131666.P9627387202940896059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 n - A131531 (n + 3)

end

end A131666.P9627387202940896059

namespace A131666

/-- `A328881(n)-A131531(n+3)` -/
def P9627387202940896059.Spec : Prop :=
  ∀ n, P9627387202940896059.a n = A131666 n

end A131666

/-! ## A131666.P6406390915945752140

`A133511(n)+2*A131531(n+1)`
-/

namespace A131666.P6406390915945752140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n + 2 * A131531 (n + 1)

end

end A131666.P6406390915945752140

namespace A131666

/-- `A133511(n)+2*A131531(n+1)` -/
def P6406390915945752140.Spec : Prop :=
  ∀ n, P6406390915945752140.a n = A131666 n

end A131666

/-! ## A131666.P13304345057633605236

`A113405(n)+A113405(n)-A133511(n)`
-/

namespace A131666.P13304345057633605236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + (A113405 n - A133511 n)

end

end A131666.P13304345057633605236

namespace A131666

/-- `A113405(n)+A113405(n)-A133511(n)` -/
def P13304345057633605236.Spec : Prop :=
  ∀ n, P13304345057633605236.a n = A131666 n

end A131666

/-! ## A131666.P11553800451984872683

`A131714(n+1)+A328881(n)+A131556(n)`
-/

namespace A131666.P11553800451984872683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131714 (n + 1) + (A328881 n + A131556 n)

end

end A131666.P11553800451984872683

namespace A131666

/-- `A131714(n+1)+A328881(n)+A131556(n)` -/
def P11553800451984872683.Spec : Prop :=
  ∀ n, P11553800451984872683.a n = A131666 n

end A131666

/-! ## A131666.P11909803529001978949

`A130151(n)+A133511(n)-A130151(n+1)`
-/

namespace A131666.P11909803529001978949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n + (A133511 n - A130151 (n + 1))

end

end A131666.P11909803529001978949

namespace A131666

/-- `A130151(n)+A133511(n)-A130151(n+1)` -/
def P11909803529001978949.Spec : Prop :=
  ∀ n, P11909803529001978949.a n = A131666 n

end A131666

/-! ## A131666.P17933180417414587045

`A131714(n)+A135261(n)-A131531(n+2)`
-/

namespace A131666.P17933180417414587045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131714 n + (A135261 n - A131531 (n + 2))

end

end A131666.P17933180417414587045

namespace A131666

/-- `A131714(n)+A135261(n)-A131531(n+2)` -/
def P17933180417414587045.Spec : Prop :=
  ∀ n, P17933180417414587045.a n = A131666 n

end A131666

/-! ## A131666.P11082450908609901096

`A131531(n+1)+A131090(n)-A131531(n+2)`
-/

namespace A131666.P11082450908609901096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (A131090 n - A131531 (n + 2))

end

end A131666.P11082450908609901096

namespace A131666

/-- `A131531(n+1)+A131090(n)-A131531(n+2)` -/
def P11082450908609901096.Spec : Prop :=
  ∀ n, P11082450908609901096.a n = A131666 n

end A131666

/-! ## A131666.P1595880287480308282

`A131531(n+2)+A135259(n)-A131531(n+1)`
-/

namespace A131666.P1595880287480308282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 2) + (A135259 n - A131531 (n + 1))

end

end A131666.P1595880287480308282

namespace A131666

/-- `A131531(n+2)+A135259(n)-A131531(n+1)` -/
def P1595880287480308282.Spec : Prop :=
  ∀ n, P1595880287480308282.a n = A131666 n

end A131666

/-! ## A131666.P2999858755822644686

`Δ[A113405(n)]`
-/

namespace A131666.P2999858755822644686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131666.P2999858755822644686

namespace A131666

/-- `Δ[A113405(n)]` -/
def P2999858755822644686.Spec : Prop :=
  ∀ n, P2999858755822644686.a n = A131666 n

end A131666

/-! ## A131666.P14489967466521088658

`A113405(n+1)-A113405(n)`
-/

namespace A131666.P14489967466521088658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 1) - A113405 n

end

end A131666.P14489967466521088658

namespace A131666

/-- `A113405(n+1)-A113405(n)` -/
def P14489967466521088658.Spec : Prop :=
  ∀ n, P14489967466521088658.a n = A131666 n

end A131666

/-! ## A131666.P9246762279414430837

`A139797(n+2)-A139797(n)`
-/

namespace A131666.P9246762279414430837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 (n + 2) - A139797 n

end

end A131666.P9246762279414430837

namespace A131666

/-- `A139797(n+2)-A139797(n)` -/
def P9246762279414430837.Spec : Prop :=
  ∀ n, P9246762279414430837.a n = A131666 n

end A131666

/-! ## A131666.P13374439626220376385

`A348405(n+2)-A348405(n)`
-/

namespace A131666.P13374439626220376385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348405 (n + 2) - A348405 n

end

end A131666.P13374439626220376385

namespace A131666

/-- `A348405(n+2)-A348405(n)` -/
def P13374439626220376385.Spec : Prop :=
  ∀ n, P13374439626220376385.a n = A131666 n

end A131666

/-! ## A131666.P11284021469404736817

`2*A113405(n)-A133511(n)`
-/

namespace A131666.P11284021469404736817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113405 n - A133511 n

end

end A131666.P11284021469404736817

namespace A131666

/-- `2*A113405(n)-A133511(n)` -/
def P11284021469404736817.Spec : Prop :=
  ∀ n, P11284021469404736817.a n = A131666 n

end A131666

/-! ## A131666.P2753446389013150114

`Δ[Δ[A153234(n)]]`
-/

namespace A131666.P2753446389013150114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131666.P2753446389013150114

namespace A131666

/-- `Δ[Δ[A153234(n)]]` -/
def P2753446389013150114.Spec : Prop :=
  ∀ n, P2753446389013150114.a n = A131666 n

end A131666

/-!
# A131667: List of triples 2n, 1-2n, 0, n >= 1.

The programs for A131667, the canonical program `A131667.P8956363722692119825` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131667 has offset 1).

The definition of A131667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131667.P8956363722692119825

`Δ[floor((n+1)/gcd(3, n²+n))]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A131667

/-- `Δ[floor((n+1)/gcd(3, n²+n))]` -/
def P8956363722692119825.Spec : Prop :=
  ∀ n, P8956363722692119825.a n = A131667 (n + 1)

theorem P8956363722692119825.correct : P8956363722692119825.Spec := by
  intro n
  simp only [A131667, Nat.add_sub_cancel]

end A131667

/-! ## A131667.P10472467847014385655

`1-floor(Δ[(n+1)/gcd(n+2, n-1)])`
-/

namespace A131667.P10472467847014385655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊f1 (n + 1) - f1 n⌋

end

end A131667.P10472467847014385655

namespace A131667

/-- `1-floor(Δ[(n+1)/gcd(n+2, n-1)])` -/
def P10472467847014385655.Spec : Prop :=
  ∀ n, P10472467847014385655.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P6623975768956601197

`Δ[A014682(ceil(2*n/3))]`
-/

namespace A131667.P6623975768956601197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ⌈2 * ((n : ℚ) / 3)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131667.P6623975768956601197

namespace A131667

/-- `Δ[A014682(ceil(2*n/3))]` -/
def P6623975768956601197.Spec : Prop :=
  ∀ n, P6623975768956601197.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P4458340978850633528

`Δ[(n+1)%A332057(n+1)]`
-/

namespace A131667.P4458340978850633528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A332057 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131667.P4458340978850633528

namespace A131667

/-- `Δ[(n+1)%A332057(n+1)]` -/
def P4458340978850633528.Spec : Prop :=
  ∀ n, P4458340978850633528.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P9492949728331211055

`(A008620(n)+A008611(n))*A049347(n)`
-/

namespace A131667.P9492949728331211055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008620 n + A008611 n) * A049347 n

end

end A131667.P9492949728331211055

namespace A131667

/-- `(A008620(n)+A008611(n))*A049347(n)` -/
def P9492949728331211055.Spec : Prop :=
  ∀ n, P9492949728331211055.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P6868494407137567475

`(A133310(n)+A049347(n))*A049347(n)`
-/

namespace A131667.P6868494407137567475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133310 n + A049347 n) * A049347 n

end

end A131667.P6868494407137567475

namespace A131667

/-- `(A133310(n)+A049347(n))*A049347(n)` -/
def P6868494407137567475.Spec : Prop :=
  ∀ n, P6868494407137567475.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P4850194060997638992

`(A269098(n)+A049347(n))*A049347(n)`
-/

namespace A131667.P4850194060997638992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A269098 n + A049347 n) * A049347 n

end

end A131667.P4850194060997638992

namespace A131667

/-- `(A269098(n)+A049347(n))*A049347(n)` -/
def P4850194060997638992.Spec : Prop :=
  ∀ n, P4850194060997638992.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P13321349501787157255

`(A166711(n+1)+A049347(n))*A049347(n)`
-/

namespace A131667.P13321349501787157255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166711 (n + 1) + A049347 n) * A049347 n

end

end A131667.P13321349501787157255

namespace A131667

/-- `(A166711(n+1)+A049347(n))*A049347(n)` -/
def P13321349501787157255.Spec : Prop :=
  ∀ n, P13321349501787157255.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P11323522164973907046

`Δ[gcd(A000212(n), A006331(n))]`
-/

namespace A131667.P11323522164973907046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000212 n) (A006331 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A131667.P11323522164973907046

namespace A131667

/-- `Δ[gcd(A000212(n), A006331(n))]` -/
def P11323522164973907046.Spec : Prop :=
  ∀ n, P11323522164973907046.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P12508723494769874051

`A049347(n)*A133310(n+1)`
-/

namespace A131667.P12508723494769874051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A133310 (n + 1)

end

end A131667.P12508723494769874051

namespace A131667

/-- `A049347(n)*A133310(n+1)` -/
def P12508723494769874051.Spec : Prop :=
  ∀ n, P12508723494769874051.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P8079839257619364511

`1-Δ[Δ[A000124(A004396(n))]]`
-/

namespace A131667.P8079839257619364511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A004396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A131667.P8079839257619364511

namespace A131667

/-- `1-Δ[Δ[A000124(A004396(n))]]` -/
def P8079839257619364511.Spec : Prop :=
  ∀ n, P8079839257619364511.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P12846371858720039617

`(1-A080425(n))*A131380(n+1)`
-/

namespace A131667.P12846371858720039617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080425 n) * A131380 (n + 1)

end

end A131667.P12846371858720039617

namespace A131667

/-- `(1-A080425(n))*A131380(n+1)` -/
def P12846371858720039617.Spec : Prop :=
  ∀ n, P12846371858720039617.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P8161264720222042500

`(A168052(n)+A010892(n+1))*A010892(n)`
-/

namespace A131667.P8161264720222042500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168052 n + A010892 (n + 1)) * A010892 n

end

end A131667.P8161264720222042500

namespace A131667

/-- `(A168052(n)+A010892(n+1))*A010892(n)` -/
def P8161264720222042500.Spec : Prop :=
  ∀ n, P8161264720222042500.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P2849592110752787725

`(A272071(n+1)+A049347(n+1))*A049347(n)`
-/

namespace A131667.P2849592110752787725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A272071 (n + 1) + A049347 (n + 1)) * A049347 n

end

end A131667.P2849592110752787725

namespace A131667

/-- `(A272071(n+1)+A049347(n+1))*A049347(n)` -/
def P2849592110752787725.Spec : Prop :=
  ∀ n, P2849592110752787725.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P2418123854464627077

`(A131534(n+1)-A131534(n))*A131380(n+1)`
-/

namespace A131667.P2418123854464627077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131534 (n + 1) - A131534 n) * A131380 (n + 1)

end

end A131667.P2418123854464627077

namespace A131667

/-- `(A131534(n+1)-A131534(n))*A131380(n+1)` -/
def P2418123854464627077.Spec : Prop :=
  ∀ n, P2418123854464627077.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P6442184626060750719

`(A010872(n+2)-1)*A131380(n+1)`
-/

namespace A131667.P6442184626060750719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010872 (n + 2) - 1) * A131380 (n + 1)

end

end A131667.P6442184626060750719

namespace A131667

/-- `(A010872(n+2)-1)*A131380(n+1)` -/
def P6442184626060750719.Spec : Prop :=
  ∀ n, P6442184626060750719.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P2641295934025719959

`A079978(n+2)+2*A128615(n+1)`
-/

namespace A131667.P2641295934025719959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (n + 2) + 2 * A128615 (n + 1)

end

end A131667.P2641295934025719959

namespace A131667

/-- `A079978(n+2)+2*A128615(n+1)` -/
def P2641295934025719959.Spec : Prop :=
  ∀ n, P2641295934025719959.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P16461979749061432247

`Δ[Δ[A211546(n+1)]]`
-/

namespace A131667.P16461979749061432247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131667.P16461979749061432247

namespace A131667

/-- `Δ[Δ[A211546(n+1)]]` -/
def P16461979749061432247.Spec : Prop :=
  ∀ n, P16461979749061432247.a n = A131667 (n + 1)

end A131667

/-! ## A131667.P2027268861740933939

`A057078(2*n)*A131380(n+1)`
-/

namespace A131667.P2027268861740933939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (2 * n) * A131380 (n + 1)

end

end A131667.P2027268861740933939

namespace A131667

/-- `A057078(2*n)*A131380(n+1)` -/
def P2027268861740933939.Spec : Prop :=
  ∀ n, P2027268861740933939.a n = A131667 (n + 1)

end A131667

/-!
# A131668: Smallest number whose sum of digits is 2n+1.

The programs for A131668, the canonical program `A131668.P2464046413389403191` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131668 has offset 0).

The definition of A131668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131668.P2464046413389403191

`A051885(2*n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A131668

/-- `A051885(2*n+1)` -/
def P2464046413389403191.Spec : Prop :=
  ∀ n, P2464046413389403191.a n = A131668 n

theorem P2464046413389403191.correct : P2464046413389403191.Spec := by
  intro n
  simp only [A131668]

end A131668

/-! ## A131668.P1518039876235083831

`A205960(Δ[n²])`
-/

namespace A131668.P1518039876235083831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205960 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131668.P1518039876235083831

namespace A131668

/-- `A205960(Δ[n²])` -/
def P1518039876235083831.Spec : Prop :=
  ∀ n, P1518039876235083831.a n = A131668 n

end A131668

/-! ## A131668.P18176701131457479304

`record[A051885(xor(1, n))]`
-/

namespace A131668.P18176701131457479304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131668.P18176701131457479304

namespace A131668

/-- `record[A051885(xor(1, n))]` -/
def P18176701131457479304.Spec : Prop :=
  ∀ n, P18176701131457479304.a n = A131668 n

end A131668

/-! ## A131668.P1752739591048699931

`A131766(n)+Δ[n²]`
-/

namespace A131668.P1752739591048699931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131766 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A131668.P1752739591048699931

namespace A131668

/-- `A131766(n)+Δ[n²]` -/
def P1752739591048699931.Spec : Prop :=
  ∀ n, P1752739591048699931.a n = A131668 n

end A131668

/-! ## A131668.P17210867721156056285

`record[A051885(n^(n%2))]`
-/

namespace A131668.P17210867721156056285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131668.P17210867721156056285

namespace A131668

/-- `record[A051885(n^(n%2))]` -/
def P17210867721156056285.Spec : Prop :=
  ∀ n, P17210867721156056285.a n = A131668 n

end A131668

/-! ## A131668.P13454529415068416723

`record[A051885(n^and(1, n))]`
-/

namespace A131668.P13454529415068416723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131668.P13454529415068416723

namespace A131668

/-- `record[A051885(n^and(1, n))]` -/
def P13454529415068416723.Spec : Prop :=
  ∀ n, P13454529415068416723.a n = A131668 n

end A131668

/-! ## A131668.P7501269254399388266

`A037124(2*(n+1))-1`
-/

namespace A131668.P7501269254399388266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (2 * (n + 1)) - 1

end

end A131668.P7501269254399388266

namespace A131668

/-- `A037124(2*(n+1))-1` -/
def P7501269254399388266.Spec : Prop :=
  ∀ n, P7501269254399388266.a n = A131668 n

end A131668

/-!
# A131669: Odd digits followed by positive even digits.

The programs for A131669, the canonical program `A131669.P7410260079521432683` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131669 has offset 1).

The definition of A131669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131669.P7410260079521432683

`dr(Δ[n²])`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A131669

/-- `dr(Δ[n²])` -/
def P7410260079521432683.Spec : Prop :=
  ∀ n, (P7410260079521432683.a n : ℤ) = A131669 (n + 1)

theorem P7410260079521432683.correct : P7410260079521432683.Spec := by
  intro n
  simp only [A131669, Nat.add_sub_cancel]

end A131669

/-!
# A131670: Period 5: repeat [1, 0, -1, 0, 1].

The programs for A131670, the canonical program `A131670.P13682296779180814845` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131670 has offset 0).

The definition of A131670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131670.P13682296779180814845

`abs(n%5-2)-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A131670

/-- `abs(n%5-2)-1` -/
def P13682296779180814845.Spec : Prop :=
  ∀ n, P13682296779180814845.a n = A131670 n

theorem P13682296779180814845.correct : P13682296779180814845.Spec := by
  intro n
  simp only [A131670]

end A131670

/-!
# A131673: Size of the largest BDD of symmetric Boolean functions of n variables when the sink nodes are counted.

The programs for A131673, there is no canonical definition to state claims against.
-/

/-! ## A131673.P1302292172802127361

`A131674(n)+ceil(cosh(sin(n)))`
-/

namespace A131673.P1302292172802127361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131674 n + ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A131673.P1302292172802127361

/-! ## A131673.P11832064665860036385

`∑[A103354(n+4)]-floor(2/acot(n))`
-/

namespace A131673.P11832064665860036385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A131673.P11832064665860036385

/-! ## A131673.P1486029395172409917

`a(n-1)+A247983(n+2)-1` with `a(0)=1, a(1)=3`
-/

namespace A131673.P1486029395172409917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (A247983 (n + 2) - 1)

end

end A131673.P1486029395172409917

/-! ## A131673.P11789598270896755327

`a(n-1)+Δ[A006697(n+2)]-2` with `a(0)=1, a(1)=3`
-/

namespace A131673.P11789598270896755327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006697 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n - 2)

end

end A131673.P11789598270896755327

/-! ## A131673.P4246072982357994401

`A131674(n)+A000122(n²)`
-/

namespace A131673.P4246072982357994401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131674 n + A000122 (n ^ 2)

end

end A131673.P4246072982357994401

/-! ## A131673.P6311083038512064397

`A131674(n)+A036452(n+1)`
-/

namespace A131673.P6311083038512064397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131674 n + A036452 (n + 1)

end

end A131673.P6311083038512064397

/-! ## A131673.P6834386767870665103

`A131674(n)+A036453(n+1)`
-/

namespace A131673.P6834386767870665103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131674 n + A036453 (n + 1)

end

end A131673.P6834386767870665103

/-! ## A131673.P10287869653619526654

`A131674(n)+A000032(C(2, n+2))`
-/

namespace A131673.P10287869653619526654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131674 n + A000032 (Nat.choose 2 (n + 2))

end

end A131673.P10287869653619526654

/-! ## A131673.P15508109698967257115

`∏{e}[A020639(n+1)², A131674(n)+#]`
-/

namespace A131673.P15508109698967257115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A131674 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A131673.P15508109698967257115

/-!
# A131674: Size of the largest BDD of symmetric Boolean functions of n variables when the sink nodes are not counted.

The programs for A131674, the canonical program `A131674.P1307392456214761516` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131674 has offset 0).

The definition of A131674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131674.P1307392456214761516

`∑[∑[char[comp[2^n-3+n]]]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A131674

/-- `∑[∑[char[comp[2^n-3+n]]]]` -/
def P1307392456214761516.Spec : Prop :=
  ∀ n, (P1307392456214761516.a n : ℤ) = A131674 n

theorem P1307392456214761516.correct : P1307392456214761516.Spec := by
  intro n
  simp only [A131674]

end A131674

/-! ## A131674.P9782937716562311028

`A006697(n+3)-2*(n+3)`
-/

namespace A131674.P9782937716562311028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006697 (n + 3) - (2 * (n + 3) : ℤ)

end

end A131674.P9782937716562311028

namespace A131674

/-- `A006697(n+3)-2*(n+3)` -/
def P9782937716562311028.Spec : Prop :=
  ∀ n, P9782937716562311028.a n = A131674 n

end A131674

/-! ## A131674.P7402718966940439489

`∑[2*∑[A288132(n+4)]]/2`
-/

namespace A131674.P7402718966940439489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A131674.P7402718966940439489

namespace A131674

/-- `∑[2*∑[A288132(n+4)]]/2` -/
def P7402718966940439489.Spec : Prop :=
  ∀ n, P7402718966940439489.a n = (A131674 n : ℚ)

end A131674

/-! ## A131674.P7882038743702446588

`∑[A103354(n+4)]-2*(n+1)`
-/

namespace A131674.P7882038743702446588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * (n + 1) : ℤ)

end

end A131674.P7882038743702446588

namespace A131674

/-- `∑[A103354(n+4)]-2*(n+1)` -/
def P7882038743702446588.Spec : Prop :=
  ∀ n, P7882038743702446588.a n = A131674 n

end A131674

/-! ## A131674.P1551769995159028668

`A003982(3*n+2)+∑[∑[A288132(n+4)]]`
-/

namespace A131674.P1551769995159028668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131674.P1551769995159028668

namespace A131674

/-- `A003982(3*n+2)+∑[∑[A288132(n+4)]]` -/
def P1551769995159028668.Spec : Prop :=
  ∀ n, P1551769995159028668.a n = A131674 n

end A131674

/-! ## A131674.P5005429035138262218

`∑[A247983(n+2)]-(n+1)`
-/

namespace A131674.P5005429035138262218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A131674.P5005429035138262218

namespace A131674

/-- `∑[A247983(n+2)]-(n+1)` -/
def P5005429035138262218.Spec : Prop :=
  ∀ n, P5005429035138262218.a n = A131674 n

end A131674

/-! ## A131674.P3586094193050063448

`and(floor(acot(n))-1, A131673(n)-2)`
-/

namespace A131674.P3586094193050063448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1) (A131673 n - 2)

end

end A131674.P3586094193050063448

namespace A131674

/-- `and(floor(acot(n))-1, A131673(n)-2)` -/
def P3586094193050063448.Spec : Prop :=
  ∀ n, P3586094193050063448.a n = A131674 n

end A131674

/-! ## A131674.P9360592363138397116

`A289207(A131673(n))`
-/

namespace A131674.P9360592363138397116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A131673 n).toNat

end

end A131674.P9360592363138397116

namespace A131674

/-- `A289207(A131673(n))` -/
def P9360592363138397116.Spec : Prop :=
  ∀ n, P9360592363138397116.a n = A131674 n

end A131674

/-! ## A131674.P9730947509925301133

`A131673(n)-A036452(n+1)`
-/

namespace A131674.P9730947509925301133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131673 n - A036452 (n + 1)

end

end A131674.P9730947509925301133

namespace A131674

/-- `A131673(n)-A036452(n+1)` -/
def P9730947509925301133.Spec : Prop :=
  ∀ n, P9730947509925301133.a n = A131674 n

end A131674

/-!
# A131681: a(n) = phi(binomial(2*n,n)*n^2).

The programs for A131681, there is no canonical definition to state claims against.
-/

/-! ## A131681.P4872528398669187748

`n*A131928(n)`
-/

namespace A131681.P4872528398669187748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131928 n

end

end A131681.P4872528398669187748

/-! ## A131681.P17843555147399845696

`A131705(n)/round(1/acot(n))`
-/

namespace A131681.P17843555147399845696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131705 n : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

end

end A131681.P17843555147399845696

/-! ## A131681.P16726520703582744355

`A131705(n)/A028310(n)`
-/

namespace A131681.P16726520703582744355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131705 n : ℚ) / (A028310 n : ℚ)

end

end A131681.P16726520703582744355

/-! ## A131681.P15504636009565156100

`abs(A131705(n)/A274922(n))`
-/

namespace A131681.P15504636009565156100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A131705 n : ℚ) / (A274922 n : ℚ)|

end

end A131681.P15504636009565156100

/-! ## A131681.P7348173125765148960

`2/A004277(n)*A131705(n)`
-/

namespace A131681.P7348173125765148960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A004277 n : ℚ) * (A131705 n : ℚ)

end

end A131681.P7348173125765148960

/-!
# A131682: a(n) = (n + 1!)*(n^2 + 2!)*(n^3 + 3!)/3!.

The programs for A131682, the canonical program `A131682.P8964864825238360789` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131682 has offset 0).

The definition of A131682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131682.P8964864825238360789

`A131509(n)+A064808(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131682

/-- `A131509(n)+A064808(n)` -/
def P8964864825238360789.Spec : Prop :=
  ∀ n, P8964864825238360789.a n = A131682 n

theorem P8964864825238360789.correct : P8964864825238360789.Spec := by
  intro n
  simp only [A131682]

end A131682

/-! ## A131682.P18331887248200009306

`A131509(n)+∑[A143689(n)]`
-/

namespace A131682.P18331887248200009306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131509 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131682.P18331887248200009306

namespace A131682

/-- `A131509(n)+∑[A143689(n)]` -/
def P18331887248200009306.Spec : Prop :=
  ∀ n, P18331887248200009306.a n = A131682 n

end A131682

/-! ## A131682.P12782538468298744104

`A100119(n)+A131509(n)+n`
-/

namespace A131682.P12782538468298744104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100119 n + (A131509 n + (n : ℤ))

end

end A131682.P12782538468298744104

namespace A131682

/-- `A100119(n)+A131509(n)+n` -/
def P12782538468298744104.Spec : Prop :=
  ∀ n, P12782538468298744104.a n = A131682 n

end A131682

/-! ## A131682.P14882928511459537091

`A131509(n)+∑[A000326(n)+1]`
-/

namespace A131682.P14882928511459537091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131509 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131682.P14882928511459537091

namespace A131682

/-- `A131509(n)+∑[A000326(n)+1]` -/
def P14882928511459537091.Spec : Prop :=
  ∀ n, P14882928511459537091.a n = A131682 n

end A131682

/-! ## A131682.P18364740211691148473

`A131509(n)+∑[A104249(n)-n]`
-/

namespace A131682.P18364740211691148473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131509 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131682.P18364740211691148473

namespace A131682

/-- `A131509(n)+∑[A104249(n)-n]` -/
def P18364740211691148473.Spec : Prop :=
  ∀ n, P18364740211691148473.a n = A131682 n

end A131682

/-! ## A131682.P10625803929724577994

`n+1+A131509(n)+A002411(n)`
-/

namespace A131682.P10625803929724577994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A131509 n + A002411 n)

end

end A131682.P10625803929724577994

namespace A131682

/-- `n+1+A131509(n)+A002411(n)` -/
def P10625803929724577994.Spec : Prop :=
  ∀ n, P10625803929724577994.a n = A131682 n

end A131682

/-! ## A131682.P12926421609036687408

`A131509(n)+∑[A005449(n)+1-n]`
-/

namespace A131682.P12926421609036687408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131509 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131682.P12926421609036687408

namespace A131682

/-- `A131509(n)+∑[A005449(n)+1-n]` -/
def P12926421609036687408.Spec : Prop :=
  ∀ n, P12926421609036687408.a n = A131682 n

end A131682

/-! ## A131682.P8479491582370328460

`A131509(n)+∑[A002522(n)+∑[n]-n]`
-/

namespace A131682.P8479491582370328460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131509 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131682.P8479491582370328460

namespace A131682

/-- `A131509(n)+∑[A002522(n)+∑[n]-n]` -/
def P8479491582370328460.Spec : Prop :=
  ∀ n, P8479491582370328460.a n = A131682 n

end A131682

/-! ## A131682.P5273181610357302504

`A131509(n)+∑[(A056105(n)+1+n)/2]`
-/

namespace A131682.P5273181610357302504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056105 n + 1 + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131509 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131682.P5273181610357302504

namespace A131682

/-- `A131509(n)+∑[(A056105(n)+1+n)/2]` -/
def P5273181610357302504.Spec : Prop :=
  ∀ n, P5273181610357302504.a n = (A131682 n : ℚ)

end A131682

/-! ## A131682.P17156352242656465189

`A131509(n)+∑[A000567(n)+2+n]/2`
-/

namespace A131682.P17156352242656465189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + 2 + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131509 n : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A131682.P17156352242656465189

namespace A131682

/-- `A131509(n)+∑[A000567(n)+2+n]/2` -/
def P17156352242656465189.Spec : Prop :=
  ∀ n, P17156352242656465189.a n = (A131682 n : ℚ)

end A131682

/-! ## A131682.P7961090022303830829

`A131509(n)+∑[A000217(n)+n²+1-n]`
-/

namespace A131682.P7961090022303830829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (n ^ 2 + 1 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131509 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131682.P7961090022303830829

namespace A131682

/-- `A131509(n)+∑[A000217(n)+n²+1-n]` -/
def P7961090022303830829.Spec : Prop :=
  ∀ n, P7961090022303830829.a n = A131682 n

end A131682

/-! ## A131682.P14085433920284805878

`A131509(n)+(n/2*A028310(n)+1)*(n+1)`
-/

namespace A131682.P14085433920284805878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131509 n : ℚ) + ((n : ℚ) / 2 * (A028310 n : ℚ) + 1) * (n + 1 : ℚ)

end

end A131682.P14085433920284805878

namespace A131682

/-- `A131509(n)+(n/2*A028310(n)+1)*(n+1)` -/
def P14085433920284805878.Spec : Prop :=
  ∀ n, P14085433920284805878.a n = (A131682 n : ℚ)

end A131682

/-! ## A131682.P10368364717244656922

`A000125(n)+A131509(n)+A000330(n)`
-/

namespace A131682.P10368364717244656922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (A131509 n + A000330 n)

end

end A131682.P10368364717244656922

namespace A131682

/-- `A000125(n)+A131509(n)+A000330(n)` -/
def P10368364717244656922.Spec : Prop :=
  ∀ n, P10368364717244656922.a n = A131682 n

end A131682

/-! ## A131682.P6456460692035341266

`A000124(n)+A131509(n)+A006003(n)`
-/

namespace A131682.P6456460692035341266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A131509 n + A006003 n)

end

end A131682.P6456460692035341266

namespace A131682

/-- `A000124(n)+A131509(n)+A006003(n)` -/
def P6456460692035341266.Spec : Prop :=
  ∀ n, P6456460692035341266.a n = A131682 n

end A131682

/-! ## A131682.P10970133989411178545

`A006003(n+1)+A131509(n)-A002378(n)`
-/

namespace A131682.P10970133989411178545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) + (A131509 n - A002378 n)

end

end A131682.P10970133989411178545

namespace A131682

/-- `A006003(n+1)+A131509(n)-A002378(n)` -/
def P10970133989411178545.Spec : Prop :=
  ∀ n, P10970133989411178545.a n = A131682 n

end A131682

/-!
# A131683: a(n) = 4*(n^1 + 1!)*(n^2 + 2!)*(n^3 + 3!)*(n^4 + 4!)/4!.

The programs for A131683, the canonical program `A131683.P12709165033848318007` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131683 has offset 0).

The definition of A131683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131683.P12709165033848318007

`(n+1)*(n²+2)*(n^3+6)*(n^4+24)/6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A131683

/-- `(n+1)*(n²+2)*(n^3+6)*(n^4+24)/6` -/
def P12709165033848318007.Spec : Prop :=
  ∀ n, P12709165033848318007.a n = (A131683 n : ℚ)

end A131683

/-! ## A131683.P1832133501073413375

`floor(A131528(n)/3)`
-/

namespace A131683.P1832133501073413375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131528 n : ℚ) / 3⌋

end

end A131683.P1832133501073413375

namespace A131683

/-- `floor(A131528(n)/3)` -/
def P1832133501073413375.Spec : Prop :=
  ∀ n, P1832133501073413375.a n = A131683 n

end A131683

/-! ## A131683.P17593439605508190782

`record[A131528(A302039(n+1))/3]`
-/

namespace A131683.P17593439605508190782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131528 (A302039 (n + 1)).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131683.P17593439605508190782

namespace A131683

/-- `record[A131528(A302039(n+1))/3]` -/
def P17593439605508190782.Spec : Prop :=
  ∀ n, P17593439605508190782.a n = (A131683 n : ℚ)

end A131683

/-! ## A131683.P15698830752335109610

`record[A131528(A213714(n))/3]`
-/

namespace A131683.P15698830752335109610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131528 (A213714 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131683.P15698830752335109610

namespace A131683

/-- `record[A131528(A213714(n))/3]` -/
def P15698830752335109610.Spec : Prop :=
  ∀ n, P15698830752335109610.a n = (A131683 n : ℚ)

end A131683

/-! ## A131683.P14153290168522661505

`(A131528(n)/3)%A341368(3*(n+3))`
-/

namespace A131683.P14153290168522661505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A131528 n : ℚ) / 3)) (A341368 (3 * (n + 3)))

end

end A131683.P14153290168522661505

namespace A131683

/-- `(A131528(n)/3)%A341368(3*(n+3))` -/
def P14153290168522661505.Spec : Prop :=
  ∀ n, P14153290168522661505.a n = A131683 n

end A131683

/-!
# A131686: Sum of squares of five consecutive primes.

The programs for A131686, the canonical program `A131686.P9344451036206820720` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131686 has offset 1).

The definition of A131686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131686.P9344451036206820720

`A133524(n+2)+A001248(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A131686

/-- `A133524(n+2)+A001248(n+1)` -/
def P9344451036206820720.Spec : Prop :=
  ∀ n, P9344451036206820720.a n = A131686 (n + 1)

theorem P9344451036206820720.correct : P9344451036206820720.Spec := by
  intro n
  simp only [A131686, Nat.add_sub_cancel]

end A131686

/-! ## A131686.P2898545206496030616

`A133524(n+2)+A000040(n+1)²`
-/

namespace A131686.P2898545206496030616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133524 (n + 2) + A000040 (n + 1) ^ 2

end

end A131686.P2898545206496030616

namespace A131686

/-- `A133524(n+2)+A000040(n+1)²` -/
def P2898545206496030616.Spec : Prop :=
  ∀ n, P2898545206496030616.a n = A131686 (n + 1)

end A131686

/-! ## A131686.P15665412066633914324

`A133524(n+1)+A133524(n+2)-A133529(n+2)`
-/

namespace A131686.P15665412066633914324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133524 (n + 1) + (A133524 (n + 2) - A133529 (n + 2))

end

end A131686.P15665412066633914324

namespace A131686

/-- `A133524(n+1)+A133524(n+2)-A133529(n+2)` -/
def P15665412066633914324.Spec : Prop :=
  ∀ n, P15665412066633914324.a n = A131686 (n + 1)

end A131686

/-! ## A131686.P10259090975997906730

`A133529(n+3)+A069484(n+1)`
-/

namespace A131686.P10259090975997906730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 3) + A069484 (n + 1)

end

end A131686.P10259090975997906730

namespace A131686

/-- `A133529(n+3)+A069484(n+1)` -/
def P10259090975997906730.Spec : Prop :=
  ∀ n, P10259090975997906730.a n = A131686 (n + 1)

end A131686

/-! ## A131686.P16074383064353421776

`A133529(n+3)+A048851(n+2)`
-/

namespace A131686.P16074383064353421776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 3) + A048851 (n + 2)

end

end A131686.P16074383064353421776

namespace A131686

/-- `A133529(n+3)+A048851(n+2)` -/
def P16074383064353421776.Spec : Prop :=
  ∀ n, P16074383064353421776.a n = A131686 (n + 1)

end A131686

/-! ## A131686.P14437995428550585076

`A024525(n+5)-A024525(n)`
-/

namespace A131686.P14437995428550585076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 (n + 5) - A024525 n

end

end A131686.P14437995428550585076

namespace A131686

/-- `A024525(n+5)-A024525(n)` -/
def P14437995428550585076.Spec : Prop :=
  ∀ n, P14437995428550585076.a n = A131686 (n + 1)

end A131686

/-! ## A131686.P2027179660635631141

`A133524(n+2)+eq[2, A225244(n)]²`
-/

namespace A131686.P2027179660635631141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133524 (n + 2) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 : ℤ)

end

end A131686.P2027179660635631141

namespace A131686

/-- `A133524(n+2)+eq[2, A225244(n)]²` -/
def P2027179660635631141.Spec : Prop :=
  ∀ n, P2027179660635631141.a n = A131686 (n + 1)

end A131686

/-!
# A131687: Days of the year that are prime numbers in format mmdd (2-digit month followed by 2-digit year).

The programs for A131687, there is no canonical definition to state claims against.
-/

/-! ## A131687.P9560249830011067250

`A000015(A327915(n+1))`
-/

namespace A131687.P9560249830011067250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A327915 (n + 1)).toNat

end

end A131687.P9560249830011067250

/-! ## A131687.P15187541755617793032

`A051697(A327915(n+1)+1)`
-/

namespace A131687.P15187541755617793032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A327915 (n + 1) + 1).toNat

end

end A131687.P15187541755617793032

/-! ## A131687.P6072031553836893707

`A007918(A327915(n+1)-1)`
-/

namespace A131687.P6072031553836893707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A327915 (n + 1) - 1).toNat

end

end A131687.P6072031553836893707

/-! ## A131687.P10393076713802202333

`A151800(A327915(n+1)-1)`
-/

namespace A131687.P10393076713802202333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A327915 (n + 1) - 1).toNat

end

end A131687.P10393076713802202333

/-! ## A131687.P16280499499334687184

`A007918(or(1, A327915(n+1)))`
-/

namespace A131687.P16280499499334687184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.lor 1 (A327915 (n + 1))).toNat

end

end A131687.P16280499499334687184

/-! ## A131687.P6455284280695154687

`A151800(xor(1, A327915(n+1)))`
-/

namespace A131687.P6455284280695154687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.xor 1 (A327915 (n + 1))).toNat

end

end A131687.P6455284280695154687

/-! ## A131687.P5470430079688659259

`∪[A142442(n+1), A327914(n+1)]`
-/

namespace A131687.P5470430079688659259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131687.P5470430079688659259

/-! ## A131687.P4621944498039233420

`∪[A178551(n+1), A327914(n+1)]`
-/

namespace A131687.P4621944498039233420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131687.P4621944498039233420

/-! ## A131687.P2385920200763863486

`∪[A327914(n+1), A332740(n+1)]`
-/

namespace A131687.P2385920200763863486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131687.P2385920200763863486

/-! ## A131687.P11537285331556800728

`A327915(n+1)+A083463(A322320(n+1))`
-/

namespace A131687.P11537285331556800728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327915 (n + 1) + A083463 (A322320 (n + 1)).toNat

end

end A131687.P11537285331556800728

/-!
# A131689: Triangle of numbers T(n,k) = k!*Stirling2(n,k) = A000142(k)*A048993(n,k) read by rows, T(n, k) for 0 <= k <= n.

The programs for A131689, there is no canonical definition to state claims against.
-/

/-! ## A131689.P11374413980672620228

`A048993(n)*A233543(n)`
-/

namespace A131689.P11374413980672620228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A233543 n

end

end A131689.P11374413980672620228

/-! ## A131689.P18218564189482225344

`A002262(n)!*A048993(n)`
-/

namespace A131689.P18218564189482225344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A048993 n

end

end A131689.P18218564189482225344

/-! ## A131689.P11427240364048976782

`A130270(n+1)*A142071(n)`
-/

namespace A131689.P11427240364048976782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1) * A142071 n

end

end A131689.P11427240364048976782

/-! ## A131689.P1296395996502871695

`A142071(n)*A144328(n+1)`
-/

namespace A131689.P1296395996502871695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 n * A144328 (n + 1)

end

end A131689.P1296395996502871695

/-! ## A131689.P9684363007344572795

`A008279(n)/A007318(n)*A048993(n)`
-/

namespace A131689.P9684363007344572795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n : ℚ) * (A048993 n : ℚ)

end

end A131689.P9684363007344572795

/-! ## A131689.P12256250506377952634

`A028246(n)-a(n-1)` with `a(0)=1`
-/

namespace A131689.P12256250506377952634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028246 n - a (n - 1)

end

end A131689.P12256250506377952634

/-! ## A131689.P10533156933580976757

`abs(A278075(n))`
-/

namespace A131689.P10533156933580976757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A278075 n|

end

end A131689.P10533156933580976757

/-! ## A131689.P10153035492945449450

`A097807(n)*A278075(n)`
-/

namespace A131689.P10153035492945449450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A278075 n

end

end A131689.P10153035492945449450

/-! ## A131689.P18202862177448563696

`gcd(A000038(n), A278075(n))`
-/

namespace A131689.P18202862177448563696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A278075 n)

end

end A131689.P18202862177448563696

/-! ## A131689.P15322271491674118656

`lcm(A020985(n), A278075(n))`
-/

namespace A131689.P15322271491674118656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A278075 n)

end

end A131689.P15322271491674118656

/-! ## A131689.P16692142194763630951

`A090657(n)/A007318(n)`
-/

namespace A131689.P16692142194763630951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A007318 n : ℚ)

end

end A131689.P16692142194763630951

/-! ## A131689.P5318344900479858127

`A090657(n)/A091918(n)`
-/

namespace A131689.P5318344900479858127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A091918 n : ℚ)

end

end A131689.P5318344900479858127

/-! ## A131689.P5699533018636148305

`A090657(n)/A132749(n)`
-/

namespace A131689.P5699533018636148305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A132749 n : ℚ)

end

end A131689.P5699533018636148305

/-! ## A131689.P5851981829769984326

`A090657(n)/A135227(n)`
-/

namespace A131689.P5851981829769984326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A135227 n : ℚ)

end

end A131689.P5851981829769984326

/-! ## A131689.P18037466190216593395

`A090657(n)/A183154(n)`
-/

namespace A131689.P18037466190216593395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A183154 n : ℚ)

end

end A131689.P18037466190216593395

/-! ## A131689.P5813784763169471149

`abs(A090657(n)/A130595(n))`
-/

namespace A131689.P5813784763169471149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A090657 n : ℚ) / (A130595 n : ℚ)|

end

end A131689.P5813784763169471149

/-! ## A131689.P13785637015799251833

`A048993(n)/A225466(n)*A225472(n)`
-/

namespace A131689.P13785637015799251833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 n : ℚ) / (A225466 n : ℚ) * (A225472 n : ℚ)

end

end A131689.P13785637015799251833

/-! ## A131689.P8513684830272782939

`A256061(n)/A168256(n)`
-/

namespace A131689.P8513684830272782939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256061 n : ℚ) / (A168256 n : ℚ)

end

end A131689.P8513684830272782939

/-! ## A131689.P17341175458001059396

`A156815(n)/A119502(n)`
-/

namespace A131689.P17341175458001059396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156815 n : ℚ) / (A119502 n : ℚ)

end

end A131689.P17341175458001059396

/-! ## A131689.P2600901093639438680

`A048993(n)/A285061(n)*A285066(n)`
-/

namespace A131689.P2600901093639438680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048993 n : ℚ) / (A285061 n : ℚ) * (A285066 n : ℚ)

end

end A131689.P2600901093639438680

/-!
# A131690: a(n) = Product_{k=1..n} A008578(k)^A008578(n-k+1).

The programs for A131690, there is no canonical definition to state claims against.
-/

/-! ## A131690.P7912065290901679175

`A329600(∏[A114411(n)])`
-/

namespace A131690.P7912065290901679175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131690.P7912065290901679175

/-! ## A131690.P15408942457710356959

`∏[A000027(∏[A114411(n)])]`
-/

namespace A131690.P15408942457710356959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131690.P15408942457710356959

/-!
# A131694: Numbers k such that abs(S(k)) = A008347(k) is prime, where S(k) = S(k-1) + A000040(k)*(-1)^k; S(0) = 0.

The programs for A131694, the canonical program `A131694.P609237085651523433` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131694 has offset 1).

The definition of A131694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131694.P8089410076635785155

`eq[2, A000005(A008347(n+1))]+1`
-/

namespace A131694.P8089410076635785155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008347 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131694.P8089410076635785155

namespace A131694

/-- `eq[2, A000005(A008347(n+1))]+1` -/
def P8089410076635785155.Spec : Prop :=
  ∀ n, (P8089410076635785155.a n : ℤ) = A131694 (n + 1)

end A131694

/-! ## A131694.P609237085651523433

`eq[1, ∏{e}[A008347(n), #+1]-1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A131694

/-- `eq[1, ∏{e}[A008347(n), #+1]-1]` -/
def P609237085651523433.Spec : Prop :=
  ∀ n, (P609237085651523433.a n : ℤ) = A131694 (n + 1)

theorem P609237085651523433.correct : P609237085651523433.Spec := by
  intro n
  simp only [A131694, Nat.add_sub_cancel]

end A131694

/-! ## A131694.P5198427161651749256

`eq[2, A000005(A008347(n)+A000007(n))]`
-/

namespace A131694.P5198427161651749256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008347 n + A000007 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131694.P5198427161651749256

namespace A131694

/-- `eq[2, A000005(A008347(n)+A000007(n))]` -/
def P5198427161651749256.Spec : Prop :=
  ∀ n, (P5198427161651749256.a n : ℤ) = A131694 (n + 1)

end A131694

/-! ## A131694.P12011235398850255177

`A000027(eq[1, A328847(A008347(n))])`
-/

namespace A131694.P12011235398850255177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 (A008347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131694.P12011235398850255177

namespace A131694

/-- `A000027(eq[1, A328847(A008347(n))])` -/
def P12011235398850255177.Spec : Prop :=
  ∀ n, P12011235398850255177.a n = A131694 (n + 1)

end A131694

/-! ## A131694.P13610162688515829150

`eq[0, A007920(A008347(n))]`
-/

namespace A131694.P13610162688515829150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A008347 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131694.P13610162688515829150

namespace A131694

/-- `eq[0, A007920(A008347(n))]` -/
def P13610162688515829150.Spec : Prop :=
  ∀ n, (P13610162688515829150.a n : ℤ) = A131694 (n + 1)

end A131694

/-! ## A131694.P17998415019285395674

`eq[A000007(n), A051699(A008347(n))]`
-/

namespace A131694.P17998415019285395674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A008347 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131694.P17998415019285395674

namespace A131694

/-- `eq[A000007(n), A051699(A008347(n))]` -/
def P17998415019285395674.Spec : Prop :=
  ∀ n, (P17998415019285395674.a n : ℤ) = A131694 (n + 1)

end A131694

/-! ## A131694.P13373922885518865701

`eq[A005872(n), A051699(A008347(n))]`
-/

namespace A131694.P13373922885518865701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A008347 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131694.P13373922885518865701

namespace A131694

/-- `eq[A005872(n), A051699(A008347(n))]` -/
def P13373922885518865701.Spec : Prop :=
  ∀ n, (P13373922885518865701.a n : ℤ) = A131694 (n + 1)

end A131694

/-! ## A131694.P8269787997509446835

`eq[A005127(A008347(n)), A010141(n+1)]`
-/

namespace A131694.P8269787997509446835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A008347 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131694.P8269787997509446835

namespace A131694

/-- `eq[A005127(A008347(n)), A010141(n+1)]` -/
def P8269787997509446835.Spec : Prop :=
  ∀ n, (P8269787997509446835.a n : ℤ) = A131694 (n + 1)

end A131694

/-! ## A131694.P13972921791096144009

`lt[2*A051699(A008347(n)), A134451(n)]`
-/

namespace A131694.P13972921791096144009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051699 (A008347 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131694.P13972921791096144009

namespace A131694

/-- `lt[2*A051699(A008347(n)), A134451(n)]` -/
def P13972921791096144009.Spec : Prop :=
  ∀ n, (P13972921791096144009.a n : ℤ) = A131694 (n + 1)

end A131694

/-! ## A131694.P5853573041313252799

`eq[A005127(A008347(n)), A141310(2*n+1)]`
-/

namespace A131694.P5853573041313252799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A008347 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131694.P5853573041313252799

namespace A131694

/-- `eq[A005127(A008347(n)), A141310(2*n+1)]` -/
def P5853573041313252799.Spec : Prop :=
  ∀ n, (P5853573041313252799.a n : ℤ) = A131694 (n + 1)

end A131694

/-!
# A131695: a(n) = 0 iff 2*prime(n+1) = prime(n) + prime(n+2), otherwise a(n) = 1.

The programs for A131695, the canonical program `A131695.P15556977045309994606` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131695 has offset 1).

The definition of A131695 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098726, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131695.P15556977045309994606

`A098726(n+1)-2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A131695

/-- `A098726(n+1)-2` -/
def P15556977045309994606.Spec : Prop :=
  ∀ n, P15556977045309994606.a n = A131695 (n + 1)

theorem P15556977045309994606.correct : P15556977045309994606.Spec := by
  intro n
  simp only [A131695, Nat.add_sub_cancel]

end A131695

/-! ## A131695.P2336575629016103230

`abs(A079054(n+2))`
-/

namespace A131695.P2336575629016103230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079054 (n + 2)|

end

end A131695.P2336575629016103230

namespace A131695

/-- `abs(A079054(n+2))` -/
def P2336575629016103230.Spec : Prop :=
  ∀ n, P2336575629016103230.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P2046094214260737947

`C(2, A031217(n+1))`
-/

namespace A131695.P2046094214260737947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A031217 (n + 1)).toNat

end

end A131695.P2046094214260737947

namespace A131695

/-- `C(2, A031217(n+1))` -/
def P2046094214260737947.Spec : Prop :=
  ∀ n, (P2046094214260737947.a n : ℤ) = A131695 (n + 1)

end A131695

/-! ## A131695.P10326273514308522653

`abs(Δ[A092243(n+1)])`
-/

namespace A131695.P10326273514308522653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A131695.P10326273514308522653

namespace A131695

/-- `abs(Δ[A092243(n+1)])` -/
def P10326273514308522653.Spec : Prop :=
  ∀ n, P10326273514308522653.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P5296002428202877878

`char[lt[1, A053597(n+1)]]`
-/

namespace A131695.P5296002428202877878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053597 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A131695.P5296002428202877878

namespace A131695

/-- `char[lt[1, A053597(n+1)]]` -/
def P5296002428202877878.Spec : Prop :=
  ∀ n, (P5296002428202877878.a n : ℤ) = A131695 (n + 1)

end A131695

/-! ## A131695.P15777510469513781079

`ceil(abs(sin(A036263(n+1))))`
-/

namespace A131695.P15777510469513781079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (A036263 (n + 1) : ℝ)|⌉

end

end A131695.P15777510469513781079

namespace A131695

/-- `ceil(abs(sin(A036263(n+1))))` -/
def P15777510469513781079.Spec : Prop :=
  ∀ n, P15777510469513781079.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P7995893836962081923

`ceil(tanh(Δ[A001223(n+1)])²)`
-/

namespace A131695.P7995893836962081923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (f1 (n + 1) - f1 n : ℝ) ^ 2⌉

end

end A131695.P7995893836962081923

namespace A131695

/-- `ceil(tanh(Δ[A001223(n+1)])²)` -/
def P7995893836962081923.Spec : Prop :=
  ∀ n, P7995893836962081923.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P5588812257076892319

`1-char[A064113(n+1)-1]`
-/

namespace A131695.P5588812257076892319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A131695.P5588812257076892319

namespace A131695

/-- `1-char[A064113(n+1)-1]` -/
def P5588812257076892319.Spec : Prop :=
  ∀ n, P5588812257076892319.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P2826941789102006377

`1-char[A066875(n+1)-2]`
-/

namespace A131695.P2826941789102006377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A131695.P2826941789102006377

namespace A131695

/-- `1-char[A066875(n+1)-2]` -/
def P2826941789102006377.Spec : Prop :=
  ∀ n, P2826941789102006377.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P6256870037858449702

`ceil(tanh(1-A073272(n+1))²)`
-/

namespace A131695.P6256870037858449702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (1 - A073272 (n + 1) : ℝ) ^ 2⌉

end

end A131695.P6256870037858449702

namespace A131695

/-- `ceil(tanh(1-A073272(n+1))²)` -/
def P6256870037858449702.Spec : Prop :=
  ∀ n, P6256870037858449702.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P3772795520498220083

`ceil(tanh(1-A073274(n+1))²)`
-/

namespace A131695.P3772795520498220083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (1 - A073274 (n + 1) : ℝ) ^ 2⌉

end

end A131695.P3772795520498220083

namespace A131695

/-- `ceil(tanh(1-A073274(n+1))²)` -/
def P3772795520498220083.Spec : Prop :=
  ∀ n, P3772795520498220083.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P8982627475753636621

`A022932(A182145(n+1))`
-/

namespace A131695.P8982627475753636621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 (A182145 (n + 1)).toNat

end

end A131695.P8982627475753636621

namespace A131695

/-- `A022932(A182145(n+1))` -/
def P8982627475753636621.Spec : Prop :=
  ∀ n, P8982627475753636621.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P14724203770840780158

`A057427(abs(Δ[A001223(n+1)]))`
-/

namespace A131695.P14724203770840780158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 |f1 (n + 1) - f1 n|.toNat

end

end A131695.P14724203770840780158

namespace A131695

/-- `A057427(abs(Δ[A001223(n+1)]))` -/
def P14724203770840780158.Spec : Prop :=
  ∀ n, P14724203770840780158.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P2567756643434256517

`A011610(Δ[A001223(n+1)]²)`
-/

namespace A131695.P2567756643434256517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011610 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A131695.P2567756643434256517

namespace A131695

/-- `A011610(Δ[A001223(n+1)]²)` -/
def P2567756643434256517.Spec : Prop :=
  ∀ n, P2567756643434256517.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P12541050863058004655

`A057427(Δ[A001223(n+1)]²)`
-/

namespace A131695.P12541050863058004655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A131695.P12541050863058004655

namespace A131695

/-- `A057427(Δ[A001223(n+1)]²)` -/
def P12541050863058004655.Spec : Prop :=
  ∀ n, P12541050863058004655.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P1961731674206435778

`A079054(n+2)^A000010(n+3)`
-/

namespace A131695.P1961731674206435778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079054 (n + 2) : ℚ) ^ (A000010 (n + 3) : ℤ)

end

end A131695.P1961731674206435778

namespace A131695

/-- `A079054(n+2)^A000010(n+3)` -/
def P1961731674206435778.Spec : Prop :=
  ∀ n, P1961731674206435778.a n = (A131695 (n + 1) : ℚ)

end A131695

/-! ## A131695.P2442626717657562277

`A167489(Δ[A092243(n+1)]+9)%2`
-/

namespace A131695.P2442626717657562277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167489 (f1 (n + 1) - f1 n + 9).toNat) 2

end

end A131695.P2442626717657562277

namespace A131695

/-- `A167489(Δ[A092243(n+1)]+9)%2` -/
def P2442626717657562277.Spec : Prop :=
  ∀ n, P2442626717657562277.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P11702750719437089138

`ceil((A036263(n+1)/A000040(n+1))²)`
-/

namespace A131695.P11702750719437089138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A036263 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)) ^ 2⌉

end

end A131695.P11702750719437089138

namespace A131695

/-- `ceil((A036263(n+1)/A000040(n+1))²)` -/
def P11702750719437089138.Spec : Prop :=
  ∀ n, P11702750719437089138.a n = A131695 (n + 1)

end A131695

/-! ## A131695.P17356893682026391271

`A001221(A053597(A053597(n+1)+1))`
-/

namespace A131695.P17356893682026391271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A053597 (A053597 (n + 1) + 1).toNat).toNat

end

end A131695.P17356893682026391271

namespace A131695

/-- `A001221(A053597(A053597(n+1)+1))` -/
def P17356893682026391271.Spec : Prop :=
  ∀ n, P17356893682026391271.a n = A131695 (n + 1)

end A131695

/-!
# A131696: Square roots of A134537.

The programs for A131696, there is no canonical definition to state claims against.
-/

/-! ## A131696.P7709958461917094580

`sqrt(A134537(n+1))`
-/

namespace A131696.P7709958461917094580
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134537 (n + 1) : ℝ)

end

end A131696.P7709958461917094580

/-! ## A131696.P18357977582914018121

`root(A134537(n+1), A001316(A001316(n)))`
-/

namespace A131696.P18357977582914018121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134537 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A131696.P18357977582914018121

/-! ## A131696.P12778055227150504763

`sqrt(A062064(n+1)+A062064(n+2))`
-/

namespace A131696.P12778055227150504763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062064 (n + 1) + A062064 (n + 2) : ℝ)

end

end A131696.P12778055227150504763

/-! ## A131696.P13405673769078797658

`(A134537(n+1)^((n+1)/A008574(n+1)))²`
-/

namespace A131696.P13405673769078797658
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A134537 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (A008574 (n + 1) : ℚ) : ℝ)) ^ 2

end

end A131696.P13405673769078797658

/-! ## A131696.P16451756294641956708

`A134537(n+1)^(1/A000005(A083016(n+1)))`
-/

namespace A131696.P16451756294641956708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134537 (n + 1) : ℝ) ^ (1 / (A000005 (A083016 (n + 1)).toNat : ℚ) : ℝ)

end

end A131696.P16451756294641956708

/-!
# A131698: Cumulative concatenation of A000032 Lucas numbers (beginning at 2).

The programs for A131698, there is no canonical definition to state claims against.
-/

/-! ## A131698.P4910203733800662550

`A008592(a(n-1))+A000032(n)` with `a(0)=2`
-/

namespace A131698.P4910203733800662550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008592 (a (n - 1)).toNat + A000032 n

end

end A131698.P4910203733800662550

/-!
# A131699: Smallest number whose n-th power begins with precisely n identical digits (in base ten).

The programs for A131699, there is no canonical definition to state claims against.
-/

/-! ## A131699.P2705954012503751148

`A132392(n+1)^gcd(13, n)`
-/

namespace A131699.P2705954012503751148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132392 (n + 1) ^ Nat.gcd 13 n

end

end A131699.P2705954012503751148

/-! ## A131699.P7394830212373251399

`A132392(A172119(∑[n])+n)`
-/

namespace A131699.P7394830212373251399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132392 (A172119 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A131699.P7394830212373251399

/-! ## A131699.P1924314757138753581

`A132392(∑[A320606(n+1)!])`
-/

namespace A131699.P1924314757138753581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A320606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132392 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131699.P1924314757138753581

/-! ## A131699.P11271238290558382753

`A132392(n+1)^A320606(n+1)!`
-/

namespace A131699.P11271238290558382753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132392 (n + 1) ^ Nat.factorial (A320606 (n + 1)).toNat

end

end A131699.P11271238290558382753

/-! ## A131699.P3007008575211732029

`xor(A010051(A115667(2*n+3)), A132392(n+1))`
-/

namespace A131699.P3007008575211732029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A115667 (2 * n + 3)).toNat) (A132392 (n + 1))

end

end A131699.P3007008575211732029

