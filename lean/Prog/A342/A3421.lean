import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B002.C005
import Seq.B003.C000
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
# A342100: Abundant numbers k at which the ratio (number of abundant numbers in 1..k)/k reaches a new record high.

The programs for A342100, there is no canonical definition to state claims against.
-/

/-! ## A342100.P13999078104800958739

`A005101(lt[A003238(n+3), A338419(n+1)])`
-/

namespace A342100.P13999078104800958739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342100.P13999078104800958739

/-!
# A342101: Remove middle term and append, starting with [1, 2, 3].

The programs for A342101, the canonical program `A342101.P740003586747439283` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342101 has offset 1).

The definition of A342101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342101.P3047168698240778366

`A001222(A115716(A091072(n+1)+2)+1)`
-/

namespace A342101.P3047168698240778366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A115716 (A091072 (n + 1) + 2).toNat + 1).toNat

end

end A342101.P3047168698240778366

namespace A342101

/-- `A001222(A115716(A091072(n+1)+2)+1)` -/
def P3047168698240778366.Spec : Prop :=
  ∀ n, P3047168698240778366.a n = A342101 (n + 1)

end A342101

/-! ## A342101.P740003586747439283

`A070402(eq[1, A014709(n)])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342101

/-- `A070402(eq[1, A014709(n)])` -/
def P740003586747439283.Spec : Prop :=
  ∀ n, P740003586747439283.a n = A342101 (n + 1)

theorem P740003586747439283.correct : P740003586747439283.Spec := by
  intro n
  simp only [A342101, Nat.add_sub_cancel]

end A342101

/-! ## A342101.P18140105047287214320

`2-A102560(eq[1, A014577(n)])`
-/

namespace A342101.P18140105047287214320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A102560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342101.P18140105047287214320

namespace A342101

/-- `2-A102560(eq[1, A014577(n)])` -/
def P18140105047287214320.Spec : Prop :=
  ∀ n, P18140105047287214320.a n = A342101 (n + 1)

end A342101

/-! ## A342101.P4977620665999814222

`A219977(A091072(n+1))+2`
-/

namespace A342101.P4977620665999814222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A091072 (n + 1)).toNat + 2

end

end A342101.P4977620665999814222

namespace A342101

/-- `A219977(A091072(n+1))+2` -/
def P4977620665999814222.Spec : Prop :=
  ∀ n, P4977620665999814222.a n = A342101 (n + 1)

end A342101

/-! ## A342101.P6281894323747051030

`A001511(or(4, A091072(n+1)))`
-/

namespace A342101.P6281894323747051030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor 4 (A091072 (n + 1))).toNat

end

end A342101.P6281894323747051030

namespace A342101

/-- `A001511(or(4, A091072(n+1)))` -/
def P6281894323747051030.Spec : Prop :=
  ∀ n, P6281894323747051030.a n = A342101 (n + 1)

end A342101

/-! ## A342101.P13020365798720328630

`A014963(A094603(A091072(n+1)+2))`
-/

namespace A342101.P13020365798720328630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A094603 (A091072 (n + 1) + 2).toNat).toNat

end

end A342101.P13020365798720328630

namespace A342101

/-- `A014963(A094603(A091072(n+1)+2))` -/
def P13020365798720328630.Spec : Prop :=
  ∀ n, P13020365798720328630.a n = A342101 (n + 1)

end A342101

/-! ## A342101.P16162439230990641243

`A008683(A055975(A091072(n+1)+1)+5)+2`
-/

namespace A342101.P16162439230990641243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A055975 (A091072 (n + 1) + 1).toNat + 5).toNat + 2

end

end A342101.P16162439230990641243

namespace A342101

/-- `A008683(A055975(A091072(n+1)+1)+5)+2` -/
def P16162439230990641243.Spec : Prop :=
  ∀ n, P16162439230990641243.a n = A342101 (n + 1)

end A342101

/-! ## A342101.P7404118655526351271

`A068508(A106840(n+1))`
-/

namespace A342101.P7404118655526351271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068508 (A106840 (n + 1)).toNat

end

end A342101.P7404118655526351271

namespace A342101

/-- `A068508(A106840(n+1))` -/
def P7404118655526351271.Spec : Prop :=
  ∀ n, P7404118655526351271.a n = A342101 (n + 1)

end A342101

/-! ## A342101.P5691731973123499087

`A088742(gcd(2^n, A091072(n+1))+1)`
-/

namespace A342101.P5691731973123499087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088742 (Int.gcd (2 ^ n : ℤ) (A091072 (n + 1)) + 1)

end

end A342101.P5691731973123499087

namespace A342101

/-- `A088742(gcd(2^n, A091072(n+1))+1)` -/
def P5691731973123499087.Spec : Prop :=
  ∀ n, P5691731973123499087.a n = A342101 (n + 1)

end A342101

/-! ## A342101.P18365935965836570074

`A125047(gcd(A091072(n+1), A343421(n+1)))`
-/

namespace A342101.P18365935965836570074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125047 (Int.gcd (A091072 (n + 1)) (A343421 (n + 1)))

end

end A342101.P18365935965836570074

namespace A342101

/-- `A125047(gcd(A091072(n+1), A343421(n+1)))` -/
def P18365935965836570074.Spec : Prop :=
  ∀ n, P18365935965836570074.a n = A342101 (n + 1)

end A342101

/-!
# A342103: Balanced numbers (A020492) that are also arithmetic numbers (A003601).

The programs for A342103, there is no canonical definition to state claims against.
-/

/-! ## A342103.P5177894189447801491

`filter[A020492(n+1), A245656(#)]`
-/

namespace A342103.P5177894189447801491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A342103.P5177894189447801491

/-! ## A342103.P325648214189753349

`filter[A003601(n+1), A351114(#)]`
-/

namespace A342103.P325648214189753349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A342103.P325648214189753349

/-! ## A342103.P12294205798228423773

`filter[A046839(n+1), A351114(#)]`
-/

namespace A342103.P12294205798228423773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A342103.P12294205798228423773

/-! ## A342103.P5635837636403490019

`∩[A003601(n+1), A020492(n+1)]`
-/

namespace A342103.P5635837636403490019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342103.P5635837636403490019

/-! ## A342103.P6934015166158223007

`∩[A020492(n+1), A046839(n+1)]`
-/

namespace A342103.P6934015166158223007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342103.P6934015166158223007

/-!
# A342105: Arithmetic numbers (A003601) that are not balanced numbers (A020492).

The programs for A342105, there is no canonical definition to state claims against.
-/

/-! ## A342105.P18072896037002172270

`∩[A003601(n+1), comp[A020492(n+1)]]`
-/

namespace A342105.P18072896037002172270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A342105.P18072896037002172270

/-! ## A342105.P12137484607714763034

`∩[A003601(n+1), comp[A342103(n+1)]]`
-/

namespace A342105.P12137484607714763034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342103 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A342105.P12137484607714763034

/-! ## A342105.P14832204823257719804

`record[A250094(A274821(n+2))]`
-/

namespace A342105.P14832204823257719804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (A274821 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342105.P14832204823257719804

/-! ## A342105.P1100380800669903355

`A250094(n+3)%∑{d}[A244626(n+1), #]`
-/

namespace A342105.P1100380800669903355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250094 (n + 3)) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A342105.P1100380800669903355

/-! ## A342105.P11734561216509359798

`A250094(n+3)+A010051(A173380(n))`
-/

namespace A342105.P11734561216509359798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 3) + A010051 (A173380 n).toNat

end

end A342105.P11734561216509359798

/-!
# A342106: Numbers that are not arithmetic and not balanced.

The programs for A342106, there is no canonical definition to state claims against.
-/

/-! ## A342106.P14902128870261231603

`∩[A049642(n+1), A078542(n+1)]`
-/

namespace A342106.P14902128870261231603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342106.P14902128870261231603

/-! ## A342106.P1133649890980721417

`A049642(A165020(n+1)+n)`
-/

namespace A342106.P1133649890980721417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (A165020 (n + 1) + (n : ℤ)).toNat

end

end A342106.P1133649890980721417

/-! ## A342106.P7349976249613743747

`A326713(A101947(n+7)-5)`
-/

namespace A342106.P7349976249613743747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326713 (A101947 (n + 7) - 5).toNat

end

end A342106.P7349976249613743747

/-! ## A342106.P15377214205501202127

`∩[A049642(n+1), A103202(n+1)]`
-/

namespace A342106.P15377214205501202127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342106.P15377214205501202127

/-! ## A342106.P7211903035990581662

`∩[A049642(n+1), A175968(n+1)]`
-/

namespace A342106.P7211903035990581662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342106.P7211903035990581662

/-!
# A342107: a(n) = Sum_{k=0..n} (4*k)!/k!^4.

The programs for A342107, there is no canonical definition to state claims against.
-/

/-! ## A342107.P10204356278775517014

`∑[A008977(n)]`
-/

namespace A342107.P10204356278775517014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342107.P10204356278775517014

/-! ## A342107.P3055420616890214180

`∑[A318105(∑[n])]`
-/

namespace A342107.P3055420616890214180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318105 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342107.P3055420616890214180

/-! ## A342107.P3350076847547988804

`∑[A022917(4*n)]`
-/

namespace A342107.P3350076847547988804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022917 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342107.P3350076847547988804

/-! ## A342107.P9628391552318506482

`∑[(n+1)*A207817(n)]`
-/

namespace A342107.P9628391552318506482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A207817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342107.P9628391552318506482

/-! ## A342107.P4675286747756448136

`∑[(n+1)²*A342983(n)]`
-/

namespace A342107.P4675286747756448136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A342983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342107.P4675286747756448136

/-!
# A342108: Smallest positive integer m with n digits and such that omega(m) = bigomega(m) = n.

The programs for A342108, there is no canonical definition to state claims against.
-/

/-! ## A342108.P2294071194302590931

`A106411(n+1)%A219620(n+1)`
-/

namespace A342108.P2294071194302590931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106411 (n + 1)) (A219620 (n + 1))

end

end A342108.P2294071194302590931

/-! ## A342108.P7521123654827305236

`A106411(n+1)%A106435(A106421(n))`
-/

namespace A342108.P7521123654827305236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106411 (n + 1)) (A106435 (A106421 n).toNat)

end

end A342108.P7521123654827305236

/-! ## A342108.P16561037971873343860

`A106411(A154701(n+1))%A180168(2*n+1)`
-/

namespace A342108.P16561037971873343860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106411 (A154701 (n + 1)).toNat) (A180168 (2 * n + 1))

end

end A342108.P16561037971873343860

/-! ## A342108.P13819845813993311427

`A106411(A134810(n+1))%A035617(3*n+3)`
-/

namespace A342108.P13819845813993311427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106411 (A134810 (n + 1)).toNat) (A035617 (3 * n + 3))

end

end A342108.P13819845813993311427

/-!
# A342110: a(n) = Sum_{k=0..n} Stirling2(n,k) * Stirling2(n,n-k).

The programs for A342110, there is no canonical definition to state claims against.
-/

/-! ## A342110.P7936932064227477768

`A276797(A081209(n)+1)`
-/

namespace A342110.P7936932064227477768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A081209 n + 1).toNat

end

end A342110.P7936932064227477768

/-! ## A342110.P7395426599107240440

`A138468(A138737(n)+2)`
-/

namespace A342110.P7395426599107240440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138468 (A138737 n + 2).toNat

end

end A342110.P7395426599107240440

/-!
# A342111: a(n) = (-1)^n * Sum_{k=0..n} Stirling1(n,k) * Stirling1(n,n-k).

The programs for A342111, there is no canonical definition to state claims against.
-/

/-! ## A342111.P335825454338816760

`A254882(n²)`
-/

namespace A342111.P335825454338816760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254882 (n ^ 2)

end

end A342111.P335825454338816760

/-! ## A342111.P5458764973868648705

`A254882(A061205(n))+char[8]`
-/

namespace A342111.P5458764973868648705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254882 (A061205 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A342111.P5458764973868648705

/-! ## A342111.P16780111971545114109

`gcd(floor(1/(n+1)), A254882(A000290(n)))`
-/

namespace A342111.P16780111971545114109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A254882 (A000290 n).toNat)

end

end A342111.P16780111971545114109

/-! ## A342111.P16564226943630042819

`A254882(A000290(n))+A243966(n)`
-/

namespace A342111.P16564226943630042819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254882 (A000290 n).toNat + A243966 n

end

end A342111.P16564226943630042819

/-!
# A342112: Drop the final digit of n^5.

The programs for A342112, the canonical program `A342112.P6207421774659071581` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342112 has offset 0).

The definition of A342112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342112.P6207421774659071581

`floor(n^5/10)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342112

/-- `floor(n^5/10)` -/
def P6207421774659071581.Spec : Prop :=
  ∀ n, P6207421774659071581.a n = A342112 n

theorem P6207421774659071581.correct : P6207421774659071581.Spec := by
  intro n
  simp only [A342112]

end A342112

/-! ## A342112.P4229304659370097318

`(A000584(n)-A010879(n))/10`
-/

namespace A342112.P4229304659370097318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 n - A010879 n : ℚ) / 10

end

end A342112.P4229304659370097318

namespace A342112

/-- `(A000584(n)-A010879(n))/10` -/
def P4229304659370097318.Spec : Prop :=
  ∀ n, P4229304659370097318.a n = (A342112 n : ℚ)

end A342112

/-! ## A342112.P4343290052923281204

`(n^5-n%10)/10`
-/

namespace A342112.P4343290052923281204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 5 : ℤ) - ((n % 10 : ℕ) : ℤ) : ℚ) / 10

end

end A342112.P4343290052923281204

namespace A342112

/-- `(n^5-n%10)/10` -/
def P4343290052923281204.Spec : Prop :=
  ∀ n, P4343290052923281204.a n = (A342112 n : ℚ)

end A342112

/-! ## A342112.P3651776697886123137

`A131176(n)+∑[char[10*n]]`
-/

namespace A342112.P3651776697886123137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131176 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342112.P3651776697886123137

namespace A342112

/-- `A131176(n)+∑[char[10*n]]` -/
def P3651776697886123137.Spec : Prop :=
  ∀ n, P3651776697886123137.a n = A342112 n

end A342112

/-! ## A342112.P6998725360782661691

`A164938(round(sqrt(n²+1)))+floor(n/10)`
-/

namespace A342112.P6998725360782661691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164938 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ⌊(n : ℚ) / 10⌋

end

end A342112.P6998725360782661691

namespace A342112

/-- `A164938(round(sqrt(n²+1)))+floor(n/10)` -/
def P6998725360782661691.Spec : Prop :=
  ∀ n, P6998725360782661691.a n = A342112 n

end A342112

/-! ## A342112.P16610182696346904857

`A226233(n+1)+A131176(n)`
-/

namespace A342112.P16610182696346904857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (n + 1) + A131176 n

end

end A342112.P16610182696346904857

namespace A342112

/-- `A226233(n+1)+A131176(n)` -/
def P16610182696346904857.Spec : Prop :=
  ∀ n, P16610182696346904857.a n = A342112 n

end A342112

/-!
# A342113: Number of surjective compatible pairs (C,O), where O is an acyclic orientation of simple labeled graph G on n nodes and C:V(G) -> {1,2,...}.

The programs for A342113, there is no canonical definition to state claims against.
-/

/-! ## A342113.P1270759412981121217

`A288227(lcm(a(n-1)+1, A160102(n))+1)-1` with `a(0)=1, a(1)=1`
-/

namespace A342113.P1270759412981121217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A288227 (Int.lcm (a (n - 1) + 1) (A160102 n) + 1) - 1

end

end A342113.P1270759412981121217

/-!
# A342115: Lexicographically latest sequence of distinct nonnegative integers such that the multisets of frequencies of digits in the decimal representations of n and of a(n) are the same.

The programs for A342115, there is no canonical definition to state claims against.
-/

/-! ## A342115.P12505639512804507190

`A055120(A349423(n)%A018341(n+1))`
-/

namespace A342115.P12505639512804507190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (Int.tmod (A349423 n) (A018341 (n + 1))).toNat

end

end A342115.P12505639512804507190

/-! ## A342115.P12270401416484487964

`A055120(A185284(3*n+4)+A065650(n))`
-/

namespace A342115.P12270401416484487964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A185284 (3 * n + 4) + A065650 n).toNat

end

end A342115.P12270401416484487964

/-! ## A342115.P1477701008129802981

`A055120(2*A172535(n+1)+n)`
-/

namespace A342115.P1477701008129802981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (2 * A172535 (n + 1) + (n : ℤ)).toNat

end

end A342115.P1477701008129802981

/-! ## A342115.P5253657608117924369

`A137579(A000383(n))+A055120(n)`
-/

namespace A342115.P5253657608117924369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A000383 n).toNat + A055120 n

end

end A342115.P5253657608117924369

/-! ## A342115.P4818183222426503154

`A184945(A184963(n))+A055120(n)`
-/

namespace A342115.P4818183222426503154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 (A184963 n).toNat + A055120 n

end

end A342115.P4818183222426503154

/-!
# A342119: Numbers k with property that if k has m divisors, there are m/2 divisors of k whose sum is k.

The programs for A342119, there is no canonical definition to state claims against.
-/

/-! ## A342119.P8887062567003759670

`lt[A317624(A018783(n)), A317624(n)]`
-/

namespace A342119.P8887062567003759670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317624 (A018783 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317624 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342119.P8887062567003759670

/-! ## A342119.P47277019490654830

`lt[A007920(n), A086629(A086617(n))]`
-/

namespace A342119.P47277019490654830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086629 (A086617 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342119.P47277019490654830

/-! ## A342119.P9726021718068963613

`A372742(n+1)-A337074(A372763(n+3))`
-/

namespace A342119.P9726021718068963613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372742 (n + 1) - A337074 (A372763 (n + 3)).toNat

end

end A342119.P9726021718068963613

/-!
# A342120: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of g.f. 1/(1 - k*x - k*x^2).

The programs for A342120, there is no canonical definition to state claims against.
-/

/-! ## A342120.P18106897282764015956

`A246935(n)+A033886(A208673(n))`
-/

namespace A342120.P18106897282764015956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 n + A033886 (A208673 n).toNat

end

end A342120.P18106897282764015956

/-! ## A342120.P14575132026674890889

`A246935(n)+A096158(A090182(n))`
-/

namespace A342120.P14575132026674890889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 n + A096158 (A090182 n).toNat

end

end A342120.P14575132026674890889

/-! ## A342120.P3751164567116195478

`A261718(n)-A082859(A289481(n))`
-/

namespace A342120.P3751164567116195478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 n - A082859 (A289481 n).toNat

end

end A342120.P3751164567116195478

/-! ## A342120.P17551379040438534327

`A362125(n)-A082859(A289481(n))`
-/

namespace A342120.P17551379040438534327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 n - A082859 (A289481 n).toNat

end

end A342120.P17551379040438534327

/-! ## A342120.P3460923676198030446

`A246935(n)+A070204(A052335(2*(n+2)))`
-/

namespace A342120.P3460923676198030446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 n + A070204 (A052335 (2 * (n + 2))).toNat

end

end A342120.P3460923676198030446

/-!
# A342121: a(n) is the remainder when the larger of n and its binary reverse is divided by the smaller.

The programs for A342121, the canonical program `A342121.P4889699748064811771` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342121 has offset 1).

The definition of A342121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342121.P9859511733757733133

`A325402(n+1)%A325401(n+1)`
-/

namespace A342121.P9859511733757733133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325402 (n + 1)) (A325401 (n + 1))

end

end A342121.P9859511733757733133

namespace A342121

/-- `A325402(n+1)%A325401(n+1)` -/
def P9859511733757733133.Spec : Prop :=
  ∀ n, P9859511733757733133.a n = A342121 (n + 1)

end A342121

/-! ## A342121.P11232829576086279067

`(A030101(n+1)+n+1)%A325401(n+1)`
-/

namespace A342121.P11232829576086279067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 (n + 1) + (n + 1 : ℤ)) (A325401 (n + 1))

end

end A342121.P11232829576086279067

namespace A342121

/-- `(A030101(n+1)+n+1)%A325401(n+1)` -/
def P11232829576086279067.Spec : Prop :=
  ∀ n, P11232829576086279067.a n = A342121 (n + 1)

end A342121

/-! ## A342121.P4889699748064811771

`abs(A055945(n+1)%(n+1-A055945(n+1)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A342121

/-- `abs(A055945(n+1)%(n+1-A055945(n+1)))` -/
def P4889699748064811771.Spec : Prop :=
  ∀ n, P4889699748064811771.a n = A342121 (n + 1)

theorem P4889699748064811771.correct : P4889699748064811771.Spec := by
  intro n
  simp only [A342121, Nat.add_sub_cancel]

end A342121

/-! ## A342121.P6873075540874264341

`A342123(A325402(n+1))`
-/

namespace A342121.P6873075540874264341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342123 (A325402 (n + 1)).toNat

end

end A342121.P6873075540874264341

namespace A342121

/-- `A342123(A325402(n+1))` -/
def P6873075540874264341.Spec : Prop :=
  ∀ n, P6873075540874264341.a n = A342121 (n + 1)

end A342121

/-! ## A342121.P8192944034310781528

`(A325401(2*(n+1))+n+1)%A325401(n+1)`
-/

namespace A342121.P8192944034310781528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325401 (2 * (n + 1)) + (n + 1 : ℤ)) (A325401 (n + 1))

end

end A342121.P8192944034310781528

namespace A342121

/-- `(A325401(2*(n+1))+n+1)%A325401(n+1)` -/
def P8192944034310781528.Spec : Prop :=
  ∀ n, P8192944034310781528.a n = A342121 (n + 1)

end A342121

/-!
# A342122: a(n) is the remainder when the binary reverse of n is divided by n.

The programs for A342122, the canonical program `A342122.P12413058708882309644` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342122 has offset 1).

The definition of A342122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342122.P12413058708882309644

`A030101(n+1)%(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A342122

/-- `A030101(n+1)%(n+1)` -/
def P12413058708882309644.Spec : Prop :=
  ∀ n, P12413058708882309644.a n = A342122 (n + 1)

theorem P12413058708882309644.correct : P12413058708882309644.Spec := by
  intro n
  simp only [A342122, Nat.add_sub_cancel]

end A342122

/-! ## A342122.P16529523950778518292

`A055944(n+1)%(n+1)`
-/

namespace A342122.P16529523950778518292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055944 (n + 1)) (n + 1 : ℤ)

end

end A342122.P16529523950778518292

namespace A342122

/-- `A055944(n+1)%(n+1)` -/
def P16529523950778518292.Spec : Prop :=
  ∀ n, P16529523950778518292.a n = A342122 (n + 1)

end A342122

/-! ## A342122.P9619051029970776360

`A264618(n+1)%(n+1)`
-/

namespace A342122.P9619051029970776360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264618 (n + 1)) (n + 1 : ℤ)

end

end A342122.P9619051029970776360

namespace A342122

/-- `A264618(n+1)%(n+1)` -/
def P9619051029970776360.Spec : Prop :=
  ∀ n, P9619051029970776360.a n = A342122 (n + 1)

end A342122

/-! ## A342122.P8388529945176714817

`A056539((n+1)/2^val(n+1, 2))%(n+1)`
-/

namespace A342122.P8388529945176714817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056539 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (n + 1 : ℤ)

end

end A342122.P8388529945176714817

namespace A342122

/-- `A056539((n+1)/2^val(n+1, 2))%(n+1)` -/
def P8388529945176714817.Spec : Prop :=
  ∀ n, P8388529945176714817.a n = A342122 (n + 1)

end A342122

/-! ## A342122.P12544063372756951674

`A057889((n+1)/xor(n+1, and(n, n+1)))%(n+1)`
-/

namespace A342122.P12544063372756951674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057889 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor (n + 1) (Nat.land n (n + 1)) : ℚ))).toNat) (n + 1 : ℤ)

end

end A342122.P12544063372756951674

namespace A342122

/-- `A057889((n+1)/xor(n+1, and(n, n+1)))%(n+1)` -/
def P12544063372756951674.Spec : Prop :=
  ∀ n, P12544063372756951674.a n = A342122 (n + 1)

end A342122

/-! ## A342122.P9663347056525354107

`A056539(A000265(n+1))%(n+1)`
-/

namespace A342122.P9663347056525354107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056539 (A000265 (n + 1)).toNat) (n + 1 : ℤ)

end

end A342122.P9663347056525354107

namespace A342122

/-- `A056539(A000265(n+1))%(n+1)` -/
def P9663347056525354107.Spec : Prop :=
  ∀ n, P9663347056525354107.a n = A342122 (n + 1)

end A342122

/-! ## A342122.P4430606060242621057

`A006257(A059893(n+1))%(n+1)`
-/

namespace A342122.P4430606060242621057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006257 (A059893 (n + 1)).toNat) (n + 1 : ℤ)

end

end A342122.P4430606060242621057

namespace A342122

/-- `A006257(A059893(n+1))%(n+1)` -/
def P4430606060242621057.Spec : Prop :=
  ∀ n, P4430606060242621057.a n = A342122 (n + 1)

end A342122

/-! ## A342122.P2010885979860626043

`A048701(n+1)%(n+1)`
-/

namespace A342122.P2010885979860626043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048701 (n + 1)) (n + 1 : ℤ)

end

end A342122.P2010885979860626043

namespace A342122

/-- `A048701(n+1)%(n+1)` -/
def P2010885979860626043.Spec : Prop :=
  ∀ n, P2010885979860626043.a n = A342122 (n + 1)

end A342122

/-! ## A342122.P8842519808318681053

`A281589(2*(n+1))%(n+1)`
-/

namespace A342122.P8842519808318681053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281589 (2 * (n + 1))) (n + 1 : ℤ)

end

end A342122.P8842519808318681053

namespace A342122

/-- `A281589(2*(n+1))%(n+1)` -/
def P8842519808318681053.Spec : Prop :=
  ∀ n, P8842519808318681053.a n = A342122 (n + 1)

end A342122

/-! ## A342122.P9707072878710492185

`record[A162749(n+1)]%(n+1)`
-/

namespace A342122.P9707072878710492185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A342122.P9707072878710492185

namespace A342122

/-- `record[A162749(n+1)]%(n+1)` -/
def P9707072878710492185.Spec : Prop :=
  ∀ n, P9707072878710492185.a n = A342122 (n + 1)

end A342122

/-! ## A342122.P5081096643420719170

`A048700(2*(n+1))%(n+1)`
-/

namespace A342122.P5081096643420719170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048700 (2 * (n + 1))) (n + 1 : ℤ)

end

end A342122.P5081096643420719170

namespace A342122

/-- `A048700(2*(n+1))%(n+1)` -/
def P5081096643420719170.Spec : Prop :=
  ∀ n, P5081096643420719170.a n = A342122 (n + 1)

end A342122

/-! ## A342122.P6797647285472811235

`A006995(∑[A099894(n)]+n+2)%(n+1)`
-/

namespace A342122.P6797647285472811235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006995 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)).toNat) (n + 1 : ℤ)

end

end A342122.P6797647285472811235

namespace A342122

/-- `A006995(∑[A099894(n)]+n+2)%(n+1)` -/
def P6797647285472811235.Spec : Prop :=
  ∀ n, P6797647285472811235.a n = A342122 (n + 1)

end A342122

/-!
# A342123: a(n) is the remainder when n is divided by its binary reverse.

The programs for A342123, the canonical program `A342123.P16507529077351676722` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342123 has offset 1).

The definition of A342123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342123.P13583459305600407061

`(n+1)%A030101(n+1)`
-/

namespace A342123.P13583459305600407061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A030101 (n + 1))

end

end A342123.P13583459305600407061

namespace A342123

/-- `(n+1)%A030101(n+1)` -/
def P13583459305600407061.Spec : Prop :=
  ∀ n, P13583459305600407061.a n = A342123 (n + 1)

end A342123

/-! ## A342123.P16507529077351676722

`-(-(n+1)%(n+1-A055945(n+1)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A342123

/-- `-(-(n+1)%(n+1-A055945(n+1)))` -/
def P16507529077351676722.Spec : Prop :=
  ∀ n, P16507529077351676722.a n = A342123 (n + 1)

theorem P16507529077351676722.correct : P16507529077351676722.Spec := by
  intro n
  simp only [A342123, Nat.add_sub_cancel]

end A342123

/-! ## A342123.P8147485396611169503

`A055944(n+1)%(n+1-A055944(n+1))`
-/

namespace A342123.P8147485396611169503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055944 (n + 1)) ((n + 1 : ℤ) - A055944 (n + 1))

end

end A342123.P8147485396611169503

namespace A342123

/-- `A055944(n+1)%(n+1-A055944(n+1))` -/
def P8147485396611169503.Spec : Prop :=
  ∀ n, P8147485396611169503.a n = A342123 (n + 1)

end A342123

/-! ## A342123.P10880874059374298630

`A000027(n+1)%A056539((n+1)/2^val(n+1, 2))`
-/

namespace A342123.P10880874059374298630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A056539 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A342123.P10880874059374298630

namespace A342123

/-- `A000027(n+1)%A056539((n+1)/2^val(n+1, 2))` -/
def P10880874059374298630.Spec : Prop :=
  ∀ n, P10880874059374298630.a n = A342123 (n + 1)

end A342123

/-! ## A342123.P6701368270185121320

`A000027(n+1)%A006257(A059893(n+1))`
-/

namespace A342123.P6701368270185121320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A006257 (A059893 (n + 1)).toNat)

end

end A342123.P6701368270185121320

namespace A342123

/-- `A000027(n+1)%A006257(A059893(n+1))` -/
def P6701368270185121320.Spec : Prop :=
  ∀ n, P6701368270185121320.a n = A342123 (n + 1)

end A342123

/-! ## A342123.P773925517939121034

`C(n+1, n)%A325401(2*(n+1))`
-/

namespace A342123.P773925517939121034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 1) n : ℤ) (A325401 (2 * (n + 1)))

end

end A342123.P773925517939121034

namespace A342123

/-- `C(n+1, n)%A325401(2*(n+1))` -/
def P773925517939121034.Spec : Prop :=
  ∀ n, P773925517939121034.a n = A342123 (n + 1)

end A342123

/-! ## A342123.P9819000407236716822

`A335615(A335615(n+1))%A325401(2*(n+1))`
-/

namespace A342123.P9819000407236716822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335615 (A335615 (n + 1)).toNat) (A325401 (2 * (n + 1)))

end

end A342123.P9819000407236716822

namespace A342123

/-- `A335615(A335615(n+1))%A325401(2*(n+1))` -/
def P9819000407236716822.Spec : Prop :=
  ∀ n, P9819000407236716822.a n = A342123 (n + 1)

end A342123

/-! ## A342123.P5079662471154092468

`A004525(2*(n+1))%(n+1-A055945(n+1))`
-/

namespace A342123.P5079662471154092468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (2 * (n + 1))) ((n + 1 : ℤ) - A055945 (n + 1))

end

end A342123.P5079662471154092468

namespace A342123

/-- `A004525(2*(n+1))%(n+1-A055945(n+1))` -/
def P5079662471154092468.Spec : Prop :=
  ∀ n, P5079662471154092468.a n = A342123 (n + 1)

end A342123

/-! ## A342123.P18271598002904678943

`A055944(n+1)%A130734(A055944(n+1)-n)`
-/

namespace A342123.P18271598002904678943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055944 (n + 1)) (A130734 (A055944 (n + 1) - (n : ℤ)).toNat)

end

end A342123.P18271598002904678943

namespace A342123

/-- `A055944(n+1)%A130734(A055944(n+1)-n)` -/
def P18271598002904678943.Spec : Prop :=
  ∀ n, P18271598002904678943.a n = A342123 (n + 1)

end A342123

/-!
# A342125: Records in A110765.

The programs for A342125, there is no canonical definition to state claims against.
-/

/-! ## A342125.P2296719523388565559

`record[lcm(A020639(2*(n+1)), A248164(n+2))]`
-/

namespace A342125.P2296719523388565559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (2 * (n + 1))) (A248164 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342125.P2296719523388565559

/-! ## A342125.P11753474968244983162

`record[A110765(n+1)]`
-/

namespace A342125.P11753474968244983162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342125.P11753474968244983162

/-! ## A342125.P6516648654097691344

`record[lcm(2, A277330(n))]`
-/

namespace A342125.P6516648654097691344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A277330 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342125.P6516648654097691344

/-! ## A342125.P505152489848840299

`record[2*A277330(2*n)]`
-/

namespace A342125.P505152489848840299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277330 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342125.P505152489848840299

/-! ## A342125.P12693326146624348235

`record[A019565(A030101(n+1))]`
-/

namespace A342125.P12693326146624348235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A030101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342125.P12693326146624348235

/-!
# A342126: The binary expansion of a(n) corresponds to that of n where all the 1's have been replaced by 0's except in the first run of 1's.

The programs for A342126, the canonical program `A342126.P13514066496315759723` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342126 has offset 0).

The definition of A342126 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087734, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342126.P13514066496315759723

`n-A087734(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A342126

/-- `n-A087734(n)` -/
def P13514066496315759723.Spec : Prop :=
  ∀ n, P13514066496315759723.a n = A342126 n

theorem P13514066496315759723.correct : P13514066496315759723.Spec := by
  intro n
  simp only [A342126]

end A342126

/-! ## A342126.P3307888779171132492

`char[2^n-1]+2*a(floor(n/2))` with `a(0)=0`
-/

namespace A342126.P3307888779171132492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A342126.P3307888779171132492

namespace A342126

/-- `char[2^n-1]+2*a(floor(n/2))` -/
def P3307888779171132492.Spec : Prop :=
  ∀ n, (P3307888779171132492.a n : ℤ) = A342126 n

end A342126

/-! ## A342126.P14707231098823608432

`or(2*a(floor(n/2)), char[2^n-1])` with `a(0)=0`
-/

namespace A342126.P14707231098823608432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (2 * a ⌊(n : ℚ) / 2⌋.toNat) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A342126.P14707231098823608432

namespace A342126

/-- `or(2*a(floor(n/2)), char[2^n-1])` -/
def P14707231098823608432.Spec : Prop :=
  ∀ n, (P14707231098823608432.a n : ℤ) = A342126 n

end A342126

/-! ## A342126.P15711292199265555161

`xor(2*a(floor(n/2)), char[2^n-1])` with `a(0)=0`
-/

namespace A342126.P15711292199265555161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (2 * a ⌊(n : ℚ) / 2⌋.toNat) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A342126.P15711292199265555161

namespace A342126

/-- `xor(2*a(floor(n/2)), char[2^n-1])` -/
def P15711292199265555161.Spec : Prop :=
  ∀ n, (P15711292199265555161.a n : ℤ) = A342126 n

end A342126

/-! ## A342126.P2060019461857434063

`and(n, A080542(a(n-1)+1))` with `a(0)=0`
-/

namespace A342126.P2060019461857434063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (n : ℤ) (A080542 (a (n - 1) + 1).toNat)

end

end A342126.P2060019461857434063

namespace A342126

/-- `and(n, A080542(a(n-1)+1))` -/
def P2060019461857434063.Spec : Prop :=
  ∀ n, P2060019461857434063.a n = A342126 n

end A342126

/-! ## A342126.P10577010968331274815

`A023758(∑[A340375(n)])`
-/

namespace A342126.P10577010968331274815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342126.P10577010968331274815

namespace A342126

/-- `A023758(∑[A340375(n)])` -/
def P10577010968331274815.Spec : Prop :=
  ∀ n, P10577010968331274815.a n = A342126 n

end A342126

/-! ## A342126.P10009971552641366700

`A023758(∑[char[A023758(n+1)]])`
-/

namespace A342126.P10009971552641366700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342126.P10009971552641366700

namespace A342126

/-- `A023758(∑[char[A023758(n+1)]])` -/
def P10009971552641366700.Spec : Prop :=
  ∀ n, P10009971552641366700.a n = A342126 n

end A342126

/-! ## A342126.P18413140460307519826

`A087734(n)*A260196(n)+n`
-/

namespace A342126.P18413140460307519826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n * A260196 n + (n : ℤ)

end

end A342126.P18413140460307519826

namespace A342126

/-- `A087734(n)*A260196(n)+n` -/
def P18413140460307519826.Spec : Prop :=
  ∀ n, P18413140460307519826.a n = A342126 n

end A342126

/-! ## A342126.P16689825201917128194

`and(n, A006257(A035327(n))+n)`
-/

namespace A342126.P16689825201917128194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A006257 (A035327 n).toNat + (n : ℤ))

end

end A342126.P16689825201917128194

namespace A342126

/-- `and(n, A006257(A035327(n))+n)` -/
def P16689825201917128194.Spec : Prop :=
  ∀ n, P16689825201917128194.a n = A342126 n

end A342126

/-! ## A342126.P15149645435200672451

`n-and(n, A233279(A038554(n)))`
-/

namespace A342126.P15149645435200672451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A233279 (A038554 n).toNat)

end

end A342126.P15149645435200672451

namespace A342126

/-- `n-and(n, A233279(A038554(n)))` -/
def P15149645435200672451.Spec : Prop :=
  ∀ n, P15149645435200672451.a n = A342126 n

end A342126

/-! ## A342126.P8211549785316478640

`A003817(n)-A003817(A038554(n))`
-/

namespace A342126.P8211549785316478640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A003817 (A038554 n).toNat

end

end A342126.P8211549785316478640

namespace A342126

/-- `A003817(n)-A003817(A038554(n))` -/
def P8211549785316478640.Spec : Prop :=
  ∀ n, P8211549785316478640.a n = A342126 n

end A342126

/-! ## A342126.P5506281726322122260

`A006257(A003817(n)-n)+A006257(n)`
-/

namespace A342126.P5506281726322122260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A003817 n - (n : ℤ)).toNat + A006257 n

end

end A342126.P5506281726322122260

namespace A342126

/-- `A006257(A003817(n)-n)+A006257(n)` -/
def P5506281726322122260.Spec : Prop :=
  ∀ n, P5506281726322122260.a n = A342126 n

end A342126

/-! ## A342126.P8699811541082875679

`A006257(n-A006257(n))+A006257(n)`
-/

namespace A342126.P8699811541082875679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 ((n : ℤ) - A006257 n).toNat + A006257 n

end

end A342126.P8699811541082875679

namespace A342126

/-- `A006257(n-A006257(n))+A006257(n)` -/
def P8699811541082875679.Spec : Prop :=
  ∀ n, P8699811541082875679.a n = A342126 n

end A342126

/-! ## A342126.P8531886413207645477

`A003817(n)-A003817(A003817(n)-n)`
-/

namespace A342126.P8531886413207645477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A003817 (A003817 n - (n : ℤ)).toNat

end

end A342126.P8531886413207645477

namespace A342126

/-- `A003817(n)-A003817(A003817(n)-n)` -/
def P8531886413207645477.Spec : Prop :=
  ∀ n, P8531886413207645477.a n = A342126 n

end A342126

/-! ## A342126.P11698677434967374124

`A010078(n+1)-A038572(A010078(n+1)-n)`
-/

namespace A342126.P11698677434967374124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (n + 1) - A038572 (A010078 (n + 1) - (n : ℤ)).toNat

end

end A342126.P11698677434967374124

namespace A342126

/-- `A010078(n+1)-A038572(A010078(n+1)-n)` -/
def P11698677434967374124.Spec : Prop :=
  ∀ n, P11698677434967374124.a n = A342126 n

end A342126

/-! ## A342126.P9230547080818044701

`A003817(A028310(n))-A003817(A035327(n))`
-/

namespace A342126.P9230547080818044701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A028310 n).toNat - A003817 (A035327 n).toNat

end

end A342126.P9230547080818044701

namespace A342126

/-- `A003817(A028310(n))-A003817(A035327(n))` -/
def P9230547080818044701.Spec : Prop :=
  ∀ n, P9230547080818044701.a n = A342126 n

end A342126

/-! ## A342126.P11757998847237672609

`and(n, A381852(n))`
-/

namespace A342126.P11757998847237672609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A381852 n)

end

end A342126.P11757998847237672609

namespace A342126

/-- `and(n, A381852(n))` -/
def P11757998847237672609.Spec : Prop :=
  ∀ n, P11757998847237672609.a n = A342126 n

end A342126

/-! ## A342126.P4349333536734063951

`A292264(A213064(n))-A292264(A229763(n))`
-/

namespace A342126.P4349333536734063951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 (A213064 n).toNat - A292264 (A229763 n).toNat

end

end A342126.P4349333536734063951

namespace A342126

/-- `A292264(A213064(n))-A292264(A229763(n))` -/
def P4349333536734063951.Spec : Prop :=
  ∀ n, P4349333536734063951.a n = A342126 n

end A342126

/-! ## A342126.P10912219630196012843

`A053645(A035327(2*n))+A006257(n)`
-/

namespace A342126.P10912219630196012843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A035327 (2 * n)).toNat + A006257 n

end

end A342126.P10912219630196012843

namespace A342126

/-- `A053645(A035327(2*n))+A006257(n)` -/
def P10912219630196012843.Spec : Prop :=
  ∀ n, P10912219630196012843.a n = A342126 n

end A342126

/-! ## A342126.P5780743358988598441

`2*n-A266341(2*n)`
-/

namespace A342126.P5780743358988598441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A266341 (2 * n)

end

end A342126.P5780743358988598441

namespace A342126

/-- `2*n-A266341(2*n)` -/
def P5780743358988598441.Spec : Prop :=
  ∀ n, P5780743358988598441.a n = A342126 n

end A342126

/-!
# A342128: Table read by antidiagonals upwards: T(n,k) is the number of n-colorings of the vertices of the k-dimensional hypercube such that no two adjacent vertices have the same color. n >= 0, k >=0.

The programs for A342128, there is no canonical definition to state claims against.
-/

/-! ## A342128.P15610556910690412835

`A353434(comp[∑[n]])%A007274(n)`
-/

namespace A342128.P15610556910690412835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353434 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A007274 n)

end

end A342128.P15610556910690412835

/-! ## A342128.P3269034741320766397

`A086617(n+1)-A118458(A269945(n))`
-/

namespace A342128.P3269034741320766397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086617 (n + 1) - A118458 (A269945 n).toNat

end

end A342128.P3269034741320766397

/-! ## A342128.P15683055059327585480

`A086617(n+1)-A054911(A346415(n))`
-/

namespace A342128.P15683055059327585480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086617 (n + 1) - A054911 (A346415 n).toNat

end

end A342128.P15683055059327585480

/-! ## A342128.P8677168249293387988

`A086617(n+1)-A118458(A326474(n))`
-/

namespace A342128.P8677168249293387988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086617 (n + 1) - A118458 (A326474 n).toNat

end

end A342128.P8677168249293387988

/-! ## A342128.P3545845665698362260

`A101515(n+1)-A118458(A326474(n))`
-/

namespace A342128.P3545845665698362260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101515 (n + 1) - A118458 (A326474 n).toNat

end

end A342128.P3545845665698362260

/-!
# A342129: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of g.f. 1/(1 - k*x + k*x^2).

The programs for A342129, there is no canonical definition to state claims against.
-/

/-! ## A342129.P9505299830420416058

`A350529(n)-A007814(A112492(n))`
-/

namespace A342129.P9505299830420416058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n - A007814 (A112492 n).toNat

end

end A342129.P9505299830420416058

/-! ## A342129.P6549887667788541056

`A353434(n)-A007814(A112492(n))`
-/

namespace A342129.P6549887667788541056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 n - A007814 (A112492 n).toNat

end

end A342129.P6549887667788541056

/-! ## A342129.P10618954322507003804

`A349841(n)%A178557(n+1)-A114511(2*n+3)`
-/

namespace A342129.P10618954322507003804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349841 n) (A178557 (n + 1)) - A114511 (2 * n + 3)

end

end A342129.P10618954322507003804

/-! ## A342129.P12178197040195160381

`A246935(n)/A240473(A156885(n))-A114511(2*n+3)`
-/

namespace A342129.P12178197040195160381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246935 n : ℚ) / (A240473 (A156885 n).toNat : ℚ) - (A114511 (2 * n + 3) : ℚ)

end

end A342129.P12178197040195160381

/-! ## A342129.P6919847943509408307

`A213276(n)-A381596(A362297(n))`
-/

namespace A342129.P6919847943509408307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 n - A381596 (A362297 n).toNat

end

end A342129.P6919847943509408307

/-!
# A342130: Decimal numbers m such that the product of the binary string of m and the binary string of m in reverse contains the binary string of m as a substring.

The programs for A342130, there is no canonical definition to state claims against.
-/

/-! ## A342130.P15033680601365833464

`lt[A328621(n^ceil(atan(n))), 2]`
-/

namespace A342130.P15033680601365833464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328621 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342130.P15033680601365833464

/-! ## A342130.P14592373209471412085

`eq[1, A327938(A253909(n))]`
-/

namespace A342130.P14592373209471412085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342130.P14592373209471412085

/-! ## A342130.P18382428750080032275

`eq[3, A244540(A305427(n))]`
-/

namespace A342130.P18382428750080032275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 (A305427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342130.P18382428750080032275

/-! ## A342130.P3281228994765942150

`lt[A328621(A028310(n)²), 2]`
-/

namespace A342130.P3281228994765942150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328621 (A028310 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342130.P3281228994765942150

/-! ## A342130.P16981875100944502917

`lt[A126854(A103391(n+1)), 3]`
-/

namespace A342130.P16981875100944502917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126854 (A103391 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342130.P16981875100944502917

/-!
# A342131: a(n) = n/2 + floor(n/4) if n is even, otherwise (3*n+1)/2.

The programs for A342131, the canonical program `A342131.P9652403593750036203` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342131 has offset 0).

The definition of A342131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342131.P9652403593750036203

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=5, a(4)=3, a(5)=8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342131

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P9652403593750036203.Spec : Prop :=
  ∀ n, P9652403593750036203.a n = A342131 n

theorem P9652403593750036203.correct : P9652403593750036203.Spec := by
  intro n
  simp only [A342131]

end A342131

/-! ## A342131.P2352833861412197126

`9*n-2*a(n-1)-2*a(n-2)-2*a(n-3)-a(n-4)-17` with `a(0)=0, a(1)=2, a(2)=1, a(3)=5`
-/

namespace A342131.P2352833861412197126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 5] fun n a =>
  (9 * n : ℤ) - 2 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) - 17

end

end A342131.P2352833861412197126

namespace A342131

/-- `9*n-2*a(n-1)-2*a(n-2)-2*a(n-3)-a(n-4)-17` -/
def P2352833861412197126.Spec : Prop :=
  ∀ n, P2352833861412197126.a n = A342131 n

end A342131

/-! ## A342131.P11780120277872884130

`A006368(n+1)-1`
-/

namespace A342131.P11780120277872884130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (n + 1) - 1

end

end A342131.P11780120277872884130

namespace A342131

/-- `A006368(n+1)-1` -/
def P11780120277872884130.Spec : Prop :=
  ∀ n, P11780120277872884130.a n = A342131 n

end A342131

/-! ## A342131.P6959876606428162801

`a(xor(1, n-3))+3` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A342131.P6959876606428162801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (Int.xor 1 ((n : ℤ) - 3)).toNat + 3

end

end A342131.P6959876606428162801

namespace A342131

/-- `a(xor(1, n-3))+3` -/
def P6959876606428162801.Spec : Prop :=
  ∀ n, (P6959876606428162801.a n : ℤ) = A342131 n

end A342131

/-! ## A342131.P17072359516700879989

`floor(ceil(3*n/2)/gcd(2, n))`
-/

namespace A342131.P17072359516700879989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈3 * ((n : ℚ) / 2)⌉ : ℚ) / (Nat.gcd 2 n : ℚ)⌋

end

end A342131.P17072359516700879989

namespace A342131

/-- `floor(ceil(3*n/2)/gcd(2, n))` -/
def P17072359516700879989.Spec : Prop :=
  ∀ n, P17072359516700879989.a n = A342131 n

end A342131

/-! ## A342131.P14255647656853138497

`floor(Δ[floor(3*n/2)²]/4)`
-/

namespace A342131.P14255647656853138497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 4⌋

end

end A342131.P14255647656853138497

namespace A342131

/-- `floor(Δ[floor(3*n/2)²]/4)` -/
def P14255647656853138497.Spec : Prop :=
  ∀ n, P14255647656853138497.a n = A342131 n

end A342131

/-! ## A342131.P3950111454473839051

`a(n-2)%3+a(n-2)+1` with `a(0)=0, a(1)=2`
-/

namespace A342131.P3950111454473839051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) % 3 + (a (n - 2) + 1)

end

end A342131.P3950111454473839051

namespace A342131

/-- `a(n-2)%3+a(n-2)+1` -/
def P3950111454473839051.Spec : Prop :=
  ∀ n, (P3950111454473839051.a n : ℤ) = A342131 n

end A342131

/-! ## A342131.P8494554247950146997

`1-(-a(n-2)%3-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A342131.P8494554247950146997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - (Int.tmod (-a (n - 2)) 3 - a (n - 2))

end

end A342131.P8494554247950146997

namespace A342131

/-- `1-(-a(n-2)%3-a(n-2))` -/
def P8494554247950146997.Spec : Prop :=
  ∀ n, P8494554247950146997.a n = A342131 n

end A342131

/-! ## A342131.P1595198757830643367

`ceil(A165367(n)/2)-1`
-/

namespace A342131.P1595198757830643367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165367 n : ℚ) / 2⌉ - 1

end

end A342131.P1595198757830643367

namespace A342131

/-- `ceil(A165367(n)/2)-1` -/
def P1595198757830643367.Spec : Prop :=
  ∀ n, P1595198757830643367.a n = A342131 n

end A342131

/-! ## A342131.P10395078942699234054

`∑[n%2]-(ceil((2-A064680(n))/2)-1)`
-/

namespace A342131.P10395078942699234054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (⌈(2 - A064680 n : ℚ) / 2⌉ - 1)

end

end A342131.P10395078942699234054

namespace A342131

/-- `∑[n%2]-(ceil((2-A064680(n))/2)-1)` -/
def P10395078942699234054.Spec : Prop :=
  ∀ n, P10395078942699234054.a n = A342131 n

end A342131

/-! ## A342131.P14517143289810326458

`A249693(A263426(n))`
-/

namespace A342131.P14517143289810326458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 (A263426 n).toNat

end

end A342131.P14517143289810326458

namespace A342131

/-- `A249693(A263426(n))` -/
def P14517143289810326458.Spec : Prop :=
  ∀ n, P14517143289810326458.a n = A342131 n

end A342131

/-! ## A342131.P12648303198303569523

`A124072(n)+A026741(n)`
-/

namespace A342131.P12648303198303569523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 n + A026741 n

end

end A342131.P12648303198303569523

namespace A342131

/-- `A124072(n)+A026741(n)` -/
def P12648303198303569523.Spec : Prop :=
  ∀ n, P12648303198303569523.a n = A342131 n

end A342131

/-! ## A342131.P15377830167051226369

`A249693(n)-A056594(n)`
-/

namespace A342131.P15377830167051226369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 n - A056594 n

end

end A342131.P15377830167051226369

namespace A342131

/-- `A249693(n)-A056594(n)` -/
def P15377830167051226369.Spec : Prop :=
  ∀ n, P15377830167051226369.a n = A342131 n

end A342131

/-! ## A342131.P18353189771591438522

`A168221(A006369(n+1))-1`
-/

namespace A342131.P18353189771591438522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168221 (A006369 (n + 1)).toNat - 1

end

end A342131.P18353189771591438522

namespace A342131

/-- `A168221(A006369(n+1))-1` -/
def P18353189771591438522.Spec : Prop :=
  ∀ n, P18353189771591438522.a n = A342131 n

end A342131

/-! ## A342131.P9854127292804414900

`A367286(n)-A168223(n+1)`
-/

namespace A342131.P9854127292804414900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367286 n - A168223 (n + 1)

end

end A342131.P9854127292804414900

namespace A342131

/-- `A367286(n)-A168223(n+1)` -/
def P9854127292804414900.Spec : Prop :=
  ∀ n, P9854127292804414900.a n = A342131 n

end A342131

/-! ## A342131.P12963783456203712260

`A124072(n)+n/A040001(n)`
-/

namespace A342131.P12963783456203712260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124072 n : ℚ) + (n : ℚ) / (A040001 n : ℚ)

end

end A342131.P12963783456203712260

namespace A342131

/-- `A124072(n)+n/A040001(n)` -/
def P12963783456203712260.Spec : Prop :=
  ∀ n, P12963783456203712260.a n = (A342131 n : ℚ)

end A342131

/-! ## A342131.P6360335719922311842

`(A165367(n)-A236398(n+1))/2`
-/

namespace A342131.P6360335719922311842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165367 n - A236398 (n + 1) : ℚ) / 2

end

end A342131.P6360335719922311842

namespace A342131

/-- `(A165367(n)-A236398(n+1))/2` -/
def P6360335719922311842.Spec : Prop :=
  ∀ n, P6360335719922311842.a n = (A342131 n : ℚ)

end A342131

/-! ## A342131.P5494606643828465828

`A006369(n+1)-(A168223(n+1)+1)`
-/

namespace A342131.P5494606643828465828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (n + 1) - (A168223 (n + 1) + 1)

end

end A342131.P5494606643828465828

namespace A342131

/-- `A006369(n+1)-(A168223(n+1)+1)` -/
def P5494606643828465828.Spec : Prop :=
  ∀ n, P5494606643828465828.a n = A342131 n

end A342131

/-! ## A342131.P15360495130083494951

`A349352(n+1)-(A349351(n+1)+1)`
-/

namespace A342131.P15360495130083494951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349352 (n + 1) - (A349351 (n + 1) + 1)

end

end A342131.P15360495130083494951

namespace A342131

/-- `A349352(n+1)-(A349351(n+1)+1)` -/
def P15360495130083494951.Spec : Prop :=
  ∀ n, P15360495130083494951.a n = A342131 n

end A342131

/-! ## A342131.P17529257934876504544

`A074306(A159966(n+1))-1`
-/

namespace A342131.P17529257934876504544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A159966 (n + 1)).toNat - 1

end

end A342131.P17529257934876504544

namespace A342131

/-- `A074306(A159966(n+1))-1` -/
def P17529257934876504544.Spec : Prop :=
  ∀ n, P17529257934876504544.a n = A342131 n

end A342131

/-!
# A342132: Number of unlabeled vertically indecomposable modular lattices on n nodes.

The programs for A342132, there is no canonical definition to state claims against.
-/

/-! ## A342132.P14572626608098487451

`A178798(A000041(n+1))+A000676(n)`
-/

namespace A342132.P14572626608098487451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000041 (n + 1)).toNat + A000676 n

end

end A342132.P14572626608098487451

/-! ## A342132.P7505685953559575353

`A178798(A119620(2*(n+1)))+A000676(n)`
-/

namespace A342132.P7505685953559575353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A119620 (2 * (n + 1))).toNat + A000676 n

end

end A342132.P7505685953559575353

/-! ## A342132.P3099202870940660754

`A167700(n)+A135664(A056971(n))`
-/

namespace A342132.P3099202870940660754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 n + A135664 (A056971 n).toNat

end

end A342132.P3099202870940660754

/-!
# A342133: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of g.f. 1/(1 - 2*k*x + k*x^2).

The programs for A342133, there is no canonical definition to state claims against.
-/

/-! ## A342133.P14860176150440906146

`A055570(A213028(n)+A014473(n))`
-/

namespace A342133.P14860176150440906146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A213028 n + A014473 n).toNat

end

end A342133.P14860176150440906146

/-! ## A342133.P7890776939690395599

`A287698(n)+A037800(A022172(n))`
-/

namespace A342133.P7890776939690395599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287698 n + A037800 (A022172 n).toNat

end

end A342133.P7890776939690395599

/-! ## A342133.P12180456089897984343

`A287698(n)+A001222(A156581(n))`
-/

namespace A342133.P12180456089897984343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287698 n + A001222 (A156581 n).toNat

end

end A342133.P12180456089897984343

/-! ## A342133.P2598390346488981833

`A067693(A090981(n))*A080934(n)`
-/

namespace A342133.P2598390346488981833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A090981 n).toNat * A080934 n

end

end A342133.P2598390346488981833

/-! ## A342133.P10099418410334466880

`A067693(A090981(n))*A143841(n)`
-/

namespace A342133.P10099418410334466880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A090981 n).toNat * A143841 n

end

end A342133.P10099418410334466880

/-!
# A342134: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of g.f. 1/(1 - 2*k*x - k*x^2).

The programs for A342134, there is no canonical definition to state claims against.
-/

/-! ## A342134.P9394463068393123374

`A001511(A319511(n))*A071919(n)`
-/

namespace A342134.P9394463068393123374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A319511 n).toNat * A071919 n

end

end A342134.P9394463068393123374

/-! ## A342134.P14505155153244478983

`A001511(A319511(n))*A261835(n)`
-/

namespace A342134.P14505155153244478983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A319511 n).toNat * A261835 n

end

end A342134.P14505155153244478983

/-! ## A342134.P1442912068199748089

`A001511(A319511(n))*A339649(n)`
-/

namespace A342134.P1442912068199748089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A319511 n).toNat * A339649 n

end

end A342134.P1442912068199748089

/-! ## A342134.P13586208777896535021

`A071919(n)*A307668(A004885(n+1))`
-/

namespace A342134.P13586208777896535021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A307668 (A004885 (n + 1)).toNat

end

end A342134.P13586208777896535021

/-! ## A342134.P17972781440350433907

`A261835(n)*A307668(A004885(n+1))`
-/

namespace A342134.P17972781440350433907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261835 n * A307668 (A004885 (n + 1)).toNat

end

end A342134.P17972781440350433907

/-!
# A342135: Lexicographically earliest strictly increasing sequence whose concatenation is equal to that of the longest common substrings (see comment) of consecutive terms.

The programs for A342135, there is no canonical definition to state claims against.
-/

/-! ## A342135.P9000422297322956304

`A231920(∑[a(n-1)+24])` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A342135.P9000422297322956304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 4] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342135.P9000422297322956304

/-!
# A342138: Array T(n,k) = (n+k)*(3*n+3*k-5)/2 + (3*k+1), read by ascending antidiagonals.

The programs for A342138, the canonical program `A342138.P3175785008254554819` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342138 has offset 0).

The definition of A342138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342138.P6755529698073436722

`3*n+5-∑[4*char[∑[n]]]`
-/

namespace A342138.P6755529698073436722
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 5 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342138.P6755529698073436722

namespace A342138

/-- `3*n+5-∑[4*char[∑[n]]]` -/
def P6755529698073436722.Spec : Prop :=
  ∀ n, P6755529698073436722.a n = A342138 n

end A342138

/-! ## A342138.P3175785008254554819

`∑[or(A103452(n), A122553(n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A342138

/-- `∑[or(A103452(n), A122553(n))]` -/
def P3175785008254554819.Spec : Prop :=
  ∀ n, P3175785008254554819.a n = A342138 n

theorem P3175785008254554819.correct : P3175785008254554819.Spec := by
  intro n
  simp only [A342138]

end A342138

/-! ## A342138.P1802211470675856487

`(9*(n+1))%(lt[1, A007318(n)]+2*n)`
-/

namespace A342138.P1802211470675856487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1) % (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 * n)

end

end A342138.P1802211470675856487

namespace A342138

/-- `(9*(n+1))%(lt[1, A007318(n)]+2*n)` -/
def P1802211470675856487.Spec : Prop :=
  ∀ n, (P1802211470675856487.a n : ℤ) = A342138 n

end A342138

/-! ## A342138.P5081869463220678174

`A017017(n)%A111284(A003056(n)+2+n)`
-/

namespace A342138.P5081869463220678174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017017 n) (A111284 (A003056 n + 2 + (n : ℤ)).toNat)

end

end A342138.P5081869463220678174

namespace A342138

/-- `A017017(n)%A111284(A003056(n)+2+n)` -/
def P5081869463220678174.Spec : Prop :=
  ∀ n, P5081869463220678174.a n = A342138 n

end A342138

/-! ## A342138.P10792386538481407145

`A008574(A001614(n+1))%(5*n+3)`
-/

namespace A342138.P10792386538481407145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A001614 (n + 1)).toNat) (5 * n + 3 : ℤ)

end

end A342138.P10792386538481407145

namespace A342138

/-- `A008574(A001614(n+1))%(5*n+3)` -/
def P10792386538481407145.Spec : Prop :=
  ∀ n, P10792386538481407145.a n = A342138 n

end A342138

/-! ## A342138.P7872401953416463928

`∑[A114327(A022144(A056942(n)))]`
-/

namespace A342138.P7872401953416463928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A022144 (A056942 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342138.P7872401953416463928

namespace A342138

/-- `∑[A114327(A022144(A056942(n)))]` -/
def P7872401953416463928.Spec : Prop :=
  ∀ n, P7872401953416463928.a n = A342138 n

end A342138

/-! ## A342138.P15248949994749935484

`∑[A061020(A267584(A089633(n)))]`
-/

namespace A342138.P15248949994749935484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A267584 (A089633 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342138.P15248949994749935484

namespace A342138

/-- `∑[A061020(A267584(A089633(n)))]` -/
def P15248949994749935484.Spec : Prop :=
  ∀ n, P15248949994749935484.a n = A342138 n

end A342138

/-!
# A342139: Number of partitions of [2n] into pairs whose sums or differences are primes.

The programs for A342139, there is no canonical definition to state claims against.
-/

/-! ## A342139.P16516503453397197998

`A236362((n+2)!+1)`
-/

namespace A342139.P16516503453397197998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (Nat.factorial (n + 2) + 1)

end

end A342139.P16516503453397197998

/-! ## A342139.P16631016116876127740

`A236362(or(2, ∏[n+2]))`
-/

namespace A342139.P16631016116876127740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (Nat.lor 2 (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A342139.P16631016116876127740

/-!
# A342141: The number of generic rectangulations with n rectangles.

The programs for A342141, there is no canonical definition to state claims against.
-/

/-! ## A342141.P17038305885833382489

`A266332(A097931(n+1)+1)`
-/

namespace A342141.P17038305885833382489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266332 (A097931 (n + 1) + 1).toNat

end

end A342141.P17038305885833382489

/-! ## A342141.P3702445643758381504

`A266332((n+1)*A325859(n))`
-/

namespace A342141.P3702445643758381504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266332 ((n + 1 : ℤ) * A325859 n).toNat

end

end A342141.P3702445643758381504

/-!
# A342142: Take a(n), reverse it, divide the larger of the two numbers by the smaller and keep only the remainder: this remainder is present in a(n) as a substring of digits.

The programs for A342142, there is no canonical definition to state claims against.
-/

/-! ## A342142.P12019550689186337015

`eq[A000007(n), A309589(A007954(n))]`
-/

namespace A342142.P12019550689186337015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342142.P12019550689186337015

/-! ## A342142.P13827457793864843087

`eq[A151878(n), A309589(A007954(n))]`
-/

namespace A342142.P13827457793864843087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342142.P13827457793864843087

/-! ## A342142.P15977910845479613972

`eq[A151909(n), A309589(A007954(n))]`
-/

namespace A342142.P15977910845479613972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342142.P15977910845479613972

/-! ## A342142.P4648178686052672085

`eq[A151933(n), A309589(A007954(n))]`
-/

namespace A342142.P4648178686052672085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342142.P4648178686052672085

/-! ## A342142.P11206957407349966390

`lt[A004086(A007954(n)), A352517(n)]`
-/

namespace A342142.P11206957407349966390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342142.P11206957407349966390

/-!
# A342143: Take a(n), sort its digits into ascending order, divide the larger of the two numbers by the smaller and keep only the remainder: this remainder is present in a(n) as a substring of its digits.

The programs for A342143, there is no canonical definition to state claims against.
-/

/-! ## A342143.P685921267056902358

`∩[A090334(n+1), A342142(n+1)]`
-/

namespace A342143.P685921267056902358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342143.P685921267056902358

/-! ## A342143.P18330231429330151269

`∩[A093511(n+1), A342142(n+1)]`
-/

namespace A342143.P18330231429330151269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342143.P18330231429330151269

/-! ## A342143.P4757232601290440022

`∩[A121540(n+1), A342142(n+1)]`
-/

namespace A342143.P4757232601290440022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342143.P4757232601290440022

/-! ## A342143.P9298706721185071316

`∩[A121541(n+1), A342142(n+1)]`
-/

namespace A342143.P9298706721185071316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342143.P9298706721185071316

/-! ## A342143.P17088589482341965725

`∩[A121542(n+1), A342142(n+1)]`
-/

namespace A342143.P17088589482341965725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342143.P17088589482341965725

/-!
# A342144: Numbers m with integer solution to x^x == (x+1)^(x+1) (mod m) with x > 0.

The programs for A342144, there is no canonical definition to state claims against.
-/

/-! ## A342144.P6787387041609436977

`or(dr(A151935(n)), A334420(n+1))`
-/

namespace A342144.P6787387041609436977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A151935 n) : ℤ) (A334420 (n + 1))

end

end A342144.P6787387041609436977

/-! ## A342144.P14957967373770891574

`or(A284256(n+1), A334420(n+1))`
-/

namespace A342144.P14957967373770891574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284256 (n + 1)) (A334420 (n + 1))

end

end A342144.P14957967373770891574

/-! ## A342144.P15621499240732751637

`or(val(A000837(n), 7), A334420(n+1))`
-/

namespace A342144.P15621499240732751637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (A000837 n).toNat 7 : ℤ) (A334420 (n + 1))

end

end A342144.P15621499240732751637

/-! ## A342144.P2647207633504126439

`record[A334420(n+1)%A050436(n+1)]`
-/

namespace A342144.P2647207633504126439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334420 (n + 1)) (A050436 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342144.P2647207633504126439

/-! ## A342144.P9202704834101032761

`or(A039964((n+1)/2^val(n+1, 2)), A334420(n+1))`
-/

namespace A342144.P9202704834101032761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039964 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (A334420 (n + 1))

end

end A342144.P9202704834101032761

/-! ## A342144.P763916943693690758

`A334420(record[A008616(A006254(n+1))])`
-/

namespace A342144.P763916943693690758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A006254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342144.P763916943693690758

/-! ## A342144.P1680159749113599864

`or(A014083(A002088(n)), A334420(n+1))`
-/

namespace A342144.P1680159749113599864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014083 (A002088 n).toNat) (A334420 (n + 1))

end

end A342144.P1680159749113599864

/-! ## A342144.P13738747668507034682

`or(A025905(A008621(n)), A334420(n+1))`
-/

namespace A342144.P13738747668507034682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025905 (A008621 n).toNat) (A334420 (n + 1))

end

end A342144.P13738747668507034682

/-! ## A342144.P14436025912344943635

`or(A029309(A008612(n)), A334420(n+1))`
-/

namespace A342144.P14436025912344943635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029309 (A008612 n).toNat) (A334420 (n + 1))

end

end A342144.P14436025912344943635

/-! ## A342144.P8214530348628939418

`or(A001222(A015919(n+1)), A334420(n+1))`
-/

namespace A342144.P8214530348628939418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A015919 (n + 1)).toNat) (A334420 (n + 1))

end

end A342144.P8214530348628939418

/-!
# A342145: Numbers k such that k + (k+1) = 2*k + 1 shares at least one digit with either k or k+1.

The programs for A342145, there is no canonical definition to state claims against.
-/

/-! ## A342145.P6827491105035421615

`lt[0, A341755(n)]`
-/

namespace A342145.P6827491105035421615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341755 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342145.P6827491105035421615

/-! ## A342145.P4696176827734616245

`eq[1, A043545(2*A341755(n))]`
-/

namespace A342145.P4696176827734616245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (2 * A341755 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342145.P4696176827734616245

/-! ## A342145.P6383077604548118524

`eq[1, gcd(A065091(n+1), A341755(n))]`
-/

namespace A342145.P6383077604548118524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065091 (n + 1)) (A341755 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342145.P6383077604548118524

/-! ## A342145.P3998031407129788801

`eq[1, A165586(A341755(n)²)]`
-/

namespace A342145.P3998031407129788801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 (A341755 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342145.P3998031407129788801

/-! ## A342145.P8742464451989700849

`∪[A342146(n+1), A342147(n+1)]`
-/

namespace A342145.P8742464451989700849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342145.P8742464451989700849

/-! ## A342145.P4259595064528185160

`eq[1, A043545(A341755(n)²)]`
-/

namespace A342145.P4259595064528185160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A341755 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342145.P4259595064528185160

/-! ## A342145.P11086168399017968219

`eq[1, A057427(A341755(n)²)]`
-/

namespace A342145.P11086168399017968219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A341755 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342145.P11086168399017968219

/-! ## A342145.P15442901229058115595

`eq[2, A000122(A341755(n)²)]`
-/

namespace A342145.P15442901229058115595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A341755 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342145.P15442901229058115595

/-!
# A342146: Numbers m such that m + (m+1) = 2*m + 1 shares at least one digit with m.

The programs for A342146, there is no canonical definition to state claims against.
-/

/-! ## A342146.P2312539982807341110

`lt[0, and(A086066(2*n+1), A086066(n))]`
-/

namespace A342146.P2312539982807341110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086066 (2 * n + 1)) (A086066 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342146.P2312539982807341110

/-! ## A342146.P6926368149524929409

`∑[abs(A133615(A232065(3*n+5))-n)+1]`
-/

namespace A342146.P6926368149524929409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133615 (A232065 (3 * n + 5)).toNat - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342146.P6926368149524929409

/-!
# A342147: Numbers m such that m + (m+1) = 2m + 1 shares at least one digit with m+1.

The programs for A342147, there is no canonical definition to state claims against.
-/

/-! ## A342147.P1905774985780921669

`eq[A008683(A032020(n)), A025926(n)]`
-/

namespace A342147.P1905774985780921669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A032020 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342147.P1905774985780921669

/-!
# A342148: Infinite square matrix A(m,n) = F(m) mod n, m,n >= 1, where F = Fibonacci = A000045, read by falling antidiagonals.

The programs for A342148, the canonical program `A342148.P1672448664167085553` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342148 has offset 1).

The definition of A342148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342148.P15416110356183825389

`Δ[A193588(n)]%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A342148.P15416110356183825389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A342148.P15416110356183825389

namespace A342148

/-- `Δ[A193588(n)]%(C(comp[∑[n]]-n, 2)-n)` -/
def P15416110356183825389.Spec : Prop :=
  ∀ n, P15416110356183825389.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P11787924629873443681

`A104763(n+1)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A342148.P11787924629873443681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104763 (n + 1)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A342148.P11787924629873443681

namespace A342148

/-- `A104763(n+1)%(C(comp[∑[n]]-n, 2)-n)` -/
def P11787924629873443681.Spec : Prop :=
  ∀ n, P11787924629873443681.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P4606685105050143532

`A117502(n+1)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A342148.P4606685105050143532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117502 (n + 1)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A342148.P4606685105050143532

namespace A342148

/-- `A117502(n+1)%(C(comp[∑[n]]-n, 2)-n)` -/
def P4606685105050143532.Spec : Prop :=
  ∀ n, P4606685105050143532.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P2321620216822174956

`A141169(n+1)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A342148.P2321620216822174956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141169 (n + 1)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A342148.P2321620216822174956

namespace A342148

/-- `A141169(n+1)%(C(comp[∑[n]]-n, 2)-n)` -/
def P2321620216822174956.Spec : Prop :=
  ∀ n, P2321620216822174956.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P12525157672482747661

`A135597(comp[∑[n]])%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A342148.P12525157672482747661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135597 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A342148.P12525157672482747661

namespace A342148

/-- `A135597(comp[∑[n]])%(C(comp[∑[n]]-n, 2)-n)` -/
def P12525157672482747661.Spec : Prop :=
  ∀ n, P12525157672482747661.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P17384030835075268015

`A000045(1-C(∑[char[∑[n]]], 2)+n)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A342148.P17384030835075268015
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

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
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A342148.P17384030835075268015

namespace A342148

/-- `A000045(1-C(∑[char[∑[n]]], 2)+n)%(C(comp[∑[n]]-n, 2)-n)` -/
def P17384030835075268015.Spec : Prop :=
  ∀ n, P17384030835075268015.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P348748608995203898

`Δ[A059389(n+2)]%A004736(n+1)`
-/

namespace A342148.P348748608995203898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004736 (n + 1))

end

end A342148.P348748608995203898

namespace A342148

/-- `Δ[A059389(n+2)]%A004736(n+1)` -/
def P348748608995203898.Spec : Prop :=
  ∀ n, P348748608995203898.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P12898169736316186179

`A000045(A002260(n+1))%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A342148.P12898169736316186179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A002260 (n + 1)).toNat) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A342148.P12898169736316186179

namespace A342148

/-- `A000045(A002260(n+1))%(C(comp[∑[n]]-n, 2)-n)` -/
def P12898169736316186179.Spec : Prop :=
  ∀ n, P12898169736316186179.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P13123089332118566216

`A000045(1-C(∑[char[∑[n]]], 2)+n)%A004736(n+1)`
-/

namespace A342148.P13123089332118566216
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat) (A004736 (n + 1))

end

end A342148.P13123089332118566216

namespace A342148

/-- `A000045(1-C(∑[char[∑[n]]], 2)+n)%A004736(n+1)` -/
def P13123089332118566216.Spec : Prop :=
  ∀ n, P13123089332118566216.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P10051335678747662050

`Δ[A193588(n)]%A000005(A130321(n))`
-/

namespace A342148.P10051335678747662050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000005 (A130321 n).toNat)

end

end A342148.P10051335678747662050

namespace A342148

/-- `Δ[A193588(n)]%A000005(A130321(n))` -/
def P10051335678747662050.Spec : Prop :=
  ∀ n, P10051335678747662050.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P1672448664167085553

`A000045(A128227(n))%A004736(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A342148

/-- `A000045(A128227(n))%A004736(n+1)` -/
def P1672448664167085553.Spec : Prop :=
  ∀ n, P1672448664167085553.a n = A342148 (n + 1)

theorem P1672448664167085553.correct : P1672448664167085553.Spec := by
  intro n
  simp only [A342148, Nat.add_sub_cancel]

end A342148

/-! ## A342148.P16218137681037653420

`A104763(n+1)%A000005(A130321(n))`
-/

namespace A342148.P16218137681037653420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104763 (n + 1)) (A000005 (A130321 n).toNat)

end

end A342148.P16218137681037653420

namespace A342148

/-- `A104763(n+1)%A000005(A130321(n))` -/
def P16218137681037653420.Spec : Prop :=
  ∀ n, P16218137681037653420.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P15861539698342056678

`A117502(n+1)%A000005(A130321(n))`
-/

namespace A342148.P15861539698342056678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117502 (n + 1)) (A000005 (A130321 n).toNat)

end

end A342148.P15861539698342056678

namespace A342148

/-- `A117502(n+1)%A000005(A130321(n))` -/
def P15861539698342056678.Spec : Prop :=
  ∀ n, P15861539698342056678.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P7568382560626520287

`A000045(A002260(n+1))%A004736(n+1)`
-/

namespace A342148.P7568382560626520287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A002260 (n + 1)).toNat) (A004736 (n + 1))

end

end A342148.P7568382560626520287

namespace A342148

/-- `A000045(A002260(n+1))%A004736(n+1)` -/
def P7568382560626520287.Spec : Prop :=
  ∀ n, P7568382560626520287.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P14738263053202538162

`A000045(A002262(n+1))%A004736(n+1)`
-/

namespace A342148.P14738263053202538162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A002262 (n + 1)).toNat) (A004736 (n + 1))

end

end A342148.P14738263053202538162

namespace A342148

/-- `A000045(A002262(n+1))%A004736(n+1)` -/
def P14738263053202538162.Spec : Prop :=
  ∀ n, P14738263053202538162.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P11322700176441333350

`A000045(A048151(n+1))%A004736(n+1)`
-/

namespace A342148.P11322700176441333350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A048151 (n + 1)).toNat) (A004736 (n + 1))

end

end A342148.P11322700176441333350

namespace A342148

/-- `A000045(A048151(n+1))%A004736(n+1)` -/
def P11322700176441333350.Spec : Prop :=
  ∀ n, P11322700176441333350.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P855536780930030488

`A000045(A134868(n+1))%A004736(n+1)`
-/

namespace A342148.P855536780930030488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A134868 (n + 1)).toNat) (A004736 (n + 1))

end

end A342148.P855536780930030488

namespace A342148

/-- `A000045(A134868(n+1))%A004736(n+1)` -/
def P855536780930030488.Spec : Prop :=
  ∀ n, P855536780930030488.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P2416729096577209091

`A000045(A285730(n+1))%A285731(n+1)`
-/

namespace A342148.P2416729096577209091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A285730 (n + 1)).toNat) (A285731 (n + 1))

end

end A342148.P2416729096577209091

namespace A342148

/-- `A000045(A285730(n+1))%A285731(n+1)` -/
def P2416729096577209091.Spec : Prop :=
  ∀ n, P2416729096577209091.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P4039247975627006497

`A000045(A193738(n))%A000005(A130321(n))`
-/

namespace A342148.P4039247975627006497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A193738 n).toNat) (A000005 (A130321 n).toNat)

end

end A342148.P4039247975627006497

namespace A342148

/-- `A000045(A193738(n))%A000005(A130321(n))` -/
def P4039247975627006497.Spec : Prop :=
  ∀ n, P4039247975627006497.a n = A342148 (n + 1)

end A342148

/-! ## A342148.P14981067852668120827

`A000045(A000005(A059268(n)))%A004736(n+1)`
-/

namespace A342148.P14981067852668120827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A000005 (A059268 n).toNat).toNat) (A004736 (n + 1))

end

end A342148.P14981067852668120827

namespace A342148

/-- `A000045(A000005(A059268(n)))%A004736(n+1)` -/
def P14981067852668120827.Spec : Prop :=
  ∀ n, P14981067852668120827.a n = A342148 (n + 1)

end A342148

/-!
# A342149: Infinite square matrix A(m,n) = F(m+1) mod (n+1), m,n >= 1, where F = Fibonacci = A000045, read by falling antidiagonals.

The programs for A342149, the canonical program `A342149.P10655591128175794512` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342149 has offset 1).

The definition of A342149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342149.P10655591128175794512

`A193588(n)%(A193592(n)+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A342149

/-- `A193588(n)%(A193592(n)+1)` -/
def P10655591128175794512.Spec : Prop :=
  ∀ n, P10655591128175794512.a n = A342149 (n + 1)

theorem P10655591128175794512.correct : P10655591128175794512.Spec := by
  intro n
  simp only [A342149, Nat.add_sub_cancel]

end A342149

/-! ## A342149.P12036829279105929374

`A193588(n)%A030545(A025581(n))`
-/

namespace A342149.P12036829279105929374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193588 n) (A030545 (A025581 n).toNat)

end

end A342149.P12036829279105929374

namespace A342149

/-- `A193588(n)%A030545(A025581(n))` -/
def P12036829279105929374.Spec : Prop :=
  ∀ n, P12036829279105929374.a n = A342149 (n + 1)

end A342149

/-! ## A342149.P13396836022020446118

`A071766(A099627(n))%(A025581(n)+2)`
-/

namespace A342149.P13396836022020446118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071766 (A099627 n).toNat) (A025581 n + 2)

end

end A342149.P13396836022020446118

namespace A342149

/-- `A071766(A099627(n))%(A025581(n)+2)` -/
def P13396836022020446118.Spec : Prop :=
  ∀ n, P13396836022020446118.a n = A342149 (n + 1)

end A342149

/-! ## A342149.P16348040960879092305

`A071766(A099627(n))%A030545(A025581(n))`
-/

namespace A342149.P16348040960879092305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071766 (A099627 n).toNat) (A030545 (A025581 n).toNat)

end

end A342149.P16348040960879092305

namespace A342149

/-- `A071766(A099627(n))%A030545(A025581(n))` -/
def P16348040960879092305.Spec : Prop :=
  ∀ n, P16348040960879092305.a n = A342149 (n + 1)

end A342149

/-! ## A342149.P3018666407814697103

`A342148(lt[1, A002262(n)])`
-/

namespace A342149.P3018666407814697103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A342149.P3018666407814697103

namespace A342149

/-- `A342148(lt[1, A002262(n)])` -/
def P3018666407814697103.Spec : Prop :=
  ∀ n, P3018666407814697103.a n = A342149 (n + 1)

end A342149

/-! ## A342149.P3826374453194028828

`A342148(lt[1, A327117(n)])`
-/

namespace A342149.P3826374453194028828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A342149.P3826374453194028828

namespace A342149

/-- `A342148(lt[1, A327117(n)])` -/
def P3826374453194028828.Spec : Prop :=
  ∀ n, P3826374453194028828.a n = A342149 (n + 1)

end A342149

/-! ## A342149.P13818330515961993660

`A342148(eq[0, A103516(n)]+1)`
-/

namespace A342149.P13818330515961993660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A342149.P13818330515961993660

namespace A342149

/-- `A342148(eq[0, A103516(n)]+1)` -/
def P13818330515961993660.Spec : Prop :=
  ∀ n, P13818330515961993660.a n = A342149 (n + 1)

end A342149

/-! ## A342149.P5988879251656869564

`A342148(lt[2, A208755(n+1)])`
-/

namespace A342149.P5988879251656869564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A342149.P5988879251656869564

namespace A342149

/-- `A342148(lt[2, A208755(n+1)])` -/
def P5988879251656869564.Spec : Prop :=
  ∀ n, P5988879251656869564.a n = A342149 (n + 1)

end A342149

/-! ## A342149.P6897316630863120705

`A342148(A131507(n)+4+n)`
-/

namespace A342149.P6897316630863120705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342148 (A131507 n + 4 + (n : ℤ)).toNat

end

end A342149.P6897316630863120705

namespace A342149

/-- `A342148(A131507(n)+4+n)` -/
def P6897316630863120705.Spec : Prop :=
  ∀ n, P6897316630863120705.a n = A342149 (n + 1)

end A342149

/-!
# A342150: Primes p such that three of p+10, p+20, p+30 and p+40 are prime.

The programs for A342150, there is no canonical definition to state claims against.
-/

/-! ## A342150.P1595851539650856272

`∩[A291544(n+1), A153883(n)]`
-/

namespace A342150.P1595851539650856272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342150.P1595851539650856272

/-! ## A342150.P4953491553954223831

`p?[A153883(∑[A049711(n+3)])]`
-/

namespace A342150.P4953491553954223831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342150.P4953491553954223831

/-! ## A342150.P11079133557161762464

`p?[record[A002262(A088764(n+1))]]`
-/

namespace A342150.P11079133557161762464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A088764 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342150.P11079133557161762464

/-! ## A342150.P7497893228813040255

`∩[A230109(n+1), A291544(n+1)]`
-/

namespace A342150.P7497893228813040255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342150.P7497893228813040255

/-!
# A342152: The number of edges on a vesica piscis formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A342152, there is no canonical definition to state claims against.
-/

/-! ## A342152.P3327124866951151977

`A341877(n+1)+A341878(n+1)-1`
-/

namespace A342152.P3327124866951151977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341877 (n + 1) + A341878 (n + 1) - 1

end

end A342152.P3327124866951151977

/-! ## A342152.P9909632692927542483

`A341877(n+1)+A185048(A341878(n+1))`
-/

namespace A342152.P9909632692927542483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341877 (n + 1) + A185048 (A341878 (n + 1)).toNat

end

end A342152.P9909632692927542483

/-! ## A342152.P12127142623163280692

`A004442(A341878(n+1)+A341877(n+1))`
-/

namespace A342152.P12127142623163280692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A341878 (n + 1) + A341877 (n + 1)).toNat

end

end A342152.P12127142623163280692

/-! ## A342152.P253060608919620757

`A023443(A341878(n+1)+A341877(n+1))`
-/

namespace A342152.P253060608919620757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A341878 (n + 1) + A341877 (n + 1)).toNat

end

end A342152.P253060608919620757

/-! ## A342152.P2887328840097905793

`A052928(A341878(n+1)+A341877(n+1))`
-/

namespace A342152.P2887328840097905793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A341878 (n + 1) + A341877 (n + 1)).toNat

end

end A342152.P2887328840097905793

/-!
# A342154: Number of partitions of n^5 into two positive squares.

The programs for A342154, there is no canonical definition to state claims against.
-/

/-! ## A342154.P3749966604397552768

`A057427(A090223(n)²)*A108337(A084888(n))`
-/

namespace A342154.P3749966604397552768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A090223 n ^ 2).toNat * A108337 (A084888 n).toNat

end

end A342154.P3749966604397552768

/-! ## A342154.P4441989745911184012

`A057427(A135110(n+1))*A108337(A084888(n))`
-/

namespace A342154.P4441989745911184012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A135110 (n + 1)).toNat * A108337 (A084888 n).toNat

end

end A342154.P4441989745911184012

/-! ## A342154.P15383873126877310737

`A057427(A025478(n+1)²)*A108337(A084888(n))`
-/

namespace A342154.P15383873126877310737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025478 (n + 1) ^ 2).toNat * A108337 (A084888 n).toNat

end

end A342154.P15383873126877310737

/-! ## A342154.P13377357441125734871

`A057427(A001597(n+1)-1)*A108337(A084888(n))`
-/

namespace A342154.P13377357441125734871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A001597 (n + 1) - 1).toNat * A108337 (A084888 n).toNat

end

end A342154.P13377357441125734871

/-! ## A342154.P3726501878558017143

`A057427(A001597(n+1))*A108337(A084888(n))`
-/

namespace A342154.P3726501878558017143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A001597 (n + 1)).toNat * A108337 (A084888 n).toNat

end

end A342154.P3726501878558017143

/-! ## A342154.P14657365340604527387

`A057427(A135110(n+2))+A108337(A084888(n))-1`
-/

namespace A342154.P14657365340604527387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A135110 (n + 2)).toNat + (A108337 (A084888 n).toNat - 1)

end

end A342154.P14657365340604527387

/-! ## A342154.P11198642745856984643

`A057427(A144730(n+2)-1)*A108337(A084888(n))`
-/

namespace A342154.P11198642745856984643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A144730 (n + 2) - 1).toNat * A108337 (A084888 n).toNat

end

end A342154.P11198642745856984643

/-! ## A342154.P11954910529314789159

`A108337(A084888(n))+A079067(A051466(n+2))`
-/

namespace A342154.P11954910529314789159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108337 (A084888 n).toNat + A079067 (A051466 (n + 2)).toNat

end

end A342154.P11954910529314789159

/-! ## A342154.P9574608529615466825

`A054977(A283532(n+1)+2)*A108337(A084888(n))`
-/

namespace A342154.P9574608529615466825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A283532 (n + 1) + 2).toNat * A108337 (A084888 n).toNat

end

end A342154.P9574608529615466825

/-! ## A342154.P280901083330785945

`A108337(A084888(n))+A000007(A175967(n+1))`
-/

namespace A342154.P280901083330785945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108337 (A084888 n).toNat + A000007 (A175967 (n + 1)).toNat

end

end A342154.P280901083330785945

/-! ## A342154.P11967497046699067229

`A083259(A139983(n+1))*A108337(A084888(n))`
-/

namespace A342154.P11967497046699067229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (A139983 (n + 1)).toNat * A108337 (A084888 n).toNat

end

end A342154.P11967497046699067229

/-! ## A342154.P1666763922159837941

`A108337(A084888(n)%A235573(n+1))`
-/

namespace A342154.P1666763922159837941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108337 (Int.tmod (A084888 n) (A235573 (n + 1))).toNat

end

end A342154.P1666763922159837941

/-!
# A342156: For n > 2, a(n) = 0,1,2, or 3 when (prime(n+1) mod 6, prime(n) mod 6) = (1,1),(1,5),(5,1), or (5,5), respectively.

The programs for A342156, the canonical program `A342156.P9221010650730424222` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342156 has offset 3).

The definition of A342156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342156.P9221010650730424222

`A039701(n+3)-A134323(n+4)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A342156

/-- `A039701(n+3)-A134323(n+4)` -/
def P9221010650730424222.Spec : Prop :=
  ∀ n, P9221010650730424222.a n = A342156 (n + 3)

theorem P9221010650730424222.correct : P9221010650730424222.Spec := by
  intro n
  simp only [A342156, Nat.add_sub_cancel]

end A342156

/-! ## A342156.P2818053470508276925

`A039701(n+3)+Δ[A112632(n+3)]`
-/

namespace A342156.P2818053470508276925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 3) + (f1 (n + 1) - f1 n)

end

end A342156.P2818053470508276925

namespace A342156

/-- `A039701(n+3)+Δ[A112632(n+3)]` -/
def P2818053470508276925.Spec : Prop :=
  ∀ n, P2818053470508276925.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P17207323949769222965

`Δ[A120326(n+2)]-A134323(n+4)`
-/

namespace A342156.P17207323949769222965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A134323 (n + 4)

end

end A342156.P17207323949769222965

namespace A342156

/-- `Δ[A120326(n+2)]-A134323(n+4)` -/
def P17207323949769222965.Spec : Prop :=
  ∀ n, P17207323949769222965.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P2331704641228679056

`A207336(n+1)%3-A134323(n+4)`
-/

namespace A342156.P2331704641228679056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207336 (n + 1)) 3 - A134323 (n + 4)

end

end A342156.P2331704641228679056

namespace A342156

/-- `A207336(n+1)%3-A134323(n+4)` -/
def P2331704641228679056.Spec : Prop :=
  ∀ n, P2331704641228679056.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P14789157790176053779

`A065091(n+2)%3-A134323(n+4)`
-/

namespace A342156.P14789157790176053779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 2)) 3 - A134323 (n + 4)

end

end A342156.P14789157790176053779

namespace A342156

/-- `A065091(n+2)%3-A134323(n+4)` -/
def P14789157790176053779.Spec : Prop :=
  ∀ n, P14789157790176053779.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P18334308318031680661

`A008578(n+4)%3-A134323(n+4)`
-/

namespace A342156.P18334308318031680661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 4)) 3 - A134323 (n + 4)

end

end A342156.P18334308318031680661

namespace A342156

/-- `A008578(n+4)%3-A134323(n+4)` -/
def P18334308318031680661.Spec : Prop :=
  ∀ n, P18334308318031680661.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P8470329760497635964

`A039701(n+3)-A102283(A007605(n+4))`
-/

namespace A342156.P8470329760497635964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 3) - A102283 (A007605 (n + 4)).toNat

end

end A342156.P8470329760497635964

namespace A342156

/-- `A039701(n+3)-A102283(A007605(n+4))` -/
def P8470329760497635964.Spec : Prop :=
  ∀ n, P8470329760497635964.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P17076714155432470755

`A010872(A007605(n+3))-A134323(n+4)`
-/

namespace A342156.P17076714155432470755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A007605 (n + 3)).toNat - A134323 (n + 4)

end

end A342156.P17076714155432470755

namespace A342156

/-- `A010872(A007605(n+3))-A134323(n+4)` -/
def P17076714155432470755.Spec : Prop :=
  ∀ n, P17076714155432470755.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P14772640151144278439

`A039701(n+3)-A102283(A039710(n+4))`
-/

namespace A342156.P14772640151144278439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 3) - A102283 (A039710 (n + 4)).toNat

end

end A342156.P14772640151144278439

namespace A342156

/-- `A039701(n+3)-A102283(A039710(n+4))` -/
def P14772640151144278439.Spec : Prop :=
  ∀ n, P14772640151144278439.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P12456492968065233306

`A039701(n+3)-A102283(A095959(n+4))`
-/

namespace A342156.P12456492968065233306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 3) - A102283 (A095959 (n + 4)).toNat

end

end A342156.P12456492968065233306

namespace A342156

/-- `A039701(n+3)-A102283(A095959(n+4))` -/
def P12456492968065233306.Spec : Prop :=
  ∀ n, P12456492968065233306.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P2910405560507920216

`A083218(A139049(n+3))-A134323(n+4)`
-/

namespace A342156.P2910405560507920216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083218 (A139049 (n + 3)).toNat - A134323 (n + 4)

end

end A342156.P2910405560507920216

namespace A342156

/-- `A083218(A139049(n+3))-A134323(n+4)` -/
def P2910405560507920216.Spec : Prop :=
  ∀ n, P2910405560507920216.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P4869538040532065383

`A039701(n+3)-A102283(A229787(n+4))`
-/

namespace A342156.P4869538040532065383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 3) - A102283 (A229787 (n + 4)).toNat

end

end A342156.P4869538040532065383

namespace A342156

/-- `A039701(n+3)-A102283(A229787(n+4))` -/
def P4869538040532065383.Spec : Prop :=
  ∀ n, P4869538040532065383.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P4649830059926197047

`A039701(n+3)-A102283(A239690(n+4))`
-/

namespace A342156.P4649830059926197047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 3) - A102283 (A239690 (n + 4)).toNat

end

end A342156.P4649830059926197047

namespace A342156

/-- `A039701(n+3)-A102283(A239690(n+4))` -/
def P4649830059926197047.Spec : Prop :=
  ∀ n, P4649830059926197047.a n = A342156 (n + 3)

end A342156

/-! ## A342156.P10439109338502915749

`A132194(n+3)+A132194(n+4)+A132194(n+4)`
-/

namespace A342156.P10439109338502915749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132194 (n + 3) + (A132194 (n + 4) + A132194 (n + 4))

end

end A342156.P10439109338502915749

namespace A342156

/-- `A132194(n+3)+A132194(n+4)+A132194(n+4)` -/
def P10439109338502915749.Spec : Prop :=
  ∀ n, P10439109338502915749.a n = A342156 (n + 3)

end A342156

/-!
# A342157: Base-10 numbers m such that k*m = d||d||...||d (here || appears k-1 times), where k is the length of m, d is any m's digit and || represents concatenation.

The programs for A342157, there is no canonical definition to state claims against.
-/

/-! ## A342157.P2425093319267664118

`A051775(A165877(n))+n`
-/

namespace A342157.P2425093319267664118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A165877 n).toNat + (n : ℤ)

end

end A342157.P2425093319267664118

/-! ## A342157.P3640731750872204919

`A326458(A088626(n))+n`
-/

namespace A342157.P3640731750872204919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 (A088626 n).toNat + (n : ℤ)

end

end A342157.P3640731750872204919

/-! ## A342157.P3771792757535779435

`A338868(A274017(n))+n`
-/

namespace A342157.P3771792757535779435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338868 (A274017 n).toNat + (n : ℤ)

end

end A342157.P3771792757535779435

/-! ## A342157.P12793541711095621460

`A338868(A350457(n))+n`
-/

namespace A342157.P12793541711095621460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338868 (A350457 n).toNat + (n : ℤ)

end

end A342157.P12793541711095621460

/-! ## A342157.P4664971138009454114

`record[A039723(n)-A088626(n)]`
-/

namespace A342157.P4664971138009454114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n - A088626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342157.P4664971138009454114

/-!
# A342159: Number of words of length n, over the alphabet {a,b,c}, which have an odd number of a's and the number of b's plus the number of c's is less than or equal to 3.

The programs for A342159, the canonical program `A342159.P2881753951549343272` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342159 has offset 0).

The definition of A342159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342159.P2881753951549343272

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=13, a(4)=40, a(5)=41, a(6)=172, a(7)=85`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342159

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P2881753951549343272.Spec : Prop :=
  ∀ n, P2881753951549343272.a n = A342159 n

theorem P2881753951549343272.correct : P2881753951549343272.Spec := by
  intro n
  simp only [A342159]

end A342159

/-! ## A342159.P5839739559247498282

`comp[2*n]+C(2*n, 3)-A341896(n)`
-/

namespace A342159.P5839739559247498282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + Nat.choose (2 * n) 3 : ℤ) - A341896 n

end

end A342159.P5839739559247498282

namespace A342159

/-- `comp[2*n]+C(2*n, 3)-A341896(n)` -/
def P5839739559247498282.Spec : Prop :=
  ∀ n, P5839739559247498282.a n = A342159 n

end A342159

/-! ## A342159.P16922317893629754896

`A161712(n)-A341896(n)`
-/

namespace A342159.P16922317893629754896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 n - A341896 n

end

end A342159.P16922317893629754896

namespace A342159

/-- `A161712(n)-A341896(n)` -/
def P16922317893629754896.Spec : Prop :=
  ∀ n, P16922317893629754896.a n = A342159 n

end A342159

/-! ## A342159.P3143751359705130403

`abs(2*n²-1-A217873(n))-A341896(n)`
-/

namespace A342159.P3143751359705130403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n ^ 2 : ℤ) - 1 - A217873 n| - A341896 n

end

end A342159.P3143751359705130403

namespace A342159

/-- `abs(2*n²-1-A217873(n))-A341896(n)` -/
def P3143751359705130403.Spec : Prop :=
  ∀ n, P3143751359705130403.a n = A342159 n

end A342159

/-! ## A342159.P4569387906695092865

`Δ[(n-1)*A086514(n+1)]-A341896(n)`
-/

namespace A342159.P4569387906695092865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A086514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A341896 n

end

end A342159.P4569387906695092865

namespace A342159

/-- `Δ[(n-1)*A086514(n+1)]-A341896(n)` -/
def P4569387906695092865.Spec : Prop :=
  ∀ n, P4569387906695092865.a n = A342159 n

end A342159

/-! ## A342159.P5484181055705735659

`(A086514(2*n+1)+A060747(n+1))/2-A341896(n)`
-/

namespace A342159.P5484181055705735659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086514 (2 * n + 1) + A060747 (n + 1) : ℚ) / 2 - (A341896 n : ℚ)

end

end A342159.P5484181055705735659

namespace A342159

/-- `(A086514(2*n+1)+A060747(n+1))/2-A341896(n)` -/
def P5484181055705735659.Spec : Prop :=
  ∀ n, P5484181055705735659.a n = (A342159 n : ℚ)

end A342159

/-! ## A342159.P16781968423432195010

`A263614(A008574(n))+1-A341896(n)`
-/

namespace A342159.P16781968423432195010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263614 (A008574 n).toNat + (1 - A341896 n)

end

end A342159.P16781968423432195010

namespace A342159

/-- `A263614(A008574(n))+1-A341896(n)` -/
def P16781968423432195010.Spec : Prop :=
  ∀ n, P16781968423432195010.a n = A342159 n

end A342159

/-!
# A342160: Numbers differing from the next greater cube by a cube.

The programs for A342160, the canonical program `A342160.P10469897942791626678` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342160 has offset 1).

The definition of A342160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342160.P10469897942791626678

`record[A257238(A061579(n)+A003057(n+2))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A342160

/-- `record[A257238(A061579(n)+A003057(n+2))]` -/
def P10469897942791626678.Spec : Prop :=
  ∀ n, P10469897942791626678.a n = A342160 (n + 1)

theorem P10469897942791626678.correct : P10469897942791626678.Spec := by
  intro n
  simp only [A342160, Nat.add_sub_cancel]

end A342160

/-! ## A342160.P15474355948269836957

`record[A176283(A007401(n+1))-A176283(n)]`
-/

namespace A342160.P15474355948269836957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176283 (A007401 (n + 1)).toNat - A176283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342160.P15474355948269836957

namespace A342160

/-- `record[A176283(A007401(n+1))-A176283(n)]` -/
def P15474355948269836957.Spec : Prop :=
  ∀ n, P15474355948269836957.a n = A342160 (n + 1)

end A342160

/-! ## A342160.P16756116259459079420

`eq[0, A074989(A333884(n))]`
-/

namespace A342160.P16756116259459079420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (A333884 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342160.P16756116259459079420

namespace A342160

/-- `eq[0, A074989(A333884(n))]` -/
def P16756116259459079420.Spec : Prop :=
  ∀ n, (P16756116259459079420.a n : ℤ) = A342160 (n + 1)

end A342160

/-! ## A342160.P2261155794338601090

`eq[1, A333884(A333884(n)-1)]`
-/

namespace A342160.P2261155794338601090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A333884 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342160.P2261155794338601090

namespace A342160

/-- `eq[1, A333884(A333884(n)-1)]` -/
def P2261155794338601090.Spec : Prop :=
  ∀ n, (P2261155794338601090.a n : ℤ) = A342160 (n + 1)

end A342160

/-! ## A342160.P11600509886601893812

`record[A133820(A094727(n+1))-A133820(n+1)]`
-/

namespace A342160.P11600509886601893812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133820 (A094727 (n + 1)).toNat - A133820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342160.P11600509886601893812

namespace A342160

/-- `record[A133820(A094727(n+1))-A133820(n+1)]` -/
def P11600509886601893812.Spec : Prop :=
  ∀ n, P11600509886601893812.a n = A342160 (n + 1)

end A342160

/-! ## A342160.P13066646462564624619

`record[A133820(A108872(n+1))-A133820(n+1)]`
-/

namespace A342160.P13066646462564624619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133820 (A108872 (n + 1)).toNat - A133820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342160.P13066646462564624619

namespace A342160

/-- `record[A133820(A108872(n+1))-A133820(n+1)]` -/
def P13066646462564624619.Spec : Prop :=
  ∀ n, P13066646462564624619.a n = A342160 (n + 1)

end A342160

/-! ## A342160.P12388741902585078930

`record[A133823(A293137(n))-A133823(n)]`
-/

namespace A342160.P12388741902585078930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133823 (A293137 n).toNat - A133823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342160.P12388741902585078930

namespace A342160

/-- `record[A133823(A293137(n))-A133823(n)]` -/
def P12388741902585078930.Spec : Prop :=
  ∀ n, P12388741902585078930.a n = A342160 (n + 1)

end A342160

/-!
# A342161: Expansion of the exponential generating function (tanh(x) - sech(x) + 1) * exp(x).

The programs for A342161, there is no canonical definition to state claims against.
-/

/-! ## A342161.P11774125243970713118

`A163982(n)+2`
-/

namespace A342161.P11774125243970713118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163982 n + 2

end

end A342161.P11774125243970713118

/-! ## A342161.P861267172295702710

`1-A217714(n)`
-/

namespace A342161.P861267172295702710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A217714 n

end

end A342161.P861267172295702710

/-! ## A342161.P10207458558328549363

`A119880(n)-A155585(n)`
-/

namespace A342161.P10207458558328549363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119880 n - A155585 n

end

end A342161.P10207458558328549363

/-! ## A342161.P11021087735504761513

`A009832(n)+1-A155585(n)`
-/

namespace A342161.P11021087735504761513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009832 n + (1 - A155585 n)

end

end A342161.P11021087735504761513

/-! ## A342161.P9525563133142932235

`2-(A155585(n)+A122045(n))`
-/

namespace A342161.P9525563133142932235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A155585 n + A122045 n)

end

end A342161.P9525563133142932235

/-! ## A342161.P11127112381328424706

`1-xor(A033999(n), A163747(n))`
-/

namespace A342161.P11127112381328424706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor (A033999 n) (A163747 n)

end

end A342161.P11127112381328424706

/-!
# A342162: a(n) = difference between the starting positions of the first two occurrences of n in the Champernowne string (cf. A033307), where the first n is not required to be at its natural position.

The programs for A342162, there is no canonical definition to state claims against.
-/

/-! ## A342162.P8456074683512758724

`A086045(n)-A086044(n)`
-/

namespace A342162.P8456074683512758724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086045 n - A086044 n

end

end A342162.P8456074683512758724

/-! ## A342162.P7340350145217599619

`A086045(n)-gcd(A229186(n)+1, C(2, n+2))`
-/

namespace A342162.P7340350145217599619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086045 n - (Int.gcd (A229186 n + 1) (Nat.choose 2 (n + 2) : ℤ) : ℤ)

end

end A342162.P7340350145217599619

/-! ## A342162.P9668989765395495900

`A086045(n)-(A229186(n)%A008574(n)+1)`
-/

namespace A342162.P9668989765395495900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086045 n - (Int.tmod (A229186 n) (A008574 n) + 1)

end

end A342162.P9668989765395495900

/-! ## A342162.P8427822052279739702

`A086045(n)-(A229186(n)+1)%A154106(n)`
-/

namespace A342162.P8427822052279739702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086045 n - Int.tmod (A229186 n + 1) (A154106 n)

end

end A342162.P8427822052279739702

/-! ## A342162.P9607492083352120494

`A086045(n)-(char[A038722(n+1)]*A229186(n)+1)`
-/

namespace A342162.P9607492083352120494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086045 n - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A229186 n + 1)

end

end A342162.P9607492083352120494

/-! ## A342162.P895352345121599012

`A086045(A033619(n+1))+A001478(A086044(n))`
-/

namespace A342162.P895352345121599012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086045 (A033619 (n + 1)).toNat + A001478 (A086044 n).toNat

end

end A342162.P895352345121599012

/-! ## A342162.P7372717644270519652

`A086045(n)-(A229186(A065033(2*n))+A057427(n))`
-/

namespace A342162.P7372717644270519652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086045 n - (A229186 (A065033 (2 * n)).toNat + A057427 n)

end

end A342162.P7372717644270519652

/-!
# A342163: a(n) is the number of numbers greater than 1 and up to prime(n)^2 whose prime factors are all less than or equal to prime(n).

The programs for A342163, there is no canonical definition to state claims against.
-/

/-! ## A342163.P17175509778626064231

`A184677(n+1)-1`
-/

namespace A342163.P17175509778626064231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184677 (n + 1) - 1

end

end A342163.P17175509778626064231

/-! ## A342163.P12449882404397891902

`∑[abs(Δ[A184677(n)])]`
-/

namespace A342163.P12449882404397891902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342163.P12449882404397891902

/-! ## A342163.P15623704387647190307

`∑[A000027(Δ[A184677(n)])]`
-/

namespace A342163.P15623704387647190307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342163.P15623704387647190307

/-! ## A342163.P10297177805363287287

`∑[Δ[A184677(n)]%A039833(n+1)]`
-/

namespace A342163.P10297177805363287287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A039833 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342163.P10297177805363287287

/-! ## A342163.P4968355715675619081

`∑[A010054(3*n+2)+Δ[A184677(n)]]`
-/

namespace A342163.P4968355715675619081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342163.P4968355715675619081

/-! ## A342163.P9781520654944209766

`∑[A028310(Δ[A184677(n)])]`
-/

namespace A342163.P9781520654944209766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342163.P9781520654944209766

/-!
# A342165: A fractal-like sequence: erase the terms that have a prime index, the non-erased terms rebuild the original sequence.

The programs for A342165, the canonical program `A342165.P16521807271284690319` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342165 has offset 1).

The definition of A342165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342165.P16521807271284690319

`A049084(n+1)+a(A066246(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A342165

/-- `A049084(n+1)+a(A066246(n+1))` -/
def P16521807271284690319.Spec : Prop :=
  ∀ n, P16521807271284690319.a n = A342165 (n + 1)

theorem P16521807271284690319.correct : P16521807271284690319.Spec := by
  intro n
  simp only [A342165, Nat.add_sub_cancel]

end A342165

/-! ## A342165.P5697924037489772941

`A349191(A028310(n))+A057427(n)`
-/

namespace A342165.P5697924037489772941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349191 (A028310 n).toNat + A057427 n

end

end A342165.P5697924037489772941

namespace A342165

/-- `A349191(A028310(n))+A057427(n)` -/
def P5697924037489772941.Spec : Prop :=
  ∀ n, P5697924037489772941.a n = A342165 (n + 1)

end A342165

/-! ## A342165.P8939618173963446119

`A349191(A060462(n+1))+A057427(n)`
-/

namespace A342165.P8939618173963446119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349191 (A060462 (n + 1)).toNat + A057427 n

end

end A342165.P8939618173963446119

namespace A342165

/-- `A349191(A060462(n+1))+A057427(n)` -/
def P8939618173963446119.Spec : Prop :=
  ∀ n, P8939618173963446119.a n = A342165 (n + 1)

end A342165

/-! ## A342165.P16661806223571804462

`A349191(A060462(n+1))-A057428(n)`
-/

namespace A342165.P16661806223571804462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349191 (A060462 (n + 1)).toNat - A057428 n

end

end A342165.P16661806223571804462

namespace A342165

/-- `A349191(A060462(n+1))-A057428(n)` -/
def P16661806223571804462.Spec : Prop :=
  ∀ n, P16661806223571804462.a n = A342165 (n + 1)

end A342165

/-! ## A342165.P8840971164228075757

`A349191(A060462(n+1))+A060576(n+1)`
-/

namespace A342165.P8840971164228075757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349191 (A060462 (n + 1)).toNat + A060576 (n + 1)

end

end A342165.P8840971164228075757

namespace A342165

/-- `A349191(A060462(n+1))+A060576(n+1)` -/
def P8840971164228075757.Spec : Prop :=
  ∀ n, P8840971164228075757.a n = A342165 (n + 1)

end A342165

/-! ## A342165.P16479864093215374804

`A349191(A060462(n+1))+1-A000007(n)`
-/

namespace A342165.P16479864093215374804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349191 (A060462 (n + 1)).toNat + (1 - A000007 n)

end

end A342165.P16479864093215374804

namespace A342165

/-- `A349191(A060462(n+1))+1-A000007(n)` -/
def P16479864093215374804.Spec : Prop :=
  ∀ n, P16479864093215374804.a n = A342165 (n + 1)

end A342165

/-! ## A342165.P11117594245334027212

`A349191(A060462(n+1))%A052905(n)+1`
-/

namespace A342165.P11117594245334027212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349191 (A060462 (n + 1)).toNat) (A052905 n) + 1

end

end A342165.P11117594245334027212

namespace A342165

/-- `A349191(A060462(n+1))%A052905(n)+1` -/
def P11117594245334027212.Spec : Prop :=
  ∀ n, P11117594245334027212.a n = A342165 (n + 1)

end A342165

/-! ## A342165.P3093017793972874248

`∑{d}[A008578(n+1), A349191(A058933(#))]`
-/

namespace A342165.P3093017793972874248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349191 (A058933 d).toNat

end

end A342165.P3093017793972874248

namespace A342165

/-- `∑{d}[A008578(n+1), A349191(A058933(#))]` -/
def P3093017793972874248.Spec : Prop :=
  ∀ n, P3093017793972874248.a n = A342165 (n + 1)

end A342165

/-! ## A342165.P8279749487681298973

`∑{d}[A008578(n+1), A349191(A290103(#))]`
-/

namespace A342165.P8279749487681298973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349191 (A290103 d).toNat

end

end A342165.P8279749487681298973

namespace A342165

/-- `∑{d}[A008578(n+1), A349191(A290103(#))]` -/
def P8279749487681298973.Spec : Prop :=
  ∀ n, P8279749487681298973.a n = A342165 (n + 1)

end A342165

/-! ## A342165.P8309501921567109973

`A349191(A060462(n+1))+A069283(A001749(n+1))`
-/

namespace A342165.P8309501921567109973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349191 (A060462 (n + 1)).toNat + A069283 (A001749 (n + 1)).toNat

end

end A342165.P8309501921567109973

namespace A342165

/-- `A349191(A060462(n+1))+A069283(A001749(n+1))` -/
def P8309501921567109973.Spec : Prop :=
  ∀ n, P8309501921567109973.a n = A342165 (n + 1)

end A342165

/-!
# A342166: Product of first n Fubini numbers.

The programs for A342166, there is no canonical definition to state claims against.
-/

/-! ## A342166.P16913147687701949738

`∏[A000670(n)]`
-/

namespace A342166.P16913147687701949738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342166.P16913147687701949738

/-! ## A342166.P4030911284973923603

`∏[sqrt(A122725(n))]`
-/

namespace A342166.P4030911284973923603
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A122725 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342166.P4030911284973923603

/-! ## A342166.P2892934971898047998

`∏[A073146(∑[n])]`
-/

namespace A342166.P2892934971898047998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342166.P2892934971898047998

/-! ## A342166.P6432418835266090461

`∏[A108694(∑[n])]`
-/

namespace A342166.P6432418835266090461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108694 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342166.P6432418835266090461

/-!
# A342167: a(n) = U(n, (n+2)/2) where U(n, x) is a Chebyshev polynomial of the 2nd kind.

The programs for A342167, there is no canonical definition to state claims against.
-/

/-! ## A342167.P8685377679708607480

`A097690(n+2)-record[A343259(n)]`
-/

namespace A342167.P8685377679708607480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097690 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342167.P8685377679708607480

/-! ## A342167.P4673602665518800230

`A097690(n+2)-A343259(n+2)`
-/

namespace A342167.P4673602665518800230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097690 (n + 2) - A343259 (n + 2)

end

end A342167.P4673602665518800230

/-! ## A342167.P16143207101132770125

`A179943(∑[4*n])`
-/

namespace A342167.P16143207101132770125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342167.P16143207101132770125

/-! ## A342167.P4444629989920495834

`A316269((n+2)²+n²)`
-/

namespace A342167.P4444629989920495834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 ((n + 2) ^ 2 + n ^ 2)

end

end A342167.P4444629989920495834

/-! ## A342167.P9817918636949488198

`A073134(A058331(n+1))`
-/

namespace A342167.P9817918636949488198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073134 (A058331 (n + 1)).toNat

end

end A342167.P9817918636949488198

/-!
# A342168: a(n) = U(n, (n+3)/2) where U(n, x) is a Chebyshev polynomial of the 2nd kind.

The programs for A342168, there is no canonical definition to state claims against.
-/

/-! ## A342168.P11912628645884588631

`record[A097691(n+1)%A343260(n)]`
-/

namespace A342168.P11912628645884588631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097691 (n + 1)) (A343260 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342168.P11912628645884588631

/-! ## A342168.P2236894919585021335

`A097691(n+3)-A343260(n+2)`
-/

namespace A342168.P2236894919585021335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097691 (n + 3) - A343260 (n + 2)

end

end A342168.P2236894919585021335

/-! ## A342168.P14875376877955747794

`A179943(A056220(n+1))`
-/

namespace A342168.P14875376877955747794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 (A056220 (n + 1)).toNat

end

end A342168.P14875376877955747794

/-! ## A342168.P14301610563220910586

`A316269(A001844(n+1)+1)`
-/

namespace A342168.P14301610563220910586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (A001844 (n + 1) + 1).toNat

end

end A342168.P14301610563220910586

/-! ## A342168.P5083417970028568618

`A179943(A001105(n+1)-1)`
-/

namespace A342168.P5083417970028568618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 (A001105 (n + 1) - 1).toNat

end

end A342168.P5083417970028568618

/-!
# A342169: Consider the variant of the Rick Kenyon tiling where we tile a half-quadrant with L-tiles and backward-L tiles; a(n) is the number of tiles at distance n from the leftmost tile.

The programs for A342169, there is no canonical definition to state claims against.
-/

/-! ## A342169.P3788889243068762227

`A328309(n)-A010894(A035363(n))`
-/

namespace A342169.P3788889243068762227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328309 n - A010894 ((A035363 n).toNat + 21)

end

end A342169.P3788889243068762227

/-! ## A342169.P6506669193332387597

`A328309(n)-A000035(A244632(n))`
-/

namespace A342169.P6506669193332387597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328309 n - A000035 (A244632 n).toNat

end

end A342169.P6506669193332387597

/-! ## A342169.P10963580357794576194

`A328309(n)-A007814(A260443(n))`
-/

namespace A342169.P10963580357794576194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328309 n - A007814 (A260443 n).toNat

end

end A342169.P10963580357794576194

/-! ## A342169.P1915504930549537170

`A328309(n)-A000035(A000447(n*A000035(n)))`
-/

namespace A342169.P1915504930549537170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328309 n - A000035 (A000447 ((n : ℤ) * A000035 n).toNat).toNat

end

end A342169.P1915504930549537170

/-!
# A342170: Product of first n little Schröder numbers.

The programs for A342170, there is no canonical definition to state claims against.
-/

/-! ## A342170.P15669596761573360509

`∏[A001003(n)]`
-/

namespace A342170.P15669596761573360509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342170.P15669596761573360509

/-! ## A342170.P5792172095830378909

`∏[abs(A080243(n))]`
-/

namespace A342170.P5792172095830378909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080243 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342170.P5792172095830378909

/-! ## A342170.P2126290194639444588

`∏[A104219(∑[n])]`
-/

namespace A342170.P2126290194639444588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342170.P2126290194639444588

/-! ## A342170.P6051714341511080077

`∏[A114608(∑[n])]`
-/

namespace A342170.P6051714341511080077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114608 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342170.P6051714341511080077

/-! ## A342170.P6569226022643336044

`∏[A172094(∑[n])]`
-/

namespace A342170.P6569226022643336044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172094 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342170.P6569226022643336044

/-!
# A342171: Nonnegative integers k such that k < sec(k)*csc(k).

The programs for A342171, there is no canonical definition to state claims against.
-/

/-! ## A342171.P4510279932098138276

`A028310(A092328(n+1))`
-/

namespace A342171.P4510279932098138276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A092328 (n + 1)).toNat

end

end A342171.P4510279932098138276

/-! ## A342171.P6331149595101445609

`A005451(A337371(n+2))`
-/

namespace A342171.P6331149595101445609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A337371 (n + 2)).toNat

end

end A342171.P6331149595101445609

/-! ## A342171.P5815951016243287580

`A028310(record[A332095(n+1)])`
-/

namespace A342171.P5815951016243287580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342171.P5815951016243287580

/-! ## A342171.P3447943759472027220

`A065033(2*A092328(n+1))`
-/

namespace A342171.P3447943759472027220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A092328 (n + 1)).toNat

end

end A342171.P3447943759472027220

/-! ## A342171.P6820307318518616930

`A123108(2*A092328(n+1))`
-/

namespace A342171.P6820307318518616930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A092328 (n + 1)).toNat

end

end A342171.P6820307318518616930

/-!
# A342172: a(n) is the smallest n-bit number having the most common prime signature among n-bit numbers. (In case more than one prime signature is tied for most common, choose the smallest n-bit number whose prime signature is one of those tied.)

The programs for A342172, there is no canonical definition to state claims against.
-/

/-! ## A342172.P1562627888207658326

`A067535(A186038(n)+A000079(n))`
-/

namespace A342172.P1562627888207658326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A186038 n + A000079 n).toNat

end

end A342172.P1562627888207658326

/-! ## A342172.P9066939973996795069

`A067535(or(A000079(n), A186038(n)))`
-/

namespace A342172.P9066939973996795069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (Int.lor (A000079 n) (A186038 n)).toNat

end

end A342172.P9066939973996795069

/-! ## A342172.P6295815509095651849

`or(A051777(A372683(n)), A372683(n))`
-/

namespace A342172.P6295815509095651849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051777 (A372683 n).toNat) (A372683 n)

end

end A342172.P6295815509095651849

/-! ## A342172.P5620069776247587445

`A067535(xor(A000079(n), A186038(n)))`
-/

namespace A342172.P5620069776247587445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (Int.xor (A000079 n) (A186038 n)).toNat

end

end A342172.P5620069776247587445

/-! ## A342172.P11732617154230212155

`A067535(A336158(n+1)+A000225(n))`
-/

namespace A342172.P11732617154230212155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A336158 (n + 1) + A000225 n).toNat

end

end A342172.P11732617154230212155

/-!
# A342173: a(n) = Sum_{j=1..n-1} floor(prime(n)/prime(j)).

The programs for A342173, the canonical program `A342173.P15269056441343780265` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342173 has offset 1).

The definition of A342173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A308495, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342173.P15269056441343780265

`A308495(n+1)-2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A342173

/-- `A308495(n+1)-2` -/
def P15269056441343780265.Spec : Prop :=
  ∀ n, P15269056441343780265.a n = A342173 (n + 1)

theorem P15269056441343780265.correct : P15269056441343780265.Spec := by
  intro n
  simp only [A342173, Nat.add_sub_cancel]

end A342173

/-! ## A342173.P6198299221365108058

`A013939(A006093(n+1))`
-/

namespace A342173.P6198299221365108058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A006093 (n + 1)).toNat

end

end A342173.P6198299221365108058

namespace A342173

/-- `A013939(A006093(n+1))` -/
def P6198299221365108058.Spec : Prop :=
  ∀ n, P6198299221365108058.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P7609238642238981552

`A013939(record[A000010(n+1)])`
-/

namespace A342173.P7609238642238981552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342173.P7609238642238981552

namespace A342173

/-- `A013939(record[A000010(n+1)])` -/
def P7609238642238981552.Spec : Prop :=
  ∀ n, P7609238642238981552.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P8985832639973589237

`A013939(A040976(n+1)+1)`
-/

namespace A342173.P8985832639973589237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A040976 (n + 1) + 1).toNat

end

end A342173.P8985832639973589237

namespace A342173

/-- `A013939(A040976(n+1)+1)` -/
def P8985832639973589237.Spec : Prop :=
  ∀ n, P8985832639973589237.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P4037633482372738663

`A013939(A000040(n+1)-1)`
-/

namespace A342173.P4037633482372738663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A000040 (n + 1) - 1).toNat

end

end A342173.P4037633482372738663

namespace A342173

/-- `A013939(A000040(n+1)-1)` -/
def P4037633482372738663.Spec : Prop :=
  ∀ n, P4037633482372738663.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P1581100009604102258

`A013939(A008578(n+2)-1)`
-/

namespace A342173.P1581100009604102258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A008578 (n + 2) - 1).toNat

end

end A342173.P1581100009604102258

namespace A342173

/-- `A013939(A008578(n+2)-1)` -/
def P1581100009604102258.Spec : Prop :=
  ∀ n, P1581100009604102258.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P7840646372198569158

`A082186(A182986(n+2))-2`
-/

namespace A342173.P7840646372198569158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (A182986 (n + 2)).toNat - 2

end

end A342173.P7840646372198569158

namespace A342173

/-- `A082186(A182986(n+2))-2` -/
def P7840646372198569158.Spec : Prop :=
  ∀ n, P7840646372198569158.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P13989146574935530383

`A013939(eq[1, A001222(n+1)])`
-/

namespace A342173.P13989146574935530383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342173.P13989146574935530383

namespace A342173

/-- `A013939(eq[1, A001222(n+1)])` -/
def P13989146574935530383.Spec : Prop :=
  ∀ n, P13989146574935530383.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P3261567369497041339

`A013939(eq[1, A010051(n+1)])`
-/

namespace A342173.P3261567369497041339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342173.P3261567369497041339

namespace A342173

/-- `A013939(eq[1, A010051(n+1)])` -/
def P3261567369497041339.Spec : Prop :=
  ∀ n, P3261567369497041339.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P18134311210216951972

`A013939(eq[n, A000010(n+1)])`
-/

namespace A342173.P18134311210216951972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342173.P18134311210216951972

namespace A342173

/-- `A013939(eq[n, A000010(n+1)])` -/
def P18134311210216951972.Spec : Prop :=
  ∀ n, P18134311210216951972.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P15488807028466865140

`A013939(sqrt(A001248(n+1))-1)`
-/

namespace A342173.P15488807028466865140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) - 1)).toNat

end

end A342173.P15488807028466865140

namespace A342173

/-- `A013939(sqrt(A001248(n+1))-1)` -/
def P15488807028466865140.Spec : Prop :=
  ∀ n, P15488807028466865140.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P6948065005820305890

`A013939(∑[A054541(n+1)]-1)`
-/

namespace A342173.P6948065005820305890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A342173.P6948065005820305890

namespace A342173

/-- `A013939(∑[A054541(n+1)]-1)` -/
def P6948065005820305890.Spec : Prop :=
  ∀ n, P6948065005820305890.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P9168163939358895973

`A013939(record[A006530(n+2)-1])`
-/

namespace A342173.P9168163939358895973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342173.P9168163939358895973

namespace A342173

/-- `A013939(record[A006530(n+2)-1])` -/
def P9168163939358895973.Spec : Prop :=
  ∀ n, P9168163939358895973.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P6986672263937651143

`A013939(record[A020639(n+2)-1])`
-/

namespace A342173.P6986672263937651143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342173.P6986672263937651143

namespace A342173

/-- `A013939(record[A020639(n+2)-1])` -/
def P6986672263937651143.Spec : Prop :=
  ∀ n, P6986672263937651143.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P5930561710116917250

`A082186(record[A006530(n+2)])-2`
-/

namespace A342173.P5930561710116917250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A342173.P5930561710116917250

namespace A342173

/-- `A082186(record[A006530(n+2)])-2` -/
def P5930561710116917250.Spec : Prop :=
  ∀ n, P5930561710116917250.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P11585773613289424542

`A082186(record[A014963(n+2)])-2`
-/

namespace A342173.P11585773613289424542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A342173.P11585773613289424542

namespace A342173

/-- `A082186(record[A014963(n+2)])-2` -/
def P11585773613289424542.Spec : Prop :=
  ∀ n, P11585773613289424542.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P8924490236837826078

`A082186(record[A020639(n+2)])-2`
-/

namespace A342173.P8924490236837826078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A342173.P8924490236837826078

namespace A342173

/-- `A082186(record[A020639(n+2)])-2` -/
def P8924490236837826078.Spec : Prop :=
  ∀ n, P8924490236837826078.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P15395266737959243949

`A013939(lt[A001222(n+2), 2]+2)-1`
-/

namespace A342173.P15395266737959243949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) - 1

end

end A342173.P15395266737959243949

namespace A342173

/-- `A013939(lt[A001222(n+2), 2]+2)-1` -/
def P15395266737959243949.Spec : Prop :=
  ∀ n, P15395266737959243949.a n = A342173 (n + 1)

end A342173

/-! ## A342173.P14082225588739594901

`eq[1, A283866(n+2)]`
-/

namespace A342173.P14082225588739594901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283866 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342173.P14082225588739594901

namespace A342173

/-- `eq[1, A283866(n+2)]` -/
def P14082225588739594901.Spec : Prop :=
  ∀ n, (P14082225588739594901.a n : ℤ) = A342173 (n + 1)

end A342173

/-! ## A342173.P18082625207081394033

`A023444(A308495(n+1))`
-/

namespace A342173.P18082625207081394033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A308495 (n + 1)).toNat

end

end A342173.P18082625207081394033

namespace A342173

/-- `A023444(A308495(n+1))` -/
def P18082625207081394033.Spec : Prop :=
  ∀ n, P18082625207081394033.a n = A342173 (n + 1)

end A342173

/-!
# A342174: Primes in A342173.

The programs for A342174, the canonical program `A342174.P4399683615547316971` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342174 has offset 1).

The definition of A342174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342174.P4399683615547316971

`p?[A342173(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A342174

/-- `p?[A342173(n+1)]` -/
def P4399683615547316971.Spec : Prop :=
  ∀ n, P4399683615547316971.a n = A342174 (n + 1)

theorem P4399683615547316971.correct : P4399683615547316971.Spec := by
  intro n
  simp only [A342174, Nat.add_sub_cancel]

end A342174

/-! ## A342174.P5951390568730668723

`p?[A308495(n+1)-2]`
-/

namespace A342174.P5951390568730668723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308495 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342174.P5951390568730668723

namespace A342174

/-- `p?[A308495(n+1)-2]` -/
def P5951390568730668723.Spec : Prop :=
  ∀ n, P5951390568730668723.a n = A342174 (n + 1)

end A342174

/-! ## A342174.P850475536625405761

`∩[A216285(n+1), A342173(n+1)]`
-/

namespace A342174.P850475536625405761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P850475536625405761

namespace A342174

/-- `∩[A216285(n+1), A342173(n+1)]` -/
def P850475536625405761.Spec : Prop :=
  ∀ n, (P850475536625405761.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P17617827623139360759

`∩[A065376(n+1), A342173(n+1)]`
-/

namespace A342174.P17617827623139360759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P17617827623139360759

namespace A342174

/-- `∩[A065376(n+1), A342173(n+1)]` -/
def P17617827623139360759.Spec : Prop :=
  ∀ n, (P17617827623139360759.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P2313811080705079954

`∩[A000040(n+1), A342173(n+1)]`
-/

namespace A342174.P2313811080705079954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P2313811080705079954

namespace A342174

/-- `∩[A000040(n+1), A342173(n+1)]` -/
def P2313811080705079954.Spec : Prop :=
  ∀ n, (P2313811080705079954.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P7079149300215834480

`∩[A004139(n+1), A342173(n+1)]`
-/

namespace A342174.P7079149300215834480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P7079149300215834480

namespace A342174

/-- `∩[A004139(n+1), A342173(n+1)]` -/
def P7079149300215834480.Spec : Prop :=
  ∀ n, (P7079149300215834480.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P3922301810949132309

`∩[A045319(n+1), A342173(n+1)]`
-/

namespace A342174.P3922301810949132309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P3922301810949132309

namespace A342174

/-- `∩[A045319(n+1), A342173(n+1)]` -/
def P3922301810949132309.Spec : Prop :=
  ∀ n, (P3922301810949132309.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P4373360625953399225

`∩[A065091(n+1), A342173(n+1)]`
-/

namespace A342174.P4373360625953399225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P4373360625953399225

namespace A342174

/-- `∩[A065091(n+1), A342173(n+1)]` -/
def P4373360625953399225.Spec : Prop :=
  ∀ n, (P4373360625953399225.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P8877133586015428926

`∩[A065396(n+1), A342173(n+1)]`
-/

namespace A342174.P8877133586015428926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P8877133586015428926

namespace A342174

/-- `∩[A065396(n+1), A342173(n+1)]` -/
def P8877133586015428926.Spec : Prop :=
  ∀ n, (P8877133586015428926.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P12520700703106400304

`∩[A175787(n+1), A342173(n+1)]`
-/

namespace A342174.P12520700703106400304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P12520700703106400304

namespace A342174

/-- `∩[A175787(n+1), A342173(n+1)]` -/
def P12520700703106400304.Spec : Prop :=
  ∀ n, (P12520700703106400304.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P7171494086146885056

`∩[A182140(n+1), A342173(n+1)]`
-/

namespace A342174.P7171494086146885056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P7171494086146885056

namespace A342174

/-- `∩[A182140(n+1), A342173(n+1)]` -/
def P7171494086146885056.Spec : Prop :=
  ∀ n, (P7171494086146885056.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P169242040705575702

`∩[A197636(n+1), A342173(n+1)]`
-/

namespace A342174.P169242040705575702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P169242040705575702

namespace A342174

/-- `∩[A197636(n+1), A342173(n+1)]` -/
def P169242040705575702.Spec : Prop :=
  ∀ n, (P169242040705575702.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P6773649964298807238

`∩[A328232(n+1), A342173(n+1)]`
-/

namespace A342174.P6773649964298807238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342174.P6773649964298807238

namespace A342174

/-- `∩[A328232(n+1), A342173(n+1)]` -/
def P6773649964298807238.Spec : Prop :=
  ∀ n, (P6773649964298807238.a n : ℤ) = A342174 (n + 1)

end A342174

/-! ## A342174.P10436634880054961842

`record[A006530(A342173(n+3))]`
-/

namespace A342174.P10436634880054961842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A342173 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342174.P10436634880054961842

namespace A342174

/-- `record[A006530(A342173(n+3))]` -/
def P10436634880054961842.Spec : Prop :=
  ∀ n, P10436634880054961842.a n = A342174 (n + 1)

end A342174

/-! ## A342174.P14891623773996165217

`filter[A342173(n+2), A010051(#)]`
-/

namespace A342174.P14891623773996165217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A342174.P14891623773996165217

namespace A342174

/-- `filter[A342173(n+2), A010051(#)]` -/
def P14891623773996165217.Spec : Prop :=
  ∀ n, P14891623773996165217.a n = A342174 (n + 1)

end A342174

/-! ## A342174.P1401577510888392498

`filter[A342173(n+2), A353817(#)]`
-/

namespace A342174.P1401577510888392498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A342174.P1401577510888392498

namespace A342174

/-- `filter[A342173(n+2), A353817(#)]` -/
def P1401577510888392498.Spec : Prop :=
  ∀ n, P1401577510888392498.a n = A342174 (n + 1)

end A342174

/-! ## A342174.P10658982381199937745

`p?[A013939(A006093(n+1))]`
-/

namespace A342174.P10658982381199937745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342174.P10658982381199937745

namespace A342174

/-- `p?[A013939(A006093(n+1))]` -/
def P10658982381199937745.Spec : Prop :=
  ∀ n, P10658982381199937745.a n = A342174 (n + 1)

end A342174

/-! ## A342174.P2284174596183619536

`p?[A013939(A000040(n+1)-1)]`
-/

namespace A342174.P2284174596183619536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342174.P2284174596183619536

namespace A342174

/-- `p?[A013939(A000040(n+1)-1)]` -/
def P2284174596183619536.Spec : Prop :=
  ∀ n, P2284174596183619536.a n = A342174 (n + 1)

end A342174

/-! ## A342174.P1550860359116682429

`p?[A013939(record[A020639(n+1)])-1]`
-/

namespace A342174.P1550860359116682429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342174.P1550860359116682429

namespace A342174

/-- `p?[A013939(record[A020639(n+1)])-1]` -/
def P1550860359116682429.Spec : Prop :=
  ∀ n, P1550860359116682429.a n = A342174 (n + 1)

end A342174

/-! ## A342174.P16573716231364585536

`p?[A013939(lt[A001222(n+2), 2]+2)-1]`
-/

namespace A342174.P16573716231364585536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342174.P16573716231364585536

namespace A342174

/-- `p?[A013939(lt[A001222(n+2), 2]+2)-1]` -/
def P16573716231364585536.Spec : Prop :=
  ∀ n, P16573716231364585536.a n = A342174 (n + 1)

end A342174

/-!
# A342175: a(n) is the difference between the n-th composite number and the smallest larger composite to which it is relatively prime.

The programs for A342175, there is no canonical definition to state claims against.
-/

/-! ## A342175.P11693353428732801339

`A113496(n+1)-A002808(n+1)`
-/

namespace A342175.P11693353428732801339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113496 (n + 1) - A002808 (n + 1)

end

end A342175.P11693353428732801339

/-! ## A342175.P1272818767010172055

`A113484(A002808(n+1))-Δ[A053767(n)]`
-/

namespace A342175.P1272818767010172055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A002808 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A342175.P1272818767010172055

/-! ## A342175.P16733159358869838732

`A113484(A018252(n+2))-Δ[A053767(n)]`
-/

namespace A342175.P16733159358869838732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A018252 (n + 2)).toNat - (f1 (n + 1) - f1 n)

end

end A342175.P16733159358869838732

/-! ## A342175.P13836540481515062255

`A113484(A141468(n+3))-Δ[A053767(n)]`
-/

namespace A342175.P13836540481515062255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A141468 (n + 3)).toNat - (f1 (n + 1) - f1 n)

end

end A342175.P13836540481515062255

/-! ## A342175.P7172747700781400773

`A113484(A002808(n+1))-comp[A351078(n)]`
-/

namespace A342175.P7172747700781400773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A002808 (n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A342175.P7172747700781400773

/-! ## A342175.P1314059450729223329

`A113484(A018252(n+2))-comp[A351078(n)]`
-/

namespace A342175.P1314059450729223329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A018252 (n + 2)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A342175.P1314059450729223329

/-! ## A342175.P7811628605594328245

`A113484(A141468(n+3))-comp[A351078(n)]`
-/

namespace A342175.P7811628605594328245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A141468 (n + 3)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A342175.P7811628605594328245

/-! ## A342175.P3974873200259186672

`A113484(A002808(n+1))-A141468(n+3)`
-/

namespace A342175.P3974873200259186672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A002808 (n + 1)).toNat - A141468 (n + 3)

end

end A342175.P3974873200259186672

/-! ## A342175.P17885415888823052190

`A113484(A018252(n+2))-A141468(n+3)`
-/

namespace A342175.P17885415888823052190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A018252 (n + 2)).toNat - A141468 (n + 3)

end

end A342175.P17885415888823052190

/-! ## A342175.P7876514020793988517

`A113484(A002808(n+1))-lt[1, A107286(n)]`
-/

namespace A342175.P7876514020793988517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A002808 (n + 1)).toNat - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A342175.P7876514020793988517

/-!
# A342176: Tower of primes modulo n: a(n) = (2^3^5^7^ ... ^prime(n)) mod n.

The programs for A342176, there is no canonical definition to state claims against.
-/

/-! ## A342176.P15230436717620678169

`A056239(A054551(n))%A007948(n+1)`
-/

namespace A342176.P15230436717620678169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A054551 n).toNat) (A007948 (n + 1))

end

end A342176.P15230436717620678169

/-! ## A342176.P14812619630906702305

`A000578(A143690(n+1)+1)%A050985(n+1)`
-/

namespace A342176.P14812619630906702305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A143690 (n + 1) + 1).toNat) (A050985 (n + 1))

end

end A342176.P14812619630906702305

/-! ## A342176.P575615259301540046

`A247541(A247541(2*(n+1)))%A360539(n+1)`
-/

namespace A342176.P575615259301540046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247541 (A247541 (2 * (n + 1))).toNat) (A360539 (n + 1))

end

end A342176.P575615259301540046

/-!
# A342177: Product of first n Motzkin numbers.

The programs for A342177, there is no canonical definition to state claims against.
-/

/-! ## A342177.P5120179417522538849

`∏[A001006(n)]`
-/

namespace A342177.P5120179417522538849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342177.P5120179417522538849

/-! ## A342177.P581282454409594144

`∏[sqrt(A133053(n))]`
-/

namespace A342177.P581282454409594144
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133053 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342177.P581282454409594144

/-! ## A342177.P491051392287865380

`∏[A064189(∑[n])]`
-/

namespace A342177.P491051392287865380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342177.P491051392287865380

/-! ## A342177.P14579948364572139968

`∏[A064191(∑[n])]`
-/

namespace A342177.P14579948364572139968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064191 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342177.P14579948364572139968

/-! ## A342177.P12552704117368899199

`∏[A064645(∑[n])]`
-/

namespace A342177.P12552704117368899199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342177.P12552704117368899199

/-!
# A342178: Product of first n central Delannoy numbers.

The programs for A342178, there is no canonical definition to state claims against.
-/

/-! ## A342178.P10613758737582258286

`∏[A001850(n)]`
-/

namespace A342178.P10613758737582258286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342178.P10613758737582258286

/-! ## A342178.P9240093496116104585

`∏[sqrt(A243949(n))]`
-/

namespace A342178.P9240093496116104585
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A243949 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342178.P9240093496116104585

/-! ## A342178.P13353733580775503669

`∏[∑[A110170(n)]]`
-/

namespace A342178.P13353733580775503669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342178.P13353733580775503669

/-! ## A342178.P6798459369296610056

`∏[A118384(∑[n])]`
-/

namespace A342178.P6798459369296610056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342178.P6798459369296610056

/-! ## A342178.P4508825631283246461

`∏[A376467(∑[n])]`
-/

namespace A342178.P4508825631283246461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376467 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342178.P4508825631283246461

/-!
# A342179: a(n) = number of nodes of degree 3 or 4 that are at distance n from the origin in the graph of the variant of the Rick Kenyon tiling where we tile a half-quadrant with L-tiles and backward-L tiles.

The programs for A342179, there is no canonical definition to state claims against.
-/

/-! ## A342179.P10181559732733419057

`A194297(A022113(n))+n`
-/

namespace A342179.P10181559732733419057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194297 (A022113 n).toNat + (n : ℤ)

end

end A342179.P10181559732733419057

/-! ## A342179.P18420332717339044366

`A000041(A147987(3*(n+1)))%3+n`
-/

namespace A342179.P18420332717339044366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A147987 (3 * (n + 1))).toNat) 3 + (n : ℤ)

end

end A342179.P18420332717339044366

/-! ## A342179.P11821818449476872697

`A116590(n)-A327342(A046704(n+1))`
-/

namespace A342179.P11821818449476872697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116590 n - A327342 (A046704 (n + 1)).toNat

end

end A342179.P11821818449476872697

/-! ## A342179.P12581268912303308991

`A294107(eq[A005171(n+1), A088239(n+1)])`
-/

namespace A342179.P12581268912303308991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294107 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A342179.P12581268912303308991

/-!
# A342180: a(1)=2, a(2)=3, a(n+1) is the smallest prime obtainable using the Fibonacci recurrence, with a(n-1) and a(n-2) as start terms.

The programs for A342180, there is no canonical definition to state claims against.
-/

/-! ## A342180.P15203673661466522515

`p?[round(A133020(n+1)/4)]`
-/

namespace A342180.P15203673661466522515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A133020 (n + 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342180.P15203673661466522515

/-! ## A342180.P15457023273485452175

`A360822(A365858(n+2))`
-/

namespace A342180.P15457023273485452175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360822 (A365858 (n + 2)).toNat

end

end A342180.P15457023273485452175

/-!
# A342181: Product of first n Robbins numbers.

The programs for A342181, there is no canonical definition to state claims against.
-/

/-! ## A342181.P15598714537537206628

`∏[A005130(n)]`
-/

namespace A342181.P15598714537537206628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342181.P15598714537537206628

/-! ## A342181.P1953742016432589710

`∏[sqrt(A049503(n))]`
-/

namespace A342181.P1953742016432589710
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049503 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342181.P1953742016432589710

/-! ## A342181.P1703792899411781861

`∏[A048601(∑[n+1])]`
-/

namespace A342181.P1703792899411781861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048601 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342181.P1703792899411781861

/-! ## A342181.P2580959859902564174

`∏[A297622(A000096(n))]`
-/

namespace A342181.P2580959859902564174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297622 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342181.P2580959859902564174

/-! ## A342181.P13918668621312027090

`∏[A321511(n)+A000142(n)]`
-/

namespace A342181.P13918668621312027090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321511 n + A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342181.P13918668621312027090

/-!
# A342182: Sum_{n>=0} a(n) * x^n / (n!)^2 = 1 / (1 - x * BesselI(0,2*sqrt(x))).

The programs for A342182, there is no canonical definition to state claims against.
-/

/-! ## A342182.P17536251744647586833

`A113451(∑[A053525(n)]²)`
-/

namespace A342182.P17536251744647586833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113451 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A342182.P17536251744647586833

/-!
# A342183: Primes q such that 15*q-2 and 15*q+2 are cousin primes.

The programs for A342183, the canonical program `A342183.P7288875987638950866` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342183 has offset 1).

The definition of A342183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342183.P7288875987638950866

`p?[ceil(A289413(n+1)/15)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A342183

/-- `p?[ceil(A289413(n+1)/15)]` -/
def P7288875987638950866.Spec : Prop :=
  ∀ n, P7288875987638950866.a n = A342183 (n + 1)

theorem P7288875987638950866.correct : P7288875987638950866.Spec := by
  intro n
  simp only [A342183, Nat.add_sub_cancel]

end A342183

/-! ## A342183.P17029967660346807690

`record[A020639(A233348(n+2)/5)]`
-/

namespace A342183.P17029967660346807690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A233348 (n + 2) : ℚ) / 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342183.P17029967660346807690

namespace A342183

/-- `record[A020639(A233348(n+2)/5)]` -/
def P17029967660346807690.Spec : Prop :=
  ∀ n, P17029967660346807690.a n = A342183 (n + 1)

end A342183

/-! ## A342183.P9291101887758003540

`p?[A004396(A162410(n+1))]`
-/

namespace A342183.P9291101887758003540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A162410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342183.P9291101887758003540

namespace A342183

/-- `p?[A004396(A162410(n+1))]` -/
def P9291101887758003540.Spec : Prop :=
  ∀ n, P9291101887758003540.a n = A342183 (n + 1)

end A342183

/-! ## A342183.P8615225566282888565

`p?[A004523(A162410(n+1)+1)]`
-/

namespace A342183.P8615225566282888565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A162410 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342183.P8615225566282888565

namespace A342183

/-- `p?[A004523(A162410(n+1)+1)]` -/
def P8615225566282888565.Spec : Prop :=
  ∀ n, P8615225566282888565.a n = A342183 (n + 1)

end A342183

/-!
# A342184: Primes q such that 10*q-3 and 10*q+1 are cousin primes.

The programs for A342184, the canonical program `A342184.P10340909780046926633` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342184 has offset 1).

The definition of A342184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342184.P10340909780046926633

`p?[ceil(A289353(n+1)/10)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A342184

/-- `p?[ceil(A289353(n+1)/10)]` -/
def P10340909780046926633.Spec : Prop :=
  ∀ n, P10340909780046926633.a n = A342184 (n + 1)

theorem P10340909780046926633.correct : P10340909780046926633.Spec := by
  intro n
  simp only [A342184, Nat.add_sub_cancel]

end A342184

/-! ## A342184.P7351150101687067827

`∩[A023237(n+1), A024914(n+1)]`
-/

namespace A342184.P7351150101687067827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342184.P7351150101687067827

namespace A342184

/-- `∩[A023237(n+1), A024914(n+1)]` -/
def P7351150101687067827.Spec : Prop :=
  ∀ n, (P7351150101687067827.a n : ℤ) = A342184 (n + 1)

end A342184

/-! ## A342184.P7496318636300859770

`p?[∩[A024912(n+1), A024914(n+1)]]`
-/

namespace A342184.P7496318636300859770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A342184.P7496318636300859770

namespace A342184

/-- `p?[∩[A024912(n+1), A024914(n+1)]]` -/
def P7496318636300859770.Spec : Prop :=
  ∀ n, (P7496318636300859770.a n : ℤ) = A342184 (n + 1)

end A342184

/-! ## A342184.P12372049315493868358

`p?[∩[A024912(n+1), A102342(n+1)+1]]`
-/

namespace A342184.P12372049315493868358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A342184.P12372049315493868358

namespace A342184

/-- `p?[∩[A024912(n+1), A102342(n+1)+1]]` -/
def P12372049315493868358.Spec : Prop :=
  ∀ n, (P12372049315493868358.a n : ℤ) = A342184 (n + 1)

end A342184

/-!
# A342185: Primes q such that 10*q-1 and 10*q+3 are cousin primes.

The programs for A342185, the canonical program `A342185.P15363331262892615647` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342185 has offset 1).

The definition of A342185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1069 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342185.P9840305445284882706

`∩[A023238(n+1), A158017(n+1)]`
-/

namespace A342185.P9840305445284882706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342185.P9840305445284882706

namespace A342185

/-- `∩[A023238(n+1), A158017(n+1)]` -/
def P9840305445284882706.Spec : Prop :=
  ∀ n, (P9840305445284882706.a n : ℤ) = A342185 (n + 1)

end A342185

/-! ## A342185.P15363331262892615647

`p?[ceil(A074822(n+1)/10)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A342185

/-- `p?[ceil(A074822(n+1)/10)]` -/
def P15363331262892615647.Spec : Prop :=
  ∀ n, P15363331262892615647.a n = A342185 (n + 1)

theorem P15363331262892615647.correct : P15363331262892615647.Spec := by
  intro n
  simp only [A342185, Nat.add_sub_cancel]

end A342185

/-! ## A342185.P14743369091353432733

`record[A020639(ceil(A074822(n+1)/10))]`
-/

namespace A342185.P14743369091353432733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈(A074822 (n + 1) : ℚ) / 10⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342185.P14743369091353432733

namespace A342185

/-- `record[A020639(ceil(A074822(n+1)/10))]` -/
def P14743369091353432733.Spec : Prop :=
  ∀ n, P14743369091353432733.a n = A342185 (n + 1)

end A342185

/-! ## A342185.P7956099422054783905

`∩[A023238(n+1), A105042(n+1)]`
-/

namespace A342185.P7956099422054783905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342185.P7956099422054783905

namespace A342185

/-- `∩[A023238(n+1), A105042(n+1)]` -/
def P7956099422054783905.Spec : Prop :=
  ∀ n, (P7956099422054783905.a n : ℤ) = A342185 (n + 1)

end A342185

/-! ## A342185.P13349724417544362167

`∩[A102338(n+1), A158017(n+1)]`
-/

namespace A342185.P13349724417544362167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342185.P13349724417544362167

namespace A342185

/-- `∩[A102338(n+1), A158017(n+1)]` -/
def P13349724417544362167.Spec : Prop :=
  ∀ n, (P13349724417544362167.a n : ℤ) = A342185 (n + 1)

end A342185

/-!
# A342187: Numbers k such that both k and k+1 are not exponentially odd numbers.

The programs for A342187, the canonical program `A342187.P2134452923969992005` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342187 has offset 1).

The definition of A342187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342187.P2134452923969992005

`∩[A072587(n+1)-1, A072587(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A342187

/-- `∩[A072587(n+1)-1, A072587(n+1)]` -/
def P2134452923969992005.Spec : Prop :=
  ∀ n, (P2134452923969992005.a n : ℤ) = A342187 (n + 1)

theorem P2134452923969992005.correct : P2134452923969992005.Spec := by
  intro n
  simp only [A342187, Nat.add_sub_cancel]

end A342187

/-! ## A342187.P3484666650463595699

`∩[A072587(n+1), A023443(A072587(n+1))]`
-/

namespace A342187.P3484666650463595699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072587 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342187.P3484666650463595699

namespace A342187

/-- `∩[A072587(n+1), A023443(A072587(n+1))]` -/
def P3484666650463595699.Spec : Prop :=
  ∀ n, (P3484666650463595699.a n : ℤ) = A342187 (n + 1)

end A342187

/-! ## A342187.P6855162710537703424

`A068781(A032555(n+1)+3)`
-/

namespace A342187.P6855162710537703424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (A032555 (n + 1) + 3).toNat

end

end A342187.P6855162710537703424

namespace A342187

/-- `A068781(A032555(n+1)+3)` -/
def P6855162710537703424.Spec : Prop :=
  ∀ n, P6855162710537703424.a n = A342187 (n + 1)

end A342187

/-! ## A342187.P3926561520746930739

`A068781(A032559(n+1)+3)`
-/

namespace A342187.P3926561520746930739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (A032559 (n + 1) + 3).toNat

end

end A342187.P3926561520746930739

namespace A342187

/-- `A068781(A032559(n+1)+3)` -/
def P3926561520746930739.Spec : Prop :=
  ∀ n, P3926561520746930739.a n = A342187 (n + 1)

end A342187

/-! ## A342187.P539634411351619494

`A068781(A077739(n+1)+3)`
-/

namespace A342187.P539634411351619494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (A077739 (n + 1) + 3).toNat

end

end A342187.P539634411351619494

namespace A342187

/-- `A068781(A077739(n+1)+3)` -/
def P539634411351619494.Spec : Prop :=
  ∀ n, P539634411351619494.a n = A342187 (n + 1)

end A342187

/-!
# A342188: Numbers k such that both k and k+1 are not exponentially squarefree numbers.

The programs for A342188, there is no canonical definition to state claims against.
-/

/-! ## A342188.P9826995653217405819

`∩[A130897(n+1)-1, A130897(n+1)]`
-/

namespace A342188.P9826995653217405819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342188.P9826995653217405819

/-!
# A342189: Numbers k such that both k and k+1 are not exponentially 2^n-numbers.

The programs for A342189, there is no canonical definition to state claims against.
-/

/-! ## A342189.P14366243190788365872

`A068140(A074946(n+1)%A109317(3*(n+1)))`
-/

namespace A342189.P14366243190788365872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (Int.tmod (A074946 (n + 1)) (A109317 (3 * (n + 1)))).toNat

end

end A342189.P14366243190788365872

/-! ## A342189.P18291074581288806898

`A068140(A292125(n+1)+1)`
-/

namespace A342189.P18291074581288806898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (A292125 (n + 1) + 1).toNat

end

end A342189.P18291074581288806898

/-!
# A342190: Numbers k such that A001065(k) = sigma(k) - k is the sum of 2 squares.

The programs for A342190, the canonical program `A342190.P10398113537479394527` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342190 has offset 1).

The definition of A342190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342190.P10398113537479394527

`lt[A070176(A001065(n+1)), 1]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A342190

/-- `lt[A070176(A001065(n+1)), 1]+1` -/
def P10398113537479394527.Spec : Prop :=
  ∀ n, (P10398113537479394527.a n : ℤ) = A342190 (n + 1)

theorem P10398113537479394527.correct : P10398113537479394527.Spec := by
  intro n
  simp only [A342190, Nat.add_sub_cancel]

end A342190

/-! ## A342190.P3917019450837579114

`lt[A070176(A173455(n+1)), 1]+1`
-/

namespace A342190.P3917019450837579114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A173455 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A342190.P3917019450837579114

namespace A342190

/-- `lt[A070176(A173455(n+1)), 1]+1` -/
def P3917019450837579114.Spec : Prop :=
  ∀ n, (P3917019450837579114.a n : ℤ) = A342190 (n + 1)

end A342190

/-!
# A342191: Numbers with no adjacent prime indices having quotient < 1/2.

The programs for A342191, there is no canonical definition to state claims against.
-/

/-! ## A342191.P15693531728270114537

`∪[A362981(n+1), A083494(n)]`
-/

namespace A342191.P15693531728270114537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342191.P15693531728270114537

/-! ## A342191.P15924478080291434892

`∪[A014407(n+1), A362981(n+1)]`
-/

namespace A342191.P15924478080291434892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342191.P15924478080291434892

/-! ## A342191.P3786467581731048753

`∪[A085126(n+1), A325364(n+1)]`
-/

namespace A342191.P3786467581731048753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342191.P3786467581731048753

/-! ## A342191.P14907263686035397879

`∪[A085126(n+1), A362981(n+1)]`
-/

namespace A342191.P14907263686035397879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342191.P14907263686035397879

/-! ## A342191.P1325544311104104430

`∪[A085129(n+1), A362981(n+1)]`
-/

namespace A342191.P1325544311104104430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342191.P1325544311104104430

/-! ## A342191.P13603094834034075219

`∪[A131933(n+1), A362981(n+1)]`
-/

namespace A342191.P13603094834034075219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342191.P13603094834034075219

/-! ## A342191.P12132501983548332243

`∪[A140067(n+1), A362981(n+1)]`
-/

namespace A342191.P12132501983548332243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342191.P12132501983548332243

/-! ## A342191.P9747221412439668132

`lt[A286470(n+1), A182850(n+4)]+1`
-/

namespace A342191.P9747221412439668132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A342191.P9747221412439668132

/-! ## A342191.P6506048755251616206

`A253784(A334107(A008578(n+2)²))`
-/

namespace A342191.P6506048755251616206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (A334107 (A008578 (n + 2) ^ 2).toNat).toNat

end

end A342191.P6506048755251616206

/-!
# A342192: Heinz numbers of partitions of crank 0.

The programs for A342192, there is no canonical definition to state claims against.
-/

/-! ## A342192.P8494767412228009856

`eq[0, A257989(n+2)]+2`
-/

namespace A342192.P8494767412228009856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257989 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A342192.P8494767412228009856

/-! ## A342192.P13900029929736826341

`eq[1, A257989(A168101(n))]`
-/

namespace A342192.P13900029929736826341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257989 (A168101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342192.P13900029929736826341

/-! ## A342192.P17191303976985300608

`eq[0, A257989(A233583(n+1))]`
-/

namespace A342192.P17191303976985300608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257989 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342192.P17191303976985300608

/-! ## A342192.P473369475036060108

`A061228(eq[0, A257989(n+2)])`
-/

namespace A342192.P473369475036060108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257989 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342192.P473369475036060108

/-! ## A342192.P6920592382554747093

`A265283(eq[0, A257989(n+2)])`
-/

namespace A342192.P6920592382554747093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257989 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342192.P6920592382554747093

/-!
# A342193: Numbers with no prime index dividing all the other prime indices.

The programs for A342193, there is no canonical definition to state claims against.
-/

/-! ## A342193.P16132116089462564095

`record[(n+1)*A316437(n+1)%2]`
-/

namespace A342193.P16132116089462564095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A316437 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342193.P16132116089462564095

/-! ## A342193.P5748349339847826944

`comp[A316437(abs(1-n)+1)%2+n]`
-/

namespace A342193.P5748349339847826944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316437 (|1 - (n : ℤ)| + 1).toNat) 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A342193.P5748349339847826944

/-! ## A342193.P7428552715859729083

`comp[A316437(n+2)%2+n+1]+1`
-/

namespace A342193.P7428552715859729083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316437 (n + 2)) 2 + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342193.P7428552715859729083

/-! ## A342193.P5867810803620230588

`∪[A343338(n+1), A085474(n)]`
-/

namespace A342193.P5867810803620230588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085474 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342193.P5867810803620230588

/-! ## A342193.P9294761052519251135

`∪[A036798(n+1), A343338(n+1)]`
-/

namespace A342193.P9294761052519251135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342193.P9294761052519251135

/-! ## A342193.P1284160474446810212

`∪[A044427(n+1), A343338(n+1)]`
-/

namespace A342193.P1284160474446810212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342193.P1284160474446810212

/-! ## A342193.P11207509178453605866

`∪[A044808(n+1), A343338(n+1)]`
-/

namespace A342193.P11207509178453605866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342193.P11207509178453605866

/-! ## A342193.P5061064742450966025

`∪[A055970(n+1), A343338(n+1)]`
-/

namespace A342193.P5061064742450966025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342193.P5061064742450966025

/-! ## A342193.P716644812040680171

`∪[A066232(n+1), A343338(n+1)]`
-/

namespace A342193.P716644812040680171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342193.P716644812040680171

/-! ## A342193.P9916250863287068186

`∪[A068355(n+1), A343338(n+1)]`
-/

namespace A342193.P9916250863287068186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342193.P9916250863287068186

/-!
# A342194: Number of strict compositions of n with equal differences, or strict arithmetic progressions summing to n.

The programs for A342194, there is no canonical definition to state claims against.
-/

/-! ## A342194.P4393157115906757287

`2*A049982(round(acot(n)+n))+1`
-/

namespace A342194.P4393157115906757287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049982 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A342194.P4393157115906757287

/-! ## A342194.P3845528923505645320

`2*A049982(abs(1-n)+1)+1`
-/

namespace A342194.P3845528923505645320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049982 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A342194.P3845528923505645320

/-! ## A342194.P6621861323394510191

`2*(A049982(A028310(n))+1)-1`
-/

namespace A342194.P6621861323394510191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049982 (A028310 n).toNat + 1) - 1

end

end A342194.P6621861323394510191

/-! ## A342194.P9086308976543130068

`2*(A049988(n)-A032741(n))-1`
-/

namespace A342194.P9086308976543130068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049988 n - A032741 n) - 1

end

end A342194.P9086308976543130068

/-! ## A342194.P7598309706019827137

`A005408(A049988(n)-∏{e}[n, #+1])`
-/

namespace A342194.P7598309706019827137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A049988 n - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A342194.P7598309706019827137

/-! ## A342194.P2494045277869066942

`2*(A049982(A000007(n)+n)-1)+3`
-/

namespace A342194.P2494045277869066942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049982 (A000007 n + (n : ℤ)).toNat - 1) + 3

end

end A342194.P2494045277869066942

/-! ## A342194.P9504150153409159735

`A004273(A049980(A028310(n)))`
-/

namespace A342194.P9504150153409159735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A049980 (A028310 n).toNat).toNat

end

end A342194.P9504150153409159735

/-! ## A342194.P14377971191434636148

`A001650(A049980(A028310(n))²)`
-/

namespace A342194.P14377971191434636148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A049980 (A028310 n).toNat ^ 2).toNat

end

end A342194.P14377971191434636148

/-! ## A342194.P16681943788883227272

`A005408(A049982(A233583(n+1)))`
-/

namespace A342194.P16681943788883227272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A049982 (A233583 (n + 1)).toNat).toNat

end

end A342194.P16681943788883227272

/-! ## A342194.P10023001691556219674

`A008619(4*A049982(A028310(n)))`
-/

namespace A342194.P10023001691556219674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A049982 (A028310 n).toNat).toNat

end

end A342194.P10023001691556219674

/-!
# A342196: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n,k)^2 * a(k-1).

The programs for A342196, there is no canonical definition to state claims against.
-/

/-! ## A342196.P4078175062885037706

`or(1, A005206(A034430(n)))`
-/

namespace A342196.P4078175062885037706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005206 (A034430 n).toNat)

end

end A342196.P4078175062885037706

/-! ## A342196.P16876159250649342973

`A038502(A039618(n)+A014288(n))`
-/

namespace A342196.P16876159250649342973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A039618 n + A014288 n).toNat

end

end A342196.P16876159250649342973

/-!
# A342197: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n,k)^3 * a(k-1).

The programs for A342197, there is no canonical definition to state claims against.
-/

/-! ## A342197.P8803502392617133816

`A351595(A301241(n))`
-/

namespace A342197.P8803502392617133816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 (A301241 n).toNat

end

end A342197.P8803502392617133816

/-!
# A342198: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n,k)^4 * a(k-1).

The programs for A342198, there is no canonical definition to state claims against.
-/

/-! ## A342198.P9812132197605893647

`A193443(n)+A020848(A193436(n))`
-/

namespace A342198.P9812132197605893647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193443 n + A020848 (A193436 n).toNat

end

end A342198.P9812132197605893647

