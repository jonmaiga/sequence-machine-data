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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A051401: Smallest value of x such that M(x) = -n, where M(x) is Mertens's function A002321.

The programs for A051401, there is no canonical definition to state claims against.
-/

/-! ## A051401.P13524514675307855137

`A060434(A153679(n+1))`
-/

namespace A051401.P13524514675307855137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060434 (A153679 (n + 1)).toNat

end

end A051401.P13524514675307855137

/-! ## A051401.P14962224424446837616

`filter[A060434(n), A252743(#)]`
-/

namespace A051401.P14962224424446837616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252743 (f1 j).toNat = 1) n)

end

end A051401.P14962224424446837616

/-! ## A051401.P13346700289393128762

`A060434(n+1)%A352532(n+1)`
-/

namespace A051401.P13346700289393128762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060434 (n + 1)) (A352532 (n + 1))

end

end A051401.P13346700289393128762

/-! ## A051401.P1858691763509607287

`A060434(n+1)+A000007(A046264(n))`
-/

namespace A051401.P1858691763509607287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060434 (n + 1) + A000007 (A046264 n).toNat

end

end A051401.P1858691763509607287

/-! ## A051401.P10343746774814966912

`A060434(n+1)+A000038(A055935(n))`
-/

namespace A051401.P10343746774814966912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060434 (n + 1) + A000038 (A055935 n).toNat

end

end A051401.P10343746774814966912

/-!
# A051402: Inverse Mertens function: smallest k such that |M(k)| = n, where M(x) is Mertens's function A002321.

The programs for A051402, there is no canonical definition to state claims against.
-/

/-! ## A051402.P12894155376618081443

`record[A060434(n)-C(3, n²)]`
-/

namespace A051402.P12894155376618081443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060434 n - (Nat.choose 3 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051402.P12894155376618081443

/-! ## A051402.P11321082782750466344

`gcd(floor(acot(n)), A060434(n+1))`
-/

namespace A051402.P11321082782750466344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A060434 (n + 1))

end

end A051402.P11321082782750466344

/-! ## A051402.P2973242492347340377

`A060434(n+1)-A000038(n)`
-/

namespace A051402.P2973242492347340377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060434 (n + 1) - A000038 n

end

end A051402.P2973242492347340377

/-! ## A051402.P17904085102309779005

`A060434(n+1)%A198277(n)`
-/

namespace A051402.P17904085102309779005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060434 (n + 1)) (A198277 n)

end

end A051402.P17904085102309779005

/-! ## A051402.P8720540360182214010

`A060434(n+1)-A049084(3*(n+1))`
-/

namespace A051402.P8720540360182214010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060434 (n + 1) - A049084 (3 * (n + 1))

end

end A051402.P8720540360182214010

/-!
# A051403: a(n) = (n+2)*(a(n-1) - a(n-2)), starting with a(-1)=0 and a(0)=1.

The programs for A051403, there is no canonical definition to state claims against.
-/

/-! ## A051403.P14128987809196941337

`(n+1)*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051403.P14128987809196941337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) - a (n - 2))

end

end A051403.P14128987809196941337

/-! ## A051403.P9528577405475778629

`(n+1)*A003422(n)/2`
-/

namespace A051403.P9528577405475778629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A003422 n : ℚ) / 2

end

end A051403.P9528577405475778629

/-! ## A051403.P10211861511993756845

`∑[∑[n*a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A051403.P10211861511993756845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051403.P10211861511993756845

/-! ## A051403.P87658940257424255

`∑[∑[a(n-1)/n^(-1)]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A051403.P87658940257424255
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  f2 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051403.P87658940257424255

/-! ## A051403.P1330725094078014951

`(∑[abs(1-n)!]-1)*(n+1)/2`
-/

namespace A051403.P1330725094078014951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) * ((n + 1 : ℚ) / 2)

end

end A051403.P1330725094078014951

/-! ## A051403.P2265794467710281449

`(a(n-1)-a(n-2))/(n+1)^(-1)` with `a(0)=0, a(1)=1`
-/

namespace A051403.P2265794467710281449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - a (n - 2)) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A051403.P2265794467710281449

/-! ## A051403.P17532658089392152479

`(a(n-1)-a(n-2))*(2*n-(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A051403.P17532658089392152479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - a (n - 2)) * ((2 * n : ℤ) - ((n : ℤ) - 1))

end

end A051403.P17532658089392152479

/-! ## A051403.P7612108958584200079

`∑[A014288(n)]`
-/

namespace A051403.P7612108958584200079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051403.P7612108958584200079

/-! ## A051403.P17696779937553277155

`∑[∑[A001710(n)]-1]`
-/

namespace A051403.P17696779937553277155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051403.P17696779937553277155

/-! ## A051403.P407234988032134431

`∑[A093468(n+1)-1]`
-/

namespace A051403.P407234988032134431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093468 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051403.P407234988032134431

/-!
# A051404: Numbers k such that neither 4 nor 9 divides binomial(2k-1,k) (almost certainly finite).

The programs for A051404, there is no canonical definition to state claims against.
-/

/-! ## A051404.P8431886903783415741

`∩[A048645(n+1), A051382(n+1)]`
-/

namespace A051404.P8431886903783415741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051404.P8431886903783415741

/-! ## A051404.P13790081287731843168

`filter[A051382(n+1), A075897(#)]`
-/

namespace A051404.P13790081287731843168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A051404.P13790081287731843168

/-! ## A051404.P15237287226059786018

`eq[A000989(n)!, A008611(A001316(n))]`
-/

namespace A051404.P15237287226059786018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000989 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051404.P15237287226059786018

/-! ## A051404.P10286954203834159301

`eq[A008611(A001316(n)), A290079(2*n)]`
-/

namespace A051404.P10286954203834159301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051404.P10286954203834159301

/-! ## A051404.P4975909751215012102

`eq[A038572(A000120(n)), A290079(2*n)]`
-/

namespace A051404.P4975909751215012102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051404.P4975909751215012102

/-!
# A051405: a(n) = (3^n+1)*(3^(n+1)+1)/4.

The programs for A051405, the canonical program `A051405.P9866845305940955165` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051405 has offset 0).

The definition of A051405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n+1)*(3^(n+1)+1)/4` (program `A051405.P2281909951999256803`, by `A051405.P2281909951999256803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051405.P2281909951999256803

`(3^n+1)*(3^(n+1)+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051405.P2281909951999256803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n + 1) * (3 ^ (n + 1) + 1) : ℚ) / 4

end

end A051405.P2281909951999256803

namespace A051405

/-- `(3^n+1)*(3^(n+1)+1)/4` -/
def P2281909951999256803.Spec : Prop :=
  ∀ n, P2281909951999256803.a n = (A051405 n : ℚ)

theorem P2281909951999256803.correct : P2281909951999256803.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A051405, Nat.add_sub_cancel, A051405.P2281909951999256803.a, A051405.P9866845305940955165.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A051405, Nat.add_sub_cancel, A051405.P2281909951999256803.a, A051405.P9866845305940955165.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051405

/-! ## A051405.P9866845305940955165

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=2, a(1)=10, a(2)=70`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051405

/-- `13*a(n-1)-39*a(n-2)+27*a(n-3)` -/
def P9866845305940955165.Spec : Prop :=
  ∀ n, P9866845305940955165.a n = A051405 n

theorem P9866845305940955165.correct : P9866845305940955165.Spec := by
  intro n
  simp only [A051405]

end A051405

/-! ## A051405.P7672891907501858944

`2*A051406(n)`
-/

namespace A051405.P7672891907501858944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051406 n

end

end A051405.P7672891907501858944

namespace A051405

/-- `2*A051406(n)` -/
def P7672891907501858944.Spec : Prop :=
  ∀ n, P7672891907501858944.a n = A051405 n

end A051405

/-! ## A051405.P1995393977543126971

`12*a(n-1)-27*a(n-2)+4` with `a(0)=2, a(1)=10`
-/

namespace A051405.P1995393977543126971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  12 * a (n - 1) - 27 * a (n - 2) + 4

end

end A051405.P1995393977543126971

namespace A051405

/-- `12*a(n-1)-27*a(n-2)+4` -/
def P1995393977543126971.Spec : Prop :=
  ∀ n, P1995393977543126971.a n = A051405 n

end A051405

/-! ## A051405.P15991780533463783783

`A001998(Δ[n²])`
-/

namespace A051405.P15991780533463783783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051405.P15991780533463783783

namespace A051405

/-- `A001998(Δ[n²])` -/
def P15991780533463783783.Spec : Prop :=
  ∀ n, P15991780533463783783.a n = A051405 n

end A051405

/-! ## A051405.P13204150441128129031

`A066443(n)+3^n`
-/

namespace A051405.P13204150441128129031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066443 n + (3 ^ n : ℤ)

end

end A051405.P13204150441128129031

namespace A051405

/-- `A066443(n)+3^n` -/
def P13204150441128129031.Spec : Prop :=
  ∀ n, P13204150441128129031.a n = A051405 n

end A051405

/-! ## A051405.P16086766152558923804

`lcm(2, A001998(2*n+1))`
-/

namespace A051405.P16086766152558923804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001998 (2 * n + 1))

end

end A051405.P16086766152558923804

namespace A051405

/-- `lcm(2, A001998(2*n+1))` -/
def P16086766152558923804.Spec : Prop :=
  ∀ n, (P16086766152558923804.a n : ℤ) = A051405 n

end A051405

/-! ## A051405.P11957575686146841868

`3^n+A054880(n)+1`
-/

namespace A051405.P11957575686146841868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (A054880 n + 1)

end

end A051405.P11957575686146841868

namespace A051405

/-- `3^n+A054880(n)+1` -/
def P11957575686146841868.Spec : Prop :=
  ∀ n, P11957575686146841868.a n = A051405 n

end A051405

/-! ## A051405.P12590746153969995207

`record[∑[(-3)^n]]+sqrt(A001019(n))`
-/

namespace A051405.P12590746153969995207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) + Real.sqrt (A001019 n : ℝ)

end

end A051405.P12590746153969995207

namespace A051405

/-- `record[∑[(-3)^n]]+sqrt(A001019(n))` -/
def P12590746153969995207.Spec : Prop :=
  ∀ n, P12590746153969995207.a n = (A051405 n : ℝ)

end A051405

/-! ## A051405.P17732843337601294725

`∑[A025192(n)*A034472(n)]`
-/

namespace A051405.P17732843337601294725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n * A034472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051405.P17732843337601294725

namespace A051405

/-- `∑[A025192(n)*A034472(n)]` -/
def P17732843337601294725.Spec : Prop :=
  ∀ n, P17732843337601294725.a n = A051405 n

end A051405

/-! ## A051405.P17563742304986409089

`A007051(n+1)*A007051(n)`
-/

namespace A051405.P17563742304986409089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) * A007051 n

end

end A051405.P17563742304986409089

namespace A051405

/-- `A007051(n+1)*A007051(n)` -/
def P17563742304986409089.Spec : Prop :=
  ∀ n, P17563742304986409089.a n = A051405 n

end A051405

/-! ## A051405.P16149380836802487561

`abs(A341463(n+1)*A341463(n))`
-/

namespace A051405.P16149380836802487561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341463 (n + 1) * A341463 n|

end

end A051405.P16149380836802487561

namespace A051405

/-- `abs(A341463(n+1)*A341463(n))` -/
def P16149380836802487561.Spec : Prop :=
  ∀ n, P16149380836802487561.a n = A051405 n

end A051405

/-! ## A051405.P16997058804106181776

`A025551(n)+(A034472(n)/2)²`
-/

namespace A051405.P16997058804106181776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025551 n : ℚ) + ((A034472 n : ℚ) / 2) ^ 2

end

end A051405.P16997058804106181776

namespace A051405

/-- `A025551(n)+(A034472(n)/2)²` -/
def P16997058804106181776.Spec : Prop :=
  ∀ n, P16997058804106181776.a n = (A051405 n : ℚ)

end A051405

/-! ## A051405.P12686365377673335243

`∑[A025192(2*n)+A025192(n)]`
-/

namespace A051405.P12686365377673335243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (2 * n) + A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051405.P12686365377673335243

namespace A051405

/-- `∑[A025192(2*n)+A025192(n)]` -/
def P12686365377673335243.Spec : Prop :=
  ∀ n, P12686365377673335243.a n = A051405 n

end A051405

/-! ## A051405.P3176171525030010313

`∑[2*A007051(n)*A025192(n)]`
-/

namespace A051405.P3176171525030010313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 n * A025192 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051405.P3176171525030010313

namespace A051405

/-- `∑[2*A007051(n)*A025192(n)]` -/
def P3176171525030010313.Spec : Prop :=
  ∀ n, P3176171525030010313.a n = A051405 n

end A051405

/-! ## A051405.P16152690974387553852

`A014983(2*n+1)+A000244(n)`
-/

namespace A051405.P16152690974387553852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 (2 * n + 1) + A000244 n

end

end A051405.P16152690974387553852

namespace A051405

/-- `A014983(2*n+1)+A000244(n)` -/
def P16152690974387553852.Spec : Prop :=
  ∀ n, P16152690974387553852.a n = A051405 n

end A051405

/-! ## A051405.P11749768909191639100

`A015518(2*n+1)+A000244(n)`
-/

namespace A051405.P11749768909191639100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (2 * n + 1) + A000244 n

end

end A051405.P11749768909191639100

namespace A051405

/-- `A015518(2*n+1)+A000244(n)` -/
def P11749768909191639100.Spec : Prop :=
  ∀ n, P11749768909191639100.a n = A051405 n

end A051405

/-! ## A051405.P10510514279896180744

`A122983(2*n+1)+A000244(n)`
-/

namespace A051405.P10510514279896180744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 (2 * n + 1) + A000244 n

end

end A051405.P10510514279896180744

namespace A051405

/-- `A122983(2*n+1)+A000244(n)` -/
def P10510514279896180744.Spec : Prop :=
  ∀ n, P10510514279896180744.a n = A051405 n

end A051405

/-! ## A051405.P15916994479439878570

`A125857(n+1)+2*A051500(n)`
-/

namespace A051405.P15916994479439878570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125857 (n + 1) + 2 * A051500 n

end

end A051405.P15916994479439878570

namespace A051405

/-- `A125857(n+1)+2*A051500(n)` -/
def P15916994479439878570.Spec : Prop :=
  ∀ n, P15916994479439878570.a n = A051405 n

end A051405

/-! ## A051405.P1007021547492411044

`A124302(n+1)*A124302(n+2)`
-/

namespace A051405.P1007021547492411044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) * A124302 (n + 2)

end

end A051405.P1007021547492411044

namespace A051405

/-- `A124302(n+1)*A124302(n+2)` -/
def P1007021547492411044.Spec : Prop :=
  ∀ n, P1007021547492411044.a n = A051405 n

end A051405

/-!
# A051406: a(n) = (3^n+1) * (3^(n+1)+1) / 8.

The programs for A051406, the canonical program `A051406.P6410648152022479590` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051406 has offset 0).

The definition of A051406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n+1)*(3^(n+1)+1)/8` (program `A051406.P7862482923574701248`, by `A051406.P7862482923574701248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051406.P6410648152022479590

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=5, a(2)=35`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051406

/-- `13*a(n-1)-39*a(n-2)+27*a(n-3)` -/
def P6410648152022479590.Spec : Prop :=
  ∀ n, P6410648152022479590.a n = A051406 n

theorem P6410648152022479590.correct : P6410648152022479590.Spec := by
  intro n
  simp only [A051406]

end A051406

/-! ## A051406.P7862482923574701248

`(3^n+1)*(3^(n+1)+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051406.P7862482923574701248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n + 1) * (3 ^ (n + 1) + 1) : ℚ) / 8

end

end A051406.P7862482923574701248

namespace A051406

/-- `(3^n+1)*(3^(n+1)+1)/8` -/
def P7862482923574701248.Spec : Prop :=
  ∀ n, P7862482923574701248.a n = (A051406 n : ℚ)

theorem P7862482923574701248.correct : P7862482923574701248.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A051406, Nat.add_sub_cancel, A051406.P7862482923574701248.a, A051406.P6410648152022479590.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A051406, Nat.add_sub_cancel, A051406.P7862482923574701248.a, A051406.P6410648152022479590.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051406

/-! ## A051406.P14992275434627334682

`lcm(9, a(n-1))-1-3^n` with `a(0)=1`
-/

namespace A051406.P14992275434627334682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - 1 - (3 ^ n : ℤ)

end

end A051406.P14992275434627334682

namespace A051406

/-- `lcm(9, a(n-1))-1-3^n` -/
def P14992275434627334682.Spec : Prop :=
  ∀ n, P14992275434627334682.a n = A051406 n

end A051406

/-! ## A051406.P3185410734677572497

`∑[floor(3^(n-1))+abs(record[-(-3)^n])]`
-/

namespace A051406.P3185410734677572497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-3) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051406.P3185410734677572497

namespace A051406

/-- `∑[floor(3^(n-1))+abs(record[-(-3)^n])]` -/
def P3185410734677572497.Spec : Prop :=
  ∀ n, P3185410734677572497.a n = A051406 n

end A051406

/-! ## A051406.P125472334104521927

`record[-floor((-3)^(n-1))]+3^(n-1)-round(-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A051406.P125472334104521927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.roundAway (-a (n - 1)) : ℚ))

end

end A051406.P125472334104521927

namespace A051406

/-- `record[-floor((-3)^(n-1))]+3^(n-1)-round(-a(n-1))` -/
def P125472334104521927.Spec : Prop :=
  ∀ n, P125472334104521927.a n = (A051406 n : ℚ)

end A051406

/-! ## A051406.P11428913972343152185

`3^eq[1, xor(n, n-1)²]+3^(n-1)-round(-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A051406.P11428913972343152185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.roundAway (-a (n - 1)) : ℚ))

end

end A051406.P11428913972343152185

namespace A051406

/-- `3^eq[1, xor(n, n-1)²]+3^(n-1)-round(-a(n-1))` -/
def P11428913972343152185.Spec : Prop :=
  ∀ n, P11428913972343152185.a n = (A051406 n : ℚ)

end A051406

/-! ## A051406.P7113930841304628035

`9*a(n-1)-A034472(n)` with `a(0)=1`
-/

namespace A051406.P7113930841304628035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - A034472 n

end

end A051406.P7113930841304628035

namespace A051406

/-- `9*a(n-1)-A034472(n)` -/
def P7113930841304628035.Spec : Prop :=
  ∀ n, P7113930841304628035.a n = A051406 n

end A051406

/-! ## A051406.P10852033141206511532

`A039306(n)+∑[floor(3^(n-1))]`
-/

namespace A051406.P10852033141206511532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039306 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051406.P10852033141206511532

namespace A051406

/-- `A039306(n)+∑[floor(3^(n-1))]` -/
def P10852033141206511532.Spec : Prop :=
  ∀ n, P10852033141206511532.a n = A051406 n

end A051406

/-! ## A051406.P4430306083012409262

`∑[floor(9^(n-1))]+A007051(n)²`
-/

namespace A051406.P4430306083012409262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A007051 n ^ 2

end

end A051406.P4430306083012409262

namespace A051406

/-- `∑[floor(9^(n-1))]+A007051(n)²` -/
def P4430306083012409262.Spec : Prop :=
  ∀ n, P4430306083012409262.a n = A051406 n

end A051406

/-! ## A051406.P17000616195150596131

`A051500(n)+C((3^n+1)/2, 2)`
-/

namespace A051406.P17000616195150596131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051500 n + (Nat.choose (SequenceMachineLib.roundAway ((3 ^ n + 1 : ℚ) / 2)).toNat 2 : ℤ)

end

end A051406.P17000616195150596131

namespace A051406

/-- `A051500(n)+C((3^n+1)/2, 2)` -/
def P17000616195150596131.Spec : Prop :=
  ∀ n, P17000616195150596131.a n = A051406 n

end A051406

/-! ## A051406.P9628705050894748935

`9*a(n-1)-A000244(n)-1` with `a(0)=1`
-/

namespace A051406.P9628705050894748935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - A000244 n - 1

end

end A051406.P9628705050894748935

namespace A051406

/-- `9*a(n-1)-A000244(n)-1` -/
def P9628705050894748935.Spec : Prop :=
  ∀ n, P9628705050894748935.a n = A051406 n

end A051406

/-! ## A051406.P6210188995541022455

`∑[ceil(3^(2*n-1))]+∑[A140429(n)]`
-/

namespace A051406.P6210188995541022455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A051406.P6210188995541022455

namespace A051406

/-- `∑[ceil(3^(2*n-1))]+∑[A140429(n)]` -/
def P6210188995541022455.Spec : Prop :=
  ∀ n, P6210188995541022455.a n = A051406 n

end A051406

/-! ## A051406.P4751570845978493990

`A155734(n)+a(n-1)+3^(2*n-1)` with `a(0)=1`
-/

namespace A051406.P4751570845978493990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A155734 n : ℚ) + (a (n - 1) + (3 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ))

end

end A051406.P4751570845978493990

namespace A051406

/-- `A155734(n)+a(n-1)+3^(2*n-1)` -/
def P4751570845978493990.Spec : Prop :=
  ∀ n, P4751570845978493990.a n = (A051406 n : ℚ)

end A051406

/-! ## A051406.P11056454881083759596

`A051500(n)+A002452(n)`
-/

namespace A051406.P11056454881083759596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051500 n + A002452 n

end

end A051406.P11056454881083759596

namespace A051406

/-- `A051500(n)+A002452(n)` -/
def P11056454881083759596.Spec : Prop :=
  ∀ n, P11056454881083759596.a n = A051406 n

end A051406

/-! ## A051406.P14259963438129950254

`∑[A007051(n)*A025192(n)]`
-/

namespace A051406.P14259963438129950254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n * A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051406.P14259963438129950254

namespace A051406

/-- `∑[A007051(n)*A025192(n)]` -/
def P14259963438129950254.Spec : Prop :=
  ∀ n, P14259963438129950254.a n = A051406 n

end A051406

/-! ## A051406.P12696261284538567163

`A167205(n+1)*A167205(n)`
-/

namespace A051406.P12696261284538567163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167205 (n + 1) * A167205 n

end

end A051406.P12696261284538567163

namespace A051406

/-- `A167205(n+1)*A167205(n)` -/
def P12696261284538567163.Spec : Prop :=
  ∀ n, P12696261284538567163.a n = A051406 n

end A051406

/-! ## A051406.P8393524710968238843

`A006342(2*n)+A003462(n)`
-/

namespace A051406.P8393524710968238843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (2 * n) + A003462 n

end

end A051406.P8393524710968238843

namespace A051406

/-- `A006342(2*n)+A003462(n)` -/
def P8393524710968238843.Spec : Prop :=
  ∀ n, P8393524710968238843.a n = A051406 n

end A051406

/-! ## A051406.P3165957724215577443

`A039300(2*n)+A003462(n)`
-/

namespace A051406.P3165957724215577443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 (2 * n) + A003462 n

end

end A051406.P3165957724215577443

namespace A051406

/-- `A039300(2*n)+A003462(n)` -/
def P3165957724215577443.Spec : Prop :=
  ∀ n, P3165957724215577443.a n = A051406 n

end A051406

/-! ## A051406.P2924854397169077556

`A001444(2*n)-A002452(n)`
-/

namespace A051406.P2924854397169077556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 (2 * n) - A002452 n

end

end A051406.P2924854397169077556

namespace A051406

/-- `A001444(2*n)-A002452(n)` -/
def P2924854397169077556.Spec : Prop :=
  ∀ n, P2924854397169077556.a n = A051406 n

end A051406

/-! ## A051406.P7232162221914682646

`A002452(n)+(A003462(n)+1)²`
-/

namespace A051406.P7232162221914682646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + (A003462 n + 1) ^ 2

end

end A051406.P7232162221914682646

namespace A051406

/-- `A002452(n)+(A003462(n)+1)²` -/
def P7232162221914682646.Spec : Prop :=
  ∀ n, P7232162221914682646.a n = A051406 n

end A051406

/-!
# A051407: a(n) = 3^n*(3^(n+1)+1)/2.

The programs for A051407, the canonical program `A051407.P9205569096708780831` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051407 has offset 0).

The definition of A051407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(3^(n+1)+1)/2` (program `A051407.P12007079711514217479`, by `A051407.P12007079711514217479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051407.P12007079711514217479

`3^n*(3^(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051407.P12007079711514217479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * (3 ^ (n + 1) + 1) : ℚ) / 2

end

end A051407.P12007079711514217479

namespace A051407

/-- `3^n*(3^(n+1)+1)/2` -/
def P12007079711514217479.Spec : Prop :=
  ∀ n, P12007079711514217479.a n = (A051407 n : ℚ)

theorem P12007079711514217479.correct : P12007079711514217479.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A051407, Nat.add_sub_cancel, A051407.P12007079711514217479.a, A051407.P9205569096708780831.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A051407, Nat.add_sub_cancel, A051407.P12007079711514217479.a, A051407.P9205569096708780831.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051407

/-! ## A051407.P9205569096708780831

`12*a(n-1)-27*a(n-2)` with `a(0)=2, a(1)=15`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051407

/-- `12*a(n-1)-27*a(n-2)` -/
def P9205569096708780831.Spec : Prop :=
  ∀ n, P9205569096708780831.a n = A051407 n

theorem P9205569096708780831.correct : P9205569096708780831.Spec := by
  intro n
  simp only [A051407]

end A051407

/-! ## A051407.P4112608687881596420

`lcm(∑[3^n]+1, 3^n)`
-/

namespace A051407.P4112608687881596420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (3 ^ n)

end

end A051407.P4112608687881596420

namespace A051407

/-- `lcm(∑[3^n]+1, 3^n)` -/
def P4112608687881596420.Spec : Prop :=
  ∀ n, (P4112608687881596420.a n : ℤ) = A051407 n

end A051407

/-! ## A051407.P6660033807084296692

`9^n+3*a(n-1)` with `a(0)=2`
-/

namespace A051407.P6660033807084296692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  9 ^ n + 3 * a (n - 1)

end

end A051407.P6660033807084296692

namespace A051407

/-- `9^n+3*a(n-1)` -/
def P6660033807084296692.Spec : Prop :=
  ∀ n, (P6660033807084296692.a n : ℤ) = A051407 n

end A051407

/-! ## A051407.P1325583571568561407

`9*a(n-1)-3^n` with `a(0)=2`
-/

namespace A051407.P1325583571568561407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  9 * a (n - 1) - (3 ^ n : ℤ)

end

end A051407.P1325583571568561407

namespace A051407

/-- `9*a(n-1)-3^n` -/
def P1325583571568561407.Spec : Prop :=
  ∀ n, P1325583571568561407.a n = A051407 n

end A051407

/-! ## A051407.P9406589142248998187

`A001444(Δ[n²])`
-/

namespace A051407.P9406589142248998187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051407.P9406589142248998187

namespace A051407

/-- `A001444(Δ[n²])` -/
def P9406589142248998187.Spec : Prop :=
  ∀ n, P9406589142248998187.a n = A051407 n

end A051407

/-! ## A051407.P378427898539958493

`Δ[A051406(n)/2]`
-/

namespace A051407.P378427898539958493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051406 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051407.P378427898539958493

namespace A051407

/-- `Δ[A051406(n)/2]` -/
def P378427898539958493.Spec : Prop :=
  ∀ n, P378427898539958493.a n = (A051407 n : ℚ)

end A051407

/-! ## A051407.P1188209008197449653

`3^n*A007051(n+1)`
-/

namespace A051407.P1188209008197449653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A007051 (n + 1)

end

end A051407.P1188209008197449653

namespace A051407

/-- `3^n*A007051(n+1)` -/
def P1188209008197449653.Spec : Prop :=
  ∀ n, P1188209008197449653.a n = A051407 n

end A051407

/-! ## A051407.P7796716942770660713

`2*9^n-C(A000244(n), 2)`
-/

namespace A051407.P7796716942770660713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 9 ^ n : ℤ) - (Nat.choose (A000244 n).toNat 2 : ℤ)

end

end A051407.P7796716942770660713

namespace A051407

/-- `2*9^n-C(A000244(n), 2)` -/
def P7796716942770660713.Spec : Prop :=
  ∀ n, P7796716942770660713.a n = A051407 n

end A051407

/-! ## A051407.P15245268782208072729

`A024101(n)+3*a(n-1)+1` with `a(0)=2`
-/

namespace A051407.P15245268782208072729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A024101 n + (3 * a (n - 1) + 1)

end

end A051407.P15245268782208072729

namespace A051407

/-- `A024101(n)+3*a(n-1)+1` -/
def P15245268782208072729.Spec : Prop :=
  ∀ n, P15245268782208072729.a n = A051407 n

end A051407

/-! ## A051407.P10705858776687264190

`A016142(n)+A000244(n)`
-/

namespace A051407.P10705858776687264190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 n + A000244 n

end

end A051407.P10705858776687264190

namespace A051407

/-- `A016142(n)+A000244(n)` -/
def P10705858776687264190.Spec : Prop :=
  ∀ n, P10705858776687264190.a n = A051407 n

end A051407

/-! ## A051407.P6588476287034825421

`A199560(n)+A003462(n)`
-/

namespace A051407.P6588476287034825421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199560 n + A003462 n

end

end A051407.P6588476287034825421

namespace A051407

/-- `A199560(n)+A003462(n)` -/
def P6588476287034825421.Spec : Prop :=
  ∀ n, P6588476287034825421.a n = A051407 n

end A051407

/-! ## A051407.P12891563419403031781

`A025551(n)+A000244(n)²`
-/

namespace A051407.P12891563419403031781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025551 n + A000244 n ^ 2

end

end A051407.P12891563419403031781

namespace A051407

/-- `A025551(n)+A000244(n)²` -/
def P12891563419403031781.Spec : Prop :=
  ∀ n, P12891563419403031781.a n = A051407 n

end A051407

/-! ## A051407.P7019483522938452649

`A016142(n)+A024023(n)+1`
-/

namespace A051407.P7019483522938452649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 n + (A024023 n + 1)

end

end A051407.P7019483522938452649

namespace A051407

/-- `A016142(n)+A024023(n)+1` -/
def P7019483522938452649.Spec : Prop :=
  ∀ n, P7019483522938452649.a n = A051407 n

end A051407

/-! ## A051407.P9278213613654696239

`A007051(n)+A199560(n)-1`
-/

namespace A051407.P9278213613654696239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (A199560 n - 1)

end

end A051407.P9278213613654696239

namespace A051407

/-- `A007051(n)+A199560(n)-1` -/
def P9278213613654696239.Spec : Prop :=
  ∀ n, P9278213613654696239.a n = A051407 n

end A051407

/-! ## A051407.P12670445354010685685

`A025551(n)+A000244(2*n)`
-/

namespace A051407.P12670445354010685685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025551 n + A000244 (2 * n)

end

end A051407.P12670445354010685685

namespace A051407

/-- `A025551(n)+A000244(2*n)` -/
def P12670445354010685685.Spec : Prop :=
  ∀ n, P12670445354010685685.a n = A051407 n

end A051407

/-! ## A051407.P14138437998134687393

`A007051(n+1)*A133494(n+1)`
-/

namespace A051407.P14138437998134687393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) * A133494 (n + 1)

end

end A051407.P14138437998134687393

namespace A051407

/-- `A007051(n+1)*A133494(n+1)` -/
def P14138437998134687393.Spec : Prop :=
  ∀ n, P14138437998134687393.a n = A051407 n

end A051407

/-! ## A051407.P7672784817247797886

`A007051(2*n+1)+A003462(n)`
-/

namespace A051407.P7672784817247797886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n + 1) + A003462 n

end

end A051407.P7672784817247797886

namespace A051407

/-- `A007051(2*n+1)+A003462(n)` -/
def P7672784817247797886.Spec : Prop :=
  ∀ n, P7672784817247797886.a n = A051407 n

end A051407

/-! ## A051407.P18438352879681731450

`A261547(2*n+1)+A007051(n)`
-/

namespace A051407.P18438352879681731450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 (2 * n + 1) + A007051 n

end

end A051407.P18438352879681731450

namespace A051407

/-- `A261547(2*n+1)+A007051(n)` -/
def P18438352879681731450.Spec : Prop :=
  ∀ n, P18438352879681731450.a n = A051407 n

end A051407

/-! ## A051407.P13279476435279941072

`A341463(2*n+1)+A003462(n)`
-/

namespace A051407.P13279476435279941072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341463 (2 * n + 1) + A003462 n

end

end A051407.P13279476435279941072

namespace A051407

/-- `A341463(2*n+1)+A003462(n)` -/
def P13279476435279941072.Spec : Prop :=
  ∀ n, P13279476435279941072.a n = A051407 n

end A051407

/-!
# A051408: a(n+1) = a(n) + sum of digits of (a(n)^3).

The programs for A051408, the canonical program `A051408.P15079108207671988781` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051408 has offset 1).

The definition of A051408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051408.P15079108207671988781

`A004164(a(n-1))+a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051408

/-- `A004164(a(n-1))+a(n-1)` -/
def P15079108207671988781.Spec : Prop :=
  ∀ n, P15079108207671988781.a n = A051408 (n + 1)

theorem P15079108207671988781.correct : P15079108207671988781.Spec := by
  intro n
  simp only [A051408, Nat.add_sub_cancel]

end A051408

/-! ## A051408.P6570956917636171833

`A017197(eq[A004737(n+1), A035441(n+1)])`
-/

namespace A051408.P6570956917636171833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A051408.P6570956917636171833

namespace A051408

/-- `A017197(eq[A004737(n+1), A035441(n+1)])` -/
def P6570956917636171833.Spec : Prop :=
  ∀ n, P6570956917636171833.a n = A051408 (n + 1)

end A051408

/-!
# A051409: a(n+1) = a(n) + sum of digits of (a(n)^3).

The programs for A051409, the canonical program `A051409.P11390321377571457585` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051409 has offset 1).

The definition of A051409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051409.P11390321377571457585

`A004164(a(n-1))+a(n-1)` with `a(0)=4`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051409

/-- `A004164(a(n-1))+a(n-1)` -/
def P11390321377571457585.Spec : Prop :=
  ∀ n, P11390321377571457585.a n = A051409 (n + 1)

theorem P11390321377571457585.correct : P11390321377571457585.Spec := by
  intro n
  simp only [A051409, Nat.add_sub_cancel]

end A051409

/-!
# A051410: a(n+1) = a(n) + sum of digits of a(n)^3.

The programs for A051410, the canonical program `A051410.P16283429953950596313` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051410 has offset 1).

The definition of A051410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051410.P16283429953950596313

`A004164(a(n-1))+a(n-1)` with `a(0)=6`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051410

/-- `A004164(a(n-1))+a(n-1)` -/
def P16283429953950596313.Spec : Prop :=
  ∀ n, P16283429953950596313.a n = A051410 (n + 1)

theorem P16283429953950596313.correct : P16283429953950596313.Spec := by
  intro n
  simp only [A051410, Nat.add_sub_cancel]

end A051410

/-! ## A051410.P9662599371404943460

`A055040(lt[A121708(3*n+2), A190276(n+1)])`
-/

namespace A051410.P9662599371404943460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121708 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051410.P9662599371404943460

namespace A051410

/-- `A055040(lt[A121708(3*n+2), A190276(n+1)])` -/
def P9662599371404943460.Spec : Prop :=
  ∀ n, P9662599371404943460.a n = A051410 (n + 1)

end A051410

/-!
# A051411: a(n+1) = a(n) + sum of digits of a(n)^3.

The programs for A051411, the canonical program `A051411.P15164664904360530703` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051411 has offset 1).

The definition of A051411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051411.P15164664904360530703

`A004164(a(n-1))+a(n-1)` with `a(0)=7`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051411

/-- `A004164(a(n-1))+a(n-1)` -/
def P15164664904360530703.Spec : Prop :=
  ∀ n, P15164664904360530703.a n = A051411 (n + 1)

theorem P15164664904360530703.correct : P15164664904360530703.Spec := by
  intro n
  simp only [A051411, Nat.add_sub_cancel]

end A051411

/-! ## A051411.P4552522549666057137

`A074324(n)+A002024(A120478(2*n+1))`
-/

namespace A051411.P4552522549666057137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 n + A002024 (A120478 (2 * n + 1)).toNat

end

end A051411.P4552522549666057137

namespace A051411

/-- `A074324(n)+A002024(A120478(2*n+1))` -/
def P4552522549666057137.Spec : Prop :=
  ∀ n, P4552522549666057137.a n = A051411 (n + 1)

end A051411

/-!
# A051412: a(n+1) = a(n) + sum of digits of a(n)^3.

The programs for A051412, the canonical program `A051412.P8533835990491713621` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051412 has offset 1).

The definition of A051412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051412.P8533835990491713621

`A004164(a(n-1))+a(n-1)` with `a(0)=9`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051412

/-- `A004164(a(n-1))+a(n-1)` -/
def P8533835990491713621.Spec : Prop :=
  ∀ n, P8533835990491713621.a n = A051412 (n + 1)

theorem P8533835990491713621.correct : P8533835990491713621.Spec := by
  intro n
  simp only [A051412, Nat.add_sub_cancel]

end A051412

/-! ## A051412.P8619117310529239843

`∑[A118739(A102485(n)+12)]`
-/

namespace A051412.P8619117310529239843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118739 (A102485 n + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051412.P8619117310529239843

namespace A051412

/-- `∑[A118739(A102485(n)+12)]` -/
def P8619117310529239843.Spec : Prop :=
  ∀ n, P8619117310529239843.a n = A051412 (n + 1)

end A051412

/-! ## A051412.P2342326854079199819

`9*A064097(A271096(n)+1)`
-/

namespace A051412.P2342326854079199819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A064097 (A271096 n + 1).toNat

end

end A051412.P2342326854079199819

namespace A051412

/-- `9*A064097(A271096(n)+1)` -/
def P2342326854079199819.Spec : Prop :=
  ∀ n, P2342326854079199819.a n = A051412 (n + 1)

end A051412

/-!
# A051413: a(n+1) = a(n) + sum of digits of (a(n)^3).

The programs for A051413, there is no canonical definition to state claims against.
-/

/-! ## A051413.P16873752055015529880

`A335478(A195618(n)+A175132(n+1))`
-/

namespace A051413.P16873752055015529880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335478 (A195618 n + A175132 (n + 1)).toNat

end

end A051413.P16873752055015529880

/-!
# A051415: Numbers not of form n + sum of digits of n^3.

The programs for A051415, the canonical program `A051415.P17794477136852744015` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051415 has offset 1).

The definition of A051415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051415.P14697530274729278566

`comp[∑{digits}[n^3, #]+n]`
-/

namespace A051415.P14697530274729278566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A051415.P14697530274729278566

namespace A051415

/-- `comp[∑{digits}[n^3, #]+n]` -/
def P14697530274729278566.Spec : Prop :=
  ∀ n, (P14697530274729278566.a n : ℤ) = A051415 (n + 1)

end A051415

/-! ## A051415.P17794477136852744015

`eq[0, char[∑{digits}[n^3, #]+n]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051415

/-- `eq[0, char[∑{digits}[n^3, #]+n]]` -/
def P17794477136852744015.Spec : Prop :=
  ∀ n, (P17794477136852744015.a n : ℤ) = A051415 (n + 1)

theorem P17794477136852744015.correct : P17794477136852744015.Spec := by
  intro n
  simp only [A051415, Nat.add_sub_cancel]

end A051415

/-! ## A051415.P4693702175294480769

`lt[1, a(1-char[∑{digits}[n^3, #]+n])%7]` with `a(0)=1, a(1)=2`
-/

namespace A051415.P4693702175294480769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (1 - (if ∃ j, f3 j = n then 1 else 0)) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051415.P4693702175294480769

namespace A051415

/-- `lt[1, a(1-char[∑{digits}[n^3, #]+n])%7]` -/
def P4693702175294480769.Spec : Prop :=
  ∀ n, (P4693702175294480769.a n : ℤ) = A051415 (n + 1)

end A051415

/-!
# A051416: Primes whose digits are composite; primes having only {4, 6, 8, 9} as digits.

The programs for A051416, there is no canonical definition to state claims against.
-/

/-! ## A051416.P9944227331242035761

`∩[A061372(n+1), A152313(n+1)]`
-/

namespace A051416.P9944227331242035761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P9944227331242035761

/-! ## A051416.P265634840314592521

`∩[A061372(n+1), A106114(n+1)]`
-/

namespace A051416.P265634840314592521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P265634840314592521

/-! ## A051416.P17008028290655488772

`∩[A106114(n+1), A152313(n+1)]`
-/

namespace A051416.P17008028290655488772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P17008028290655488772

/-! ## A051416.P3063368954373075957

`∩[A034844(n+1), A106114(n+1)]`
-/

namespace A051416.P3063368954373075957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P3063368954373075957

/-! ## A051416.P8559845316371181310

`∩[A029581(n+1), A034844(n+1)]`
-/

namespace A051416.P8559845316371181310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P8559845316371181310

/-! ## A051416.P9027901304474895621

`∩[A029581(n+1), A061372(n+1)]`
-/

namespace A051416.P9027901304474895621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P9027901304474895621

/-! ## A051416.P15585267864193774220

`∩[A029581(n+1), A106114(n+1)]`
-/

namespace A051416.P15585267864193774220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P15585267864193774220

/-! ## A051416.P11150751403231185219

`∩[A029581(n+1), A152313(n+1)]`
-/

namespace A051416.P11150751403231185219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P11150751403231185219

/-! ## A051416.P9038755682649416480

`p?[A029581(n+1)]`
-/

namespace A051416.P9038755682649416480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051416.P9038755682649416480

/-! ## A051416.P3886445720903141994

`record[p?[A029581(A291769(n))]]`
-/

namespace A051416.P3886445720903141994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051416.P3886445720903141994

/-! ## A051416.P9743443969168970557

`record[p?[A029581(A324343(n))]]`
-/

namespace A051416.P9743443969168970557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051416.P9743443969168970557

/-! ## A051416.P6709781181704020091

`record[p?[A029581(A324344(n))]]`
-/

namespace A051416.P6709781181704020091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051416.P6709781181704020091

/-! ## A051416.P2170367102121386199

`record[p?[A029581(A324347(n))]]`
-/

namespace A051416.P2170367102121386199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051416.P2170367102121386199

/-! ## A051416.P5002055151433861113

`∩[A029581(n+1), A030433(n+1)]`
-/

namespace A051416.P5002055151433861113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P5002055151433861113

/-! ## A051416.P5205050041729577512

`∩[A029581(n+1), A152312(n+1)]`
-/

namespace A051416.P5205050041729577512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P5205050041729577512

/-! ## A051416.P5358397771355187118

`∩[A106114(n+1), A152312(n+1)]`
-/

namespace A051416.P5358397771355187118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P5358397771355187118

/-! ## A051416.P6593244940127002529

`∩[A029581(n+1), A342961(n+1)]`
-/

namespace A051416.P6593244940127002529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P6593244940127002529

/-! ## A051416.P4254976291799254188

`∩[A029581(n+1), A106115(n+1)]`
-/

namespace A051416.P4254976291799254188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P4254976291799254188

/-! ## A051416.P11092511388969330925

`∩[A034844(n+1), A106115(n+1)]`
-/

namespace A051416.P11092511388969330925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P11092511388969330925

/-! ## A051416.P14274603131775977992

`∩[A061372(n+1), A106115(n+1)]`
-/

namespace A051416.P14274603131775977992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051416.P14274603131775977992

/-!
# A051417: Quotients of consecutive values of lcm {1, 3, 5 ..., 2n-1} or A025547(n+1)/A025547(n).

The programs for A051417, the canonical program `A051417.P3671986154783513248` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051417 has offset 1).

The definition of A051417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051417.P3671986154783513248

`A014963(2*(n+1)+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A051417

/-- `A014963(2*(n+1)+1)` -/
def P3671986154783513248.Spec : Prop :=
  ∀ n, P3671986154783513248.a n = A051417 (n + 1)

theorem P3671986154783513248.correct : P3671986154783513248.Spec := by
  intro n
  simp only [A051417, Nat.add_sub_cancel]

end A051417

/-! ## A051417.P8728383454927752156

`A007947(2*n+3)^A100995(A007947(2*n+3))`
-/

namespace A051417.P8728383454927752156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (2 * n + 3) : ℚ) ^ (A100995 (A007947 (2 * n + 3)).toNat : ℤ)

end

end A051417.P8728383454927752156

namespace A051417

/-- `A007947(2*n+3)^A100995(A007947(2*n+3))` -/
def P8728383454927752156.Spec : Prop :=
  ∀ n, P8728383454927752156.a n = (A051417 (n + 1) : ℚ)

end A051417

/-! ## A051417.P4451494835106650550

`gcd(A076565(n+1), A090368(n+2))`
-/

namespace A051417.P4451494835106650550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076565 (n + 1)) (A090368 (n + 2))

end

end A051417.P4451494835106650550

namespace A051417

/-- `gcd(A076565(n+1), A090368(n+2))` -/
def P4451494835106650550.Spec : Prop :=
  ∀ n, (P4451494835106650550.a n : ℤ) = A051417 (n + 1)

end A051417

/-! ## A051417.P13552776300979710314

`A369045(2*A054429(n+1))`
-/

namespace A051417.P13552776300979710314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369045 (2 * A054429 (n + 1)).toNat

end

end A051417.P13552776300979710314

namespace A051417

/-- `A369045(2*A054429(n+1))` -/
def P13552776300979710314.Spec : Prop :=
  ∀ n, P13552776300979710314.a n = A051417 (n + 1)

end A051417

/-! ## A051417.P49884632347424108

`A369045(A054429(n+1)+A054429(n+1))`
-/

namespace A051417.P49884632347424108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369045 (A054429 (n + 1) + A054429 (n + 1)).toNat

end

end A051417.P49884632347424108

namespace A051417

/-- `A369045(A054429(n+1)+A054429(n+1))` -/
def P49884632347424108.Spec : Prop :=
  ∀ n, P49884632347424108.a n = A051417 (n + 1)

end A051417

/-! ## A051417.P4390534077397806546

`A000265(A120114(n))`
-/

namespace A051417.P4390534077397806546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A120114 n).toNat

end

end A051417.P4390534077397806546

namespace A051417

/-- `A000265(A120114(n))` -/
def P4390534077397806546.Spec : Prop :=
  ∀ n, P4390534077397806546.a n = A051417 (n + 1)

end A051417

/-! ## A051417.P3870243200500785406

`gcd(A061550(n), A120114(n))`
-/

namespace A051417.P3870243200500785406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061550 n) (A120114 n)

end

end A051417.P3870243200500785406

namespace A051417

/-- `gcd(A061550(n), A120114(n))` -/
def P3870243200500785406.Spec : Prop :=
  ∀ n, (P3870243200500785406.a n : ℤ) = A051417 (n + 1)

end A051417

/-! ## A051417.P12326577513961496629

`A051543(Δ[n²])`
-/

namespace A051417.P12326577513961496629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051417.P12326577513961496629

namespace A051417

/-- `A051543(Δ[n²])` -/
def P12326577513961496629.Spec : Prop :=
  ∀ n, P12326577513961496629.a n = A051417 (n + 1)

end A051417

/-! ## A051417.P6471199285053144414

`A265574(2*(n+1))`
-/

namespace A051417.P6471199285053144414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265574 (2 * (n + 1))

end

end A051417.P6471199285053144414

namespace A051417

/-- `A265574(2*(n+1))` -/
def P6471199285053144414.Spec : Prop :=
  ∀ n, P6471199285053144414.a n = A051417 (n + 1)

end A051417

/-! ## A051417.P9818104794369323612

`A099634(2*n+3)`
-/

namespace A051417.P9818104794369323612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099634 (2 * n + 3)

end

end A051417.P9818104794369323612

namespace A051417

/-- `A099634(2*n+3)` -/
def P9818104794369323612.Spec : Prop :=
  ∀ n, P9818104794369323612.a n = A051417 (n + 1)

end A051417

/-! ## A051417.P5942870119448507854

`A006530(A051543(2*n+1))`
-/

namespace A051417.P5942870119448507854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051543 (2 * n + 1)).toNat

end

end A051417.P5942870119448507854

namespace A051417

/-- `A006530(A051543(2*n+1))` -/
def P5942870119448507854.Spec : Prop :=
  ∀ n, P5942870119448507854.a n = A051417 (n + 1)

end A051417

/-! ## A051417.P14989125768241941393

`A120114(n)/A051543(2*(n+1))`
-/

namespace A051417.P14989125768241941393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120114 n : ℚ) / (A051543 (2 * (n + 1)) : ℚ)

end

end A051417.P14989125768241941393

namespace A051417

/-- `A120114(n)/A051543(2*(n+1))` -/
def P14989125768241941393.Spec : Prop :=
  ∀ n, P14989125768241941393.a n = (A051417 (n + 1) : ℚ)

end A051417

/-! ## A051417.P10661314997217001814

`A025547(n+2)/A025547(n+1)`
-/

namespace A051417.P10661314997217001814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025547 (n + 2) : ℚ) / (A025547 (n + 1) : ℚ)

end

end A051417.P10661314997217001814

namespace A051417

/-- `A025547(n+2)/A025547(n+1)` -/
def P10661314997217001814.Spec : Prop :=
  ∀ n, P10661314997217001814.a n = (A051417 (n + 1) : ℚ)

end A051417

/-!
# A051418: Square of LCM of {1, 2, ..., n}.

The programs for A051418, the canonical program `A051418.P11524117831190498451` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051418 has offset 1).

The definition of A051418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051418.P11524117831190498451

`A003418(n+1)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051418

/-- `A003418(n+1)²` -/
def P11524117831190498451.Spec : Prop :=
  ∀ n, P11524117831190498451.a n = A051418 (n + 1)

theorem P11524117831190498451.correct : P11524117831190498451.Spec := by
  intro n
  simp only [A051418, Nat.add_sub_cancel]

end A051418

/-! ## A051418.P2270532102950054821

`lcm((n+1)², a(n-1))` with `a(0)=1`
-/

namespace A051418.P2270532102950054821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm ((n + 1) ^ 2) (a (n - 1))

end

end A051418.P2270532102950054821

namespace A051418

/-- `lcm((n+1)², a(n-1))` -/
def P2270532102950054821.Spec : Prop :=
  ∀ n, (P2270532102950054821.a n : ℤ) = A051418 (n + 1)

end A051418

/-! ## A051418.P1164952318761243886

`lcm(abs(a(n-1)), ∑[2*n+1])` with `a(0)=1`
-/

namespace A051418.P1164952318761243886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051418.P1164952318761243886

namespace A051418

/-- `lcm(abs(a(n-1)), ∑[2*n+1])` -/
def P1164952318761243886.Spec : Prop :=
  ∀ n, (P1164952318761243886.a n : ℤ) = A051418 (n + 1)

end A051418

/-! ## A051418.P3548481463157390612

`lcm(n*(n+2)+1, floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051418.P3548481463157390612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n * (n + 2) + 1) (a (n - 1))

end

end A051418.P3548481463157390612

namespace A051418

/-- `lcm(n*(n+2)+1, floor(a(n-1)))` -/
def P3548481463157390612.Spec : Prop :=
  ∀ n, (P3548481463157390612.a n : ℤ) = A051418 (n + 1)

end A051418

/-! ## A051418.P14813772184064288284

`lcm(-a(n-1), (2*n-(n-1))²)` with `a(0)=1`
-/

namespace A051418.P14813772184064288284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (((2 * n : ℤ) - ((n : ℤ) - 1)) ^ 2)

end

end A051418.P14813772184064288284

namespace A051418

/-- `lcm(-a(n-1), (2*n-(n-1))²)` -/
def P14813772184064288284.Spec : Prop :=
  ∀ n, (P14813772184064288284.a n : ℤ) = A051418 (n + 1)

end A051418

/-! ## A051418.P8201700026711931192

`(n+1)²/gcd((n+1)², a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A051418.P8201700026711931192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) * a (n - 1)

end

end A051418.P8201700026711931192

namespace A051418

/-- `(n+1)²/gcd((n+1)², a(n-1))*a(n-1)` -/
def P8201700026711931192.Spec : Prop :=
  ∀ n, P8201700026711931192.a n = (A051418 (n + 1) : ℚ)

end A051418

/-! ## A051418.P1930159156532931048

`A139547(∑[n])²`
-/

namespace A051418.P1930159156532931048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139547 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A051418.P1930159156532931048

namespace A051418

/-- `A139547(∑[n])²` -/
def P1930159156532931048.Spec : Prop :=
  ∀ n, P1930159156532931048.a n = A051418 (n + 1)

end A051418

/-! ## A051418.P6525412271791900656

`Δ[A173185(n)]²`
-/

namespace A051418.P6525412271791900656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A051418.P6525412271791900656

namespace A051418

/-- `Δ[A173185(n)]²` -/
def P6525412271791900656.Spec : Prop :=
  ∀ n, P6525412271791900656.a n = A051418 (n + 1)

end A051418

/-! ## A051418.P6975920073371968724

`Δ[A236856(n)]²`
-/

namespace A051418.P6975920073371968724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A051418.P6975920073371968724

namespace A051418

/-- `Δ[A236856(n)]²` -/
def P6975920073371968724.Spec : Prop :=
  ∀ n, P6975920073371968724.a n = A051418 (n + 1)

end A051418

/-! ## A051418.P6551732142223123493

`(A070198(n)+1)²`
-/

namespace A051418.P6551732142223123493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070198 n + 1) ^ 2

end

end A051418.P6551732142223123493

namespace A051418

/-- `(A070198(n)+1)²` -/
def P6551732142223123493.Spec : Prop :=
  ∀ n, P6551732142223123493.a n = A051418 (n + 1)

theorem P6551732142223123493.correct : P6551732142223123493.Spec := by
  intro n
  simp only [A051418, Nat.add_sub_cancel, A051418.P6551732142223123493.a, A051418.P11524117831190498451.a, A003418, A003418.P6976248655893080794.a, A070198, A070198.P18115024891889206898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051418

/-! ## A051418.P8662533556143672833

`∏[ratio[A003418(n)]²]`
-/

namespace A051418.P8662533556143672833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051418.P8662533556143672833

namespace A051418

/-- `∏[ratio[A003418(n)]²]` -/
def P8662533556143672833.Spec : Prop :=
  ∀ n, P8662533556143672833.a n = (A051418 (n + 1) : ℚ)

end A051418

/-! ## A051418.P2905020992342348864

`(∑[A119944(n)]+1)²`
-/

namespace A051418.P2905020992342348864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A051418.P2905020992342348864

namespace A051418

/-- `(∑[A119944(n)]+1)²` -/
def P2905020992342348864.Spec : Prop :=
  ∀ n, P2905020992342348864.a n = A051418 (n + 1)

end A051418

/-! ## A051418.P4663735730633488005

`A120435(∑[n]+1)²`
-/

namespace A051418.P4663735730633488005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120435 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A051418.P4663735730633488005

namespace A051418

/-- `A120435(∑[n]+1)²` -/
def P4663735730633488005.Spec : Prop :=
  ∀ n, P4663735730633488005.a n = A051418 (n + 1)

end A051418

/-! ## A051418.P10464244584577252946

`∏[A014963(n+1)²]`
-/

namespace A051418.P10464244584577252946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051418.P10464244584577252946

namespace A051418

/-- `∏[A014963(n+1)²]` -/
def P10464244584577252946.Spec : Prop :=
  ∀ n, P10464244584577252946.a n = A051418 (n + 1)

end A051418

/-! ## A051418.P5065091250372612447

`(1-A075059(n+1))²`
-/

namespace A051418.P5065091250372612447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A075059 (n + 1)) ^ 2

end

end A051418.P5065091250372612447

namespace A051418

/-- `(1-A075059(n+1))²` -/
def P5065091250372612447.Spec : Prop :=
  ∀ n, P5065091250372612447.a n = A051418 (n + 1)

theorem P5065091250372612447.correct : P5065091250372612447.Spec := by
  intro n
  simp only [A051418, Nat.add_sub_cancel, A051418.P5065091250372612447.a, A051418.P11524117831190498451.a, A003418, A003418.P6976248655893080794.a, A075059, A075059.P13005941669399506084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051418

/-! ## A051418.P12053394683649671657

`A139550(2*(n+1))²`
-/

namespace A051418.P12053394683649671657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * (n + 1)) ^ 2

end

end A051418.P12053394683649671657

namespace A051418

/-- `A139550(2*(n+1))²` -/
def P12053394683649671657.Spec : Prop :=
  ∀ n, P12053394683649671657.a n = A051418 (n + 1)

end A051418

/-! ## A051418.P17559989023992876093

`(A051426(n+1)/2)²`
-/

namespace A051418.P17559989023992876093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051426 (n + 1) : ℚ) / 2) ^ 2

end

end A051418.P17559989023992876093

namespace A051418

/-- `(A051426(n+1)/2)²` -/
def P17559989023992876093.Spec : Prop :=
  ∀ n, P17559989023992876093.a n = (A051418 (n + 1) : ℚ)

end A051418

/-! ## A051418.P9009246809064601698

`A139554(4*(n+1))²`
-/

namespace A051418.P9009246809064601698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (4 * (n + 1)) ^ 2

end

end A051418.P9009246809064601698

namespace A051418

/-- `A139554(4*(n+1))²` -/
def P9009246809064601698.Spec : Prop :=
  ∀ n, P9009246809064601698.a n = A051418 (n + 1)

end A051418

/-! ## A051418.P5213010286277521482

`(A065500(n+1)-n)²`
-/

namespace A051418.P5213010286277521482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065500 (n + 1) - (n : ℤ)) ^ 2

end

end A051418.P5213010286277521482

namespace A051418

/-- `(A065500(n+1)-n)²` -/
def P5213010286277521482.Spec : Prop :=
  ∀ n, P5213010286277521482.a n = A051418 (n + 1)

end A051418

/-! ## A051418.P2447793043089631835

`(n+1-A060401(n+1))²`
-/

namespace A051418.P2447793043089631835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A060401 (n + 1)) ^ 2

end

end A051418.P2447793043089631835

namespace A051418

/-- `(n+1-A060401(n+1))²` -/
def P2447793043089631835.Spec : Prop :=
  ∀ n, P2447793043089631835.a n = A051418 (n + 1)

theorem P2447793043089631835.correct : P2447793043089631835.Spec := by
  intro n
  simp only [A051418, Nat.add_sub_cancel, A051418.P2447793043089631835.a, A051418.P11524117831190498451.a, A003418, A003418.P6976248655893080794.a, A060401, A060401.P17035692861748186501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051418

/-!
# A051419: Local stops on New York City 1 Train (Broadway-7 Avenue Local) subway, but with 33rd St instead of 34th St.

The programs for A051419, there is no canonical definition to state claims against.
-/

/-! ## A051419.P10494331490305229888

`A000053(n+1)-char[4]`
-/

namespace A051419.P10494331490305229888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000053 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A051419.P10494331490305229888

/-! ## A051419.P6721594074466397057

`abs(A000053(n+1)-A185014(n))`
-/

namespace A051419.P6721594074466397057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000053 (n + 1) - A185014 n|

end

end A051419.P6721594074466397057

/-! ## A051419.P325796823724586066

`A000027(A000053(n+1)-A185014(n))`
-/

namespace A051419.P325796823724586066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000053 (n + 1) - A185014 n).toNat

end

end A051419.P325796823724586066

/-! ## A051419.P16221976322319846117

`A015855(A034683(n+1))+A000053(n+1)`
-/

namespace A051419.P16221976322319846117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015855 (A034683 (n + 1)).toNat + A000053 (n + 1)

end

end A051419.P16221976322319846117

/-! ## A051419.P16285033205649078752

`A010815(A172522(n+1))+A000053(n+1)`
-/

namespace A051419.P16285033205649078752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A172522 (n + 1)).toNat + A000053 (n + 1)

end

end A051419.P16285033205649078752

/-!
# A051422: Nearest integer to cosecant(n).

The programs for A051422, the canonical program `A051422.P12732021136071216690` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051422 has offset 1).

The definition of A051422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051422.P12732021136071216690

`round(1/sin(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051422

/-- `round(1/sin(n+1))` -/
def P12732021136071216690.Spec : Prop :=
  ∀ n, P12732021136071216690.a n = A051422 (n + 1)

theorem P12732021136071216690.correct : P12732021136071216690.Spec := by
  intro n
  simp only [A051422, Nat.add_sub_cancel]

end A051422

/-! ## A051422.P4763975863583152664

`round(tan(acot(sin(n+1))))`
-/

namespace A051422.P4763975863583152664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (SequenceMachineLib.acot (Real.sin (n + 1 : ℝ))))

end

end A051422.P4763975863583152664

namespace A051422

/-- `round(tan(acot(sin(n+1))))` -/
def P4763975863583152664.Spec : Prop :=
  ∀ n, P4763975863583152664.a n = A051422 (n + 1)

end A051422

/-! ## A051422.P16112383623397067518

`round(cot(atan(sin(n+1))))`
-/

namespace A051422.P16112383623397067518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arctan (Real.sin (n + 1 : ℝ))))

end

end A051422.P16112383623397067518

namespace A051422

/-- `round(cot(atan(sin(n+1))))` -/
def P16112383623397067518.Spec : Prop :=
  ∀ n, P16112383623397067518.a n = A051422 (n + 1)

end A051422

/-! ## A051422.P13100056168192651181

`round(sin(n+1)^-1)`
-/

namespace A051422.P13100056168192651181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (n + 1 : ℝ) ^ (-1 : ℤ))

end

end A051422.P13100056168192651181

namespace A051422

/-- `round(sin(n+1)^-1)` -/
def P13100056168192651181.Spec : Prop :=
  ∀ n, P13100056168192651181.a n = A051422 (n + 1)

theorem P13100056168192651181.correct : P13100056168192651181.Spec := by
  intro n
  simp only [A051422, Nat.add_sub_cancel, A051422.P13100056168192651181.a, A051422.P12732021136071216690.a, SequenceMachineLib.memo_apply]
  try simp

end A051422

/-! ## A051422.P2135259261193675111

`ceil(floor(2/sin(n+1))/2)`
-/

namespace A051422.P2135259261193675111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊2 / Real.sin (n + 1 : ℝ)⌋ : ℚ) / 2⌉

end

end A051422.P2135259261193675111

namespace A051422

/-- `ceil(floor(2/sin(n+1))/2)` -/
def P2135259261193675111.Spec : Prop :=
  ∀ n, P2135259261193675111.a n = A051422 (n + 1)

end A051422

/-! ## A051422.P7941337019500959698

`round(cot(n+1)/cos(n+1))`
-/

namespace A051422.P7941337019500959698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (n + 1 : ℝ) / Real.cos (n + 1 : ℝ))

end

end A051422.P7941337019500959698

namespace A051422

/-- `round(cot(n+1)/cos(n+1))` -/
def P7941337019500959698.Spec : Prop :=
  ∀ n, P7941337019500959698.a n = A051422 (n + 1)

end A051422

/-! ## A051422.P5903118678515376728

`floor((2/sin(n+1)+1)/2)`
-/

namespace A051422.P5903118678515376728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / Real.sin (n + 1 : ℝ) + 1) / 2⌋

end

end A051422.P5903118678515376728

namespace A051422

/-- `floor((2/sin(n+1)+1)/2)` -/
def P5903118678515376728.Spec : Prop :=
  ∀ n, P5903118678515376728.a n = A051422 (n + 1)

end A051422

/-! ## A051422.P5217237930172559003

`round(cot((n+1)/2)-cot(n+1))`
-/

namespace A051422.P5217237930172559003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((n + 1 : ℚ) / 2 : ℝ) - Real.cot (n + 1 : ℝ))

end

end A051422.P5217237930172559003

namespace A051422

/-- `round(cot((n+1)/2)-cot(n+1))` -/
def P5217237930172559003.Spec : Prop :=
  ∀ n, P5217237930172559003.a n = A051422 (n + 1)

end A051422

/-!
# A051424: Number of partitions of n into pairwise relatively prime parts.

The programs for A051424, there is no canonical definition to state claims against.
-/

/-! ## A051424.P6753254054446784729

`∑[A007359(n)]`
-/

namespace A051424.P6753254054446784729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051424.P6753254054446784729

/-! ## A051424.P6415390281813877250

`A007360(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A051424.P6415390281813877250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007360 n + a (n - 2)

end

end A051424.P6415390281813877250

/-! ## A051424.P7513703880732590979

`A327516(n)+A157928(n)`
-/

namespace A051424.P7513703880732590979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 n + A157928 n

end

end A051424.P7513703880732590979

/-! ## A051424.P13403743692460545705

`∑[A337485(n)+A060576(n)]`
-/

namespace A051424.P13403743692460545705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337485 n + A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051424.P13403743692460545705

/-! ## A051424.P16506734906683385064

`A327516(n+1)-A337485(n+1)`
-/

namespace A051424.P16506734906683385064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 (n + 1) - A337485 (n + 1)

end

end A051424.P16506734906683385064

/-! ## A051424.P14652611471467820870

`A327516(n+2)-A305713(n+2)`
-/

namespace A051424.P14652611471467820870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 (n + 2) - A305713 (n + 2)

end

end A051424.P14652611471467820870

/-! ## A051424.P12654345513960598538

`A007359(n)+a(n-1)%A299253(n)` with `a(0)=1`
-/

namespace A051424.P12654345513960598538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007359 n + Int.tmod (a (n - 1)) (A299253 n)

end

end A051424.P12654345513960598538

/-! ## A051424.P3956786677838188086

`A327516(n)%A101268(n)+1`
-/

namespace A051424.P3956786677838188086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327516 n) (A101268 n) + 1

end

end A051424.P3956786677838188086

/-! ## A051424.P3907940635339312685

`A101268(n)+A327516(n)-A337462(n)`
-/

namespace A051424.P3907940635339312685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n + (A327516 n - A337462 n)

end

end A051424.P3907940635339312685

/-!
# A051425: (Terms in A029665)/2.

The programs for A051425, there is no canonical definition to state claims against.
-/

/-! ## A051425.P2718630422829254524

`A029665(n)/2`
-/

namespace A051425.P2718630422829254524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029665 n : ℚ) / 2

end

end A051425.P2718630422829254524

/-! ## A051425.P1211415230070867148

`A014682(A029665(n))`
-/

namespace A051425.P1211415230070867148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029665 n).toNat

end

end A051425.P1211415230070867148

/-! ## A051425.P4037600583552909604

`A273943(lcm(2, A029665(n)))`
-/

namespace A051425.P4037600583552909604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A029665 n))

end

end A051425.P4037600583552909604

/-! ## A051425.P16817563673028092946

`A273943(A029665(n)-A000007(n))`
-/

namespace A051425.P16817563673028092946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A029665 n - A000007 n).toNat

end

end A051425.P16817563673028092946

/-! ## A051425.P12006335193296465860

`A273943(A029665(n))%A005109(n+1)`
-/

namespace A051425.P12006335193296465860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273943 (A029665 n).toNat) (A005109 (n + 1))

end

end A051425.P12006335193296465860

/-! ## A051425.P14737565044878967510

`A273943(A029665(n)%A109788(n+1))`
-/

namespace A051425.P14737565044878967510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A029665 n) (A109788 (n + 1))).toNat

end

end A051425.P14737565044878967510

/-! ## A051425.P25744944660342269

`A318518(A029665(n)+2)-1`
-/

namespace A051425.P25744944660342269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A029665 n + 2).toNat - 1

end

end A051425.P25744944660342269

/-! ## A051425.P15402268466648021469

`A318518(or(1, A029665(n))-1)`
-/

namespace A051425.P15402268466648021469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (Int.lor 1 (A029665 n) - 1).toNat

end

end A051425.P15402268466648021469

/-! ## A051425.P5694609778102387507

`A318518(A029665(n))%A000032(n+2)`
-/

namespace A051425.P5694609778102387507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318518 (A029665 n).toNat) (A000032 (n + 2))

end

end A051425.P5694609778102387507

/-!
# A051426: Least common multiple of {2, 4, 6, ..., 2n}.

The programs for A051426, the canonical program `A051426.P6036965153388310887` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051426 has offset 1).

The definition of A051426 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051426.P13981980521720721862

`lcm(a(n-1), 2*(n+1))` with `a(0)=2`
-/

namespace A051426.P13981980521720721862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm (a (n - 1)) (2 * (n + 1))

end

end A051426.P13981980521720721862

namespace A051426

/-- `lcm(a(n-1), 2*(n+1))` -/
def P13981980521720721862.Spec : Prop :=
  ∀ n, (P13981980521720721862.a n : ℤ) = A051426 (n + 1)

end A051426

/-! ## A051426.P6036965153388310887

`a(n-1)*A014963(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A051426

/-- `a(n-1)*A014963(n+1)` -/
def P6036965153388310887.Spec : Prop :=
  ∀ n, P6036965153388310887.a n = A051426 (n + 1)

theorem P6036965153388310887.correct : P6036965153388310887.Spec := by
  intro n
  simp only [A051426, Nat.add_sub_cancel]

end A051426

/-! ## A051426.P1043521201891827558

`lcm(∑[4*n], a(n-1))` with `a(0)=2`
-/

namespace A051426.P1043521201891827558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (a (n - 1))

end

end A051426.P1043521201891827558

namespace A051426

/-- `lcm(∑[4*n], a(n-1))` -/
def P1043521201891827558.Spec : Prop :=
  ∀ n, (P1043521201891827558.a n : ℤ) = A051426 (n + 1)

end A051426

/-! ## A051426.P16234624903416840689

`lcm(n+2+n, -a(n-1))` with `a(0)=2`
-/

namespace A051426.P16234624903416840689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (n + 2 + n : ℤ) (-(a (n - 1) : ℤ))

end

end A051426.P16234624903416840689

namespace A051426

/-- `lcm(n+2+n, -a(n-1))` -/
def P16234624903416840689.Spec : Prop :=
  ∀ n, (P16234624903416840689.a n : ℤ) = A051426 (n + 1)

end A051426

/-! ## A051426.P9375887498910691993

`lcm(2*(2*n-(n-1)), floor(a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A051426.P9375887498910691993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (2 * ((2 * n : ℤ) - ((n : ℤ) - 1))) (a (n - 1) : ℤ)

end

end A051426.P9375887498910691993

namespace A051426

/-- `lcm(2*(2*n-(n-1)), floor(a(n-1)))` -/
def P9375887498910691993.Spec : Prop :=
  ∀ n, (P9375887498910691993.a n : ℤ) = A051426 (n + 1)

end A051426

/-! ## A051426.P5006039248207203017

`2*∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A051426.P5006039248207203017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A051426.P5006039248207203017

namespace A051426

/-- `2*∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]` -/
def P5006039248207203017.Spec : Prop :=
  ∀ n, P5006039248207203017.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P2637172075118211473

`(n+1)*a(n-1)/gcd(n+1, a(n-1)/2)` with `a(0)=2`
-/

namespace A051426.P2637172075118211473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1) / 2)) : ℚ))

end

end A051426.P2637172075118211473

namespace A051426

/-- `(n+1)*a(n-1)/gcd(n+1, a(n-1)/2)` -/
def P2637172075118211473.Spec : Prop :=
  ∀ n, P2637172075118211473.a n = (A051426 (n + 1) : ℚ)

end A051426

/-! ## A051426.P4063557148936871071

`Δ[2*A173185(n)]`
-/

namespace A051426.P4063557148936871071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051426.P4063557148936871071

namespace A051426

/-- `Δ[2*A173185(n)]` -/
def P4063557148936871071.Spec : Prop :=
  ∀ n, P4063557148936871071.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P8184328266681628048

`Δ[2*A236856(n)]`
-/

namespace A051426.P8184328266681628048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051426.P8184328266681628048

namespace A051426

/-- `Δ[2*A236856(n)]` -/
def P8184328266681628048.Spec : Prop :=
  ∀ n, P8184328266681628048.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P4321083405465651284

`2*A003418(n+1)`
-/

namespace A051426.P4321083405465651284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003418 (n + 1)

end

end A051426.P4321083405465651284

namespace A051426

/-- `2*A003418(n+1)` -/
def P4321083405465651284.Spec : Prop :=
  ∀ n, P4321083405465651284.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P14960360061189613421

`2*(A070198(n)+1)`
-/

namespace A051426.P14960360061189613421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A070198 n + 1)

end

end A051426.P14960360061189613421

namespace A051426

/-- `2*(A070198(n)+1)` -/
def P14960360061189613421.Spec : Prop :=
  ∀ n, P14960360061189613421.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P11033988594562471136

`Δ[2*∑[A003418(n)]]`
-/

namespace A051426.P11033988594562471136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051426.P11033988594562471136

namespace A051426

/-- `Δ[2*∑[A003418(n)]]` -/
def P11033988594562471136.Spec : Prop :=
  ∀ n, P11033988594562471136.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P11877314900336731902

`2*(∑[A119944(n)]+1)`
-/

namespace A051426.P11877314900336731902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A051426.P11877314900336731902

namespace A051426

/-- `2*(∑[A119944(n)]+1)` -/
def P11877314900336731902.Spec : Prop :=
  ∀ n, P11877314900336731902.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P777083828533060004

`2*∏[A014963(n+1)]`
-/

namespace A051426.P777083828533060004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A051426.P777083828533060004

namespace A051426

/-- `2*∏[A014963(n+1)]` -/
def P777083828533060004.Spec : Prop :=
  ∀ n, P777083828533060004.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P1711397454835680931

`2*(A075059(n+1)-1)`
-/

namespace A051426.P1711397454835680931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A075059 (n + 1) - 1)

end

end A051426.P1711397454835680931

namespace A051426

/-- `2*(A075059(n+1)-1)` -/
def P1711397454835680931.Spec : Prop :=
  ∀ n, P1711397454835680931.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P891773506613986958

`2*A139550(2*(n+1))`
-/

namespace A051426.P891773506613986958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139550 (2 * (n + 1))

end

end A051426.P891773506613986958

namespace A051426

/-- `2*A139550(2*(n+1))` -/
def P891773506613986958.Spec : Prop :=
  ∀ n, P891773506613986958.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P1738825051747827225

`2*(A065500(n+1)-n)`
-/

namespace A051426.P1738825051747827225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A065500 (n + 1) - (n : ℤ))

end

end A051426.P1738825051747827225

namespace A051426

/-- `2*(A065500(n+1)-n)` -/
def P1738825051747827225.Spec : Prop :=
  ∀ n, P1738825051747827225.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P13604022814732163332

`2*(A060401(n+1)-(n+1))`
-/

namespace A051426.P13604022814732163332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060401 (n + 1) - (n + 1 : ℤ))

end

end A051426.P13604022814732163332

namespace A051426

/-- `2*(A060401(n+1)-(n+1))` -/
def P13604022814732163332.Spec : Prop :=
  ∀ n, P13604022814732163332.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P23312083104515103

`2*(n+1)*A002944(n+1)`
-/

namespace A051426.P23312083104515103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A002944 (n + 1))

end

end A051426.P23312083104515103

namespace A051426

/-- `2*(n+1)*A002944(n+1)` -/
def P23312083104515103.Spec : Prop :=
  ∀ n, P23312083104515103.a n = A051426 (n + 1)

end A051426

/-! ## A051426.P3477151157489143616

`a(n-1)*A020500(n+1)` with `a(0)=2`
-/

namespace A051426.P3477151157489143616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A020500 (n + 1)

end

end A051426.P3477151157489143616

namespace A051426

/-- `a(n-1)*A020500(n+1)` -/
def P3477151157489143616.Spec : Prop :=
  ∀ n, P3477151157489143616.a n = A051426 (n + 1)

end A051426

/-!
# A051428: (Terms in A029658)/2.

The programs for A051428, there is no canonical definition to state claims against.
-/

/-! ## A051428.P11068231016985716309

`A029658(n)/2`
-/

namespace A051428.P11068231016985716309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029658 n : ℚ) / 2

end

end A051428.P11068231016985716309

/-! ## A051428.P877033181118291897

`A014682(A029658(n))`
-/

namespace A051428.P877033181118291897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029658 n).toNat

end

end A051428.P877033181118291897

/-! ## A051428.P13511354731051044482

`A273943(lcm(2, A029658(n)))`
-/

namespace A051428.P13511354731051044482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A029658 n))

end

end A051428.P13511354731051044482

/-! ## A051428.P1355240438968229632

`A273943(A029658(n)-A000007(n))`
-/

namespace A051428.P1355240438968229632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A029658 n - A000007 n).toNat

end

end A051428.P1355240438968229632

/-! ## A051428.P16073506882935233338

`A273943(A029658(n))+A000007(n+3)`
-/

namespace A051428.P16073506882935233338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A029658 n).toNat + A000007 (n + 3)

end

end A051428.P16073506882935233338

/-! ## A051428.P2299635039796318374

`A273943(A029658(n)+A010673(2*n))`
-/

namespace A051428.P2299635039796318374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A029658 n + A010673 (2 * n)).toNat

end

end A051428.P2299635039796318374

/-! ## A051428.P8753221385948603558

`A273943(A029658(n)%A236055(n+1))`
-/

namespace A051428.P8753221385948603558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A029658 n) (A236055 (n + 1))).toNat

end

end A051428.P8753221385948603558

/-! ## A051428.P16522645870121772352

`A318516(A029658(n)+2)-1`
-/

namespace A051428.P16522645870121772352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A029658 n + 2).toNat - 1

end

end A051428.P16522645870121772352

/-! ## A051428.P7173006464278093356

`A318516(A029658(n))%A000040(n+1)²`
-/

namespace A051428.P7173006464278093356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318516 (A029658 n).toNat) (A000040 (n + 1) ^ 2)

end

end A051428.P7173006464278093356

/-!
# A051429: (Terms in A029659)/2.

The programs for A051429, the canonical program `A051429.P11525553807131597753` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051429 has offset 0).

The definition of A051429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051429.P11525553807131597753

`A029659(n)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051429

/-- `A029659(n)/2` -/
def P11525553807131597753.Spec : Prop :=
  ∀ n, P11525553807131597753.a n = (A051429 n : ℚ)

end A051429

/-! ## A051429.P5327487896998583973

`A051434(n)-sqrt(A014727(n))`
-/

namespace A051429.P5327487896998583973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051434 n : ℝ) - Real.sqrt (A014727 n : ℝ)

end

end A051429.P5327487896998583973

namespace A051429

/-- `A051434(n)-sqrt(A014727(n))` -/
def P5327487896998583973.Spec : Prop :=
  ∀ n, P5327487896998583973.a n = (A051429 n : ℝ)

end A051429

/-! ## A051429.P16840417290241619042

`A051434(n)-A014428(n+1)`
-/

namespace A051429.P16840417290241619042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n - A014428 (n + 1)

end

end A051429.P16840417290241619042

namespace A051429

/-- `A051434(n)-A014428(n+1)` -/
def P16840417290241619042.Spec : Prop :=
  ∀ n, P16840417290241619042.a n = A051429 n

end A051429

/-! ## A051429.P189857770199815309

`A029607(n+1)/2-A014428(n+1)`
-/

namespace A051429.P189857770199815309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029607 (n + 1) : ℚ) / 2 - (A014428 (n + 1) : ℚ)

end

end A051429.P189857770199815309

namespace A051429

/-- `A029607(n+1)/2-A014428(n+1)` -/
def P189857770199815309.Spec : Prop :=
  ∀ n, P189857770199815309.a n = (A051429 n : ℚ)

end A051429

/-! ## A051429.P11297577248873243111

`A029656(A268232(n+1)+2)/2`
-/

namespace A051429.P11297577248873243111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029656 (A268232 (n + 1) + 2).toNat : ℚ) / 2

end

end A051429.P11297577248873243111

namespace A051429

/-- `A029656(A268232(n+1)+2)/2` -/
def P11297577248873243111.Spec : Prop :=
  ∀ n, P11297577248873243111.a n = (A051429 n : ℚ)

end A051429

/-! ## A051429.P13025074649814837104

`A110813(A268232(n+1))/2`
-/

namespace A051429.P13025074649814837104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110813 (A268232 (n + 1)).toNat : ℚ) / 2

end

end A051429.P13025074649814837104

namespace A051429

/-- `A110813(A268232(n+1))/2` -/
def P13025074649814837104.Spec : Prop :=
  ∀ n, P13025074649814837104.a n = (A051429 n : ℚ)

end A051429

/-! ## A051429.P11894711007500813700

`A051597(A268232(n+1))-A051468(n)`
-/

namespace A051429.P11894711007500813700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 (A268232 (n + 1)).toNat - A051468 n

end

end A051429.P11894711007500813700

namespace A051429

/-- `A051597(A268232(n+1))-A051468(n)` -/
def P11894711007500813700.Spec : Prop :=
  ∀ n, P11894711007500813700.a n = A051429 n

end A051429

/-! ## A051429.P13059931185041193953

`(A029607(n+1)-A134058(A268232(n+1)))/2`
-/

namespace A051429.P13059931185041193953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029607 (n + 1) - A134058 (A268232 (n + 1)).toNat : ℚ) / 2

end

end A051429.P13059931185041193953

namespace A051429

/-- `(A029607(n+1)-A134058(A268232(n+1)))/2` -/
def P13059931185041193953.Spec : Prop :=
  ∀ n, P13059931185041193953.a n = (A051429 n : ℚ)

end A051429

/-! ## A051429.P13033746667373119272

`A014682(A029607(n+1)-2*A014428(n+1))`
-/

namespace A051429.P13033746667373119272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029607 (n + 1) - 2 * A014428 (n + 1)).toNat

end

end A051429.P13033746667373119272

namespace A051429

/-- `A014682(A029607(n+1)-2*A014428(n+1))` -/
def P13033746667373119272.Spec : Prop :=
  ∀ n, P13033746667373119272.a n = A051429 n

end A051429

/-! ## A051429.P9303243564344131171

`A014682(A029607(n+1)-A014428(n+1)-A014428(n+1))`
-/

namespace A051429.P9303243564344131171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029607 (n + 1) - A014428 (n + 1) - A014428 (n + 1)).toNat

end

end A051429.P9303243564344131171

namespace A051429

/-- `A014682(A029607(n+1)-A014428(n+1)-A014428(n+1))` -/
def P9303243564344131171.Spec : Prop :=
  ∀ n, P9303243564344131171.a n = A051429 n

end A051429

/-!
# A051430: (Terms in A029661)/2.

The programs for A051430, the canonical program `A051430.P2184556223164140927` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051430 has offset 0).

The definition of A051430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5031 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051430.P16262884916477453729

`A029661(n)/2`
-/

namespace A051430.P16262884916477453729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029661 n : ℚ) / 2

end

end A051430.P16262884916477453729

namespace A051430

/-- `A029661(n)/2` -/
def P16262884916477453729.Spec : Prop :=
  ∀ n, P16262884916477453729.a n = (A051430 n : ℚ)

theorem P16262884916477453729.correct : P16262884916477453729.Spec := by
  intro n
  simp only [A051430, Nat.add_sub_cancel, A051430.P16262884916477453729.a, A051430.P2184556223164140927.f1, A051430.P2184556223164140927.f2, A051430.P2184556223164140927.a, A029661, A029661.P15382218229631797000.a, A051429, A051429.P11525553807131597753.a, A051468, A051468.P6533800774819959610.a, A014428, A014428.P4888485289418456815.a, A029659, A029659.P14042741699956388996.a, A051456, A051456.P8737044778690682288.a, A007318, A007318.P11755526479805562006.a, A029607, A029607.P1574991405031157313.f1, A029607.P1574991405031157313.f2, A029607.P1574991405031157313.a, A029625, A029625.P8414473659430485930.f1, A029625.P8414473659430485930.f2, A029625.P8414473659430485930.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, A000217, A000217.P10269402890581615239.a, A029605, A029605.P7080579544809329854.f1, A029605.P7080579544809329854.f2, A029605.P7080579544809329854.a, A029623, A029623.P11351172865891342749.f1, A029623.P11351172865891342749.f2, A029623.P11351172865891342749.a, A080098, A080098.P7543541268193481793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051430

/-! ## A051430.P2184556223164140927

`A051429(lt[A051429(n), A051468(n)+1])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A051430

/-- `A051429(lt[A051429(n), A051468(n)+1])` -/
def P2184556223164140927.Spec : Prop :=
  ∀ n, P2184556223164140927.a n = A051430 n

theorem P2184556223164140927.correct : P2184556223164140927.Spec := by
  intro n
  simp only [A051430]

end A051430

/-! ## A051430.P11243239130228178261

`A051429(lt[A051429(n)-1, A051468(n)])`
-/

namespace A051430.P11243239130228178261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051430.P11243239130228178261

namespace A051430

/-- `A051429(lt[A051429(n)-1, A051468(n)])` -/
def P11243239130228178261.Spec : Prop :=
  ∀ n, P11243239130228178261.a n = A051430 n

theorem P11243239130228178261.correct : P11243239130228178261.Spec := by
  intro n
  simp only [A051430, Nat.add_sub_cancel, A051430.P11243239130228178261.f1, A051430.P11243239130228178261.f2, A051430.P11243239130228178261.a, A051430.P2184556223164140927.f1, A051430.P2184556223164140927.f2, A051430.P2184556223164140927.a, SequenceMachineLib.memo_apply]
  try simp

end A051430

/-! ## A051430.P15337518631823620857

`2^A008683(A063909(n+1))*A029661(n)`
-/

namespace A051430.P15337518631823620857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A063909 (n + 1)).toNat : ℤ) * (A029661 n : ℚ)

end

end A051430.P15337518631823620857

namespace A051430

/-- `2^A008683(A063909(n+1))*A029661(n)` -/
def P15337518631823620857.Spec : Prop :=
  ∀ n, P15337518631823620857.a n = (A051430 n : ℚ)

end A051430

/-! ## A051430.P8940824935902302978

`2^A008683(A001359(n+1))*A029661(n)`
-/

namespace A051430.P8940824935902302978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A001359 (n + 1)).toNat : ℤ) * (A029661 n : ℚ)

end

end A051430.P8940824935902302978

namespace A051430

/-- `2^A008683(A001359(n+1))*A029661(n)` -/
def P8940824935902302978.Spec : Prop :=
  ∀ n, P8940824935902302978.a n = (A051430 n : ℚ)

end A051430

/-! ## A051430.P16540400630185246896

`2^A008683(A006512(n+1))*A029661(n)`
-/

namespace A051430.P16540400630185246896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006512 (n + 1)).toNat : ℤ) * (A029661 n : ℚ)

end

end A051430.P16540400630185246896

namespace A051430

/-- `2^A008683(A006512(n+1))*A029661(n)` -/
def P16540400630185246896.Spec : Prop :=
  ∀ n, P16540400630185246896.a n = (A051430 n : ℚ)

end A051430

/-! ## A051430.P9521768588365268152

`2^A008683(A006450(n+1))*A029661(n)`
-/

namespace A051430.P9521768588365268152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A029661 n : ℚ)

end

end A051430.P9521768588365268152

namespace A051430

/-- `2^A008683(A006450(n+1))*A029661(n)` -/
def P9521768588365268152.Spec : Prop :=
  ∀ n, P9521768588365268152.a n = (A051430 n : ℚ)

end A051430

/-! ## A051430.P7580474524674181121

`2^A008683(A005384(n+1))*A029661(n)`
-/

namespace A051430.P7580474524674181121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A005384 (n + 1)).toNat : ℤ) * (A029661 n : ℚ)

end

end A051430.P7580474524674181121

namespace A051430

/-- `2^A008683(A005384(n+1))*A029661(n)` -/
def P7580474524674181121.Spec : Prop :=
  ∀ n, P7580474524674181121.a n = (A051430 n : ℚ)

end A051430

/-! ## A051430.P3660736535605731467

`2^A008683(A230138(n+1))*A029661(n)`
-/

namespace A051430.P3660736535605731467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A230138 (n + 1)).toNat : ℤ) * (A029661 n : ℚ)

end

end A051430.P3660736535605731467

namespace A051430

/-- `2^A008683(A230138(n+1))*A029661(n)` -/
def P3660736535605731467.Spec : Prop :=
  ∀ n, P3660736535605731467.a n = (A051430 n : ℚ)

end A051430

/-! ## A051430.P78512200536278077

`2^A008683(A230223(n+1))*A029661(n)`
-/

namespace A051430.P78512200536278077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A230223 (n + 1)).toNat : ℤ) * (A029661 n : ℚ)

end

end A051430.P78512200536278077

namespace A051430

/-- `2^A008683(A230223(n+1))*A029661(n)` -/
def P78512200536278077.Spec : Prop :=
  ∀ n, P78512200536278077.a n = (A051430 n : ℚ)

end A051430

/-!
# A051431: a(n) = (n+10)!/10!.

The programs for A051431, the canonical program `A051431.P6636783096064050505` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051431 has offset 0).

The definition of A051431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+10)!/10!` (program `A051431.P10394421035400062220`, by `A051431.P10394421035400062220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051431.P10394421035400062220

`(n+10)!/10!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051431.P10394421035400062220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 10) : ℚ) / (Nat.factorial 10 : ℚ)

end

end A051431.P10394421035400062220

namespace A051431

/-- `(n+10)!/10!` -/
def P10394421035400062220.Spec : Prop :=
  ∀ n, P10394421035400062220.a n = (A051431 n : ℚ)

theorem P10394421035400062220.correct : P10394421035400062220.Spec := by
  intro n
  simp only [A051431, Nat.add_sub_cancel, A051431.P10394421035400062220.a, A051431.P6636783096064050505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051431

/-! ## A051431.P6636783096064050505

`n!*C(n+10, 10)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051431

/-- `n!*C(n+10, 10)` -/
def P6636783096064050505.Spec : Prop :=
  ∀ n, (P6636783096064050505.a n : ℤ) = A051431 n

theorem P6636783096064050505.correct : P6636783096064050505.Spec := by
  intro n
  simp only [A051431]

end A051431

/-! ## A051431.P9066201500654874299

`∏[a(n-1)+1]` with `a(0)=1, a(1)=11`
-/

namespace A051431.P9066201500654874299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051431.P9066201500654874299

namespace A051431

/-- `∏[a(n-1)+1]` -/
def P9066201500654874299.Spec : Prop :=
  ∀ n, (P9066201500654874299.a n : ℤ) = A051431 n

end A051431

/-! ## A051431.P3923694905038094523

`(n+10)*a(n-1)` with `a(0)=1`
-/

namespace A051431.P3923694905038094523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 10) * a (n - 1)

end

end A051431.P3923694905038094523

namespace A051431

/-- `(n+10)*a(n-1)` -/
def P3923694905038094523.Spec : Prop :=
  ∀ n, (P3923694905038094523.a n : ℤ) = A051431 n

end A051431

/-! ## A051431.P16003006064668489475

`∏[dr(9*n)+n+1]`
-/

namespace A051431.P16003006064668489475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (9 * n : ℤ) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051431.P16003006064668489475

namespace A051431

/-- `∏[dr(9*n)+n+1]` -/
def P16003006064668489475.Spec : Prop :=
  ∀ n, (P16003006064668489475.a n : ℤ) = A051431 n

end A051431

/-! ## A051431.P6778127442934516453

`∏[3*3%(n+3)+n+1]`
-/

namespace A051431.P6778127442934516453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (3 % (n + 3)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051431.P6778127442934516453

namespace A051431

/-- `∏[3*3%(n+3)+n+1]` -/
def P6778127442934516453.Spec : Prop :=
  ∀ n, (P6778127442934516453.a n : ℤ) = A051431 n

end A051431

/-! ## A051431.P3996519129475918635

`A267141(n)/6`
-/

namespace A051431.P3996519129475918635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267141 (n + 10) : ℚ) / 6

end

end A051431.P3996519129475918635

namespace A051431

/-- `A267141(n)/6` -/
def P3996519129475918635.Spec : Prop :=
  ∀ n, P3996519129475918635.a n = (A051431 n : ℚ)

theorem P3996519129475918635.correct : P3996519129475918635.Spec := by
  intro n
  simp only [A051431, Nat.add_sub_cancel, A051431.P3996519129475918635.a, A051431.P6636783096064050505.a, A267141, A267141.P9990484793633317975.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051431

/-! ## A051431.P10651259880578723661

`n!*A001287(n)`
-/

namespace A051431.P10651259880578723661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001287 (n + 10)

end

end A051431.P10651259880578723661

namespace A051431

/-- `n!*A001287(n)` -/
def P10651259880578723661.Spec : Prop :=
  ∀ n, P10651259880578723661.a n = A051431 n

theorem P10651259880578723661.correct : P10651259880578723661.Spec := by
  intro n
  simp only [A051431, Nat.add_sub_cancel, A051431.P10651259880578723661.a, A051431.P6636783096064050505.a, A001287, A001287.P7309496825709961420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051431

/-! ## A051431.P2603512818376884373

`a(n-1)*A178405(n)` with `a(0)=1`
-/

namespace A051431.P2603512818376884373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A178405 n

end

end A051431.P2603512818376884373

namespace A051431

/-- `a(n-1)*A178405(n)` -/
def P2603512818376884373.Spec : Prop :=
  ∀ n, P2603512818376884373.a n = A051431 n

end A051431

/-! ## A051431.P16046176992807134849

`∏[A171891(n+1)+1]/2`
-/

namespace A051431.P16046176992807134849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171891 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A051431.P16046176992807134849

namespace A051431

/-- `∏[A171891(n+1)+1]/2` -/
def P16046176992807134849.Spec : Prop :=
  ∀ n, P16046176992807134849.a n = (A051431 n : ℚ)

end A051431

/-!
# A051432: (Terms in A029617)/2.

The programs for A051432, the canonical program `A051432.P12243347944400220783` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051432 has offset 0).

The definition of A051432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5031 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051432.P8692272303547609190

`A029617(n)/2`
-/

namespace A051432.P8692272303547609190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029617 n : ℚ) / 2

end

end A051432.P8692272303547609190

namespace A051432

/-- `A029617(n)/2` -/
def P8692272303547609190.Spec : Prop :=
  ∀ n, P8692272303547609190.a n = (A051432 n : ℚ)

theorem P8692272303547609190.correct : P8692272303547609190.Spec := by
  intro n
  simp only [A051432, Nat.add_sub_cancel, A051432.P8692272303547609190.a, A051432.P12243347944400220783.f1, A051432.P12243347944400220783.f2, A051432.P12243347944400220783.a, A029617, A029617.P8795002400070431540.a, A051434, A051434.P18205378062709367027.a, A051456, A051456.P8737044778690682288.a, A014428, A014428.P4888485289418456815.a, A029625, A029625.P8414473659430485930.f1, A029625.P8414473659430485930.f2, A029625.P8414473659430485930.a, A051429, A051429.P11525553807131597753.a, A007318, A007318.P11755526479805562006.a, A029623, A029623.P11351172865891342749.f1, A029623.P11351172865891342749.f2, A029623.P11351172865891342749.a, A029659, A029659.P14042741699956388996.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, A000217, A000217.P10269402890581615239.a, A029607, A029607.P1574991405031157313.f1, A029607.P1574991405031157313.f2, A029607.P1574991405031157313.a, A029618, A029618.P10489059941068420010.a, A080098, A080098.P7543541268193481793.a, A290452, A290452.P1449433213042397141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051432

/-! ## A051432.P3831409997984960893

`log2(sqrt(2))*A029617(n)*A033999(n)²`
-/

namespace A051432.P3831409997984960893
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029617 n : ℝ) * (A033999 n ^ 2 : ℝ)

end

end A051432.P3831409997984960893

namespace A051432

/-- `log2(sqrt(2))*A029617(n)*A033999(n)²` -/
def P3831409997984960893.Spec : Prop :=
  ∀ n, P3831409997984960893.a n = (A051432 n : ℝ)

end A051432

/-! ## A051432.P3008328379242735154

`A000038(n+1)+log2(sqrt(2))*A029617(n)`
-/

namespace A051432.P3008328379242735154
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℝ) + Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029617 n : ℝ)

end

end A051432.P3008328379242735154

namespace A051432

/-- `A000038(n+1)+log2(sqrt(2))*A029617(n)` -/
def P3008328379242735154.Spec : Prop :=
  ∀ n, P3008328379242735154.a n = (A051432 n : ℝ)

end A051432

/-! ## A051432.P5968399148229297590

`log2(sqrt(2))*A029617(n)*A343785(n+1)²`
-/

namespace A051432.P5968399148229297590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029617 n : ℝ) * (A343785 (n + 1) ^ 2 : ℝ)

end

end A051432.P5968399148229297590

namespace A051432

/-- `log2(sqrt(2))*A029617(n)*A343785(n+1)²` -/
def P5968399148229297590.Spec : Prop :=
  ∀ n, P5968399148229297590.a n = (A051432 n : ℝ)

end A051432

/-! ## A051432.P15068864519733532669

`log2(sqrt(2))*A029617(n)*A019425(2*(n+1))`
-/

namespace A051432.P15068864519733532669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029617 n : ℝ) * (A019425 (2 * (n + 1)) : ℝ)

end

end A051432.P15068864519733532669

namespace A051432

/-- `log2(sqrt(2))*A029617(n)*A019425(2*(n+1))` -/
def P15068864519733532669.Spec : Prop :=
  ∀ n, P15068864519733532669.a n = (A051432 n : ℝ)

end A051432

/-! ## A051432.P1949232478326014887

`log2(sqrt(2))*A029617(n)*A176586(n+1)%2`
-/

namespace A051432.P1949232478326014887
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029617 n : ℝ) * (Int.tmod (A176586 (n + 1)) 2 : ℝ)

end

end A051432.P1949232478326014887

namespace A051432

/-- `log2(sqrt(2))*A029617(n)*A176586(n+1)%2` -/
def P1949232478326014887.Spec : Prop :=
  ∀ n, P1949232478326014887.a n = (A051432 n : ℝ)

end A051432

/-! ## A051432.P12243347944400220783

`A051434(lt[A051434(n), A051456(n)+1])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A051432

/-- `A051434(lt[A051434(n), A051456(n)+1])` -/
def P12243347944400220783.Spec : Prop :=
  ∀ n, P12243347944400220783.a n = A051432 n

theorem P12243347944400220783.correct : P12243347944400220783.Spec := by
  intro n
  simp only [A051432]

end A051432

/-! ## A051432.P15096043954123708882

`A051434(lt[A051434(n)-1, A051456(n)])`
-/

namespace A051432.P15096043954123708882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051432.P15096043954123708882

namespace A051432

/-- `A051434(lt[A051434(n)-1, A051456(n)])` -/
def P15096043954123708882.Spec : Prop :=
  ∀ n, P15096043954123708882.a n = A051432 n

theorem P15096043954123708882.correct : P15096043954123708882.Spec := by
  intro n
  simp only [A051432, Nat.add_sub_cancel, A051432.P15096043954123708882.f1, A051432.P15096043954123708882.f2, A051432.P15096043954123708882.a, A051432.P12243347944400220783.f1, A051432.P12243347944400220783.f2, A051432.P12243347944400220783.a, SequenceMachineLib.memo_apply]
  try simp

end A051432

/-! ## A051432.P475289294521737972

`log2(sqrt(2))*A029617(n)*A056594(2*n)²`
-/

namespace A051432.P475289294521737972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029617 n : ℝ) * (A056594 (2 * n) ^ 2 : ℝ)

end

end A051432.P475289294521737972

namespace A051432

/-- `log2(sqrt(2))*A029617(n)*A056594(2*n)²` -/
def P475289294521737972.Spec : Prop :=
  ∀ n, P475289294521737972.a n = (A051432 n : ℝ)

end A051432

/-! ## A051432.P16987602663472435385

`A051433(lt[A051455(n), A051433(n)])`
-/

namespace A051432.P16987602663472435385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051432.P16987602663472435385

namespace A051432

/-- `A051433(lt[A051455(n), A051433(n)])` -/
def P16987602663472435385.Spec : Prop :=
  ∀ n, P16987602663472435385.a n = A051432 n

end A051432

/-! ## A051432.P8278266091726983162

`A029605(lt[A029623(n), A029605(n)])/2`
-/

namespace A051432.P8278266091726983162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 2

end

end A051432.P8278266091726983162

namespace A051432

/-- `A029605(lt[A029623(n), A029605(n)])/2` -/
def P8278266091726983162.Spec : Prop :=
  ∀ n, P8278266091726983162.a n = (A051432 n : ℚ)

end A051432

/-! ## A051432.P2678912948289220922

`log2(sqrt(2))*A029617(n)*A000034(10*n)`
-/

namespace A051432.P2678912948289220922
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029617 n : ℝ) * (A000034 (10 * n) : ℝ)

end

end A051432.P2678912948289220922

namespace A051432

/-- `log2(sqrt(2))*A029617(n)*A000034(10*n)` -/
def P2678912948289220922.Spec : Prop :=
  ∀ n, P2678912948289220922.a n = (A051432 n : ℝ)

end A051432

/-!
# A051433: (Terms in A029605)/2.

The programs for A051433, the canonical program `A051433.P4257297967773585722` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051433 has offset 0).

The definition of A051433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051433.P4257297967773585722

`A029605(n)/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051433

/-- `A029605(n)/2` -/
def P4257297967773585722.Spec : Prop :=
  ∀ n, P4257297967773585722.a n = (A051433 n : ℚ)

end A051433

/-! ## A051433.P380623844108646966

`A014682(A029605(n))`
-/

namespace A051433.P380623844108646966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029605 n).toNat

end

end A051433.P380623844108646966

namespace A051433

/-- `A014682(A029605(n))` -/
def P380623844108646966.Spec : Prop :=
  ∀ n, P380623844108646966.a n = A051433 n

end A051433

/-! ## A051433.P3990563672835254114

`A273943(lcm(2, A029605(n)))`
-/

namespace A051433.P3990563672835254114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A029605 n))

end

end A051433.P3990563672835254114

namespace A051433

/-- `A273943(lcm(2, A029605(n)))` -/
def P3990563672835254114.Spec : Prop :=
  ∀ n, P3990563672835254114.a n = A051433 n

end A051433

/-! ## A051433.P1678611292034468989

`A033999(n)²*A273943(A029605(n))`
-/

namespace A051433.P1678611292034468989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A273943 (A029605 n).toNat

end

end A051433.P1678611292034468989

namespace A051433

/-- `A033999(n)²*A273943(A029605(n))` -/
def P1678611292034468989.Spec : Prop :=
  ∀ n, P1678611292034468989.a n = A051433 n

end A051433

/-! ## A051433.P16951744504442550993

`A273943(A029605(n))%A000041(n+2)`
-/

namespace A051433.P16951744504442550993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273943 (A029605 n).toNat) (A000041 (n + 2))

end

end A051433.P16951744504442550993

namespace A051433

/-- `A273943(A029605(n))%A000041(n+2)` -/
def P16951744504442550993.Spec : Prop :=
  ∀ n, P16951744504442550993.a n = A051433 n

end A051433

/-! ## A051433.P15422635457825562075

`A007318(C(2, n))*A273943(A029605(n))`
-/

namespace A051433.P15422635457825562075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A273943 (A029605 n).toNat

end

end A051433.P15422635457825562075

namespace A051433

/-- `A007318(C(2, n))*A273943(A029605(n))` -/
def P15422635457825562075.Spec : Prop :=
  ∀ n, P15422635457825562075.a n = A051433 n

end A051433

/-! ## A051433.P6519075613680606485

`A273943(A029605(n))^A014963(∑[n+1])`
-/

namespace A051433.P6519075613680606485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273943 (A029605 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A051433.P6519075613680606485

namespace A051433

/-- `A273943(A029605(n))^A014963(∑[n+1])` -/
def P6519075613680606485.Spec : Prop :=
  ∀ n, P6519075613680606485.a n = (A051433 n : ℚ)

end A051433

/-! ## A051433.P9811248854460467794

`A273943(A029605(n))+A008683(4*(n+1))`
-/

namespace A051433.P9811248854460467794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A029605 n).toNat + A008683 (4 * (n + 1))

end

end A051433.P9811248854460467794

namespace A051433

/-- `A273943(A029605(n))+A008683(4*(n+1))` -/
def P9811248854460467794.Spec : Prop :=
  ∀ n, P9811248854460467794.a n = A051433 n

end A051433

/-! ## A051433.P119515704602506677

`A014963(90*(n+1))*A273943(A029605(n))`
-/

namespace A051433.P119515704602506677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (90 * (n + 1)) * A273943 (A029605 n).toNat

end

end A051433.P119515704602506677

namespace A051433

/-- `A014963(90*(n+1))*A273943(A029605(n))` -/
def P119515704602506677.Spec : Prop :=
  ∀ n, P119515704602506677.a n = A051433 n

end A051433

/-! ## A051433.P11177865241623970327

`A273943(A029605(n))+A001222(gcd(n, n+1))`
-/

namespace A051433.P11177865241623970327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A029605 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A051433.P11177865241623970327

namespace A051433

/-- `A273943(A029605(n))+A001222(gcd(n, n+1))` -/
def P11177865241623970327.Spec : Prop :=
  ∀ n, P11177865241623970327.a n = A051433 n

end A051433

/-!
# A051434: (Terms in A029607)/2.

The programs for A051434, the canonical program `A051434.P18205378062709367027` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051434 has offset 0).

The definition of A051434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051434.P915395446986897312

`A029607(n+1)/2`
-/

namespace A051434.P915395446986897312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029607 (n + 1) : ℚ) / 2

end

end A051434.P915395446986897312

namespace A051434

/-- `A029607(n+1)/2` -/
def P915395446986897312.Spec : Prop :=
  ∀ n, P915395446986897312.a n = (A051434 n : ℚ)

end A051434

/-! ## A051434.P8785697257523786995

`A051429(n)+sqrt(A014727(n))`
-/

namespace A051434.P8785697257523786995
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051429 n : ℝ) + Real.sqrt (A014727 n : ℝ)

end

end A051434.P8785697257523786995

namespace A051434

/-- `A051429(n)+sqrt(A014727(n))` -/
def P8785697257523786995.Spec : Prop :=
  ∀ n, P8785697257523786995.a n = (A051434 n : ℝ)

end A051434

/-! ## A051434.P18205378062709367027

`A051429(n)+A014428(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A051434

/-- `A051429(n)+A014428(n+1)` -/
def P18205378062709367027.Spec : Prop :=
  ∀ n, P18205378062709367027.a n = A051434 n

theorem P18205378062709367027.correct : P18205378062709367027.Spec := by
  intro n
  simp only [A051434]

end A051434

/-! ## A051434.P5308210021839091716

`A051433(lt[1, A051433(n)])`
-/

namespace A051434.P5308210021839091716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A051434.P5308210021839091716

namespace A051434

/-- `A051433(lt[1, A051433(n)])` -/
def P5308210021839091716.Spec : Prop :=
  ∀ n, P5308210021839091716.a n = A051434 n

end A051434

/-! ## A051434.P14810261252019715492

`A029605(lt[2, A029605(n)])/2`
-/

namespace A051434.P14810261252019715492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A051434.P14810261252019715492

namespace A051434

/-- `A029605(lt[2, A029605(n)])/2` -/
def P14810261252019715492.Spec : Prop :=
  ∀ n, P14810261252019715492.a n = (A051434 n : ℚ)

end A051434

/-! ## A051434.P8397435341351316581

`A051429(n)+A007318(A268232(n+1))`
-/

namespace A051434.P8397435341351316581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n + A007318 (A268232 (n + 1)).toNat

end

end A051434.P8397435341351316581

namespace A051434

/-- `A051429(n)+A007318(A268232(n+1))` -/
def P8397435341351316581.Spec : Prop :=
  ∀ n, P8397435341351316581.a n = A051434 n

end A051434

/-! ## A051434.P18324994395394593448

`A249757(A268232(n+1))/2`
-/

namespace A051434.P18324994395394593448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249757 (A268232 (n + 1)).toNat : ℚ) / 2

end

end A051434.P18324994395394593448

namespace A051434

/-- `A249757(A268232(n+1))/2` -/
def P18324994395394593448.Spec : Prop :=
  ∀ n, P18324994395394593448.a n = (A051434 n : ℚ)

end A051434

/-! ## A051434.P1919586443309136556

`A249757(eq[1, A219463(n)])/2`
-/

namespace A051434.P1919586443309136556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A051434.P1919586443309136556

namespace A051434

/-- `A249757(eq[1, A219463(n)])/2` -/
def P1919586443309136556.Spec : Prop :=
  ∀ n, P1919586443309136556.a n = (A051434 n : ℚ)

end A051434

/-! ## A051434.P12094498075554463559

`A014682(A029607(n+1))`
-/

namespace A051434.P12094498075554463559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029607 (n + 1)).toNat

end

end A051434.P12094498075554463559

namespace A051434

/-- `A014682(A029607(n+1))` -/
def P12094498075554463559.Spec : Prop :=
  ∀ n, P12094498075554463559.a n = A051434 n

end A051434

/-! ## A051434.P16956610118943587784

`A322809(A029607(n+1)-4)`
-/

namespace A051434.P16956610118943587784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A029607 (n + 1) - 4).toNat

end

end A051434.P16956610118943587784

namespace A051434

/-- `A322809(A029607(n+1)-4)` -/
def P16956610118943587784.Spec : Prop :=
  ∀ n, P16956610118943587784.a n = A051434 n

end A051434

/-!
# A051435: (Terms in A029613)/2.

The programs for A051435, there is no canonical definition to state claims against.
-/

/-! ## A051435.P15656665725533254418

`A029613(n)/2`
-/

namespace A051435.P15656665725533254418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029613 n : ℚ) / 2

end

end A051435.P15656665725533254418

/-! ## A051435.P6642058142940029917

`log2(sqrt(2))*A029613(n)*A033999(n)²`
-/

namespace A051435.P6642058142940029917
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029613 n : ℝ) * (A033999 n ^ 2 : ℝ)

end

end A051435.P6642058142940029917

/-! ## A051435.P3626713114931188552

`A000038(n+1)+log2(sqrt(2))*A029613(n)`
-/

namespace A051435.P3626713114931188552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℝ) + Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029613 n : ℝ)

end

end A051435.P3626713114931188552

/-! ## A051435.P1695273286606763238

`A000007(n+1)+log2(sqrt(2))*A029613(n)`
-/

namespace A051435.P1695273286606763238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029613 n : ℝ)

end

end A051435.P1695273286606763238

/-! ## A051435.P16188789879817378982

`A000035(2*n)+log2(sqrt(2))*A029613(n)`
-/

namespace A051435.P16188789879817378982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) : ℝ) + Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029613 n : ℝ)

end

end A051435.P16188789879817378982

/-! ## A051435.P4321444814631950357

`A000122(n²+2)+log2(sqrt(2))*A029613(n)`
-/

namespace A051435.P4321444814631950357
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000122 (n ^ 2 + 2) : ℝ) + Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029613 n : ℝ)

end

end A051435.P4321444814631950357

/-! ## A051435.P11029669244108538446

`A000027(log2(sqrt(2))*A029613(n))`
-/

namespace A051435.P11029669244108538446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (2 : ℝ)) * (A029613 n : ℝ))).toNat

end

end A051435.P11029669244108538446

/-!
# A051436: Number of undirected walks of length n+1 on tetrahedron, visiting n+2 vertices, with n "corners", as in A001998, but allowing only rigid motions in 3-space (|G| = 12). Walks are not self-avoiding.

The programs for A051436, there is no canonical definition to state claims against.
-/

/-! ## A051436.P5715162368753590019

`A048865(∏[A324650(n+1)])+A006368(2*n+1)`
-/

namespace A051436.P5715162368753590019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + A006368 (2 * n + 1)

end

end A051436.P5715162368753590019

/-! ## A051436.P6463518190555911459

`A127707(2^n)+round(sqrt(n))`
-/

namespace A051436.P6463518190555911459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127707 (2 ^ n) + SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

end

end A051436.P6463518190555911459

/-!
# A051437: Number of undirected walks of length n+1 on an oriented triangle, visiting n+2 vertices, with n "corners"; the symmetry group is C3. Walks are not self-avoiding.

The programs for A051437, the canonical program `A051437.P16992320866159906157` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051437 has offset 0).

The definition of A051437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051437.P16992320866159906157

`2*a(n-2)+2^(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051437

/-- `2*a(n-2)+2^(n-1)` -/
def P16992320866159906157.Spec : Prop :=
  ∀ n, P16992320866159906157.a n = (A051437 n : ℚ)

end A051437

/-! ## A051437.P13899956202543591389

`2^n+2^(n/2)*(1-(-1)^n)/(2*sqrt(2))`
-/

namespace A051437.P13899956202543591389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) + (2 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (1 - (-1) ^ n : ℝ) / (2 * Real.sqrt (2 : ℝ))

end

end A051437.P13899956202543591389

namespace A051437

/-- `2^n+2^(n/2)*(1-(-1)^n)/(2*sqrt(2))` -/
def P13899956202543591389.Spec : Prop :=
  ∀ n, P13899956202543591389.a n = (A051437 n : ℝ)

end A051437

/-! ## A051437.P8835444752392196218

`ogf((1+x-4x^2)/(1-2x-2x^2+4x^3))`
-/

namespace A051437.P8835444752392196218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, -2, -2, 4] n

end

end A051437.P8835444752392196218

namespace A051437

/-- `ogf((1+x-4x^2)/(1-2x-2x^2+4x^3))` -/
def P8835444752392196218.Spec : Prop :=
  ∀ n, P8835444752392196218.a n = A051437 n

end A051437

/-! ## A051437.P6204197275512155270

`or(A000079(n), A131575(n))`
-/

namespace A051437.P6204197275512155270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A131575 n)

end

end A051437.P6204197275512155270

namespace A051437

/-- `or(A000079(n), A131575(n))` -/
def P6204197275512155270.Spec : Prop :=
  ∀ n, P6204197275512155270.a n = A051437 n

end A051437

/-! ## A051437.P2986356391999301459

`xor(A131575(n), A155559(n))`
-/

namespace A051437.P2986356391999301459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131575 n) (A155559 n)

end

end A051437.P2986356391999301459

namespace A051437

/-- `xor(A131575(n), A155559(n))` -/
def P2986356391999301459.Spec : Prop :=
  ∀ n, P2986356391999301459.a n = A051437 n

end A051437

/-! ## A051437.P7248239892047199116

`or(A131575(n), A131577(n+1))`
-/

namespace A051437.P7248239892047199116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131575 n) (A131577 (n + 1))

end

end A051437.P7248239892047199116

namespace A051437

/-- `or(A131575(n), A131577(n+1))` -/
def P7248239892047199116.Spec : Prop :=
  ∀ n, P7248239892047199116.a n = A051437 n

end A051437

/-! ## A051437.P12358850359003807348

`∑{d}[n+1, A069735(#)*A296302((n+1)/#)]`
-/

namespace A051437.P12358850359003807348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069735 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A051437.P12358850359003807348

namespace A051437

/-- `∑{d}[n+1, A069735(#)*A296302((n+1)/#)]` -/
def P12358850359003807348.Spec : Prop :=
  ∀ n, P12358850359003807348.a n = A051437 n

end A051437

/-! ## A051437.P3866358200994204225

`∑{d}[n+1, A034729(#)*A359591((n+1)/#)]`
-/

namespace A051437.P3866358200994204225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A359591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A051437.P3866358200994204225

namespace A051437

/-- `∑{d}[n+1, A034729(#)*A359591((n+1)/#)]` -/
def P3866358200994204225.Spec : Prop :=
  ∀ n, P3866358200994204225.a n = A051437 n

end A051437

/-! ## A051437.P17972635127621165687

`∑{d}[n+1, A080512(#)*A349570((n+1)/#)]`
-/

namespace A051437.P17972635127621165687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080512 d * A349570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A051437.P17972635127621165687

namespace A051437

/-- `∑{d}[n+1, A080512(#)*A349570((n+1)/#)]` -/
def P17972635127621165687.Spec : Prop :=
  ∀ n, P17972635127621165687.a n = A051437 n

end A051437

/-! ## A051437.P7266919899433609522

`∑{d}[n+1, A000034(#-1)*A000740((n+1)/#)]`
-/

namespace A051437.P7266919899433609522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1) * A000740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A051437.P7266919899433609522

namespace A051437

/-- `∑{d}[n+1, A000034(#-1)*A000740((n+1)/#)]` -/
def P7266919899433609522.Spec : Prop :=
  ∀ n, P7266919899433609522.a n = A051437 n

end A051437

/-! ## A051437.P6588877698424720032

`∑{d}[n+1, A000079(#-1)*A019590((n+1)/#)]`
-/

namespace A051437.P6588877698424720032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A019590 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A051437.P6588877698424720032

namespace A051437

/-- `∑{d}[n+1, A000079(#-1)*A019590((n+1)/#)]` -/
def P6588877698424720032.Spec : Prop :=
  ∀ n, P6588877698424720032.a n = A051437 n

end A051437

/-! ## A051437.P6913088870434331892

`(A016116(n+1)+A000035(n))*A016116(n)`
-/

namespace A051437.P6913088870434331892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016116 (n + 1) + A000035 n) * A016116 n

end

end A051437.P6913088870434331892

namespace A051437

/-- `(A016116(n+1)+A000035(n))*A016116(n)` -/
def P6913088870434331892.Spec : Prop :=
  ∀ n, P6913088870434331892.a n = A051437 n

end A051437

/-! ## A051437.P15569089611128584558

`Δ[A056309(n+1)]`
-/

namespace A051437.P15569089611128584558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051437.P15569089611128584558

namespace A051437

/-- `Δ[A056309(n+1)]` -/
def P15569089611128584558.Spec : Prop :=
  ∀ n, P15569089611128584558.a n = A051437 n

end A051437

/-! ## A051437.P7221973134156707181

`Δ[A005418(n+2)]`
-/

namespace A051437.P7221973134156707181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051437.P7221973134156707181

namespace A051437

/-- `Δ[A005418(n+2)]` -/
def P7221973134156707181.Spec : Prop :=
  ∀ n, P7221973134156707181.a n = A051437 n

end A051437

/-! ## A051437.P6897432166943026745

`Δ[A056326(n+2)]`
-/

namespace A051437.P6897432166943026745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051437.P6897432166943026745

namespace A051437

/-- `Δ[A056326(n+2)]` -/
def P6897432166943026745.Spec : Prop :=
  ∀ n, P6897432166943026745.a n = A051437 n

end A051437

/-! ## A051437.P14660301899921073622

`A052957(n+1)/2`
-/

namespace A051437.P14660301899921073622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052957 (n + 1) : ℚ) / 2

end

end A051437.P14660301899921073622

namespace A051437

/-- `A052957(n+1)/2` -/
def P14660301899921073622.Spec : Prop :=
  ∀ n, P14660301899921073622.a n = (A051437 n : ℚ)

end A051437

/-! ## A051437.P14932677591964330236

`xor(A126646(n), A274638(n))`
-/

namespace A051437.P14932677591964330236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 n) (A274638 n)

end

end A051437.P14932677591964330236

namespace A051437

/-- `xor(A126646(n), A274638(n))` -/
def P14932677591964330236.Spec : Prop :=
  ∀ n, P14932677591964330236.a n = A051437 n

end A051437

/-! ## A051437.P3390092532071107415

`∪[A000302(n), A007582(n)]`
-/

namespace A051437.P3390092532071107415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051437.P3390092532071107415

namespace A051437

/-- `∪[A000302(n), A007582(n)]` -/
def P3390092532071107415.Spec : Prop :=
  ∀ n, (P3390092532071107415.a n : ℤ) = A051437 n

end A051437

/-! ## A051437.P11762574317501972022

`Δ[A016116(n)+A000225(n)]`
-/

namespace A051437.P11762574317501972022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051437.P11762574317501972022

namespace A051437

/-- `Δ[A016116(n)+A000225(n)]` -/
def P11762574317501972022.Spec : Prop :=
  ∀ n, P11762574317501972022.a n = A051437 n

end A051437

/-! ## A051437.P5937555838487921844

`A253122(n+1)/4`
-/

namespace A051437.P5937555838487921844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253122 (n + 1) : ℚ) / 4

end

end A051437.P5937555838487921844

namespace A051437

/-- `A253122(n+1)/4` -/
def P5937555838487921844.Spec : Prop :=
  ∀ n, P5937555838487921844.a n = (A051437 n : ℚ)

end A051437

/-!
# A051438: a(n) = prime(2^n - 1).

The programs for A051438, the canonical program `A051438.P15662167585124634274` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051438 has offset 1).

The definition of A051438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^(n+1)-1)` (program `A051438.P15662167585124634274`, by `A051438.P15662167585124634274.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051438.P15662167585124634274

`A000040(2^(n+1)-1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051438

/-- `A000040(2^(n+1)-1)` -/
def P15662167585124634274.Spec : Prop :=
  ∀ n, P15662167585124634274.a n = A051438 (n + 1)

theorem P15662167585124634274.correct : P15662167585124634274.Spec := by
  intro n
  simp only [A051438, Nat.add_sub_cancel]

end A051438

/-! ## A051438.P7117924778899145616

`A050298(∑[n+1])`
-/

namespace A051438.P7117924778899145616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050298 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051438.P7117924778899145616

namespace A051438

/-- `A050298(∑[n+1])` -/
def P7117924778899145616.Spec : Prop :=
  ∀ n, P7117924778899145616.a n = A051438 (n + 1)

end A051438

/-! ## A051438.P13378533486377725729

`record[A050298(A038722(n+1))]`
-/

namespace A051438.P13378533486377725729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050298 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051438.P13378533486377725729

namespace A051438

/-- `record[A050298(A038722(n+1))]` -/
def P13378533486377725729.Spec : Prop :=
  ∀ n, P13378533486377725729.a n = A051438 (n + 1)

end A051438

/-! ## A051438.P12644760125827495582

`record[A050298(A049777(n+1))]`
-/

namespace A051438.P12644760125827495582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050298 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051438.P12644760125827495582

namespace A051438

/-- `record[A050298(A049777(n+1))]` -/
def P12644760125827495582.Spec : Prop :=
  ∀ n, P12644760125827495582.a n = A051438 (n + 1)

end A051438

/-!
# A051439: a(n) = prime(2^n + 1).

The programs for A051439, the canonical program `A051439.P4586457349963978627` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051439 has offset 0).

The definition of A051439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^n+1)` (program `A051439.P4586457349963978627`, by `A051439.P4586457349963978627.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051439.P4586457349963978627

`A000040(2^n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051439

/-- `A000040(2^n+1)` -/
def P4586457349963978627.Spec : Prop :=
  ∀ n, P4586457349963978627.a n = A051439 n

theorem P4586457349963978627.correct : P4586457349963978627.Spec := by
  intro n
  simp only [A051439]

end A051439

/-! ## A051439.P10265822975631460640

`A074325(n)+A033844(n)`
-/

namespace A051439.P10265822975631460640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074325 n + A033844 n

end

end A051439.P10265822975631460640

namespace A051439

/-- `A074325(n)+A033844(n)` -/
def P10265822975631460640.Spec : Prop :=
  ∀ n, P10265822975631460640.a n = A051439 n

end A051439

/-! ## A051439.P10997878351049339488

`A073798(∑[A074325(n)])+1`
-/

namespace A051439.P10997878351049339488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073798 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A051439.P10997878351049339488

namespace A051439

/-- `A073798(∑[A074325(n)])+1` -/
def P10997878351049339488.Spec : Prop :=
  ∀ n, P10997878351049339488.a n = A051439 n

end A051439

/-! ## A051439.P83652747207772191

`A073799(A028310(n))+A074325(n)+A063524(n)`
-/

namespace A051439.P83652747207772191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A028310 n).toNat + (A074325 n + A063524 n)

end

end A051439.P83652747207772191

namespace A051439

/-- `A073799(A028310(n))+A074325(n)+A063524(n)` -/
def P83652747207772191.Spec : Prop :=
  ∀ n, P83652747207772191.a n = A051439 n

end A051439

/-! ## A051439.P13650237036670051103

`A074325(n)+A073799(A065033(2*n))+A063524(n)`
-/

namespace A051439.P13650237036670051103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074325 n + (A073799 (A065033 (2 * n)).toNat + A063524 n)

end

end A051439.P13650237036670051103

namespace A051439

/-- `A074325(n)+A073799(A065033(2*n))+A063524(n)` -/
def P13650237036670051103.Spec : Prop :=
  ∀ n, P13650237036670051103.a n = A051439 n

end A051439

/-! ## A051439.P17954766812037051574

`A074325(n)+A073799(A000007(n)+n)+A063524(n)`
-/

namespace A051439.P17954766812037051574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074325 n + (A073799 (A000007 n + (n : ℤ)).toNat + A063524 n)

end

end A051439.P17954766812037051574

namespace A051439

/-- `A074325(n)+A073799(A000007(n)+n)+A063524(n)` -/
def P17954766812037051574.Spec : Prop :=
  ∀ n, P17954766812037051574.a n = A051439 n

end A051439

/-! ## A051439.P8889327082626225870

`A074325(n)+A073799(n^A178334(n))+A063524(n)`
-/

namespace A051439.P8889327082626225870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074325 n + (A073799 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat + A063524 n)

end

end A051439.P8889327082626225870

namespace A051439

/-- `A074325(n)+A073799(n^A178334(n))+A063524(n)` -/
def P8889327082626225870.Spec : Prop :=
  ∀ n, P8889327082626225870.a n = A051439 n

end A051439

/-!
# A051440: a(n) = prime(2^n) + 1.

The programs for A051440, the canonical program `A051440.P8598338040170600768` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051440 has offset 0).

The definition of A051440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^n)+1` (program `A051440.P8598338040170600768`, by `A051440.P8598338040170600768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051440.P10416957140833875561

`A033844(n)+1`
-/

namespace A051440.P10416957140833875561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n + 1

end

end A051440.P10416957140833875561

namespace A051440

/-- `A033844(n)+1` -/
def P10416957140833875561.Spec : Prop :=
  ∀ n, P10416957140833875561.a n = A051440 n

end A051440

/-! ## A051440.P327414325441583506

`A018249(n)+2`
-/

namespace A051440.P327414325441583506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 n + 2

end

end A051440.P327414325441583506

namespace A051440

/-- `A018249(n)+2` -/
def P327414325441583506.Spec : Prop :=
  ∀ n, P327414325441583506.a n = A051440 n

theorem P327414325441583506.correct : P327414325441583506.Spec := by
  intro n
  simp only [A051440, Nat.add_sub_cancel, A051440.P327414325441583506.a, A051440.P8598338040170600768.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018249, A018249.P2453322492412683053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051440

/-! ## A051440.P8598338040170600768

`A000040(2^n)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051440

/-- `A000040(2^n)+1` -/
def P8598338040170600768.Spec : Prop :=
  ∀ n, P8598338040170600768.a n = A051440 n

theorem P8598338040170600768.correct : P8598338040170600768.Spec := by
  intro n
  simp only [A051440]

end A051440

/-! ## A051440.P6862687154083522563

`A073799(A028310(n))+A063524(n)+1`
-/

namespace A051440.P6862687154083522563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A028310 n).toNat + A063524 n + 1

end

end A051440.P6862687154083522563

namespace A051440

/-- `A073799(A028310(n))+A063524(n)+1` -/
def P6862687154083522563.Spec : Prop :=
  ∀ n, P6862687154083522563.a n = A051440 n

end A051440

/-! ## A051440.P15768653679574191910

`or(A000035(n), A073799(A028310(n)))+1`
-/

namespace A051440.P15768653679574191910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A073799 (A028310 n).toNat) + 1

end

end A051440.P15768653679574191910

namespace A051440

/-- `or(A000035(n), A073799(A028310(n)))+1` -/
def P15768653679574191910.Spec : Prop :=
  ∀ n, P15768653679574191910.a n = A051440 n

end A051440

/-! ## A051440.P8341044197623017573

`or(A073799(A028310(n)), A101264(n))+1`
-/

namespace A051440.P8341044197623017573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073799 (A028310 n).toNat) (A101264 n) + 1

end

end A051440.P8341044197623017573

namespace A051440

/-- `or(A073799(A028310(n)), A101264(n))+1` -/
def P8341044197623017573.Spec : Prop :=
  ∀ n, P8341044197623017573.a n = A051440 n

end A051440

/-!
# A051442: a(n) = n^(n+1)+(n+1)^n.

The programs for A051442, the canonical program `A051442.P7165011081909153027` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051442 has offset 0).

The definition of A051442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)+(n+1)^n` (program `A051442.P7165011081909153027`, by `A051442.P7165011081909153027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051442.P5596359599967945176

`(n+1)^n+n^(n+1)`
-/

namespace A051442.P5596359599967945176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n + n ^ (n + 1)

end

end A051442.P5596359599967945176

namespace A051442

/-- `(n+1)^n+n^(n+1)` -/
def P5596359599967945176.Spec : Prop :=
  ∀ n, (P5596359599967945176.a n : ℤ) = A051442 n

theorem P5596359599967945176.correct : P5596359599967945176.Spec := by
  intro n
  simp only [A051442, Nat.add_sub_cancel, A051442.P5596359599967945176.a, A051442.P7165011081909153027.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051442

/-! ## A051442.P7165011081909153027

`n^(n+1)+(n+1)^n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051442

/-- `n^(n+1)+(n+1)^n` -/
def P7165011081909153027.Spec : Prop :=
  ∀ n, (P7165011081909153027.a n : ℤ) = A051442 n

theorem P7165011081909153027.correct : P7165011081909153027.Spec := by
  intro n
  simp only [A051442]

end A051442

/-! ## A051442.P1354883951943854549

`or(1, A007778(n)+A000169(n+1))`
-/

namespace A051442.P1354883951943854549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007778 n + A000169 (n + 1))

end

end A051442.P1354883951943854549

namespace A051442

/-- `or(1, A007778(n)+A000169(n+1))` -/
def P1354883951943854549.Spec : Prop :=
  ∀ n, P1354883951943854549.a n = A051442 n

end A051442

/-! ## A051442.P6125000557695598627

`A055652(2*(n+1)²)`
-/

namespace A051442.P6125000557695598627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (2 * (n + 1) ^ 2)

end

end A051442.P6125000557695598627

namespace A051442

/-- `A055652(2*(n+1)²)` -/
def P6125000557695598627.Spec : Prop :=
  ∀ n, P6125000557695598627.a n = A051442 n

end A051442

/-! ## A051442.P16995061851507733276

`A156354(2*(n+1)²)`
-/

namespace A051442.P16995061851507733276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (2 * (n + 1) ^ 2)

end

end A051442.P16995061851507733276

namespace A051442

/-- `A156354(2*(n+1)²)` -/
def P16995061851507733276.Spec : Prop :=
  ∀ n, P16995061851507733276.a n = A051442 n

end A051442

/-!
# A051443: a(n) = n^(n+1)*(n+1)^n.

The programs for A051443, the canonical program `A051443.P3487125599560760452` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051443 has offset 0).

The definition of A051443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)*(n+1)^n` (program `A051443.P3487125599560760452`, by `A051443.P3487125599560760452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051443.P3487125599560760452

`n^(n+1)*(n+1)^n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051443

/-- `n^(n+1)*(n+1)^n` -/
def P3487125599560760452.Spec : Prop :=
  ∀ n, (P3487125599560760452.a n : ℤ) = A051443 n

theorem P3487125599560760452.correct : P3487125599560760452.Spec := by
  intro n
  simp only [A051443]

end A051443

/-! ## A051443.P8880265360797148240

`lcm((n+1)^n, n^(n+1))`
-/

namespace A051443.P8880265360797148240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ n) (n ^ (n + 1))

end

end A051443.P8880265360797148240

namespace A051443

/-- `lcm((n+1)^n, n^(n+1))` -/
def P8880265360797148240.Spec : Prop :=
  ∀ n, (P8880265360797148240.a n : ℤ) = A051443 n

end A051443

/-! ## A051443.P1170371372772054408

`∑[a(n-1)+2]^(n+1)/(n+1)` with `a(0)=0`
-/

namespace A051443.P1170371372772054408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A051443.P1170371372772054408

namespace A051443

/-- `∑[a(n-1)+2]^(n+1)/(n+1)` -/
def P1170371372772054408.Spec : Prop :=
  ∀ n, P1170371372772054408.a n = (A051443 n : ℚ)

end A051443

/-! ## A051443.P10004898451334920991

`A062275(2*(n+1)²)`
-/

namespace A051443.P10004898451334920991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (2 * (n + 1) ^ 2)

end

end A051443.P10004898451334920991

namespace A051443

/-- `A062275(2*(n+1)²)` -/
def P10004898451334920991.Spec : Prop :=
  ∀ n, P10004898451334920991.a n = A051443 n

end A051443

/-! ## A051443.P12576904520000155947

`A281997(n+1)/(n+1)`
-/

namespace A051443.P12576904520000155947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281997 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A051443.P12576904520000155947

namespace A051443

/-- `A281997(n+1)/(n+1)` -/
def P12576904520000155947.Spec : Prop :=
  ∀ n, P12576904520000155947.a n = (A051443 n : ℚ)

theorem P12576904520000155947.correct : P12576904520000155947.Spec := by
  intro n
  simp only [A051443, Nat.add_sub_cancel, A051443.P12576904520000155947.a, A051443.P3487125599560760452.a, A281997, A281997.P18033756792537201015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051443

/-!
# A051444: Smallest k such that sigma(k) = n, or 0 if there is no such k, where sigma = A000203 = sum of divisors.

The programs for A051444, there is no canonical definition to state claims against.
-/

/-! ## A051444.P6031559500317609778

`A002192(∑[A175192(n+1)])*A175192(n+1)`
-/

namespace A051444.P6031559500317609778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002192 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A175192 (n + 1)

end

end A051444.P6031559500317609778

/-! ## A051444.P14391996378841004523

`A233929(n+2)%A048251(A057637(n+1))`
-/

namespace A051444.P14391996378841004523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233929 (n + 2)) (A048251 (A057637 (n + 1)).toNat)

end

end A051444.P14391996378841004523

/-! ## A051444.P12053325337386841202

`A175192(n+1)*A256632(A175192(n+1)+n)`
-/

namespace A051444.P12053325337386841202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1) * A256632 (A175192 (n + 1) + (n : ℤ)).toNat

end

end A051444.P12053325337386841202

/-! ## A051444.P17990612192972008569

`char[∑{d}[n, #%#²]]*A256632(n+1)`
-/

namespace A051444.P17990612192972008569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % d ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A256632 (n + 1)

end

end A051444.P17990612192972008569

/-! ## A051444.P18089894084776314275

`char[A039653(n)]*A256632(n+1)`
-/

namespace A051444.P18089894084776314275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A256632 (n + 1)

end

end A051444.P18089894084776314275

/-! ## A051444.P4357013253608046567

`A175192(n+1)*A256632(n+1)`
-/

namespace A051444.P4357013253608046567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1) * A256632 (n + 1)

end

end A051444.P4357013253608046567

/-! ## A051444.P16798772270947239563

`lcm(A240667(n+1), A256632(n+1))`
-/

namespace A051444.P16798772270947239563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A240667 (n + 1)) (A256632 (n + 1))

end

end A051444.P16798772270947239563

/-!
# A051445: Smallest k such that phi(k) = 2n, or 0 if there is no such k.

The programs for A051445, there is no canonical definition to state claims against.
-/

/-! ## A051445.P16171845781891369774

`A049283(2*(n+1))`
-/

namespace A051445.P16171845781891369774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (2 * (n + 1))

end

end A051445.P16171845781891369774

/-! ## A051445.P7623154868569975470

`abs(A049283(n+2+n)/A087960(n))`
-/

namespace A051445.P7623154868569975470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A049283 (n + 2 + n) : ℚ) / (A087960 n : ℚ)|

end

end A051445.P7623154868569975470

/-! ## A051445.P16114766540825533429

`A000027(A049283(n+2+n)+1)-1`
-/

namespace A051445.P16114766540825533429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A049283 (n + 2 + n) + 1).toNat - 1

end

end A051445.P16114766540825533429

/-! ## A051445.P9265370762756487278

`A049283(n+2+n)/A285130(∑[A059841(n)])%2`
-/

namespace A051445.P9265370762756487278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049283 (n + 2 + n) : ℚ) / (Int.tmod (A285130 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2 : ℚ)

end

end A051445.P9265370762756487278

/-! ## A051445.P6898111299498050890

`A002181(A264810(2*(n+1)))*A264739(2*(n+1))`
-/

namespace A051445.P6898111299498050890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (A264810 (2 * (n + 1))).toNat * A264739 (2 * (n + 1))

end

end A051445.P6898111299498050890

/-! ## A051445.P14937825049961348213

`A022998(A049283(n+2+n))`
-/

namespace A051445.P14937825049961348213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A049283 (n + 2 + n)).toNat

end

end A051445.P14937825049961348213

/-! ## A051445.P5974686577024207090

`A015126(A319048(2*(n+1)))*A264739(2*(n+1))`
-/

namespace A051445.P5974686577024207090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (A319048 (2 * (n + 1))).toNat * A264739 (2 * (n + 1))

end

end A051445.P5974686577024207090

/-! ## A051445.P1645976828618331600

`A233583(A049283(n+2+n)+n+1)-n`
-/

namespace A051445.P1645976828618331600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A049283 (n + 2 + n) + (n : ℤ) + 1).toNat - (n : ℤ)

end

end A051445.P1645976828618331600

/-!
# A051448: Sum of prime divisors of n (with multiplicity) is a square.

The programs for A051448, the canonical program `A051448.P13624532143330964152` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051448 has offset 1).

The definition of A051448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051448.P13624532143330964152

`eq[1, A010052(A001414(n+1))]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051448

/-- `eq[1, A010052(A001414(n+1))]+1` -/
def P13624532143330964152.Spec : Prop :=
  ∀ n, (P13624532143330964152.a n : ℤ) = A051448 (n + 1)

theorem P13624532143330964152.correct : P13624532143330964152.Spec := by
  intro n
  simp only [A051448, Nat.add_sub_cancel]

end A051448

/-! ## A051448.P15549214149366921964

`record[(n+1)*A010052(A001414(C(n+1, n)))]`
-/

namespace A051448.P15549214149366921964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A001414 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051448.P15549214149366921964

namespace A051448

/-- `record[(n+1)*A010052(A001414(C(n+1, n)))]` -/
def P15549214149366921964.Spec : Prop :=
  ∀ n, P15549214149366921964.a n = A051448 (n + 1)

end A051448

/-! ## A051448.P1440583865939356360

`eq[A055672(n), A267635(A107463(n))]`
-/

namespace A051448.P1440583865939356360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051448.P1440583865939356360

namespace A051448

/-- `eq[A055672(n), A267635(A107463(n))]` -/
def P1440583865939356360.Spec : Prop :=
  ∀ n, (P1440583865939356360.a n : ℤ) = A051448 (n + 1)

end A051448

/-! ## A051448.P2902289174674736408

`record[A000027(n+1)*A010052(A001414(n+1))]`
-/

namespace A051448.P2902289174674736408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A010052 (A001414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051448.P2902289174674736408

namespace A051448

/-- `record[A000027(n+1)*A010052(A001414(n+1))]` -/
def P2902289174674736408.Spec : Prop :=
  ∀ n, P2902289174674736408.a n = A051448 (n + 1)

end A051448

/-! ## A051448.P15646197102576325401

`record[A001057(2*n+1)*A010052(A001414(n+1))]`
-/

namespace A051448.P15646197102576325401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n + 1) * A010052 (A001414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051448.P15646197102576325401

namespace A051448

/-- `record[A001057(2*n+1)*A010052(A001414(n+1))]` -/
def P15646197102576325401.Spec : Prop :=
  ∀ n, P15646197102576325401.a n = A051448 (n + 1)

end A051448

/-!
# A051449: Number of fibered rational knots with n crossings.

The programs for A051449, there is no canonical definition to state claims against.
-/

/-! ## A051449.P13310752503248611186

`A004526(A173433(n+2)+A103609(n+2))`
-/

namespace A051449.P13310752503248611186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A173433 (n + 2) + A103609 (n + 2)).toNat

end

end A051449.P13310752503248611186

/-! ## A051449.P2445703524753974863

`A110654(A093040(n))+A004695(A008619(n))`
-/

namespace A051449.P2445703524753974863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A093040 n).toNat + A004695 (A008619 n).toNat

end

end A051449.P2445703524753974863

/-! ## A051449.P7242370899668190376

`A276571(A036722(n)-A193489(n+1))`
-/

namespace A051449.P7242370899668190376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A036722 n - A193489 (n + 1)).toNat

end

end A051449.P7242370899668190376

/-! ## A051449.P7225427170486044830

`A003056(A240085(n)+A000081(n))`
-/

namespace A051449.P7225427170486044830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A240085 n + A000081 n).toNat

end

end A051449.P7225427170486044830

/-! ## A051449.P18023456603077390559

`A103128(A152172(n))-A323547(n+1)`
-/

namespace A051449.P18023456603077390559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A152172 n).toNat - A323547 (n + 1)

end

end A051449.P18023456603077390559

/-!
# A051450: Number of positive rational knots with 2n+1 crossings.

The programs for A051450, the canonical program `A051450.P13625894040363126145` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051450 has offset 1).

The definition of A051450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051450.P13625894040363126145

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051450

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` -/
def P13625894040363126145.Spec : Prop :=
  ∀ n, P13625894040363126145.a n = A051450 (n + 1)

theorem P13625894040363126145.correct : P13625894040363126145.Spec := by
  intro n
  simp only [A051450, Nat.add_sub_cancel]

end A051450

/-! ## A051450.P5530879036085876705

`(A000045(2*(n+1))+A000045(n+1))/2`
-/

namespace A051450.P5530879036085876705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * (n + 1)) + A000045 (n + 1) : ℚ) / 2

end

end A051450.P5530879036085876705

namespace A051450

/-- `(A000045(2*(n+1))+A000045(n+1))/2` -/
def P5530879036085876705.Spec : Prop :=
  ∀ n, P5530879036085876705.a n = (A051450 (n + 1) : ℚ)

end A051450

/-! ## A051450.P2561522957558528019

`ogf((1-2x)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A051450.P2561522957558528019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 3, 2, -1] n

end

end A051450.P2561522957558528019

namespace A051450

/-- `ogf((1-2x)/(1-4x+3x^2+2x^3-x^4))` -/
def P2561522957558528019.Spec : Prop :=
  ∀ n, P2561522957558528019.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P12222004956603284248

`A001224(Δ[n²])`
-/

namespace A051450.P12222004956603284248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051450.P12222004956603284248

namespace A051450

/-- `A001224(Δ[n²])` -/
def P12222004956603284248.Spec : Prop :=
  ∀ n, P12222004956603284248.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P5454624473958587469

`A060312(Δ[n²])`
-/

namespace A051450.P5454624473958587469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051450.P5454624473958587469

namespace A051450

/-- `A060312(Δ[n²])` -/
def P5454624473958587469.Spec : Prop :=
  ∀ n, P5454624473958587469.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P15784139794292316106

`A102526(Δ[n²])`
-/

namespace A051450.P15784139794292316106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051450.P15784139794292316106

namespace A051450

/-- `A102526(Δ[n²])` -/
def P15784139794292316106.Spec : Prop :=
  ∀ n, P15784139794292316106.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P161592256005773238

`∑[A059512(n+1)]`
-/

namespace A051450.P161592256005773238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051450.P161592256005773238

namespace A051450

/-- `∑[A059512(n+1)]` -/
def P161592256005773238.Spec : Prop :=
  ∀ n, P161592256005773238.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P169838018558056385

`Δ[A005207(n+1)]`
-/

namespace A051450.P169838018558056385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051450.P169838018558056385

namespace A051450

/-- `Δ[A005207(n+1)]` -/
def P169838018558056385.Spec : Prop :=
  ∀ n, P169838018558056385.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P4509069798452940759

`Δ[A102526(2*n)]`
-/

namespace A051450.P4509069798452940759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102526 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051450.P4509069798452940759

namespace A051450

/-- `Δ[A102526(2*n)]` -/
def P4509069798452940759.Spec : Prop :=
  ∀ n, P4509069798452940759.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P3733311803007144432

`A336030(2*n+3)/2`
-/

namespace A051450.P3733311803007144432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336030 (2 * n + 3) : ℚ) / 2

end

end A051450.P3733311803007144432

namespace A051450

/-- `A336030(2*n+3)/2` -/
def P3733311803007144432.Spec : Prop :=
  ∀ n, P3733311803007144432.a n = (A051450 (n + 1) : ℚ)

end A051450

/-! ## A051450.P18224328208655405635

`xor(1, xor(1, A001224(2*n+1)))`
-/

namespace A051450.P18224328208655405635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A001224 (2 * n + 1)))

end

end A051450.P18224328208655405635

namespace A051450

/-- `xor(1, xor(1, A001224(2*n+1)))` -/
def P18224328208655405635.Spec : Prop :=
  ∀ n, P18224328208655405635.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P11852701774439425833

`A005207(n)+A001906(n)`
-/

namespace A051450.P11852701774439425833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 n + A001906 n

end

end A051450.P11852701774439425833

namespace A051450

/-- `A005207(n)+A001906(n)` -/
def P11852701774439425833.Spec : Prop :=
  ∀ n, P11852701774439425833.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P5524102184939928485

`A290890(n)+A005252(n)`
-/

namespace A051450.P5524102184939928485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290890 n + A005252 n

end

end A051450.P5524102184939928485

namespace A051450

/-- `A290890(n)+A005252(n)` -/
def P5524102184939928485.Spec : Prop :=
  ∀ n, P5524102184939928485.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P10629202390699548245

`A087124(n)-A059512(n)`
-/

namespace A051450.P10629202390699548245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 n - A059512 n

end

end A051450.P10629202390699548245

namespace A051450

/-- `A087124(n)-A059512(n)` -/
def P10629202390699548245.Spec : Prop :=
  ∀ n, P10629202390699548245.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P17164961449594391921

`A122367(n)-A056014(n)`
-/

namespace A051450.P17164961449594391921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A056014 n

end

end A051450.P17164961449594391921

namespace A051450

/-- `A122367(n)-A056014(n)` -/
def P17164961449594391921.Spec : Prop :=
  ∀ n, P17164961449594391921.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P3840737975299486566

`A033192(n+1)+A001654(n)`
-/

namespace A051450.P3840737975299486566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) + A001654 n

end

end A051450.P3840737975299486566

namespace A051450

/-- `A033192(n+1)+A001654(n)` -/
def P3840737975299486566.Spec : Prop :=
  ∀ n, P3840737975299486566.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P17266058809092693326

`A094292(n)+A005207(n+1)`
-/

namespace A051450.P17266058809092693326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 n + A005207 (n + 1)

end

end A051450.P17266058809092693326

namespace A051450

/-- `A094292(n)+A005207(n+1)` -/
def P17266058809092693326.Spec : Prop :=
  ∀ n, P17266058809092693326.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P6004860773547953114

`A387778(n)+A173173(n+1)`
-/

namespace A051450.P6004860773547953114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387778 n + A173173 (n + 1)

end

end A051450.P6004860773547953114

namespace A051450

/-- `A387778(n)+A173173(n+1)` -/
def P6004860773547953114.Spec : Prop :=
  ∀ n, P6004860773547953114.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P11246023188249037835

`A001519(n+1)-A056014(n)`
-/

namespace A051450.P11246023188249037835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - A056014 n

end

end A051450.P11246023188249037835

namespace A051450

/-- `A001519(n+1)-A056014(n)` -/
def P11246023188249037835.Spec : Prop :=
  ∀ n, P11246023188249037835.a n = A051450 (n + 1)

end A051450

/-! ## A051450.P434669592593888156

`A027994(n)-A056014(n+1)`
-/

namespace A051450.P434669592593888156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027994 n - A056014 (n + 1)

end

end A051450.P434669592593888156

namespace A051450

/-- `A027994(n)-A056014(n+1)` -/
def P434669592593888156.Spec : Prop :=
  ∀ n, P434669592593888156.a n = A051450 (n + 1)

end A051450

/-!
# A051451: a(n) = lcm{ 1,2,...,x } where x is the n-th prime power (A000961).

The programs for A051451, the canonical program `A051451.P7656855382918326739` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051451 has offset 1).

The definition of A051451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051451.P6366456357312085989

`A208768(n+1)+1`
-/

namespace A051451.P6366456357312085989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208768 (n + 1) + 1

end

end A051451.P6366456357312085989

namespace A051451

/-- `A208768(n+1)+1` -/
def P6366456357312085989.Spec : Prop :=
  ∀ n, P6366456357312085989.a n = A051451 (n + 1)

end A051451

/-! ## A051451.P7656855382918326739

`A003418(A000961(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A051451

/-- `A003418(A000961(n+1))` -/
def P7656855382918326739.Spec : Prop :=
  ∀ n, P7656855382918326739.a n = A051451 (n + 1)

theorem P7656855382918326739.correct : P7656855382918326739.Spec := by
  intro n
  simp only [A051451, Nat.add_sub_cancel]

end A051451

/-! ## A051451.P14882297648964360064

`record[lcm(n, a(n-1))]` with `a(0)=1, a(1)=-1`
-/

namespace A051451.P14882297648964360064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (Int.lcm (n : ℤ) (f1 (n - 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051451.P14882297648964360064

namespace A051451

/-- `record[lcm(n, a(n-1))]` -/
def P14882297648964360064.Spec : Prop :=
  ∀ n, P14882297648964360064.a n = A051451 (n + 1)

end A051451

/-! ## A051451.P2995841056073831314

`∏[A025473(n+1)]`
-/

namespace A051451.P2995841056073831314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051451.P2995841056073831314

namespace A051451

/-- `∏[A025473(n+1)]` -/
def P2995841056073831314.Spec : Prop :=
  ∀ n, P2995841056073831314.a n = A051451 (n + 1)

end A051451

/-! ## A051451.P17033835189339574715

`record[A069491(n+1)]`
-/

namespace A051451.P17033835189339574715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051451.P17033835189339574715

namespace A051451

/-- `record[A069491(n+1)]` -/
def P17033835189339574715.Spec : Prop :=
  ∀ n, P17033835189339574715.a n = A051451 (n + 1)

end A051451

/-! ## A051451.P8744898414893552081

`record[A083268(n+1)]`
-/

namespace A051451.P8744898414893552081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051451.P8744898414893552081

namespace A051451

/-- `record[A083268(n+1)]` -/
def P8744898414893552081.Spec : Prop :=
  ∀ n, P8744898414893552081.a n = A051451 (n + 1)

end A051451

/-! ## A051451.P11039545473814451965

`A051452(n+1)-1`
-/

namespace A051451.P11039545473814451965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051452 (n + 1) - 1

end

end A051451.P11039545473814451965

namespace A051451

/-- `A051452(n+1)-1` -/
def P11039545473814451965.Spec : Prop :=
  ∀ n, P11039545473814451965.a n = A051451 (n + 1)

end A051451

/-! ## A051451.P17356249091917885813

`∑[record[A119944(n)]]+1`
-/

namespace A051451.P17356249091917885813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A051451.P17356249091917885813

namespace A051451

/-- `∑[record[A119944(n)]]+1` -/
def P17356249091917885813.Spec : Prop :=
  ∀ n, P17356249091917885813.a n = A051451 (n + 1)

end A051451

/-! ## A051451.P4698364757257425921

`record[A003418(A008611(n))]`
-/

namespace A051451.P4698364757257425921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051451.P4698364757257425921

namespace A051451

/-- `record[A003418(A008611(n))]` -/
def P4698364757257425921.Spec : Prop :=
  ∀ n, P4698364757257425921.a n = A051451 (n + 1)

end A051451

/-! ## A051451.P1477087732859519871

`record[A003418(A025480(n))]`
-/

namespace A051451.P1477087732859519871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051451.P1477087732859519871

namespace A051451

/-- `record[A003418(A025480(n))]` -/
def P1477087732859519871.Spec : Prop :=
  ∀ n, P1477087732859519871.a n = A051451 (n + 1)

end A051451

/-!
# A051452: a(n) = 1 + lcm(1..k) where k is the n-th prime power A000961(n).

The programs for A051452, there is no canonical definition to state claims against.
-/

/-! ## A051452.P9874339183531266704

`record[lcm(n, 1-a(n-1))+1]` with `a(0)=2, a(1)=0`
-/

namespace A051452.P9874339183531266704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  Int.lcm (n : ℤ) (1 - (f1 (n - 1) : ℤ)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051452.P9874339183531266704

/-! ## A051452.P16584859745439390393

`A051451(n+1)+1`
-/

namespace A051452.P16584859745439390393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (n + 1) + 1

end

end A051452.P16584859745439390393

/-! ## A051452.P13631982927926042422

`A208768(n+1)+2`
-/

namespace A051452.P13631982927926042422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208768 (n + 1) + 2

end

end A051452.P13631982927926042422

/-! ## A051452.P18295152567598146402

`∑[record[A119944(n)]]+2`
-/

namespace A051452.P18295152567598146402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A051452.P18295152567598146402

/-! ## A051452.P550837921832678219

`∏[A025473(n+1)]+1`
-/

namespace A051452.P550837921832678219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A051452.P550837921832678219

/-! ## A051452.P9537309670537945995

`record[A069491(n+1)+1]`
-/

namespace A051452.P9537309670537945995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069491 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051452.P9537309670537945995

/-! ## A051452.P13194318707795444985

`record[A083268(n+1)+1]`
-/

namespace A051452.P13194318707795444985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083268 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051452.P13194318707795444985

/-! ## A051452.P6141565175668024536

`A075059(A000961(n+1))`
-/

namespace A051452.P6141565175668024536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (A000961 (n + 1)).toNat

end

end A051452.P6141565175668024536

/-! ## A051452.P1459348946122173338

`A075059(A181062(n+2))`
-/

namespace A051452.P1459348946122173338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (A181062 (n + 2)).toNat

end

end A051452.P1459348946122173338

/-! ## A051452.P13560162524159761408

`record[A003418(A008611(n))+1]`
-/

namespace A051452.P13560162524159761408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A008611 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051452.P13560162524159761408

/-!
# A051453: Prime powers such that 1 + lcm(1,2,...,p^w) is prime.

The programs for A051453, there is no canonical definition to state claims against.
-/

/-! ## A051453.P12561913606437103570

`record[A034699(A049537(n+2))]`
-/

namespace A051453.P12561913606437103570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A049537 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051453.P12561913606437103570

/-! ## A051453.P99520907643780911

`filter[A049537(n+2), A324290(#)]`
-/

namespace A051453.P99520907643780911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049537 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A051453.P99520907643780911

/-! ## A051453.P5973238262097745275

`filter[A049537(n+2), A345950(#)]`
-/

namespace A051453.P5973238262097745275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049537 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A051453.P5973238262097745275

/-! ## A051453.P5442185916474102950

`filter[A049537(n+2), A355937(#)]`
-/

namespace A051453.P5442185916474102950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049537 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A051453.P5442185916474102950

/-! ## A051453.P15986398007352804765

`∩[A000961(n+1), A049537(n+1)]`
-/

namespace A051453.P15986398007352804765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051453.P15986398007352804765

/-!
# A051454: a(n) is the smallest prime factor of 1 + lcm(1..k) where k is the n-th prime power A000961(n).

The programs for A051454, there is no canonical definition to state claims against.
-/

/-! ## A051454.P3635824107806833106

`A285708(record[lcm(n, 1-a(n-1))+1])` with `a(0)=2, a(1)=-1`
-/

namespace A051454.P3635824107806833106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f1 =>
  (Int.lcm (n : ℤ) (1 - f1 (n - 1)) + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051454.P3635824107806833106

/-! ## A051454.P13576960259290367639

`A014963(A051452(n+1))`
-/

namespace A051454.P13576960259290367639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051452 (n + 1)).toNat

end

end A051454.P13576960259290367639

/-! ## A051454.P13066482836529279705

`A058977(A051451(n+1))`
-/

namespace A051454.P13066482836529279705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (A051451 (n + 1)).toNat

end

end A051454.P13066482836529279705

/-!
# A051455: (Terms in A029623)/2.

The programs for A051455, the canonical program `A051455.P7397335918574363069` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051455 has offset 0).

The definition of A051455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051455.P7397335918574363069

`A029623(n)/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A051455

/-- `A029623(n)/2` -/
def P7397335918574363069.Spec : Prop :=
  ∀ n, P7397335918574363069.a n = (A051455 n : ℚ)

end A051455

/-! ## A051455.P18331227768926175465

`A029618(eq[0, A290452(n)])/2`
-/

namespace A051455.P18331227768926175465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A051455.P18331227768926175465

namespace A051455

/-- `A029618(eq[0, A290452(n)])/2` -/
def P18331227768926175465.Spec : Prop :=
  ∀ n, P18331227768926175465.a n = (A051455 n : ℚ)

end A051455

/-! ## A051455.P15486583630413456775

`A029618(lt[A029618(n)%2, 1])/2`
-/

namespace A051455.P15486583630413456775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029618 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029618 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 2

end

end A051455.P15486583630413456775

namespace A051455

/-- `A029618(lt[A029618(n)%2, 1])/2` -/
def P15486583630413456775.Spec : Prop :=
  ∀ n, P15486583630413456775.a n = (A051455 n : ℚ)

end A051455

/-! ## A051455.P2772550702887488094

`A029618(lt[1, gcd(2, A029618(n))])/2`
-/

namespace A051455.P2772550702887488094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029618 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 2

end

end A051455.P2772550702887488094

namespace A051455

/-- `A029618(lt[1, gcd(2, A029618(n))])/2` -/
def P2772550702887488094.Spec : Prop :=
  ∀ n, P2772550702887488094.a n = (A051455 n : ℚ)

end A051455

/-! ## A051455.P15854717290563471773

`A014682(A029623(n))`
-/

namespace A051455.P15854717290563471773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029623 n).toNat

end

end A051455.P15854717290563471773

namespace A051455

/-- `A014682(A029623(n))` -/
def P15854717290563471773.Spec : Prop :=
  ∀ n, P15854717290563471773.a n = A051455 n

end A051455

/-! ## A051455.P7557800950775185313

`A273943(lcm(2, A029623(n)))`
-/

namespace A051455.P7557800950775185313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A029623 n))

end

end A051455.P7557800950775185313

namespace A051455

/-- `A273943(lcm(2, A029623(n)))` -/
def P7557800950775185313.Spec : Prop :=
  ∀ n, P7557800950775185313.a n = A051455 n

end A051455

/-! ## A051455.P7595645927964848635

`A273943(A029623(n)-A000007(n))`
-/

namespace A051455.P7595645927964848635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A029623 n - A000007 n).toNat

end

end A051455.P7595645927964848635

namespace A051455

/-- `A273943(A029623(n)-A000007(n))` -/
def P7595645927964848635.Spec : Prop :=
  ∀ n, P7595645927964848635.a n = A051455 n

end A051455

/-! ## A051455.P16670651361715712300

`gcd(A000038(n), A273943(A029623(n)))`
-/

namespace A051455.P16670651361715712300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A273943 (A029623 n).toNat)

end

end A051455.P16670651361715712300

namespace A051455

/-- `gcd(A000038(n), A273943(A029623(n)))` -/
def P16670651361715712300.Spec : Prop :=
  ∀ n, (P16670651361715712300.a n : ℤ) = A051455 n

end A051455

/-! ## A051455.P6881546061313414504

`A273943(or(A000038(n), A029623(n)))`
-/

namespace A051455.P6881546061313414504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lor (A000038 n) (A029623 n)).toNat

end

end A051455.P6881546061313414504

namespace A051455

/-- `A273943(or(A000038(n), A029623(n)))` -/
def P6881546061313414504.Spec : Prop :=
  ∀ n, P6881546061313414504.a n = A051455 n

end A051455

/-! ## A051455.P6541744958666032990

`A328399(A029623(n)-2)`
-/

namespace A051455.P6541744958666032990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A029623 n - 2).toNat

end

end A051455.P6541744958666032990

namespace A051455

/-- `A328399(A029623(n)-2)` -/
def P6541744958666032990.Spec : Prop :=
  ∀ n, P6541744958666032990.a n = A051455 n

end A051455

/-!
# A051456: (Terms in A029625)/2.

The programs for A051456, the canonical program `A051456.P8737044778690682288` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051456 has offset 0).

The definition of A051456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051456.P8737044778690682288

`A029625(n)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A051456

/-- `A029625(n)/2` -/
def P8737044778690682288.Spec : Prop :=
  ∀ n, P8737044778690682288.a n = (A051456 n : ℚ)

end A051456

/-! ## A051456.P8199999631850296579

`A051468(n)+sqrt(A014727(n))`
-/

namespace A051456.P8199999631850296579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051468 n : ℝ) + Real.sqrt (A014727 n : ℝ)

end

end A051456.P8199999631850296579

namespace A051456

/-- `A051468(n)+sqrt(A014727(n))` -/
def P8199999631850296579.Spec : Prop :=
  ∀ n, P8199999631850296579.a n = (A051456 n : ℝ)

end A051456

/-! ## A051456.P18219369370361178497

`A051468(n)+A014428(n+1)`
-/

namespace A051456.P18219369370361178497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n + A014428 (n + 1)

end

end A051456.P18219369370361178497

namespace A051456

/-- `A051468(n)+A014428(n+1)` -/
def P18219369370361178497.Spec : Prop :=
  ∀ n, P18219369370361178497.a n = A051456 n

end A051456

/-! ## A051456.P15973646798265873044

`A014428(n+1)+A029641(n)/2`
-/

namespace A051456.P15973646798265873044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014428 (n + 1) : ℚ) + (A029641 n : ℚ) / 2

end

end A051456.P15973646798265873044

namespace A051456

/-- `A014428(n+1)+A029641(n)/2` -/
def P15973646798265873044.Spec : Prop :=
  ∀ n, P15973646798265873044.a n = (A051456 n : ℚ)

end A051456

/-! ## A051456.P17839419189672554699

`A051434(n)+A051468(n)-A051429(n)`
-/

namespace A051456.P17839419189672554699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n + (A051468 n - A051429 n)

end

end A051456.P17839419189672554699

namespace A051456

/-- `A051434(n)+A051468(n)-A051429(n)` -/
def P17839419189672554699.Spec : Prop :=
  ∀ n, P17839419189672554699.a n = A051456 n

end A051456

/-! ## A051456.P14889706835824825994

`A051455(lt[1, A051455(n)])`
-/

namespace A051456.P14889706835824825994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A051456.P14889706835824825994

namespace A051456

/-- `A051455(lt[1, A051455(n)])` -/
def P14889706835824825994.Spec : Prop :=
  ∀ n, P14889706835824825994.a n = A051456 n

end A051456

/-! ## A051456.P15503833422360794519

`A029623(lt[2, A029623(n)])/2`
-/

namespace A051456.P15503833422360794519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029623 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A051456.P15503833422360794519

namespace A051456

/-- `A029623(lt[2, A029623(n)])/2` -/
def P15503833422360794519.Spec : Prop :=
  ∀ n, P15503833422360794519.a n = (A051456 n : ℚ)

end A051456

/-! ## A051456.P8457159252027799674

`(A029641(n)+A028326(A268232(n+1)))/2`
-/

namespace A051456.P8457159252027799674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029641 n + A028326 (A268232 (n + 1)).toNat : ℚ) / 2

end

end A051456.P8457159252027799674

namespace A051456

/-- `(A029641(n)+A028326(A268232(n+1)))/2` -/
def P8457159252027799674.Spec : Prop :=
  ∀ n, P8457159252027799674.a n = (A051456 n : ℚ)

end A051456

/-! ## A051456.P8117374456810942206

`A051468(n)+A007318(A268232(n+1))`
-/

namespace A051456.P8117374456810942206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n + A007318 (A268232 (n + 1)).toNat

end

end A051456.P8117374456810942206

namespace A051456

/-- `A051468(n)+A007318(A268232(n+1))` -/
def P8117374456810942206.Spec : Prop :=
  ∀ n, P8117374456810942206.a n = A051456 n

end A051456

/-! ## A051456.P12415495998849896201

`A029621(A268232(n+1))/2`
-/

namespace A051456.P12415495998849896201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029621 (A268232 (n + 1)).toNat : ℚ) / 2

end

end A051456.P12415495998849896201

namespace A051456

/-- `A029621(A268232(n+1))/2` -/
def P12415495998849896201.Spec : Prop :=
  ∀ n, P12415495998849896201.a n = (A051456 n : ℚ)

end A051456

/-!
# A051457: (Terms in A029627)/2.

The programs for A051457, the canonical program `A051457.P7823125324757561641` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051457 has offset 0).

The definition of A051457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051457.P934576763571389630

`A029627(n)/2`
-/

namespace A051457.P934576763571389630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029627 n : ℚ) / 2

end

end A051457.P934576763571389630

namespace A051457

/-- `A029627(n)/2` -/
def P934576763571389630.Spec : Prop :=
  ∀ n, P934576763571389630.a n = (A051457 n : ℚ)

end A051457

/-! ## A051457.P7823125324757561641

`A029632(eq[2, gcd(2, A029632(n))])/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A051457

/-- `A029632(eq[2, gcd(2, A029632(n))])/2` -/
def P7823125324757561641.Spec : Prop :=
  ∀ n, P7823125324757561641.a n = (A051457 n : ℚ)

end A051457

/-! ## A051457.P16846114471763957705

`A014682(A029627(n))`
-/

namespace A051457.P16846114471763957705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029627 n).toNat

end

end A051457.P16846114471763957705

namespace A051457

/-- `A014682(A029627(n))` -/
def P16846114471763957705.Spec : Prop :=
  ∀ n, P16846114471763957705.a n = A051457 n

end A051457

/-! ## A051457.P14252118295573891386

`A273943(lcm(2, A029627(n)))`
-/

namespace A051457.P14252118295573891386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A029627 n))

end

end A051457.P14252118295573891386

namespace A051457

/-- `A273943(lcm(2, A029627(n)))` -/
def P14252118295573891386.Spec : Prop :=
  ∀ n, P14252118295573891386.a n = A051457 n

end A051457

/-! ## A051457.P4350510553955075385

`A302043(A029627(n)+2)-1`
-/

namespace A051457.P4350510553955075385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A029627 n + 2).toNat - 1

end

end A051457.P4350510553955075385

namespace A051457

/-- `A302043(A029627(n)+2)-1` -/
def P4350510553955075385.Spec : Prop :=
  ∀ n, P4350510553955075385.a n = A051457 n

end A051457

/-!
# A051458: (Terms in A029631)/2.

The programs for A051458, the canonical program `A051458.P2421049686485935770` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051458 has offset 0).

The definition of A051458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051458.P2421049686485935770

`A029631(n)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051458

/-- `A029631(n)/2` -/
def P2421049686485935770.Spec : Prop :=
  ∀ n, P2421049686485935770.a n = (A051458 n : ℚ)

end A051458

/-! ## A051458.P15699931890574126998

`A051456(lt[A051456(n), A051434(n)+1])`
-/

namespace A051458.P15699931890574126998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051458.P15699931890574126998

namespace A051458

/-- `A051456(lt[A051456(n), A051434(n)+1])` -/
def P15699931890574126998.Spec : Prop :=
  ∀ n, P15699931890574126998.a n = A051458 n

end A051458

/-! ## A051458.P16367376701061620986

`A051456(lt[A051456(n)-1, A051434(n)])`
-/

namespace A051458.P16367376701061620986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051458.P16367376701061620986

namespace A051458

/-- `A051456(lt[A051456(n)-1, A051434(n)])` -/
def P16367376701061620986.Spec : Prop :=
  ∀ n, P16367376701061620986.a n = A051458 n

end A051458

/-! ## A051458.P18256905334853085625

`A051455(lt[A029605(n), A029623(n)])`
-/

namespace A051458.P18256905334853085625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051458.P18256905334853085625

namespace A051458

/-- `A051455(lt[A029605(n), A029623(n)])` -/
def P18256905334853085625.Spec : Prop :=
  ∀ n, P18256905334853085625.a n = A051458 n

end A051458

/-! ## A051458.P6295224520297872373

`A051455(lt[A051433(n), A051455(n)])`
-/

namespace A051458.P6295224520297872373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051458.P6295224520297872373

namespace A051458

/-- `A051455(lt[A051433(n), A051455(n)])` -/
def P6295224520297872373.Spec : Prop :=
  ∀ n, P6295224520297872373.a n = A051458 n

end A051458

/-! ## A051458.P726331709104465239

`A051455(lt[A029605(n), A029605(n+1)])`
-/

namespace A051458.P726331709104465239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051458.P726331709104465239

namespace A051458

/-- `A051455(lt[A029605(n), A029605(n+1)])` -/
def P726331709104465239.Spec : Prop :=
  ∀ n, P726331709104465239.a n = A051458 n

end A051458

/-! ## A051458.P2673493483970902822

`A051455(lt[A029605(n), 2*A051455(n)])`
-/

namespace A051458.P2673493483970902822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051458.P2673493483970902822

namespace A051458

/-- `A051455(lt[A029605(n), 2*A051455(n)])` -/
def P2673493483970902822.Spec : Prop :=
  ∀ n, P2673493483970902822.a n = A051458 n

end A051458

/-! ## A051458.P5928235116500542462

`A029623(lt[A029605(n), A029623(n)])/2`
-/

namespace A051458.P5928235116500542462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029623 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029623 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 2

end

end A051458.P5928235116500542462

namespace A051458

/-- `A029623(lt[A029605(n), A029623(n)])/2` -/
def P5928235116500542462.Spec : Prop :=
  ∀ n, P5928235116500542462.a n = (A051458 n : ℚ)

end A051458

/-! ## A051458.P6762305002088114519

`A051455(lt[A029605(n)/2, A051455(n)])`
-/

namespace A051458.P6762305002088114519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029605 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A051458.P6762305002088114519

namespace A051458

/-- `A051455(lt[A029605(n)/2, A051455(n)])` -/
def P6762305002088114519.Spec : Prop :=
  ∀ n, P6762305002088114519.a n = A051458 n

end A051458

/-!
# A051459: Number of orderings of the subsets of a set with n elements that are compatible with the subsets' sizes; i.e., if A, B are two subsets with A <= B then Card(A) <= Card(B).

The programs for A051459, there is no canonical definition to state claims against.
-/

/-! ## A051459.P18188666663553237201

`A000722(n)/A022914(n)`
-/

namespace A051459.P18188666663553237201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000722 n : ℚ) / (A022914 n : ℚ)

end

end A051459.P18188666663553237201

/-! ## A051459.P12665813129092358565

`∏{d}[n!, C(n, #)!]`
-/

namespace A051459.P12665813129092358565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.choose n d)

end

end A051459.P12665813129092358565

/-! ## A051459.P1875909045974632919

`∏{d}[A000142(n), A000142(C(n, #))]`
-/

namespace A051459.P1875909045974632919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000142 (Nat.choose n d)

end

end A051459.P1875909045974632919

/-!
# A051462: Molien series for group G_{1,2}^{8} of order 1536.

The programs for A051462, the canonical program `A051462.P3852036082680825809` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051462 has offset 0).

The definition of A051462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051462.P3852036082680825809

`(1+2*(2*n+1)*(n²+n+4)-n%3)/9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051462

/-- `(1+2*(2*n+1)*(n²+n+4)-n%3)/9` -/
def P3852036082680825809.Spec : Prop :=
  ∀ n, P3852036082680825809.a n = (A051462 n : ℚ)

end A051462

/-! ## A051462.P7473859783237056955

`Δ[n²]+∑[floor((2*n)²/3)]`
-/

namespace A051462.P7473859783237056955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A051462.P7473859783237056955

namespace A051462

/-- `Δ[n²]+∑[floor((2*n)²/3)]` -/
def P7473859783237056955.Spec : Prop :=
  ∀ n, P7473859783237056955.a n = A051462 n

end A051462

/-! ## A051462.P1439362009469953307

`∑[∑[∑[floor(a(n-3))]]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=2, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A051462.P1439362009469953307
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 2, 3] fun n f3 =>
  f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051462.P1439362009469953307

namespace A051462

/-- `∑[∑[∑[floor(a(n-3))]]]` -/
def P1439362009469953307.Spec : Prop :=
  ∀ n, (P1439362009469953307.a n : ℤ) = A051462 n

end A051462

/-! ## A051462.P16800943704744716309

`∑[A115285(n)]`
-/

namespace A051462.P16800943704744716309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051462.P16800943704744716309

namespace A051462

/-- `∑[A115285(n)]` -/
def P16800943704744716309.Spec : Prop :=
  ∀ n, P16800943704744716309.a n = A051462 n

end A051462

/-! ## A051462.P4695144915026756258

`∑[ceil(xor(1, A004277(n)²)/3)+1]`
-/

namespace A051462.P4695144915026756258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 (A004277 n ^ 2) : ℚ) / 3⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051462.P4695144915026756258

namespace A051462

/-- `∑[ceil(xor(1, A004277(n)²)/3)+1]` -/
def P4695144915026756258.Spec : Prop :=
  ∀ n, P4695144915026756258.a n = A051462 n

end A051462

/-! ## A051462.P12181485294391779937

`∑[A238705(n+1)-comp[2*(n+1)]]`
-/

namespace A051462.P12181485294391779937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238705 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051462.P12181485294391779937

namespace A051462

/-- `∑[A238705(n+1)-comp[2*(n+1)]]` -/
def P12181485294391779937.Spec : Prop :=
  ∀ n, P12181485294391779937.a n = A051462 n

end A051462

/-! ## A051462.P13223478620263519694

`∑[A005893(n)-A071619(n)]`
-/

namespace A051462.P13223478620263519694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A071619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051462.P13223478620263519694

namespace A051462

/-- `∑[A005893(n)-A071619(n)]` -/
def P13223478620263519694.Spec : Prop :=
  ∀ n, P13223478620263519694.a n = A051462 n

end A051462

/-! ## A051462.P1453446825641035211

`∑[∑[A107750(2*n)]+1]`
-/

namespace A051462.P1453446825641035211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051462.P1453446825641035211

namespace A051462

/-- `∑[∑[A107750(2*n)]+1]` -/
def P1453446825641035211.Spec : Prop :=
  ∀ n, P1453446825641035211.a n = A051462 n

end A051462

/-! ## A051462.P7532667731340406722

`A053798(Δ[n²])/2`
-/

namespace A051462.P7532667731340406722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053798 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A051462.P7532667731340406722

namespace A051462

/-- `A053798(Δ[n²])/2` -/
def P7532667731340406722.Spec : Prop :=
  ∀ n, P7532667731340406722.a n = (A051462 n : ℚ)

end A051462

/-! ## A051462.P6888757349811224897

`∑[A040001(2*n)+A000212(2*n)]`
-/

namespace A051462.P6888757349811224897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) + A000212 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051462.P6888757349811224897

namespace A051462

/-- `∑[A040001(2*n)+A000212(2*n)]` -/
def P6888757349811224897.Spec : Prop :=
  ∀ n, P6888757349811224897.a n = A051462 n

end A051462

/-! ## A051462.P7612225698307174845

`A051528(4*n)`
-/

namespace A051462.P7612225698307174845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051528 (4 * n)

end

end A051462.P7612225698307174845

namespace A051462

/-- `A051528(4*n)` -/
def P7612225698307174845.Spec : Prop :=
  ∀ n, P7612225698307174845.a n = A051462 n

end A051462

/-! ## A051462.P6830247695190954902

`A092508(8*n)`
-/

namespace A051462.P6830247695190954902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092508 (8 * n)

end

end A051462.P6830247695190954902

namespace A051462

/-- `A092508(8*n)` -/
def P6830247695190954902.Spec : Prop :=
  ∀ n, P6830247695190954902.a n = A051462 n

end A051462

/-!
# A051463: Molien series for group G_{1,3}^{8} of order 4608.

The programs for A051463, there is no canonical definition to state claims against.
-/

/-! ## A051463.P3317996188339337503

`A051461(2*n)`
-/

namespace A051463.P3317996188339337503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051461 (2 * n)

end

end A051463.P3317996188339337503

/-! ## A051463.P4551684470590687902

`A051461(A004277(n))+A000007(n)`
-/

namespace A051463.P4551684470590687902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051461 (A004277 n).toNat + A000007 n

end

end A051463.P4551684470590687902

/-! ## A051463.P11030682796891527126

`or(A010052(n), A051461(A004277(n)))`
-/

namespace A051463.P11030682796891527126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 n) (A051461 (A004277 n).toNat)

end

end A051463.P11030682796891527126

/-! ## A051463.P15773319169608797022

`A051461(A004277(n))+and(1, A124859(n+1))`
-/

namespace A051463.P15773319169608797022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051461 (A004277 n).toNat + Int.land 1 (A124859 (n + 1))

end

end A051463.P15773319169608797022

/-! ## A051463.P17215090123430647008

`A051461(A004277(n))-A014165(A000040(n+1))`
-/

namespace A051463.P17215090123430647008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051461 (A004277 n).toNat - A014165 (A000040 (n + 1)).toNat

end

end A051463.P17215090123430647008

/-! ## A051463.P7582784542264753749

`A051461(A004277(n))+and(1, A085280(n))`
-/

namespace A051463.P7582784542264753749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051461 (A004277 n).toNat + Int.land 1 (A085280 n)

end

end A051463.P7582784542264753749

/-!
# A051464: Number of divisors of 4*(2^n-1) + 1.

The programs for A051464, there is no canonical definition to state claims against.
-/

/-! ## A051464.P11663881276816027096

`∏{e}[2^(n+3)-3, #+1]`
-/

namespace A051464.P11663881276816027096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A051464.P11663881276816027096

/-! ## A051464.P1639453043668497673

`∑{d}[∑[2^(n+2)]+1, #%2]`
-/

namespace A051464.P1639453043668497673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % 2

end

end A051464.P1639453043668497673

/-! ## A051464.P2893378767670664693

`∑{d}[∑[2^(n+2)]+1, and(1, #)]`
-/

namespace A051464.P2893378767670664693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d

end

end A051464.P2893378767670664693

/-! ## A051464.P1649100586404000341

`∑{d}[∑[2^(n+2)]+1, gcd(7, #)]`
-/

namespace A051464.P1649100586404000341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 7 d

end

end A051464.P1649100586404000341

/-! ## A051464.P15446820031429031252

`∑{d}[∑[2^(n+2)]+1, ceil(acot(#))]`
-/

namespace A051464.P15446820031429031252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A051464.P15446820031429031252

/-!
# A051465: Order of group G_{1,n}.

The programs for A051465, there is no canonical definition to state claims against.
-/

/-! ## A051465.P7695545873497542157

`A051483(n+1)*A237271(n+1)`
-/

namespace A051465.P7695545873497542157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051483 (n + 1) * A237271 (n + 1)

end

end A051465.P7695545873497542157

/-! ## A051465.P1199281255892917010

`A051527(n+1)/A052005(n+1)`
-/

namespace A051465.P1199281255892917010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051527 (n + 1) : ℚ) / (A052005 (n + 1) : ℚ)

end

end A051465.P1199281255892917010

/-!
# A051466: Largest product of primorials less than A025487(n) that divides A025487(n).

The programs for A051466, there is no canonical definition to state claims against.
-/

/-! ## A051466.P8220998981118277462

`A025487(n+2)/A020639(A181815(n+2))`
-/

namespace A051466.P8220998981118277462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 2) : ℚ) / (A020639 (A181815 (n + 2)).toNat : ℚ)

end

end A051466.P8220998981118277462

/-! ## A051466.P6180098751260428269

`A046523(A025487(n+2)/2)`
-/

namespace A051466.P6180098751260428269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A025487 (n + 2) : ℚ) / 2)).toNat

end

end A051466.P6180098751260428269

/-! ## A051466.P3053011498256249791

`A046523(record[A038572(A329899(n+1))])`
-/

namespace A051466.P3053011498256249791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A329899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051466.P3053011498256249791

/-! ## A051466.P1054985590019217500

`A046523(record[A273943(A329899(n+1))])`
-/

namespace A051466.P1054985590019217500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A329899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051466.P1054985590019217500

/-! ## A051466.P5378436870675657446

`A046523(record[A046523(n+2)/2])`
-/

namespace A051466.P5378436870675657446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A051466.P5378436870675657446

/-! ## A051466.P9675907323195134489

`A046523(record[A004525(A046523(n+1))])`
-/

namespace A051466.P9675907323195134489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A046523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051466.P9675907323195134489

/-! ## A051466.P15246955417457724732

`A046523(record[A026741(A046523(n+1))])`
-/

namespace A051466.P15246955417457724732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A046523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051466.P15246955417457724732

/-! ## A051466.P11702715595908022677

`A046523(record[A032742(A046523(n+1))])`
-/

namespace A051466.P11702715595908022677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051466.P11702715595908022677

/-!
# A051467: (Terms in A029640)/2.

The programs for A051467, the canonical program `A051467.P17492901673061742527` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051467 has offset 0).

The definition of A051467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051467.P17492901673061742527

`A029640(n+2)/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051467

/-- `A029640(n+2)/2` -/
def P17492901673061742527.Spec : Prop :=
  ∀ n, P17492901673061742527.a n = (A051467 n : ℚ)

end A051467

/-! ## A051467.P2206376995521855625

`a(n-1)*ratio[A029640(n+1)]` with `a(0)=1`
-/

namespace A051467.P2206376995521855625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029640 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A051467.P2206376995521855625

namespace A051467

/-- `a(n-1)*ratio[A029640(n+1)]` -/
def P2206376995521855625.Spec : Prop :=
  ∀ n, P2206376995521855625.a n = (A051467 n : ℚ)

end A051467

/-! ## A051467.P7770830805772506480

`2^A008683(A014692(n+1)+n)*A029640(n+2)`
-/

namespace A051467.P7770830805772506480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A014692 (n + 1) + (n : ℤ)).toNat : ℤ) * (A029640 (n + 2) : ℚ)

end

end A051467.P7770830805772506480

namespace A051467

/-- `2^A008683(A014692(n+1)+n)*A029640(n+2)` -/
def P7770830805772506480.Spec : Prop :=
  ∀ n, P7770830805772506480.a n = (A051467 n : ℚ)

end A051467

/-! ## A051467.P16055112224218191774

`A029635(lt[A290452(n), 1])/2`
-/

namespace A051467.P16055112224218191774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 2

end

end A051467.P16055112224218191774

namespace A051467

/-- `A029635(lt[A290452(n), 1])/2` -/
def P16055112224218191774.Spec : Prop :=
  ∀ n, P16055112224218191774.a n = (A051467 n : ℚ)

end A051467

/-! ## A051467.P17840045533511139862

`2^A008683(A038888(n+1))*A029640(n+2)`
-/

namespace A051467.P17840045533511139862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A038888 (n + 1)).toNat : ℤ) * (A029640 (n + 2) : ℚ)

end

end A051467.P17840045533511139862

namespace A051467

/-- `2^A008683(A038888(n+1))*A029640(n+2)` -/
def P17840045533511139862.Spec : Prop :=
  ∀ n, P17840045533511139862.a n = (A051467 n : ℚ)

end A051467

/-! ## A051467.P14930701777177136896

`2^A008683(A003629(n+1))*A029640(n+2)`
-/

namespace A051467.P14930701777177136896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) * (A029640 (n + 2) : ℚ)

end

end A051467.P14930701777177136896

namespace A051467

/-- `2^A008683(A003629(n+1))*A029640(n+2)` -/
def P14930701777177136896.Spec : Prop :=
  ∀ n, P14930701777177136896.a n = (A051467 n : ℚ)

end A051467

/-! ## A051467.P9167798659685619811

`2^A008683(A038873(n+1))*A029640(n+2)`
-/

namespace A051467.P9167798659685619811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A038873 (n + 1)).toNat : ℤ) * (A029640 (n + 2) : ℚ)

end

end A051467.P9167798659685619811

namespace A051467

/-- `2^A008683(A038873(n+1))*A029640(n+2)` -/
def P9167798659685619811.Spec : Prop :=
  ∀ n, P9167798659685619811.a n = (A051467 n : ℚ)

end A051467

/-! ## A051467.P17691633145872610169

`A014682(A029640(n+2))`
-/

namespace A051467.P17691633145872610169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029640 (n + 2)).toNat

end

end A051467.P17691633145872610169

namespace A051467

/-- `A014682(A029640(n+2))` -/
def P17691633145872610169.Spec : Prop :=
  ∀ n, P17691633145872610169.a n = A051467 n

end A051467

/-! ## A051467.P663269847799484809

`A004524(A029640(n+2)+1)`
-/

namespace A051467.P663269847799484809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A029640 (n + 2) + 1).toNat

end

end A051467.P663269847799484809

namespace A051467

/-- `A004524(A029640(n+2)+1)` -/
def P663269847799484809.Spec : Prop :=
  ∀ n, P663269847799484809.a n = A051467 n

end A051467

/-! ## A051467.P6154769944962544178

`A004526(A029640(n+2)+1)`
-/

namespace A051467.P6154769944962544178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A029640 (n + 2) + 1).toNat

end

end A051467.P6154769944962544178

namespace A051467

/-- `A004526(A029640(n+2)+1)` -/
def P6154769944962544178.Spec : Prop :=
  ∀ n, P6154769944962544178.a n = A051467 n

end A051467

/-!
# A051468: (Terms in A029641)/2.

The programs for A051468, the canonical program `A051468.P6533800774819959610` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051468 has offset 0).

The definition of A051468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051468.P15020820740226654170

`A029641(n)/2`
-/

namespace A051468.P15020820740226654170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029641 n : ℚ) / 2

end

end A051468.P15020820740226654170

namespace A051468

/-- `A029641(n)/2` -/
def P15020820740226654170.Spec : Prop :=
  ∀ n, P15020820740226654170.a n = (A051468 n : ℚ)

end A051468

/-! ## A051468.P7236889193839099527

`A051456(n)-sqrt(A014727(n))`
-/

namespace A051468.P7236889193839099527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051456 n : ℝ) - Real.sqrt (A014727 n : ℝ)

end

end A051468.P7236889193839099527

namespace A051468

/-- `A051456(n)-sqrt(A014727(n))` -/
def P7236889193839099527.Spec : Prop :=
  ∀ n, P7236889193839099527.a n = (A051468 n : ℝ)

end A051468

/-! ## A051468.P6533800774819959610

`A051456(n)-A014428(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A051468

/-- `A051456(n)-A014428(n+1)` -/
def P6533800774819959610.Spec : Prop :=
  ∀ n, P6533800774819959610.a n = A051468 n

theorem P6533800774819959610.correct : P6533800774819959610.Spec := by
  intro n
  simp only [A051468]

end A051468

/-! ## A051468.P4217816614110815763

`A051429(n)+A051456(n)-A051434(n)`
-/

namespace A051468.P4217816614110815763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n + (A051456 n - A051434 n)

end

end A051468.P4217816614110815763

namespace A051468

/-- `A051429(n)+A051456(n)-A051434(n)` -/
def P4217816614110815763.Spec : Prop :=
  ∀ n, P4217816614110815763.a n = A051468 n

theorem P4217816614110815763.correct : P4217816614110815763.Spec := by
  intro n
  simp only [A051468, Nat.add_sub_cancel, A051468.P4217816614110815763.a, A051468.P6533800774819959610.a, A014428, A014428.P4888485289418456815.a, A051429, A051429.P11525553807131597753.a, A051434, A051434.P18205378062709367027.a, A051456, A051456.P8737044778690682288.a, A007318, A007318.P11755526479805562006.a, A029625, A029625.P8414473659430485930.f1, A029625.P8414473659430485930.f2, A029625.P8414473659430485930.a, A029659, A029659.P14042741699956388996.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, A000217, A000217.P10269402890581615239.a, A029607, A029607.P1574991405031157313.f1, A029607.P1574991405031157313.f2, A029607.P1574991405031157313.a, A029623, A029623.P11351172865891342749.f1, A029623.P11351172865891342749.f2, A029623.P11351172865891342749.a, A080098, A080098.P7543541268193481793.a, A002262, A002262.P17823619022233514403.a, A003056, A003056.P5318256527314048597.a, A029605, A029605.P7080579544809329854.f1, A029605.P7080579544809329854.f2, A029605.P7080579544809329854.a, A029618, A029618.P10489059941068420010.a, A290452, A290452.P1449433213042397141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051468

/-! ## A051468.P5276825105544171387

`A051467(lt[1, A051455(n)])`
-/

namespace A051468.P5276825105544171387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A051468.P5276825105544171387

namespace A051468

/-- `A051467(lt[1, A051455(n)])` -/
def P5276825105544171387.Spec : Prop :=
  ∀ n, P5276825105544171387.a n = A051468 n

end A051468

/-! ## A051468.P14676711929908166892

`A051467(lt[1, A051467(n)])`
-/

namespace A051468.P14676711929908166892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A051468.P14676711929908166892

namespace A051468

/-- `A051467(lt[1, A051467(n)])` -/
def P14676711929908166892.Spec : Prop :=
  ∀ n, P14676711929908166892.a n = A051468 n

end A051468

/-! ## A051468.P3237036213059320784

`A029637(A268232(n+1)+1)/2`
-/

namespace A051468.P3237036213059320784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029637 (A268232 (n + 1) + 1).toNat : ℚ) / 2

end

end A051468.P3237036213059320784

namespace A051468

/-- `A029637(A268232(n+1)+1)/2` -/
def P3237036213059320784.Spec : Prop :=
  ∀ n, P3237036213059320784.a n = (A051468 n : ℚ)

end A051468

/-! ## A051468.P15199407457428820058

`A029638(A268232(n+1)+1)/2`
-/

namespace A051468.P15199407457428820058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029638 (A268232 (n + 1) + 1).toNat : ℚ) / 2

end

end A051468.P15199407457428820058

namespace A051468

/-- `A029638(A268232(n+1)+1)/2` -/
def P15199407457428820058.Spec : Prop :=
  ∀ n, P15199407457428820058.a n = (A051468 n : ℚ)

end A051468

/-! ## A051468.P9480309108949149346

`A051597(A268232(n+1))-A051429(n)`
-/

namespace A051468.P9480309108949149346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 (A268232 (n + 1)).toNat - A051429 n

end

end A051468.P9480309108949149346

namespace A051468

/-- `A051597(A268232(n+1))-A051429(n)` -/
def P9480309108949149346.Spec : Prop :=
  ∀ n, P9480309108949149346.a n = A051468 n

end A051468

/-!
# A051469: (Terms in A029643)/2.

The programs for A051469, there is no canonical definition to state claims against.
-/

/-! ## A051469.P13335967107675803436

`A029643(n)/2`
-/

namespace A051469.P13335967107675803436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029643 n : ℚ) / 2

end

end A051469.P13335967107675803436

/-! ## A051469.P2177882181966826460

`sinh(log(ϕ))*A029643(A254667(n))`
-/

namespace A051469.P2177882181966826460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (Real.log Real.goldenRatio) * (A029643 (A254667 n).toNat : ℝ)

end

end A051469.P2177882181966826460

/-! ## A051469.P5204372461352196161

`A014682(A029643(n))`
-/

namespace A051469.P5204372461352196161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029643 n).toNat

end

end A051469.P5204372461352196161

/-! ## A051469.P15488706869187207881

`A273943(lcm(2, A029643(n)))`
-/

namespace A051469.P15488706869187207881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A029643 n))

end

end A051469.P15488706869187207881

/-! ## A051469.P14969915060352602124

`A273943(A029643(n)-char[1])`
-/

namespace A051469.P14969915060352602124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A029643 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A051469.P14969915060352602124

/-! ## A051469.P4144142046092675670

`A273943(A029643(n)%A146945(n+1))`
-/

namespace A051469.P4144142046092675670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A029643 n) (A146945 (n + 1))).toNat

end

end A051469.P4144142046092675670

/-!
# A051471: (Terms in A029647)/2.

The programs for A051471, the canonical program `A051471.P4968011604832206761` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051471 has offset 0).

The definition of A051471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051471.P4968011604832206761

`A029647(n)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051471

/-- `A029647(n)/2` -/
def P4968011604832206761.Spec : Prop :=
  ∀ n, P4968011604832206761.a n = (A051471 n : ℚ)

end A051471

/-! ## A051471.P4619777543159963461

`A051468(lt[A051468(n), A051429(n)+1])`
-/

namespace A051471.P4619777543159963461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051471.P4619777543159963461

namespace A051471

/-- `A051468(lt[A051468(n), A051429(n)+1])` -/
def P4619777543159963461.Spec : Prop :=
  ∀ n, P4619777543159963461.a n = A051471 n

end A051471

/-! ## A051471.P7187815526722604306

`A051468(lt[A051468(n)-1, A051429(n)])`
-/

namespace A051471.P7187815526722604306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051471.P7187815526722604306

namespace A051471

/-- `A051468(lt[A051468(n)-1, A051429(n)])` -/
def P7187815526722604306.Spec : Prop :=
  ∀ n, P7187815526722604306.a n = A051471 n

end A051471

/-! ## A051471.P14448045895475158884

`A051467(lt[A051433(n), A051455(n)])`
-/

namespace A051471.P14448045895475158884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051467 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051471.P14448045895475158884

namespace A051471

/-- `A051467(lt[A051433(n), A051455(n)])` -/
def P14448045895475158884.Spec : Prop :=
  ∀ n, P14448045895475158884.a n = A051471 n

end A051471

/-! ## A051471.P5082538023688084495

`A051467(lt[A051433(n), A051433(n+1)])`
-/

namespace A051471.P5082538023688084495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051467 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051471.P5082538023688084495

namespace A051471

/-- `A051467(lt[A051433(n), A051433(n+1)])` -/
def P5082538023688084495.Spec : Prop :=
  ∀ n, P5082538023688084495.a n = A051471 n

end A051471

/-! ## A051471.P16744422177270008377

`2^A008683(A080359(n+1))*A029647(n)`
-/

namespace A051471.P16744422177270008377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A080359 (n + 1)).toNat : ℤ) * (A029647 n : ℚ)

end

end A051471.P16744422177270008377

namespace A051471

/-- `2^A008683(A080359(n+1))*A029647(n)` -/
def P16744422177270008377.Spec : Prop :=
  ∀ n, P16744422177270008377.a n = (A051471 n : ℚ)

end A051471

/-! ## A051471.P1539001354320251486

`A014682(A029647(n))`
-/

namespace A051471.P1539001354320251486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029647 n).toNat

end

end A051471.P1539001354320251486

namespace A051471

/-- `A014682(A029647(n))` -/
def P1539001354320251486.Spec : Prop :=
  ∀ n, P1539001354320251486.a n = A051471 n

end A051471

/-!
# A051472: a(n) = A028317(n)/2.

The programs for A051472, the canonical program `A051472.P14650939250664835705` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051472 has offset 0).

The definition of A051472 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028317, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051472.P14650939250664835705

`A028317(n)/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051472

/-- `A028317(n)/2` -/
def P14650939250664835705.Spec : Prop :=
  ∀ n, P14650939250664835705.a n = (A051472 n : ℚ)

end A051472

/-! ## A051472.P9753610873808412476

`log2(sqrt(2))*A028317(A028310(n))`
-/

namespace A051472.P9753610873808412476
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A028317 (A028310 n).toNat : ℝ)

end

end A051472.P9753610873808412476

namespace A051472

/-- `log2(sqrt(2))*A028317(A028310(n))` -/
def P9753610873808412476.Spec : Prop :=
  ∀ n, P9753610873808412476.a n = (A051472 n : ℝ)

end A051472

/-! ## A051472.P526196268303843629

`2^A008683(A002146(∏{e}[n, #]))*A028317(n)`
-/

namespace A051472.P526196268303843629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002146 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat : ℤ) * (A028317 n : ℚ)

end

end A051472.P526196268303843629

namespace A051472

/-- `2^A008683(A002146(∏{e}[n, #]))*A028317(n)` -/
def P526196268303843629.Spec : Prop :=
  ∀ n, P526196268303843629.a n = (A051472 n : ℚ)

end A051472

/-! ## A051472.P5472563922960339543

`2^A008683(A002146(C(2, n+2)))*A028317(n)`
-/

namespace A051472.P5472563922960339543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002146 (Nat.choose 2 (n + 2))).toNat : ℤ) * (A028317 n : ℚ)

end

end A051472.P5472563922960339543

namespace A051472

/-- `2^A008683(A002146(C(2, n+2)))*A028317(n)` -/
def P5472563922960339543.Spec : Prop :=
  ∀ n, P5472563922960339543.a n = (A051472 n : ℚ)

end A051472

/-! ## A051472.P15664868583497930089

`A028314(eq[2, gcd(2, A028314(n))])/2`
-/

namespace A051472.P15664868583497930089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A028314 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028314 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A051472.P15664868583497930089

namespace A051472

/-- `A028314(eq[2, gcd(2, A028314(n))])/2` -/
def P15664868583497930089.Spec : Prop :=
  ∀ n, P15664868583497930089.a n = (A051472 n : ℚ)

end A051472

/-! ## A051472.P4676749451227700447

`2^A008683(A002146(n))*A028317(n)`
-/

namespace A051472.P4676749451227700447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002146 n).toNat : ℤ) * (A028317 n : ℚ)

end

end A051472.P4676749451227700447

namespace A051472

/-- `2^A008683(A002146(n))*A028317(n)` -/
def P4676749451227700447.Spec : Prop :=
  ∀ n, P4676749451227700447.a n = (A051472 n : ℚ)

end A051472

/-! ## A051472.P18298832152879223583

`A014682(A028317(n))`
-/

namespace A051472.P18298832152879223583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028317 n).toNat

end

end A051472.P18298832152879223583

namespace A051472

/-- `A014682(A028317(n))` -/
def P18298832152879223583.Spec : Prop :=
  ∀ n, P18298832152879223583.a n = A051472 n

end A051472

/-! ## A051472.P6659231792881372155

`A319702(A028317(n)-3)`
-/

namespace A051472.P6659231792881372155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A028317 n - 3).toNat

end

end A051472.P6659231792881372155

namespace A051472

/-- `A319702(A028317(n)-3)` -/
def P6659231792881372155.Spec : Prop :=
  ∀ n, P6659231792881372155.a n = A051472 n

end A051472

/-! ## A051472.P14616018948124340581

`A273943(lcm(2, A028317(n)))`
-/

namespace A051472.P14616018948124340581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A028317 n))

end

end A051472.P14616018948124340581

namespace A051472

/-- `A273943(lcm(2, A028317(n)))` -/
def P14616018948124340581.Spec : Prop :=
  ∀ n, P14616018948124340581.a n = A051472 n

end A051472

/-! ## A051472.P1765887536356633841

`A273943(A028317(n)%A001034(n+1))`
-/

namespace A051472.P1765887536356633841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A028317 n) (A001034 (n + 1))).toNat

end

end A051472.P1765887536356633841

namespace A051472

/-- `A273943(A028317(n)%A001034(n+1))` -/
def P1765887536356633841.Spec : Prop :=
  ∀ n, P1765887536356633841.a n = A051472 n

end A051472

/-!
# A051473: a(n) = A028321(n)/2.

The programs for A051473, there is no canonical definition to state claims against.
-/

/-! ## A051473.P13489932791563104909

`A028321(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051473.P13489932791563104909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028321 n : ℚ) / 2

end

end A051473.P13489932791563104909

/-! ## A051473.P1854435439853010090

`A014682(A028321(n))`
-/

namespace A051473.P1854435439853010090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028321 n).toNat

end

end A051473.P1854435439853010090

/-! ## A051473.P8833499173784338659

`A273943(lcm(2, A028321(n)))`
-/

namespace A051473.P8833499173784338659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A028321 n))

end

end A051473.P8833499173784338659

/-!
# A051474: (Terms in A014450)/2.

The programs for A051474, the canonical program `A051474.P5764131462460255452` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051474 has offset 0).

The definition of A051474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1752 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051474.P5764131462460255452

`A014450(n+1)/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051474

/-- `A014450(n+1)/2` -/
def P5764131462460255452.Spec : Prop :=
  ∀ n, P5764131462460255452.a n = (A051474 n : ℚ)

end A051474

/-! ## A051474.P5872342112778496369

`A008292(A268232(n+1)+1)/2`
-/

namespace A051474.P5872342112778496369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (A268232 (n + 1) + 1).toNat : ℚ) / 2

end

end A051474.P5872342112778496369

namespace A051474

/-- `A008292(A268232(n+1)+1)/2` -/
def P5872342112778496369.Spec : Prop :=
  ∀ n, P5872342112778496369.a n = (A051474 n : ℚ)

end A051474

/-! ## A051474.P14253705115622292066

`sqrt(A051476(n))`
-/

namespace A051474.P14253705115622292066
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A051476 n : ℝ)

end

end A051474.P14253705115622292066

namespace A051474

/-- `sqrt(A051476(n))` -/
def P14253705115622292066.Spec : Prop :=
  ∀ n, P14253705115622292066.a n = (A051474 n : ℝ)

end A051474

/-! ## A051474.P7480791149363514039

`root(A051476(n), A020639(2*(n+1)))`
-/

namespace A051474.P7480791149363514039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051476 n : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A051474.P7480791149363514039

namespace A051474

/-- `root(A051476(n), A020639(2*(n+1)))` -/
def P7480791149363514039.Spec : Prop :=
  ∀ n, P7480791149363514039.a n = (A051474 n : ℝ)

end A051474

/-! ## A051474.P16859848541321821003

`A051476(n)^2^A008683(A006450(n+1))`
-/

namespace A051474.P16859848541321821003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051476 n : ℝ) ^ ((2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) : ℝ)

end

end A051474.P16859848541321821003

namespace A051474

/-- `A051476(n)^2^A008683(A006450(n+1))` -/
def P16859848541321821003.Spec : Prop :=
  ∀ n, P16859848541321821003.a n = (A051474 n : ℝ)

end A051474

/-! ## A051474.P5975470508910033304

`sqrt(A014733(n+1))/2`
-/

namespace A051474.P5975470508910033304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014733 (n + 1) : ℝ) / 2

end

end A051474.P5975470508910033304

namespace A051474

/-- `sqrt(A014733(n+1))/2` -/
def P5975470508910033304.Spec : Prop :=
  ∀ n, P5975470508910033304.a n = (A051474 n : ℝ)

end A051474

/-!
# A051475: (Terms in A014472)/2.

The programs for A051475, the canonical program `A051475.P10337259349040715997` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051475 has offset 0).

The definition of A051475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051475.P15210077257883631112

`A014472(n+1)/2`
-/

namespace A051475.P15210077257883631112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014472 (n + 1) : ℚ) / 2

end

end A051475.P15210077257883631112

namespace A051475

/-- `A014472(n+1)/2` -/
def P15210077257883631112.Spec : Prop :=
  ∀ n, P15210077257883631112.a n = (A051475 n : ℚ)

theorem P15210077257883631112.correct : P15210077257883631112.Spec := by
  intro n
  simp only [A051475, Nat.add_sub_cancel, A051475.P15210077257883631112.a, A051475.P10337259349040715997.f1, A051475.P10337259349040715997.f2, A051475.P10337259349040715997.a, A014472, A014472.P11729786078185913259.a, A051429, A051429.P11525553807131597753.a, A051468, A051468.P6533800774819959610.a, A051474, A051474.P5764131462460255452.a, A014428, A014428.P4888485289418456815.a, A014450, A014450.P15670654426273546976.f1, A014450.P15670654426273546976.f2, A014450.P15670654426273546976.a, A029659, A029659.P14042741699956388996.a, A051456, A051456.P8737044778690682288.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A029607, A029607.P1574991405031157313.f1, A029607.P1574991405031157313.f2, A029607.P1574991405031157313.a, A029625, A029625.P8414473659430485930.f1, A029625.P8414473659430485930.f2, A029625.P8414473659430485930.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, A000217, A000217.P10269402890581615239.a, A029605, A029605.P7080579544809329854.f1, A029605.P7080579544809329854.f2, A029605.P7080579544809329854.a, A029623, A029623.P11351172865891342749.f1, A029623.P11351172865891342749.f2, A029623.P11351172865891342749.a, A080098, A080098.P7543541268193481793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051475

/-! ## A051475.P15880891941045069018

`(1-1/2)*A014472(A028242(2*n))`
-/

namespace A051475.P15880891941045069018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (1 : ℚ) / 2) * (A014472 (A028242 (2 * n)).toNat : ℚ)

end

end A051475.P15880891941045069018

namespace A051475

/-- `(1-1/2)*A014472(A028242(2*n))` -/
def P15880891941045069018.Spec : Prop :=
  ∀ n, P15880891941045069018.a n = (A051475 n : ℚ)

end A051475

/-! ## A051475.P10337259349040715997

`A051474(lt[A051429(n), A051468(n)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A051475

/-- `A051474(lt[A051429(n), A051468(n)])` -/
def P10337259349040715997.Spec : Prop :=
  ∀ n, P10337259349040715997.a n = A051475 n

theorem P10337259349040715997.correct : P10337259349040715997.Spec := by
  intro n
  simp only [A051475]

end A051475

/-! ## A051475.P15462597854751233302

`A051474(lt[A051434(n), A051456(n)])`
-/

namespace A051475.P15462597854751233302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051474 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051475.P15462597854751233302

namespace A051475

/-- `A051474(lt[A051434(n), A051456(n)])` -/
def P15462597854751233302.Spec : Prop :=
  ∀ n, P15462597854751233302.a n = A051475 n

end A051475

/-! ## A051475.P13327226144265077603

`2^A008683(A003629(n+1))*A014472(n+1)`
-/

namespace A051475.P13327226144265077603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) * (A014472 (n + 1) : ℚ)

end

end A051475.P13327226144265077603

namespace A051475

/-- `2^A008683(A003629(n+1))*A014472(n+1)` -/
def P13327226144265077603.Spec : Prop :=
  ∀ n, P13327226144265077603.a n = (A051475 n : ℚ)

end A051475

/-! ## A051475.P15270501446281719361

`sqrt(A051477(n))`
-/

namespace A051475.P15270501446281719361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A051477 n : ℝ)

end

end A051475.P15270501446281719361

namespace A051475

/-- `sqrt(A051477(n))` -/
def P15270501446281719361.Spec : Prop :=
  ∀ n, P15270501446281719361.a n = (A051475 n : ℝ)

end A051475

/-! ## A051475.P17073972570597492901

`sqrt(A014759(n+1))/2`
-/

namespace A051475.P17073972570597492901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014759 (n + 1) : ℝ) / 2

end

end A051475.P17073972570597492901

namespace A051475

/-- `sqrt(A014759(n+1))/2` -/
def P17073972570597492901.Spec : Prop :=
  ∀ n, P17073972570597492901.a n = (A051475 n : ℝ)

end A051475

/-!
# A051476: (Terms in A014733)/4.

The programs for A051476, the canonical program `A051476.P259747214792868749` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051476 has offset 0).

The definition of A051476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051476.P259747214792868749

`A051474(n)²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051476

/-- `A051474(n)²` -/
def P259747214792868749.Spec : Prop :=
  ∀ n, P259747214792868749.a n = A051476 n

theorem P259747214792868749.correct : P259747214792868749.Spec := by
  intro n
  simp only [A051476]

end A051476

/-! ## A051476.P3123927035450887326

`(A014450(n+1)/2)²`
-/

namespace A051476.P3123927035450887326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014450 (n + 1) : ℚ) / 2) ^ 2

end

end A051476.P3123927035450887326

namespace A051476

/-- `(A014450(n+1)/2)²` -/
def P3123927035450887326.Spec : Prop :=
  ∀ n, P3123927035450887326.a n = (A051476 n : ℚ)

end A051476

/-! ## A051476.P12343409167907676985

`A051474(n)^A020639(A005879(n))`
-/

namespace A051476.P12343409167907676985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051474 n : ℚ) ^ (A020639 (A005879 n).toNat : ℤ)

end

end A051476.P12343409167907676985

namespace A051476

/-- `A051474(n)^A020639(A005879(n))` -/
def P12343409167907676985.Spec : Prop :=
  ∀ n, P12343409167907676985.a n = (A051476 n : ℚ)

end A051476

/-! ## A051476.P10454675585481510443

`A051474(n)^A020639(A051464(n+1))`
-/

namespace A051476.P10454675585481510443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051474 n : ℚ) ^ (A020639 (A051464 (n + 1)).toNat : ℤ)

end

end A051476.P10454675585481510443

namespace A051476

/-- `A051474(n)^A020639(A051464(n+1))` -/
def P10454675585481510443.Spec : Prop :=
  ∀ n, P10454675585481510443.a n = (A051476 n : ℚ)

end A051476

/-! ## A051476.P7890704209659805788

`A014733(n+1)/4`
-/

namespace A051476.P7890704209659805788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014733 (n + 1) : ℚ) / 4

end

end A051476.P7890704209659805788

namespace A051476

/-- `A014733(n+1)/4` -/
def P7890704209659805788.Spec : Prop :=
  ∀ n, P7890704209659805788.a n = (A051476 n : ℚ)

end A051476

/-! ## A051476.P10842162271042389186

`A051474(n)^A020639(A051487(n+1))`
-/

namespace A051476.P10842162271042389186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051474 n : ℚ) ^ (A020639 (A051487 (n + 1)).toNat : ℤ)

end

end A051476.P10842162271042389186

namespace A051476

/-- `A051474(n)^A020639(A051487(n+1))` -/
def P10842162271042389186.Spec : Prop :=
  ∀ n, P10842162271042389186.a n = (A051476 n : ℚ)

end A051476

/-! ## A051476.P2986665298194998026

`A051474(n)^A020639(A051466(2*(n+3)))`
-/

namespace A051476.P2986665298194998026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051474 n : ℚ) ^ (A020639 (A051466 (2 * (n + 3))).toNat : ℤ)

end

end A051476.P2986665298194998026

namespace A051476

/-- `A051474(n)^A020639(A051466(2*(n+3)))` -/
def P2986665298194998026.Spec : Prop :=
  ∀ n, P2986665298194998026.a n = (A051476 n : ℚ)

end A051476

/-! ## A051476.P881554268624445571

`A051474(n)^A020639(A001545(n))`
-/

namespace A051476.P881554268624445571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051474 n : ℚ) ^ (A020639 (A001545 n).toNat : ℤ)

end

end A051476.P881554268624445571

namespace A051476

/-- `A051474(n)^A020639(A001545(n))` -/
def P881554268624445571.Spec : Prop :=
  ∀ n, P881554268624445571.a n = (A051476 n : ℚ)

end A051476

/-!
# A051477: (Terms in A014759)/4.

The programs for A051477, the canonical program `A051477.P854642623806885749` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051477 has offset 0).

The definition of A051477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051477.P854642623806885749

`A051475(n)²`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A051477

/-- `A051475(n)²` -/
def P854642623806885749.Spec : Prop :=
  ∀ n, P854642623806885749.a n = A051477 n

theorem P854642623806885749.correct : P854642623806885749.Spec := by
  intro n
  simp only [A051477]

end A051477

/-! ## A051477.P3142098018150271940

`A014759(n+1)/4`
-/

namespace A051477.P3142098018150271940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014759 (n + 1) : ℚ) / 4

end

end A051477.P3142098018150271940

namespace A051477

/-- `A014759(n+1)/4` -/
def P3142098018150271940.Spec : Prop :=
  ∀ n, P3142098018150271940.a n = (A051477 n : ℚ)

theorem P3142098018150271940.correct : P3142098018150271940.Spec := by
  intro n
  simp only [A051477, Nat.add_sub_cancel, A051477.P3142098018150271940.a, A051477.P854642623806885749.a, A014759, A014759.P13884157367853310932.a, A051475, A051475.P10337259349040715997.f1, A051475.P10337259349040715997.f2, A051475.P10337259349040715997.a, A014472, A014472.P11729786078185913259.a, A051429, A051429.P11525553807131597753.a, A051468, A051468.P6533800774819959610.a, A051474, A051474.P5764131462460255452.a, A014428, A014428.P4888485289418456815.a, A014450, A014450.P15670654426273546976.f1, A014450.P15670654426273546976.f2, A014450.P15670654426273546976.a, A029659, A029659.P14042741699956388996.a, A051456, A051456.P8737044778690682288.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A029607, A029607.P1574991405031157313.f1, A029607.P1574991405031157313.f2, A029607.P1574991405031157313.a, A029625, A029625.P8414473659430485930.f1, A029625.P8414473659430485930.f2, A029625.P8414473659430485930.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051477

/-! ## A051477.P3156761916276787456

`(A014472(n+1)/2)²`
-/

namespace A051477.P3156761916276787456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014472 (n + 1) : ℚ) / 2) ^ 2

end

end A051477.P3156761916276787456

namespace A051477

/-- `(A014472(n+1)/2)²` -/
def P3156761916276787456.Spec : Prop :=
  ∀ n, P3156761916276787456.a n = (A051477 n : ℚ)

theorem P3156761916276787456.correct : P3156761916276787456.Spec := by
  intro n
  simp only [A051477, Nat.add_sub_cancel, A051477.P3156761916276787456.a, A051477.P854642623806885749.a, A014472, A014472.P11729786078185913259.a, A051475, A051475.P10337259349040715997.f1, A051475.P10337259349040715997.f2, A051475.P10337259349040715997.a, A051429, A051429.P11525553807131597753.a, A051468, A051468.P6533800774819959610.a, A051474, A051474.P5764131462460255452.a, A014428, A014428.P4888485289418456815.a, A014450, A014450.P15670654426273546976.f1, A014450.P15670654426273546976.f2, A014450.P15670654426273546976.a, A029659, A029659.P14042741699956388996.a, A051456, A051456.P8737044778690682288.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A029607, A029607.P1574991405031157313.f1, A029607.P1574991405031157313.f2, A029607.P1574991405031157313.a, A029625, A029625.P8414473659430485930.f1, A029625.P8414473659430485930.f2, A029625.P8414473659430485930.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051477

/-! ## A051477.P7966918961547047730

`A051475(n)^A020639(A016825(n))`
-/

namespace A051477.P7966918961547047730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051475 n : ℚ) ^ (A020639 (A016825 n).toNat : ℤ)

end

end A051477.P7966918961547047730

namespace A051477

/-- `A051475(n)^A020639(A016825(n))` -/
def P7966918961547047730.Spec : Prop :=
  ∀ n, P7966918961547047730.a n = (A051477 n : ℚ)

end A051477

/-! ## A051477.P13414572707186100491

`A051475(n)^A020639(A017137(n))`
-/

namespace A051477.P13414572707186100491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051475 n : ℚ) ^ (A020639 (A017137 n).toNat : ℤ)

end

end A051477.P13414572707186100491

namespace A051477

/-- `A051475(n)^A020639(A017137(n))` -/
def P13414572707186100491.Spec : Prop :=
  ∀ n, P13414572707186100491.a n = (A051477 n : ℚ)

end A051477

/-! ## A051477.P12397271580364453043

`A051475(n)^A020639(A017365(n))`
-/

namespace A051477.P12397271580364453043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051475 n : ℚ) ^ (A020639 (A017365 n).toNat : ℤ)

end

end A051477.P12397271580364453043

namespace A051477

/-- `A051475(n)^A020639(A017365(n))` -/
def P12397271580364453043.Spec : Prop :=
  ∀ n, P12397271580364453043.a n = (A051477 n : ℚ)

end A051477

/-! ## A051477.P4230768910415101461

`A051476(lt[A051429(n), A051468(n)])`
-/

namespace A051477.P4230768910415101461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051477.P4230768910415101461

namespace A051477

/-- `A051476(lt[A051429(n), A051468(n)])` -/
def P4230768910415101461.Spec : Prop :=
  ∀ n, P4230768910415101461.a n = A051477 n

end A051477

/-! ## A051477.P16031234373365567934

`A051476(lt[A051434(n), A051456(n)])`
-/

namespace A051477.P16031234373365567934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051477.P16031234373365567934

namespace A051477

/-- `A051476(lt[A051434(n), A051456(n)])` -/
def P16031234373365567934.Spec : Prop :=
  ∀ n, P16031234373365567934.a n = A051477 n

end A051477

/-! ## A051477.P1964380093167223359

`A051474(lt[A051429(n), A051468(n)])²`
-/

namespace A051477.P1964380093167223359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051474 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) ^ 2

end

end A051477.P1964380093167223359

namespace A051477

/-- `A051474(lt[A051429(n), A051468(n)])²` -/
def P1964380093167223359.Spec : Prop :=
  ∀ n, P1964380093167223359.a n = A051477 n

end A051477

/-! ## A051477.P9988808307862091882

`A051474(lt[A051434(n), A051456(n)])²`
-/

namespace A051477.P9988808307862091882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051474 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) ^ 2

end

end A051477.P9988808307862091882

namespace A051477

/-- `A051474(lt[A051434(n), A051456(n)])²` -/
def P9988808307862091882.Spec : Prop :=
  ∀ n, P9988808307862091882.a n = A051477 n

end A051477

/-! ## A051477.P8946223210087618097

`A051475(A023443(n+1))*A051475(n)`
-/

namespace A051477.P8946223210087618097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051475 (A023443 (n + 1)).toNat * A051475 n

end

end A051477.P8946223210087618097

namespace A051477

/-- `A051475(A023443(n+1))*A051475(n)` -/
def P8946223210087618097.Spec : Prop :=
  ∀ n, P8946223210087618097.a n = A051477 n

end A051477

/-! ## A051477.P15209647237881564235

`A051475(n)^A020639(A051464(n+1))`
-/

namespace A051477.P15209647237881564235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051475 n : ℚ) ^ (A020639 (A051464 (n + 1)).toNat : ℤ)

end

end A051477.P15209647237881564235

namespace A051477

/-- `A051475(n)^A020639(A051464(n+1))` -/
def P15209647237881564235.Spec : Prop :=
  ∀ n, P15209647237881564235.a n = (A051477 n : ℚ)

end A051477

/-! ## A051477.P5099050392663295922

`A051475(A004524(2*n+1))*A051475(n)`
-/

namespace A051477.P5099050392663295922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051475 (A004524 (2 * n + 1)).toNat * A051475 n

end

end A051477.P5099050392663295922

namespace A051477

/-- `A051475(A004524(2*n+1))*A051475(n)` -/
def P5099050392663295922.Spec : Prop :=
  ∀ n, P5099050392663295922.a n = A051477 n

end A051477

/-! ## A051477.P6335105714356156844

`A051475(n)^A020639(A051488(n+1))`
-/

namespace A051477.P6335105714356156844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051475 n : ℚ) ^ (A020639 (A051488 (n + 1)).toNat : ℤ)

end

end A051477.P6335105714356156844

namespace A051477

/-- `A051475(n)^A020639(A051488(n+1))` -/
def P6335105714356156844.Spec : Prop :=
  ∀ n, P6335105714356156844.a n = (A051477 n : ℚ)

end A051477

/-! ## A051477.P4092099437356066847

`A051475(n)^A020639(A051487(n+1))`
-/

namespace A051477.P4092099437356066847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051475 n : ℚ) ^ (A020639 (A051487 (n + 1)).toNat : ℤ)

end

end A051477.P4092099437356066847

namespace A051477

/-- `A051475(n)^A020639(A051487(n+1))` -/
def P4092099437356066847.Spec : Prop :=
  ∀ n, P4092099437356066847.a n = (A051477 n : ℚ)

end A051477

/-!
# A051478: a(n) is the number of values k satisfying phi(k) = 4*n+2, n>0.

The programs for A051478, there is no canonical definition to state claims against.
-/

/-! ## A051478.P17748805664715680262

`A280712(4*n+6)`
-/

namespace A051478.P17748805664715680262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280712 (4 * n + 6)

end

end A051478.P17748805664715680262

/-! ## A051478.P17136573924022237301

`A032446(2*n+3)`
-/

namespace A051478.P17136573924022237301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (2 * n + 3)

end

end A051478.P17136573924022237301

/-! ## A051478.P18015900566887417563

`dr(A032446(A144396(n+1)))`
-/

namespace A051478.P18015900566887417563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A032446 (A144396 (n + 1)).toNat)

end

end A051478.P18015900566887417563

/-! ## A051478.P5963789630453361952

`dr(A032446(A163985(n+2)))`
-/

namespace A051478.P5963789630453361952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A032446 (A163985 (n + 2)).toNat)

end

end A051478.P5963789630453361952

/-! ## A051478.P9404165722436395903

`A179042(A032446(Δ[(n+1)²]))`
-/

namespace A051478.P9404165722436395903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179042 (A032446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A051478.P9404165722436395903

/-! ## A051478.P6039506865576421740

`A014197(4*n+6)`
-/

namespace A051478.P6039506865576421740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (4 * n + 6)

end

end A051478.P6039506865576421740

/-! ## A051478.P17147058639957158233

`dr(A032446(record[A099375(n)+2]))`
-/

namespace A051478.P17147058639957158233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A032446 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A051478.P17147058639957158233

/-!
# A051479: Values of i such that phi(x) = 4i+2 has 4 solutions.

The programs for A051479, there is no canonical definition to state claims against.
-/

/-! ## A051479.P12417132343481863963

`floor(A334839(n+1)/4)`
-/

namespace A051479.P12417132343481863963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334839 (n + 1) : ℚ) / 4⌋

end

end A051479.P12417132343481863963

/-! ## A051479.P16732759961307637082

`eq[4, A051478(n+1)]+1`
-/

namespace A051479.P16732759961307637082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051479.P16732759961307637082

/-! ## A051479.P7299823099662745731

`A249122(A334839(n+1)/2)`
-/

namespace A051479.P7299823099662745731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (SequenceMachineLib.roundAway ((A334839 (n + 1) : ℚ) / 2)).toNat

end

end A051479.P7299823099662745731

/-! ## A051479.P1956509173589147832

`A001651(A334839(n+1)/6)`
-/

namespace A051479.P1956509173589147832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.roundAway ((A334839 (n + 1) : ℚ) / 6)).toNat

end

end A051479.P1956509173589147832

/-! ## A051479.P15152054263566617659

`A032766(A334839(n+1)/6)`
-/

namespace A051479.P15152054263566617659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A334839 (n + 1) : ℚ) / 6)).toNat

end

end A051479.P15152054263566617659

/-!
# A051480: Run lengths in binary expansion of Pi.

The programs for A051480, there is no canonical definition to state claims against.
-/

/-! ## A051480.P6823859188812273941

`Δ[record[(n+1)*A155482(n+1)²]]`
-/

namespace A051480.P6823859188812273941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A155482 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051480.P6823859188812273941

/-!
# A051481: a(n+1) = a(n)^2 + n*(n+3)*a(n).

The programs for A051481, there is no canonical definition to state claims against.
-/

/-! ## A051481.P7841841488846778391

`(a(n-1)+n*(n+3))*a(n-1)` with `a(0)=1`
-/

namespace A051481.P7841841488846778391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n * (n + 3)) * a (n - 1)

end

end A051481.P7841841488846778391

/-! ## A051481.P2430081824854673844

`(A028552(n)+a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A051481.P2430081824854673844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A028552 n + a (n - 1)) * a (n - 1)

end

end A051481.P2430081824854673844

/-!
# A051483: Order of group H_{1,n}.

The programs for A051483, there is no canonical definition to state claims against.
-/

/-! ## A051483.P5525495732089844195

`A051527(n+1)/2`
-/

namespace A051483.P5525495732089844195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051527 (n + 1) : ℚ) / 2

end

end A051483.P5525495732089844195

/-! ## A051483.P6486233070509244917

`A014682(A051527(n+1))`
-/

namespace A051483.P6486233070509244917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A051527 (n + 1)).toNat

end

end A051483.P6486233070509244917

/-! ## A051483.P17665756978467973530

`A323161(A051527(n+1)-5)`
-/

namespace A051483.P17665756978467973530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A051527 (n + 1) - 5).toNat

end

end A051483.P17665756978467973530

/-!
# A051484: a(n) is the next natural number (besides 1) which is not congruent to a(i) mod a(j) for any i < j < n.

The programs for A051484, there is no canonical definition to state claims against.
-/

/-! ## A051484.P3644648076937219995

`A111104(n)+a(n-1)` with `a(0)=0`
-/

namespace A051484.P3644648076937219995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111104 n + a (n - 1)

end

end A051484.P3644648076937219995

/-! ## A051484.P2191830396746842969

`∑[A111104(floor(sqrt(n²+1)))]-2`
-/

namespace A051484.P2191830396746842969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111104 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A051484.P2191830396746842969

/-! ## A051484.P14106590669071412988

`∑[A057427(n)*A111104(A028310(n))]`
-/

namespace A051484.P14106590669071412988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A111104 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051484.P14106590669071412988

/-! ## A051484.P15306414526885483414

`∑[A111104(A028310(n))%A001287(n)]`
-/

namespace A051484.P15306414526885483414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111104 (A028310 n).toNat) (A001287 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051484.P15306414526885483414

/-! ## A051484.P10192454671594934581

`∑[A062157(n)²*A111104(A028310(n))]`
-/

namespace A051484.P10192454671594934581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2 * A111104 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051484.P10192454671594934581

/-! ## A051484.P4124243408513698281

`∑[A111104(A000007(n)+n)%A000032(n+1)]`
-/

namespace A051484.P4124243408513698281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111104 (A000007 n + (n : ℤ)).toNat) (A000032 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051484.P4124243408513698281

/-!
# A051485: Number of double nodes (exactly two nodes on that level) for all Motzkin paths of length n.

The programs for A051485, there is no canonical definition to state claims against.
-/

/-! ## A051485.P13790579195120109246

`A372014(∑[n]+1)`
-/

namespace A051485.P13790579195120109246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372014 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A051485.P13790579195120109246

/-! ## A051485.P4016769251586896266

`A372014(A000124(n))+A135416(2*(n+2))`
-/

namespace A051485.P4016769251586896266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372014 (A000124 n).toNat + A135416 (2 * (n + 2))

end

end A051485.P4016769251586896266

/-!
# A051486: Triangle T(n,k) = number of symmetric Boolean functions of n variables and rank from 0 to 2^n.

The programs for A051486, there is no canonical definition to state claims against.
-/

/-! ## A051486.P14146174980624884058

`A162510(xor(A000032(n), A136431(n)))`
-/

namespace A051486.P14146174980624884058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (Int.xor (A000032 n) (A136431 n)).toNat

end

end A051486.P14146174980624884058

/-! ## A051486.P2363281376246120721

`A263111(A055397(n+1)^A050326(n+1))`
-/

namespace A051486.P2363281376246120721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (SequenceMachineLib.roundAway ((A055397 (n + 1) : ℚ) ^ (A050326 (n + 1) : ℤ))).toNat

end

end A051486.P2363281376246120721

/-! ## A051486.P10821717326487853203

`A317934(xor(n+2, A212387(n)))`
-/

namespace A051486.P10821717326487853203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317934 (Int.xor (n + 2 : ℤ) (A212387 n)).toNat

end

end A051486.P10821717326487853203

/-! ## A051486.P4717831147068584730

`A337530(A084600(n)*A337530(n+1))`
-/

namespace A051486.P4717831147068584730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337530 (A084600 n * A337530 (n + 1)).toNat

end

end A051486.P4717831147068584730

/-! ## A051486.P13097199033031984949

`gcd(A003640(A301686(n)), A121371(n+1))`
-/

namespace A051486.P13097199033031984949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003640 (A301686 n).toNat) (A121371 (n + 1))

end

end A051486.P13097199033031984949

/-!
# A051487: Numbers k such that phi(k) = phi(k - phi(k)).

The programs for A051487, there is no canonical definition to state claims against.
-/

/-! ## A051487.P4705322021226596394

`eq[A000010(n+1), A054571(n+1)]+1`
-/

namespace A051487.P4705322021226596394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A051487.P4705322021226596394

/-! ## A051487.P14608704903143821910

`A133265(eq[A000010(n+1), A054571(n+1)])`
-/

namespace A051487.P14608704903143821910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A051487.P14608704903143821910

/-! ## A051487.P4252900404440757050

`A133265(eq[A054571(n+1)+1, A039649(n+1)])`
-/

namespace A051487.P4252900404440757050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A051487.P4252900404440757050

/-! ## A051487.P13232075059283310368

`A133265(eq[A109606(n+1)+1, A054571(n+1)])`
-/

namespace A051487.P13232075059283310368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A051487.P13232075059283310368

/-! ## A051487.P10823823330254681377

`A133265(eq[n, A219428(n+1)+A054571(n+1)])`
-/

namespace A051487.P10823823330254681377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + A054571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051487.P10823823330254681377

/-!
# A051488: Numbers k such that phi(k) < phi(k - phi(k)).

The programs for A051488, the canonical program `A051488.P11098325433870491151` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051488 has offset 1).

The definition of A051488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051488.P11098325433870491151

`lt[A000010(n+1), A054571(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A051488

/-- `lt[A000010(n+1), A054571(n+1)]+1` -/
def P11098325433870491151.Spec : Prop :=
  ∀ n, (P11098325433870491151.a n : ℤ) = A051488 (n + 1)

theorem P11098325433870491151.correct : P11098325433870491151.Spec := by
  intro n
  simp only [A051488, Nat.add_sub_cancel]

end A051488

/-! ## A051488.P13026695594553076558

`lt[A039649(n+1), A054571(n+1)]+1`
-/

namespace A051488.P13026695594553076558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A051488.P13026695594553076558

namespace A051488

/-- `lt[A039649(n+1), A054571(n+1)]+1` -/
def P13026695594553076558.Spec : Prop :=
  ∀ n, (P13026695594553076558.a n : ℤ) = A051488 (n + 1)

end A051488

/-! ## A051488.P16011164685089067119

`lt[A297117(n+1), A054571(n+1)]+1`
-/

namespace A051488.P16011164685089067119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A051488.P16011164685089067119

namespace A051488

/-- `lt[A297117(n+1), A054571(n+1)]+1` -/
def P16011164685089067119.Spec : Prop :=
  ∀ n, (P16011164685089067119.a n : ℤ) = A051488 (n + 1)

end A051488

/-! ## A051488.P728204859437571659

`lt[A083542(n)/a(n-1), A054571(n+1)]+1` with `a(0)=1, a(1)=1`
-/

namespace A051488.P728204859437571659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (A083542 n : ℚ) / f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A051488.P728204859437571659

namespace A051488

/-- `lt[A083542(n)/a(n-1), A054571(n+1)]+1` -/
def P728204859437571659.Spec : Prop :=
  ∀ n, (P728204859437571659.a n : ℤ) = A051488 (n + 1)

end A051488

/-! ## A051488.P15961246130611888238

`A065475(lt[A000010(n+1), A054571(n+1)])`
-/

namespace A051488.P15961246130611888238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051488.P15961246130611888238

namespace A051488

/-- `A065475(lt[A000010(n+1), A054571(n+1)])` -/
def P15961246130611888238.Spec : Prop :=
  ∀ n, P15961246130611888238.a n = A051488 (n + 1)

end A051488

/-! ## A051488.P4647965827670346899

`A065475(lt[A039649(n+1), A054571(n+1)])`
-/

namespace A051488.P4647965827670346899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051488.P4647965827670346899

namespace A051488

/-- `A065475(lt[A039649(n+1), A054571(n+1)])` -/
def P4647965827670346899.Spec : Prop :=
  ∀ n, P4647965827670346899.a n = A051488 (n + 1)

end A051488

/-!
# A051489: a(n) = n^(n+2) + (n+2)^n.

The programs for A051489, the canonical program `A051489.P9505901223482558095` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051489 has offset 0).

The definition of A051489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+2)+(n+2)^n` (program `A051489.P9505901223482558095`, by `A051489.P9505901223482558095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051489.P9505901223482558095

`n^(n+2)+(n+2)^n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051489

/-- `n^(n+2)+(n+2)^n` -/
def P9505901223482558095.Spec : Prop :=
  ∀ n, (P9505901223482558095.a n : ℤ) = A051489 n

theorem P9505901223482558095.correct : P9505901223482558095.Spec := by
  intro n
  simp only [A051489]

end A051489

/-! ## A051489.P13285035564435089502

`A156354(∑[4*(n+1)]+1)`
-/

namespace A051489.P13285035564435089502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A051489.P13285035564435089502

namespace A051489

/-- `A156354(∑[4*(n+1)]+1)` -/
def P13285035564435089502.Spec : Prop :=
  ∀ n, P13285035564435089502.a n = A051489 n

end A051489

/-! ## A051489.P15379449071016389893

`A055652((n+1)²+(n+2)²)`
-/

namespace A051489.P15379449071016389893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A051489.P15379449071016389893

namespace A051489

/-- `A055652((n+1)²+(n+2)²)` -/
def P15379449071016389893.Spec : Prop :=
  ∀ n, P15379449071016389893.a n = A051489 n

end A051489

/-! ## A051489.P17886948498939742749

`record[A010052(2*n+1)*A156354(n+1)]`
-/

namespace A051489.P17886948498939742749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A156354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051489.P17886948498939742749

namespace A051489

/-- `record[A010052(2*n+1)*A156354(n+1)]` -/
def P17886948498939742749.Spec : Prop :=
  ∀ n, P17886948498939742749.a n = A051489 n

end A051489

/-! ## A051489.P2124211760211860429

`gcd(A000038(n), A055652(A001844(n+1)))`
-/

namespace A051489.P2124211760211860429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A055652 (A001844 (n + 1)).toNat)

end

end A051489.P2124211760211860429

namespace A051489

/-- `gcd(A000038(n), A055652(A001844(n+1)))` -/
def P2124211760211860429.Spec : Prop :=
  ∀ n, (P2124211760211860429.a n : ℤ) = A051489 n

end A051489

/-!
# A051490: a(n) = n^(n+2)*(n+2)^n.

The programs for A051490, the canonical program `A051490.P15365702818963906531` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051490 has offset 0).

The definition of A051490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+2)*(n+2)^n` (program `A051490.P15365702818963906531`, by `A051490.P15365702818963906531.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051490.P15365702818963906531

`n^(n+2)*(n+2)^n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051490

/-- `n^(n+2)*(n+2)^n` -/
def P15365702818963906531.Spec : Prop :=
  ∀ n, (P15365702818963906531.a n : ℤ) = A051490 n

theorem P15365702818963906531.correct : P15365702818963906531.Spec := by
  intro n
  simp only [A051490]

end A051490

/-! ## A051490.P7061572604262139387

`A062275((n+1)²+(n+2)²)`
-/

namespace A051490.P7061572604262139387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A051490.P7061572604262139387

namespace A051490

/-- `A062275((n+1)²+(n+2)²)` -/
def P7061572604262139387.Spec : Prop :=
  ∀ n, P7061572604262139387.a n = A051490 n

end A051490

/-! ## A051490.P13898100894496253373

`n²*A174841(n+1)/A033999(n)`
-/

namespace A051490.P13898100894496253373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A174841 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A051490.P13898100894496253373

namespace A051490

/-- `n²*A174841(n+1)/A033999(n)` -/
def P13898100894496253373.Spec : Prop :=
  ∀ n, P13898100894496253373.a n = (A051490 n : ℚ)

end A051490

/-! ## A051490.P16303209553504374055

`n²*A244124(2*(n+1)²)/A033999(n)`
-/

namespace A051490.P16303209553504374055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A244124 (2 * (n + 1) ^ 2) : ℚ) / (A033999 n : ℚ)

end

end A051490.P16303209553504374055

namespace A051490

/-- `n²*A244124(2*(n+1)²)/A033999(n)` -/
def P16303209553504374055.Spec : Prop :=
  ∀ n, P16303209553504374055.a n = (A051490 n : ℚ)

end A051490

/-! ## A051490.P11560414087918558611

`n²*A244126(2*(n+1)²)/A033999(n)`
-/

namespace A051490.P11560414087918558611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A244126 (2 * (n + 1) ^ 2) : ℚ) / (A033999 n : ℚ)

end

end A051490.P11560414087918558611

namespace A051490

/-- `n²*A244126(2*(n+1)²)/A033999(n)` -/
def P11560414087918558611.Spec : Prop :=
  ∀ n, P11560414087918558611.a n = (A051490 n : ℚ)

end A051490

/-!
# A051493: Triangles with perimeter n and relatively prime integer side lengths.

The programs for A051493, the canonical program `A051493.P2215150285687878989` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051493 has offset 1).

The definition of A051493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051493.P1591212752340866233

`A070091(n+1)+A024162(n+1)`
-/

namespace A051493.P1591212752340866233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (n + 1) + A024162 (n + 1)

end

end A051493.P1591212752340866233

namespace A051493

/-- `A070091(n+1)+A024162(n+1)` -/
def P1591212752340866233.Spec : Prop :=
  ∀ n, P1591212752340866233.a n = A051493 (n + 1)

end A051493

/-! ## A051493.P2215150285687878989

`∑{d}[n+1, A008683(#)*A005044((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A051493

/-- `∑{d}[n+1, A008683(#)*A005044((n+1)/#)]` -/
def P2215150285687878989.Spec : Prop :=
  ∀ n, P2215150285687878989.a n = A051493 (n + 1)

theorem P2215150285687878989.correct : P2215150285687878989.Spec := by
  intro n
  simp only [A051493, Nat.add_sub_cancel]

end A051493

/-! ## A051493.P9820142187875023909

`A070094(n+1)+A070104(n+1)+A070109(n+1)+A070107(n+1)`
-/

namespace A051493.P9820142187875023909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070094 (n + 1) + (A070104 (n + 1) + (A070109 (n + 1) + A070107 (n + 1)))

end

end A051493.P9820142187875023909

namespace A051493

/-- `A070094(n+1)+A070104(n+1)+A070109(n+1)+A070107(n+1)` -/
def P9820142187875023909.Spec : Prop :=
  ∀ n, P9820142187875023909.a n = A051493 (n + 1)

end A051493

/-! ## A051493.P1769696073905488036

`A070094(n+1)+A070109(n+1)+A070102(n+1)`
-/

namespace A051493.P1769696073905488036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070094 (n + 1) + (A070109 (n + 1) + A070102 (n + 1))

end

end A051493.P1769696073905488036

namespace A051493

/-- `A070094(n+1)+A070109(n+1)+A070102(n+1)` -/
def P1769696073905488036.Spec : Prop :=
  ∀ n, P1769696073905488036.a n = A051493 (n + 1)

end A051493

/-! ## A051493.P15392433968569433319

`A338201(A242474(n+1))`
-/

namespace A051493.P15392433968569433319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338201 (A242474 (n + 1)).toNat

end

end A051493.P15392433968569433319

namespace A051493

/-- `A338201(A242474(n+1))` -/
def P15392433968569433319.Spec : Prop :=
  ∀ n, P15392433968569433319.a n = A051493 (n + 1)

end A051493

/-!
# A051494: Expansion of (1 - x + x^2 + x^3)/(1 - x^2)^3.

The programs for A051494, the canonical program `A051494.P16762874516502838957` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051494 has offset 0).

The definition of A051494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2+x^3)/(1-3x^2+3x^4-x^6))` (program `A051494.P16762874516502838957`, by `A051494.P16762874516502838957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051494.P16762874516502838957

`ogf((1-x+x^2+x^3)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051494

/-- `ogf((1-x+x^2+x^3)/(1-3x^2+3x^4-x^6))` -/
def P16762874516502838957.Spec : Prop :=
  ∀ n, P16762874516502838957.a n = A051494 n

theorem P16762874516502838957.correct : P16762874516502838957.Spec := by
  intro n
  simp only [A051494]

end A051494

/-! ## A051494.P17080998858912384988

`(n²+2*n+2+(n²+6*n+6)*(-1)^n)/8`
-/

namespace A051494.P17080998858912384988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 2 * n + 2 : ℤ) + (n ^ 2 + 6 * n + 6 : ℤ) * (-1) ^ n : ℚ) / 8

end

end A051494.P17080998858912384988

namespace A051494

/-- `(n²+2*n+2+(n²+6*n+6)*(-1)^n)/8` -/
def P17080998858912384988.Spec : Prop :=
  ∀ n, P17080998858912384988.a n = (A051494 n : ℚ)

end A051494

/-! ## A051494.P17257011102440970185

`∑[n%2-1]^gcd(2, n)`
-/

namespace A051494.P17257011102440970185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.gcd 2 n

end

end A051494.P17257011102440970185

namespace A051494

/-- `∑[n%2-1]^gcd(2, n)` -/
def P17257011102440970185.Spec : Prop :=
  ∀ n, P17257011102440970185.a n = A051494 n

end A051494

/-! ## A051494.P2097664089509223324

`∑[or(n, -a(n-1))]-a(n-1)` with `a(0)=1`
-/

namespace A051494.P2097664089509223324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor (n : ℤ) (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A051494.P2097664089509223324

namespace A051494

/-- `∑[or(n, -a(n-1))]-a(n-1)` -/
def P2097664089509223324.Spec : Prop :=
  ∀ n, P2097664089509223324.a n = A051494 n

end A051494

/-! ## A051494.P3054944014885785004

`a(n-2)-floor(∑[n]/a(n-1))` with `a(0)=1, a(1)=-1`
-/

namespace A051494.P3054944014885785004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A051494.P3054944014885785004

namespace A051494

/-- `a(n-2)-floor(∑[n]/a(n-1))` -/
def P3054944014885785004.Spec : Prop :=
  ∀ n, P3054944014885785004.a n = A051494 n

end A051494

/-! ## A051494.P4660314979485517374

`∑[A052928(n)-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A051494.P4660314979485517374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A052928 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A051494.P4660314979485517374

namespace A051494

/-- `∑[A052928(n)-a(n-1)]-a(n-1)` -/
def P4660314979485517374.Spec : Prop :=
  ∀ n, P4660314979485517374.a n = A051494 n

end A051494

/-! ## A051494.P14091801498378189385

`A152032(n)+A129889(n)`
-/

namespace A051494.P14091801498378189385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 n + A129889 n

end

end A051494.P14091801498378189385

namespace A051494

/-- `A152032(n)+A129889(n)` -/
def P14091801498378189385.Spec : Prop :=
  ∀ n, P14091801498378189385.a n = A051494 n

end A051494

/-! ## A051494.P8349517269676706515

`A027656(n)²-∑[A001057(n)]`
-/

namespace A051494.P8349517269676706515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051494.P8349517269676706515

namespace A051494

/-- `A027656(n)²-∑[A001057(n)]` -/
def P8349517269676706515.Spec : Prop :=
  ∀ n, P8349517269676706515.a n = A051494 n

end A051494

/-! ## A051494.P7943710800810877942

`∑[∑[A033999(n)*A047838(n+2)]]`
-/

namespace A051494.P7943710800810877942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A047838 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051494.P7943710800810877942

namespace A051494

/-- `∑[∑[A033999(n)*A047838(n+2)]]` -/
def P7943710800810877942.Spec : Prop :=
  ∀ n, P7943710800810877942.a n = A051494 n

end A051494

/-! ## A051494.P2198623817727635694

`(A057979(n)-A001057(n))*A008619(n)`
-/

namespace A051494.P2198623817727635694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057979 n - A001057 n) * A008619 n

end

end A051494.P2198623817727635694

namespace A051494

/-- `(A057979(n)-A001057(n))*A008619(n)` -/
def P2198623817727635694.Spec : Prop :=
  ∀ n, P2198623817727635694.a n = A051494 n

end A051494

/-! ## A051494.P17834738426049787455

`A027656(n)+A027656(n)²-A008619(n)`
-/

namespace A051494.P17834738426049787455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + (A027656 n ^ 2 - A008619 n)

end

end A051494.P17834738426049787455

namespace A051494

/-- `A027656(n)+A027656(n)²-A008619(n)` -/
def P17834738426049787455.Spec : Prop :=
  ∀ n, P17834738426049787455.a n = A051494 n

end A051494

/-! ## A051494.P15637011429213516300

`A110514(n)+A110514(n)²-A008619(n)`
-/

namespace A051494.P15637011429213516300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n + (A110514 n ^ 2 - A008619 n)

end

end A051494.P15637011429213516300

namespace A051494

/-- `A110514(n)+A110514(n)²-A008619(n)` -/
def P15637011429213516300.Spec : Prop :=
  ∀ n, P15637011429213516300.a n = A051494 n

end A051494

/-! ## A051494.P12161348917138766587

`A158416(n)+A158416(n)²-A052938(n)`
-/

namespace A051494.P12161348917138766587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n + (A158416 n ^ 2 - A052938 n)

end

end A051494.P12161348917138766587

namespace A051494

/-- `A158416(n)+A158416(n)²-A052938(n)` -/
def P12161348917138766587.Spec : Prop :=
  ∀ n, P12161348917138766587.a n = A051494 n

end A051494

/-! ## A051494.P8758096144525977421

`A028242(n)²-A004652(n*A000035(n))`
-/

namespace A051494.P8758096144525977421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n ^ 2 - A004652 ((n : ℤ) * A000035 n).toNat

end

end A051494.P8758096144525977421

namespace A051494

/-- `A028242(n)²-A004652(n*A000035(n))` -/
def P8758096144525977421.Spec : Prop :=
  ∀ n, P8758096144525977421.a n = A051494 n

end A051494

/-! ## A051494.P17906966596053001834

`2*A000217(A028242(n))-A000463(n+1)`
-/

namespace A051494.P17906966596053001834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A028242 n).toNat - A000463 (n + 1)

end

end A051494.P17906966596053001834

namespace A051494

/-- `2*A000217(A028242(n))-A000463(n+1)` -/
def P17906966596053001834.Spec : Prop :=
  ∀ n, P17906966596053001834.a n = A051494 n

end A051494

/-! ## A051494.P6782653831562452373

`∑[∑[A188653(n+2)]]`
-/

namespace A051494.P6782653831562452373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051494.P6782653831562452373

namespace A051494

/-- `∑[∑[A188653(n+2)]]` -/
def P6782653831562452373.Spec : Prop :=
  ∀ n, P6782653831562452373.a n = A051494 n

end A051494

/-! ## A051494.P16563732693325765505

`A001057(n+1)^gcd(2, n)`
-/

namespace A051494.P16563732693325765505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) ^ Nat.gcd 2 n

end

end A051494.P16563732693325765505

namespace A051494

/-- `A001057(n+1)^gcd(2, n)` -/
def P16563732693325765505.Spec : Prop :=
  ∀ n, P16563732693325765505.a n = A051494 n

end A051494

/-! ## A051494.P17996734234573695820

`A027656(n)²-A142150(n+1)`
-/

namespace A051494.P17996734234573695820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n ^ 2 - A142150 (n + 1)

end

end A051494.P17996734234573695820

namespace A051494

/-- `A027656(n)²-A142150(n+1)` -/
def P17996734234573695820.Spec : Prop :=
  ∀ n, P17996734234573695820.a n = A051494 n

end A051494

/-! ## A051494.P15385262198482733899

`A001057(n+1)*A152271(n+1)`
-/

namespace A051494.P15385262198482733899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) * A152271 (n + 1)

end

end A051494.P15385262198482733899

namespace A051494

/-- `A001057(n+1)*A152271(n+1)` -/
def P15385262198482733899.Spec : Prop :=
  ∀ n, P15385262198482733899.a n = A051494 n

end A051494

/-! ## A051494.P4772892591816336636

`A152271(n+1)²-A027656(n+1)`
-/

namespace A051494.P4772892591816336636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 1) ^ 2 - A027656 (n + 1)

end

end A051494.P4772892591816336636

namespace A051494

/-- `A152271(n+1)²-A027656(n+1)` -/
def P4772892591816336636.Spec : Prop :=
  ∀ n, P4772892591816336636.a n = A051494 n

end A051494

/-!
# A051495: Expansion of (1 + x + 2*x^2 - x^3 + x^4)/(1 - 3*x^3 + 3*x^6 - x^9).

The programs for A051495, the canonical program `A051495.P266022139278498142` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051495 has offset 0).

The definition of A051495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+2x^2-x^3+x^4)/(1-3x^3+3x^6-x^9))` (program `A051495.P266022139278498142`, by `A051495.P266022139278498142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051495.P266022139278498142

`ogf((1+x+2x^2-x^3+x^4)/(1-3x^3+3x^6-x^9))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051495

/-- `ogf((1+x+2x^2-x^3+x^4)/(1-3x^3+3x^6-x^9))` -/
def P266022139278498142.Spec : Prop :=
  ∀ n, P266022139278498142.a n = A051495 n

theorem P266022139278498142.correct : P266022139278498142.Spec := by
  intro n
  simp only [A051495]

end A051495

/-! ## A051495.P13555888431387564963

`(round((lcm(3, n)-n)/6)+1)*∑[char[3*n]]`
-/

namespace A051495.P13555888431387564963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((Nat.lcm 3 n : ℤ) - (n : ℤ) : ℚ) / 6) + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051495.P13555888431387564963

namespace A051495

/-- `(round((lcm(3, n)-n)/6)+1)*∑[char[3*n]]` -/
def P13555888431387564963.Spec : Prop :=
  ∀ n, P13555888431387564963.a n = A051495 n

end A051495

/-! ## A051495.P3473852458793064999

`gcd(a(n-1), a(n-2))+a(n-2)^(n%3)` with `a(0)=1, a(1)=1`
-/

namespace A051495.P3473852458793064999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.gcd (a (n - 1)) (a (n - 2)) + a (n - 2) ^ (n % 3)

end

end A051495.P3473852458793064999

namespace A051495

/-- `gcd(a(n-1), a(n-2))+a(n-2)^(n%3)` -/
def P3473852458793064999.Spec : Prop :=
  ∀ n, (P3473852458793064999.a n : ℤ) = A051495 n

end A051495

/-! ## A051495.P11546851929120984140

`gcd(∑[A087508(n)], A006501(n))`
-/

namespace A051495.P11546851929120984140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A006501 n)

end

end A051495.P11546851929120984140

namespace A051495

/-- `gcd(∑[A087508(n)], A006501(n))` -/
def P11546851929120984140.Spec : Prop :=
  ∀ n, (P11546851929120984140.a n : ℤ) = A051495 n

end A051495

/-! ## A051495.P15782650112282475523

`A086161(n)*A152271(A004396(n))`
-/

namespace A051495.P15782650112282475523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n * A152271 (A004396 n).toNat

end

end A051495.P15782650112282475523

namespace A051495

/-- `A086161(n)*A152271(A004396(n))` -/
def P15782650112282475523.Spec : Prop :=
  ∀ n, P15782650112282475523.a n = A051495 n

end A051495

/-! ## A051495.P14485353566773322292

`A008620(n+1)*A008620(A091684(n))`
-/

namespace A051495.P14485353566773322292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) * A008620 (A091684 n).toNat

end

end A051495.P14485353566773322292

namespace A051495

/-- `A008620(n+1)*A008620(A091684(n))` -/
def P14485353566773322292.Spec : Prop :=
  ∀ n, P14485353566773322292.a n = A051495 n

end A051495

/-! ## A051495.P8636812758212968776

`abs(Δ[A002620(A117909(n))])`
-/

namespace A051495.P8636812758212968776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A117909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A051495.P8636812758212968776

namespace A051495

/-- `abs(Δ[A002620(A117909(n))])` -/
def P8636812758212968776.Spec : Prop :=
  ∀ n, P8636812758212968776.a n = A051495 n

end A051495

/-! ## A051495.P5118880028066793682

`A087509(n+2)+A087508(n)²`
-/

namespace A051495.P5118880028066793682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 (n + 2) + A087508 n ^ 2

end

end A051495.P5118880028066793682

namespace A051495

/-- `A087509(n+2)+A087508(n)²` -/
def P5118880028066793682.Spec : Prop :=
  ∀ n, P5118880028066793682.a n = A051495 n

end A051495

/-! ## A051495.P883326498145869500

`abs(Δ[A131508(A117909(n)²)])`
-/

namespace A051495.P883326498145869500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A117909 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A051495.P883326498145869500

namespace A051495

/-- `abs(Δ[A131508(A117909(n)²)])` -/
def P883326498145869500.Spec : Prop :=
  ∀ n, P883326498145869500.a n = A051495 n

end A051495

/-!
# A051497: (Terms in A014476)/2.

The programs for A051497, there is no canonical definition to state claims against.
-/

/-! ## A051497.P11789039575647555201

`A014476(n+1)/2`
-/

namespace A051497.P11789039575647555201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014476 (n + 1) : ℚ) / 2

end

end A051497.P11789039575647555201

/-! ## A051497.P5548240251283678779

`sqrt(A051514(n))`
-/

namespace A051497.P5548240251283678779
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A051514 n : ℝ)

end

end A051497.P5548240251283678779

/-! ## A051497.P10633378792822295045

`sqrt(A014762(n+1))/2`
-/

namespace A051497.P10633378792822295045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014762 (n + 1) : ℝ) / 2

end

end A051497.P10633378792822295045

/-! ## A051497.P7743877319082772907

`A051514(A110654(2*n))^(1/2)`
-/

namespace A051497.P7743877319082772907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051514 (A110654 (2 * n)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A051497.P7743877319082772907

/-! ## A051497.P5346101456676967039

`floor(A014476(A028242(2*n))/2)`
-/

namespace A051497.P5346101456676967039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014476 (A028242 (2 * n)).toNat : ℚ) / 2⌋

end

end A051497.P5346101456676967039

/-! ## A051497.P10026786172688320689

`A014682(A014476(n+1))`
-/

namespace A051497.P10026786172688320689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014476 (n + 1)).toNat

end

end A051497.P10026786172688320689

/-! ## A051497.P12475567294583488713

`A273943(A014476(n+1)%A286837(n+1))`
-/

namespace A051497.P12475567294583488713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A014476 (n + 1)) (A286837 (n + 1))).toNat

end

end A051497.P12475567294583488713

/-!
# A051498: a(n) = floor(tan(n)^3).

The programs for A051498, the canonical program `A051498.P8565582963595325475` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051498 has offset 0).

The definition of A051498 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(tan(n)^3)` (program `A051498.P8565582963595325475`, by `A051498.P8565582963595325475.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051498.P8565582963595325475

`floor(tan(n)^3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051498

/-- `floor(tan(n)^3)` -/
def P8565582963595325475.Spec : Prop :=
  ∀ n, P8565582963595325475.a n = A051498 n

theorem P8565582963595325475.correct : P8565582963595325475.Spec := by
  intro n
  simp only [A051498]

end A051498

/-! ## A051498.P17842963037619021536

`-ceil(tan(-n)^3)`
-/

namespace A051498.P17842963037619021536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.tan (-(n : ℤ) : ℝ) ^ 3⌉

end

end A051498.P17842963037619021536

namespace A051498

/-- `-ceil(tan(-n)^3)` -/
def P17842963037619021536.Spec : Prop :=
  ∀ n, P17842963037619021536.a n = A051498 n

end A051498

/-! ## A051498.P712041059656126984

`floor(tan(n)²*tan(n))`
-/

namespace A051498.P712041059656126984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ) ^ 2 * Real.tan (n : ℝ)⌋

end

end A051498.P712041059656126984

namespace A051498

/-- `floor(tan(n)²*tan(n))` -/
def P712041059656126984.Spec : Prop :=
  ∀ n, P712041059656126984.a n = A051498 n

theorem P712041059656126984.correct : P712041059656126984.Spec := by
  intro n
  simp only [A051498, Nat.add_sub_cancel, A051498.P712041059656126984.a, A051498.P8565582963595325475.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051498

/-! ## A051498.P10976361096900861095

`floor((sin(n)/cos(n))^3)`
-/

namespace A051498.P10976361096900861095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sin (n : ℝ) / Real.cos (n : ℝ)) ^ 3⌋

end

end A051498.P10976361096900861095

namespace A051498

/-- `floor((sin(n)/cos(n))^3)` -/
def P10976361096900861095.Spec : Prop :=
  ∀ n, P10976361096900861095.a n = A051498 n

end A051498

/-! ## A051498.P1158671671586468538

`n-ceil(n-tan(n)^3)`
-/

namespace A051498.P1158671671586468538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(n : ℝ) - Real.tan (n : ℝ) ^ 3⌉

end

end A051498.P1158671671586468538

namespace A051498

/-- `n-ceil(n-tan(n)^3)` -/
def P1158671671586468538.Spec : Prop :=
  ∀ n, P1158671671586468538.a n = A051498 n

end A051498

/-! ## A051498.P9562085670690042527

`floor(tan(n)*tan(n)*tan(n))`
-/

namespace A051498.P9562085670690042527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ) * Real.tan (n : ℝ) * Real.tan (n : ℝ)⌋

end

end A051498.P9562085670690042527

namespace A051498

/-- `floor(tan(n)*tan(n)*tan(n))` -/
def P9562085670690042527.Spec : Prop :=
  ∀ n, P9562085670690042527.a n = A051498 n

theorem P9562085670690042527.correct : P9562085670690042527.Spec := by
  intro n
  simp only [A051498, Nat.add_sub_cancel, A051498.P9562085670690042527.a, A051498.P8565582963595325475.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051498

/-!
# A051499: Nearest integer to tan(n)^3.

The programs for A051499, the canonical program `A051499.P7601859941549761828` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051499 has offset 0).

The definition of A051499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051499.P7601859941549761828

`round(tan(n)^3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051499

/-- `round(tan(n)^3)` -/
def P7601859941549761828.Spec : Prop :=
  ∀ n, P7601859941549761828.a n = A051499 n

theorem P7601859941549761828.correct : P7601859941549761828.Spec := by
  intro n
  simp only [A051499]

end A051499

/-! ## A051499.P8424381524207453244

`round(tan(n)²*tan(n))`
-/

namespace A051499.P8424381524207453244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (n : ℝ) ^ 2 * Real.tan (n : ℝ))

end

end A051499.P8424381524207453244

namespace A051499

/-- `round(tan(n)²*tan(n))` -/
def P8424381524207453244.Spec : Prop :=
  ∀ n, P8424381524207453244.a n = A051499 n

theorem P8424381524207453244.correct : P8424381524207453244.Spec := by
  intro n
  simp only [A051499, Nat.add_sub_cancel, A051499.P8424381524207453244.a, A051499.P7601859941549761828.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051499

/-! ## A051499.P16968781342978018949

`round(cot(acos(0)-n)^3)`
-/

namespace A051499.P16968781342978018949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arccos (0 : ℝ) - (n : ℝ)) ^ 3)

end

end A051499.P16968781342978018949

namespace A051499

/-- `round(cot(acos(0)-n)^3)` -/
def P16968781342978018949.Spec : Prop :=
  ∀ n, P16968781342978018949.a n = A051499 n

end A051499

/-! ## A051499.P16558873212142115314

`round(cot(asin(1)-n)^3)`
-/

namespace A051499.P16558873212142115314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arcsin (1 : ℝ) - (n : ℝ)) ^ 3)

end

end A051499.P16558873212142115314

namespace A051499

/-- `round(cot(asin(1)-n)^3)` -/
def P16558873212142115314.Spec : Prop :=
  ∀ n, P16558873212142115314.a n = A051499 n

end A051499

/-! ## A051499.P13945161406936486808

`round((sin(n)/cos(n))^3)`
-/

namespace A051499.P13945161406936486808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sin (n : ℝ) / Real.cos (n : ℝ)) ^ 3)

end

end A051499.P13945161406936486808

namespace A051499

/-- `round((sin(n)/cos(n))^3)` -/
def P13945161406936486808.Spec : Prop :=
  ∀ n, P13945161406936486808.a n = A051499 n

end A051499

