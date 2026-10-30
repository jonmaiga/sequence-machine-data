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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A077500: Primes of the form 2^r*p^s + 1, where p is an odd prime.

The programs for A077500, there is no canonical definition to state claims against.
-/

/-! ## A077500.P2035535116004433388

`∪[A005109(n+1), A067466(n+1)]`
-/

namespace A077500.P2035535116004433388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077500.P2035535116004433388

/-! ## A077500.P3937568808448368764

`∪[A067466(n+1), A077497(n+1)]`
-/

namespace A077500.P3937568808448368764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077500.P3937568808448368764

/-! ## A077500.P13301112011958328741

`∪[A067466(n+1), A077498(n+1)]`
-/

namespace A077500.P13301112011958328741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077500.P13301112011958328741

/-! ## A077500.P11648194437787743116

`∪[A067466(n+1), A077499(n+1)]`
-/

namespace A077500.P11648194437787743116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077500.P11648194437787743116

/-! ## A077500.P5565362967647390758

`p?[A070915(n+1)+1]`
-/

namespace A077500.P5565362967647390758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077500.P5565362967647390758

/-! ## A077500.P14309386241804438674

`record[A020639(A070915(n+1)+1)]`
-/

namespace A077500.P14309386241804438674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A070915 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077500.P14309386241804438674

/-! ## A077500.P10964972326851022606

`record[A166333(A070915(n+1))]`
-/

namespace A077500.P10964972326851022606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A070915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077500.P10964972326851022606

/-! ## A077500.P4426175213022784822

`p?[A028234(A028234(n+1))+n+1]`
-/

namespace A077500.P4426175213022784822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A028234 (n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077500.P4426175213022784822

/-! ## A077500.P16388023569017578296

`p?[record[A116512(n+1)+1]]`
-/

namespace A077500.P16388023569017578296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077500.P16388023569017578296

/-!
# A077502: Smallest square greater than the previous term and beginning with n.

The programs for A077502, there is no canonical definition to state claims against.
-/

/-! ## A077502.P16612341030653909284

`A272676(n)²`
-/

namespace A077502.P16612341030653909284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272676 n ^ 2

end

end A077502.P16612341030653909284

/-! ## A077502.P18407711785527355016

`A272676((n+n)/2)^2`
-/

namespace A077502.P18407711785527355016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272676 (SequenceMachineLib.roundAway ((n + n : ℚ) / 2)).toNat ^ 2

end

end A077502.P18407711785527355016

/-! ## A077502.P1800590700374117836

`A272676(n)*A272676(A028310(n))`
-/

namespace A077502.P1800590700374117836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272676 n * A272676 (A028310 n).toNat

end

end A077502.P1800590700374117836

/-! ## A077502.P14293459895445815674

`A272676(n)*A272676(n%A080478(n+1))`
-/

namespace A077502.P14293459895445815674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272676 n * A272676 (Int.tmod (n : ℤ) (A080478 (n + 1))).toNat

end

end A077502.P14293459895445815674

/-! ## A077502.P13958685161534714246

`A000290(A272676(n)%A051402(n+1))`
-/

namespace A077502.P13958685161534714246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A272676 n) (A051402 (n + 1))).toNat

end

end A077502.P13958685161534714246

/-! ## A077502.P18148316251351063795

`A000290(A272676(n))%A117762(n+1)`
-/

namespace A077502.P18148316251351063795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A272676 n).toNat) (A117762 (n + 1))

end

end A077502.P18148316251351063795

/-! ## A077502.P9593445363278054884

`A033638(2*A272676(n))-1`
-/

namespace A077502.P9593445363278054884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * A272676 n).toNat - 1

end

end A077502.P9593445363278054884

/-! ## A077502.P4611474708554875476

`A033638(A272676(n)+A272676(n))-1`
-/

namespace A077502.P4611474708554875476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A272676 n + A272676 n).toNat - 1

end

end A077502.P4611474708554875476

/-! ## A077502.P17671419441551030933

`A018796(A272676(n)*A272676(n))`
-/

namespace A077502.P17671419441551030933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A272676 n * A272676 n).toNat

end

end A077502.P17671419441551030933

/-!
# A077503: Smallest n-digit square beginning with n.

The programs for A077503, there is no canonical definition to state claims against.
-/

/-! ## A077503.P17727361485682213048

`A000290(ceil(sqrt(∑[n]+(n+1)*10^n)))`
-/

namespace A077503.P17727361485682213048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * 10 ^ n : ℕ) : ℝ)⌉.toNat

end

end A077503.P17727361485682213048

/-! ## A077503.P12163150239475825208

`A253909(ceil(sqrt(A053541(n+1))))`
-/

namespace A077503.P12163150239475825208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 ⌈Real.sqrt (A053541 (n + 1) : ℝ)⌉.toNat

end

end A077503.P12163150239475825208

/-!
# A077505: a(n) = A077504(n) - n*10^d where d = n - number of digits in n.

The programs for A077505, there is no canonical definition to state claims against.
-/

/-! ## A077505.P5475888145288824187

`A077504(n+2)%Δ[A000351(n)]`
-/

namespace A077505.P5475888145288824187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077504 (n + 2)) (f1 (n + 1) - f1 n)

end

end A077505.P5475888145288824187

/-!
# A077506: Smallest n-digit triangular number beginning with n.

The programs for A077506, there is no canonical definition to state claims against.
-/

/-! ## A077506.P8411973592363157568

`C(A157271(A055099(n+1)), 2)`
-/

namespace A077506.P8411973592363157568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A157271 (A055099 (n + 1)).toNat).toNat 2

end

end A077506.P8411973592363157568

/-!
# A077510: Numbers k such that k + pi(k) is a prime.

The programs for A077510, the canonical program `A077510.P12327398340584914313` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077510 has offset 1).

The definition of A077510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5079 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077510.P12327398340584914313

`eq[2, A000005(A000720(n+1)+n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A077510

/-- `eq[2, A000005(A000720(n+1)+n+1)]+1` -/
def P12327398340584914313.Spec : Prop :=
  ∀ n, (P12327398340584914313.a n : ℤ) = A077510 (n + 1)

theorem P12327398340584914313.correct : P12327398340584914313.Spec := by
  intro n
  simp only [A077510, Nat.add_sub_cancel]

end A077510

/-! ## A077510.P6220835639994779487

`eq[1, A001222(A095117(n+1))]+1`
-/

namespace A077510.P6220835639994779487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A095117 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A077510.P6220835639994779487

namespace A077510

/-- `eq[1, A001222(A095117(n+1))]+1` -/
def P6220835639994779487.Spec : Prop :=
  ∀ n, (P6220835639994779487.a n : ℤ) = A077510 (n + 1)

end A077510

/-! ## A077510.P1086746008748235586

`A000027(eq[1, A001222(A036234(n+1)+n)]+1)`
-/

namespace A077510.P1086746008748235586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A036234 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A077510.P1086746008748235586

namespace A077510

/-- `A000027(eq[1, A001222(A036234(n+1)+n)]+1)` -/
def P1086746008748235586.Spec : Prop :=
  ∀ n, P1086746008748235586.a n = A077510 (n + 1)

end A077510

/-! ## A077510.P2183760153183362862

`record[A165634(p?[2*n+1])]`
-/

namespace A077510.P2183760153183362862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077510.P2183760153183362862

namespace A077510

/-- `record[A165634(p?[2*n+1])]` -/
def P2183760153183362862.Spec : Prop :=
  ∀ n, P2183760153183362862.a n = A077510 (n + 1)

end A077510

/-! ## A077510.P5136341546336801229

`A165634(p?[A095117(n)])`
-/

namespace A077510.P5136341546336801229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A077510.P5136341546336801229

namespace A077510

/-- `A165634(p?[A095117(n)])` -/
def P5136341546336801229.Spec : Prop :=
  ∀ n, P5136341546336801229.a n = A077510 (n + 1)

end A077510

/-! ## A077510.P14500827649077488174

`A165634(A076757(n+1))`
-/

namespace A077510.P14500827649077488174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (A076757 (n + 1)).toNat

end

end A077510.P14500827649077488174

namespace A077510

/-- `A165634(A076757(n+1))` -/
def P14500827649077488174.Spec : Prop :=
  ∀ n, P14500827649077488174.a n = A077510 (n + 1)

end A077510

/-! ## A077510.P5500117117711991104

`record[A165634(A000040(n+2))]`
-/

namespace A077510.P5500117117711991104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077510.P5500117117711991104

namespace A077510

/-- `record[A165634(A000040(n+2))]` -/
def P5500117117711991104.Spec : Prop :=
  ∀ n, P5500117117711991104.a n = A077510 (n + 1)

end A077510

/-! ## A077510.P7654380959328944841

`record[A165634(A006530(n+3))]`
-/

namespace A077510.P7654380959328944841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (A006530 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077510.P7654380959328944841

namespace A077510

/-- `record[A165634(A006530(n+3))]` -/
def P7654380959328944841.Spec : Prop :=
  ∀ n, P7654380959328944841.a n = A077510 (n + 1)

end A077510

/-! ## A077510.P4642375001894034314

`record[A165634(A014963(n+3))]`
-/

namespace A077510.P4642375001894034314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (A014963 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077510.P4642375001894034314

namespace A077510

/-- `record[A165634(A014963(n+3))]` -/
def P4642375001894034314.Spec : Prop :=
  ∀ n, P4642375001894034314.a n = A077510 (n + 1)

end A077510

/-! ## A077510.P2548967390820304376

`record[A165634(A020639(n+3))]`
-/

namespace A077510.P2548967390820304376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (A020639 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077510.P2548967390820304376

namespace A077510

/-- `record[A165634(A020639(n+3))]` -/
def P2548967390820304376.Spec : Prop :=
  ∀ n, P2548967390820304376.a n = A077510 (n + 1)

end A077510

/-! ## A077510.P11647836429197214334

`A181642(A076757(n+1)+1)`
-/

namespace A077510.P11647836429197214334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181642 (A076757 (n + 1) + 1).toNat

end

end A077510.P11647836429197214334

namespace A077510

/-- `A181642(A076757(n+1)+1)` -/
def P11647836429197214334.Spec : Prop :=
  ∀ n, P11647836429197214334.a n = A077510 (n + 1)

end A077510

/-! ## A077510.P15582263487028967181

`eq[1, A003415(A230980(n)+n)]`
-/

namespace A077510.P15582263487028967181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A230980 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077510.P15582263487028967181

namespace A077510

/-- `eq[1, A003415(A230980(n)+n)]` -/
def P15582263487028967181.Spec : Prop :=
  ∀ n, (P15582263487028967181.a n : ℤ) = A077510 (n + 1)

end A077510

/-! ## A077510.P13172675037623182010

`eq[1, A105700(A230980(n)+n)]`
-/

namespace A077510.P13172675037623182010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A230980 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077510.P13172675037623182010

namespace A077510

/-- `eq[1, A105700(A230980(n)+n)]` -/
def P13172675037623182010.Spec : Prop :=
  ∀ n, (P13172675037623182010.a n : ℤ) = A077510 (n + 1)

end A077510

/-!
# A077512: Largest n-digit square beginning with n.

The programs for A077512, the canonical program `A077512.P4999606685360311724` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077512 has offset 1).

The definition of A077512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077512.P4999606685360311724

`(ceil(sqrt((n+2)*10^(n+1-A055642(n+1))))-1)²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077512

/-- `(ceil(sqrt((n+2)*10^(n+1-A055642(n+1))))-1)²` -/
def P4999606685360311724.Spec : Prop :=
  ∀ n, P4999606685360311724.a n = A077512 (n + 1)

theorem P4999606685360311724.correct : P4999606685360311724.Spec := by
  intro n
  simp only [A077512, Nat.add_sub_cancel]

end A077512

/-! ## A077512.P1595011295509452105

`floor(sqrt(A077514(1+n)))²`
-/

namespace A077512.P1595011295509452105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A077514 (1 + n)) ^ 2

end

end A077512.P1595011295509452105

namespace A077512

/-- `floor(sqrt(A077514(1+n)))²` -/
def P1595011295509452105.Spec : Prop :=
  ∀ n, P1595011295509452105.a n = A077512 (n + 1)

end A077512

/-! ## A077512.P13010418637707351764

`A000290(floor(sqrt(A077507(n+1))))`
-/

namespace A077512.P13010418637707351764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.sqrt (A077507 (n + 1))).toNat

end

end A077512.P13010418637707351764

namespace A077512

/-- `A000290(floor(sqrt(A077507(n+1))))` -/
def P13010418637707351764.Spec : Prop :=
  ∀ n, P13010418637707351764.a n = A077512 (n + 1)

end A077512

/-! ## A077512.P8538329046653494931

`A000290(floor(sqrt(A077514(n+1))))`
-/

namespace A077512.P8538329046653494931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.sqrt (A077514 (n + 1))).toNat

end

end A077512.P8538329046653494931

namespace A077512

/-- `A000290(floor(sqrt(A077514(n+1))))` -/
def P8538329046653494931.Spec : Prop :=
  ∀ n, P8538329046653494931.a n = A077512 (n + 1)

end A077512

/-!
# A077513: Smallest n-digit squarefree number beginning with n.

The programs for A077513, there is no canonical definition to state claims against.
-/

/-! ## A077513.P3723274265145783022

`A165073(n)+record[A209644(n+1)]`
-/

namespace A077513.P3723274265145783022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165073 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077513.P3723274265145783022

/-! ## A077513.P10594839740967184237

`A279060(n)+record[A209644(n+1)]`
-/

namespace A077513.P10594839740967184237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077513.P10594839740967184237

/-! ## A077513.P8760843476832442445

`record[A368751(n+1)+A209644(n)]`
-/

namespace A077513.P8760843476832442445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368751 (n + 1) + A209644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077513.P8760843476832442445

/-! ## A077513.P15276782969814551749

`A216501(n+1)+A063013(2^n)`
-/

namespace A077513.P15276782969814551749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216501 (n + 1) + A063013 (2 ^ n)

end

end A077513.P15276782969814551749

/-! ## A077513.P4318660543610444106

`A217463(n+1)+A063013(2^n)`
-/

namespace A077513.P4318660543610444106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217463 (n + 1) + A063013 (2 ^ n)

end

end A077513.P4318660543610444106

/-!
# A077514: Largest n-digit squarefree number beginning with n.

The programs for A077514, there is no canonical definition to state claims against.
-/

/-! ## A077514.P4811052517146775490

`A153881(A000142(n)+2)+(n+2)*10^n`
-/

namespace A077514.P4811052517146775490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A000142 n + 2).toNat + ((n + 2) * 10 ^ n : ℤ)

end

end A077514.P4811052517146775490

/-! ## A077514.P8417281150338463274

`A153881(A154638(n)+2)+(n+2)*10^n`
-/

namespace A077514.P8417281150338463274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A154638 n + 2).toNat + ((n + 2) * 10 ^ n : ℤ)

end

end A077514.P8417281150338463274

/-! ## A077514.P3403059166333070461

`A070698(A166148(n+1))`
-/

namespace A077514.P3403059166333070461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070698 (A166148 (n + 1)).toNat

end

end A077514.P3403059166333070461

/-!
# A077517: a(1) = 1 and a(n+1) = smallest multiple of a(n) beginning in (n+1).

The programs for A077517, there is no canonical definition to state claims against.
-/

/-! ## A077517.P10602065437616599934

`a(n-1)*A077518(n)` with `a(0)=1`
-/

namespace A077517.P10602065437616599934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A077518 n

end

end A077517.P10602065437616599934

/-! ## A077517.P3458844782186610132

`∏[A077518(n+1)]/A077518(n+1)`
-/

namespace A077517.P3458844782186610132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077518 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A077518 (n + 1) : ℚ)

end

end A077517.P3458844782186610132

/-!
# A077518: a(n) = A077517(n+1)/A077517(n).

The programs for A077518, there is no canonical definition to state claims against.
-/

/-! ## A077518.P7749167260158193946

`ratio[A077517(n+1)]`
-/

namespace A077518.P7749167260158193946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077517 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077518.P7749167260158193946

/-! ## A077518.P867886088810765743

`A077517(n+2)/A077517(n+1)`
-/

namespace A077518.P867886088810765743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077517 (n + 2) : ℚ) / (A077517 (n + 1) : ℚ)

end

end A077518.P867886088810765743

/-!
# A077520: a(1) = 1, a(n) = smallest prime of the form k*a(n-1)+1 starting with n.

The programs for A077520, there is no canonical definition to state claims against.
-/

/-! ## A077520.P10456597494152438394

`A045931(n+2)+A007093(A319637(n))`
-/

namespace A077520.P10456597494152438394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 (n + 2) + A007093 (A319637 n).toNat

end

end A077520.P10456597494152438394

/-!
# A077523: Central digit of palindromic primes.

The programs for A077523, there is no canonical definition to state claims against.
-/

/-! ## A077523.P4748140605399933139

`A040997(A056728(n+1))`
-/

namespace A077523.P4748140605399933139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A056728 (n + 1)).toNat

end

end A077523.P4748140605399933139

/-! ## A077523.P8182584533370081988

`A040997(A056730(n+1))`
-/

namespace A077523.P8182584533370081988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A056730 (n + 1)).toNat

end

end A077523.P8182584533370081988

/-! ## A077523.P6721367421607819494

`A040997(A059758(n+1))`
-/

namespace A077523.P6721367421607819494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A059758 (n + 1)).toNat

end

end A077523.P6721367421607819494

/-! ## A077523.P3209968944054321158

`A040997(A077798(n+1))`
-/

namespace A077523.P3209968944054321158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A077798 (n + 1)).toNat

end

end A077523.P3209968944054321158

/-! ## A077523.P1963721707871295914

`A040997(A085112(n+1))`
-/

namespace A077523.P1963721707871295914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A085112 (n + 1)).toNat

end

end A077523.P1963721707871295914

/-!
# A077525: Last term of n-th row of A077526.

The programs for A077525, there is no canonical definition to state claims against.
-/

/-! ## A077525.P17925210449645559661

`A077526(∑[n+1])`
-/

namespace A077525.P17925210449645559661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077525.P17925210449645559661

/-! ## A077525.P10567905895529005164

`record[A077526(A038722(n+1))]`
-/

namespace A077525.P10567905895529005164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077526 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077525.P10567905895529005164

/-! ## A077525.P10902287979191050554

`record[A077526(A049777(n+1))]`
-/

namespace A077525.P10902287979191050554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077526 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077525.P10902287979191050554

/-! ## A077525.P9422775055956097237

`record[A077526(A066182(n+1))]`
-/

namespace A077525.P9422775055956097237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077526 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077525.P9422775055956097237

/-! ## A077525.P9156552175331409455

`record[A077526(A194918(n+1))]`
-/

namespace A077525.P9156552175331409455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077526 (A194918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077525.P9156552175331409455

/-!
# A077526: Triangle in which the n-th row contains n palindromes beginning with n.

The programs for A077526, there is no canonical definition to state claims against.
-/

/-! ## A077526.P15109020423184183604

`A083764(n+1)-A210717(A083776(n+1))`
-/

namespace A077526.P15109020423184183604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083764 (n + 1) - A210717 (A083776 (n + 1)).toNat

end

end A077526.P15109020423184183604

/-!
# A077528: a(n) = smallest nontrivial (>1) palindrome == 1 (mod n).

The programs for A077528, there is no canonical definition to state claims against.
-/

/-! ## A077528.P12416548250365870132

`A082743(n+2)`
-/

namespace A077528.P12416548250365870132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082743 (n + 2)

end

end A077528.P12416548250365870132

/-! ## A077528.P1255201485308986423

`(n+2)*A082744(n+2)+1`
-/

namespace A077528.P1255201485308986423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A082744 (n + 2) + 1

end

end A077528.P1255201485308986423

/-! ## A077528.P68163943687431280

`A083464(∑[n+1]+1)`
-/

namespace A077528.P68163943687431280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083464 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077528.P68163943687431280

/-! ## A077528.P9967173114936972010

`∑{e}[A020707(n), A082743(#)]`
-/

namespace A077528.P9967173114936972010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A082743 (Nat.factorization (f1 n).natAbs p)

end

end A077528.P9967173114936972010

/-! ## A077528.P5881065929403841586

`A083838(A183533(n+2))`
-/

namespace A077528.P5881065929403841586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083838 (A183533 (n + 2)).toNat

end

end A077528.P5881065929403841586

/-!
# A077529: Triangle in which the n-th row contains n palindromic multiples of n, or 0's if no such palindromes exist.

The programs for A077529, there is no canonical definition to state claims against.
-/

/-! ## A077529.P16751117861510069861

`A173646(A110749(n+1))`
-/

namespace A077529.P16751117861510069861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173646 (A110749 (n + 1)).toNat

end

end A077529.P16751117861510069861

/-! ## A077529.P2613727365180747008

`A214772(A270752(n+1))+A075362(n+1)`
-/

namespace A077529.P2613727365180747008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (A270752 (n + 1)).toNat + A075362 (n + 1)

end

end A077529.P2613727365180747008

/-! ## A077529.P241383739072895348

`A326456(A263627(n+1))+A075362(n+1)`
-/

namespace A077529.P241383739072895348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326456 (A263627 (n + 1)).toNat + A075362 (n + 1)

end

end A077529.P241383739072895348

/-!
# A077530: Final terms of rows of A077529.

The programs for A077530, there is no canonical definition to state claims against.
-/

/-! ## A077530.P8715715204146719520

`A077529(∑[n+1])`
-/

namespace A077530.P8715715204146719520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077529 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077530.P8715715204146719520

/-!
# A077531: Sums of rows of A077529.

The programs for A077531, there is no canonical definition to state claims against.
-/

/-! ## A077531.P16952855623061080707

`(1+n)*A077532(n+1)`
-/

namespace A077531.P16952855623061080707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A077532 (n + 1)

end

end A077531.P16952855623061080707

/-! ## A077531.P5521032384722153242

`A077532(n+1)*A199343(n)`
-/

namespace A077531.P5521032384722153242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077532 (n + 1) * A199343 n

end

end A077531.P5521032384722153242

/-! ## A077531.P10331776374379976187

`A077532(n+1)*A199344(n)`
-/

namespace A077531.P10331776374379976187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077532 (n + 1) * A199344 n

end

end A077531.P10331776374379976187

/-! ## A077531.P13693625188317314115

`A077532(n+1)/(n+1)^A008836(A142178(n+1))`
-/

namespace A077531.P13693625188317314115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077532 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A008836 (A142178 (n + 1)).toNat : ℤ)

end

end A077531.P13693625188317314115

/-!
# A077532: Average of terms in n-th row of A077529.

The programs for A077532, there is no canonical definition to state claims against.
-/

/-! ## A077532.P5411573997800890831

`A077531(n+1)/(n+1)`
-/

namespace A077532.P5411573997800890831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077531 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077532.P5411573997800890831

/-! ## A077532.P15513478062148216229

`A304800(A302606(n))%A051193(2*(n+2))`
-/

namespace A077532.P15513478062148216229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304800 (A302606 n).toNat) (A051193 (2 * (n + 2)))

end

end A077532.P15513478062148216229

/-!
# A077533: Multiples of 3 using only prime digits (2, 3, 5 and 7).

The programs for A077533, there is no canonical definition to state claims against.
-/

/-! ## A077533.P12786075501718040529

`A046034(eq[3, gcd(3, A046034(n+1))]+1)`
-/

namespace A077533.P12786075501718040529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A046034 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A077533.P12786075501718040529

/-! ## A077533.P15691423642312580667

`∩[A046034(n+1), 3*n]`
-/

namespace A077533.P15691423642312580667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A077533.P15691423642312580667

/-! ## A077533.P18321486230783017886

`∩[A008486(n), A046034(n+1)]`
-/

namespace A077533.P18321486230783017886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077533.P18321486230783017886

/-! ## A077533.P15420041540113761211

`∩[A008585(n), A046034(n+1)]`
-/

namespace A077533.P15420041540113761211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077533.P15420041540113761211

/-! ## A077533.P592822527681124492

`∩[A031193(n+1), A046034(n+1)]`
-/

namespace A077533.P592822527681124492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077533.P592822527681124492

/-! ## A077533.P11194950448776458128

`eq[A276729(n), A353327(n)]`
-/

namespace A077533.P11194950448776458128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077533.P11194950448776458128

/-! ## A077533.P3047506049375776193

`eq[log(A145644(n)), A276729(n)]`
-/

namespace A077533.P3047506049375776193
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A145644 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A077533.P3047506049375776193

/-! ## A077533.P13222308824313073215

`eq[tan(A080425(n)), A276729(n)]`
-/

namespace A077533.P13222308824313073215
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A080425 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A077533.P13222308824313073215

/-! ## A077533.P12916030556210944969

`filter[A046034(n+1), A079978(#)]`
-/

namespace A077533.P12916030556210944969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A077533.P12916030556210944969

/-! ## A077533.P1891915790824203243

`filter[A046034(n+1), A173857(#)]`
-/

namespace A077533.P1891915790824203243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A077533.P1891915790824203243

/-! ## A077533.P7349146402832142892

`filter[A046034(n+1), A329680(#)]`
-/

namespace A077533.P7349146402832142892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A077533.P7349146402832142892

/-! ## A077533.P10825280645268026426

`eq[2*A087509(n), A276729(n)]`
-/

namespace A077533.P10825280645268026426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077533.P10825280645268026426

/-! ## A077533.P2143939426048656394

`eq[A266578(n+1)², A276729(n)]`
-/

namespace A077533.P2143939426048656394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266578 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077533.P2143939426048656394

/-! ## A077533.P12219750815624306354

`eq[A022266(A087509(n)), A276729(n)]`
-/

namespace A077533.P12219750815624306354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 (A087509 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077533.P12219750815624306354

/-! ## A077533.P16359141990758104857

`eq[A087509(n), A276729(A087509(n)+n)]`
-/

namespace A077533.P16359141990758104857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A087509 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077533.P16359141990758104857

/-!
# A077534: Multiples of 4 using only prime digits (2, 3, 5 and 7).

The programs for A077534, there is no canonical definition to state claims against.
-/

/-! ## A077534.P13424984787955024425

`A046034(4*A004523(2*n+3)+1)`
-/

namespace A077534.P13424984787955024425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (4 * A004523 (2 * n + 3) + 1).toNat

end

end A077534.P13424984787955024425

/-! ## A077534.P10538837791181563641

`∩[A046034(n+1), A305074(n+1)]`
-/

namespace A077534.P10538837791181563641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P10538837791181563641

/-! ## A077534.P18046719487321670076

`∩[A061371(n+1), A305074(n+1)]`
-/

namespace A077534.P18046719487321670076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P18046719487321670076

/-! ## A077534.P3898518885668977868

`∩[A365472(n+1), A305074(n+1)]`
-/

namespace A077534.P3898518885668977868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P3898518885668977868

/-! ## A077534.P5191782737734246964

`filter[A046034(n+1), A121262(#)]`
-/

namespace A077534.P5191782737734246964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A077534.P5191782737734246964

/-! ## A077534.P7549605011768109558

`filter[A061371(n+1), A121262(#)]`
-/

namespace A077534.P7549605011768109558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A077534.P7549605011768109558

/-! ## A077534.P5500007516593879803

`∩[A046034(n+1), A008574(n)]`
-/

namespace A077534.P5500007516593879803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P5500007516593879803

/-! ## A077534.P2781242946911022011

`∩[A046034(n+1), A008586(n)]`
-/

namespace A077534.P2781242946911022011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P2781242946911022011

/-! ## A077534.P9965606685824332659

`∩[A061371(n+1), A008574(n)]`
-/

namespace A077534.P9965606685824332659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P9965606685824332659

/-! ## A077534.P4425491072569598713

`∩[A061371(n+1), A008586(n)]`
-/

namespace A077534.P4425491072569598713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P4425491072569598713

/-! ## A077534.P16918124960352944201

`∩[A046034(n+1), A173035(n)]`
-/

namespace A077534.P16918124960352944201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173035 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P16918124960352944201

/-! ## A077534.P7511668879666423587

`∩[A061371(n+1), A173035(n)]`
-/

namespace A077534.P7511668879666423587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173035 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P7511668879666423587

/-! ## A077534.P17371881222436139940

`∩[A061371(n+1), A265045(n)]`
-/

namespace A077534.P17371881222436139940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P17371881222436139940

/-! ## A077534.P15754842927002675907

`∩[A061371(n+1), A265046(n)]`
-/

namespace A077534.P15754842927002675907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P15754842927002675907

/-! ## A077534.P9921466849632853920

`∩[A046034(n+1), A312402(n)]`
-/

namespace A077534.P9921466849632853920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312402 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P9921466849632853920

/-! ## A077534.P1283320876764624335

`∩[A061371(n+1), A312402(n)]`
-/

namespace A077534.P1283320876764624335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312402 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P1283320876764624335

/-! ## A077534.P6032206933764748743

`∩[A061371(n+1), A336705(n)]`
-/

namespace A077534.P6032206933764748743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P6032206933764748743

/-! ## A077534.P16494301046037984354

`∩[A061371(n+1), A337120(n)]`
-/

namespace A077534.P16494301046037984354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337120 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P16494301046037984354

/-! ## A077534.P11053906410613675822

`∩[A046034(n+1), A102042(n+1)]`
-/

namespace A077534.P11053906410613675822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P11053906410613675822

/-! ## A077534.P2818053060442564248

`∩[A061371(n+1), A102040(n+1)]`
-/

namespace A077534.P2818053060442564248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077534.P2818053060442564248

/-!
# A077535: Multiples of 6 with only prime digits (2, 3, 5 and 7).

The programs for A077535, there is no canonical definition to state claims against.
-/

/-! ## A077535.P14704180327938527542

`∩[A077533(n+1)-3, A077533(n+1)]`
-/

namespace A077535.P14704180327938527542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077533 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077535.P14704180327938527542

/-! ## A077535.P10631569170655644684

`∩[6*n, A046034(n+1)]`
-/

namespace A077535.P10631569170655644684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077535.P10631569170655644684

/-! ## A077535.P2931551069303596894

`filter[A046034(n+1), A358755(#)]`
-/

namespace A077535.P2931551069303596894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358755 (f1 j).toNat = 1) n)

end

end A077535.P2931551069303596894

/-! ## A077535.P3618854337107261413

`filter[A061371(n+1), A358755(#)]`
-/

namespace A077535.P3618854337107261413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358755 (f1 j).toNat = 1) n)

end

end A077535.P3618854337107261413

/-! ## A077535.P14028531879187151869

`filter[A077533(n+1), A358755(#)]`
-/

namespace A077535.P14028531879187151869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358755 (f1 j).toNat = 1) n)

end

end A077535.P14028531879187151869

/-! ## A077535.P11952309698311679593

`filter[A077533(n+1), A374197(#)]`
-/

namespace A077535.P11952309698311679593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A077535.P11952309698311679593

/-! ## A077535.P4520883332221548221

`∩[A077533(n+1), A017293(n)]`
-/

namespace A077535.P4520883332221548221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077535.P4520883332221548221

/-! ## A077535.P14817517520708306748

`∩[A077533(n+1), A116727(n+1)]`
-/

namespace A077535.P14817517520708306748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077535.P14817517520708306748

/-! ## A077535.P7511132030226922408

`∩[A046034(n+1), A358757(n+1)]`
-/

namespace A077535.P7511132030226922408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077535.P7511132030226922408

/-! ## A077535.P13854296296308856354

`filter[A046034(n+1), A079979(#)]`
-/

namespace A077535.P13854296296308856354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A077535.P13854296296308856354

/-!
# A077536: Multiples of 7 using only prime digits (2, 3, 5 and 7).

The programs for A077536, there is no canonical definition to state claims against.
-/

/-! ## A077536.P14115074661704739310

`∩[A046034(n+1), 7*n]`
-/

namespace A077536.P14115074661704739310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A077536.P14115074661704739310

/-! ## A077536.P12740202751184503303

`∩[A008589(n), A046034(n+1)]`
-/

namespace A077536.P12740202751184503303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077536.P12740202751184503303

/-! ## A077536.P2963061271028743836

`∩[Δ[A024966(n)], A046034(n+1)]`
-/

namespace A077536.P2963061271028743836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A077536.P2963061271028743836

/-! ## A077536.P14125479282306148667

`eq[sin(A175629(n)), A276729(n)]`
-/

namespace A077536.P14125479282306148667
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A175629 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A077536.P14125479282306148667

/-! ## A077536.P1990031690928997181

`filter[A046034(n+1), A082784(#)]`
-/

namespace A077536.P1990031690928997181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A077536.P1990031690928997181

/-!
# A077537: Sum of next F(n) Fibonacci numbers, where F(n) = n-th Fibonacci number.

The programs for A077537, the canonical program `A077537.P17279999707788728323` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077537 has offset 0).

The definition of A077537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077537.P17279999707788728323

`A000045(A000045(n+2)+1)-A000045(A000045(n+1)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077537

/-- `A000045(A000045(n+2)+1)-A000045(A000045(n+1)+1)` -/
def P17279999707788728323.Spec : Prop :=
  ∀ n, P17279999707788728323.a n = A077537 n

theorem P17279999707788728323.correct : P17279999707788728323.Spec := by
  intro n
  simp only [A077537]

end A077537

/-! ## A077537.P3617869389597201450

`Δ[A005370(n)]`
-/

namespace A077537.P3617869389597201450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077537.P3617869389597201450

namespace A077537

/-- `Δ[A005370(n)]` -/
def P3617869389597201450.Spec : Prop :=
  ∀ n, P3617869389597201450.a n = A077537 n

end A077537

/-! ## A077537.P9204349973892496428

`Δ[A000045(A001611(n+1))]`
-/

namespace A077537.P9204349973892496428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077537.P9204349973892496428

namespace A077537

/-- `Δ[A000045(A001611(n+1))]` -/
def P9204349973892496428.Spec : Prop :=
  ∀ n, P9204349973892496428.a n = A077537 n

end A077537

/-! ## A077537.P8430166321538931521

`Δ[A000045(A185357(n)+1)]`
-/

namespace A077537.P8430166321538931521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A185357 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077537.P8430166321538931521

namespace A077537

/-- `Δ[A000045(A185357(n)+1)]` -/
def P8430166321538931521.Spec : Prop :=
  ∀ n, P8430166321538931521.a n = A077537 n

end A077537

/-! ## A077537.P15196242710646968497

`Δ[A212804(A157725(n+1))]`
-/

namespace A077537.P15196242710646968497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A157725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077537.P15196242710646968497

namespace A077537

/-- `Δ[A212804(A157725(n+1))]` -/
def P15196242710646968497.Spec : Prop :=
  ∀ n, P15196242710646968497.a n = A077537 n

end A077537

/-!
# A077538: First differences of triangular numbers with square pyramidal indices.

The programs for A077538, the canonical program `A077538.P16300824034386817894` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077538 has offset 0).

The definition of A077538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077538.P17893643556543217533

`ogf((1+8x+21x^2+10x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A077538.P17893643556543217533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 21, 10] [1, -6, 15, -20, 15, -6, 1] n

end

end A077538.P17893643556543217533

namespace A077538

/-- `ogf((1+8x+21x^2+10x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P17893643556543217533.Spec : Prop :=
  ∀ n, P17893643556543217533.a n = A077538 n

end A077538

/-! ## A077538.P16300824034386817894

`(n+1)²*(n+2)*(2*n²+2*n+3)/6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077538

/-- `(n+1)²*(n+2)*(2*n²+2*n+3)/6` -/
def P16300824034386817894.Spec : Prop :=
  ∀ n, P16300824034386817894.a n = (A077538 n : ℚ)

end A077538

/-! ## A077538.P10835301268181109530

`Δ[C(∑[n²]+1, 2)]`
-/

namespace A077538.P10835301268181109530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A077538.P10835301268181109530

namespace A077538

/-- `Δ[C(∑[n²]+1, 2)]` -/
def P10835301268181109530.Spec : Prop :=
  ∀ n, P10835301268181109530.a n = A077538 n

end A077538

/-! ## A077538.P1414355567601415669

`A052459(n+1)-∑[n²]`
-/

namespace A077538.P1414355567601415669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052459 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A077538.P1414355567601415669

namespace A077538

/-- `A052459(n+1)-∑[n²]` -/
def P1414355567601415669.Spec : Prop :=
  ∀ n, P1414355567601415669.a n = A077538 n

end A077538

/-! ## A077538.P4392460247735213604

`A000578(n+1)+A143945(n+1)-A006002(n)`
-/

namespace A077538.P4392460247735213604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (A143945 (n + 1) - A006002 n)

end

end A077538.P4392460247735213604

namespace A077538

/-- `A000578(n+1)+A143945(n+1)-A006002(n)` -/
def P4392460247735213604.Spec : Prop :=
  ∀ n, P4392460247735213604.a n = A077538 n

end A077538

/-! ## A077538.P7432020204195009025

`A002417(n+1)+A000292(n)*A000384(n+1)`
-/

namespace A077538.P7432020204195009025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) + A000292 n * A000384 (n + 1)

end

end A077538.P7432020204195009025

namespace A077538

/-- `A002417(n+1)+A000292(n)*A000384(n+1)` -/
def P7432020204195009025.Spec : Prop :=
  ∀ n, P7432020204195009025.a n = A077538 n

end A077538

/-! ## A077538.P1799200621150015799

`A000292(n+1)+A000292(n)*A005893(n+1)`
-/

namespace A077538.P1799200621150015799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + A000292 n * A005893 (n + 1)

end

end A077538.P1799200621150015799

namespace A077538

/-- `A000292(n+1)+A000292(n)*A005893(n+1)` -/
def P1799200621150015799.Spec : Prop :=
  ∀ n, P1799200621150015799.a n = A077538 n

end A077538

/-! ## A077538.P9239626389756483243

`Δ[A076767(n)]`
-/

namespace A077538.P9239626389756483243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077538.P9239626389756483243

namespace A077538

/-- `Δ[A076767(n)]` -/
def P9239626389756483243.Spec : Prop :=
  ∀ n, P9239626389756483243.a n = A077538 n

end A077538

/-! ## A077538.P7811308952943714260

`A076767(n+1)-A076767(n)`
-/

namespace A077538.P7811308952943714260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076767 (n + 1) - A076767 n

end

end A077538.P7811308952943714260

namespace A077538

/-- `A076767(n+1)-A076767(n)` -/
def P7811308952943714260.Spec : Prop :=
  ∀ n, P7811308952943714260.a n = A077538 n

end A077538

/-! ## A077538.P8322765541764529027

`A000330(n+1)+n*A071238(n+1)`
-/

namespace A077538.P8322765541764529027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (n : ℤ) * A071238 (n + 1)

end

end A077538.P8322765541764529027

namespace A077538

/-- `A000330(n+1)+n*A071238(n+1)` -/
def P8322765541764529027.Spec : Prop :=
  ∀ n, P8322765541764529027.a n = A077538 n

end A077538

/-! ## A077538.P9522928732438554718

`A000292(n+1)+A000292(n)*A271624(n+2)`
-/

namespace A077538.P9522928732438554718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + A000292 n * A271624 (n + 2)

end

end A077538.P9522928732438554718

namespace A077538

/-- `A000292(n+1)+A000292(n)*A271624(n+2)` -/
def P9522928732438554718.Spec : Prop :=
  ∀ n, P9522928732438554718.a n = A077538 n

end A077538

/-! ## A077538.P10724263390850878832

`A006002(n+1)+A143945(n+1)-A000217(n+1)`
-/

namespace A077538.P10724263390850878832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n + 1) + (A143945 (n + 1) - A000217 (n + 1))

end

end A077538.P10724263390850878832

namespace A077538

/-- `A006002(n+1)+A143945(n+1)-A000217(n+1)` -/
def P10724263390850878832.Spec : Prop :=
  ∀ n, P10724263390850878832.a n = A077538 n

end A077538

/-! ## A077538.P12316803381468176381

`A006918(2*n+1)+n*A005994(2*n)`
-/

namespace A077538.P12316803381468176381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (2 * n + 1) + (n : ℤ) * A005994 (2 * n)

end

end A077538.P12316803381468176381

namespace A077538

/-- `A006918(2*n+1)+n*A005994(2*n)` -/
def P12316803381468176381.Spec : Prop :=
  ∀ n, P12316803381468176381.a n = A077538 n

end A077538

/-!
# A077539: a(n) = floor(T(n+1)!*T(n-1)!/(T(n)!)^2), where T(n) = n(n+1)/2 = the n-th triangular number.

The programs for A077539, there is no canonical definition to state claims against.
-/

/-! ## A077539.P8085690331602444589

`floor(ratio[A057003(n+1)])`
-/

namespace A077539.P8085690331602444589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A077539.P8085690331602444589

/-! ## A077539.P9608875441120515382

`floor(A057003(n+2)/A057003(n+1))`
-/

namespace A077539.P9608875441120515382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057003 (n + 2) : ℚ) / (A057003 (n + 1) : ℚ)⌋

end

end A077539.P9608875441120515382

/-! ## A077539.P14162505552507876958

`floor(ratio[A000142(n+1)*A014068(n+1)])`
-/

namespace A077539.P14162505552507876958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A014068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A077539.P14162505552507876958

/-! ## A077539.P7839520797589808249

`floor(ratio[A062029(n+1)]/2)`
-/

namespace A077539.P7839520797589808249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2⌋

end

end A077539.P7839520797589808249

/-! ## A077539.P17270877708000267344

`A004526(floor(ratio[A062029(n+1)]))`
-/

namespace A077539.P17270877708000267344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A077539.P17270877708000267344

/-!
# A077542: Least number of terms required in the product (k+1)*(k+2)*... to make it a multiple of the product of next n numbers, where k = n*(n+1)/2.

The programs for A077542, the canonical program `A077542.P10484935026448224365` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077542 has offset 1).

The definition of A077542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077542.P10484935026448224365

`record[A175856(n+1)/A130321(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077542

/-- `record[A175856(n+1)/A130321(n)]` -/
def P10484935026448224365.Spec : Prop :=
  ∀ n, P10484935026448224365.a n = (A077542 (n + 1) : ℚ)

end A077542

/-! ## A077542.P17026369078016297970

`record[A175856(n+1)/A126279(n+1)]`
-/

namespace A077542.P17026369078016297970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175856 (n + 1) : ℚ) / (A126279 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077542.P17026369078016297970

namespace A077542

/-- `record[A175856(n+1)/A126279(n+1)]` -/
def P17026369078016297970.Spec : Prop :=
  ∀ n, P17026369078016297970.a n = (A077542 (n + 1) : ℚ)

end A077542

/-!
# A077543: Smallest n-digit composite palindrome.

The programs for A077543, there is no canonical definition to state claims against.
-/

/-! ## A077543.P15711537714293177189

`filter[A244411(n+2), A365495(#)]`
-/

namespace A077543.P15711537714293177189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244411 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365495 (f1 j).toNat = 1) n)

end

end A077543.P15711537714293177189

/-!
# A077544: Product of next n numbers + sum of next n numbers.

The programs for A077544, there is no canonical definition to state claims against.
-/

/-! ## A077544.P6168810602855067332

`A057003(n+1)+Δ[A002817(n)]`
-/

namespace A077544.P6168810602855067332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1) + (f1 (n + 1) - f1 n)

end

end A077544.P6168810602855067332

/-! ## A077544.P2972558791864232782

`A057003(n+1)+A006003(n+1)`
-/

namespace A077544.P2972558791864232782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1) + A006003 (n + 1)

end

end A077544.P2972558791864232782

/-! ## A077544.P9708454529575959692

`A057003(n+1)+∑[∑[A008486(n)]]`
-/

namespace A077544.P9708454529575959692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077544.P9708454529575959692

/-! ## A077544.P13933971614615441663

`Δ[A227364(A000217(n))+A002817(n)]`
-/

namespace A077544.P13933971614615441663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227364 (A000217 n).toNat + A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077544.P13933971614615441663

/-! ## A077544.P8982943420775898370

`A057003(n+1)+Δ[A000217(A000217(n))]`
-/

namespace A077544.P8982943420775898370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1) + (f1 (n + 1) - f1 n)

end

end A077544.P8982943420775898370

/-!
# A077545: Primes of the form floor(k*e).

The programs for A077545, the canonical program `A077545.P458666038156301015` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077545 has offset 1).

The definition of A077545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077545.P458666038156301015

`p?[floor(e*n)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077545

/-- `p?[floor(e*n)]` -/
def P458666038156301015.Spec : Prop :=
  ∀ n, P458666038156301015.a n = A077545 (n + 1)

theorem P458666038156301015.correct : P458666038156301015.Spec := by
  intro n
  simp only [A077545, Nat.add_sub_cancel]

end A077545

/-! ## A077545.P16369359096211432398

`A000040(A184855(n+1))`
-/

namespace A077545.P16369359096211432398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184855 (n + 1)).toNat

end

end A077545.P16369359096211432398

namespace A077545

/-- `A000040(A184855(n+1))` -/
def P16369359096211432398.Spec : Prop :=
  ∀ n, P16369359096211432398.a n = A077545 (n + 1)

end A077545

/-! ## A077545.P9601953696332387644

`record[A006530(floor(e*(n+1)))]`
-/

namespace A077545.P9601953696332387644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊Real.exp 1 * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077545.P9601953696332387644

namespace A077545

/-- `record[A006530(floor(e*(n+1)))]` -/
def P9601953696332387644.Spec : Prop :=
  ∀ n, P9601953696332387644.a n = A077545 (n + 1)

end A077545

/-! ## A077545.P16580108309979152027

`record[A020639(floor(e*(n+1)))]`
-/

namespace A077545.P16580108309979152027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊Real.exp 1 * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077545.P16580108309979152027

namespace A077545

/-- `record[A020639(floor(e*(n+1)))]` -/
def P16580108309979152027.Spec : Prop :=
  ∀ n, P16580108309979152027.a n = A077545 (n + 1)

end A077545

/-! ## A077545.P2156310651376578296

`A022843(A062409(n+1))`
-/

namespace A077545.P2156310651376578296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (A062409 (n + 1)).toNat

end

end A077545.P2156310651376578296

namespace A077545

/-- `A022843(A062409(n+1))` -/
def P2156310651376578296.Spec : Prop :=
  ∀ n, P2156310651376578296.a n = A077545 (n + 1)

end A077545

/-! ## A077545.P10083583237591353731

`filter[A022843(n+1), A010051(#)]`
-/

namespace A077545.P10083583237591353731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A077545.P10083583237591353731

namespace A077545

/-- `filter[A022843(n+1), A010051(#)]` -/
def P10083583237591353731.Spec : Prop :=
  ∀ n, P10083583237591353731.a n = A077545 (n + 1)

end A077545

/-! ## A077545.P2512148319258718002

`filter[A022843(n+1), A323152(#)]`
-/

namespace A077545.P2512148319258718002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A077545.P2512148319258718002

namespace A077545

/-- `filter[A022843(n+1), A323152(#)]` -/
def P2512148319258718002.Spec : Prop :=
  ∀ n, P2512148319258718002.a n = A077545 (n + 1)

end A077545

/-! ## A077545.P17849921067105747052

`filter[A022843(n+1), A323153(#)]`
-/

namespace A077545.P17849921067105747052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A077545.P17849921067105747052

namespace A077545

/-- `filter[A022843(n+1), A323153(#)]` -/
def P17849921067105747052.Spec : Prop :=
  ∀ n, P17849921067105747052.a n = A077545 (n + 1)

end A077545

/-! ## A077545.P13864014745997418515

`∩[A000040(n+1), A022843(n)]`
-/

namespace A077545.P13864014745997418515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P13864014745997418515

namespace A077545

/-- `∩[A000040(n+1), A022843(n)]` -/
def P13864014745997418515.Spec : Prop :=
  ∀ n, (P13864014745997418515.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P259346061800715495

`∩[A008578(n+1), A022843(n)]`
-/

namespace A077545.P259346061800715495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P259346061800715495

namespace A077545

/-- `∩[A008578(n+1), A022843(n)]` -/
def P259346061800715495.Spec : Prop :=
  ∀ n, (P259346061800715495.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P2724535351615927367

`∩[A033946(n+1), A022843(n)]`
-/

namespace A077545.P2724535351615927367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P2724535351615927367

namespace A077545

/-- `∩[A033946(n+1), A022843(n)]` -/
def P2724535351615927367.Spec : Prop :=
  ∀ n, (P2724535351615927367.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P11086797514969163685

`∩[A045344(n+1), A022843(n)]`
-/

namespace A077545.P11086797514969163685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P11086797514969163685

namespace A077545

/-- `∩[A045344(n+1), A022843(n)]` -/
def P11086797514969163685.Spec : Prop :=
  ∀ n, (P11086797514969163685.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P6613085468579510265

`∩[A046022(n+1), A022843(n)]`
-/

namespace A077545.P6613085468579510265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P6613085468579510265

namespace A077545

/-- `∩[A046022(n+1), A022843(n)]` -/
def P6613085468579510265.Spec : Prop :=
  ∀ n, (P6613085468579510265.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P7778597909472173804

`∩[A051948(n+1), A022843(n)]`
-/

namespace A077545.P7778597909472173804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P7778597909472173804

namespace A077545

/-- `∩[A051948(n+1), A022843(n)]` -/
def P7778597909472173804.Spec : Prop :=
  ∀ n, (P7778597909472173804.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P12742767584100246900

`∩[A053813(n+1), A022843(n)]`
-/

namespace A077545.P12742767584100246900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P12742767584100246900

namespace A077545

/-- `∩[A053813(n+1), A022843(n)]` -/
def P12742767584100246900.Spec : Prop :=
  ∀ n, (P12742767584100246900.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P15251163556961352309

`∩[A062972(n+1), A022843(n)]`
-/

namespace A077545.P15251163556961352309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P15251163556961352309

namespace A077545

/-- `∩[A062972(n+1), A022843(n)]` -/
def P15251163556961352309.Spec : Prop :=
  ∀ n, (P15251163556961352309.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P17766228618842380303

`∩[A067126(n+1), A022843(n)]`
-/

namespace A077545.P17766228618842380303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P17766228618842380303

namespace A077545

/-- `∩[A067126(n+1), A022843(n)]` -/
def P17766228618842380303.Spec : Prop :=
  ∀ n, (P17766228618842380303.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P4036481319559427114

`∩[A022843(n), A106118(n+1)]`
-/

namespace A077545.P4036481319559427114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P4036481319559427114

namespace A077545

/-- `∩[A022843(n), A106118(n+1)]` -/
def P4036481319559427114.Spec : Prop :=
  ∀ n, (P4036481319559427114.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P15967634057518808012

`∩[A022843(n), A116974(n+1)]`
-/

namespace A077545.P15967634057518808012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P15967634057518808012

namespace A077545

/-- `∩[A022843(n), A116974(n+1)]` -/
def P15967634057518808012.Spec : Prop :=
  ∀ n, (P15967634057518808012.a n : ℤ) = A077545 (n + 1)

end A077545

/-! ## A077545.P9038654154746959460

`∩[A022843(n), A175787(n+1)]`
-/

namespace A077545.P9038654154746959460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077545.P9038654154746959460

namespace A077545

/-- `∩[A022843(n), A175787(n+1)]` -/
def P9038654154746959460.Spec : Prop :=
  ∀ n, (P9038654154746959460.a n : ℤ) = A077545 (n + 1)

end A077545

/-!
# A077546: Primes of the form floor(n*Pi).

The programs for A077546, the canonical program `A077546.P14626849310822666434` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077546 has offset 1).

The definition of A077546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077546.P14626849310822666434

`p?[floor(π*n)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077546

/-- `p?[floor(π*n)]` -/
def P14626849310822666434.Spec : Prop :=
  ∀ n, P14626849310822666434.a n = A077546 (n + 1)

theorem P14626849310822666434.correct : P14626849310822666434.Spec := by
  intro n
  simp only [A077546, Nat.add_sub_cancel]

end A077546

/-! ## A077546.P6509383552177925033

`or(1, p?[A022844(n)])`
-/

namespace A077546.P6509383552177925033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A077546.P6509383552177925033

namespace A077546

/-- `or(1, p?[A022844(n)])` -/
def P6509383552177925033.Spec : Prop :=
  ∀ n, P6509383552177925033.a n = A077546 (n + 1)

end A077546

/-! ## A077546.P10988185148074813878

`or(1, p?[A121381(n)-1])`
-/

namespace A077546.P10988185148074813878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A077546.P10988185148074813878

namespace A077546

/-- `or(1, p?[A121381(n)-1])` -/
def P10988185148074813878.Spec : Prop :=
  ∀ n, P10988185148074813878.a n = A077546 (n + 1)

end A077546

/-! ## A077546.P10977354127211283694

`A022844(A062408(n))`
-/

namespace A077546.P10977354127211283694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (A062408 n).toNat

end

end A077546.P10977354127211283694

namespace A077546

/-- `A022844(A062408(n))` -/
def P10977354127211283694.Spec : Prop :=
  ∀ n, P10977354127211283694.a n = A077546 (n + 1)

end A077546

/-! ## A077546.P10836910281759165028

`A000265(p?[A022844(n)])`
-/

namespace A077546.P10836910281759165028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A077546.P10836910281759165028

namespace A077546

/-- `A000265(p?[A022844(n)])` -/
def P10836910281759165028.Spec : Prop :=
  ∀ n, P10836910281759165028.a n = A077546 (n + 1)

end A077546

/-! ## A077546.P13812764522082381401

`filter[A022844(n+1), A010051(#)]`
-/

namespace A077546.P13812764522082381401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A077546.P13812764522082381401

namespace A077546

/-- `filter[A022844(n+1), A010051(#)]` -/
def P13812764522082381401.Spec : Prop :=
  ∀ n, P13812764522082381401.a n = A077546 (n + 1)

end A077546

/-! ## A077546.P14767861729229812674

`∩[A000040(n+1), A022844(n)]`
-/

namespace A077546.P14767861729229812674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P14767861729229812674

namespace A077546

/-- `∩[A000040(n+1), A022844(n)]` -/
def P14767861729229812674.Spec : Prop :=
  ∀ n, (P14767861729229812674.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P13339165652842887161

`∩[A004139(n+1), A022844(n)]`
-/

namespace A077546.P13339165652842887161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P13339165652842887161

namespace A077546

/-- `∩[A004139(n+1), A022844(n)]` -/
def P13339165652842887161.Spec : Prop :=
  ∀ n, (P13339165652842887161.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P18008039907106800374

`∩[A006005(n+1), A022844(n)]`
-/

namespace A077546.P18008039907106800374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P18008039907106800374

namespace A077546

/-- `∩[A006005(n+1), A022844(n)]` -/
def P18008039907106800374.Spec : Prop :=
  ∀ n, (P18008039907106800374.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P16127816407078216572

`∩[A008578(n+1), A022844(n)]`
-/

namespace A077546.P16127816407078216572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P16127816407078216572

namespace A077546

/-- `∩[A008578(n+1), A022844(n)]` -/
def P16127816407078216572.Spec : Prop :=
  ∀ n, (P16127816407078216572.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P14794098055599360995

`∩[A045319(n+1), A022844(n)]`
-/

namespace A077546.P14794098055599360995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P14794098055599360995

namespace A077546

/-- `∩[A045319(n+1), A022844(n)]` -/
def P14794098055599360995.Spec : Prop :=
  ∀ n, (P14794098055599360995.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P17743028082609452285

`∩[A046022(n+1), A022844(n)]`
-/

namespace A077546.P17743028082609452285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P17743028082609452285

namespace A077546

/-- `∩[A046022(n+1), A022844(n)]` -/
def P17743028082609452285.Spec : Prop :=
  ∀ n, (P17743028082609452285.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P12865930083169206179

`∩[A065091(n+1), A022844(n)]`
-/

namespace A077546.P12865930083169206179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P12865930083169206179

namespace A077546

/-- `∩[A065091(n+1), A022844(n)]` -/
def P12865930083169206179.Spec : Prop :=
  ∀ n, (P12865930083169206179.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P13801390217232353409

`∩[A065396(n+1), A022844(n)]`
-/

namespace A077546.P13801390217232353409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P13801390217232353409

namespace A077546

/-- `∩[A065396(n+1), A022844(n)]` -/
def P13801390217232353409.Spec : Prop :=
  ∀ n, (P13801390217232353409.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P6927161698137599062

`∩[A106118(n+1), A022844(n)]`
-/

namespace A077546.P6927161698137599062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P6927161698137599062

namespace A077546

/-- `∩[A106118(n+1), A022844(n)]` -/
def P6927161698137599062.Spec : Prop :=
  ∀ n, (P6927161698137599062.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P13390248899621164523

`∩[A175787(n+1), A022844(n)]`
-/

namespace A077546.P13390248899621164523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P13390248899621164523

namespace A077546

/-- `∩[A175787(n+1), A022844(n)]` -/
def P13390248899621164523.Spec : Prop :=
  ∀ n, (P13390248899621164523.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P4251788108351314180

`∩[A227231(n+1), A022844(n)]`
-/

namespace A077546.P4251788108351314180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P4251788108351314180

namespace A077546

/-- `∩[A227231(n+1), A022844(n)]` -/
def P4251788108351314180.Spec : Prop :=
  ∀ n, (P4251788108351314180.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P7078014813859737017

`∩[A326715(n+1), A022844(n)]`
-/

namespace A077546.P7078014813859737017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077546.P7078014813859737017

namespace A077546

/-- `∩[A326715(n+1), A022844(n)]` -/
def P7078014813859737017.Spec : Prop :=
  ∀ n, (P7078014813859737017.a n : ℤ) = A077546 (n + 1)

end A077546

/-! ## A077546.P2337210701233682747

`p?[A022844(n)]%A184969(3*n+5)`
-/

namespace A077546.P2337210701233682747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A184969 (3 * n + 5))

end

end A077546.P2337210701233682747

namespace A077546

/-- `p?[A022844(n)]%A184969(3*n+5)` -/
def P2337210701233682747.Spec : Prop :=
  ∀ n, P2337210701233682747.a n = A077546 (n + 1)

end A077546

/-! ## A077546.P5683851108837716992

`filter[A022844(n+1), A080339(#)]`
-/

namespace A077546.P5683851108837716992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A077546.P5683851108837716992

namespace A077546

/-- `filter[A022844(n+1), A080339(#)]` -/
def P5683851108837716992.Spec : Prop :=
  ∀ n, P5683851108837716992.a n = A077546 (n + 1)

end A077546

/-!
# A077550: Number of nonisomorphic ways a river (or undirected line) can cross two perpendicular roads n times (orbits of A076875 under symmetry group of order 8).

The programs for A077550, there is no canonical definition to state claims against.
-/

/-! ## A077550.P2383649833022553792

`ogf((1-x-x^2-2x^3+x^4+3x^6+2x^7)/(1-2x-x^2))`
-/

namespace A077550.P2383649833022553792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, -2, 1, 0, 3, 2] [1, -2, -1] n

end

end A077550.P2383649833022553792

/-! ## A077550.P10846451924783377411

`(A111955(n)+2-n)/2`
-/

namespace A077550.P10846451924783377411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111955 n + 2 - (n : ℤ) : ℚ) / 2

end

end A077550.P10846451924783377411

/-! ## A077550.P14181061558323344324

`∑[A098407(abs(1-n))-n%2]`
-/

namespace A077550.P14181061558323344324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098407 |1 - (n : ℤ)|.toNat - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077550.P14181061558323344324

/-! ## A077550.P16614651502144788701

`round(((n+6)²+n)/70)+floor(sqrt(A089408(3*n)))-1`
-/

namespace A077550.P16614651502144788701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 6) ^ 2 + n : ℚ) / 70) + (Int.sqrt (A089408 (3 * n)) - 1)

end

end A077550.P16614651502144788701

/-!
# A077551: Meandric numbers for a river (or directed line) crossing two perpendicular roads at n points, beginning in the (-,-) quadrant, crossing x axis first and ending in any quadrant.

The programs for A077551, there is no canonical definition to state claims against.
-/

/-! ## A077551.P12424160597299876473

`(A076907(n)/2)%(3^n)`
-/

namespace A077551.P12424160597299876473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A076907 n : ℚ) / 2)) (3 ^ n : ℤ)

end

end A077551.P12424160597299876473

/-! ## A077551.P12096399772010039938

`A076907(n)/2-A000007(n)`
-/

namespace A077551.P12096399772010039938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076907 n : ℚ) / 2 - (A000007 n : ℚ)

end

end A077551.P12096399772010039938

/-! ## A077551.P1565414229845480232

`(A076907(n)-A000038(n))/2`
-/

namespace A077551.P1565414229845480232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076907 n - A000038 n : ℚ) / 2

end

end A077551.P1565414229845480232

/-! ## A077551.P5853007401079833248

`A057427(n)/2*A076907(n)`
-/

namespace A077551.P5853007401079833248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) / 2 * (A076907 n : ℚ)

end

end A077551.P5853007401079833248

/-! ## A077551.P1398075130865157527

`A076907(n)%A002457(n)/2`
-/

namespace A077551.P1398075130865157527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A076907 n) (A002457 n) : ℚ) / 2

end

end A077551.P1398075130865157527

/-!
# A077552: Consider the following triangle in which the n-th row contains n distinct numbers whose product is the smallest and has the least possible number of divisors. 1 is a member of only the first row. Sequence contains the final term of the rows (the leading diagonal).

The programs for A077552, the canonical program `A077552.P13660648594338197125` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077552 has offset 0).

The definition of A077552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077552.P15047064369683348505

`∑[char[2]+2^n]`
-/

namespace A077552.P15047064369683348505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077552.P15047064369683348505

namespace A077552

/-- `∑[char[2]+2^n]` -/
def P15047064369683348505.Spec : Prop :=
  ∀ n, (P15047064369683348505.a n : ℤ) = A077552 n

end A077552

/-! ## A077552.P9358098196160973362

`ogf((1+x+2x^2)/(1-2x))`
-/

namespace A077552.P9358098196160973362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -2] n

end

end A077552.P9358098196160973362

namespace A077552

/-- `ogf((1+x+2x^2)/(1-2x))` -/
def P9358098196160973362.Spec : Prop :=
  ∀ n, P9358098196160973362.a n = A077552 n

end A077552

/-! ## A077552.P9813568691494318244

`∑[2^n]+floor(atan(n))`
-/

namespace A077552.P9813568691494318244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊Real.arctan (n : ℝ)⌋

end

end A077552.P9813568691494318244

namespace A077552

/-- `∑[2^n]+floor(atan(n))` -/
def P9813568691494318244.Spec : Prop :=
  ∀ n, P9813568691494318244.a n = A077552 n

end A077552

/-! ## A077552.P13660648594338197125

`2*a(n-1)` with `a(0)=1, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077552

/-- `2*a(n-1)` -/
def P13660648594338197125.Spec : Prop :=
  ∀ n, (P13660648594338197125.a n : ℤ) = A077552 n

theorem P13660648594338197125.correct : P13660648594338197125.Spec := by
  intro n
  simp only [A077552]

end A077552

/-! ## A077552.P16476415893680930560

`2^(n+1)-C(n, n²)`
-/

namespace A077552.P16476415893680930560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (Nat.choose n (n ^ 2) : ℤ)

end

end A077552.P16476415893680930560

namespace A077552

/-- `2^(n+1)-C(n, n²)` -/
def P16476415893680930560.Spec : Prop :=
  ∀ n, P16476415893680930560.a n = A077552 n

end A077552

/-! ## A077552.P6381918908474670274

`a(n-1)+2^n` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A077552.P6381918908474670274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  a (n - 1) + 2 ^ n

end

end A077552.P6381918908474670274

namespace A077552

/-- `a(n-1)+2^n` -/
def P6381918908474670274.Spec : Prop :=
  ∀ n, (P6381918908474670274.a n : ℤ) = A077552 n

end A077552

/-! ## A077552.P1208519683472497314

`abs(2^(n+1)-C(3, n+2))`
-/

namespace A077552.P1208519683472497314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ (n + 1) : ℤ) - (Nat.choose 3 (n + 2) : ℤ)|

end

end A077552.P1208519683472497314

namespace A077552

/-- `abs(2^(n+1)-C(3, n+2))` -/
def P1208519683472497314.Spec : Prop :=
  ∀ n, P1208519683472497314.a n = A077552 n

end A077552

/-! ## A077552.P9211797937202367921

`sqrt(4-C(3, n+2))^(n+1)`
-/

namespace A077552.P9211797937202367921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (4 - (Nat.choose 3 (n + 2) : ℤ) : ℝ) ^ (n + 1)

end

end A077552.P9211797937202367921

namespace A077552

/-- `sqrt(4-C(3, n+2))^(n+1)` -/
def P9211797937202367921.Spec : Prop :=
  ∀ n, P9211797937202367921.a n = (A077552 n : ℝ)

end A077552

/-! ## A077552.P12323267506920184585

`floor(a(n-1)+floor(a(n-1)))` with `a(0)=1, a(1)=3, a(2)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A077552.P12323267506920184585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  a (n - 1) + a (n - 1)

end

end A077552.P12323267506920184585

namespace A077552

/-- `floor(a(n-1)+floor(a(n-1)))` -/
def P12323267506920184585.Spec : Prop :=
  ∀ n, (P12323267506920184585.a n : ℤ) = A077552 n

theorem P12323267506920184585.correct : P12323267506920184585.Spec := by
  intro n
  simp only [A077552, Nat.add_sub_cancel, A077552.P12323267506920184585.a, A077552.P13660648594338197125.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A077552

/-! ## A077552.P759952419885903090

`A088039(n+1)-1`
-/

namespace A077552.P759952419885903090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088039 (n + 1) - 1

end

end A077552.P759952419885903090

namespace A077552

/-- `A088039(n+1)-1` -/
def P759952419885903090.Spec : Prop :=
  ∀ n, P759952419885903090.a n = A077552 n

end A077552

/-! ## A077552.P4966258599244073454

`sqrt(A113311(n))^(n+1)`
-/

namespace A077552.P4966258599244073454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A113311 n : ℝ) ^ (n + 1)

end

end A077552.P4966258599244073454

namespace A077552

/-- `sqrt(A113311(n))^(n+1)` -/
def P4966258599244073454.Spec : Prop :=
  ∀ n, P4966258599244073454.a n = (A077552 n : ℝ)

end A077552

/-! ## A077552.P14429781385423046776

`A258935(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A077552.P14429781385423046776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A258935 n + a (n - 1)

end

end A077552.P14429781385423046776

namespace A077552

/-- `A258935(n)+a(n-1)` -/
def P14429781385423046776.Spec : Prop :=
  ∀ n, P14429781385423046776.a n = A077552 n

end A077552

/-! ## A077552.P1701569863625045932

`2^(n+1)-A019590(n+1)`
-/

namespace A077552.P1701569863625045932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A019590 (n + 1)

end

end A077552.P1701569863625045932

namespace A077552

/-- `2^(n+1)-A019590(n+1)` -/
def P1701569863625045932.Spec : Prop :=
  ∀ n, P1701569863625045932.a n = A077552 n

end A077552

/-! ## A077552.P17187062773257829278

`2^(n+1)-A130716(n+1)`
-/

namespace A077552.P17187062773257829278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A130716 (n + 1)

end

end A077552.P17187062773257829278

namespace A077552

/-- `2^(n+1)-A130716(n+1)` -/
def P17187062773257829278.Spec : Prop :=
  ∀ n, P17187062773257829278.a n = A077552 n

end A077552

/-! ## A077552.P10072629007574873616

`A057048(A130773(n))`
-/

namespace A077552.P10072629007574873616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (A130773 n).toNat

end

end A077552.P10072629007574873616

namespace A077552

/-- `A057048(A130773(n))` -/
def P10072629007574873616.Spec : Prop :=
  ∀ n, P10072629007574873616.a n = A077552 n

end A077552

/-! ## A077552.P1497532146635397750

`A018048(A336705(n+1))`
-/

namespace A077552.P1497532146635397750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (A336705 (n + 1)).toNat

end

end A077552.P1497532146635397750

namespace A077552

/-- `A018048(A336705(n+1))` -/
def P1497532146635397750.Spec : Prop :=
  ∀ n, P1497532146635397750.a n = A077552 n

end A077552

/-! ## A077552.P3918044731216724805

`A135318(A267873(n+1))`
-/

namespace A077552.P3918044731216724805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A267873 (n + 1)).toNat

end

end A077552.P3918044731216724805

namespace A077552

/-- `A135318(A267873(n+1))` -/
def P3918044731216724805.Spec : Prop :=
  ∀ n, P3918044731216724805.a n = A077552 n

end A077552

/-! ## A077552.P8457154808386886519

`A127904(n)+A083329(n)`
-/

namespace A077552.P8457154808386886519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 n + A083329 n

end

end A077552.P8457154808386886519

namespace A077552

/-- `A127904(n)+A083329(n)` -/
def P8457154808386886519.Spec : Prop :=
  ∀ n, P8457154808386886519.a n = A077552 n

end A077552

/-! ## A077552.P17532887781962553220

`A130130(n)+A095121(n)`
-/

namespace A077552.P17532887781962553220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A095121 n

end

end A077552.P17532887781962553220

namespace A077552

/-- `A130130(n)+A095121(n)` -/
def P17532887781962553220.Spec : Prop :=
  ∀ n, P17532887781962553220.a n = A077552 n

end A077552

/-! ## A077552.P10221071453454933567

`A174296(n)+A101622(n)`
-/

namespace A077552.P10221071453454933567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 n + A101622 n

end

end A077552.P10221071453454933567

namespace A077552

/-- `A174296(n)+A101622(n)` -/
def P10221071453454933567.Spec : Prop :=
  ∀ n, P10221071453454933567.a n = A077552 n

end A077552

/-!
# A077553: Triangle in which the n-th row contains n distinct composite numbers with the least product and has least number of prime divisors. No member of a row is a multiple of another member of the row.

The programs for A077553, there is no canonical definition to state claims against.
-/

/-! ## A077553.P10600297636689207489

`A077554(A002262(n))%A133974(n+1)`
-/

namespace A077553.P10600297636689207489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077554 (A002262 n).toNat) (A133974 (n + 1))

end

end A077553.P10600297636689207489

/-! ## A077553.P12545653545288884565

`A087112(A002260(n+1))%A133974(n+1)`
-/

namespace A077553.P12545653545288884565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087112 (A002260 (n + 1)).toNat) (A133974 (n + 1))

end

end A077553.P12545653545288884565

/-! ## A077553.P5316091915371144395

`A087112((log2(A059268(n))+1)%A186431(n+4))`
-/

namespace A077553.P5316091915371144395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)) (A186431 (n + 4))).toNat

end

end A077553.P5316091915371144395

/-! ## A077553.P18066500655833643573

`A087112(A002260(n+1)%A014545(n+5))`
-/

namespace A077553.P18066500655833643573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (Int.tmod (A002260 (n + 1)) (A014545 (n + 5))).toNat

end

end A077553.P18066500655833643573

/-! ## A077553.P15903310808164041514

`A084662((col(n)+1)%A351474(3*n+2))`
-/

namespace A077553.P15903310808164041514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (Int.tmod (SequenceMachineLib.triCol n + 1 : ℤ) (A351474 (3 * n + 2))).toNat

end

end A077553.P15903310808164041514

/-!
# A077554: Final terms of rows of A077553.

The programs for A077554, there is no canonical definition to state claims against.
-/

/-! ## A077554.P11823133228681755001

`A077553(∑[n+1])`
-/

namespace A077554.P11823133228681755001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077554.P11823133228681755001

/-!
# A077555: Product of terms of n-th row of A077553.

The programs for A077555, there is no canonical definition to state claims against.
-/

/-! ## A077555.P7666816503362053997

`∏[eq[n, A090086(5*n+1)]]`
-/

namespace A077555.P7666816503362053997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090086 (5 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A077555.P7666816503362053997

/-! ## A077555.P1047239732627197375

`∏[eq[2, A000010(A327642(n))]]`
-/

namespace A077555.P1047239732627197375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A327642 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A077555.P1047239732627197375

/-!
# A077556: Meandric numbers for an undirected line crossing two perpendicular roads at n points, beginning in the (-,-) quadrant, crossing x axis first and ending in any quadrant.

The programs for A077556, there is no canonical definition to state claims against.
-/

/-! ## A077556.P8622806207848188977

`A060464(A229188(n))+n`
-/

namespace A077556.P8622806207848188977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A229188 n).toNat + (n : ℤ)

end

end A077556.P8622806207848188977

/-! ## A077556.P3930479937170215056

`A363912(n)+A324368(n)`
-/

namespace A077556.P3930479937170215056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363912 n + A324368 n

end

end A077556.P3930479937170215056

/-! ## A077556.P1025902520844913391

`A049312(n)-A344604(n)`
-/

namespace A077556.P1025902520844913391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049312 n - A344604 n

end

end A077556.P1025902520844913391

/-! ## A077556.P12768543516709912610

`xor(A167928(n), A363912(n))`
-/

namespace A077556.P12768543516709912610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A167928 n) (A363912 n)

end

end A077556.P12768543516709912610

/-!
# A077557: a(1)=1, a(n+1) > a(n) and differs by at most one digit.

The programs for A077557, there is no canonical definition to state claims against.
-/

/-! ## A077557.P16610629687039095540

`record[A004185(n)]+10^A037904(A010785(n)+1)`
-/

namespace A077557.P16610629687039095540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (10 : ℚ) ^ (A037904 (A010785 n + 1).toNat : ℤ)

end

end A077557.P16610629687039095540

/-! ## A077557.P14348990759271655700

`A009994(n+1)+10^A037904(A010785(n)+1)`
-/

namespace A077557.P14348990759271655700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009994 (n + 1) : ℚ) + (10 : ℚ) ^ (A037904 (A010785 n + 1).toNat : ℤ)

end

end A077557.P14348990759271655700

/-! ## A077557.P2703148755322480810

`lt[A080740(n), A360472(n+1)²]`
-/

namespace A077557.P2703148755322480810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080740 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360472 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077557.P2703148755322480810

/-! ## A077557.P4832229023257631612

`lt[A326080(n), A327710(A360472(n+1))]`
-/

namespace A077557.P4832229023257631612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327710 (A360472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077557.P4832229023257631612

/-! ## A077557.P11699349428504609521

`lt[A325472(n+1), A007656(A360472(n+1))]`
-/

namespace A077557.P11699349428504609521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007656 (A360472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077557.P11699349428504609521

/-!
# A077559: Final terms of rows of A077558.

The programs for A077559, there is no canonical definition to state claims against.
-/

/-! ## A077559.P8557690081883858384

`A077558(∑[n+1])`
-/

namespace A077559.P8557690081883858384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077558 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077559.P8557690081883858384

/-! ## A077559.P16002406982719975368

`A028310(A077558(record[∑[char[∑[n]]]²-n]))`
-/

namespace A077559.P16002406982719975368
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A077559.P16002406982719975368

/-! ## A077559.P15232906345548820651

`A077558(A000217(n+1))+A000007(2*n+1)`
-/

namespace A077559.P15232906345548820651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077558 (A000217 (n + 1)).toNat + A000007 (2 * n + 1)

end

end A077559.P15232906345548820651

/-! ## A077559.P14199994181600761101

`A077558(A000217(n+1))+A056594(2*n+3)`
-/

namespace A077559.P14199994181600761101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077558 (A000217 (n + 1)).toNat + A056594 (2 * n + 3)

end

end A077559.P14199994181600761101

/-!
# A077560: Second smallest integer of prime signature corresponding to that of A025487.

The programs for A077560, there is no canonical definition to state claims against.
-/

/-! ## A077560.P415024992482936870

`A081761(A025487(n+2))`
-/

namespace A077560.P415024992482936870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081761 (A025487 (n + 2)).toNat

end

end A077560.P415024992482936870

/-! ## A077560.P11528596621731049764

`A081761(record[A046523(n+2)])`
-/

namespace A077560.P11528596621731049764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081761 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077560.P11528596621731049764

/-! ## A077560.P2317705226067320862

`A084398(record[A046523(n+2)])`
-/

namespace A077560.P2317705226067320862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084398 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077560.P2317705226067320862

/-! ## A077560.P5842956360696091970

`A084398(lcm(2, A025487(n+2)))`
-/

namespace A077560.P5842956360696091970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084398 (Int.lcm 2 (A025487 (n + 2)))

end

end A077560.P5842956360696091970

/-! ## A077560.P2267182867999432722

`A081761(record[A089247(A071364(2*(n+1)))])`
-/

namespace A077560.P2267182867999432722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081761 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077560.P2267182867999432722

/-! ## A077560.P16103379340099572358

`A084398(A025487(n+1)+Δ[A025487(n+1)])`
-/

namespace A077560.P16103379340099572358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084398 (A025487 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A077560.P16103379340099572358

/-!
# A077561: Indices of terms of A025487 which divide the terms. Numbers k such that A025487(k) is a multiple of k.

The programs for A077561, there is no canonical definition to state claims against.
-/

/-! ## A077561.P13784514700144360038

`record[gcd(n+1, A025487(n+1))]`
-/

namespace A077561.P13784514700144360038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025487 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077561.P13784514700144360038

/-! ## A077561.P9003586639870554135

`record[gcd(A025487(n+1), A131738(n))]`
-/

namespace A077561.P9003586639870554135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025487 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077561.P9003586639870554135

/-! ## A077561.P5038922972153612304

`record[gcd(A329899(n+1), A329904(n+1))]`
-/

namespace A077561.P5038922972153612304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329899 (n + 1)) (A329904 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077561.P5038922972153612304

/-! ## A077561.P17612307737215057246

`record[gcd(2*n+1-n, A051466(A329898(n+1)))]`
-/

namespace A077561.P17612307737215057246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A051466 (A329898 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077561.P17612307737215057246

/-! ## A077561.P15030873518816214589

`record[(n+1)/A000210(A025487(n+1)%(n+1)+1)]`
-/

namespace A077561.P15030873518816214589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000210 (Int.tmod (A025487 (n + 1)) (n + 1 : ℤ) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077561.P15030873518816214589

/-! ## A077561.P8388799193691561506

`record[gcd(41*(n+1), A055932(A331119(n+1)))]`
-/

namespace A077561.P8388799193691561506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (41 * (n + 1) : ℤ) (A055932 (A331119 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077561.P8388799193691561506

/-!
# A077562: Terms of A025487 which are a multiple of their indices.

The programs for A077562, there is no canonical definition to state claims against.
-/

/-! ## A077562.P7246902745911889484

`A025487(A077561(n+1))`
-/

namespace A077562.P7246902745911889484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A077561 (n + 1)).toNat

end

end A077562.P7246902745911889484

/-! ## A077562.P1778194550858957919

`A025487(record[gcd(n+1, A025487(n+1))])`
-/

namespace A077562.P1778194550858957919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025487 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A077562.P1778194550858957919

/-! ## A077562.P10730855380436106015

`A025487(eq[0, A025487(n+1)%(n+1)]+1)`
-/

namespace A077562.P10730855380436106015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025487 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A077562.P10730855380436106015

/-! ## A077562.P17729398714801907433

`A070939(A001791(n))*A352107(n+1)`
-/

namespace A077562.P17729398714801907433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A001791 n).toNat * A352107 (n + 1)

end

end A077562.P17729398714801907433

/-!
# A077564: Number of partitions of n into parts with distinct prime signatures.

The programs for A077564, there is no canonical definition to state claims against.
-/

/-! ## A077564.P16015478934749515784

`A088044(floor(acot(n)+n))`
-/

namespace A077564.P16015478934749515784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088044 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A077564.P16015478934749515784

/-! ## A077564.P13442163776819822478

`A088044(round(acot(n)+n))`
-/

namespace A077564.P13442163776819822478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088044 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A077564.P13442163776819822478

/-! ## A077564.P13192985622426152704

`A088044(or(n, floor(acot(n))))`
-/

namespace A077564.P13192985622426152704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088044 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A077564.P13192985622426152704

/-! ## A077564.P17898154990138826129

`A088044(xor(n, floor(acot(n))))`
-/

namespace A077564.P17898154990138826129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088044 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A077564.P17898154990138826129

/-! ## A077564.P11349470695703607587

`A088044(abs(1-n)+1)`
-/

namespace A077564.P11349470695703607587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088044 (|1 - (n : ℤ)| + 1).toNat

end

end A077564.P11349470695703607587

/-! ## A077564.P965197670723328051

`lcm((-1)^n, A088044(round(sqrt(n²+1))))`
-/

namespace A077564.P965197670723328051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A088044 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A077564.P965197670723328051

/-! ## A077564.P1062095857568746199

`or(char[1], A088044(A028310(n)))`
-/

namespace A077564.P1062095857568746199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A088044 (A028310 n).toNat)

end

end A077564.P1062095857568746199

/-! ## A077564.P9311770331354918459

`or(char[2], A088044(A065033(2*n)))`
-/

namespace A077564.P9311770331354918459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A088044 (A065033 (2 * n)).toNat)

end

end A077564.P9311770331354918459

/-! ## A077564.P4206092560224141222

`A088044(A028310(n))%∑[A000032(n)]`
-/

namespace A077564.P4206092560224141222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088044 (A028310 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077564.P4206092560224141222

/-!
# A077565: Number of factorizations of n where each factor has a different prime signature.

The programs for A077565, there is no canonical definition to state claims against.
-/

/-! ## A077565.P7382538501517700397

`A087437(A101296(n+1))`
-/

namespace A077565.P7382538501517700397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087437 (A101296 (n + 1)).toNat

end

end A077565.P7382538501517700397

/-! ## A077565.P808661456306349243

`A326514(n+1)+A165190(A008480(n+1))`
-/

namespace A077565.P808661456306349243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326514 (n + 1) + A165190 (A008480 (n + 1)).toNat

end

end A077565.P808661456306349243

/-! ## A077565.P14234534972697855997

`A326514(n+1)+A125688(A181819(n+1))`
-/

namespace A077565.P14234534972697855997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326514 (n + 1) + A125688 (A181819 (n + 1)).toNat

end

end A077565.P14234534972697855997

/-! ## A077565.P10443297970560155148

`A200650(6*A305564(n+1))`
-/

namespace A077565.P10443297970560155148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200650 (6 * A305564 (n + 1)).toNat

end

end A077565.P10443297970560155148

/-! ## A077565.P9788751088541995957

`A055642(A391628(∏{e}[n+1, C(#+2, 2)]+1))`
-/

namespace A077565.P9788751088541995957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A391628 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 + 1)).toNat

end

end A077565.P9788751088541995957

/-!
# A077567: Least k >= 2 such that sigma(n) divides sigma(n^k).

The programs for A077567, there is no canonical definition to state claims against.
-/

/-! ## A077567.P16417956573749556945

`or(A077603(n+1), A316863(A077625(n+1)))`
-/

namespace A077567.P16417956573749556945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077603 (n + 1)) (A316863 (A077625 (n + 1)).toNat)

end

end A077567.P16417956573749556945

/-! ## A077567.P11704830029140340329

`A337686(A211776(n+1)+A044102(n))`
-/

namespace A077567.P11704830029140340329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337686 (A211776 (n + 1) + A044102 n).toNat

end

end A077567.P11704830029140340329

/-! ## A077567.P3005502058242578709

`A336500(n+1)+A318434(A289079(n+1))`
-/

namespace A077567.P3005502058242578709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336500 (n + 1) + A318434 (A289079 (n + 1)).toNat

end

end A077567.P3005502058242578709

/-! ## A077567.P15157835112286914872

`A349509(A008278(2*(n+2)))+A336500(n+1)`
-/

namespace A077567.P15157835112286914872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349509 (A008278 (2 * (n + 2))).toNat + A336500 (n + 1)

end

end A077567.P15157835112286914872

/-! ## A077567.P10352437893969217485

`or(A077603(n+1), A138811(A077628(n+1)))`
-/

namespace A077567.P10352437893969217485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077603 (n + 1)) (A138811 (A077628 (n + 1)).toNat)

end

end A077567.P10352437893969217485

/-!
# A077568: a(1,n) as defined in A003148.

The programs for A077568, there is no canonical definition to state claims against.
-/

/-! ## A077568.P9700617310827799942

`2*n*a(n-1)-∏[-(2*n+1)]` with `a(0)=1`
-/

namespace A077568.P9700617310827799942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) * a (n - 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A077568.P9700617310827799942

/-! ## A077568.P6669877967583622066

`A126121(n)-Δ[A003148(n)]`
-/

namespace A077568.P6669877967583622066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126121 n - (f1 (n + 1) - f1 n)

end

end A077568.P6669877967583622066

/-! ## A077568.P6382305907799772809

`A126121(n)-Δ[A049606(n)*A123746(n)]`
-/

namespace A077568.P6382305907799772809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 n * A123746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126121 n - (f1 (n + 1) - f1 n)

end

end A077568.P6382305907799772809

/-! ## A077568.P7922771490688950069

`A003148(n)+A126121(n)-A003148(n+1)`
-/

namespace A077568.P7922771490688950069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003148 n + (A126121 n - A003148 (n + 1))

end

end A077568.P7922771490688950069

/-! ## A077568.P12995001176535657105

`A126121(n)-Δ[A024199(n+1)-A143165(n)]`
-/

namespace A077568.P12995001176535657105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 (n + 1) - A143165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126121 n - (f1 (n + 1) - f1 n)

end

end A077568.P12995001176535657105

/-! ## A077568.P13674957566384167622

`A126121(n)-Δ[n!*A091520(n)/2^n]`
-/

namespace A077568.P13674957566384167622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A091520 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126121 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A077568.P13674957566384167622

/-!
# A077569: Irregular triangle read by rows: row n lists smallest numbers in increasing order of all possible prime signatures with n divisors.

The programs for A077569, there is no canonical definition to state claims against.
-/

/-! ## A077569.P8256409319609539890

`filter[A394917(n+1), A322585(#)]`
-/

namespace A077569.P8256409319609539890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A077569.P8256409319609539890

/-! ## A077569.P11167641968996128317

`filter[A399579(n+1), A322585(#)]`
-/

namespace A077569.P11167641968996128317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A077569.P11167641968996128317

/-! ## A077569.P17074493191146090724

`A003963(or(A122819(n+1), A155039(n+1)))`
-/

namespace A077569.P17074493191146090724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor (A122819 (n + 1)) (A155039 (n + 1))).toNat

end

end A077569.P17074493191146090724

/-! ## A077569.P8191654701255177180

`A097751(A317306(n+1))`
-/

namespace A077569.P8191654701255177180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097751 (A317306 (n + 1)).toNat

end

end A077569.P8191654701255177180

/-! ## A077569.P5091970825283138518

`A331580(A332291(comp[8*n]))`
-/

namespace A077569.P5091970825283138518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331580 (A332291 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A077569.P5091970825283138518

/-!
# A077571: Squarefree numbers obtained by repeating a single digit.

The programs for A077571, there is no canonical definition to state claims against.
-/

/-! ## A077571.P7861638962120135387

`∩[A010785(n), A071251(n+1)]`
-/

namespace A077571.P7861638962120135387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077571.P7861638962120135387

/-! ## A077571.P15981154182279314187

`∩[A048307(n), A071251(n+1)]`
-/

namespace A077571.P15981154182279314187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077571.P15981154182279314187

/-! ## A077571.P12918845435745554940

`∩[A071251(n+1), A064222(n)]`
-/

namespace A077571.P12918845435745554940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077571.P12918845435745554940

/-! ## A077571.P250644733699416267

`∩[A048321(n+1), A071251(n+1)]`
-/

namespace A077571.P250644733699416267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077571.P250644733699416267

/-! ## A077571.P2993594253364448211

`∩[A071251(n+1), A096105(n+1)]`
-/

namespace A077571.P2993594253364448211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077571.P2993594253364448211

/-!
# A077572: Nonsquarefree numbers obtained by repeating a single digit.

The programs for A077572, there is no canonical definition to state claims against.
-/

/-! ## A077572.P14946055516939028577

`∩[A010785(n), A035132(n+1)]`
-/

namespace A077572.P14946055516939028577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077572.P14946055516939028577

/-! ## A077572.P3428735480965891729

`∩[A035132(n+1), A048307(n)]`
-/

namespace A077572.P3428735480965891729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077572.P3428735480965891729

/-! ## A077572.P4358737769424737897

`∩[A035132(n+1), A064222(n)]`
-/

namespace A077572.P4358737769424737897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077572.P4358737769424737897

/-! ## A077572.P3209785557710524968

`∩[A035132(n+1), A048321(n+1)]`
-/

namespace A077572.P3209785557710524968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077572.P3209785557710524968

/-! ## A077572.P6977433629316310227

`∩[A035132(n+1), A095227(n+1)]`
-/

namespace A077572.P6977433629316310227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077572.P6977433629316310227

/-!
# A077573: Smallest number of the form (10^k -1)/9 == 0 (mod prime(n)). with a(1) = a(3) = 0.

The programs for A077573, there is no canonical definition to state claims against.
-/

/-! ## A077573.P10886659304411681060

`A002275(A071126(n+1))`
-/

namespace A077573.P10886659304411681060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A071126 (n + 1)).toNat

end

end A077573.P10886659304411681060

/-! ## A077573.P1603361785987820673

`p?[A057979(n)]*A077575(n+1)`
-/

namespace A077573.P1603361785987820673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A077575 (n + 1)

end

end A077573.P1603361785987820673

/-! ## A077573.P14631787500032293462

`sqrt(A001248(n+1))*A077575(n+1)`
-/

namespace A077573.P14631787500032293462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A077575 (n + 1) : ℝ)

end

end A077573.P14631787500032293462

/-! ## A077573.P2728746293385979329

`A006530(A001749(n+1))*A077575(n+1)`
-/

namespace A077573.P2728746293385979329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001749 (n + 1)).toNat * A077575 (n + 1)

end

end A077573.P2728746293385979329

/-! ## A077573.P4050409245052085049

`A000040(n+1)*A190301(A000040(n+1))`
-/

namespace A077573.P4050409245052085049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A190301 (A000040 (n + 1)).toNat

end

end A077573.P4050409245052085049

/-!
# A077575: a(n) = A077573(n)/prime(n).

The programs for A077575, there is no canonical definition to state claims against.
-/

/-! ## A077575.P9782600152409386699

`A077573(n+1)/A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077575.P9782600152409386699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077573 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A077575.P9782600152409386699

/-! ## A077575.P5960775834577684772

`A190301(A000040(n+1))`
-/

namespace A077575.P5960775834577684772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190301 (A000040 (n + 1)).toNat

end

end A077575.P5960775834577684772

/-! ## A077575.P12777157926033908350

`A190301(record[A006530(n+2)])`
-/

namespace A077575.P12777157926033908350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077575.P12777157926033908350

/-! ## A077575.P12254077285016059634

`A190301(record[A014963(n+2)])`
-/

namespace A077575.P12254077285016059634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077575.P12254077285016059634

/-! ## A077575.P1755663637558425257

`A190301(record[A020639(n+2)])`
-/

namespace A077575.P1755663637558425257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077575.P1755663637558425257

/-!
# A077576: a(1) = 1; for n > 1, a(n) = largest prime divisor of A062273(n).

The programs for A077576, the canonical program `A077576.P5375433880911120354` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077576 has offset 1).

The definition of A077576 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077576.P5375433880911120354

`A006530(A062273(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A077576

/-- `A006530(A062273(n+1))` -/
def P5375433880911120354.Spec : Prop :=
  ∀ n, P5375433880911120354.a n = A077576 (n + 1)

theorem P5375433880911120354.correct : P5375433880911120354.Spec := by
  intro n
  simp only [A077576, Nat.add_sub_cancel]

end A077576

/-!
# A077577: a(n) = floor(A062273(n)/n).

The programs for A077577, the canonical program `A077577.P17528963626940152921` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077577 has offset 1).

The definition of A077577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077577.P17528963626940152921

`floor(A062273(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077577

/-- `floor(A062273(n+1)/(n+1))` -/
def P17528963626940152921.Spec : Prop :=
  ∀ n, P17528963626940152921.a n = A077577 (n + 1)

theorem P17528963626940152921.correct : P17528963626940152921.Spec := by
  intro n
  simp only [A077577, Nat.add_sub_cancel]

end A077577

/-!
# A077578: Terms of A062273 which are multiples of their indices.

The programs for A077578, there is no canonical definition to state claims against.
-/

/-! ## A077578.P16122170572409415164

`A062273(A077579(n+1))`
-/

namespace A077578.P16122170572409415164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062273 (A077579 (n + 1)).toNat

end

end A077578.P16122170572409415164

/-!
# A077581: Triangle in which row n contains the n smallest numbers starting from 1 and coprime to n.

The programs for A077581, there is no canonical definition to state claims against.
-/

/-! ## A077581.P17756861479185246133

`A077664(n+1)-∑[char[∑[n]]]`
-/

namespace A077581.P17756861479185246133
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A077581.P17756861479185246133

/-! ## A077581.P3609874478248449207

`A077664(n+1)-1-A003056(n)`
-/

namespace A077581.P3609874478248449207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (n + 1) - 1 - A003056 n

end

end A077581.P3609874478248449207

/-! ## A077581.P7357085628896306458

`abs(A077664(n+1)-∑[A010054(n)])`
-/

namespace A077581.P7357085628896306458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077664 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077581.P7357085628896306458

/-! ## A077581.P1426236526595956840

`abs(A002024(n+1)-A077664(n+1))`
-/

namespace A077581.P1426236526595956840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) - A077664 (n + 1)|

end

end A077581.P1426236526595956840

/-! ## A077581.P9901727224303239046

`abs(A077664(n+1)-(A003057(n+2)-1))`
-/

namespace A077581.P9901727224303239046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077664 (n + 1) - (A003057 (n + 2) - 1)|

end

end A077581.P9901727224303239046

/-! ## A077581.P17259401765389432970

`A077664(n+1)+n+1-A014132(n+1)`
-/

namespace A077581.P17259401765389432970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (n + 1) + (n + 1 : ℤ) - A014132 (n + 1)

end

end A077581.P17259401765389432970

/-! ## A077581.P7792423675938683916

`abs(A260910(n+1)%A077664(n+1))`
-/

namespace A077581.P7792423675938683916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A260910 (n + 1)) (A077664 (n + 1))|

end

end A077581.P7792423675938683916

/-!
# A077582: Sum of terms of n-th row of A077581.

The programs for A077582, there is no canonical definition to state claims against.
-/

/-! ## A077582.P14659574042984339714

`A077666(n+1)-(n+1)²`
-/

namespace A077582.P14659574042984339714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077666 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A077582.P14659574042984339714

/-! ## A077582.P9144615017811145521

`A077666(n+1)-1-A005563(n)`
-/

namespace A077582.P9144615017811145521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077666 (n + 1) - 1 - A005563 n

end

end A077582.P9144615017811145521

/-! ## A077582.P8635980873778488349

`abs(A077666(1+n)-∑[A005408(n)])`
-/

namespace A077582.P8635980873778488349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077666 (1 + n) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077582.P8635980873778488349

/-! ## A077582.P3820240204715468418

`A077666(n+1)-A000217(n+1)-∑[n]`
-/

namespace A077582.P3820240204715468418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077666 (n + 1) - A000217 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A077582.P3820240204715468418

/-! ## A077582.P9063278263875450698

`A000027(A077666(n+1)-∑[A005408(n)])`
-/

namespace A077582.P9063278263875450698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A077666 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077582.P9063278263875450698

/-! ## A077582.P317112011396481952

`A023443(A077666(n+1)-A005563(n))`
-/

namespace A077582.P317112011396481952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077666 (n + 1) - A005563 n).toNat

end

end A077582.P317112011396481952

/-! ## A077582.P14608628133012997480

`A028310(A077666(n+1)-∑[A005408(n)])`
-/

namespace A077582.P14608628133012997480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077666 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077582.P14608628133012997480

/-! ## A077582.P6783946204656624469

`A028310(A077666(n+1))-A008459(A034856(n+1))`
-/

namespace A077582.P6783946204656624469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077666 (n + 1)).toNat - A008459 (A034856 (n + 1)).toNat

end

end A077582.P6783946204656624469

/-!
# A077583: Triangle read by rows in which the n-th row contains n numbers starting with n and not coprime to n, except the first row is {1}.

The programs for A077583, there is no canonical definition to state claims against.
-/

/-! ## A077583.P14846809594587262080

`round(A081520(n+1)+sqrt(2*n))`
-/

namespace A077583.P14846809594587262080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081520 (n + 1) : ℝ) + Real.sqrt (2 * n : ℝ))

end

end A077583.P14846809594587262080

/-! ## A077583.P16573001315101484705

`A123578(n)+A081520(n+1)`
-/

namespace A077583.P16573001315101484705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n + A081520 (n + 1)

end

end A077583.P16573001315101484705

/-! ## A077583.P10374943901562821583

`A123578(n)+A077661(gcd(n, A198954(n)))`
-/

namespace A077583.P10374943901562821583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n + A077661 (Int.gcd (n : ℤ) (A198954 n))

end

end A077583.P10374943901562821583

/-! ## A077583.P3587733018481328548

`A087156(A081520(n+1))+∑[A010054(n)]`
-/

namespace A077583.P3587733018481328548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A081520 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077583.P3587733018481328548

/-! ## A077583.P2858571745352856683

`A087156(A081520(n+1))+A002024(n+1)`
-/

namespace A077583.P2858571745352856683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A081520 (n + 1)).toNat + A002024 (n + 1)

end

end A077583.P2858571745352856683

/-! ## A077583.P3371348480674352601

`A087156(A081520(n+1))+sqrt(A061579(n)+1+n)`
-/

namespace A077583.P3371348480674352601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A087156 (A081520 (n + 1)).toNat : ℝ) + Real.sqrt (A061579 n + 1 + (n : ℤ) : ℝ)

end

end A077583.P3371348480674352601

/-!
# A077584: Last term of n-th row of A077583.

The programs for A077584, there is no canonical definition to state claims against.
-/

/-! ## A077584.P3871078215190894345

`A087156(n+1)+A081518(n+1)`
-/

namespace A077584.P3871078215190894345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A081518 (n + 1)

end

end A077584.P3871078215190894345

/-! ## A077584.P16945062502899854451

`A081518(n+1)+A057427(n)+n`
-/

namespace A077584.P16945062502899854451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081518 (n + 1) + (A057427 n + (n : ℤ))

end

end A077584.P16945062502899854451

/-! ## A077584.P5047040357181894153

`A000040(n+1)%2+A081518(n+1)+n`
-/

namespace A077584.P5047040357181894153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 + (A081518 (n + 1) + (n : ℤ))

end

end A077584.P5047040357181894153

/-! ## A077584.P12651763708995384112

`record[A014963(n+2)]%2*A081518(n+1)+n+1`
-/

namespace A077584.P12651763708995384112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 * A081518 (n + 1) + (n + 1 : ℤ)

end

end A077584.P12651763708995384112

/-! ## A077584.P17571993484811667544

`A014963(22*(n+1))+(A081518(n+1)+n)%(n+1)²`
-/

namespace A077584.P17571993484811667544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (22 * (n + 1)) + Int.tmod (A081518 (n + 1) + (n : ℤ)) ((n + 1) ^ 2 : ℤ)

end

end A077584.P17571993484811667544

/-! ## A077584.P9445402661576410332

`A077583(∑[n+1])`
-/

namespace A077584.P9445402661576410332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077583 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077584.P9445402661576410332

/-! ## A077584.P17295553531988475104

`A065475(A081518(n+1)+n)`
-/

namespace A077584.P17295553531988475104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A081518 (n + 1) + (n : ℤ)).toNat

end

end A077584.P17295553531988475104

/-! ## A077584.P11060752489500446713

`A326178(A081518(n+1)+n)`
-/

namespace A077584.P11060752489500446713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A081518 (n + 1) + (n : ℤ)).toNat

end

end A077584.P11060752489500446713

/-!
# A077585: a(n) = 2^(2^n - 1) - 1.

The programs for A077585, the canonical program `A077585.P1593304396158369571` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077585 has offset 0).

The definition of A077585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077585.P1593304396158369571

`2^(2^n-1)-1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077585

/-- `2^(2^n-1)-1` -/
def P1593304396158369571.Spec : Prop :=
  ∀ n, P1593304396158369571.a n = (A077585 n : ℚ)

end A077585

/-! ## A077585.P2339417923885148528

`∑[Δ[a(n-1)²]/2]` with `a(0)=2, a(1)=2`
-/

namespace A077585.P2339417923885148528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077585.P2339417923885148528

namespace A077585

/-- `∑[Δ[a(n-1)²]/2]` -/
def P2339417923885148528.Spec : Prop :=
  ∀ n, P2339417923885148528.a n = (A077585 n : ℚ)

end A077585

/-! ## A077585.P1975250288710079377

`xor(-(2^2^dr(n)/2), -1)`
-/

namespace A077585.P1975250288710079377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (-((2 ^ 2 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℚ) / 2))) (-1)

end

end A077585.P1975250288710079377

namespace A077585

/-- `xor(-(2^2^dr(n)/2), -1)` -/
def P1975250288710079377.Spec : Prop :=
  ∀ n, P1975250288710079377.a n = A077585 n

end A077585

/-! ## A077585.P13488821808263417837

`xor(-record[root(2^n, (n+1)/2^val(n+1, 2))], -1)`
-/

namespace A077585.P13488821808263417837
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) ^ (1 / ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (-f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (-1)

end

end A077585.P13488821808263417837

namespace A077585

/-- `xor(-record[root(2^n, (n+1)/2^val(n+1, 2))], -1)` -/
def P13488821808263417837.Spec : Prop :=
  ∀ n, P13488821808263417837.a n = A077585 n

end A077585

/-! ## A077585.P15986593004450228744

`A000225(A000225(n))`
-/

namespace A077585.P15986593004450228744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000225 n).toNat

end

end A077585.P15986593004450228744

namespace A077585

/-- `A000225(A000225(n))` -/
def P15986593004450228744.Spec : Prop :=
  ∀ n, P15986593004450228744.a n = A077585 n

end A077585

/-!
# A077587: a(n) = C(n+1) + n*C(n) where C = A000108 (Catalan numbers).

The programs for A077587, the canonical program `A077587.P8563638143985896001` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077587 has offset 0).

The definition of A077587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077587.P12650620964509694790

`∑{#}[n, C(n, #)*A057977(#)*2^(n-#)]`
-/

namespace A077587.P12650620964509694790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((Nat.choose n k : ℤ) * A057977 k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A077587.P12650620964509694790

namespace A077587

/-- `∑{#}[n, C(n, #)*A057977(#)*2^(n-#)]` -/
def P12650620964509694790.Spec : Prop :=
  ∀ n, P12650620964509694790.a n = (A077587 n : ℚ)

end A077587

/-! ## A077587.P8563638143985896001

`C(2*n+1, n+1)-C(2*n, n+2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077587

/-- `C(2*n+1, n+1)-C(2*n, n+2)` -/
def P8563638143985896001.Spec : Prop :=
  ∀ n, P8563638143985896001.a n = A077587 n

theorem P8563638143985896001.correct : P8563638143985896001.Spec := by
  intro n
  simp only [A077587]

end A077587

/-! ## A077587.P4350723193912370653

`∑{#}[n, C(n, #)*A189912(#)]`
-/

namespace A077587.P4350723193912370653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A189912 k

end

end A077587.P4350723193912370653

namespace A077587

/-- `∑{#}[n, C(n, #)*A189912(#)]` -/
def P4350723193912370653.Spec : Prop :=
  ∀ n, P4350723193912370653.a n = A077587 n

end A077587

/-! ## A077587.P16892185806421315260

`A000245(n)+∑{#}[n, C(n, #)²]`
-/

namespace A077587.P16892185806421315260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℤ)

end

end A077587.P16892185806421315260

namespace A077587

/-- `A000245(n)+∑{#}[n, C(n, #)²]` -/
def P16892185806421315260.Spec : Prop :=
  ∀ n, P16892185806421315260.a n = A077587 n

end A077587

/-! ## A077587.P968266726058600026

`∑{#}[n, C(n, #)²]+Δ[A000108(n)]`
-/

namespace A077587.P968266726058600026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A077587.P968266726058600026

namespace A077587

/-- `∑{#}[n, C(n, #)²]+Δ[A000108(n)]` -/
def P968266726058600026.Spec : Prop :=
  ∀ n, P968266726058600026.a n = A077587 n

end A077587

/-! ## A077587.P5730952812803237167

`∑{#}[n, C(n, #)²]+Δ[A120304(n)]`
-/

namespace A077587.P5730952812803237167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A077587.P5730952812803237167

namespace A077587

/-- `∑{#}[n, C(n, #)²]+Δ[A120304(n)]` -/
def P5730952812803237167.Spec : Prop :=
  ∀ n, P5730952812803237167.a n = A077587 n

end A077587

/-! ## A077587.P14331502917849949442

`∑{#}[n, C(n, #)²]+Δ[A028304(2*n)]`
-/

namespace A077587.P14331502917849949442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A077587.P14331502917849949442

namespace A077587

/-- `∑{#}[n, C(n, #)²]+Δ[A028304(2*n)]` -/
def P14331502917849949442.Spec : Prop :=
  ∀ n, P14331502917849949442.a n = A077587 n

end A077587

/-! ## A077587.P2148504082897377648

`A000984(n)+A000245(n)`
-/

namespace A077587.P2148504082897377648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + A000245 n

end

end A077587.P2148504082897377648

namespace A077587

/-- `A000984(n)+A000245(n)` -/
def P2148504082897377648.Spec : Prop :=
  ∀ n, P2148504082897377648.a n = A077587 n

end A077587

/-! ## A077587.P15641445714826503450

`A276666(n)+A005807(n)`
-/

namespace A077587.P15641445714826503450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A005807 n

end

end A077587.P15641445714826503450

namespace A077587

/-- `A276666(n)+A005807(n)` -/
def P15641445714826503450.Spec : Prop :=
  ∀ n, P15641445714826503450.a n = A077587 n

end A077587

/-! ## A077587.P10678710048160378694

`A001791(n)+∑[A071724(n)]`
-/

namespace A077587.P10678710048160378694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077587.P10678710048160378694

namespace A077587

/-- `A001791(n)+∑[A071724(n)]` -/
def P10678710048160378694.Spec : Prop :=
  ∀ n, P10678710048160378694.a n = A077587 n

end A077587

/-! ## A077587.P17851756492051607734

`A000984(n)+Δ[A000108(n)]`
-/

namespace A077587.P17851756492051607734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (f1 (n + 1) - f1 n)

end

end A077587.P17851756492051607734

namespace A077587

/-- `A000984(n)+Δ[A000108(n)]` -/
def P17851756492051607734.Spec : Prop :=
  ∀ n, P17851756492051607734.a n = A077587 n

end A077587

/-! ## A077587.P17557558257574282628

`A001791(n)+Δ[A014137(n)]`
-/

namespace A077587.P17557558257574282628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + (f1 (n + 1) - f1 n)

end

end A077587.P17557558257574282628

namespace A077587

/-- `A001791(n)+Δ[A014137(n)]` -/
def P17557558257574282628.Spec : Prop :=
  ∀ n, P17557558257574282628.a n = A077587 n

end A077587

/-! ## A077587.P15287107281183055822

`A001791(n)+Δ[A014138(n)]`
-/

namespace A077587.P15287107281183055822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + (f1 (n + 1) - f1 n)

end

end A077587.P15287107281183055822

namespace A077587

/-- `A001791(n)+Δ[A014138(n)]` -/
def P15287107281183055822.Spec : Prop :=
  ∀ n, P15287107281183055822.a n = A077587 n

end A077587

/-! ## A077587.P7781824163108858085

`A000984(n)+Δ[A120304(n)]`
-/

namespace A077587.P7781824163108858085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (f1 (n + 1) - f1 n)

end

end A077587.P7781824163108858085

namespace A077587

/-- `A000984(n)+Δ[A120304(n)]` -/
def P7781824163108858085.Spec : Prop :=
  ∀ n, P7781824163108858085.a n = A077587 n

end A077587

/-! ## A077587.P3267469479829528622

`A001791(n)+record[A097331(n)]`
-/

namespace A077587.P3267469479829528622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077587.P3267469479829528622

namespace A077587

/-- `A001791(n)+record[A097331(n)]` -/
def P3267469479829528622.Spec : Prop :=
  ∀ n, P3267469479829528622.a n = A077587 n

end A077587

/-! ## A077587.P5584697628742308636

`A000245(n)+record[A126869(n)]`
-/

namespace A077587.P5584697628742308636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077587.P5584697628742308636

namespace A077587

/-- `A000245(n)+record[A126869(n)]` -/
def P5584697628742308636.Spec : Prop :=
  ∀ n, P5584697628742308636.a n = A077587 n

end A077587

/-! ## A077587.P18426925818488975931

`A001791(n)+record[A126120(n)]`
-/

namespace A077587.P18426925818488975931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077587.P18426925818488975931

namespace A077587

/-- `A001791(n)+record[A126120(n)]` -/
def P18426925818488975931.Spec : Prop :=
  ∀ n, P18426925818488975931.a n = A077587 n

end A077587

/-! ## A077587.P11254054680096960225

`A001791(n)+A000108(n+1)`
-/

namespace A077587.P11254054680096960225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + A000108 (n + 1)

end

end A077587.P11254054680096960225

namespace A077587

/-- `A001791(n)+A000108(n+1)` -/
def P11254054680096960225.Spec : Prop :=
  ∀ n, P11254054680096960225.a n = A077587 n

end A077587

/-! ## A077587.P6398560812905090114

`A120588(n+2)+A001791(n)`
-/

namespace A077587.P6398560812905090114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2) + A001791 n

end

end A077587.P6398560812905090114

namespace A077587

/-- `A120588(n+2)+A001791(n)` -/
def P6398560812905090114.Spec : Prop :=
  ∀ n, P6398560812905090114.a n = A077587 n

end A077587

/-! ## A077587.P8022710035010237247

`A271823(n+2)+A000108(n)`
-/

namespace A077587.P8022710035010237247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271823 (n + 2) + A000108 n

end

end A077587.P8022710035010237247

namespace A077587

/-- `A271823(n+2)+A000108(n)` -/
def P8022710035010237247.Spec : Prop :=
  ∀ n, P8022710035010237247.a n = A077587 n

end A077587

/-!
# A077588: Maximum number of regions into which the plane is divided by n triangles.

The programs for A077588, the canonical program `A077588.P11579175546406899658` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077588 has offset 0).

The definition of A077588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077588.P11579175546406899658

`a(n-1)+6*n-6` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077588

/-- `a(n-1)+6*n-6` -/
def P11579175546406899658.Spec : Prop :=
  ∀ n, P11579175546406899658.a n = A077588 n

theorem P11579175546406899658.correct : P11579175546406899658.Spec := by
  intro n
  simp only [A077588]

end A077588

/-! ## A077588.P14725902145093747441

`∑[a(n-1)+6]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A077588.P14725902145093747441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077588.P14725902145093747441

namespace A077588

/-- `∑[a(n-1)+6]` -/
def P14725902145093747441.Spec : Prop :=
  ∀ n, (P14725902145093747441.a n : ℤ) = A077588 n

end A077588

/-! ## A077588.P12734178532323986037

`round(3/acot(n)²)-3*n`
-/

namespace A077588.P12734178532323986037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (n : ℝ) ^ 2) - (3 * n : ℤ)

end

end A077588.P12734178532323986037

namespace A077588

/-- `round(3/acot(n)²)-3*n` -/
def P12734178532323986037.Spec : Prop :=
  ∀ n, P12734178532323986037.a n = A077588 n

end A077588

/-! ## A077588.P8667094276579433696

`∑[ogf((1-x+5x^2+x^3)/(1-2x+x^2))]`
-/

namespace A077588.P8667094276579433696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 5, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077588.P8667094276579433696

namespace A077588

/-- `∑[ogf((1-x+5x^2+x^3)/(1-2x+x^2))]` -/
def P8667094276579433696.Spec : Prop :=
  ∀ n, P8667094276579433696.a n = A077588 n

end A077588

/-! ## A077588.P1081812860773759121

`ogf((1-x+5x^2+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A077588.P1081812860773759121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 5, 1] [1, -3, 3, -1] n

end

end A077588.P1081812860773759121

namespace A077588

/-- `ogf((1-x+5x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P1081812860773759121.Spec : Prop :=
  ∀ n, P1081812860773759121.a n = A077588 n

end A077588

/-! ## A077588.P15950053420058950569

`a(n-1)+6*(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A077588.P15950053420058950569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 6 * ((n : ℤ) - 1)

end

end A077588.P15950053420058950569

namespace A077588

/-- `a(n-1)+6*(n-1)` -/
def P15950053420058950569.Spec : Prop :=
  ∀ n, P15950053420058950569.a n = A077588 n

theorem P15950053420058950569.correct : P15950053420058950569.Spec := by
  intro n
  simp only [A077588, Nat.add_sub_cancel, A077588.P15950053420058950569.a, A077588.P11579175546406899658.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A077588

/-! ## A077588.P124057772461761203

`6*n-(6-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A077588.P124057772461761203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (6 * n : ℤ) - (6 - a (n - 1))

end

end A077588.P124057772461761203

namespace A077588

/-- `6*n-(6-a(n-1))` -/
def P124057772461761203.Spec : Prop :=
  ∀ n, P124057772461761203.a n = A077588 n

end A077588

/-! ## A077588.P15310655191602245541

`floor((3*n^3+1)/(n+1))`
-/

namespace A077588.P15310655191602245541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n ^ 3 + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A077588.P15310655191602245541

namespace A077588

/-- `floor((3*n^3+1)/(n+1))` -/
def P15310655191602245541.Spec : Prop :=
  ∀ n, P15310655191602245541.a n = A077588 n

end A077588

/-! ## A077588.P1384131979587069042

`A386486(n)-n²`
-/

namespace A077588.P1384131979587069042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386486 n - (n ^ 2 : ℤ)

end

end A077588.P1384131979587069042

namespace A077588

/-- `A386486(n)-n²` -/
def P1384131979587069042.Spec : Prop :=
  ∀ n, P1384131979587069042.a n = A077588 n

end A077588

/-! ## A077588.P18162224928874869777

`A005918(n)-3*n`
-/

namespace A077588.P18162224928874869777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - (3 * n : ℤ)

end

end A077588.P18162224928874869777

namespace A077588

/-- `A005918(n)-3*n` -/
def P18162224928874869777.Spec : Prop :=
  ∀ n, P18162224928874869777.a n = A077588 n

end A077588

/-! ## A077588.P9347927860546704043

`∑{d}[n, A344596(#)]+1`
-/

namespace A077588.P9347927860546704043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344596 d + 1

end

end A077588.P9347927860546704043

namespace A077588

/-- `∑{d}[n, A344596(#)]+1` -/
def P9347927860546704043.Spec : Prop :=
  ∀ n, P9347927860546704043.a n = A077588 n

end A077588

/-! ## A077588.P17976000620719237751

`(n-1)*A008486(n)+2`
-/

namespace A077588.P17976000620719237751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A008486 n + 2

end

end A077588.P17976000620719237751

namespace A077588

/-- `(n-1)*A008486(n)+2` -/
def P17976000620719237751.Spec : Prop :=
  ∀ n, P17976000620719237751.a n = A077588 n

end A077588

/-! ## A077588.P13575434212361775328

`A005899(n)-n*(n+3)`
-/

namespace A077588.P13575434212361775328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - (n * (n + 3) : ℤ)

end

end A077588.P13575434212361775328

namespace A077588

/-- `A005899(n)-n*(n+3)` -/
def P13575434212361775328.Spec : Prop :=
  ∀ n, P13575434212361775328.a n = A077588 n

end A077588

/-! ## A077588.P5493611356655046366

`A187156(n+1)/4+n+1`
-/

namespace A077588.P5493611356655046366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187156 (n + 1) : ℚ) / 4 + (n + 1 : ℚ)

end

end A077588.P5493611356655046366

namespace A077588

/-- `A187156(n+1)/4+n+1` -/
def P5493611356655046366.Spec : Prop :=
  ∀ n, P5493611356655046366.a n = (A077588 n : ℚ)

end A077588

/-! ## A077588.P16556419120267427909

`A008458(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A077588.P16556419120267427909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008458 (n - 1) + a (n - 1)

end

end A077588.P16556419120267427909

namespace A077588

/-- `A008458(n-1)+a(n-1)` -/
def P16556419120267427909.Spec : Prop :=
  ∀ n, P16556419120267427909.a n = A077588 n

end A077588

/-! ## A077588.P17701244381741797193

`A008588(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A077588.P17701244381741797193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008588 (n - 1) + a (n - 1)

end

end A077588.P17701244381741797193

namespace A077588

/-- `A008588(n-1)+a(n-1)` -/
def P17701244381741797193.Spec : Prop :=
  ∀ n, P17701244381741797193.a n = A077588 n

end A077588

/-! ## A077588.P13648911033769123729

`A014107(n)+A010000(n)`
-/

namespace A077588.P13648911033769123729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n + A010000 n

end

end A077588.P13648911033769123729

namespace A077588

/-- `A014107(n)+A010000(n)` -/
def P13648911033769123729.Spec : Prop :=
  ∀ n, P13648911033769123729.a n = A077588 n

end A077588

/-! ## A077588.P8183494441751589017

`A112335(n)+A033428(n)`
-/

namespace A077588.P8183494441751589017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112335 n + A033428 n

end

end A077588.P8183494441751589017

namespace A077588

/-- `A112335(n)+A033428(n)` -/
def P8183494441751589017.Spec : Prop :=
  ∀ n, P8183494441751589017.a n = A077588 n

end A077588

/-! ## A077588.P12312936691404562776

`A326725(n)+A133263(n)`
-/

namespace A077588.P12312936691404562776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A133263 n

end

end A077588.P12312936691404562776

namespace A077588

/-- `A326725(n)+A133263(n)` -/
def P12312936691404562776.Spec : Prop :=
  ∀ n, P12312936691404562776.a n = A077588 n

end A077588

/-! ## A077588.P12453627263196734167

`A010001(n)-A014106(n)`
-/

namespace A077588.P12453627263196734167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n - A014106 n

end

end A077588.P12453627263196734167

namespace A077588

/-- `A010001(n)-A014106(n)` -/
def P12453627263196734167.Spec : Prop :=
  ∀ n, P12453627263196734167.a n = A077588 n

end A077588

/-!
# A077591: Maximum number of regions into which the plane can be divided using n (concave) quadrilaterals.

The programs for A077591, the canonical program `A077591.P5134727170032462649` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077591 has offset 0).

The definition of A077591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077591.P5134727170032462649

`ogf((1-x+15x^2+x^3)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077591

/-- `ogf((1-x+15x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P5134727170032462649.Spec : Prop :=
  ∀ n, P5134727170032462649.a n = A077591 n

theorem P5134727170032462649.correct : P5134727170032462649.Spec := by
  intro n
  simp only [A077591]

end A077591

/-! ## A077591.P16204875913781482767

`record[(2*n²)^(n%2)]`
-/

namespace A077591.P16204875913781482767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077591.P16204875913781482767

namespace A077591

/-- `record[(2*n²)^(n%2)]` -/
def P16204875913781482767.Spec : Prop :=
  ∀ n, (P16204875913781482767.a n : ℤ) = A077591 n

end A077591

/-! ## A077591.P6703406418773871196

`record[(2*n²)^and(1, n)]`
-/

namespace A077591.P6703406418773871196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2) ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077591.P6703406418773871196

namespace A077591

/-- `record[(2*n²)^and(1, n)]` -/
def P6703406418773871196.Spec : Prop :=
  ∀ n, (P6703406418773871196.a n : ℤ) = A077591 n

end A077591

/-! ## A077591.P7118377600391108465

`∑[a(n-1)+16]` with `a(0)=1, a(1)=1, a(2)=16`
-/

namespace A077591.P7118377600391108465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 16] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077591.P7118377600391108465

namespace A077591

/-- `∑[a(n-1)+16]` -/
def P7118377600391108465.Spec : Prop :=
  ∀ n, (P7118377600391108465.a n : ℤ) = A077591 n

end A077591

/-! ## A077591.P6699100327596652295

`a(n-1)+16*(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A077591.P6699100327596652295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 16 * ((n : ℤ) - 1)

end

end A077591.P6699100327596652295

namespace A077591

/-- `a(n-1)+16*(n-1)` -/
def P6699100327596652295.Spec : Prop :=
  ∀ n, P6699100327596652295.a n = A077591 n

end A077591

/-! ## A077591.P9706512679530874948

`record[gcd(2*n², val(a(n-1), 2))]` with `a(0)=1`
-/

namespace A077591.P9706512679530874948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.gcd (2 * n ^ 2) (SequenceMachineLib.valuation (f1 (n - 1)) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077591.P9706512679530874948

namespace A077591

/-- `record[gcd(2*n², val(a(n-1), 2))]` -/
def P9706512679530874948.Spec : Prop :=
  ∀ n, (P9706512679530874948.a n : ℤ) = A077591 n

end A077591

/-! ## A077591.P7727460764879629662

`A008527(n)-8*n`
-/

namespace A077591.P7727460764879629662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - (8 * n : ℤ)

end

end A077591.P7727460764879629662

namespace A077591

/-- `A008527(n)-8*n` -/
def P7727460764879629662.Spec : Prop :=
  ∀ n, P7727460764879629662.a n = A077591 n

end A077591

/-! ## A077591.P12244198210433843145

`lcm(2, A161718(n)²)/2`
-/

namespace A077591.P12244198210433843145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A161718 n ^ 2) : ℚ) / 2

end

end A077591.P12244198210433843145

namespace A077591

/-- `lcm(2, A161718(n)²)/2` -/
def P12244198210433843145.Spec : Prop :=
  ∀ n, P12244198210433843145.a n = (A077591 n : ℚ)

end A077591

/-! ## A077591.P17397630822533747744

`(n-1)*A022144(n)+2`
-/

namespace A077591.P17397630822533747744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A022144 n + 2

end

end A077591.P17397630822533747744

namespace A077591

/-- `(n-1)*A022144(n)+2` -/
def P17397630822533747744.Spec : Prop :=
  ∀ n, P17397630822533747744.a n = A077591 n

end A077591

/-! ## A077591.P3659519484885536598

`(n-1)*A234275(n)+2`
-/

namespace A077591.P3659519484885536598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A234275 n + 2

end

end A077591.P3659519484885536598

namespace A077591

/-- `(n-1)*A234275(n)+2` -/
def P3659519484885536598.Spec : Prop :=
  ∀ n, P3659519484885536598.a n = A077591 n

end A077591

/-! ## A077591.P14116635477241810394

`A008598(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A077591.P14116635477241810394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008598 (n - 1) + a (n - 1)

end

end A077591.P14116635477241810394

namespace A077591

/-- `A008598(n-1)+a(n-1)` -/
def P14116635477241810394.Spec : Prop :=
  ∀ n, P14116635477241810394.a n = A077591 n

end A077591

/-! ## A077591.P14372950767807154611

`A158444(n-1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A077591.P14372950767807154611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A158444 (n - 1) - a (n - 1)

end

end A077591.P14372950767807154611

namespace A077591

/-- `A158444(n-1)-a(n-1)` -/
def P14372950767807154611.Spec : Prop :=
  ∀ n, P14372950767807154611.a n = A077591 n

end A077591

/-! ## A077591.P5468900239565793278

`(A057427(n)+1)*(1-2*n)²`
-/

namespace A077591.P5468900239565793278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * (1 - (2 * n : ℤ)) ^ 2

end

end A077591.P5468900239565793278

namespace A077591

/-- `(A057427(n)+1)*(1-2*n)²` -/
def P5468900239565793278.Spec : Prop :=
  ∀ n, P5468900239565793278.a n = A077591 n

end A077591

/-! ## A077591.P13831800425152443469

`ceil((A004273(n)+2*n-1)²/2)`
-/

namespace A077591.P13831800425152443469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A004273 n + (2 * n : ℤ) - 1) ^ 2 : ℚ) / 2⌉

end

end A077591.P13831800425152443469

namespace A077591

/-- `ceil((A004273(n)+2*n-1)²/2)` -/
def P13831800425152443469.Spec : Prop :=
  ∀ n, P13831800425152443469.a n = A077591 n

end A077591

/-! ## A077591.P636394729174516692

`(1-2*n)²*A000032(C(2, n+2))`
-/

namespace A077591.P636394729174516692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2 * A000032 (Nat.choose 2 (n + 2))

end

end A077591.P636394729174516692

namespace A077591

/-- `(1-2*n)²*A000032(C(2, n+2))` -/
def P636394729174516692.Spec : Prop :=
  ∀ n, P636394729174516692.a n = A077591 n

end A077591

/-! ## A077591.P6410471205030250533

`lcm((1-2*n)², A000032(C(n, 2*n)))`
-/

namespace A077591.P6410471205030250533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((1 - (2 * n : ℤ)) ^ 2) (A000032 (Nat.choose n (2 * n)))

end

end A077591.P6410471205030250533

namespace A077591

/-- `lcm((1-2*n)², A000032(C(n, 2*n)))` -/
def P6410471205030250533.Spec : Prop :=
  ∀ n, (P6410471205030250533.a n : ℤ) = A077591 n

end A077591

/-! ## A077591.P9201668846063673487

`(1-2*n)²*gcd(2, A000010(2*n+1))`
-/

namespace A077591.P9201668846063673487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2 * (Int.gcd 2 (A000010 (2 * n + 1)) : ℤ)

end

end A077591.P9201668846063673487

namespace A077591

/-- `(1-2*n)²*gcd(2, A000010(2*n+1))` -/
def P9201668846063673487.Spec : Prop :=
  ∀ n, P9201668846063673487.a n = A077591 n

end A077591

/-! ## A077591.P9671951817323144351

`A139272(n)+A112335(n)`
-/

namespace A077591.P9671951817323144351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139272 n + A112335 n

end

end A077591.P9671951817323144351

namespace A077591

/-- `A139272(n)+A112335(n)` -/
def P9671951817323144351.Spec : Prop :=
  ∀ n, P9671951817323144351.a n = A077591 n

end A077591

/-! ## A077591.P7726269906246106554

`A389625(n)+A326725(n)`
-/

namespace A077591.P7726269906246106554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389625 n + A326725 n

end

end A077591.P7726269906246106554

namespace A077591

/-- `A389625(n)+A326725(n)` -/
def P7726269906246106554.Spec : Prop :=
  ∀ n, P7726269906246106554.a n = A077591 n

end A077591

/-! ## A077591.P17788451166191673801

`A033567(n)-A004273(n)`
-/

namespace A077591.P17788451166191673801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n - A004273 n

end

end A077591.P17788451166191673801

namespace A077591

/-- `A033567(n)-A004273(n)` -/
def P17788451166191673801.Spec : Prop :=
  ∀ n, P17788451166191673801.a n = A077591 n

end A077591

/-!
# A077592: Table by antidiagonals of tau_k(n), the k-th Piltz function (see A007425), or n-th term of the sequence resulting from applying the inverse Möbius transform (k-1) times to the all-ones sequence.

The programs for A077592, there is no canonical definition to state claims against.
-/

/-! ## A077592.P12811855406843064051

`A334997(∑[char[∑[n]]]²-n)`
-/

namespace A077592.P12811855406843064051
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334997 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A077592.P12811855406843064051

/-! ## A077592.P2229862536190323852

`A334997(A038722(n+1))%A095669(n)`
-/

namespace A077592.P2229862536190323852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334997 (A038722 (n + 1)).toNat) (A095669 n)

end

end A077592.P2229862536190323852

/-! ## A077592.P11050697070382592641

`gcd(A000038(n), A334997(A038722(n+1)))`
-/

namespace A077592.P11050697070382592641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A334997 (A038722 (n + 1)).toNat)

end

end A077592.P11050697070382592641

/-! ## A077592.P6330198200487601197

`lcm(A020985(n), A334997(A038722(n+1)))`
-/

namespace A077592.P6330198200487601197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A334997 (A038722 (n + 1)).toNat)

end

end A077592.P6330198200487601197

/-! ## A077592.P11213945924165463325

`or(A000007(n), A334997(A038722(n+1)))`
-/

namespace A077592.P11213945924165463325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A334997 (A038722 (n + 1)).toNat)

end

end A077592.P11213945924165463325

/-! ## A077592.P671617104785131888

`or(A010054(n), A334997(A038722(n+1)))`
-/

namespace A077592.P671617104785131888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A334997 (A038722 (n + 1)).toNat)

end

end A077592.P671617104785131888

/-! ## A077592.P18133007754573877739

`or(A023531(n), A334997(A038722(n+1)))`
-/

namespace A077592.P18133007754573877739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023531 n) (A334997 (A038722 (n + 1)).toNat)

end

end A077592.P18133007754573877739

/-!
# A077593: Table by antidiagonals where T(n,k) = Sum_{i=1..n} T(floor(n/i),k-1) starting with T(n,0)=1 if n>0 and T(0,0)=0.

The programs for A077593, there is no canonical definition to state claims against.
-/

/-! ## A077593.P289444724945570163

`A124445(n)-A151909(A049600(n))`
-/

namespace A077593.P289444724945570163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124445 n - A151909 (A049600 n).toNat

end

end A077593.P289444724945570163

/-! ## A077593.P2507992561676820119

`A057979(A121757(n))*A124445(n)`
-/

namespace A077593.P2507992561676820119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A121757 n).toNat * A124445 n

end

end A077593.P2507992561676820119

/-! ## A077593.P1367137199843822606

`A124445(n)%A176666(n)`
-/

namespace A077593.P1367137199843822606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124445 n) (A176666 n)

end

end A077593.P1367137199843822606

/-! ## A077593.P11962936952439513290

`A124107(A124445(n))-A010054(n)`
-/

namespace A077593.P11962936952439513290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124107 (A124445 n).toNat - A010054 n

end

end A077593.P11962936952439513290

/-! ## A077593.P426298291331390595

`row(A090181(n)%A001931(n+1))`
-/

namespace A077593.P426298291331390595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Int.tmod (A090181 n) (A001931 (n + 1))).toNat

end

end A077593.P426298291331390595

/-!
# A077595: Numerator of integral from 0 to 1 of (1 + x^2)^n, in lowest terms.

The programs for A077595, there is no canonical definition to state claims against.
-/

/-! ## A077595.P15206804980160698300

`abs(A173296(n))`
-/

namespace A077595.P15206804980160698300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A173296 n|

end

end A077595.P15206804980160698300

/-! ## A077595.P11253944393361466179

`A033999(n)*A173296(n)`
-/

namespace A077595.P11253944393361466179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A173296 n

end

end A077595.P11253944393361466179

/-! ## A077595.P11261296946712467302

`gcd(A000038(n), A173296(n))`
-/

namespace A077595.P11261296946712467302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A173296 n)

end

end A077595.P11261296946712467302

/-! ## A077595.P14814281024148258576

`lcm(A000034(n), A173296(n))`
-/

namespace A077595.P14814281024148258576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A173296 n)

end

end A077595.P14814281024148258576

/-! ## A077595.P17983329913572522512

`gcd(-A173296(n), A185284(n))`
-/

namespace A077595.P17983329913572522512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A173296 n) (A185284 n)

end

end A077595.P17983329913572522512

/-!
# A077596: Central coefficients of Moebius polynomials (A074586): coefficient of x^(n/2-1/2) if n is odd; coefficient of x^(n/2-1) if n is even and >4. The n-th Moebius polynomial, M(n,x), satisfies M(n,-1)=mu(n) the Moebius function of n.

The programs for A077596, there is no canonical definition to state claims against.
-/

/-! ## A077596.P6021675094336523950

`A164183(n)-A000035(A164183(n+2))`
-/

namespace A077596.P6021675094336523950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164183 n - A000035 (A164183 (n + 2)).toNat

end

end A077596.P6021675094336523950

/-! ## A077596.P13058826079079276680

`A164183(n)-A322217(A164183(n))`
-/

namespace A077596.P13058826079079276680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164183 n - A322217 (A164183 n).toNat

end

end A077596.P13058826079079276680

/-! ## A077596.P2291177753148514994

`A002266(n)+∑[A055086(A036675(n))]`
-/

namespace A077596.P2291177753148514994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A036675 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077596.P2291177753148514994

/-! ## A077596.P14666042290225227105

`A285709(n+1)+A100196(A097134(n))`
-/

namespace A077596.P14666042290225227105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285709 (n + 1) + A100196 (A097134 n).toNat

end

end A077596.P14666042290225227105

/-! ## A077596.P15624821798182597529

`row(A081567(n)+A100196(A148793(n)))`
-/

namespace A077596.P15624821798182597529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A081567 n + A100196 (A148793 n).toNat).toNat

end

end A077596.P15624821798182597529

/-!
# A077597: Coefficient of x in the n-th Moebius polynomial (A074586), M(n,x), which satisfies M(n,-1)=mu(n) the Moebius function of n.

The programs for A077597, the canonical program `A077597.P10354608235057812534` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077597 has offset 0).

The definition of A077597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077597.P10354608235057812534

`∑{#}[n-1, floor((n+1)/(#+1))]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077597

/-- `∑{#}[n-1, floor((n+1)/(#+1))]` -/
def P10354608235057812534.Spec : Prop :=
  ∀ n, P10354608235057812534.a n = A077597 n

theorem P10354608235057812534.correct : P10354608235057812534.Spec := by
  intro n
  simp only [A077597]

end A077597

/-! ## A077597.P12130505847383220956

`∑[∏{e}[1+n, #+1]]-1`
-/

namespace A077597.P12130505847383220956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A077597.P12130505847383220956

namespace A077597

/-- `∑[∏{e}[1+n, #+1]]-1` -/
def P12130505847383220956.Spec : Prop :=
  ∀ n, P12130505847383220956.a n = A077597 n

end A077597

/-! ## A077597.P8203242743634174421

`∑[∑{d}[n+1, gcd(n, #)]]-1`
-/

namespace A077597.P8203242743634174421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A077597.P8203242743634174421

namespace A077597

/-- `∑[∑{d}[n+1, gcd(n, #)]]-1` -/
def P8203242743634174421.Spec : Prop :=
  ∀ n, P8203242743634174421.a n = A077597 n

end A077597

/-! ## A077597.P8141530993276528966

`∑[∑{d}[n+1, ceil(acot(#))]]-1`
-/

namespace A077597.P8141530993276528966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077597.P8141530993276528966

namespace A077597

/-- `∑[∑{d}[n+1, ceil(acot(#))]]-1` -/
def P8141530993276528966.Spec : Prop :=
  ∀ n, P8141530993276528966.a n = A077597 n

end A077597

/-! ## A077597.P5614164224981872835

`∑[∑{d}[n+1, floor(atan(#))]]+n`
-/

namespace A077597.P5614164224981872835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊Real.arctan (d : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A077597.P5614164224981872835

namespace A077597

/-- `∑[∑{d}[n+1, floor(atan(#))]]+n` -/
def P5614164224981872835.Spec : Prop :=
  ∀ n, P5614164224981872835.a n = A077597 n

end A077597

/-! ## A077597.P16039277794044107449

`∑[∑{d}[n+1, ceil(1/#)]]-1`
-/

namespace A077597.P16039277794044107449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077597.P16039277794044107449

namespace A077597

/-- `∑[∑{d}[n+1, ceil(1/#)]]-1` -/
def P16039277794044107449.Spec : Prop :=
  ∀ n, P16039277794044107449.a n = A077597 n

end A077597

/-! ## A077597.P14644582216701294822

`∑[-∑{d}[n+1, or(#, -1)]]-1`
-/

namespace A077597.P14644582216701294822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f2 n), Int.lor (d : ℤ) (-1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077597.P14644582216701294822

namespace A077597

/-- `∑[-∑{d}[n+1, or(#, -1)]]-1` -/
def P14644582216701294822.Spec : Prop :=
  ∀ n, P14644582216701294822.a n = A077597 n

end A077597

/-! ## A077597.P16547318321421643121

`∑[∏{e}[n+1, #+1]%Δ[n²]]`
-/

namespace A077597.P16547318321421643121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077597.P16547318321421643121

namespace A077597

/-- `∑[∏{e}[n+1, #+1]%Δ[n²]]` -/
def P16547318321421643121.Spec : Prop :=
  ∀ n, P16547318321421643121.a n = A077597 n

end A077597

/-! ## A077597.P8123984276851738697

`∏{e}[n+1, #+1]+a(n-1)` with `a(0)=0`
-/

namespace A077597.P8123984276851738697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + a (n - 1)

end

end A077597.P8123984276851738697

namespace A077597

/-- `∏{e}[n+1, #+1]+a(n-1)` -/
def P8123984276851738697.Spec : Prop :=
  ∀ n, (P8123984276851738697.a n : ℤ) = A077597 n

end A077597

/-! ## A077597.P1125033036086002994

`∑[∑{d}[n+1, n²%#]+1]-1`
-/

namespace A077597.P1125033036086002994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A077597.P1125033036086002994

namespace A077597

/-- `∑[∑{d}[n+1, n²%#]+1]-1` -/
def P1125033036086002994.Spec : Prop :=
  ∀ n, P1125033036086002994.a n = A077597 n

end A077597

/-! ## A077597.P3917253849096062108

`∑{d}[n+1, ceil(acot(#))]+a(n-1)` with `a(0)=0`
-/

namespace A077597.P3917253849096062108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ + a (n - 1)

end

end A077597.P3917253849096062108

namespace A077597

/-- `∑{d}[n+1, ceil(acot(#))]+a(n-1)` -/
def P3917253849096062108.Spec : Prop :=
  ∀ n, P3917253849096062108.a n = A077597 n

end A077597

/-! ## A077597.P16825083771309237049

`A006218(n+1)-1`
-/

namespace A077597.P16825083771309237049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - 1

end

end A077597.P16825083771309237049

namespace A077597

/-- `A006218(n+1)-1` -/
def P16825083771309237049.Spec : Prop :=
  ∀ n, P16825083771309237049.a n = A077597 n

end A077597

/-! ## A077597.P11432476160113022940

`A054519(n+1)-2`
-/

namespace A077597.P11432476160113022940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1) - 2

end

end A077597.P11432476160113022940

namespace A077597

/-- `A054519(n+1)-2` -/
def P11432476160113022940.Spec : Prop :=
  ∀ n, P11432476160113022940.a n = A077597 n

end A077597

/-! ## A077597.P13874685180616300754

`A002541(n+1)+n`
-/

namespace A077597.P13874685180616300754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) + (n : ℤ)

end

end A077597.P13874685180616300754

namespace A077597

/-- `A002541(n+1)+n` -/
def P13874685180616300754.Spec : Prop :=
  ∀ n, P13874685180616300754.a n = A077597 n

end A077597

/-! ## A077597.P12065484194115905539

`∑[A000005(n+1)]-1`
-/

namespace A077597.P12065484194115905539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A077597.P12065484194115905539

namespace A077597

/-- `∑[A000005(n+1)]-1` -/
def P12065484194115905539.Spec : Prop :=
  ∀ n, P12065484194115905539.a n = A077597 n

end A077597

/-! ## A077597.P5995521533731154027

`∑[A032741(n+1)]+n`
-/

namespace A077597.P5995521533731154027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A077597.P5995521533731154027

namespace A077597

/-- `∑[A032741(n+1)]+n` -/
def P5995521533731154027.Spec : Prop :=
  ∀ n, P5995521533731154027.a n = A077597 n

end A077597

/-! ## A077597.P8452970601263793944

`A161886(n+1)-(n+1)`
-/

namespace A077597.P8452970601263793944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161886 (n + 1) - (n + 1 : ℤ)

end

end A077597.P8452970601263793944

namespace A077597

/-- `A161886(n+1)-(n+1)` -/
def P8452970601263793944.Spec : Prop :=
  ∀ n, P8452970601263793944.a n = A077597 n

end A077597

/-! ## A077597.P2992647718326290702

`A156745(n+1)-(n+2)`
-/

namespace A077597.P2992647718326290702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (n + 1) - (n + 2 : ℤ)

end

end A077597.P2992647718326290702

namespace A077597

/-- `A156745(n+1)-(n+2)` -/
def P2992647718326290702.Spec : Prop :=
  ∀ n, P2992647718326290702.a n = A077597 n

end A077597

/-! ## A077597.P13753719393760486352

`A397992(n)-A000124(n)`
-/

namespace A077597.P13753719393760486352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397992 n - A000124 n

end

end A077597.P13753719393760486352

namespace A077597

/-- `A397992(n)-A000124(n)` -/
def P13753719393760486352.Spec : Prop :=
  ∀ n, P13753719393760486352.a n = A077597 n

end A077597

/-! ## A077597.P9287447578572323663

`A032741(n+1)+A006218(n)`
-/

namespace A077597.P9287447578572323663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + A006218 n

end

end A077597.P9287447578572323663

namespace A077597

/-- `A032741(n+1)+A006218(n)` -/
def P9287447578572323663.Spec : Prop :=
  ∀ n, P9287447578572323663.a n = A077597 n

end A077597

/-!
# A077598: Coefficient of x^2 in the n-th Moebius polynomial (A074586), M(n,x), which satisfies M(n,-1)=mu(n) the Moebius function of n.

The programs for A077598, the canonical program `A077598.P2942604265624404829` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077598 has offset 1).

The definition of A077598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077598.P7868924885291034175

`∑[∑{d}[n+1, A006218(#)-2]]+1`
-/

namespace A077598.P7868924885291034175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A006218 d - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A077598.P7868924885291034175

namespace A077598

/-- `∑[∑{d}[n+1, A006218(#)-2]]+1` -/
def P7868924885291034175.Spec : Prop :=
  ∀ n, P7868924885291034175.a n = A077598 (n + 1)

end A077598

/-! ## A077598.P2942604265624404829

`∑[A143356(n+1)-A131089(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A077598

/-- `∑[A143356(n+1)-A131089(n+1)]` -/
def P2942604265624404829.Spec : Prop :=
  ∀ n, P2942604265624404829.a n = A077598 (n + 1)

theorem P2942604265624404829.correct : P2942604265624404829.Spec := by
  intro n
  simp only [A077598, Nat.add_sub_cancel]

end A077598

/-! ## A077598.P3085842766148868003

`A074586(A152950(n+1))%A001255(n)`
-/

namespace A077598.P3085842766148868003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074586 (A152950 (n + 1)).toNat) (A001255 n)

end

end A077598.P3085842766148868003

namespace A077598

/-- `A074586(A152950(n+1))%A001255(n)` -/
def P3085842766148868003.Spec : Prop :=
  ∀ n, P3085842766148868003.a n = A077598 (n + 1)

end A077598

/-! ## A077598.P8067827469756360560

`(A088218(n)+A074586(A152950(n+1)))%A088218(n)`
-/

namespace A077598.P8067827469756360560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 n + A074586 (A152950 (n + 1)).toNat) (A088218 n)

end

end A077598.P8067827469756360560

namespace A077598

/-- `(A088218(n)+A074586(A152950(n+1)))%A088218(n)` -/
def P8067827469756360560.Spec : Prop :=
  ∀ n, P8067827469756360560.a n = A077598 (n + 1)

end A077598

/-!
# A077599: Sequence of n such that -1 is a "double" root for M(n,x) (i.e., M(n,x)=(x+1)^2*Q(n,x)).

The programs for A077599, there is no canonical definition to state claims against.
-/

/-! ## A077599.P364663854202839195

`A342377(A127707(2*(n+2)))+A246318(n)`
-/

namespace A077599.P364663854202839195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342377 (A127707 (2 * (n + 2))).toNat + A246318 n

end

end A077599.P364663854202839195

