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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
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
# A156300: Primes p such that 4*p - 5 is also prime.

The programs for A156300, the canonical program `A156300.P3226959070886368059` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156300 has offset 1).

The definition of A156300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156300.P3226959070886368059

`p?[A156287(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156300

/-- `p?[A156287(n+1)]` -/
def P3226959070886368059.Spec : Prop :=
  ∀ n, P3226959070886368059.a n = A156300 (n + 1)

theorem P3226959070886368059.correct : P3226959070886368059.Spec := by
  intro n
  simp only [A156300, Nat.add_sub_cancel]

end A156300

/-! ## A156300.P5607008258304774964

`p?[A005099(n+1)+1]`
-/

namespace A156300.P5607008258304774964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156300.P5607008258304774964

namespace A156300

/-- `p?[A005099(n+1)+1]` -/
def P5607008258304774964.Spec : Prop :=
  ∀ n, P5607008258304774964.a n = A156300 (n + 1)

end A156300

/-! ## A156300.P663885385336230729

`p?[A095278(n+1)+2]`
-/

namespace A156300.P663885385336230729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156300.P663885385336230729

namespace A156300

/-- `p?[A095278(n+1)+2]` -/
def P663885385336230729.Spec : Prop :=
  ∀ n, P663885385336230729.a n = A156300 (n + 1)

end A156300

/-! ## A156300.P15812338802038360998

`p?[A089986(n+1)+3]`
-/

namespace A156300.P15812338802038360998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156300.P15812338802038360998

namespace A156300

/-- `p?[A089986(n+1)+3]` -/
def P15812338802038360998.Spec : Prop :=
  ∀ n, P15812338802038360998.a n = A156300 (n + 1)

end A156300

/-! ## A156300.P875772984966702647

`record[A006530(A156287(n+3))]`
-/

namespace A156300.P875772984966702647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A156287 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156300.P875772984966702647

namespace A156300

/-- `record[A006530(A156287(n+3))]` -/
def P875772984966702647.Spec : Prop :=
  ∀ n, P875772984966702647.a n = A156300 (n + 1)

end A156300

/-! ## A156300.P15864591244110679132

`filter[A156287(n+1), A010051(#)]`
-/

namespace A156300.P15864591244110679132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A156300.P15864591244110679132

namespace A156300

/-- `filter[A156287(n+1), A010051(#)]` -/
def P15864591244110679132.Spec : Prop :=
  ∀ n, P15864591244110679132.a n = A156300 (n + 1)

end A156300

/-! ## A156300.P8346152849521913063

`record[A006530(A005099(n+1)+1)]`
-/

namespace A156300.P8346152849521913063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005099 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156300.P8346152849521913063

namespace A156300

/-- `record[A006530(A005099(n+1)+1)]` -/
def P8346152849521913063.Spec : Prop :=
  ∀ n, P8346152849521913063.a n = A156300 (n + 1)

end A156300

/-! ## A156300.P12935360133579158480

`record[A020639(A005099(n+1)+1)]`
-/

namespace A156300.P12935360133579158480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005099 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156300.P12935360133579158480

namespace A156300

/-- `record[A020639(A005099(n+1)+1)]` -/
def P12935360133579158480.Spec : Prop :=
  ∀ n, P12935360133579158480.a n = A156300 (n + 1)

end A156300

/-! ## A156300.P13424906675287568451

`record[A006530(A095278(n+1)+2)]`
-/

namespace A156300.P13424906675287568451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A095278 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156300.P13424906675287568451

namespace A156300

/-- `record[A006530(A095278(n+1)+2)]` -/
def P13424906675287568451.Spec : Prop :=
  ∀ n, P13424906675287568451.a n = A156300 (n + 1)

end A156300

/-! ## A156300.P11358107636569807570

`record[A020639(A095278(n+1)+2)]`
-/

namespace A156300.P11358107636569807570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A095278 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156300.P11358107636569807570

namespace A156300

/-- `record[A020639(A095278(n+1)+2)]` -/
def P11358107636569807570.Spec : Prop :=
  ∀ n, P11358107636569807570.a n = A156300 (n + 1)

end A156300

/-! ## A156300.P18303369034483941483

`∩[A000040(n+1), A156287(n+1)]`
-/

namespace A156300.P18303369034483941483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156300.P18303369034483941483

namespace A156300

/-- `∩[A000040(n+1), A156287(n+1)]` -/
def P18303369034483941483.Spec : Prop :=
  ∀ n, (P18303369034483941483.a n : ℤ) = A156300 (n + 1)

end A156300

/-! ## A156300.P18342458141813824628

`∩[A008578(n+1), A156287(n+1)]`
-/

namespace A156300.P18342458141813824628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156300.P18342458141813824628

namespace A156300

/-- `∩[A008578(n+1), A156287(n+1)]` -/
def P18342458141813824628.Spec : Prop :=
  ∀ n, (P18342458141813824628.a n : ℤ) = A156300 (n + 1)

end A156300

/-! ## A156300.P7486933157012830359

`∩[A040116(n+1), A156287(n+1)]`
-/

namespace A156300.P7486933157012830359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156300.P7486933157012830359

namespace A156300

/-- `∩[A040116(n+1), A156287(n+1)]` -/
def P7486933157012830359.Spec : Prop :=
  ∀ n, (P7486933157012830359.a n : ℤ) = A156300 (n + 1)

end A156300

/-! ## A156300.P9927225123444459456

`∩[A045319(n+1), A156287(n+1)]`
-/

namespace A156300.P9927225123444459456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156300.P9927225123444459456

namespace A156300

/-- `∩[A045319(n+1), A156287(n+1)]` -/
def P9927225123444459456.Spec : Prop :=
  ∀ n, (P9927225123444459456.a n : ℤ) = A156300 (n + 1)

end A156300

/-! ## A156300.P9790064810477996844

`∩[A045331(n+1), A156287(n+1)]`
-/

namespace A156300.P9790064810477996844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156300.P9790064810477996844

namespace A156300

/-- `∩[A045331(n+1), A156287(n+1)]` -/
def P9790064810477996844.Spec : Prop :=
  ∀ n, (P9790064810477996844.a n : ℤ) = A156300 (n + 1)

end A156300

/-! ## A156300.P4209371715461233967

`∩[A106118(n+1), A156287(n+1)]`
-/

namespace A156300.P4209371715461233967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156300.P4209371715461233967

namespace A156300

/-- `∩[A106118(n+1), A156287(n+1)]` -/
def P4209371715461233967.Spec : Prop :=
  ∀ n, (P4209371715461233967.a n : ℤ) = A156300 (n + 1)

end A156300

/-! ## A156300.P3965358223781175689

`∩[A156287(n+1), A158611(n+1)]`
-/

namespace A156300.P3965358223781175689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156300.P3965358223781175689

namespace A156300

/-- `∩[A156287(n+1), A158611(n+1)]` -/
def P3965358223781175689.Spec : Prop :=
  ∀ n, (P3965358223781175689.a n : ℤ) = A156300 (n + 1)

end A156300

/-! ## A156300.P12161568859981609818

`∩[A156287(n+1), A182986(n+1)]`
-/

namespace A156300.P12161568859981609818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156300.P12161568859981609818

namespace A156300

/-- `∩[A156287(n+1), A182986(n+1)]` -/
def P12161568859981609818.Spec : Prop :=
  ∀ n, (P12161568859981609818.a n : ℤ) = A156300 (n + 1)

end A156300

/-! ## A156300.P3637370713616751578

`record[A020639((A002145(n+1)+5)/4)]`
-/

namespace A156300.P3637370713616751578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A002145 (n + 1) + 5 : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156300.P3637370713616751578

namespace A156300

/-- `record[A020639((A002145(n+1)+5)/4)]` -/
def P3637370713616751578.Spec : Prop :=
  ∀ n, P3637370713616751578.a n = A156300 (n + 1)

end A156300

/-!
# A156301: a(n) = ceiling( n * log_3(2) ) = ceiling(n * 0.6309297535714574371...).

The programs for A156301, the canonical program `A156301.P1440636161218985836` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156301 has offset 0).

The definition of A156301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156301.P17538863288941564904

`ceil(n/log2(3))`
-/

namespace A156301.P17538863288941564904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (3 : ℝ)⌉

end

end A156301.P17538863288941564904

namespace A156301

/-- `ceil(n/log2(3))` -/
def P17538863288941564904.Spec : Prop :=
  ∀ n, P17538863288941564904.a n = A156301 n

end A156301

/-! ## A156301.P13452229671990442816

`(floor(n/log2(3))+1)%Δ[n²]`
-/

namespace A156301.P13452229671990442816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋ + 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A156301.P13452229671990442816

namespace A156301

/-- `(floor(n/log2(3))+1)%Δ[n²]` -/
def P13452229671990442816.Spec : Prop :=
  ∀ n, P13452229671990442816.a n = A156301 n

end A156301

/-! ## A156301.P13826313906701977438

`∑[char[A020914(n)]]`
-/

namespace A156301.P13826313906701977438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156301.P13826313906701977438

namespace A156301

/-- `∑[char[A020914(n)]]` -/
def P13826313906701977438.Spec : Prop :=
  ∀ n, (P13826313906701977438.a n : ℤ) = A156301 n

end A156301

/-! ## A156301.P17655698163287404684

`∑[char[A056576(n)+1]]`
-/

namespace A156301.P17655698163287404684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156301.P17655698163287404684

namespace A156301

/-- `∑[char[A056576(n)+1]]` -/
def P17655698163287404684.Spec : Prop :=
  ∀ n, (P17655698163287404684.a n : ℤ) = A156301 n

end A156301

/-! ## A156301.P5017927542744066874

`comp[A122437(n+1)]-n`
-/

namespace A156301.P5017927542744066874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A156301.P5017927542744066874

namespace A156301

/-- `comp[A122437(n+1)]-n` -/
def P5017927542744066874.Spec : Prop :=
  ∀ n, P5017927542744066874.a n = A156301 n

end A156301

/-! ## A156301.P1440636161218985836

`A020915(n)-C(2, n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156301

/-- `A020915(n)-C(2, n+2)` -/
def P1440636161218985836.Spec : Prop :=
  ∀ n, P1440636161218985836.a n = A156301 n

theorem P1440636161218985836.correct : P1440636161218985836.Spec := by
  intro n
  simp only [A156301]

end A156301

/-! ## A156301.P13392133476196913530

`n-∑[char[A054414(n+1)]]`
-/

namespace A156301.P13392133476196913530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A156301.P13392133476196913530

namespace A156301

/-- `n-∑[char[A054414(n+1)]]` -/
def P13392133476196913530.Spec : Prop :=
  ∀ n, P13392133476196913530.a n = A156301 n

end A156301

/-! ## A156301.P3276443035277038719

`a(n-1)-A056576(a(n-1))+n` with `a(0)=0`
-/

namespace A156301.P3276443035277038719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A056576 (a (n - 1)).toNat + (n : ℤ)

end

end A156301.P3276443035277038719

namespace A156301

/-- `a(n-1)-A056576(a(n-1))+n` -/
def P3276443035277038719.Spec : Prop :=
  ∀ n, P3276443035277038719.a n = A156301 n

end A156301

/-! ## A156301.P1917340937501813711

`A136409(n)+A057427(n)`
-/

namespace A156301.P1917340937501813711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 n + A057427 n

end

end A156301.P1917340937501813711

namespace A156301

/-- `A136409(n)+A057427(n)` -/
def P1917340937501813711.Spec : Prop :=
  ∀ n, P1917340937501813711.a n = A156301 n

end A156301

/-! ## A156301.P1671576448066545683

`A020915(n)-A000007(n)`
-/

namespace A156301.P1671576448066545683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n - A000007 n

end

end A156301.P1671576448066545683

namespace A156301

/-- `A020915(n)-A000007(n)` -/
def P1671576448066545683.Spec : Prop :=
  ∀ n, P1671576448066545683.a n = A156301 n

end A156301

/-! ## A156301.P3606465389892639966

`A136409(n)-A057428(n)`
-/

namespace A156301.P3606465389892639966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 n - A057428 n

end

end A156301.P3606465389892639966

namespace A156301

/-- `A136409(n)-A057428(n)` -/
def P3606465389892639966.Spec : Prop :=
  ∀ n, P3606465389892639966.a n = A156301 n

end A156301

/-! ## A156301.P3148180247425242488

`A020915(n)*A057427(n)`
-/

namespace A156301.P3148180247425242488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n * A057427 n

end

end A156301.P3148180247425242488

namespace A156301

/-- `A020915(n)*A057427(n)` -/
def P3148180247425242488.Spec : Prop :=
  ∀ n, P3148180247425242488.a n = A156301 n

end A156301

/-! ## A156301.P1315291588730803776

`and(A003817(n), A020915(n))`
-/

namespace A156301.P1315291588730803776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A020915 n)

end

end A156301.P1315291588730803776

namespace A156301

/-- `and(A003817(n), A020915(n))` -/
def P1315291588730803776.Spec : Prop :=
  ∀ n, P1315291588730803776.a n = A156301 n

end A156301

/-! ## A156301.P4559625063416977273

`and(A020915(n), A057428(n))`
-/

namespace A156301.P4559625063416977273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020915 n) (A057428 n)

end

end A156301.P4559625063416977273

namespace A156301

/-- `and(A020915(n), A057428(n))` -/
def P4559625063416977273.Spec : Prop :=
  ∀ n, P4559625063416977273.a n = A156301 n

end A156301

/-! ## A156301.P638175780002598130

`and(A020915(n), A134824(n))`
-/

namespace A156301.P638175780002598130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020915 n) (A134824 n)

end

end A156301.P638175780002598130

namespace A156301

/-- `and(A020915(n), A134824(n))` -/
def P638175780002598130.Spec : Prop :=
  ∀ n, P638175780002598130.a n = A156301 n

end A156301

/-! ## A156301.P423078271294168018

`A136409(A387214(n)+n+1)`
-/

namespace A156301.P423078271294168018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (A387214 n + (n + 1 : ℤ)).toNat

end

end A156301.P423078271294168018

namespace A156301

/-- `A136409(A387214(n)+n+1)` -/
def P423078271294168018.Spec : Prop :=
  ∀ n, P423078271294168018.a n = A156301 n

end A156301

/-! ## A156301.P6623187780639749105

`A020915(n)+1-A054977(n)`
-/

namespace A156301.P6623187780639749105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n + (1 - A054977 n)

end

end A156301.P6623187780639749105

namespace A156301

/-- `A020915(n)+1-A054977(n)` -/
def P6623187780639749105.Spec : Prop :=
  ∀ n, P6623187780639749105.a n = A156301 n

end A156301

/-! ## A156301.P3253771305065405685

`A020915(n)+n-A028310(n)`
-/

namespace A156301.P3253771305065405685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n + ((n : ℤ) - A028310 n)

end

end A156301.P3253771305065405685

namespace A156301

/-- `A020915(n)+n-A028310(n)` -/
def P3253771305065405685.Spec : Prop :=
  ∀ n, P3253771305065405685.a n = A156301 n

end A156301

/-! ## A156301.P7842868692537181294

`A020915(n)+A204399(n)-A020914(n)`
-/

namespace A156301.P7842868692537181294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n + (A204399 n - A020914 n)

end

end A156301.P7842868692537181294

namespace A156301

/-- `A020915(n)+A204399(n)-A020914(n)` -/
def P7842868692537181294.Spec : Prop :=
  ∀ n, P7842868692537181294.a n = A156301 n

end A156301

/-! ## A156301.P1549740550978403751

`A022924(A387214(n)+n)*A020915(n)`
-/

namespace A156301.P1549740550978403751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022924 (A387214 n + (n : ℤ)).toNat * A020915 n

end

end A156301.P1549740550978403751

namespace A156301

/-- `A022924(A387214(n)+n)*A020915(n)` -/
def P1549740550978403751.Spec : Prop :=
  ∀ n, P1549740550978403751.a n = A156301 n

end A156301

/-!
# A156303: G.f.: A(x) = exp( Sum_{n>=1} sigma(n^2)*x^n/n ), a power series in x with integer coefficients.

The programs for A156303, there is no canonical definition to state claims against.
-/

/-! ## A156303.P6056425120597150385

`A130446(A259593(n)-A225086(n+1))`
-/

namespace A156303.P6056425120597150385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A259593 n - A225086 (n + 1)).toNat

end

end A156303.P6056425120597150385

/-! ## A156303.P13998419694360066527

`A218509(n)+A218491(A218511(3*n+1))`
-/

namespace A156303.P13998419694360066527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218509 n + A218491 (A218511 (3 * n + 1)).toNat

end

end A156303.P13998419694360066527

/-!
# A156304: G.f.: A(x) = exp( Sum_{n>=1} sigma(n^3)*x^n/n ), a power series in x with integer coefficients.

The programs for A156304, there is no canonical definition to state claims against.
-/

/-! ## A156304.P5550512889379613179

`∑[A034380(A198693(n))*A283650(n)]`
-/

namespace A156304.P5550512889379613179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A198693 n).toNat * A283650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156304.P5550512889379613179

/-! ## A156304.P15394261787872619159

`A394643(n)+A088568(A090215(n+1))`
-/

namespace A156304.P15394261787872619159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394643 n + A088568 (A090215 (n + 1)).toNat

end

end A156304.P15394261787872619159

/-!
# A156305: G.f.: A(x) = exp( Sum_{n>=1} sigma(n) * C(2*n-1,n) * x^n/n ), a power series in x with integer coefficients.

The programs for A156305, there is no canonical definition to state claims against.
-/

/-! ## A156305.P18029902566859704776

`A345909(A298043(n^floor(n/2)))`
-/

namespace A156305.P18029902566859704776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345909 (A298043 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat).toNat

end

end A156305.P18029902566859704776

/-! ## A156305.P16020688763773839571

`or(∑{e}[n+1, #], A003963(A289713(n)))`
-/

namespace A156305.P16020688763773839571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A003963 (A289713 n).toNat)

end

end A156305.P16020688763773839571

/-!
# A156306: E.g.f.: A(x) = exp( Sum_{n>=1} sigma(n) * a(n-1)*x^n/n! ) = Sum_{n>=0} a(n)*x^n/n! with a(0)=1.

The programs for A156306, there is no canonical definition to state claims against.
-/

/-! ## A156306.P15200275454591443572

`A065608(A036378(n)+A002966(n+1))`
-/

namespace A156306.P15200275454591443572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A036378 n + A002966 (n + 1)).toNat

end

end A156306.P15200275454591443572

/-!
# A156307: Primes where the first digit equals the sum of all the other digits.

The programs for A156307, there is no canonical definition to state claims against.
-/

/-! ## A156307.P5752798713094847233

`∩[A193772(n+1), A280915(n+1)]`
-/

namespace A156307.P5752798713094847233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156307.P5752798713094847233

/-! ## A156307.P2559535667887588501

`∩[A156753(n+1), A193772(n+1)]`
-/

namespace A156307.P2559535667887588501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156307.P2559535667887588501

/-! ## A156307.P16719537494024982474

`p?[A193772(n+1)]`
-/

namespace A156307.P16719537494024982474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156307.P16719537494024982474

/-! ## A156307.P3254658069263974495

`∩[A038617(n+1), A193772(n+1)]`
-/

namespace A156307.P3254658069263974495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156307.P3254658069263974495

/-! ## A156307.P4071427026030094878

`∩[A193772(n+1), A280993(n+1)]`
-/

namespace A156307.P4071427026030094878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156307.P4071427026030094878

/-! ## A156307.P6897615269960793648

`record[A006530(A193772(n+2))]`
-/

namespace A156307.P6897615269960793648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A193772 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156307.P6897615269960793648

/-! ## A156307.P15797245688007348977

`A045319(eq[0, A042939(n+1)])`
-/

namespace A156307.P15797245688007348977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156307.P15797245688007348977

/-! ## A156307.P2291649649235426747

`filter[A193772(n+2), A010051(#)]`
-/

namespace A156307.P2291649649235426747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A156307.P2291649649235426747

/-! ## A156307.P2386903430542887373

`∩[A000040(n+1), A193772(n+1)]`
-/

namespace A156307.P2386903430542887373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156307.P2386903430542887373

/-! ## A156307.P9577668540609854374

`∩[A004139(n+1), A193772(n+1)]`
-/

namespace A156307.P9577668540609854374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156307.P9577668540609854374

/-!
# A156308: Inverse of triangle S(n,m) defined by sequence A156290, n >= 1, 1 <= m <= n.

The programs for A156308, the canonical program `A156308.P5650562989107457170` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156308 has offset 1).

The definition of A156308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156308.P5650562989107457170

`A078812(n)/A033184(n+1)*A092392(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156308

/-- `A078812(n)/A033184(n+1)*A092392(n)` -/
def P5650562989107457170.Spec : Prop :=
  ∀ n, P5650562989107457170.a n = (A156308 (n + 1) : ℚ)

end A156308

/-! ## A156308.P18055712280768973786

`A208513(A080036(n+1))`
-/

namespace A156308.P18055712280768973786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208513 (A080036 (n + 1)).toNat

end

end A156308.P18055712280768973786

namespace A156308

/-- `A208513(A080036(n+1))` -/
def P18055712280768973786.Spec : Prop :=
  ∀ n, P18055712280768973786.a n = A156308 (n + 1)

end A156308

/-! ## A156308.P17085555282093246304

`A208513(A014132(n+2))`
-/

namespace A156308.P17085555282093246304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208513 (A014132 (n + 2)).toNat

end

end A156308.P17085555282093246304

namespace A156308

/-- `A208513(A014132(n+2))` -/
def P17085555282093246304.Spec : Prop :=
  ∀ n, P17085555282093246304.a n = A156308 (n + 1)

end A156308

/-! ## A156308.P17504169174275000278

`abs(A110162(∑[A035214(n)]))`
-/

namespace A156308.P17504169174275000278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110162 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A156308.P17504169174275000278

namespace A156308

/-- `abs(A110162(∑[A035214(n)]))` -/
def P17504169174275000278.Spec : Prop :=
  ∀ n, P17504169174275000278.a n = A156308 (n + 1)

end A156308

/-! ## A156308.P14027057935862708063

`abs(A110162(A014132(n+1)))`
-/

namespace A156308.P14027057935862708063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110162 (A014132 (n + 1)).toNat|

end

end A156308.P14027057935862708063

namespace A156308

/-- `abs(A110162(A014132(n+1)))` -/
def P14027057935862708063.Spec : Prop :=
  ∀ n, P14027057935862708063.a n = A156308 (n + 1)

end A156308

/-! ## A156308.P3814379842977559549

`A084534(A099375(n)+n)`
-/

namespace A156308.P3814379842977559549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084534 (A099375 n + (n : ℤ)).toNat

end

end A156308.P3814379842977559549

namespace A156308

/-- `A084534(A099375(n)+n)` -/
def P3814379842977559549.Spec : Prop :=
  ∀ n, P3814379842977559549.a n = A156308 (n + 1)

end A156308

/-! ## A156308.P8712925904773573277

`A125165(A245300(n)+A002262(n))`
-/

namespace A156308.P8712925904773573277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125165 (A245300 n + A002262 n).toNat

end

end A156308.P8712925904773573277

namespace A156308

/-- `A125165(A245300(n)+A002262(n))` -/
def P8712925904773573277.Spec : Prop :=
  ∀ n, P8712925904773573277.a n = A156308 (n + 1)

end A156308

/-! ## A156308.P10159934347900513014

`A105438(A185869(n+1))`
-/

namespace A156308.P10159934347900513014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105438 (A185869 (n + 1)).toNat

end

end A156308.P10159934347900513014

namespace A156308

/-- `A105438(A185869(n+1))` -/
def P10159934347900513014.Spec : Prop :=
  ∀ n, P10159934347900513014.a n = A156308 (n + 1)

end A156308

/-! ## A156308.P658564557478953632

`A114525(A185871(n+1))`
-/

namespace A156308.P658564557478953632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 (A185871 (n + 1)).toNat

end

end A156308.P658564557478953632

namespace A156308

/-- `A114525(A185871(n+1))` -/
def P658564557478953632.Spec : Prop :=
  ∀ n, P658564557478953632.a n = A156308 (n + 1)

end A156308

/-! ## A156308.P11154758739373767226

`A098599(A292565(n+1))`
-/

namespace A156308.P11154758739373767226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098599 (A292565 (n + 1)).toNat

end

end A156308.P11154758739373767226

namespace A156308

/-- `A098599(A292565(n+1))` -/
def P11154758739373767226.Spec : Prop :=
  ∀ n, P11154758739373767226.a n = A156308 (n + 1)

end A156308

/-!
# A156311: Number of ways to write prime(n) = prime(k) + prime(k+1)*m.

The programs for A156311, there is no canonical definition to state claims against.
-/

/-! ## A156311.P6354635331506480366

`and(A117545(n+1), A316827(A091977(n)))`
-/

namespace A156311.P6354635331506480366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117545 (n + 1)) (A316827 (A091977 n).toNat)

end

end A156311.P6354635331506480366

/-! ## A156311.P16417760023859774912

`A358138(or(A191113(n+1), A333766(n)))`
-/

namespace A156311.P16417760023859774912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358138 (Int.lor (A191113 (n + 1)) (A333766 n)).toNat

end

end A156311.P16417760023859774912

/-! ## A156311.P13881147918106546141

`A087991(A303763(3*(n+1)))%A355302(n+1)`
-/

namespace A156311.P13881147918106546141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087991 (A303763 (3 * (n + 1))).toNat) (A355302 (n + 1))

end

end A156311.P13881147918106546141

/-!
# A156312: Primes that can be written as prime(k) + prime(k+1)*m.

The programs for A156312, there is no canonical definition to state claims against.
-/

/-! ## A156312.P1896592698668071738

`A000040(lt[0, A156311(n+1)]+1)`
-/

namespace A156312.P1896592698668071738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A156312.P1896592698668071738

/-! ## A156312.P14155662029197123851

`A138837(lt[A306019(2*n+1), A279962(2*n)])`
-/

namespace A156312.P14155662029197123851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306019 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279962 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156312.P14155662029197123851

/-! ## A156312.P4998417096992829968

`lt[A124176(A317086(n)), A318508(n+1)]`
-/

namespace A156312.P4998417096992829968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124176 (A317086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A156312.P4998417096992829968

/-! ## A156312.P10774286145413751462

`p?[lt[3, A294280(n+1)]]`
-/

namespace A156312.P10774286145413751462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294280 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156312.P10774286145413751462

/-! ## A156312.P9207038583748244393

`∩[A020621(n+1), A328594(n+1)]`
-/

namespace A156312.P9207038583748244393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156312.P9207038583748244393

/-!
# A156313: Primes that cannot be written as prime(k) + prime(k+1)*m.

The programs for A156313, there is no canonical definition to state claims against.
-/

/-! ## A156313.P8439610157970210668

`A000040(lt[A156311(n+1), 1]+1)`
-/

namespace A156313.P8439610157970210668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156311 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A156313.P8439610157970210668

/-! ## A156313.P1282972823998981886

`p?[gcd(A000040(n+1), A156311(n+1))]`
-/

namespace A156313.P1282972823998981886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A156311 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156313.P1282972823998981886

/-! ## A156313.P16829921325300216065

`A262836(eq[A135303(n+1), A226607(n²+1)]+1)`
-/

namespace A156313.P16829921325300216065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226607 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262836 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A156313.P16829921325300216065

/-!
# A156314: Smallest prime p such that p mod prime(k+1) = prime(k) for exactly n distinct k.

The programs for A156314, there is no canonical definition to state claims against.
-/

/-! ## A156314.P4385415703774589769

`A322471(A102455(∑[2^n]))`
-/

namespace A156314.P4385415703774589769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322471 (A102455 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A156314.P4385415703774589769

/-! ## A156314.P14666526402275658932

`p?[A096443(2*(n+2))-A303362(n+1)]`
-/

namespace A156314.P14666526402275658932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096443 (2 * (n + 2)) - A303362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156314.P14666526402275658932

/-!
# A156316: Perfect squares with property that their digit reversal is a larger perfect square.

The programs for A156316, there is no canonical definition to state claims against.
-/

/-! ## A156316.P5788511880896296231

`∩[A035090(n+1), A156317(n+1)]`
-/

namespace A156316.P5788511880896296231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156316.P5788511880896296231

/-! ## A156316.P4642353758745402524

`∩[A156317(n+1), A161902(n+1)]`
-/

namespace A156316.P4642353758745402524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156316.P4642353758745402524

/-! ## A156316.P3104329291717322483

`∩[A062917(n+1), A156317(n+1)]`
-/

namespace A156316.P3104329291717322483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156316.P3104329291717322483

/-! ## A156316.P11751208009662000580

`∩[A070760(n+1), A156317(n+1)]`
-/

namespace A156316.P11751208009662000580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156316.P11751208009662000580

/-! ## A156316.P8408231206640476689

`A106323(n+1)²`
-/

namespace A156316.P8408231206640476689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106323 (n + 1) ^ 2

end

end A156316.P8408231206640476689

/-!
# A156317: Numbers which are perfect squares and either form equal or larger perfect squares when reversed.

The programs for A156317, there is no canonical definition to state claims against.
-/

/-! ## A156317.P8823755136447895878

`∪[A002779(n+1), A156316(n+1)]`
-/

namespace A156317.P8823755136447895878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156317.P8823755136447895878

/-! ## A156317.P11429492333827214126

`∩[A061457(n+1), A131058(n+1)]`
-/

namespace A156317.P11429492333827214126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156317.P11429492333827214126

/-! ## A156317.P9769021041150532179

`∑{e}[∏[2*n+1], #²]²`
-/

namespace A156317.P9769021041150532179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2) ^ 2

end

end A156317.P9769021041150532179

/-!
# A156319: Triangle by columns: (1, 2, 0, 0, 0, ...) in every column.

The programs for A156319, the canonical program `A156319.P9547265538393638978` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156319 has offset 1).

The definition of A156319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156319.P17373369356100674430

`C(2, (n+1-C(comp[∑[n]]-n, 2))²)`
-/

namespace A156319.P17373369356100674430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2).toNat

end

end A156319.P17373369356100674430

namespace A156319

/-- `C(2, (n+1-C(comp[∑[n]]-n, 2))²)` -/
def P17373369356100674430.Spec : Prop :=
  ∀ n, (P17373369356100674430.a n : ℤ) = A156319 (n + 1)

end A156319

/-! ## A156319.P9077864927541597582

`C(2, (C(comp[∑[n]]-n, 2)-(n+1))^5)`
-/

namespace A156319.P9077864927541597582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 5).toNat

end

end A156319.P9077864927541597582

namespace A156319

/-- `C(2, (C(comp[∑[n]]-n, 2)-(n+1))^5)` -/
def P9077864927541597582.Spec : Prop :=
  ∀ n, (P9077864927541597582.a n : ℤ) = A156319 (n + 1)

end A156319

/-! ## A156319.P10562849589960250282

`abs(A251635(n))`
-/

namespace A156319.P10562849589960250282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A251635 n|

end

end A156319.P10562849589960250282

namespace A156319

/-- `abs(A251635(n))` -/
def P10562849589960250282.Spec : Prop :=
  ∀ n, P10562849589960250282.a n = A156319 (n + 1)

end A156319

/-! ## A156319.P9547265538393638978

`A114283(n)%3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156319

/-- `A114283(n)%3` -/
def P9547265538393638978.Spec : Prop :=
  ∀ n, P9547265538393638978.a n = A156319 (n + 1)

theorem P9547265538393638978.correct : P9547265538393638978.Spec := by
  intro n
  simp only [A156319, Nat.add_sub_cancel]

end A156319

/-! ## A156319.P9315357883329777189

`A193723(n)%3`
-/

namespace A156319.P9315357883329777189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193723 n) 3

end

end A156319.P9315357883329777189

namespace A156319

/-- `A193723(n)%3` -/
def P9315357883329777189.Spec : Prop :=
  ∀ n, P9315357883329777189.a n = A156319 (n + 1)

end A156319

/-! ## A156319.P59933690702161551

`A236311(n)%3`
-/

namespace A156319.P59933690702161551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236311 n) 3

end

end A156319.P59933690702161551

namespace A156319

/-- `A236311(n)%3` -/
def P59933690702161551.Spec : Prop :=
  ∀ n, P59933690702161551.a n = A156319 (n + 1)

end A156319

/-! ## A156319.P4687008157418455180

`A114192(n)%4`
-/

namespace A156319.P4687008157418455180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114192 n) 4

end

end A156319.P4687008157418455180

namespace A156319

/-- `A114192(n)%4` -/
def P4687008157418455180.Spec : Prop :=
  ∀ n, P4687008157418455180.a n = A156319 (n + 1)

end A156319

/-! ## A156319.P10918898221508479524

`A123486(n)%4`
-/

namespace A156319.P10918898221508479524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123486 n) 4

end

end A156319.P10918898221508479524

namespace A156319

/-- `A123486(n)%4` -/
def P10918898221508479524.Spec : Prop :=
  ∀ n, P10918898221508479524.a n = A156319 (n + 1)

end A156319

/-! ## A156319.P5666594201443839708

`A130321(n)%4`
-/

namespace A156319.P5666594201443839708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130321 n) 4

end

end A156319.P5666594201443839708

namespace A156319

/-- `A130321(n)%4` -/
def P5666594201443839708.Spec : Prop :=
  ∀ n, P5666594201443839708.a n = A156319 (n + 1)

end A156319

/-! ## A156319.P12417297147715291504

`A180956(n)%4`
-/

namespace A156319.P12417297147715291504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180956 n) 4

end

end A156319.P12417297147715291504

namespace A156319

/-- `A180956(n)%4` -/
def P12417297147715291504.Spec : Prop :=
  ∀ n, P12417297147715291504.a n = A156319 (n + 1)

end A156319

/-! ## A156319.P7429917931049166733

`A193735(n)%4`
-/

namespace A156319.P7429917931049166733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193735 n) 4

end

end A156319.P7429917931049166733

namespace A156319

/-- `A193735(n)%4` -/
def P7429917931049166733.Spec : Prop :=
  ∀ n, P7429917931049166733.a n = A156319 (n + 1)

end A156319

/-! ## A156319.P7051643642380138157

`C(2, A071417(n))`
-/

namespace A156319.P7051643642380138157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A071417 n).toNat

end

end A156319.P7051643642380138157

namespace A156319

/-- `C(2, A071417(n))` -/
def P7051643642380138157.Spec : Prop :=
  ∀ n, (P7051643642380138157.a n : ℤ) = A156319 (n + 1)

end A156319

/-! ## A156319.P15206698055760781671

`2-abs(A113680(n))`
-/

namespace A156319.P15206698055760781671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |A113680 n|

end

end A156319.P15206698055760781671

namespace A156319

/-- `2-abs(A113680(n))` -/
def P15206698055760781671.Spec : Prop :=
  ∀ n, P15206698055760781671.a n = A156319 (n + 1)

end A156319

/-! ## A156319.P3853196387730765944

`C(2, A025581(n)²)`
-/

namespace A156319.P3853196387730765944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A025581 n ^ 2).toNat

end

end A156319.P3853196387730765944

namespace A156319

/-- `C(2, A025581(n)²)` -/
def P3853196387730765944.Spec : Prop :=
  ∀ n, (P3853196387730765944.a n : ℤ) = A156319 (n + 1)

end A156319

/-! ## A156319.P12623648820191605437

`C(2, A242378(n)²)`
-/

namespace A156319.P12623648820191605437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A242378 n ^ 2).toNat

end

end A156319.P12623648820191605437

namespace A156319

/-- `C(2, A242378(n)²)` -/
def P12623648820191605437.Spec : Prop :=
  ∀ n, (P12623648820191605437.a n : ℤ) = A156319 (n + 1)

end A156319

/-! ## A156319.P17065446984798779538

`C(2, A268830(n)²)`
-/

namespace A156319.P17065446984798779538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A268830 n ^ 2).toNat

end

end A156319.P17065446984798779538

namespace A156319

/-- `C(2, A268830(n)²)` -/
def P17065446984798779538.Spec : Prop :=
  ∀ n, (P17065446984798779538.a n : ℤ) = A156319 (n + 1)

end A156319

/-! ## A156319.P1082509307144099399

`C(2, A095831(n+1))`
-/

namespace A156319.P1082509307144099399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A095831 (n + 1)).toNat

end

end A156319.P1082509307144099399

namespace A156319

/-- `C(2, A095831(n+1))` -/
def P1082509307144099399.Spec : Prop :=
  ∀ n, (P1082509307144099399.a n : ℤ) = A156319 (n + 1)

end A156319

/-! ## A156319.P6278724805776163987

`C(2, A048494(n)-1)`
-/

namespace A156319.P6278724805776163987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A048494 n - 1).toNat

end

end A156319.P6278724805776163987

namespace A156319

/-- `C(2, A048494(n)-1)` -/
def P6278724805776163987.Spec : Prop :=
  ∀ n, (P6278724805776163987.a n : ℤ) = A156319 (n + 1)

end A156319

/-! ## A156319.P9928307429783319485

`C(2, A054453(n)-1)`
-/

namespace A156319.P9928307429783319485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A054453 n - 1).toNat

end

end A156319.P9928307429783319485

namespace A156319

/-- `C(2, A054453(n)-1)` -/
def P9928307429783319485.Spec : Prop :=
  ∀ n, (P9928307429783319485.a n : ℤ) = A156319 (n + 1)

end A156319

/-! ## A156319.P11254181942282063004

`C(2, A106187(n)-1)`
-/

namespace A156319.P11254181942282063004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A106187 n - 1).toNat

end

end A156319.P11254181942282063004

namespace A156319

/-- `C(2, A106187(n)-1)` -/
def P11254181942282063004.Spec : Prop :=
  ∀ n, (P11254181942282063004.a n : ℤ) = A156319 (n + 1)

end A156319

/-!
# A156321: a(1)=0, a(n+1) is smallest nonprime > 2*a(n).

The programs for A156321, there is no canonical definition to state claims against.
-/

/-! ## A156321.P3635458863489301443

`A329842(2^n)-1-2^n`
-/

namespace A156321.P3635458863489301443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329842 (2 ^ n) - 1 - (2 ^ n : ℤ)

end

end A156321.P3635458863489301443

/-! ## A156321.P7948449651542359174

`A329842(A000079(n))-A000051(n)`
-/

namespace A156321.P7948449651542359174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329842 (A000079 n).toNat - A000051 n

end

end A156321.P7948449651542359174

/-! ## A156321.P17832527751487763937

`A002264(A119610(n+1))+A000225(n)`
-/

namespace A156321.P17832527751487763937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A119610 (n + 1)).toNat + A000225 n

end

end A156321.P17832527751487763937

/-! ## A156321.P5679382998483082014

`A329842(A000051(n)-1)-A000051(n)`
-/

namespace A156321.P5679382998483082014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329842 (A000051 n - 1).toNat - A000051 n

end

end A156321.P5679382998483082014

/-! ## A156321.P10299572784498683083

`A014683(2*a(n-1)+1)` with `a(0)=0`
-/

namespace A156321.P10299572784498683083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014683 (2 * a (n - 1) + 1).toNat

end

end A156321.P10299572784498683083

/-!
# A156324: a(1)=0, a(n+1) is smallest nonprime >= a(n)+n.

The programs for A156324, the canonical program `A156324.P16266470753599267487` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156324 has offset 1).

The definition of A156324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156324.P16266470753599267487

`A014683(a(n-1)+n)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156324

/-- `A014683(a(n-1)+n)` -/
def P16266470753599267487.Spec : Prop :=
  ∀ n, P16266470753599267487.a n = A156324 (n + 1)

theorem P16266470753599267487.correct : P16266470753599267487.Spec := by
  intro n
  simp only [A156324, Nat.add_sub_cancel]

end A156324

/-! ## A156324.P5705965617697981020

`A113646(a(n-1)+n)` with `a(0)=0, a(1)=1`
-/

namespace A156324.P5705965617697981020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A113646 (a (n - 1) + (n : ℤ)).toNat

end

end A156324.P5705965617697981020

namespace A156324

/-- `A113646(a(n-1)+n)` -/
def P5705965617697981020.Spec : Prop :=
  ∀ n, P5705965617697981020.a n = A156324 (n + 1)

end A156324

/-! ## A156324.P3098088461646496216

`A113646(A014132(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A156324.P3098088461646496216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A113646 (A014132 (a (n - 1)).toNat).toNat

end

end A156324.P3098088461646496216

namespace A156324

/-- `A113646(A014132(a(n-1)))` -/
def P3098088461646496216.Spec : Prop :=
  ∀ n, P3098088461646496216.a n = A156324 (n + 1)

end A156324

/-! ## A156324.P2408669456673183701

`A004524((n+1)²-and(char[A128859(2*(n+1))], A128846(n)))`
-/

namespace A156324.P2408669456673183701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128859 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (((n + 1) ^ 2 : ℤ) - Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A128846 n)).toNat

end

end A156324.P2408669456673183701

namespace A156324

/-- `A004524((n+1)²-and(char[A128859(2*(n+1))], A128846(n)))` -/
def P2408669456673183701.Spec : Prop :=
  ∀ n, P2408669456673183701.a n = A156324 (n + 1)

end A156324

/-! ## A156324.P14688876998297494434

`A194274(n)+A085405(A017450(n+4))`
-/

namespace A156324.P14688876998297494434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 n + A085405 (A017450 (n + 4)).toNat

end

end A156324.P14688876998297494434

namespace A156324

/-- `A194274(n)+A085405(A017450(n+4))` -/
def P14688876998297494434.Spec : Prop :=
  ∀ n, P14688876998297494434.a n = A156324 (n + 1)

end A156324

/-!
# A156325: E.g.f.: A(x) = exp( Sum_{n>=1} n(n+1)/2 * a(n-1)*x^n/n! ) = Sum_{n>=0} a(n)*x^n/n! with a(0)=1.

The programs for A156325, there is no canonical definition to state claims against.
-/

/-! ## A156325.P5017067878772525819

`A140357(n!²)`
-/

namespace A156325.P5017067878772525819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140357 (Nat.factorial n ^ 2)

end

end A156325.P5017067878772525819

/-!
# A156326: E.g.f.: A(x) = exp( Sum_{n>=1} n^2 * a(n-1)*x^n/n! ) = Sum_{n>=0} a(n)*x^n/n! with a(0) = 1.

The programs for A156326, there is no canonical definition to state claims against.
-/

/-! ## A156326.P10004234115703275917

`A161968(n+1)/(n+1)`
-/

namespace A156326.P10004234115703275917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161968 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A156326.P10004234115703275917

/-!
# A156327: E.g.f.: A(x) = exp( Sum_{n>=1} n*(n+3)/2 * a(n-1)*x^n/n! ) = Sum_{n>=0} a(n)*x^n/n! with a(0)=1.

The programs for A156327, there is no canonical definition to state claims against.
-/

/-! ## A156327.P12459130806697419264

`∑[A190511(A317277(n))]`
-/

namespace A156327.P12459130806697419264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190511 (A317277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156327.P12459130806697419264

/-!
# A156329: Smallest tetrahedral number with n distinct prime factors.

The programs for A156329, there is no canonical definition to state claims against.
-/

/-! ## A156329.P16064439947190697976

`A000292(A359089(n+1))`
-/

namespace A156329.P16064439947190697976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A359089 (n + 1)).toNat

end

end A156329.P16064439947190697976

/-!
# A156331: a(n)=8*A154811(n).

The programs for A156331, the canonical program `A156331.P9268504184016860715` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156331 has offset 0).

The definition of A156331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156331.P9268504184016860715

`8*A154811(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156331

/-- `8*A154811(n)` -/
def P9268504184016860715.Spec : Prop :=
  ∀ n, P9268504184016860715.a n = A156331 n

theorem P9268504184016860715.correct : P9268504184016860715.Spec := by
  intro n
  simp only [A156331]

end A156331

/-!
# A156333: Odd nonprimes q=A141468(j) such that largest digit(j)+largest digit(q) is a prime.

The programs for A156333, there is no canonical definition to state claims against.
-/

/-! ## A156333.P6260223983774642394

`A250120(A295771(3*n)-A185125(n))`
-/

namespace A156333.P6260223983774642394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A295771 (3 * n) - A185125 n).toNat

end

end A156333.P6260223983774642394

/-!
# A156334: G.f.: A(x) = exp( Sum_{n>=1} 2^[n^2/2+1]*x^n/n ), a power series in x with integer coefficients.

The programs for A156334, there is no canonical definition to state claims against.
-/

/-! ## A156334.P10388780735380913459

`A000010(A304996(n)+1)`
-/

namespace A156334.P10388780735380913459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A304996 n + 1).toNat

end

end A156334.P10388780735380913459

/-! ## A156334.P17217479905817276096

`A000010(or(1, A304996(n)))`
-/

namespace A156334.P17217479905817276096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor 1 (A304996 n)).toNat

end

end A156334.P17217479905817276096

/-!
# A156335: G.f.: A(x) = exp( Sum_{n>=1} 2^[(n^2+1)/2]*x^n/n ), a power series in x with integer coefficients.

The programs for A156335, there is no canonical definition to state claims against.
-/

/-! ## A156335.P2108295754596217245

`A356236(2^n)/A186757(n)`
-/

namespace A156335.P2108295754596217245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356236 (2 ^ n) : ℚ) / (A186757 n : ℚ)

end

end A156335.P2108295754596217245

/-! ## A156335.P1312496131717104935

`∑[A168260(A000837(2*n+1))]`
-/

namespace A156335.P1312496131717104935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168260 (A000837 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156335.P1312496131717104935

/-!
# A156336: G.f.: A(x) = exp( Sum_{n>=1} 3^[(n^2+1)/2]*x^n/n ), a power series in x with integer coefficients.

The programs for A156336, there is no canonical definition to state claims against.
-/

/-! ## A156336.P11331029978308578333

`A300247(∏[A214826(n)])`
-/

namespace A156336.P11331029978308578333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300247 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156336.P11331029978308578333

/-!
# A156337: G.f.: A(x) = exp( Sum_{n>=1} 4^[(n^2+1)/2]*x^n/n ), a power series in x with integer coefficients.

The programs for A156337, there is no canonical definition to state claims against.
-/

/-! ## A156337.P10606971105247775473

`A000005(A156554(n))*A338188(n)`
-/

namespace A156337.P10606971105247775473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A156554 n).toNat * A338188 n

end

end A156337.P10606971105247775473

/-!
# A156339: Denominator of Euler(n, 1/13).

The programs for A156339, there is no canonical definition to state claims against.
-/

/-! ## A156339.P9104454257049882321

`2^val(n+1, 2)*13^n`
-/

namespace A156339.P9104454257049882321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 13 ^ n

end

end A156339.P9104454257049882321

/-! ## A156339.P14093806057439263867

`lcm(2^val(n+1, 2), 13^n)`
-/

namespace A156339.P14093806057439263867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (13 ^ n)

end

end A156339.P14093806057439263867

/-! ## A156339.P1588165648949428948

`13^n*A006519(n+1)`
-/

namespace A156339.P1588165648949428948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 ^ n : ℤ) * A006519 (n + 1)

end

end A156339.P1588165648949428948

/-! ## A156339.P2165258005039778847

`lcm(A001022(n), A118830(n+1))`
-/

namespace A156339.P2165258005039778847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001022 n) (A118830 (n + 1))

end

end A156339.P2165258005039778847

/-! ## A156339.P16251019692947429014

`A006519(n+1)*A017943(2*n)`
-/

namespace A156339.P16251019692947429014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A017943 (2 * n)

end

end A156339.P16251019692947429014

/-! ## A156339.P14166153190923649857

`A171977(n+1)/2*A001022(n)`
-/

namespace A156339.P14166153190923649857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) : ℚ) / 2 * (A001022 n : ℚ)

end

end A156339.P14166153190923649857

/-! ## A156339.P10228236762944987929

`gcd(n+1, A001025(n))*A001022(n)`
-/

namespace A156339.P10228236762944987929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A001025 n) : ℤ) * A001022 n

end

end A156339.P10228236762944987929

/-!
# A156340: G.f.: A(x) = exp( Sum_{n>=1} 2^(n^2-n+1) * x^n/n ), a power series in x with integer coefficients.

The programs for A156340, there is no canonical definition to state claims against.
-/

/-! ## A156340.P11300546212084261825

`A167140(n)/2^n`
-/

namespace A156340.P11300546212084261825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167140 n : ℚ) / (2 ^ n : ℚ)

end

end A156340.P11300546212084261825

/-! ## A156340.P6249501434582322715

`floor(A167140(n)/A000079(n))`
-/

namespace A156340.P6249501434582322715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167140 n : ℚ) / (A000079 n : ℚ)⌋

end

end A156340.P6249501434582322715

/-!
# A156341: Expansion of 2*(1 - 3*x)/(1 - 12*x + 11*x^2).

The programs for A156341, the canonical program `A156341.P13175879359625011942` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156341 has offset 0).

The definition of A156341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-6x)/(1-12x+11x^2))` (program `A156341.P13175879359625011942`, by `A156341.P13175879359625011942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156341.P13175879359625011942

`ogf((2-6x)/(1-12x+11x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156341

/-- `ogf((2-6x)/(1-12x+11x^2))` -/
def P13175879359625011942.Spec : Prop :=
  ∀ n, P13175879359625011942.a n = A156341 n

theorem P13175879359625011942.correct : P13175879359625011942.Spec := by
  intro n
  simp only [A156341]

end A156341

/-! ## A156341.P3622210418452557070

`8/5*11^n+2/5`
-/

namespace A156341.P3622210418452557070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) / 5 * (11 ^ n : ℚ) + (2 : ℚ) / 5

end

end A156341.P3622210418452557070

namespace A156341

/-- `8/5*11^n+2/5` -/
def P3622210418452557070.Spec : Prop :=
  ∀ n, P3622210418452557070.a n = (A156341 n : ℚ)

end A156341

/-! ## A156341.P5154446182787752282

`2*A083077(n)`
-/

namespace A156341.P5154446182787752282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083077 n

end

end A156341.P5154446182787752282

namespace A156341

/-- `2*A083077(n)` -/
def P5154446182787752282.Spec : Prop :=
  ∀ n, P5154446182787752282.a n = A156341 n

end A156341

/-! ## A156341.P3201282686071986934

`(A199759(n)+1)/5`
-/

namespace A156341.P3201282686071986934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199759 n + 1 : ℚ) / 5

end

end A156341.P3201282686071986934

namespace A156341

/-- `(A199759(n)+1)/5` -/
def P3201282686071986934.Spec : Prop :=
  ∀ n, P3201282686071986934.a n = (A156341 n : ℚ)

end A156341

/-! ## A156341.P16658928451813169092

`(A199027(n)+3)/5`
-/

namespace A156341.P16658928451813169092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199027 n + 3 : ℚ) / 5

end

end A156341.P16658928451813169092

namespace A156341

/-- `(A199027(n)+3)/5` -/
def P16658928451813169092.Spec : Prop :=
  ∀ n, P16658928451813169092.a n = (A156341 n : ℚ)

end A156341

/-! ## A156341.P8808793763639550010

`2/5*A199753(n)`
-/

namespace A156341.P8808793763639550010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A199753 n : ℚ)

end

end A156341.P8808793763639550010

namespace A156341

/-- `2/5*A199753(n)` -/
def P8808793763639550010.Spec : Prop :=
  ∀ n, P8808793763639550010.a n = (A156341 n : ℚ)

end A156341

/-!
# A156343: Primes with equal number of prime and nonprime digits.

The programs for A156343, the canonical program `A156343.P612256446000310729` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156343 has offset 1).

The definition of A156343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1037 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156343.P612256446000310729

`p?[A085556(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156343

/-- `p?[A085556(n+1)]` -/
def P612256446000310729.Spec : Prop :=
  ∀ n, P612256446000310729.a n = A156343 (n + 1)

theorem P612256446000310729.correct : P612256446000310729.Spec := by
  intro n
  simp only [A156343, Nat.add_sub_cancel]

end A156343

/-! ## A156343.P437877404164837108

`∩[A085556(n+1), A348283(n+1)]`
-/

namespace A156343.P437877404164837108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P437877404164837108

namespace A156343

/-- `∩[A085556(n+1), A348283(n+1)]` -/
def P437877404164837108.Spec : Prop :=
  ∀ n, (P437877404164837108.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P15046730596041825695

`∩[A085556(n+1), A373789(n+1)]`
-/

namespace A156343.P15046730596041825695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P15046730596041825695

namespace A156343

/-- `∩[A085556(n+1), A373789(n+1)]` -/
def P15046730596041825695.Spec : Prop :=
  ∀ n, (P15046730596041825695.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P8745113270843643537

`∩[A085556(n+1), A383300(n+1)]`
-/

namespace A156343.P8745113270843643537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P8745113270843643537

namespace A156343

/-- `∩[A085556(n+1), A383300(n+1)]` -/
def P8745113270843643537.Spec : Prop :=
  ∀ n, (P8745113270843643537.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P3587216486662694509

`∩[A085556(n+1), A152426(n+1)]`
-/

namespace A156343.P3587216486662694509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P3587216486662694509

namespace A156343

/-- `∩[A085556(n+1), A152426(n+1)]` -/
def P3587216486662694509.Spec : Prop :=
  ∀ n, (P3587216486662694509.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P15152856937278149706

`∩[A085556(n+1), A179336(n+1)]`
-/

namespace A156343.P15152856937278149706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P15152856937278149706

namespace A156343

/-- `∩[A085556(n+1), A179336(n+1)]` -/
def P15152856937278149706.Spec : Prop :=
  ∀ n, (P15152856937278149706.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P4017583020899180094

`p?[record[A085556(A106466(n))]]`
-/

namespace A156343.P4017583020899180094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156343.P4017583020899180094

namespace A156343

/-- `p?[record[A085556(A106466(n))]]` -/
def P4017583020899180094.Spec : Prop :=
  ∀ n, P4017583020899180094.a n = A156343 (n + 1)

end A156343

/-! ## A156343.P11859796894605780095

`∩[A085556(n+1), A215927(n+1)]`
-/

namespace A156343.P11859796894605780095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P11859796894605780095

namespace A156343

/-- `∩[A085556(n+1), A215927(n+1)]` -/
def P11859796894605780095.Spec : Prop :=
  ∀ n, (P11859796894605780095.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P887489286612027765

`∩[A085556(n+1), A179924(n+1)]`
-/

namespace A156343.P887489286612027765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P887489286612027765

namespace A156343

/-- `∩[A085556(n+1), A179924(n+1)]` -/
def P887489286612027765.Spec : Prop :=
  ∀ n, (P887489286612027765.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P17650927992704693043

`∩[A085556(n+1), A334321(n+1)]`
-/

namespace A156343.P17650927992704693043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P17650927992704693043

namespace A156343

/-- `∩[A085556(n+1), A334321(n+1)]` -/
def P17650927992704693043.Spec : Prop :=
  ∀ n, (P17650927992704693043.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P9160413354620129903

`∩[A085556(n+1), A106119(n+1)]`
-/

namespace A156343.P9160413354620129903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P9160413354620129903

namespace A156343

/-- `∩[A085556(n+1), A106119(n+1)]` -/
def P9160413354620129903.Spec : Prop :=
  ∀ n, (P9160413354620129903.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P16947378081225992237

`∩[A065396(n+1), A085556(n+1)]`
-/

namespace A156343.P16947378081225992237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P16947378081225992237

namespace A156343

/-- `∩[A065396(n+1), A085556(n+1)]` -/
def P16947378081225992237.Spec : Prop :=
  ∀ n, (P16947378081225992237.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P11755334213921755481

`∩[A078138(n+1), A085556(n+1)]`
-/

namespace A156343.P11755334213921755481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P11755334213921755481

namespace A156343

/-- `∩[A078138(n+1), A085556(n+1)]` -/
def P11755334213921755481.Spec : Prop :=
  ∀ n, (P11755334213921755481.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P15623005780276086630

`∩[A085556(n+1), A106118(n+1)]`
-/

namespace A156343.P15623005780276086630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P15623005780276086630

namespace A156343

/-- `∩[A085556(n+1), A106118(n+1)]` -/
def P15623005780276086630.Spec : Prop :=
  ∀ n, (P15623005780276086630.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P11932779370810962216

`∩[A000040(n+1), A085556(n+1)]`
-/

namespace A156343.P11932779370810962216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P11932779370810962216

namespace A156343

/-- `∩[A000040(n+1), A085556(n+1)]` -/
def P11932779370810962216.Spec : Prop :=
  ∀ n, (P11932779370810962216.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P16427041593315653695

`∩[A004139(n+1), A085556(n+1)]`
-/

namespace A156343.P16427041593315653695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P16427041593315653695

namespace A156343

/-- `∩[A004139(n+1), A085556(n+1)]` -/
def P16427041593315653695.Spec : Prop :=
  ∀ n, (P16427041593315653695.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P10238854995581590312

`∩[A006005(n+1), A085556(n+1)]`
-/

namespace A156343.P10238854995581590312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P10238854995581590312

namespace A156343

/-- `∩[A006005(n+1), A085556(n+1)]` -/
def P10238854995581590312.Spec : Prop :=
  ∀ n, (P10238854995581590312.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P14690747647833667644

`∩[A008578(n+1), A085556(n+1)]`
-/

namespace A156343.P14690747647833667644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P14690747647833667644

namespace A156343

/-- `∩[A008578(n+1), A085556(n+1)]` -/
def P14690747647833667644.Spec : Prop :=
  ∀ n, (P14690747647833667644.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P2258522112106297794

`∩[A045319(n+1), A085556(n+1)]`
-/

namespace A156343.P2258522112106297794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P2258522112106297794

namespace A156343

/-- `∩[A045319(n+1), A085556(n+1)]` -/
def P2258522112106297794.Spec : Prop :=
  ∀ n, (P2258522112106297794.a n : ℤ) = A156343 (n + 1)

end A156343

/-! ## A156343.P2865022826071032315

`∩[A045344(n+1), A085556(n+1)]`
-/

namespace A156343.P2865022826071032315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156343.P2865022826071032315

namespace A156343

/-- `∩[A045344(n+1), A085556(n+1)]` -/
def P2865022826071032315.Spec : Prop :=
  ∀ n, (P2865022826071032315.a n : ℤ) = A156343 (n + 1)

end A156343

/-!
# A156346: Period length 12: repeat 1,2,-4,4,-2,-1,-1,-2,4,-4,2,1.

The programs for A156346, the canonical program `A156346.P16688115046334546321` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156346 has offset 0).

The definition of A156346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156346.P16688115046334546321

`A057077(n)*A156283(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156346

/-- `A057077(n)*A156283(n)` -/
def P16688115046334546321.Spec : Prop :=
  ∀ n, P16688115046334546321.a n = A156346 n

theorem P16688115046334546321.correct : P16688115046334546321.Spec := by
  intro n
  simp only [A156346]

end A156346

/-!
# A156348: Triangle T(n,k) read by rows. Column of Pascal's triangle interleaved with k-1 zeros.

The programs for A156348, there is no canonical definition to state claims against.
-/

/-! ## A156348.P8032440372979256791

`A156836(n+1)/A054526(n+1)`
-/

namespace A156348.P8032440372979256791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156836 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A156348.P8032440372979256791

/-! ## A156348.P5234739911270175824

`A156836(n+1)/A159936(n+1)`
-/

namespace A156348.P5234739911270175824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156836 (n + 1) : ℚ) / (A159936 (n + 1) : ℚ)

end

end A156348.P5234739911270175824

/-! ## A156348.P18090793271797270300

`A156836(n+1)/A372673(n+1)`
-/

namespace A156348.P18090793271797270300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156836 (n + 1) : ℚ) / (A372673 (n + 1) : ℚ)

end

end A156348.P18090793271797270300

/-! ## A156348.P13508781257757610398

`A156836(n+1)/A163109(A059268(n))`
-/

namespace A156348.P13508781257757610398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156836 (n + 1) : ℚ) / (A163109 (A059268 n).toNat : ℚ)

end

end A156348.P13508781257757610398

/-! ## A156348.P16512864311432763554

`A156836(n+1)/A349137(A054582(n))`
-/

namespace A156348.P16512864311432763554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156836 (n + 1) : ℚ) / (A349137 (A054582 n).toNat : ℚ)

end

end A156348.P16512864311432763554

/-! ## A156348.P4667732749323342372

`A156836(n+1)/A000010(A002260(n+1))`
-/

namespace A156348.P4667732749323342372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156836 (n + 1) : ℚ) / (A000010 (A002260 (n + 1)).toNat : ℚ)

end

end A156348.P4667732749323342372

/-! ## A156348.P13448529580725817337

`A156836(n+1)/A000010(A050873(n+1))`
-/

namespace A156348.P13448529580725817337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156836 (n + 1) : ℚ) / (A000010 (A050873 (n + 1)).toNat : ℚ)

end

end A156348.P13448529580725817337

/-! ## A156348.P1234555580932066362

`A156836(n+1)/A000010(A112544(n+1))`
-/

namespace A156348.P1234555580932066362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156836 (n + 1) : ℚ) / (A000010 (A112544 (n + 1)).toNat : ℚ)

end

end A156348.P1234555580932066362

/-! ## A156348.P17258032531882459660

`A156836(n+1)/A000010(A123275(n+1))`
-/

namespace A156348.P17258032531882459660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156836 (n + 1) : ℚ) / (A000010 (A123275 (n + 1)).toNat : ℚ)

end

end A156348.P17258032531882459660

/-! ## A156348.P959453910830751458

`A157497(n+1)/A002260(n+1)`
-/

namespace A156348.P959453910830751458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157497 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A156348.P959453910830751458

/-!
# A156349: a(n)=sum_{k=1..n} r(k) where r(k)=A000002(k) if A000002(k+1)=2 and r(k)=0 if A000002(k+1)=1.

The programs for A156349, there is no canonical definition to state claims against.
-/

/-! ## A156349.P8533979765845819455

`∑[(a(n-1)+1)*A157686(n+1)]` with `a(0)=1`
-/

namespace A156349.P8533979765845819455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) + 1) * A157686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156349.P8533979765845819455

/-! ## A156349.P1988595821988811426

`∑[(a(n-1)+1)*log2(A000002(n+2))]` with `a(0)=1`
-/

namespace A156349.P1988595821988811426
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) + 1) * Real.logb 2 (A000002 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156349.P1988595821988811426

/-! ## A156349.P13183028597928909645

`∑[(a(n-1)+1)*∑[A054354(n+1)]]` with `a(0)=1`
-/

namespace A156349.P13183028597928909645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156349.P13183028597928909645

/-! ## A156349.P17626680500393706756

`ceil(∑[Δ[((-1)^n)%A000002(n+1)]²/2])`
-/

namespace A156349.P17626680500393706756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ n) (A000002 (n + 1))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A156349.P17626680500393706756

/-! ## A156349.P561695839463824275

`A054353(n+1)-A156350(n+1)`
-/

namespace A156349.P561695839463824275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - A156350 (n + 1)

end

end A156349.P561695839463824275

/-! ## A156349.P16634548745935921685

`∑[A000002(n+1)]-A156350(n+1)`
-/

namespace A156349.P16634548745935921685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A156350 (n + 1)

end

end A156349.P16634548745935921685

/-! ## A156349.P15252033625346619719

`∑[A000002(n+1)*A157686(n+1)]`
-/

namespace A156349.P15252033625346619719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A157686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156349.P15252033625346619719

/-! ## A156349.P14860614814058967642

`∑[A000002(n+1)*A123594(n+4)]`
-/

namespace A156349.P14860614814058967642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A123594 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156349.P14860614814058967642

/-! ## A156349.P11541762534166353610

`∑[gcd(2, A160051(n))*A157686(n+1)]`
-/

namespace A156349.P11541762534166353610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A160051 n) : ℤ) * A157686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156349.P11541762534166353610

/-! ## A156349.P16886731374894778275

`∑[log2(A078880(n+1))*A000002(n+1)]`
-/

namespace A156349.P16886731374894778275
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A078880 (n + 1) : ℝ) * (A000002 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156349.P16886731374894778275

/-!
# A156350: a(n)=sum_{k=1..n} r(k) where r(k)=A000002(k) if A000002(k+1)=1 and r(k)=0 if A000002(k+1)=2.

The programs for A156350, there is no canonical definition to state claims against.
-/

/-! ## A156350.P15711934385904263025

`∑[ceil(atan(A249094(n+2)))]`
-/

namespace A156350.P15711934385904263025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A249094 (n + 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156350.P15711934385904263025

/-! ## A156350.P17297893752158131598

`∑[A056944(A249094(n+2))]`
-/

namespace A156350.P17297893752158131598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 (A249094 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156350.P17297893752158131598

/-! ## A156350.P16138525658028459098

`∑[A046698(A249094(n+2)²)]`
-/

namespace A156350.P16138525658028459098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A249094 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156350.P16138525658028459098

/-! ## A156350.P8402123884698906035

`∑[A099563(A249094(n+2)²)]`
-/

namespace A156350.P8402123884698906035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A249094 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156350.P8402123884698906035

/-! ## A156350.P1981299562643447251

`∑[A130130(A249094(n+2)²)]`
-/

namespace A156350.P1981299562643447251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A249094 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156350.P1981299562643447251

/-! ## A156350.P5466956154536342270

`∑[A046698(2*A249094(n+2))]`
-/

namespace A156350.P5466956154536342270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (2 * A249094 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156350.P5466956154536342270

/-! ## A156350.P1561709913344357444

`∑[A035931(6*A249094(n+2))]`
-/

namespace A156350.P1561709913344357444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (6 * A249094 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156350.P1561709913344357444

/-! ## A156350.P15648812231282848000

`A054353(n+1)-A156349(n+1)`
-/

namespace A156350.P15648812231282848000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - A156349 (n + 1)

end

end A156350.P15648812231282848000

/-! ## A156350.P5469658832078657395

`∑[A000002(n+1)]-A156349(n+1)`
-/

namespace A156350.P5469658832078657395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A156349 (n + 1)

end

end A156350.P5469658832078657395

/-! ## A156350.P4726656881364483364

`∑[A000002(n+1)*A078650(n+2)]`
-/

namespace A156350.P4726656881364483364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A078650 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156350.P4726656881364483364

/-!
# A156351: a(n) = Sum_{k=1..n} (-1)^K(k+1)*(K(k+1)-K(k)) where K(k) = A000002(k).

The programs for A156351, the canonical program `A156351.P4769682517750907321` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156351 has offset 1).

The definition of A156351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156351.P4769682517750907321

`a(n-(a(a(n-2))%2+1))+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156351

/-- `a(n-(a(a(n-2))%2+1))+1` -/
def P4769682517750907321.Spec : Prop :=
  ∀ n, (P4769682517750907321.a n : ℤ) = A156351 (n + 1)

theorem P4769682517750907321.correct : P4769682517750907321.Spec := by
  intro n
  simp only [A156351, Nat.add_sub_cancel]

end A156351

/-! ## A156351.P7309560187742411492

`a(n-gcd(2, a(a(n-2))+1))+1` with `a(0)=1, a(1)=1`
-/

namespace A156351.P7309560187742411492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - Nat.gcd 2 (a (a (n - 2)) + 1)) + 1

end

end A156351.P7309560187742411492

namespace A156351

/-- `a(n-gcd(2, a(a(n-2))+1))+1` -/
def P7309560187742411492.Spec : Prop :=
  ∀ n, (P7309560187742411492.a n : ℤ) = A156351 (n + 1)

end A156351

/-! ## A156351.P15729534573013129044

`a(n-2)-(a(a(n-1)-1)%2-2)` with `a(0)=1, a(1)=1`
-/

namespace A156351.P15729534573013129044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - (Int.tmod (a (a (n - 1) - 1).toNat) 2 - 2)

end

end A156351.P15729534573013129044

namespace A156351

/-- `a(n-2)-(a(a(n-1)-1)%2-2)` -/
def P15729534573013129044.Spec : Prop :=
  ∀ n, P15729534573013129044.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P10901462494094468948

`∑[A156728(n+1)]`
-/

namespace A156351.P10901462494094468948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156351.P10901462494094468948

namespace A156351

/-- `∑[A156728(n+1)]` -/
def P10901462494094468948.Spec : Prop :=
  ∀ n, P10901462494094468948.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P17756943390398369804

`∑[abs(A054354(n+1))]`
-/

namespace A156351.P17756943390398369804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054354 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156351.P17756943390398369804

namespace A156351

/-- `∑[abs(A054354(n+1))]` -/
def P17756943390398369804.Spec : Prop :=
  ∀ n, P17756943390398369804.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P5753346005735088436

`∑[1-A157687(n+1)]`
-/

namespace A156351.P5753346005735088436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A157687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156351.P5753346005735088436

namespace A156351

/-- `∑[1-A157687(n+1)]` -/
def P5753346005735088436.Spec : Prop :=
  ∀ n, P5753346005735088436.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P4454573544400616871

`∑[abs(Δ[A000002(n+1)])]`
-/

namespace A156351.P4454573544400616871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156351.P4454573544400616871

namespace A156351

/-- `∑[abs(Δ[A000002(n+1)])]` -/
def P4454573544400616871.Spec : Prop :=
  ∀ n, P4454573544400616871.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P7874296191623055975

`∑[char[A054353(n+1)-1]]`
-/

namespace A156351.P7874296191623055975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156351.P7874296191623055975

namespace A156351

/-- `∑[char[A054353(n+1)-1]]` -/
def P7874296191623055975.Spec : Prop :=
  ∀ n, (P7874296191623055975.a n : ℤ) = A156351 (n + 1)

end A156351

/-! ## A156351.P16894086554824593317

`∑[char[A216345(n+1)-2]]`
-/

namespace A156351.P16894086554824593317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156351.P16894086554824593317

namespace A156351

/-- `∑[char[A216345(n+1)-2]]` -/
def P16894086554824593317.Spec : Prop :=
  ∀ n, (P16894086554824593317.a n : ℤ) = A156351 (n + 1)

end A156351

/-! ## A156351.P3227981908213312658

`∑[char[A074286(n+1)+n]]`
-/

namespace A156351.P3227981908213312658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156351.P3227981908213312658

namespace A156351

/-- `∑[char[A074286(n+1)+n]]` -/
def P3227981908213312658.Spec : Prop :=
  ∀ n, (P3227981908213312658.a n : ℤ) = A156351 (n + 1)

end A156351

/-! ## A156351.P4543138002324412335

`A088569(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A156351.P4543138002324412335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A088569 (a (n - 1)).toNat + a (n - 2)

end

end A156351.P4543138002324412335

namespace A156351

/-- `A088569(a(n-1))+a(n-2)` -/
def P4543138002324412335.Spec : Prop :=
  ∀ n, P4543138002324412335.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P13841630601784287028

`A049710(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A156351.P13841630601784287028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A049710 (a (n - 1)).toNat + a (n - 2)

end

end A156351.P13841630601784287028

namespace A156351

/-- `A049710(a(n-1))+a(n-2)` -/
def P13841630601784287028.Spec : Prop :=
  ∀ n, P13841630601784287028.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P1263648826828249561

`A156253(A156728(n+1)+n)`
-/

namespace A156351.P1263648826828249561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A156728 (n + 1) + (n : ℤ)).toNat

end

end A156351.P1263648826828249561

namespace A156351

/-- `A156253(A156728(n+1)+n)` -/
def P1263648826828249561.Spec : Prop :=
  ∀ n, P1263648826828249561.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P1025890457640905252

`A156253(abs(A054354(n+1))+n)`
-/

namespace A156351.P1025890457640905252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (|A054354 (n + 1)| + (n : ℤ)).toNat

end

end A156351.P1025890457640905252

namespace A156351

/-- `A156253(abs(A054354(n+1))+n)` -/
def P1025890457640905252.Spec : Prop :=
  ∀ n, P1025890457640905252.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P2858020972997588870

`A156253(A054354(n+1)²+n)`
-/

namespace A156351.P2858020972997588870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A054354 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A156351.P2858020972997588870

namespace A156351

/-- `A156253(A054354(n+1)²+n)` -/
def P2858020972997588870.Spec : Prop :=
  ∀ n, P2858020972997588870.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P15289187591286517639

`n+1-A074286(A156253(n+1))`
-/

namespace A156351.P15289187591286517639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A074286 (A156253 (n + 1)).toNat

end

end A156351.P15289187591286517639

namespace A156351

/-- `n+1-A074286(A156253(n+1))` -/
def P15289187591286517639.Spec : Prop :=
  ∀ n, P15289187591286517639.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P745876312452788362

`A156253(n+1-A157687(n+1))`
-/

namespace A156351.P745876312452788362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 ((n + 1 : ℤ) - A157687 (n + 1)).toNat

end

end A156351.P745876312452788362

namespace A156351

/-- `A156253(n+1-A157687(n+1))` -/
def P745876312452788362.Spec : Prop :=
  ∀ n, P745876312452788362.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P10559106178641083827

`∑[A023416(Δ[A000002(n+1)]+1)]`
-/

namespace A156351.P10559106178641083827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156351.P10559106178641083827

namespace A156351

/-- `∑[A023416(Δ[A000002(n+1)]+1)]` -/
def P10559106178641083827.Spec : Prop :=
  ∀ n, P10559106178641083827.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P2645066298114164621

`∑[A059841(Δ[A000002(n+1)]+1)]`
-/

namespace A156351.P2645066298114164621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156351.P2645066298114164621

namespace A156351

/-- `∑[A059841(Δ[A000002(n+1)]+1)]` -/
def P2645066298114164621.Spec : Prop :=
  ∀ n, P2645066298114164621.a n = A156351 (n + 1)

end A156351

/-! ## A156351.P4568875951454603122

`∑[(A000002(n+1)-A078880(n+1))²]`
-/

namespace A156351.P4568875951454603122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000002 (n + 1) - A078880 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156351.P4568875951454603122

namespace A156351

/-- `∑[(A000002(n+1)-A078880(n+1))²]` -/
def P4568875951454603122.Spec : Prop :=
  ∀ n, P4568875951454603122.a n = A156351 (n + 1)

end A156351

/-!
# A156352: a(n)=A078649(A054353(n)-n+1)-A054353(n).

The programs for A156352, the canonical program `A156352.P2115846142684251298` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156352 has offset 1).

The definition of A156352 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156352.P2115846142684251298

`A078649(A054353(n+1)-(n+1)+1)-A054353(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156352

/-- `A078649(A054353(n+1)-(n+1)+1)-A054353(n+1)` -/
def P2115846142684251298.Spec : Prop :=
  ∀ n, P2115846142684251298.a n = A156352 (n + 1)

theorem P2115846142684251298.correct : P2115846142684251298.Spec := by
  intro n
  simp only [A156352, Nat.add_sub_cancel]

end A156352

/-! ## A156352.P5311092815606337345

`floor(acot(A249093(n+2)-1))+2`
-/

namespace A156352.P5311092815606337345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A249093 (n + 2) - 1 : ℝ)⌋ + 2

end

end A156352.P5311092815606337345

namespace A156352

/-- `floor(acot(A249093(n+2)-1))+2` -/
def P5311092815606337345.Spec : Prop :=
  ∀ n, P5311092815606337345.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P15750746867479214344

`A104435(A249093(n+2)+1)`
-/

namespace A156352.P15750746867479214344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (A249093 (n + 2) + 1).toNat

end

end A156352.P15750746867479214344

namespace A156352

/-- `A104435(A249093(n+2)+1)` -/
def P15750746867479214344.Spec : Prop :=
  ∀ n, P15750746867479214344.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P17832843176419817278

`A164886(6*A249093(n+2))`
-/

namespace A156352.P17832843176419817278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (6 * A249093 (n + 2)).toNat

end

end A156352.P17832843176419817278

namespace A156352

/-- `A164886(6*A249093(n+2))` -/
def P17832843176419817278.Spec : Prop :=
  ∀ n, P17832843176419817278.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P10141810029544009851

`A274225(A249093(n+2)+20)`
-/

namespace A156352.P10141810029544009851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274225 (A249093 (n + 2) + 20).toNat

end

end A156352.P10141810029544009851

namespace A156352

/-- `A274225(A249093(n+2)+20)` -/
def P10141810029544009851.Spec : Prop :=
  ∀ n, P10141810029544009851.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P5329538761189064255

`A164886(lcm(13, A249093(n+2)))`
-/

namespace A156352.P5329538761189064255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (Int.lcm 13 (A249093 (n + 2)))

end

end A156352.P5329538761189064255

namespace A156352

/-- `A164886(lcm(13, A249093(n+2)))` -/
def P5329538761189064255.Spec : Prop :=
  ∀ n, P5329538761189064255.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P5191164098718534166

`A079729((A249093(n+2)+1)²)`
-/

namespace A156352.P5191164098718534166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079729 ((A249093 (n + 2) + 1) ^ 2).toNat

end

end A156352.P5191164098718534166

namespace A156352

/-- `A079729((A249093(n+2)+1)²)` -/
def P5191164098718534166.Spec : Prop :=
  ∀ n, P5191164098718534166.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P11909131127144512563

`A000032(C(2, A249093(n+2)²))`
-/

namespace A156352.P11909131127144512563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (A249093 (n + 2) ^ 2).toNat)

end

end A156352.P11909131127144512563

namespace A156352

/-- `A000032(C(2, A249093(n+2)²))` -/
def P11909131127144512563.Spec : Prop :=
  ∀ n, P11909131127144512563.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P4601466842404385463

`A000032(C(2, A249093(n+2)^6))`
-/

namespace A156352.P4601466842404385463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (A249093 (n + 2) ^ 6).toNat)

end

end A156352.P4601466842404385463

namespace A156352

/-- `A000032(C(2, A249093(n+2)^6))` -/
def P4601466842404385463.Spec : Prop :=
  ∀ n, P4601466842404385463.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P1313802192085856462

`or(log2(A049710(n+2)), A088569(n+1))`
-/

namespace A156352.P1313802192085856462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.logb 2 (A049710 (n + 2) : ℝ))) (A088569 (n + 1))

end

end A156352.P1313802192085856462

namespace A156352

/-- `or(log2(A049710(n+2)), A088569(n+1))` -/
def P1313802192085856462.Spec : Prop :=
  ∀ n, P1313802192085856462.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P17473529777393594043

`or(log2(A088569(n+2)), A088569(n+1))`
-/

namespace A156352.P17473529777393594043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.logb 2 (A088569 (n + 2) : ℝ))) (A088569 (n + 1))

end

end A156352.P17473529777393594043

namespace A156352

/-- `or(log2(A088569(n+2)), A088569(n+1))` -/
def P17473529777393594043.Spec : Prop :=
  ∀ n, P17473529777393594043.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P1981504187168276702

`or(log2(A049710(n+2)), A049705(n+2))`
-/

namespace A156352.P1981504187168276702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.logb 2 (A049710 (n + 2) : ℝ))) (A049705 (n + 2))

end

end A156352.P1981504187168276702

namespace A156352

/-- `or(log2(A049710(n+2)), A049705(n+2))` -/
def P1981504187168276702.Spec : Prop :=
  ∀ n, P1981504187168276702.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P14924769179840963794

`or(A054354(n+2)+1, A088569(n+1))`
-/

namespace A156352.P14924769179840963794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054354 (n + 2) + 1) (A088569 (n + 1))

end

end A156352.P14924769179840963794

namespace A156352

/-- `or(A054354(n+2)+1, A088569(n+1))` -/
def P14924769179840963794.Spec : Prop :=
  ∀ n, P14924769179840963794.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P5702505072551793134

`A013948(A054353(n+1)-n)-(n+1)`
-/

namespace A156352.P5702505072551793134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (A054353 (n + 1) - (n : ℤ)).toNat - (n + 1 : ℤ)

end

end A156352.P5702505072551793134

namespace A156352

/-- `A013948(A054353(n+1)-n)-(n+1)` -/
def P5702505072551793134.Spec : Prop :=
  ∀ n, P5702505072551793134.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P7441732200919662989

`xor(2, floor(3/A000032(A249093(n+2)+1)))`
-/

namespace A156352.P7441732200919662989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ⌊3 / (A000032 (A249093 (n + 2) + 1).toNat : ℚ)⌋

end

end A156352.P7441732200919662989

namespace A156352

/-- `xor(2, floor(3/A000032(A249093(n+2)+1)))` -/
def P7441732200919662989.Spec : Prop :=
  ∀ n, P7441732200919662989.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P14616487216028721324

`gcd(4-A078880(n+2), log2(A078880(n+1)))`
-/

namespace A156352.P14616487216028721324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 - A078880 (n + 2)) (SequenceMachineLib.roundAway (Real.logb 2 (A078880 (n + 1) : ℝ)))

end

end A156352.P14616487216028721324

namespace A156352

/-- `gcd(4-A078880(n+2), log2(A078880(n+1)))` -/
def P14616487216028721324.Spec : Prop :=
  ∀ n, (P14616487216028721324.a n : ℤ) = A156352 (n + 1)

end A156352

/-! ## A156352.P12698719803162796005

`A013948(∑[A000002(n+1)]-n)-(n+1)`
-/

namespace A156352.P12698719803162796005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat - (n + 1 : ℤ)

end

end A156352.P12698719803162796005

namespace A156352

/-- `A013948(∑[A000002(n+1)]-n)-(n+1)` -/
def P12698719803162796005.Spec : Prop :=
  ∀ n, P12698719803162796005.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P4105335744521435657

`A020639(A006156(A249093(n+2)))`
-/

namespace A156352.P4105335744521435657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006156 (A249093 (n + 2)).toNat).toNat

end

end A156352.P4105335744521435657

namespace A156352

/-- `A020639(A006156(A249093(n+2)))` -/
def P4105335744521435657.Spec : Prop :=
  ∀ n, P4105335744521435657.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P12849441858408951830

`A020639(A105321(A249093(n+2)²))`
-/

namespace A156352.P12849441858408951830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A105321 (A249093 (n + 2) ^ 2).toNat).toNat

end

end A156352.P12849441858408951830

namespace A156352

/-- `A020639(A105321(A249093(n+2)²))` -/
def P12849441858408951830.Spec : Prop :=
  ∀ n, P12849441858408951830.a n = A156352 (n + 1)

end A156352

/-! ## A156352.P1415402023112223287

`A001221(A001057(A249093(n+2))+59)`
-/

namespace A156352.P1415402023112223287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001057 (A249093 (n + 2)).toNat + 59).toNat

end

end A156352.P1415402023112223287

namespace A156352

/-- `A001221(A001057(A249093(n+2))+59)` -/
def P1415402023112223287.Spec : Prop :=
  ∀ n, P1415402023112223287.a n = A156352 (n + 1)

end A156352

/-!
# A156353: A symmetrical powers triangle sequence: t(n,m) = (m^(n - m) + (n - m)^m).

The programs for A156353, the canonical program `A156353.P8326413882175110016` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156353 has offset 1).

The definition of A156353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156353.P8326413882175110016

`A004736(n+1)^A002260(n+1)+A002260(n+1)^A004736(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156353

/-- `A004736(n+1)^A002260(n+1)+A002260(n+1)^A004736(n+1)` -/
def P8326413882175110016.Spec : Prop :=
  ∀ n, P8326413882175110016.a n = (A156353 (n + 1) : ℚ)

end A156353

/-! ## A156353.P12728412154851954837

`A156354(lt[1, A156354(n)])`
-/

namespace A156353.P12728412154851954837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A156353.P12728412154851954837

namespace A156353

/-- `A156354(lt[1, A156354(n)])` -/
def P12728412154851954837.Spec : Prop :=
  ∀ n, P12728412154851954837.a n = A156353 (n + 1)

end A156353

/-! ## A156353.P16927154994678444259

`A051129(n+1)+A051128(n+1)`
-/

namespace A156353.P16927154994678444259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) + A051128 (n + 1)

end

end A156353.P16927154994678444259

namespace A156353

/-- `A051129(n+1)+A051128(n+1)` -/
def P16927154994678444259.Spec : Prop :=
  ∀ n, P16927154994678444259.a n = A156353 (n + 1)

end A156353

/-! ## A156353.P3109476432833740143

`A051128(n+1)+A009998(A007401(n+1))`
-/

namespace A156353.P3109476432833740143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) + A009998 (A007401 (n + 1)).toNat

end

end A156353.P3109476432833740143

namespace A156353

/-- `A051128(n+1)+A009998(A007401(n+1))` -/
def P3109476432833740143.Spec : Prop :=
  ∀ n, P3109476432833740143.a n = A156353 (n + 1)

end A156353

/-! ## A156353.P14484801953949006779

`A051129(n+1)+A009999(A014132(n+1))`
-/

namespace A156353.P14484801953949006779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) + A009999 (A014132 (n + 1)).toNat

end

end A156353.P14484801953949006779

namespace A156353

/-- `A051129(n+1)+A009999(A014132(n+1))` -/
def P14484801953949006779.Spec : Prop :=
  ∀ n, P14484801953949006779.a n = A156353 (n + 1)

end A156353

/-! ## A156353.P9766095553443876560

`A051128(n+1)+A002260(n+1)*A009998(n)`
-/

namespace A156353.P9766095553443876560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) + A002260 (n + 1) * A009998 n

end

end A156353.P9766095553443876560

namespace A156353

/-- `A051128(n+1)+A002260(n+1)*A009998(n)` -/
def P9766095553443876560.Spec : Prop :=
  ∀ n, P9766095553443876560.a n = A156353 (n + 1)

end A156353

/-! ## A156353.P15446883942684245592

`A051128(A038722(n+1))+A051128(n+1)`
-/

namespace A156353.P15446883942684245592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A038722 (n + 1)).toNat + A051128 (n + 1)

end

end A156353.P15446883942684245592

namespace A156353

/-- `A051128(A038722(n+1))+A051128(n+1)` -/
def P15446883942684245592.Spec : Prop :=
  ∀ n, P15446883942684245592.a n = A156353 (n + 1)

end A156353

/-! ## A156353.P13067406934413343415

`A051129(A038722(n+1))+A051129(n+1)`
-/

namespace A156353.P13067406934413343415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A038722 (n + 1)).toNat + A051129 (n + 1)

end

end A156353.P13067406934413343415

namespace A156353

/-- `A051129(A038722(n+1))+A051129(n+1)` -/
def P13067406934413343415.Spec : Prop :=
  ∀ n, P13067406934413343415.a n = A156353 (n + 1)

end A156353

/-! ## A156353.P7913096596063711178

`A051129(n+1)+A051129(A061579(n)+1)`
-/

namespace A156353.P7913096596063711178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) + A051129 (A061579 n + 1).toNat

end

end A156353.P7913096596063711178

namespace A156353

/-- `A051129(n+1)+A051129(A061579(n)+1)` -/
def P7913096596063711178.Spec : Prop :=
  ∀ n, P7913096596063711178.a n = A156353 (n + 1)

end A156353

/-! ## A156353.P557897611817850586

`A220417(n+1)+2*A051129(n+1)`
-/

namespace A156353.P557897611817850586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220417 (n + 1) + 2 * A051129 (n + 1)

end

end A156353.P557897611817850586

namespace A156353

/-- `A220417(n+1)+2*A051129(n+1)` -/
def P557897611817850586.Spec : Prop :=
  ∀ n, P557897611817850586.a n = A156353 (n + 1)

end A156353

/-! ## A156353.P11944929339583837853

`2*A051128(n+1)-A220417(n+1)`
-/

namespace A156353.P11944929339583837853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051128 (n + 1) - A220417 (n + 1)

end

end A156353.P11944929339583837853

namespace A156353

/-- `2*A051128(n+1)-A220417(n+1)` -/
def P11944929339583837853.Spec : Prop :=
  ∀ n, P11944929339583837853.a n = A156353 (n + 1)

end A156353

/-!
# A156354: Triangle T(n, k) = k^(n-k) + (n-k)^k with T(0, 0) = 1, read by rows.

The programs for A156354, the canonical program `A156354.P7788694135632265055` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156354 has offset 0).

The definition of A156354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156354.P10429750736242240014

`A055652(n)^n^C(2, n)`
-/

namespace A156354.P10429750736242240014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 n ^ n ^ Nat.choose 2 n

end

end A156354.P10429750736242240014

namespace A156354

/-- `A055652(n)^n^C(2, n)` -/
def P10429750736242240014.Spec : Prop :=
  ∀ n, P10429750736242240014.a n = A156354 n

end A156354

/-! ## A156354.P7788694135632265055

`A055652(A028310(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156354

/-- `A055652(A028310(n))` -/
def P7788694135632265055.Spec : Prop :=
  ∀ n, P7788694135632265055.a n = A156354 n

theorem P7788694135632265055.correct : P7788694135632265055.Spec := by
  intro n
  simp only [A156354]

end A156354

/-! ## A156354.P1033931943429260175

`A055652(A000007(n)+n)`
-/

namespace A156354.P1033931943429260175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A000007 n + (n : ℤ)).toNat

end

end A156354.P1033931943429260175

namespace A156354

/-- `A055652(A000007(n)+n)` -/
def P1033931943429260175.Spec : Prop :=
  ∀ n, P1033931943429260175.a n = A156354 n

end A156354

/-! ## A156354.P8714359149835633599

`A055652(A000038(n)+n)`
-/

namespace A156354.P8714359149835633599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A000038 n + (n : ℤ)).toNat

end

end A156354.P8714359149835633599

namespace A156354

/-- `A055652(A000038(n)+n)` -/
def P8714359149835633599.Spec : Prop :=
  ∀ n, P8714359149835633599.a n = A156354 n

end A156354

/-! ## A156354.P17786446981069345362

`A055652(n)-A000007(n)`
-/

namespace A156354.P17786446981069345362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 n - A000007 n

end

end A156354.P17786446981069345362

namespace A156354

/-- `A055652(n)-A000007(n)` -/
def P17786446981069345362.Spec : Prop :=
  ∀ n, P17786446981069345362.a n = A156354 n

end A156354

/-! ## A156354.P6866159901794559605

`A055652(n)/A054977(n)`
-/

namespace A156354.P6866159901794559605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055652 n : ℚ) / (A054977 n : ℚ)

end

end A156354.P6866159901794559605

namespace A156354

/-- `A055652(n)/A054977(n)` -/
def P6866159901794559605.Spec : Prop :=
  ∀ n, P6866159901794559605.a n = (A156354 n : ℚ)

end A156354

/-! ## A156354.P7438270681149602808

`A055652(gcd(n, A010816(n)))`
-/

namespace A156354.P7438270681149602808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (Int.gcd (n : ℤ) (A010816 n))

end

end A156354.P7438270681149602808

namespace A156354

/-- `A055652(gcd(n, A010816(n)))` -/
def P7438270681149602808.Spec : Prop :=
  ∀ n, P7438270681149602808.a n = A156354 n

end A156354

/-! ## A156354.P3086613264436441531

`A055652(A054977(n)-1+n)`
-/

namespace A156354.P3086613264436441531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A054977 n - 1 + (n : ℤ)).toNat

end

end A156354.P3086613264436441531

namespace A156354

/-- `A055652(A054977(n)-1+n)` -/
def P3086613264436441531.Spec : Prop :=
  ∀ n, P3086613264436441531.a n = A156354 n

end A156354

/-! ## A156354.P8474337252672289969

`A055652(n)+A057427(n)-1`
-/

namespace A156354.P8474337252672289969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 n + (A057427 n - 1)

end

end A156354.P8474337252672289969

namespace A156354

/-- `A055652(n)+A057427(n)-1` -/
def P8474337252672289969.Spec : Prop :=
  ∀ n, P8474337252672289969.a n = A156354 n

end A156354

/-! ## A156354.P17397534925708189574

`A055652(A054977(n)-(1-n))`
-/

namespace A156354.P17397534925708189574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A054977 n - (1 - (n : ℤ))).toNat

end

end A156354.P17397534925708189574

namespace A156354

/-- `A055652(A054977(n)-(1-n))` -/
def P17397534925708189574.Spec : Prop :=
  ∀ n, P17397534925708189574.a n = A156354 n

end A156354

/-! ## A156354.P18181401270940260817

`A055652(n)-A000038(n)/2`
-/

namespace A156354.P18181401270940260817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055652 n : ℚ) - (A000038 n : ℚ) / 2

end

end A156354.P18181401270940260817

namespace A156354

/-- `A055652(n)-A000038(n)/2` -/
def P18181401270940260817.Spec : Prop :=
  ∀ n, P18181401270940260817.a n = (A156354 n : ℚ)

end A156354

/-! ## A156354.P2213472488435822657

`A004248(A028310(n))+A003992(n)`
-/

namespace A156354.P2213472488435822657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A028310 n).toNat + A003992 n

end

end A156354.P2213472488435822657

namespace A156354

/-- `A004248(A028310(n))+A003992(n)` -/
def P2213472488435822657.Spec : Prop :=
  ∀ n, P2213472488435822657.a n = A156354 n

end A156354

/-! ## A156354.P16345632410309469221

`A004248(A000007(n)+n)+A003992(n)`
-/

namespace A156354.P16345632410309469221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A000007 n + (n : ℤ)).toNat + A003992 n

end

end A156354.P16345632410309469221

namespace A156354

/-- `A004248(A000007(n)+n)+A003992(n)` -/
def P16345632410309469221.Spec : Prop :=
  ∀ n, P16345632410309469221.a n = A156354 n

end A156354

/-! ## A156354.P6317100605678765585

`A003992(n)-(A000007(n)-A004248(n))`
-/

namespace A156354.P6317100605678765585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n - (A000007 n - A004248 n)

end

end A156354.P6317100605678765585

namespace A156354

/-- `A003992(n)-(A000007(n)-A004248(n))` -/
def P6317100605678765585.Spec : Prop :=
  ∀ n, P6317100605678765585.a n = A156354 n

end A156354

/-! ## A156354.P6330910223742952104

`A055652(A066182(n+1))`
-/

namespace A156354.P6330910223742952104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A066182 (n + 1)).toNat

end

end A156354.P6330910223742952104

namespace A156354

/-- `A055652(A066182(n+1))` -/
def P6330910223742952104.Spec : Prop :=
  ∀ n, P6330910223742952104.a n = A156354 n

end A156354

/-! ## A156354.P15547136855617085701

`A055652(A316669(n+1))`
-/

namespace A156354.P15547136855617085701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A316669 (n + 1)).toNat

end

end A156354.P15547136855617085701

namespace A156354

/-- `A055652(A316669(n+1))` -/
def P15547136855617085701.Spec : Prop :=
  ∀ n, P15547136855617085701.a n = A156354 n

end A156354

/-! ## A156354.P14661569756027955833

`A055652(A038722(n+2))`
-/

namespace A156354.P14661569756027955833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A038722 (n + 2)).toNat

end

end A156354.P14661569756027955833

namespace A156354

/-- `A055652(A038722(n+2))` -/
def P14661569756027955833.Spec : Prop :=
  ∀ n, P14661569756027955833.a n = A156354 n

end A156354

/-! ## A156354.P10108249218012113041

`A004248(A038722(n+2))+A004248(n)`
-/

namespace A156354.P10108249218012113041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A038722 (n + 2)).toNat + A004248 n

end

end A156354.P10108249218012113041

namespace A156354

/-- `A004248(A038722(n+2))+A004248(n)` -/
def P10108249218012113041.Spec : Prop :=
  ∀ n, P10108249218012113041.a n = A156354 n

end A156354

/-! ## A156354.P5548979626899628438

`A004248(A061579(n+1)+1)+A004248(n)`
-/

namespace A156354.P5548979626899628438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A061579 (n + 1) + 1).toNat + A004248 n

end

end A156354.P5548979626899628438

namespace A156354

/-- `A004248(A061579(n+1)+1)+A004248(n)` -/
def P5548979626899628438.Spec : Prop :=
  ∀ n, P5548979626899628438.a n = A156354 n

end A156354

/-! ## A156354.P14601064935901793103

`A004248(A093995(n+2)-(n+1))+A004248(n)`
-/

namespace A156354.P14601064935901793103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A093995 (n + 2) - (n + 1 : ℤ)).toNat + A004248 n

end

end A156354.P14601064935901793103

namespace A156354

/-- `A004248(A093995(n+2)-(n+1))+A004248(n)` -/
def P14601064935901793103.Spec : Prop :=
  ∀ n, P14601064935901793103.a n = A156354 n

end A156354

/-!
# A156359: Denominator of Euler(n, 1/14).

The programs for A156359, there is no canonical definition to state claims against.
-/

/-! ## A156359.P9666702330329007580

`196*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A156359.P9666702330329007580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  196 * a (n - 2)

end

end A156359.P9666702330329007580

/-! ## A156359.P7378835224868437536

`14^n/gcd(2, n+1)`
-/

namespace A156359.P7378835224868437536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 ^ n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A156359.P7378835224868437536

/-! ## A156359.P6097976757314336945

`14^n/(and(1, n)+1)`
-/

namespace A156359.P6097976757314336945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 ^ n : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A156359.P6097976757314336945

/-! ## A156359.P2592244229434726386

`4^floor(n/2)*7^n`
-/

namespace A156359.P2592244229434726386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (7 ^ n : ℚ)

end

end A156359.P2592244229434726386

/-! ## A156359.P8048072930295563112

`a(n-2)/(2/28)²` with `a(0)=1, a(1)=7`
-/

namespace A156359.P8048072930295563112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) / ((2 : ℚ) / 28) ^ 2

end

end A156359.P8048072930295563112

/-! ## A156359.P18144153919658194891

`14^n/A000034(n)`
-/

namespace A156359.P18144153919658194891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 ^ n : ℚ) / (A000034 n : ℚ)

end

end A156359.P18144153919658194891

/-! ## A156359.P2322342598613544286

`lcm(7^n, A000302(floor(n/2)))`
-/

namespace A156359.P2322342598613544286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (7 ^ n : ℤ) (A000302 ⌊(n : ℚ) / 2⌋.toNat)

end

end A156359.P2322342598613544286

/-! ## A156359.P10822903423283838650

`A017946(2*n)/(A000035(n)+1)`
-/

namespace A156359.P10822903423283838650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017946 (2 * n) : ℚ) / (A000035 n + 1 : ℚ)

end

end A156359.P10822903423283838650

/-! ## A156359.P17598422593501653175

`A017948(2*n)/(A000035(n)+1)`
-/

namespace A156359.P17598422593501653175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017948 (2 * n) : ℚ) / (A000035 n + 1 : ℚ)

end

end A156359.P17598422593501653175

/-! ## A156359.P2063834115309881617

`∑[A285399(n)]/A260438(3*n+2)`
-/

namespace A156359.P2063834115309881617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285399 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A260438 (3 * n + 2) : ℚ)

end

end A156359.P2063834115309881617

/-!
# A156360: G.f.: A(x) = exp( Sum_{n>=1} sigma_n(2n)*x^n/n ), where sigma_n(2n) is the sum of the n-th powers of the divisors of 2*n.

The programs for A156360, there is no canonical definition to state claims against.
-/

/-! ## A156360.P4839394746786081509

`∑[A057022(A234507(n))]`
-/

namespace A156360.P4839394746786081509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (A234507 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156360.P4839394746786081509

/-!
# A156361: a(2*n+2) = 7*a(2*n+1), a(2*n+1) = 7*a(2*n) - 6^n*A000108(n), a(0) = 1.

The programs for A156361, there is no canonical definition to state claims against.
-/

/-! ## A156361.P8793595349521205361

`A320198(8*∑[floor(8^(n-1))])`
-/

namespace A156361.P8793595349521205361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320198 (8 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A156361.P8793595349521205361

/-!
# A156362: a(2*n+2) = 8*a(2*n+1), a(2*n+1) = 8*a(2*n) - 7^n*A000108(n), a(0)=1.

The programs for A156362, there is no canonical definition to state claims against.
-/

/-! ## A156362.P15979781850372514112

`A020657(A156361(n)+1)`
-/

namespace A156362.P15979781850372514112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A156361 n + 1).toNat

end

end A156362.P15979781850372514112

/-!
# A156363: A triangle sequence related to the Eulerian numbers of the second kind: t(n,m) = Sum_{i=0..m}(-1)^(m-i)*binomial(n-i-1, m-i)*Stirling2(n+i+1, i+1).

The programs for A156363, there is no canonical definition to state claims against.
-/

/-! ## A156363.P3421075527066178991

`A316470(A071949(n))+A189628(n+1)`
-/

namespace A156363.P3421075527066178991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A071949 n).toNat + A189628 (n + 1)

end

end A156363.P3421075527066178991

/-!
# A156364: Triangle read by rows: t(n,m) = Sum_{i=0..n} (-1)^(m-i)*Eulerian1(n-i+1, m-i) *Stirling2(n+i+1, i+1), where Eulerian1 are the Eulerian numbers of the first kind (A173018).

The programs for A156364, there is no canonical definition to state claims against.
-/

/-! ## A156364.P11263438305104316937

`A366948(A132950(n))`
-/

namespace A156364.P11263438305104316937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366948 (A132950 n).toNat

end

end A156364.P11263438305104316937

/-! ## A156364.P9312362113488707255

`A068193(A394783(n+1))`
-/

namespace A156364.P9312362113488707255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068193 (A394783 (n + 1)).toNat

end

end A156364.P9312362113488707255

/-! ## A156364.P4865662741278627582

`A094954(A153278(n+1)+n)`
-/

namespace A156364.P4865662741278627582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094954 (A153278 (n + 1) + (n : ℤ)).toNat

end

end A156364.P4865662741278627582

/-! ## A156364.P4396034228657636038

`A334965(A343806(n)/A088699(n))`
-/

namespace A156364.P4396034228657636038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (SequenceMachineLib.roundAway ((A343806 n : ℚ) / (A088699 n : ℚ))).toNat

end

end A156364.P4396034228657636038

/-!
# A156365: T(n, k) = E(n, k)*2^k where E(n,k) are the Eulerian numbers A173018, for n > 0 and 0 <= k <= n-1, additionally T(0,0) = 1.

The programs for A156365, there is no canonical definition to state claims against.
-/

/-! ## A156365.P9939994924997747537

`A142075(abs(1-n)+1)`
-/

namespace A156365.P9939994924997747537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142075 (|1 - (n : ℤ)| + 1).toNat

end

end A156365.P9939994924997747537

/-! ## A156365.P1688256965987034562

`A142075(n)^A000010(a(val(n, 5)))` with `a(0)=1`
-/

namespace A156365.P1688256965987034562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A142075 n : ℚ) ^ (A000010 (SequenceMachineLib.roundAway (a (SequenceMachineLib.valuation n 5))).toNat : ℤ)

end

end A156365.P1688256965987034562

/-! ## A156365.P3986898264667657558

`a(A033718(A033718(n)))*A142075(n)` with `a(0)=1`
-/

namespace A156365.P3986898264667657558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A033718 (A033718 n).toNat).toNat * A142075 n

end

end A156365.P3986898264667657558

/-! ## A156365.P5334201462073597543

`A142075(n)^a(A033718(A053644(n+1)))` with `a(0)=1`
-/

namespace A156365.P5334201462073597543
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A142075 n : ℝ) ^ (a (A033718 (A053644 (n + 1)).toNat).toNat)

end

end A156365.P5334201462073597543

/-! ## A156365.P809840433397910798

`A091090(A004275(n))*A142075(A233583(n+1))`
-/

namespace A156365.P809840433397910798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A004275 n).toNat * A142075 (A233583 (n + 1)).toNat

end

end A156365.P809840433397910798

/-!
# A156366: Triangle of coefficients of p(n, x) where p(n, x) is defined as p(n, x) = (1-3*x)^(n+1)*PolyLog(-n, 3*x)/(3*x), read by rows.

The programs for A156366, there is no canonical definition to state claims against.
-/

/-! ## A156366.P13421731917352442303

`A156735(A024023(n))%A300857(n+2)`
-/

namespace A156366.P13421731917352442303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156735 (A024023 n).toNat) (A300857 (n + 2))

end

end A156366.P13421731917352442303

/-! ## A156366.P10538006452784436819

`gcd(A027379(A278640(n)), A055999(n+3))`
-/

namespace A156366.P10538006452784436819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027379 (A278640 n).toNat) (A055999 (n + 3))

end

end A156366.P10538006452784436819

/-! ## A156366.P3163981074727862115

`gcd(A250120(A356951(n)), A356962(n+4))`
-/

namespace A156366.P3163981074727862115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250120 (A356951 n).toNat) (A356962 (n + 4))

end

end A156366.P3163981074727862115

/-! ## A156366.P17890139203689257266

`A001223(A189734(n+1))-A009194(n+1)`
-/

namespace A156366.P17890139203689257266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A189734 (n + 1)).toNat - A009194 (n + 1)

end

end A156366.P17890139203689257266

/-!
# A156367: Triangle T(n, k) = binomial(n+k, 2*k)*k!, read by rows.

The programs for A156367, the canonical program `A156367.P12894126842777466498` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156367 has offset 0).

The definition of A156367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156367.P9949766267862315836

`A085478(n)*A233543(n)`
-/

namespace A156367.P9949766267862315836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A233543 n

end

end A156367.P9949766267862315836

namespace A156367

/-- `A085478(n)*A233543(n)` -/
def P9949766267862315836.Spec : Prop :=
  ∀ n, P9949766267862315836.a n = A156367 n

end A156367

/-! ## A156367.P12894126842777466498

`A002262(n)!*A085478(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156367

/-- `A002262(n)!*A085478(n)` -/
def P12894126842777466498.Spec : Prop :=
  ∀ n, P12894126842777466498.a n = A156367 n

theorem P12894126842777466498.correct : P12894126842777466498.Spec := by
  intro n
  simp only [A156367]

end A156367

/-! ## A156367.P17296524163131793677

`A085478(n)*A162608(A112367(n))`
-/

namespace A156367.P17296524163131793677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A162608 (A112367 n).toNat

end

end A156367.P17296524163131793677

namespace A156367

/-- `A085478(n)*A162608(A112367(n))` -/
def P17296524163131793677.Spec : Prop :=
  ∀ n, P17296524163131793677.a n = A156367 n

end A156367

/-! ## A156367.P10206752278959097589

`lcm(A123970(n)*A233543(n), A123970(n))`
-/

namespace A156367.P10206752278959097589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123970 n * A233543 n) (A123970 n)

end

end A156367.P10206752278959097589

namespace A156367

/-- `lcm(A123970(n)*A233543(n), A123970(n))` -/
def P10206752278959097589.Spec : Prop :=
  ∀ n, (P10206752278959097589.a n : ℤ) = A156367 n

end A156367

/-! ## A156367.P9731856585377183463

`A155856(A061579(n))`
-/

namespace A156367.P9731856585377183463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155856 (A061579 n).toNat

end

end A156367.P9731856585377183463

namespace A156367

/-- `A155856(A061579(n))` -/
def P9731856585377183463.Spec : Prop :=
  ∀ n, P9731856585377183463.a n = A156367 n

end A156367

/-! ## A156367.P15364087828944345568

`A155856(A114327(n)+n)`
-/

namespace A156367.P15364087828944345568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155856 (A114327 n + (n : ℤ)).toNat

end

end A156367.P15364087828944345568

namespace A156367

/-- `A155856(A114327(n)+n)` -/
def P15364087828944345568.Spec : Prop :=
  ∀ n, P15364087828944345568.a n = A156367 n

end A156367

/-! ## A156367.P4506615508513494323

`A155856(A038722(n+1)-1)`
-/

namespace A156367.P4506615508513494323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155856 (A038722 (n + 1) - 1).toNat

end

end A156367.P4506615508513494323

namespace A156367

/-- `A155856(A038722(n+1)-1)` -/
def P4506615508513494323.Spec : Prop :=
  ∀ n, P4506615508513494323.a n = A156367 n

end A156367

/-! ## A156367.P12393182894292741517

`A155856(A093995(n+1)-(n+1))`
-/

namespace A156367.P12393182894292741517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155856 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A156367.P12393182894292741517

namespace A156367

/-- `A155856(A093995(n+1)-(n+1))` -/
def P12393182894292741517.Spec : Prop :=
  ∀ n, P12393182894292741517.a n = A156367 n

end A156367

/-!
# A156368: A ménage triangle.

The programs for A156368, there is no canonical definition to state claims against.
-/

/-! ## A156368.P11169752531906210107

`A058057(A061579(n))`
-/

namespace A156368.P11169752531906210107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A061579 n).toNat

end

end A156368.P11169752531906210107

/-! ## A156368.P12927456957692370782

`A058057(A114327(n)+n)`
-/

namespace A156368.P12927456957692370782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A114327 n + (n : ℤ)).toNat

end

end A156368.P12927456957692370782

/-! ## A156368.P56127708031381990

`A058057(A038722(n+1)-1)`
-/

namespace A156368.P56127708031381990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A038722 (n + 1) - 1).toNat

end

end A156368.P56127708031381990

/-! ## A156368.P9141890796855273296

`A058057(A057944(n)+A025581(n))`
-/

namespace A156368.P9141890796855273296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A057944 n + A025581 n).toNat

end

end A156368.P9141890796855273296

/-! ## A156368.P4970535134576693904

`A058057(A127739(n+1)-A002260(n+1))`
-/

namespace A156368.P4970535134576693904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A156368.P4970535134576693904

/-! ## A156368.P1099418657088661140

`A058057(A038722(n+2))`
-/

namespace A156368.P1099418657088661140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A038722 (n + 2)).toNat

end

end A156368.P1099418657088661140

/-!
# A156372: Denominator of Euler(n, 1/15).

The programs for A156372, there is no canonical definition to state claims against.
-/

/-! ## A156372.P4043958616797182867

`2^val(n+1, 2)*15^n`
-/

namespace A156372.P4043958616797182867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 15 ^ n

end

end A156372.P4043958616797182867

/-! ## A156372.P6671489477362395522

`lcm(2^val(n+1, 2), 15^n)`
-/

namespace A156372.P6671489477362395522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (15 ^ n)

end

end A156372.P6671489477362395522

/-! ## A156372.P15760342128007003354

`5^n*A156180(n)`
-/

namespace A156372.P15760342128007003354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A156180 n

end

end A156372.P15760342128007003354

/-! ## A156372.P9678303299805092382

`15^n*A006519(n+1)`
-/

namespace A156372.P9678303299805092382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 ^ n : ℤ) * A006519 (n + 1)

end

end A156372.P9678303299805092382

/-! ## A156372.P2915784431144783513

`lcm(A156180(n), A156183(n))`
-/

namespace A156372.P2915784431144783513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A156180 n) (A156183 n)

end

end A156372.P2915784431144783513

/-! ## A156372.P13684359029040971756

`A006519(n+1)*A017951(2*n)`
-/

namespace A156372.P13684359029040971756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A017951 (2 * n)

end

end A156372.P13684359029040971756

/-! ## A156372.P2045228538864242465

`lcm(A100747(2*n), A100762(n+1))`
-/

namespace A156372.P2045228538864242465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100747 (2 * n)) (A100762 (n + 1))

end

end A156372.P2045228538864242465

/-! ## A156372.P11521525791005591424

`A006519(n+1)*A027467(A000217(n))`
-/

namespace A156372.P11521525791005591424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A027467 (A000217 n).toNat

end

end A156372.P11521525791005591424

/-! ## A156372.P16412732515036749405

`A000244(n)*A006519(n+1)*A000351(n)`
-/

namespace A156372.P16412732515036749405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A006519 (n + 1) * A000351 n

end

end A156372.P16412732515036749405

/-! ## A156372.P15561181773284572448

`gcd(n+1, A001025(A000010(n+1)))*A001024(n)`
-/

namespace A156372.P15561181773284572448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A001025 (A000010 (n + 1)).toNat) : ℤ) * A001024 n

end

end A156372.P15561181773284572448

/-!
# A156376: a(n) = 30*n + 19.

The programs for A156376, the canonical program `A156376.P17083765840451318560` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156376 has offset 0).

The definition of A156376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*n+19` (program `A156376.P17083765840451318560`, by `A156376.P17083765840451318560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156376.P17083765840451318560

`30*n+19`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156376

/-- `30*n+19` -/
def P17083765840451318560.Spec : Prop :=
  ∀ n, (P17083765840451318560.a n : ℤ) = A156376 n

theorem P17083765840451318560.correct : P17083765840451318560.Spec := by
  intro n
  simp only [A156376]

end A156376

/-!
# A156381: Number of 3 X 3 arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to n.

The programs for A156381, there is no canonical definition to state claims against.
-/

/-! ## A156381.P9241886903799564284

`and(A318331(A061493(n+1)), A331745(n))`
-/

namespace A156381.P9241886903799564284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318331 (A061493 (n + 1)).toNat) (A331745 n)

end

end A156381.P9241886903799564284

/-! ## A156381.P12269920032833532802

`and(A103391(n+1), A318331(A061493(n+1)))`
-/

namespace A156381.P12269920032833532802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103391 (n + 1)) (A318331 (A061493 (n + 1)).toNat)

end

end A156381.P12269920032833532802

/-! ## A156381.P2765988098125071676

`A306518(and(A017401(n), A291463(n+1)))`
-/

namespace A156381.P2765988098125071676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306518 (Int.land (A017401 n) (A291463 (n + 1))).toNat

end

end A156381.P2765988098125071676

/-! ## A156381.P17472497431195047446

`A195822(A000005(ceil((ϕ^n)²))+1)`
-/

namespace A156381.P17472497431195047446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195822 (A000005 ⌈(Real.goldenRatio ^ n) ^ 2⌉.toNat + 1).toNat

end

end A156381.P17472497431195047446

/-! ## A156381.P16288583586902748177

`and(record[A100957(n+1)], A258567(n+1))`
-/

namespace A156381.P16288583586902748177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A258567 (n + 1))

end

end A156381.P16288583586902748177

/-!
# A156384: The number of solutions to x^2 + y^2 + 2*z^2 = n in nonnegative integers x,y,z.

The programs for A156384, there is no canonical definition to state claims against.
-/

/-! ## A156384.P15724140744735880534

`A118759(A156382(n))%8`
-/

namespace A156384.P15724140744735880534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 (A156382 n).toNat) 8

end

end A156384.P15724140744735880534

/-!
# A156387: Number of 5X5 arrays of squares of integers, symmetric under 90 degree rotation, with all rows summing to n.

The programs for A156387, there is no canonical definition to state claims against.
-/

/-! ## A156387.P3463806383148600598

`A156449(n+1)%A156536(comp[xor(1, 3*n)+3])`
-/

namespace A156387.P3463806383148600598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156449 (n + 1)) (A156536 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A156387.P3463806383148600598

/-! ## A156387.P9667740934303795477

`A000120(A004531(n)*A084465(n))`
-/

namespace A156387.P9667740934303795477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004531 n * A084465 n).toNat

end

end A156387.P9667740934303795477

/-! ## A156387.P18386509151336182359

`A000120(lcm(A004531(n)², A084465(n)))`
-/

namespace A156387.P18386509151336182359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A004531 n ^ 2) (A084465 n))

end

end A156387.P18386509151336182359

