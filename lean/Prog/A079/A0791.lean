import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A079101: A repetition-resistant sequence.

The programs for A079101, there is no canonical definition to state claims against.
-/

/-! ## A079101.P1729984248699752730

`char[A079335(n+1)-1]`
-/

namespace A079101.P1729984248699752730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079335 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079101.P1729984248699752730

/-! ## A079101.P5671231650844238456

`1-char[A079136(n+1)-1]`
-/

namespace A079101.P5671231650844238456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079136 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A079101.P5671231650844238456

/-! ## A079101.P17361798694162956914

`and(A001316(A151934(n)), A334941(n+1))`
-/

namespace A079101.P17361798694162956914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001316 (A151934 n).toNat) (A334941 (n + 1))

end

end A079101.P17361798694162956914

/-! ## A079101.P9062761992941814403

`A334941(n+1)-A295662(A299458(n+1))`
-/

namespace A079101.P9062761992941814403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334941 (n + 1) - A295662 (A299458 (n + 1)).toNat

end

end A079101.P9062761992941814403

/-! ## A079101.P10519522984760848706

`A334941(A090109(n+1))`
-/

namespace A079101.P10519522984760848706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334941 (A090109 (n + 1)).toNat

end

end A079101.P10519522984760848706

/-! ## A079101.P13612490168673781561

`and(A151685(n), A334941(n+1))`
-/

namespace A079101.P13612490168673781561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151685 n) (A334941 (n + 1))

end

end A079101.P13612490168673781561

/-! ## A079101.P6546338702490643805

`ceil(A334941(n+1)/A086620(n))`
-/

namespace A079101.P6546338702490643805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334941 (n + 1) : ℚ) / (A086620 n : ℚ)⌉

end

end A079101.P6546338702490643805

/-! ## A079101.P7782517120415794588

`and(p?[A195142(n)], A334941(n+1))`
-/

namespace A079101.P7782517120415794588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A334941 (n + 1))

end

end A079101.P7782517120415794588

/-! ## A079101.P5317023709423902293

`and(A006723(n), A334941(n+1))`
-/

namespace A079101.P5317023709423902293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006723 n) (A334941 (n + 1))

end

end A079101.P5317023709423902293

/-! ## A079101.P11847296401521472535

`and(A089998(n), A334941(n+1))`
-/

namespace A079101.P11847296401521472535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089998 n) (A334941 (n + 1))

end

end A079101.P11847296401521472535

/-!
# A079102: a(2n) = 2^n, a(2n+1) = 2^(2n).

The programs for A079102, the canonical program `A079102.P4491091901534354195` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079102 has offset 0).

The definition of A079102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079102.P5715663931331950822

`2^ceil((n-1)/gcd(2, n))`
-/

namespace A079102.P5715663931331950822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉ : ℤ)

end

end A079102.P5715663931331950822

namespace A079102

/-- `2^ceil((n-1)/gcd(2, n))` -/
def P5715663931331950822.Spec : Prop :=
  ∀ n, P5715663931331950822.a n = (A079102 n : ℚ)

end A079102

/-! ## A079102.P4491091901534354195

`2*(n%2+1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079102

/-- `2*(n%2+1)*a(n-2)` -/
def P4491091901534354195.Spec : Prop :=
  ∀ n, (P4491091901534354195.a n : ℤ) = A079102 n

theorem P4491091901534354195.correct : P4491091901534354195.Spec := by
  intro n
  simp only [A079102]

end A079102

/-! ## A079102.P9936636665579191801

`gcd(4, 2*(n+1))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A079102.P9936636665579191801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.gcd 4 (2 * (n + 1)) * a (n - 2)

end

end A079102.P9936636665579191801

namespace A079102

/-- `gcd(4, 2*(n+1))*a(n-2)` -/
def P9936636665579191801.Spec : Prop :=
  ∀ n, (P9936636665579191801.a n : ℤ) = A079102 n

end A079102

/-! ## A079102.P186828810735758807

`(2*and(1, n)+2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A079102.P186828810735758807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 * Nat.land 1 n + 2) * a (n - 2)

end

end A079102.P186828810735758807

namespace A079102

/-- `(2*and(1, n)+2)*a(n-2)` -/
def P186828810735758807.Spec : Prop :=
  ∀ n, (P186828810735758807.a n : ℤ) = A079102 n

theorem P186828810735758807.correct : P186828810735758807.Spec := by
  intro n
  simp only [A079102, Nat.add_sub_cancel, A079102.P186828810735758807.a, A079102.P4491091901534354195.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A079102

/-! ## A079102.P6604200088743956045

`a(n-2)/a(n-4)*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A079102.P6604200088743956045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  a (n - 2) / a (n - 4) * a (n - 2)

end

end A079102.P6604200088743956045

namespace A079102

/-- `a(n-2)/a(n-4)*a(n-2)` -/
def P6604200088743956045.Spec : Prop :=
  ∀ n, P6604200088743956045.a n = (A079102 n : ℚ)

end A079102

/-! ## A079102.P10591620976584605807

`2^A029578(n)`
-/

namespace A079102.P10591620976584605807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A029578 n : ℤ)

end

end A079102.P10591620976584605807

namespace A079102

/-- `2^A029578(n)` -/
def P10591620976584605807.Spec : Prop :=
  ∀ n, P10591620976584605807.a n = (A079102 n : ℚ)

end A079102

/-! ## A079102.P13455596864282808529

`2^sqrt(A174595(n))`
-/

namespace A079102.P13455596864282808529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A174595 n : ℝ))

end

end A079102.P13455596864282808529

namespace A079102

/-- `2^sqrt(A174595(n))` -/
def P13455596864282808529.Spec : Prop :=
  ∀ n, P13455596864282808529.a n = (A079102 n : ℝ)

end A079102

/-! ## A079102.P13078365644553047593

`2^(A029579(n)-1)`
-/

namespace A079102.P13078365644553047593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A029579 n - 1 : ℤ)

end

end A079102.P13078365644553047593

namespace A079102

/-- `2^(A029579(n)-1)` -/
def P13078365644553047593.Spec : Prop :=
  ∀ n, P13078365644553047593.a n = (A079102 n : ℚ)

end A079102

/-! ## A079102.P15290632534068915187

`2^Δ[A211538(n+1)]`
-/

namespace A079102.P15290632534068915187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A079102.P15290632534068915187

namespace A079102

/-- `2^Δ[A211538(n+1)]` -/
def P15290632534068915187.Spec : Prop :=
  ∀ n, P15290632534068915187.a n = (A079102 n : ℚ)

end A079102

/-! ## A079102.P13284680313399354736

`2^(n-A057979(n+1))`
-/

namespace A079102.P13284680313399354736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A057979 (n + 1) : ℤ)

end

end A079102.P13284680313399354736

namespace A079102

/-- `2^(n-A057979(n+1))` -/
def P13284680313399354736.Spec : Prop :=
  ∀ n, P13284680313399354736.a n = (A079102 n : ℚ)

end A079102

/-! ## A079102.P12928250821079508193

`A000079(A029578(n))`
-/

namespace A079102.P12928250821079508193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A029578 n).toNat

end

end A079102.P12928250821079508193

namespace A079102

/-- `A000079(A029578(n))` -/
def P12928250821079508193.Spec : Prop :=
  ∀ n, P12928250821079508193.a n = A079102 n

end A079102

/-! ## A079102.P11475742110777308225

`A011782(A029579(n))`
-/

namespace A079102.P11475742110777308225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A029579 n).toNat

end

end A079102.P11475742110777308225

namespace A079102

/-- `A011782(A029579(n))` -/
def P11475742110777308225.Spec : Prop :=
  ∀ n, P11475742110777308225.a n = A079102 n

end A079102

/-! ## A079102.P5469010077317602120

`A118263(A007494(n))`
-/

namespace A079102.P5469010077317602120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A007494 n).toNat

end

end A079102.P5469010077317602120

namespace A079102

/-- `A118263(A007494(n))` -/
def P5469010077317602120.Spec : Prop :=
  ∀ n, P5469010077317602120.a n = A079102 n

end A079102

/-! ## A079102.P14547095188951961074

`A016116(A227906(n))`
-/

namespace A079102.P14547095188951961074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A227906 n).toNat

end

end A079102.P14547095188951961074

namespace A079102

/-- `A016116(A227906(n))` -/
def P14547095188951961074.Spec : Prop :=
  ∀ n, P14547095188951961074.a n = A079102 n

end A079102

/-! ## A079102.P6963153627037627289

`A158780(A321220(n))`
-/

namespace A079102.P6963153627037627289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A321220 n).toNat

end

end A079102.P6963153627037627289

namespace A079102

/-- `A158780(A321220(n))` -/
def P6963153627037627289.Spec : Prop :=
  ∀ n, P6963153627037627289.a n = A079102 n

end A079102

/-! ## A079102.P3556416082051502302

`A011782(A029578(n)+1)`
-/

namespace A079102.P3556416082051502302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A029578 n + 1).toNat

end

end A079102.P3556416082051502302

namespace A079102

/-- `A011782(A029578(n)+1)` -/
def P3556416082051502302.Spec : Prop :=
  ∀ n, P3556416082051502302.a n = A079102 n

end A079102

/-! ## A079102.P458495821308359966

`A060723(A043547(n+1))`
-/

namespace A079102.P458495821308359966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060723 (A043547 (n + 1)).toNat

end

end A079102.P458495821308359966

namespace A079102

/-- `A060723(A043547(n+1))` -/
def P458495821308359966.Spec : Prop :=
  ∀ n, P458495821308359966.a n = A079102 n

end A079102

/-! ## A079102.P15987588608681805049

`A118263(A267528(n+1))`
-/

namespace A079102.P15987588608681805049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A267528 (n + 1)).toNat

end

end A079102.P15987588608681805049

namespace A079102

/-- `A118263(A267528(n+1))` -/
def P15987588608681805049.Spec : Prop :=
  ∀ n, P15987588608681805049.a n = A079102 n

end A079102

/-! ## A079102.P16327154311106044324

`A118263(A294732(n+2))`
-/

namespace A079102.P16327154311106044324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A294732 (n + 2)).toNat

end

end A079102.P16327154311106044324

namespace A079102

/-- `A118263(A294732(n+2))` -/
def P16327154311106044324.Spec : Prop :=
  ∀ n, P16327154311106044324.a n = A079102 n

end A079102

/-! ## A079102.P16800639489477146522

`A016116(2*A029578(n))`
-/

namespace A079102.P16800639489477146522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A029578 n).toNat

end

end A079102.P16800639489477146522

namespace A079102

/-- `A016116(2*A029578(n))` -/
def P16800639489477146522.Spec : Prop :=
  ∀ n, P16800639489477146522.a n = A079102 n

end A079102

/-!
# A079103: a(n) = Catalan(n)^(2*n-2).

The programs for A079103, the canonical program `A079103.P4661694025285360144` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079103 has offset 0).

The definition of A079103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079103.P4661694025285360144

`(C(2*n, n)/(n+1))^(2*n-2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079103

/-- `(C(2*n, n)/(n+1))^(2*n-2)` -/
def P4661694025285360144.Spec : Prop :=
  ∀ n, P4661694025285360144.a n = (A079103 n : ℚ)

end A079103

/-! ## A079103.P2181574401880695484

`((C(2*n, n)/(n+1))^(n-1))²`
-/

namespace A079103.P2181574401880695484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

end

end A079103.P2181574401880695484

namespace A079103

/-- `((C(2*n, n)/(n+1))^(n-1))²` -/
def P2181574401880695484.Spec : Prop :=
  ∀ n, P2181574401880695484.a n = (A079103 n : ℚ)

end A079103

/-! ## A079103.P13052913768988154651

`A001246(n)^(n-1)`
-/

namespace A079103.P13052913768988154651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001246 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A079103.P13052913768988154651

namespace A079103

/-- `A001246(n)^(n-1)` -/
def P13052913768988154651.Spec : Prop :=
  ∀ n, P13052913768988154651.a n = (A079103 n : ℚ)

end A079103

/-!
# A079104: Number of permutations of length n containing the minimum number of monotone subsequences of length 4.

The programs for A079104, there is no canonical definition to state claims against.
-/

/-! ## A079104.P1131472616429312417

`A079105(n+1)+A018843(A114752(n+3))`
-/

namespace A079104.P1131472616429312417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079105 (n + 1) + A018843 (A114752 (n + 3)).toNat

end

end A079104.P1131472616429312417

/-! ## A079104.P15997771740193736070

`A079105(n+1)+A007814(A096698(n+1))`
-/

namespace A079104.P15997771740193736070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079105 (n + 1) + A007814 (A096698 (n + 1)).toNat

end

end A079104.P15997771740193736070

/-! ## A079104.P8393825925851275284

`A079105(n+1)*A165022(A275251(n+1))`
-/

namespace A079104.P8393825925851275284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079105 (n + 1) * A165022 (A275251 (n + 1)).toNat

end

end A079104.P8393825925851275284

/-! ## A079104.P1215862152395425578

`A079105(A372819(∑[n+1]))`
-/

namespace A079104.P1215862152395425578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079105 (A372819 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A079104.P1215862152395425578

/-! ## A079104.P10704453702355320428

`A079105(n+1)*A165022(A162818(n+3))`
-/

namespace A079104.P10704453702355320428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079105 (n + 1) * A165022 (A162818 (n + 3)).toNat

end

end A079104.P10704453702355320428

/-!
# A079105: Number of permutations of length n, in which all monotone subsequences of length 4 are descending or all such subsequences are ascending, containing the minimum number of such subsequences subject to that constraint.

The programs for A079105, there is no canonical definition to state claims against.
-/

/-! ## A079105.P8483032247184713979

`A079104(A071786(n+1)-char[A014074(n)+n])`
-/

namespace A079105.P8483032247184713979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014074 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079104 (A071786 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A079105.P8483032247184713979

/-!
# A079106: Number of permutations of length n containing the minimum number of monotone subsequences of length 5.

The programs for A079106, there is no canonical definition to state claims against.
-/

/-! ## A079106.P7764094548569435443

`A003056(n^n)+n*a(n-1)` with `a(0)=1`
-/

namespace A079106.P7764094548569435443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 (n ^ n) + (n : ℤ) * a (n - 1)

end

end A079106.P7764094548569435443

/-! ## A079106.P12080092748095604890

`A187188(A104429(n+3)+3*C(n, 3))`
-/

namespace A079106.P12080092748095604890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A104429 (n + 3) + (3 * Nat.choose n 3 : ℤ)).toNat

end

end A079106.P12080092748095604890

/-!
# A079107: Number of digits of A077722(n) written in base 8.

The programs for A079107, there is no canonical definition to state claims against.
-/

/-! ## A079107.P3103653043879299317

`ceil(log(sqrt(A077722(n+1))))`
-/

namespace A079107.P3103653043879299317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sqrt (A077722 (n + 1) : ℝ))⌉

end

end A079107.P3103653043879299317

/-! ## A079107.P6711125194875622457

`A008619(floor(log(A077722(n+1))))`
-/

namespace A079107.P6711125194875622457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊Real.log (A077722 (n + 1) : ℝ)⌋.toNat

end

end A079107.P6711125194875622457

/-! ## A079107.P10721169460044943764

`A008611(floor(log2(A077722(n+1))))`
-/

namespace A079107.P10721169460044943764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Nat.log 2 (A077722 (n + 1)).toNat)

end

end A079107.P10721169460044943764

/-! ## A079107.P6292231103578794918

`A008611(round(log2(A077722(n+1))))`
-/

namespace A079107.P6292231103578794918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway (Real.logb 2 (A077722 (n + 1) : ℝ))).toNat

end

end A079107.P6292231103578794918

/-! ## A079107.P15213141581310545767

`A079109(n+1)+A079108(n+1)`
-/

namespace A079107.P15213141581310545767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079109 (n + 1) + A079108 (n + 1)

end

end A079107.P15213141581310545767

/-!
# A079108: Number of 1's in the base 8 form of A077722(n).

The programs for A079108, there is no canonical definition to state claims against.
-/

/-! ## A079108.P3484160756536655955

`A079107(n+1)-A079109(n+1)`
-/

namespace A079108.P3484160756536655955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079107 (n + 1) - A079109 (n + 1)

end

end A079108.P3484160756536655955

/-! ## A079108.P14628913057265927407

`A079107(n+1)+A057428(n)*A079109(n+1)`
-/

namespace A079108.P14628913057265927407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079107 (n + 1) + A057428 n * A079109 (n + 1)

end

end A079108.P14628913057265927407

/-! ## A079108.P4081526251622104300

`A077722(n+1)%A099549(A157997(n+1))`
-/

namespace A079108.P4081526251622104300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077722 (n + 1)) (A099549 (A157997 (n + 1)).toNat)

end

end A079108.P4081526251622104300

/-! ## A079108.P2887218965001726060

`A000027(A077722(n+1))%7`
-/

namespace A079108.P2887218965001726060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A077722 (n + 1)).toNat) 7

end

end A079108.P2887218965001726060

/-! ## A079108.P9644612687152180642

`A352202(A235478(n+1))`
-/

namespace A079108.P9644612687152180642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352202 (A235478 (n + 1)).toNat

end

end A079108.P9644612687152180642

/-!
# A079109: Number of zeros in the base 8 form of A077722(n).

The programs for A079109, there is no canonical definition to state claims against.
-/

/-! ## A079109.P14580876702510914334

`A079107(n+1)-A079108(n+1)`
-/

namespace A079109.P14580876702510914334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079107 (n + 1) - A079108 (n + 1)

end

end A079109.P14580876702510914334

/-! ## A079109.P13118811173874371491

`A001221(A350839(3*n+1)+A079908(n))`
-/

namespace A079109.P13118811173874371491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A350839 (3 * n + 1) + A079908 n).toNat

end

end A079109.P13118811173874371491

/-! ## A079109.P2818926627762905202

`A001222(∑[A333628(3*n+4)+A018005(n+1)])`
-/

namespace A079109.P2818926627762905202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333628 (3 * n + 4) + A018005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079109.P2818926627762905202

/-! ## A079109.P13123242508518435077

`A001222(A028898(A135481(n)+A011782(n)))`
-/

namespace A079109.P13123242508518435077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028898 (A135481 n + A011782 n).toNat).toNat

end

end A079109.P13123242508518435077

/-! ## A079109.P13332027790573780340

`A001221(A158642(n+1))`
-/

namespace A079109.P13332027790573780340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A158642 (n + 1)).toNat

end

end A079109.P13332027790573780340

/-!
# A079111: Numbers n such that 2*n+1 or n itself is prime.

The programs for A079111, the canonical program `A079111.P4511102436320981456` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079111 has offset 1).

The definition of A079111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079111.P2794701229729659216

`lt[A237053(n), 2]`
-/

namespace A079111.P2794701229729659216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079111.P2794701229729659216

namespace A079111

/-- `lt[A237053(n), 2]` -/
def P2794701229729659216.Spec : Prop :=
  ∀ n, (P2794701229729659216.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P15122789410469282962

`record[gcd(n-A000010(n+1), ceil(n/2))]`
-/

namespace A079111.P15122789410469282962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A000010 (n + 1)) ⌈(n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079111.P15122789410469282962

namespace A079111

/-- `record[gcd(n-A000010(n+1), ceil(n/2))]` -/
def P15122789410469282962.Spec : Prop :=
  ∀ n, (P15122789410469282962.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P4511102436320981456

`record[(floor(n/2)+1)%(A006530(n+2)+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A079111

/-- `record[(floor(n/2)+1)%(A006530(n+2)+1)]` -/
def P4511102436320981456.Spec : Prop :=
  ∀ n, P4511102436320981456.a n = A079111 (n + 1)

theorem P4511102436320981456.correct : P4511102436320981456.Spec := by
  intro n
  simp only [A079111, Nat.add_sub_cancel]

end A079111

/-! ## A079111.P12846963149234199918

`eq[1, A000041(A237053(n)²)]`
-/

namespace A079111.P12846963149234199918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A237053 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079111.P12846963149234199918

namespace A079111

/-- `eq[1, A000041(A237053(n)²)]` -/
def P12846963149234199918.Spec : Prop :=
  ∀ n, (P12846963149234199918.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P12996666594282433328

`eq[1, A103222(A237053(n)+1)]`
-/

namespace A079111.P12996666594282433328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103222 (A237053 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079111.P12996666594282433328

namespace A079111

/-- `eq[1, A103222(A237053(n)+1)]` -/
def P12996666594282433328.Spec : Prop :=
  ∀ n, (P12996666594282433328.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P424629661009164024

`eq[1, A101203(A237053(n)+2)]`
-/

namespace A079111.P424629661009164024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (A237053 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079111.P424629661009164024

namespace A079111

/-- `eq[1, A101203(A237053(n)+2)]` -/
def P424629661009164024.Spec : Prop :=
  ∀ n, (P424629661009164024.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P5777320349722381887

`eq[2, A285068(A237053(n)+1)]`
-/

namespace A079111.P5777320349722381887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285068 (A237053 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079111.P5777320349722381887

namespace A079111

/-- `eq[2, A285068(A237053(n)+1)]` -/
def P5777320349722381887.Spec : Prop :=
  ∀ n, (P5777320349722381887.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P1887403746516217147

`eq[2, A330644(A237053(n)+2)]`
-/

namespace A079111.P1887403746516217147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330644 (A237053 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079111.P1887403746516217147

namespace A079111

/-- `eq[2, A330644(A237053(n)+2)]` -/
def P1887403746516217147.Spec : Prop :=
  ∀ n, (P1887403746516217147.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P10239883707115174046

`eq[1, A266719(2*A237053(n))]`
-/

namespace A079111.P10239883707115174046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (2 * A237053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079111.P10239883707115174046

namespace A079111

/-- `eq[1, A266719(2*A237053(n))]` -/
def P10239883707115174046.Spec : Prop :=
  ∀ n, (P10239883707115174046.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P6965671111112213259

`eq[1, A000700(A237053(n)²²)]`
-/

namespace A079111.P6965671111112213259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 ((A237053 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079111.P6965671111112213259

namespace A079111

/-- `eq[1, A000700(A237053(n)²²)]` -/
def P6965671111112213259.Spec : Prop :=
  ∀ n, (P6965671111112213259.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P17669238272467902582

`∪[A000040(n+1), A005097(n+1)]`
-/

namespace A079111.P17669238272467902582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079111.P17669238272467902582

namespace A079111

/-- `∪[A000040(n+1), A005097(n+1)]` -/
def P17669238272467902582.Spec : Prop :=
  ∀ n, (P17669238272467902582.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P5356929727773120519

`∪[A004139(n+1), A005097(n+1)]`
-/

namespace A079111.P5356929727773120519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079111.P5356929727773120519

namespace A079111

/-- `∪[A004139(n+1), A005097(n+1)]` -/
def P5356929727773120519.Spec : Prop :=
  ∀ n, (P5356929727773120519.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P13217261638681738641

`∪[A005097(n+1), A006005(n+1)]`
-/

namespace A079111.P13217261638681738641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079111.P13217261638681738641

namespace A079111

/-- `∪[A005097(n+1), A006005(n+1)]` -/
def P13217261638681738641.Spec : Prop :=
  ∀ n, (P13217261638681738641.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P17698282041029214441

`∪[A005097(n+1), A008578(n+1)]`
-/

namespace A079111.P17698282041029214441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079111.P17698282041029214441

namespace A079111

/-- `∪[A005097(n+1), A008578(n+1)]` -/
def P17698282041029214441.Spec : Prop :=
  ∀ n, (P17698282041029214441.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P6800371196359632408

`∪[A005097(n+1), A045319(n+1)]`
-/

namespace A079111.P6800371196359632408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079111.P6800371196359632408

namespace A079111

/-- `∪[A005097(n+1), A045319(n+1)]` -/
def P6800371196359632408.Spec : Prop :=
  ∀ n, (P6800371196359632408.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P7483527555469191352

`∪[A005097(n+1), A045344(n+1)]`
-/

namespace A079111.P7483527555469191352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079111.P7483527555469191352

namespace A079111

/-- `∪[A005097(n+1), A045344(n+1)]` -/
def P7483527555469191352.Spec : Prop :=
  ∀ n, (P7483527555469191352.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P10229997272645719081

`∪[A053176(n+1), A005097(n+1)]`
-/

namespace A079111.P10229997272645719081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079111.P10229997272645719081

namespace A079111

/-- `∪[A053176(n+1), A005097(n+1)]` -/
def P10229997272645719081.Spec : Prop :=
  ∀ n, (P10229997272645719081.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P6176458919939749787

`∪[A005097(n+1), A006093(n+1)+1]`
-/

namespace A079111.P6176458919939749787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079111.P6176458919939749787

namespace A079111

/-- `∪[A005097(n+1), A006093(n+1)+1]` -/
def P6176458919939749787.Spec : Prop :=
  ∀ n, (P6176458919939749787.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P1771129138078057141

`eq[A101203(A237053(n)²), A237053(n)]`
-/

namespace A079111.P1771129138078057141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (A237053 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079111.P1771129138078057141

namespace A079111

/-- `eq[A101203(A237053(n)²), A237053(n)]` -/
def P1771129138078057141.Spec : Prop :=
  ∀ n, (P1771129138078057141.a n : ℤ) = A079111 (n + 1)

end A079111

/-! ## A079111.P5412535004217628934

`eq[A171397(A237053(n)²), A237053(n)]`
-/

namespace A079111.P5412535004217628934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A237053 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079111.P5412535004217628934

namespace A079111

/-- `eq[A171397(A237053(n)²), A237053(n)]` -/
def P5412535004217628934.Spec : Prop :=
  ∀ n, (P5412535004217628934.a n : ℤ) = A079111 (n + 1)

end A079111

/-!
# A079112: Numbers in binary representation with odd length.

The programs for A079112, the canonical program `A079112.P9511024722204369267` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079112 has offset 0).

The definition of A079112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079112.P9511024722204369267

`A007088(eq[1, 1-a(floor(n/2))])` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079112

/-- `A007088(eq[1, 1-a(floor(n/2))])` -/
def P9511024722204369267.Spec : Prop :=
  ∀ n, P9511024722204369267.a n = A079112 n

theorem P9511024722204369267.correct : P9511024722204369267.Spec := by
  intro n
  simp only [A079112]

end A079112

/-! ## A079112.P11570488276325849470

`A007088(lt[n-2*a(floor(n/2)), 3])` with `a(0)=1`
-/

namespace A079112.P11570488276325849470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - 2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A079112.P11570488276325849470

namespace A079112

/-- `A007088(lt[n-2*a(floor(n/2)), 3])` -/
def P11570488276325849470.Spec : Prop :=
  ∀ n, P11570488276325849470.a n = A079112 n

end A079112

/-! ## A079112.P10506028300722675697

`A039724(A338248(n))`
-/

namespace A079112.P10506028300722675697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039724 (A338248 n).toNat

end

end A079112.P10506028300722675697

namespace A079112

/-- `A039724(A338248(n))` -/
def P10506028300722675697.Spec : Prop :=
  ∀ n, P10506028300722675697.a n = A079112 n

end A079112

/-! ## A079112.P12590493867973458243

`A007088(lt[n, A088442(n)])`
-/

namespace A079112.P12590493867973458243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079112.P12590493867973458243

namespace A079112

/-- `A007088(lt[n, A088442(n)])` -/
def P12590493867973458243.Spec : Prop :=
  ∀ n, P12590493867973458243.a n = A079112 n

end A079112

/-! ## A079112.P12179535873463683763

`A007088(lt[n, A090569(2*(n+1))])`
-/

namespace A079112.P12179535873463683763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090569 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079112.P12179535873463683763

namespace A079112

/-- `A007088(lt[n, A090569(2*(n+1))])` -/
def P12179535873463683763.Spec : Prop :=
  ∀ n, P12179535873463683763.a n = A079112 n

end A079112

/-!
# A079113: Number of 3's in n# (n primorial) = 3's in A002110(n).

The programs for A079113, there is no canonical definition to state claims against.
-/

/-! ## A079113.P4355802312872816631

`A002024(A260378(n+2))%A029062(n)`
-/

namespace A079113.P4355802312872816631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A260378 (n + 2)).toNat) (A029062 n)

end

end A079113.P4355802312872816631

/-! ## A079113.P10376990766073451357

`A053879(A322384(n+1)*A322387(n+3))`
-/

namespace A079113.P10376990766073451357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053879 (A322384 (n + 1) * A322387 (n + 3)).toNat

end

end A079113.P10376990766073451357

/-! ## A079113.P13088429434679425696

`A118682(A036612(n))`
-/

namespace A079113.P13088429434679425696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118682 (A036612 n).toNat

end

end A079113.P13088429434679425696

/-! ## A079113.P12290982707749390642

`A089615(A095378(n+1))`
-/

namespace A079113.P12290982707749390642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089615 (A095378 (n + 1)).toNat

end

end A079113.P12290982707749390642

/-! ## A079113.P8182551522643650176

`A086076(A359248(n+1))`
-/

namespace A079113.P8182551522643650176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086076 (A359248 (n + 1)).toNat

end

end A079113.P8182551522643650176

/-!
# A079114: Least squarefree number > n that is coprime to n.

The programs for A079114, there is no canonical definition to state claims against.
-/

/-! ## A079114.P2421099403911572706

`A079115(n+1)+1+n`
-/

namespace A079114.P2421099403911572706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (n + 1) + 1 + (n : ℤ)

end

end A079114.P2421099403911572706

/-! ## A079114.P8547432373955388656

`A005555(A079115(n+1))+n`
-/

namespace A079114.P8547432373955388656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A079115 (n + 1)).toNat + (n : ℤ)

end

end A079114.P8547432373955388656

/-! ## A079114.P10267214237146560078

`A020725(A079115(n+1)+n)`
-/

namespace A079114.P10267214237146560078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A079115 (n + 1) + (n : ℤ)).toNat

end

end A079114.P10267214237146560078

/-! ## A079114.P406389845580784447

`A079228(A079115(n+1)+n)`
-/

namespace A079114.P406389845580784447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (A079115 (n + 1) + (n : ℤ)).toNat

end

end A079114.P406389845580784447

/-! ## A079114.P15724824507074588477

`A285735(2*(n+2))%A355852(2*(n+2))`
-/

namespace A079114.P15724824507074588477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285735 (2 * (n + 2))) (A355852 (2 * (n + 2)))

end

end A079114.P15724824507074588477

/-!
# A079115: Least k such that n+k is squarefree and coprime to n.

The programs for A079115, there is no canonical definition to state claims against.
-/

/-! ## A079115.P3320086000711672176

`A079114(n+1)-(n+1)`
-/

namespace A079115.P3320086000711672176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (n + 1) - (n + 1 : ℤ)

end

end A079115.P3320086000711672176

/-! ## A079115.P4231585082328743448

`A004873(A079114(n+1)-n)`
-/

namespace A079115.P4231585082328743448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (A079114 (n + 1) - (n : ℤ)).toNat

end

end A079115.P4231585082328743448

/-! ## A079115.P1513394369162250096

`A008554(A079114(n+1)-n)`
-/

namespace A079115.P1513394369162250096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A079114 (n + 1) - (n : ℤ)).toNat

end

end A079115.P1513394369162250096

/-! ## A079115.P2734057145884032415

`A023443(A079114(n+1)-n)`
-/

namespace A079115.P2734057145884032415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A079114 (n + 1) - (n : ℤ)).toNat

end

end A079115.P2734057145884032415

/-! ## A079115.P2289593401781849765

`A298639(A079114(n+1)-n)`
-/

namespace A079115.P2289593401781849765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298639 (A079114 (n + 1) - (n : ℤ)).toNat

end

end A079115.P2289593401781849765

/-! ## A079115.P6684094533498508467

`A028310(A079114(n+1)%(n+1))`
-/

namespace A079115.P6684094533498508467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A079114 (n + 1)) (n + 1 : ℤ)).toNat

end

end A079115.P6684094533498508467

/-! ## A079115.P6334355702740117991

`abs(A079114(n+1)+A001478(n+1))`
-/

namespace A079115.P6334355702740117991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079114 (n + 1) + A001478 (n + 1)|

end

end A079115.P6334355702740117991

/-! ## A079115.P16435121672399113863

`A002260(A079114(n+1)+∑[n])`
-/

namespace A079115.P16435121672399113863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A079114 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A079115.P16435121672399113863

/-!
# A079116: a(n) = floor(1/(n-1) * Sum_{k=1..n-1} a(k)^(n/k)), given a(0)=1, a(1)=2, a(2)=3.

The programs for A079116, there is no canonical definition to state claims against.
-/

/-! ## A079116.P8591250519823479044

`A135491(n)-A135660(A005409(n+1))`
-/

namespace A079116.P8591250519823479044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n - A135660 (A005409 (n + 1)).toNat

end

end A079116.P8591250519823479044

/-! ## A079116.P15101083965264131903

`∑[A067086(A093637(n))]`
-/

namespace A079116.P15101083965264131903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A093637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079116.P15101083965264131903

/-! ## A079116.P12998779822907610749

`A100196(A246566(n)+A051163(n))`
-/

namespace A079116.P12998779822907610749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A246566 n + A051163 n).toNat

end

end A079116.P12998779822907610749

/-! ## A079116.P7428960368020383671

`A220658(n)+A046155(A202207(n))`
-/

namespace A079116.P7428960368020383671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 n + A046155 (A202207 n).toNat

end

end A079116.P7428960368020383671

/-! ## A079116.P6169971300035825631

`A001462(∑[A085421(n)]-A090344(n))`
-/

namespace A079116.P6169971300035825631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j - A090344 n).toNat

end

end A079116.P6169971300035825631

/-!
# A079117: a(n) = floor(1/(n-1) * Sum_{k=1..n-1} a(k)^(n/k)), given a(0)=1, a(1)=2, a(2)=5.

The programs for A079117, there is no canonical definition to state claims against.
-/

/-! ## A079117.P7562052822970233894

`A136298(n)+A024326(A071727(n))`
-/

namespace A079117.P7562052822970233894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 n + A024326 (A071727 n).toNat

end

end A079117.P7562052822970233894

/-! ## A079117.P18241724584362024307

`A136298(n)+A024326(A071735(n))`
-/

namespace A079117.P18241724584362024307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 n + A024326 (A071735 n).toNat

end

end A079117.P18241724584362024307

/-! ## A079117.P2622906061448850399

`A136298(n)+A021913(A148789(n))`
-/

namespace A079117.P2622906061448850399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 n + A021913 (A148789 n).toNat

end

end A079117.P2622906061448850399

/-! ## A079117.P5637863202494385558

`A288223(A000110(n))+A136298(n)`
-/

namespace A079117.P5637863202494385558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288223 (A000110 n).toNat + A136298 n

end

end A079117.P5637863202494385558

/-! ## A079117.P2459191617374831243

`A288223(A104429(n))+A136298(n)`
-/

namespace A079117.P2459191617374831243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288223 (A104429 n).toNat + A136298 n

end

end A079117.P2459191617374831243

/-!
# A079118: a(n) = floor(1/(n-1) * Sum_{k=1..n-1} a(k)^(n/k)), given a(0)=1, a(1)=2, a(2)=6.

The programs for A079118, there is no canonical definition to state claims against.
-/

/-! ## A079118.P6694440778374079290

`A226143(A151468(n+1))`
-/

namespace A079118.P6694440778374079290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A151468 (n + 1)).toNat

end

end A079118.P6694440778374079290

/-! ## A079118.P709450313990993337

`A288512(A171476(n))+floor((9/4)^n)`
-/

namespace A079118.P709450313990993337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288512 (A171476 n).toNat + ⌊((9 : ℚ) / 4) ^ n⌋

end

end A079118.P709450313990993337

/-! ## A079118.P16760148312344955230

`A278761(A018252(A000045(n+3)))`
-/

namespace A079118.P16760148312344955230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278761 (A018252 (A000045 (n + 3)).toNat).toNat

end

end A079118.P16760148312344955230

/-!
# A079119: a(n) = floor(1/(n-1) * Sum_{k=1..n-1} a(k)^(n/k)), given a(0)=1, a(1)=2, a(2)=7.

The programs for A079119, there is no canonical definition to state claims against.
-/

/-! ## A079119.P5114991534655625748

`A215069(A196630(n+1))-A202241(n)`
-/

namespace A079119.P5114991534655625748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215069 (A196630 (n + 1)).toNat - A202241 n

end

end A079119.P5114991534655625748

/-! ## A079119.P1553869563368670422

`or(A018013(n), A295653(A092186(n)))`
-/

namespace A079119.P1553869563368670422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018013 n) (A295653 (A092186 n).toNat)

end

end A079119.P1553869563368670422

/-! ## A079119.P810574241090136860

`A130783(n)+A006843(A103943(n+1))`
-/

namespace A079119.P810574241090136860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 n + A006843 (A103943 (n + 1)).toNat

end

end A079119.P810574241090136860

/-!
# A079120: a(n) = floor(1/(n-1) * Sum_{k=1..n-1} a(k)^(n/k)), given a(0)=1, a(1)=3, a(2)=7.

The programs for A079120, there is no canonical definition to state claims against.
-/

/-! ## A079120.P17197651746690848090

`A364350(∑[2*(n+2)])`
-/

namespace A079120.P17197651746690848090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079120.P17197651746690848090

/-! ## A079120.P15892847000869204549

`A087843(A200781(n))`
-/

namespace A079120.P15892847000869204549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087843 (A200781 n).toNat

end

end A079120.P15892847000869204549

/-!
# A079121: a(n+1) = floor((1/n)*(Sum_{k=1..n} a(k)^((n+1)/k))), given a(0)=1, a(1)=3, a(2)=8.

The programs for A079121, there is no canonical definition to state claims against.
-/

/-! ## A079121.P100477018430504217

`A027077(n+1)-A014372(A064731(n+1))`
-/

namespace A079121.P100477018430504217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027077 (n + 1) - A014372 (A064731 (n + 1)).toNat

end

end A079121.P100477018430504217

/-! ## A079121.P4936534971874099066

`A062108(A094687(2*n+1)+A028374(n+2))`
-/

namespace A079121.P4936534971874099066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A094687 (2 * n + 1) + A028374 (n + 2)).toNat

end

end A079121.P4936534971874099066

/-!
# A079122: Number of ways to partition 2*n into distinct positive integers not greater than n.

The programs for A079122, there is no canonical definition to state claims against.
-/

/-! ## A079122.P12230496778908470352

`A258259(2*n)`
-/

namespace A079122.P12230496778908470352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258259 (2 * n)

end

end A079122.P12230496778908470352

/-! ## A079122.P2707727797526562909

`A258259(n+n)/A020985(n)²`
-/

namespace A079122.P2707727797526562909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258259 (n + n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A079122.P2707727797526562909

/-! ## A079122.P5560010177351061773

`A258259(n+n)+∑{p}[n, A000122(#)]`
-/

namespace A079122.P5560010177351061773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258259 (n + n) + ∑ p ∈ Nat.primeFactors (f1 n), A000122 p

end

end A079122.P5560010177351061773

/-! ## A079122.P11904241599628458683

`lcm(A008836(n+1), A258259(A005843(n)))`
-/

namespace A079122.P11904241599628458683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A258259 (A005843 n).toNat)

end

end A079122.P11904241599628458683

/-! ## A079122.P12028670357604913454

`A000009(n)+A035294(n)-A036469(n)`
-/

namespace A079122.P12028670357604913454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A035294 n - A036469 n)

end

end A079122.P12028670357604913454

/-! ## A079122.P3160175842690949964

`A258259(n+n)/A000188(A136548(n+1))`
-/

namespace A079122.P3160175842690949964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258259 (n + n) : ℚ) / (A000188 (A136548 (n + 1)).toNat : ℚ)

end

end A079122.P3160175842690949964

/-! ## A079122.P4919321234855638328

`A258259(n+n)+A243148(∑[n+1])`
-/

namespace A079122.P4919321234855638328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258259 (n + n) + A243148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079122.P4919321234855638328

/-! ## A079122.P15517295519529439502

`A000009(2*n)-A118463(A089633(n))`
-/

namespace A079122.P15517295519529439502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A118463 (A089633 n).toNat

end

end A079122.P15517295519529439502

/-! ## A079122.P16427419255771263174

`A079126(∑[4*n])`
-/

namespace A079122.P16427419255771263174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079122.P16427419255771263174

/-!
# A079124: Number of ways to partition n into distinct positive integers <= phi(n), where phi is Euler's totient function (A000010).

The programs for A079124, there is no canonical definition to state claims against.
-/

/-! ## A079124.P9235522331754474682

`A196238(A000837(n))-A018783(n)`
-/

namespace A079124.P9235522331754474682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A000837 n).toNat - A018783 n

end

end A079124.P9235522331754474682

/-!
# A079125: Number of ways to partition the sum of all divisors of n (sigma(n), A000203) into distinct positive integers not greater than n.

The programs for A079125, there is no canonical definition to state claims against.
-/

/-! ## A079125.P9135459786255057980

`A053632(A000203(n+1)+∑[∑[n]+1])`
-/

namespace A079125.P9135459786255057980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 (A000203 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A079125.P9135459786255057980

/-!
# A079126: Triangle T(n,k) of numbers of partitions of n into distinct positive integers <= k, 0<=k<=n.

The programs for A079126, there is no canonical definition to state claims against.
-/

/-! ## A079126.P16945479725942852844

`A026836(A245300(n)+1)`
-/

namespace A079126.P16945479725942852844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A245300 n + 1).toNat

end

end A079126.P16945479725942852844

/-! ## A079126.P14682990960383758969

`A070936(A245300(n)+A025581(n))`
-/

namespace A079126.P14682990960383758969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (A245300 n + A025581 n).toNat

end

end A079126.P14682990960383758969

/-! ## A079126.P13921404634111907313

`A059607(A245300(n)+A108872(n+1))`
-/

namespace A079126.P13921404634111907313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (A245300 n + A108872 (n + 1)).toNat

end

end A079126.P13921404634111907313

/-! ## A079126.P17487417904541754739

`A267263(lcm(6, A343088(n)))`
-/

namespace A079126.P17487417904541754739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (Int.lcm 6 (A343088 n))

end

end A079126.P17487417904541754739

/-! ## A079126.P10017733124442226919

`A097867(A067310(n))`
-/

namespace A079126.P10017733124442226919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097867 (A067310 n).toNat

end

end A079126.P10017733124442226919

/-!
# A079127: Number of 5's in n# (n primorial).

The programs for A079127, there is no canonical definition to state claims against.
-/

/-! ## A079127.P4141116561644762754

`(2-char[A022297(n+1)-1])%A089608(A213679(n)+1)`
-/

namespace A079127.P4141116561644762754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (A089608 (A213679 n + 1).toNat)

end

end A079127.P4141116561644762754

/-!
# A079128: Number of degree-n permutations with (mutually) relatively prime cycle lengths.

The programs for A079128, there is no canonical definition to state claims against.
-/

/-! ## A079128.P12549731028499138712

`A346085(∑[n+1]+1)`
-/

namespace A079128.P12549731028499138712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A079128.P12549731028499138712

/-! ## A079128.P14491172439460430904

`A000007(n)+record[A346085(n+1)]`
-/

namespace A079128.P14491172439460430904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079128.P14491172439460430904

/-! ## A079128.P1168032159589690141

`record[A094587(n)]-A226388(n+1)`
-/

namespace A079128.P1168032159589690141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A226388 (n + 1)

end

end A079128.P1168032159589690141

/-! ## A079128.P9305431256134082828

`A000142(n+1)-A226388(n+1)`
-/

namespace A079128.P9305431256134082828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A226388 (n + 1)

end

end A079128.P9305431256134082828

/-! ## A079128.P9069470711338690840

`or(A000007(n), A346085(A000124(n+1)))`
-/

namespace A079128.P9069470711338690840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A346085 (A000124 (n + 1)).toNat)

end

end A079128.P9069470711338690840

/-! ## A079128.P9208105732944329280

`A346085(A000124(n+1))+A000007(n+1)`
-/

namespace A079128.P9208105732944329280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 (A000124 (n + 1)).toNat + A000007 (n + 1)

end

end A079128.P9208105732944329280

/-! ## A079128.P6955450164548408368

`A248764(n+1)*A248766(n+1)-A226388(n+1)`
-/

namespace A079128.P6955450164548408368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248764 (n + 1) * A248766 (n + 1) - A226388 (n + 1)

end

end A079128.P6955450164548408368

/-!
# A079129: Number of degree-n permutations with pairwise coprime cycle lengths.

The programs for A079129, there is no canonical definition to state claims against.
-/

/-! ## A079129.P12321344779757104898

`xor(A110447(n), A285716(A000698(n)))`
-/

namespace A079129.P12321344779757104898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110447 n) (A285716 (A000698 n).toNat)

end

end A079129.P12321344779757104898

/-! ## A079129.P15906871534819780736

`∏{e}[lcm(n^(n-1), a(n-1)), #+1]` with `a(0)=1`
-/

namespace A079129.P15906871534819780736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (SequenceMachineLib.roundAway ((n : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (f1 (n - 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A079129.P15906871534819780736

/-!
# A079130: Primes such that iterated sum-of-digits (A038194) is a square.

The programs for A079130, the canonical program `A079130.P8087862654738107141` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079130 has offset 1).

The definition of A079130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079130.P8087862654738107141

`p?[a(n-2)+9]` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079130

/-- `p?[a(n-2)+9]` -/
def P8087862654738107141.Spec : Prop :=
  ∀ n, (P8087862654738107141.a n : ℤ) = A079130 (n + 1)

theorem P8087862654738107141.correct : P8087862654738107141.Spec := by
  intro n
  simp only [A079130, Nat.add_sub_cancel]

end A079130

/-! ## A079130.P6612201091023740623

`p?[gcd(3, n+1)+3*n]`
-/

namespace A079130.P6612201091023740623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1) + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079130.P6612201091023740623

namespace A079130

/-- `p?[gcd(3, n+1)+3*n]` -/
def P6612201091023740623.Spec : Prop :=
  ∀ n, (P6612201091023740623.a n : ℤ) = A079130 (n + 1)

end A079130

/-! ## A079130.P13303868303575376074

`p?[ogf((x+3x^2+2x^3+3x^4)/(1-x-x^3+x^4))]`
-/

namespace A079130.P13303868303575376074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 2, 3] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079130.P13303868303575376074

namespace A079130

/-- `p?[ogf((x+3x^2+2x^3+3x^4)/(1-x-x^3+x^4))]` -/
def P13303868303575376074.Spec : Prop :=
  ∀ n, P13303868303575376074.a n = A079130 (n + 1)

end A079130

/-! ## A079130.P9267056640312425601

`∩[A002476(n+1), A166849(n+1)]`
-/

namespace A079130.P9267056640312425601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079130.P9267056640312425601

namespace A079130

/-- `∩[A002476(n+1), A166849(n+1)]` -/
def P9267056640312425601.Spec : Prop :=
  ∀ n, (P9267056640312425601.a n : ℤ) = A079130 (n + 1)

end A079130

/-! ## A079130.P14668612121123891974

`∩[A007645(n+1), A166849(n+1)]`
-/

namespace A079130.P14668612121123891974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079130.P14668612121123891974

namespace A079130

/-- `∩[A007645(n+1), A166849(n+1)]` -/
def P14668612121123891974.Spec : Prop :=
  ∀ n, (P14668612121123891974.a n : ℤ) = A079130 (n + 1)

end A079130

/-! ## A079130.P7439426903751329968

`∩[A055664(n+1), A166849(n+1)]`
-/

namespace A079130.P7439426903751329968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079130.P7439426903751329968

namespace A079130

/-- `∩[A055664(n+1), A166849(n+1)]` -/
def P7439426903751329968.Spec : Prop :=
  ∀ n, (P7439426903751329968.a n : ℤ) = A079130 (n + 1)

end A079130

/-! ## A079130.P6672262908860157578

`∩[A123365(n+1), A166849(n+1)]`
-/

namespace A079130.P6672262908860157578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079130.P6672262908860157578

namespace A079130

/-- `∩[A123365(n+1), A166849(n+1)]` -/
def P6672262908860157578.Spec : Prop :=
  ∀ n, (P6672262908860157578.a n : ℤ) = A079130 (n + 1)

end A079130

/-! ## A079130.P7652319977822470387

`filter[A166849(n+1), A070563(#)]`
-/

namespace A079130.P7652319977822470387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A079130.P7652319977822470387

namespace A079130

/-- `filter[A166849(n+1), A070563(#)]` -/
def P7652319977822470387.Spec : Prop :=
  ∀ n, P7652319977822470387.a n = A079130 (n + 1)

end A079130

/-! ## A079130.P18013541081662209003

`p?[n*val(n+2, 3)]`
-/

namespace A079130.P18013541081662209003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (n + 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079130.P18013541081662209003

namespace A079130

/-- `p?[n*val(n+2, 3)]` -/
def P18013541081662209003.Spec : Prop :=
  ∀ n, (P18013541081662209003.a n : ℤ) = A079130 (n + 1)

end A079130

/-! ## A079130.P11956934037854698224

`p?[lcm(n, val(n+2, 3))]`
-/

namespace A079130.P11956934037854698224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (SequenceMachineLib.valuation (n + 2) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079130.P11956934037854698224

namespace A079130

/-- `p?[lcm(n, val(n+2, 3))]` -/
def P11956934037854698224.Spec : Prop :=
  ∀ n, (P11956934037854698224.a n : ℤ) = A079130 (n + 1)

end A079130

/-! ## A079130.P12700729689077810684

`filter[A166849(n+1), A353815(#)]`
-/

namespace A079130.P12700729689077810684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A079130.P12700729689077810684

namespace A079130

/-- `filter[A166849(n+1), A353815(#)]` -/
def P12700729689077810684.Spec : Prop :=
  ∀ n, P12700729689077810684.a n = A079130 (n + 1)

end A079130

/-! ## A079130.P2285521065325015610

`filter[A166849(n+1), A353816(#)]`
-/

namespace A079130.P2285521065325015610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A079130.P2285521065325015610

namespace A079130

/-- `filter[A166849(n+1), A353816(#)]` -/
def P2285521065325015610.Spec : Prop :=
  ∀ n, P2285521065325015610.a n = A079130 (n + 1)

end A079130

/-! ## A079130.P16176232376389640899

`filter[A166849(n+1), A354982(#)]`
-/

namespace A079130.P16176232376389640899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A079130.P16176232376389640899

namespace A079130

/-- `filter[A166849(n+1), A354982(#)]` -/
def P16176232376389640899.Spec : Prop :=
  ∀ n, P16176232376389640899.a n = A079130 (n + 1)

end A079130

/-! ## A079130.P9526016426042803315

`p?[A306771(n+1)-2]`
-/

namespace A079130.P9526016426042803315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306771 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079130.P9526016426042803315

namespace A079130

/-- `p?[A306771(n+1)-2]` -/
def P9526016426042803315.Spec : Prop :=
  ∀ n, P9526016426042803315.a n = A079130 (n + 1)

end A079130

/-! ## A079130.P3673920194841154602

`p?[2*A301451(n+1)-1]`
-/

namespace A079130.P3673920194841154602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301451 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079130.P3673920194841154602

namespace A079130

/-- `p?[2*A301451(n+1)-1]` -/
def P3673920194841154602.Spec : Prop :=
  ∀ n, P3673920194841154602.a n = A079130 (n + 1)

end A079130

/-! ## A079130.P7093027418680428517

`filter[A166849(n+1), A135461(#)]`
-/

namespace A079130.P7093027418680428517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A079130.P7093027418680428517

namespace A079130

/-- `filter[A166849(n+1), A135461(#)]` -/
def P7093027418680428517.Spec : Prop :=
  ∀ n, P7093027418680428517.a n = A079130 (n + 1)

end A079130

/-! ## A079130.P5823871017773580973

`filter[A166849(n+1), A319691(#)]`
-/

namespace A079130.P5823871017773580973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A079130.P5823871017773580973

namespace A079130

/-- `filter[A166849(n+1), A319691(#)]` -/
def P5823871017773580973.Spec : Prop :=
  ∀ n, P5823871017773580973.a n = A079130 (n + 1)

end A079130

/-! ## A079130.P7323952629622657776

`p?[record[A105452(n+2)-n]]`
-/

namespace A079130.P7323952629622657776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105452 (n + 2) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079130.P7323952629622657776

namespace A079130

/-- `p?[record[A105452(n+2)-n]]` -/
def P7323952629622657776.Spec : Prop :=
  ∀ n, P7323952629622657776.a n = A079130 (n + 1)

end A079130

/-! ## A079130.P16788635425896655973

`∩[A166849(n+1), A016921(n)]`
-/

namespace A079130.P16788635425896655973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079130.P16788635425896655973

namespace A079130

/-- `∩[A166849(n+1), A016921(n)]` -/
def P16788635425896655973.Spec : Prop :=
  ∀ n, (P16788635425896655973.a n : ℤ) = A079130 (n + 1)

end A079130

/-!
# A079131: Primes such that iterated sum-of-digits (A038194) is odd.

The programs for A079131, the canonical program `A079131.P10326918755950100807` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079131 has offset 1).

The definition of A079131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079131.P10326918755950100807

`p?[ceil(dr(n+1)/5+2*n)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079131

/-- `p?[ceil(dr(n+1)/5+2*n)]` -/
def P10326918755950100807.Spec : Prop :=
  ∀ n, P10326918755950100807.a n = A079131 (n + 1)

theorem P10326918755950100807.correct : P10326918755950100807.Spec := by
  intro n
  simp only [A079131, Nat.add_sub_cancel]

end A079131

/-! ## A079131.P15206596652163548219

`p?[floor(9*n/5)]`
-/

namespace A079131.P15206596652163548219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079131.P15206596652163548219

namespace A079131

/-- `p?[floor(9*n/5)]` -/
def P15206596652163548219.Spec : Prop :=
  ∀ n, P15206596652163548219.a n = A079131 (n + 1)

end A079131

/-! ## A079131.P17586754175891554761

`A000040(eq[1, gcd(2, A038194(n+1))]+1)`
-/

namespace A079131.P17586754175891554761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A038194 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A079131.P17586754175891554761

namespace A079131

/-- `A000040(eq[1, gcd(2, A038194(n+1))]+1)` -/
def P17586754175891554761.Spec : Prop :=
  ∀ n, P17586754175891554761.a n = A079131 (n + 1)

end A079131

/-! ## A079131.P17041159128497867110

`A000040(eq[1, dr(A000040(n+1))%2]+1)`
-/

namespace A079131.P17041159128497867110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1)) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A079131.P17041159128497867110

namespace A079131

/-- `A000040(eq[1, dr(A000040(n+1))%2]+1)` -/
def P17041159128497867110.Spec : Prop :=
  ∀ n, P17041159128497867110.a n = A079131 (n + 1)

end A079131

/-! ## A079131.P9884838465604001940

`record[p?[dr(n+1)%4+n]]`
-/

namespace A079131.P9884838465604001940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ) % 4 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079131.P9884838465604001940

namespace A079131

/-- `record[p?[dr(n+1)%4+n]]` -/
def P9884838465604001940.Spec : Prop :=
  ∀ n, (P9884838465604001940.a n : ℤ) = A079131 (n + 1)

end A079131

/-! ## A079131.P8064152489687711589

`∑{d}[p?[2*n+A002265(n)+1], #]-1`
-/

namespace A079131.P8064152489687711589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A002265 n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A079131.P8064152489687711589

namespace A079131

/-- `∑{d}[p?[2*n+A002265(n)+1], #]-1` -/
def P8064152489687711589.Spec : Prop :=
  ∀ n, P8064152489687711589.a n = A079131 (n + 1)

end A079131

/-! ## A079131.P12487323704855913287

`record[A020639(A193766(n+2)-1)]`
-/

namespace A079131.P12487323704855913287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A193766 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079131.P12487323704855913287

namespace A079131

/-- `record[A020639(A193766(n+2)-1)]` -/
def P12487323704855913287.Spec : Prop :=
  ∀ n, P12487323704855913287.a n = A079131 (n + 1)

end A079131

/-! ## A079131.P3934579921908386850

`∩[A000040(n+1), A193766(n+1)-1]`
-/

namespace A079131.P3934579921908386850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079131.P3934579921908386850

namespace A079131

/-- `∩[A000040(n+1), A193766(n+1)-1]` -/
def P3934579921908386850.Spec : Prop :=
  ∀ n, (P3934579921908386850.a n : ℤ) = A079131 (n + 1)

end A079131

/-! ## A079131.P11319688204014446331

`∩[A182986(n+1), A193766(n+1)-1]`
-/

namespace A079131.P11319688204014446331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079131.P11319688204014446331

namespace A079131

/-- `∩[A182986(n+1), A193766(n+1)-1]` -/
def P11319688204014446331.Spec : Prop :=
  ∀ n, (P11319688204014446331.a n : ℤ) = A079131 (n + 1)

end A079131

/-! ## A079131.P16361465521143378344

`∩[A008578(n+2), A193766(n+2)-1]`
-/

namespace A079131.P16361465521143378344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079131.P16361465521143378344

namespace A079131

/-- `∩[A008578(n+2), A193766(n+2)-1]` -/
def P16361465521143378344.Spec : Prop :=
  ∀ n, (P16361465521143378344.a n : ℤ) = A079131 (n + 1)

end A079131

/-! ## A079131.P16094651297640038221

`record[A006530(A187318(n+2))]`
-/

namespace A079131.P16094651297640038221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A187318 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079131.P16094651297640038221

namespace A079131

/-- `record[A006530(A187318(n+2))]` -/
def P16094651297640038221.Spec : Prop :=
  ∀ n, P16094651297640038221.a n = A079131 (n + 1)

end A079131

/-! ## A079131.P10617364693333663349

`filter[A187318(n+1), A010051(#)]`
-/

namespace A079131.P10617364693333663349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079131.P10617364693333663349

namespace A079131

/-- `filter[A187318(n+1), A010051(#)]` -/
def P10617364693333663349.Spec : Prop :=
  ∀ n, P10617364693333663349.a n = A079131 (n + 1)

end A079131

/-! ## A079131.P1769702888615405293

`∩[A000040(n+1), A187318(n)]`
-/

namespace A079131.P1769702888615405293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079131.P1769702888615405293

namespace A079131

/-- `∩[A000040(n+1), A187318(n)]` -/
def P1769702888615405293.Spec : Prop :=
  ∀ n, (P1769702888615405293.a n : ℤ) = A079131 (n + 1)

end A079131

/-! ## A079131.P14790641963751394988

`∩[A051948(n+1), A187318(n)]`
-/

namespace A079131.P14790641963751394988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079131.P14790641963751394988

namespace A079131

/-- `∩[A051948(n+1), A187318(n)]` -/
def P14790641963751394988.Spec : Prop :=
  ∀ n, (P14790641963751394988.a n : ℤ) = A079131 (n + 1)

end A079131

/-! ## A079131.P15243048301043540255

`∩[A065091(n+1), A187318(n)]`
-/

namespace A079131.P15243048301043540255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079131.P15243048301043540255

namespace A079131

/-- `∩[A065091(n+1), A187318(n)]` -/
def P15243048301043540255.Spec : Prop :=
  ∀ n, (P15243048301043540255.a n : ℤ) = A079131 (n + 1)

end A079131

/-! ## A079131.P8716395075799635978

`∩[A106118(n+1), A187318(n)]`
-/

namespace A079131.P8716395075799635978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079131.P8716395075799635978

namespace A079131

/-- `∩[A106118(n+1), A187318(n)]` -/
def P8716395075799635978.Spec : Prop :=
  ∀ n, (P8716395075799635978.a n : ℤ) = A079131 (n + 1)

end A079131

/-! ## A079131.P4305972884163324680

`∩[A116974(n+1), A187318(n)]`
-/

namespace A079131.P4305972884163324680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079131.P4305972884163324680

namespace A079131

/-- `∩[A116974(n+1), A187318(n)]` -/
def P4305972884163324680.Spec : Prop :=
  ∀ n, (P4305972884163324680.a n : ℤ) = A079131 (n + 1)

end A079131

/-! ## A079131.P1469805758020979930

`∩[A175787(n+1), A187318(n)]`
-/

namespace A079131.P1469805758020979930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079131.P1469805758020979930

namespace A079131

/-- `∩[A175787(n+1), A187318(n)]` -/
def P1469805758020979930.Spec : Prop :=
  ∀ n, (P1469805758020979930.a n : ℤ) = A079131 (n + 1)

end A079131

/-! ## A079131.P17408847325140088892

`filter[A168183(2*n+1), A010051(#)]`
-/

namespace A079131.P17408847325140088892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079131.P17408847325140088892

namespace A079131

/-- `filter[A168183(2*n+1), A010051(#)]` -/
def P17408847325140088892.Spec : Prop :=
  ∀ n, P17408847325140088892.a n = A079131 (n + 1)

end A079131

/-! ## A079131.P13947451967719940448

`filter[A248375(2*n+1), A010051(#)]`
-/

namespace A079131.P13947451967719940448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079131.P13947451967719940448

namespace A079131

/-- `filter[A248375(2*n+1), A010051(#)]` -/
def P13947451967719940448.Spec : Prop :=
  ∀ n, P13947451967719940448.a n = A079131 (n + 1)

end A079131

/-!
# A079132: Primes such that iterated sum-of-digits (A038194) is even.

The programs for A079132, the canonical program `A079132.P6022590395731808561` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079132 has offset 1).

The definition of A079132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079132.P6022590395731808561

`p?[ceil(9*n/5)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079132

/-- `p?[ceil(9*n/5)]` -/
def P6022590395731808561.Spec : Prop :=
  ∀ n, P6022590395731808561.a n = A079132 (n + 1)

theorem P6022590395731808561.correct : P6022590395731808561.Spec := by
  intro n
  simp only [A079132, Nat.add_sub_cancel]

end A079132

/-! ## A079132.P17879419037614617322

`record[A020639(floor(9*n/4)+2)]`
-/

namespace A079132.P17879419037614617322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊9 * ((n : ℚ) / 4)⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079132.P17879419037614617322

namespace A079132

/-- `record[A020639(floor(9*n/4)+2)]` -/
def P17879419037614617322.Spec : Prop :=
  ∀ n, P17879419037614617322.a n = A079132 (n + 1)

end A079132

/-! ## A079132.P8002801803130740121

`∑{p}[p?[A001068(n)+2+n], #]`
-/

namespace A079132.P8002801803130740121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n + 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A079132.P8002801803130740121

namespace A079132

/-- `∑{p}[p?[A001068(n)+2+n], #]` -/
def P8002801803130740121.Spec : Prop :=
  ∀ n, (P8002801803130740121.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P15765571022684899400

`filter[A193766(n+1), A010051(#)]`
-/

namespace A079132.P15765571022684899400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079132.P15765571022684899400

namespace A079132

/-- `filter[A193766(n+1), A010051(#)]` -/
def P15765571022684899400.Spec : Prop :=
  ∀ n, P15765571022684899400.a n = A079132 (n + 1)

end A079132

/-! ## A079132.P9029024405420433291

`∩[A000040(n+1), A193766(n+1)]`
-/

namespace A079132.P9029024405420433291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P9029024405420433291

namespace A079132

/-- `∩[A000040(n+1), A193766(n+1)]` -/
def P9029024405420433291.Spec : Prop :=
  ∀ n, (P9029024405420433291.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P8835014154535063570

`∩[A008578(n+1), A193766(n+1)]`
-/

namespace A079132.P8835014154535063570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P8835014154535063570

namespace A079132

/-- `∩[A008578(n+1), A193766(n+1)]` -/
def P8835014154535063570.Spec : Prop :=
  ∀ n, (P8835014154535063570.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P17776970195059189039

`∩[A045319(n+1), A193766(n+1)]`
-/

namespace A079132.P17776970195059189039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P17776970195059189039

namespace A079132

/-- `∩[A045319(n+1), A193766(n+1)]` -/
def P17776970195059189039.Spec : Prop :=
  ∀ n, (P17776970195059189039.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P16868981589752005704

`∩[A045344(n+1), A193766(n+1)]`
-/

namespace A079132.P16868981589752005704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P16868981589752005704

namespace A079132

/-- `∩[A045344(n+1), A193766(n+1)]` -/
def P16868981589752005704.Spec : Prop :=
  ∀ n, (P16868981589752005704.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P11914526908074970899

`∩[A158611(n+1), A193766(n+1)]`
-/

namespace A079132.P11914526908074970899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P11914526908074970899

namespace A079132

/-- `∩[A158611(n+1), A193766(n+1)]` -/
def P11914526908074970899.Spec : Prop :=
  ∀ n, (P11914526908074970899.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P14416441976481981493

`∩[A166849(n+1), A193766(n+1)]`
-/

namespace A079132.P14416441976481981493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P14416441976481981493

namespace A079132

/-- `∩[A166849(n+1), A193766(n+1)]` -/
def P14416441976481981493.Spec : Prop :=
  ∀ n, (P14416441976481981493.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P11593653950740661573

`∩[A182986(n+1), A193766(n+1)]`
-/

namespace A079132.P11593653950740661573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P11593653950740661573

namespace A079132

/-- `∩[A182986(n+1), A193766(n+1)]` -/
def P11593653950740661573.Spec : Prop :=
  ∀ n, (P11593653950740661573.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P15254272899968418278

`∩[A193766(n+1), A326715(n+1)]`
-/

namespace A079132.P15254272899968418278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P15254272899968418278

namespace A079132

/-- `∩[A193766(n+1), A326715(n+1)]` -/
def P15254272899968418278.Spec : Prop :=
  ∀ n, (P15254272899968418278.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P15605194936836779345

`∩[A193766(n+1), A372059(n+1)]`
-/

namespace A079132.P15605194936836779345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P15605194936836779345

namespace A079132

/-- `∩[A193766(n+1), A372059(n+1)]` -/
def P15605194936836779345.Spec : Prop :=
  ∀ n, (P15605194936836779345.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P14348733857958451543

`∩[A106637(n+1), A166849(n+1)]`
-/

namespace A079132.P14348733857958451543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P14348733857958451543

namespace A079132

/-- `∩[A106637(n+1), A166849(n+1)]` -/
def P14348733857958451543.Spec : Prop :=
  ∀ n, (P14348733857958451543.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P12500706846176538548

`∩[A166849(n+1), A375242(n+1)]`
-/

namespace A079132.P12500706846176538548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P12500706846176538548

namespace A079132

/-- `∩[A166849(n+1), A375242(n+1)]` -/
def P12500706846176538548.Spec : Prop :=
  ∀ n, (P12500706846176538548.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P14868677570140444936

`filter[A168183(2*(n+1)), A010051(#)]`
-/

namespace A079132.P14868677570140444936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079132.P14868677570140444936

namespace A079132

/-- `filter[A168183(2*(n+1)), A010051(#)]` -/
def P14868677570140444936.Spec : Prop :=
  ∀ n, P14868677570140444936.a n = A079132 (n + 1)

end A079132

/-! ## A079132.P12760800113792775223

`filter[A193766(n+1), A080339(#)]`
-/

namespace A079132.P12760800113792775223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A079132.P12760800113792775223

namespace A079132

/-- `filter[A193766(n+1), A080339(#)]` -/
def P12760800113792775223.Spec : Prop :=
  ∀ n, P12760800113792775223.a n = A079132 (n + 1)

end A079132

/-! ## A079132.P8396545577756516083

`filter[A168183(2*(n+1)), A080339(#)]`
-/

namespace A079132.P8396545577756516083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A079132.P8396545577756516083

namespace A079132

/-- `filter[A168183(2*(n+1)), A080339(#)]` -/
def P8396545577756516083.Spec : Prop :=
  ∀ n, P8396545577756516083.a n = A079132 (n + 1)

end A079132

/-! ## A079132.P2261964956940042239

`∩[A193766(n+1), A221717(n+1)]`
-/

namespace A079132.P2261964956940042239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079132.P2261964956940042239

namespace A079132

/-- `∩[A193766(n+1), A221717(n+1)]` -/
def P2261964956940042239.Spec : Prop :=
  ∀ n, (P2261964956940042239.a n : ℤ) = A079132 (n + 1)

end A079132

/-! ## A079132.P5431045867288143235

`record[p?[A028904(2*n)]]`
-/

namespace A079132.P5431045867288143235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079132.P5431045867288143235

namespace A079132

/-- `record[p?[A028904(2*n)]]` -/
def P5431045867288143235.Spec : Prop :=
  ∀ n, P5431045867288143235.a n = A079132 (n + 1)

end A079132

/-!
# A079133: Number of 6's in n# (n primorial) = 6's in A002110(n).

The programs for A079133, there is no canonical definition to state claims against.
-/

/-! ## A079133.P1668686204036428154

`A054845(or(A054845(n), A375407(3*n+2)))`
-/

namespace A079133.P1668686204036428154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (Int.lor (A054845 n) (A375407 (3 * n + 2))).toNat

end

end A079133.P1668686204036428154

/-! ## A079133.P564076054857035047

`and(A000124(A293340(n)+6)-6, A032741(n))`
-/

namespace A079133.P564076054857035047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000124 (A293340 n + 6).toNat - 6) (A032741 n)

end

end A079133.P564076054857035047

/-! ## A079133.P8945167912561372307

`A124762(A289441(2*(n+1))+A037073(n+1))`
-/

namespace A079133.P8945167912561372307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A289441 (2 * (n + 1)) + A037073 (n + 1)).toNat

end

end A079133.P8945167912561372307

/-! ## A079133.P7089927567155712021

`A105027(A366463(3*n+1))%A020639(n+1)`
-/

namespace A079133.P7089927567155712021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105027 (A366463 (3 * n + 1)).toNat) (A020639 (n + 1))

end

end A079133.P7089927567155712021

/-!
# A079136: Positions of 0 in the repetition-resistant sequence A079101.

The programs for A079136, there is no canonical definition to state claims against.
-/

/-! ## A079136.P11174162197897593277

`comp[A079335(n+1)-1]+1`
-/

namespace A079136.P11174162197897593277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079335 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A079136.P11174162197897593277

/-! ## A079136.P3419904449648104456

`eq[0, A079101(n+1)]+1`
-/

namespace A079136.P3419904449648104456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079136.P3419904449648104456

/-! ## A079136.P14832946875307407752

`lt[A079101(abs(1-n)+1), 1]`
-/

namespace A079136.P14832946875307407752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079101 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079136.P14832946875307407752

/-! ## A079136.P7955095315207113322

`lt[n*A079101(A028310(n)), n]`
-/

namespace A079136.P7955095315207113322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079101 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079136.P7955095315207113322

/-! ## A079136.P16233450138041175793

`record[n+1-A036561(n)*A079101(n+1)]`
-/

namespace A079136.P16233450138041175793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A036561 n * A079101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079136.P16233450138041175793

/-! ## A079136.P2181868325436684732

`record[gcd(n+1, A079101(n+1)*A173021(n))]`
-/

namespace A079136.P2181868325436684732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A079101 (n + 1) * A173021 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079136.P2181868325436684732

/-! ## A079136.P6872816336465199617

`record[n+1-A079101(n+1)*A211978(n)]`
-/

namespace A079136.P6872816336465199617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A079101 (n + 1) * A211978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079136.P6872816336465199617

/-! ## A079136.P8907450776556545788

`A058933(p?[A079101(n+1)+A000040(n+1)])`
-/

namespace A079136.P8907450776556545788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079101 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079136.P8907450776556545788

/-! ## A079136.P16913267620790867171

`record[n+1-A045925(n)*A079101(n+1)]`
-/

namespace A079136.P16913267620790867171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A045925 n * A079101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079136.P16913267620790867171

/-!
# A079137: Number of (undirected) Hamiltonian paths on the 4 X n knight graph.

The programs for A079137, there is no canonical definition to state claims against.
-/

/-! ## A079137.P4983062958654682989

`2*A123936(n+1)`
-/

namespace A079137.P4983062958654682989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123936 (n + 1)

end

end A079137.P4983062958654682989

/-! ## A079137.P13802569759328197703

`A123936(A000027(n+1))+A123936(n+1)`
-/

namespace A079137.P13802569759328197703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123936 (A000027 (n + 1)).toNat + A123936 (n + 1)

end

end A079137.P13802569759328197703

/-! ## A079137.P2073695136559354783

`A123936(A028310(n+1))+A123936(n+1)`
-/

namespace A079137.P2073695136559354783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123936 (A028310 (n + 1)).toNat + A123936 (n + 1)

end

end A079137.P2073695136559354783

/-! ## A079137.P3083981562981320381

`and(A123936(n+1)+A123936(n+1), A057428(n))`
-/

namespace A079137.P3083981562981320381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123936 (n + 1) + A123936 (n + 1)) (A057428 n)

end

end A079137.P3083981562981320381

/-! ## A079137.P9948127745928949947

`A123935(n+1)/2`
-/

namespace A079137.P9948127745928949947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123935 (n + 1) : ℚ) / 2

end

end A079137.P9948127745928949947

/-! ## A079137.P15915682009956796960

`A123935(n+1)-A123936(n+1)-A123936(n+1)`
-/

namespace A079137.P15915682009956796960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123935 (n + 1) - A123936 (n + 1) - A123936 (n + 1)

end

end A079137.P15915682009956796960

/-!
# A079138: Primes of the form k^2 + 7.

The programs for A079138, there is no canonical definition to state claims against.
-/

/-! ## A079138.P17135504029039869687

`A114270(n+1)²+7`
-/

namespace A079138.P17135504029039869687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114270 (n + 1) ^ 2 + 7

end

end A079138.P17135504029039869687

/-! ## A079138.P3374876933619046760

`A189833(A114270(n+1))-A000034(A005843(n))`
-/

namespace A079138.P3374876933619046760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189833 (A114270 (n + 1)).toNat - A000034 (A005843 n).toNat

end

end A079138.P3374876933619046760

/-! ## A079138.P17023482019165311875

`A189833(A114270(n+1))-A000034(A008588(n))`
-/

namespace A079138.P17023482019165311875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189833 (A114270 (n + 1)).toNat - A000034 (A008588 n).toNat

end

end A079138.P17023482019165311875

/-! ## A079138.P13819692095765185748

`A087475(A114270(n+1))+A020639(A114271(n+1))`
-/

namespace A079138.P13819692095765185748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A114270 (n + 1)).toNat + A020639 (A114271 (n + 1)).toNat

end

end A079138.P13819692095765185748

/-! ## A079138.P6903590450850326499

`A189833(A114270(n+1))+A057428(A085099(n+1))`
-/

namespace A079138.P6903590450850326499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189833 (A114270 (n + 1)).toNat + A057428 (A085099 (n + 1)).toNat

end

end A079138.P6903590450850326499

/-! ## A079138.P12583248085757351519

`A117619(A114270(n+1))`
-/

namespace A079138.P12583248085757351519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 (A114270 (n + 1)).toNat

end

end A079138.P12583248085757351519

/-! ## A079138.P9090526747110934267

`A189833(A114270(n+1))-A000034(A078402(n+1))`
-/

namespace A079138.P9090526747110934267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189833 (A114270 (n + 1)).toNat - A000034 (A078402 (n + 1)).toNat

end

end A079138.P9090526747110934267

/-! ## A079138.P1835307310182895650

`p?[n²+7]`
-/

namespace A079138.P1835307310182895650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079138.P1835307310182895650

/-! ## A079138.P677056342236892855

`record[∑{p}[n²+7, #]]`
-/

namespace A079138.P677056342236892855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079138.P677056342236892855

/-! ## A079138.P15259243807791973457

`or(1, p?[n^2+7])`
-/

namespace A079138.P15259243807791973457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A079138.P15259243807791973457

/-! ## A079138.P5388139776581483026

`∏{d}[p?[n^2+7], #]`
-/

namespace A079138.P5388139776581483026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A079138.P5388139776581483026

/-! ## A079138.P649417857588983809

`∏{p}[p?[n*(2*n-n)+7], #]`
-/

namespace A079138.P649417857588983809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * n : ℤ) - (n : ℤ)) + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A079138.P649417857588983809

/-! ## A079138.P14651958476770829129

`∩[A135932(n+1), A117619(n)]`
-/

namespace A079138.P14651958476770829129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079138.P14651958476770829129

/-! ## A079138.P11783112539722266930

`∩[A107133(n+1), A117619(n)]`
-/

namespace A079138.P11783112539722266930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079138.P11783112539722266930

/-! ## A079138.P13653157643984450795

`∩[A228227(n+1), A117619(n)]`
-/

namespace A079138.P13653157643984450795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079138.P13653157643984450795

/-! ## A079138.P11092987306099451776

`∩[A079733(n+1), A117619(n)]`
-/

namespace A079138.P11092987306099451776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079138.P11092987306099451776

/-!
# A079139: Numbers n such that (Product of first n twin prime pair averages [A014574] ) + 1 is prime.

The programs for A079139, there is no canonical definition to state claims against.
-/

/-! ## A079139.P15985814519610457863

`A357627(A165823(n))+A001006(2*n)`
-/

namespace A079139.P15985814519610457863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357627 (A165823 n).toNat + A001006 (2 * n)

end

end A079139.P15985814519610457863

/-!
# A079141: Primes of the form p^2 + 6 where p is prime.

The programs for A079141, there is no canonical definition to state claims against.
-/

/-! ## A079141.P12117255515288914697

`A062718(n+1)²+6`
-/

namespace A079141.P12117255515288914697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062718 (n + 1) ^ 2 + 6

end

end A079141.P12117255515288914697

/-! ## A079141.P6489783507271168097

`p?[A114269(n+1)]²+6`
-/

namespace A079141.P6489783507271168097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 6

end

end A079141.P6489783507271168097

/-! ## A079141.P1667780468628007411

`∩[A114269(n+1), A128925(n+1)]²+6`
-/

namespace A079141.P1667780468628007411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 6

end

end A079141.P1667780468628007411

/-! ## A079141.P7517321314160422278

`or(6, ∩[A128925(n+1), A341783(n+1)]²)`
-/

namespace A079141.P7517321314160422278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2)

end

end A079141.P7517321314160422278

/-! ## A079141.P6910867030957330279

`record[A006530(A114269(n+2))]²+6`
-/

namespace A079141.P6910867030957330279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114269 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 + 6

end

end A079141.P6910867030957330279

/-! ## A079141.P12984611972274565001

`or(A010723(n), A328618(A062718(n+1)))`
-/

namespace A079141.P12984611972274565001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010723 n) (A328618 (A062718 (n + 1)).toNat)

end

end A079141.P12984611972274565001

/-! ## A079141.P3411161556312303315

`A114949(A062718(n+1))`
-/

namespace A079141.P3411161556312303315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 (A062718 (n + 1)).toNat

end

end A079141.P3411161556312303315

/-! ## A079141.P3501071992065976721

`A114949(p?[A114269(n+1)])`
-/

namespace A079141.P3501071992065976721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079141.P3501071992065976721

/-! ## A079141.P17798442676843510581

`A087475(p?[A114269(n+1)])+2`
-/

namespace A079141.P17798442676843510581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 2

end

end A079141.P17798442676843510581

/-! ## A079141.P8790640614911072146

`A000290(p?[A062718(n+1)])+6`
-/

namespace A079141.P8790640614911072146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 6

end

end A079141.P8790640614911072146

/-! ## A079141.P16687665063585519715

`A000290(p?[A114269(n+1)])+6`
-/

namespace A079141.P16687665063585519715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 6

end

end A079141.P16687665063585519715

/-!
# A079142: Numbers divisible by prime integer parts of their square roots.

The programs for A079142, the canonical program `A079142.P3719242836369458363` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079142 has offset 0).

The definition of A079142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079142.P16270993692917062366

`A006446(eq[2, A000005(floor(n/3)+1)]+1)`
-/

namespace A079142.P16270993692917062366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (⌊(n : ℚ) / 3⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A079142.P16270993692917062366

namespace A079142

/-- `A006446(eq[2, A000005(floor(n/3)+1)]+1)` -/
def P16270993692917062366.Spec : Prop :=
  ∀ n, P16270993692917062366.a n = A079142 n

end A079142

/-! ## A079142.P3719242836369458363

`record[A014963(A008624(n)+1)*A008624(n+9)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A079142

/-- `record[A014963(A008624(n)+1)*A008624(n+9)]` -/
def P3719242836369458363.Spec : Prop :=
  ∀ n, P3719242836369458363.a n = A079142 n

theorem P3719242836369458363.correct : P3719242836369458363.Spec := by
  intro n
  simp only [A079142]

end A079142

/-! ## A079142.P1751712991023793524

`record[A006530(A008611(2*n+5))*A008611(n+5)]`
-/

namespace A079142.P1751712991023793524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008611 (2 * n + 5)).toNat * A008611 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079142.P1751712991023793524

namespace A079142

/-- `record[A006530(A008611(2*n+5))*A008611(n+5)]` -/
def P1751712991023793524.Spec : Prop :=
  ∀ n, P1751712991023793524.a n = A079142 n

end A079142

/-! ## A079142.P17348459490735955812

`record[A020639(A103221(n)+1)*A103221(n+13)]`
-/

namespace A079142.P17348459490735955812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103221 n + 1).toNat * A103221 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079142.P17348459490735955812

namespace A079142

/-- `record[A020639(A103221(n)+1)*A103221(n+13)]` -/
def P17348459490735955812.Spec : Prop :=
  ∀ n, P17348459490735955812.a n = A079142 n

end A079142

/-! ## A079142.P13199853712375945298

`∩[A006446(n+1), A282668(n+1)]`
-/

namespace A079142.P13199853712375945298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079142.P13199853712375945298

namespace A079142

/-- `∩[A006446(n+1), A282668(n+1)]` -/
def P13199853712375945298.Spec : Prop :=
  ∀ n, (P13199853712375945298.a n : ℤ) = A079142 n

end A079142

/-! ## A079142.P12187993821417792298

`∩[A258614(n+1), A267016(n+1)]`
-/

namespace A079142.P12187993821417792298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079142.P12187993821417792298

namespace A079142

/-- `∩[A258614(n+1), A267016(n+1)]` -/
def P12187993821417792298.Spec : Prop :=
  ∀ n, (P12187993821417792298.a n : ℤ) = A079142 n

end A079142

/-! ## A079142.P17767474735514740684

`eq[A011973(n), A105700(A000196(n))]`
-/

namespace A079142.P17767474735514740684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079142.P17767474735514740684

namespace A079142

/-- `eq[A011973(n), A105700(A000196(n))]` -/
def P17767474735514740684.Spec : Prop :=
  ∀ n, (P17767474735514740684.a n : ℤ) = A079142 n

end A079142

/-!
# A079143: Numbers divisible by prime ceilings of their square roots + 1.

The programs for A079143, the canonical program `A079143.P22812743180656321` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079143 has offset 1).

The definition of A079143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079143.P22812743180656321

`∪[A001248(n+1), A036689(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079143

/-- `∪[A001248(n+1), A036689(n+1)]` -/
def P22812743180656321.Spec : Prop :=
  ∀ n, (P22812743180656321.a n : ℤ) = A079143 (n + 1)

theorem P22812743180656321.correct : P22812743180656321.Spec := by
  intro n
  simp only [A079143, Nat.add_sub_cancel]

end A079143

/-! ## A079143.P430879331725824341

`∪[A000040(n+1)², A036689(n+1)]`
-/

namespace A079143.P430879331725824341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079143.P430879331725824341

namespace A079143

/-- `∪[A000040(n+1)², A036689(n+1)]` -/
def P430879331725824341.Spec : Prop :=
  ∀ n, (P430879331725824341.a n : ℤ) = A079143 (n + 1)

end A079143

/-! ## A079143.P2242421133609609548

`∪[A036689(n+1), A153480(n)-A166010(n+1)]`
-/

namespace A079143.P2242421133609609548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 n - A166010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079143.P2242421133609609548

namespace A079143

/-- `∪[A036689(n+1), A153480(n)-A166010(n+1)]` -/
def P2242421133609609548.Spec : Prop :=
  ∀ n, (P2242421133609609548.a n : ℤ) = A079143 (n + 1)

end A079143

/-! ## A079143.P11881724538713583451

`∪[A036689(n+1), A054271(n+1)+A054270(n+1)]`
-/

namespace A079143.P11881724538713583451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054271 (n + 1) + A054270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079143.P11881724538713583451

namespace A079143

/-- `∪[A036689(n+1), A054271(n+1)+A054270(n+1)]` -/
def P11881724538713583451.Spec : Prop :=
  ∀ n, (P11881724538713583451.a n : ℤ) = A079143 (n + 1)

end A079143

/-! ## A079143.P10553453357593064258

`∪[A001248(n+1)-A000040(n+1), A001248(n+1)]`
-/

namespace A079143.P10553453357593064258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079143.P10553453357593064258

namespace A079143

/-- `∪[A001248(n+1)-A000040(n+1), A001248(n+1)]` -/
def P10553453357593064258.Spec : Prop :=
  ∀ n, (P10553453357593064258.a n : ℤ) = A079143 (n + 1)

end A079143

/-! ## A079143.P15235253372140943863

`∪[A002618(A000040(n+1)), A001248(n+1)]`
-/

namespace A079143.P15235253372140943863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079143.P15235253372140943863

namespace A079143

/-- `∪[A002618(A000040(n+1)), A001248(n+1)]` -/
def P15235253372140943863.Spec : Prop :=
  ∀ n, (P15235253372140943863.a n : ℤ) = A079143 (n + 1)

end A079143

/-! ## A079143.P17526983474205385279

`∪[A033476(2*n), A000010(A033476(2*n))]`
-/

namespace A079143.P17526983474205385279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A033476 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079143.P17526983474205385279

namespace A079143

/-- `∪[A033476(2*n), A000010(A033476(2*n))]` -/
def P17526983474205385279.Spec : Prop :=
  ∀ n, (P17526983474205385279.a n : ℤ) = A079143 (n + 1)

end A079143

/-! ## A079143.P181853757638971913

`∩[A036441(n+1), A342256(n+1)]`
-/

namespace A079143.P181853757638971913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079143.P181853757638971913

namespace A079143

/-- `∩[A036441(n+1), A342256(n+1)]` -/
def P181853757638971913.Spec : Prop :=
  ∀ n, (P181853757638971913.a n : ℤ) = A079143 (n + 1)

end A079143

/-! ## A079143.P13474524846993141024

`∩[A076271(n+1), A342256(n+1)]`
-/

namespace A079143.P13474524846993141024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079143.P13474524846993141024

namespace A079143

/-- `∩[A076271(n+1), A342256(n+1)]` -/
def P13474524846993141024.Spec : Prop :=
  ∀ n, (P13474524846993141024.a n : ℤ) = A079143 (n + 1)

end A079143

/-!
# A079144: Number of labeled interval orders on n elements: (2+2)-free posets.

The programs for A079144, there is no canonical definition to state claims against.
-/

/-! ## A079144.P4187352026100681537

`A000265(A052886(n)+A049056(n))`
-/

namespace A079144.P4187352026100681537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A052886 n + A049056 n).toNat

end

end A079144.P4187352026100681537

/-! ## A079144.P10482148859121483826

`A032742(A052886(n)+A049056(n))`
-/

namespace A079144.P10482148859121483826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A052886 n + A049056 n).toNat

end

end A079144.P10482148859121483826

/-!
# A079146: Number of unlabeled semitransitive orders on n elements: (1+3)-free posets.

The programs for A079146, there is no canonical definition to state claims against.
-/

/-! ## A079146.P7086180716791024048

`A054897(A188129(n))`
-/

namespace A079146.P7086180716791024048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (A188129 n).toNat

end

end A079146.P7086180716791024048

/-! ## A079146.P9116492111193531729

`A255072(A151111(n))`
-/

namespace A079146.P9116492111193531729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A151111 n).toNat

end

end A079146.P9116492111193531729

/-! ## A079146.P9702973810369046743

`A156562(A212380(n+3))`
-/

namespace A079146.P9702973810369046743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A212380 (n + 3)).toNat

end

end A079146.P9702973810369046743

/-!
# A079147: Primes p such that p+1 has at most 2 prime factors, counted with multiplicity; i.e., primes p such that bigomega(p+1) = A001222(p+1) <= 2.

The programs for A079147, there is no canonical definition to state claims against.
-/

/-! ## A079147.P7549158174567818227

`∪[A005383(n+1), A007352(n+1)]`
-/

namespace A079147.P7549158174567818227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P7549158174567818227

/-! ## A079147.P3863339039239338754

`∩[A079149(n+1), A319450(n+1)]`
-/

namespace A079147.P3863339039239338754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P3863339039239338754

/-! ## A079147.P7232897301108417549

`p?[A033945(n+1)]`
-/

namespace A079147.P7232897301108417549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079147.P7232897301108417549

/-! ## A079147.P15086998810672551889

`∩[A033945(n+1), A079149(n+1)]`
-/

namespace A079147.P15086998810672551889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P15086998810672551889

/-! ## A079147.P476135376344916520

`∩[A033945(n+1), A079150(n+1)]`
-/

namespace A079147.P476135376344916520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P476135376344916520

/-! ## A079147.P16396071869777780711

`∩[A033945(n+1), A079152(n+1)]`
-/

namespace A079147.P16396071869777780711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P16396071869777780711

/-! ## A079147.P4099573414578286654

`∩[A033945(n+1), A086983(n+1)]`
-/

namespace A079147.P4099573414578286654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P4099573414578286654

/-! ## A079147.P18338449821798393911

`∩[A033945(n+1), A136003(n+1)]`
-/

namespace A079147.P18338449821798393911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P18338449821798393911

/-! ## A079147.P16447823991054739686

`∩[A033945(n+1), A138539(n+1)]`
-/

namespace A079147.P16447823991054739686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P16447823991054739686

/-! ## A079147.P11451791107629952556

`∩[A066821(n+1), A079149(n+1)]`
-/

namespace A079147.P11451791107629952556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P11451791107629952556

/-! ## A079147.P1111557653807725982

`∩[A033945(n+1), A066076(n+1)]`
-/

namespace A079147.P1111557653807725982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P1111557653807725982

/-! ## A079147.P9303514601451077283

`∩[A033945(n+1), A089191(n+1)]`
-/

namespace A079147.P9303514601451077283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P9303514601451077283

/-! ## A079147.P2589439882794428440

`∩[A033945(n+1), A180640(n+1)]`
-/

namespace A079147.P2589439882794428440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P2589439882794428440

/-! ## A079147.P8691631339243079377

`∩[A066821(n+1), A180640(n+1)]`
-/

namespace A079147.P8691631339243079377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P8691631339243079377

/-! ## A079147.P15368906588792555711

`∩[A180640(n+1), A319450(n+1)]`
-/

namespace A079147.P15368906588792555711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P15368906588792555711

/-! ## A079147.P10518447561494930778

`∩[A033945(n+1), A198273(n+1)]`
-/

namespace A079147.P10518447561494930778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P10518447561494930778

/-! ## A079147.P5545601942779387125

`∩[A033945(n+1), A075430(n+1)]`
-/

namespace A079147.P5545601942779387125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P5545601942779387125

/-! ## A079147.P3984264687969379138

`∩[A075430(n+1), A319450(n+1)]`
-/

namespace A079147.P3984264687969379138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P3984264687969379138

/-! ## A079147.P17373209969937211058

`∩[A033945(n+1), A042998(n+1)]`
-/

namespace A079147.P17373209969937211058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P17373209969937211058

/-! ## A079147.P16993540831810983548

`∩[A033945(n+1), A042986(n+1)]`
-/

namespace A079147.P16993540831810983548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079147.P16993540831810983548

/-!
# A079148: Primes p such that p-1 has at most 2 prime factors, counted with multiplicity; i.e., primes p such that bigomega(p-1) = A001222(p-1) <= 2.

The programs for A079148, there is no canonical definition to state claims against.
-/

/-! ## A079148.P7204572558078815122

`∪[A005385(n+1), A208361(n+1)]`
-/

namespace A079148.P7204572558078815122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P7204572558078815122

/-! ## A079148.P4192565329488323332

`∪[A005385(n+1), A379989(n+1)]`
-/

namespace A079148.P4192565329488323332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P4192565329488323332

/-! ## A079148.P5890238794235231889

`∩[A079149(n+1), A156658(n+1)]`
-/

namespace A079148.P5890238794235231889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P5890238794235231889

/-! ## A079148.P9739958248698217987

`∩[A079149(n+1), A179401(n+1)]`
-/

namespace A079148.P9739958248698217987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P9739958248698217987

/-! ## A079148.P6953027214001318716

`∩[A079149(n+1), A396480(n+1)]`
-/

namespace A079148.P6953027214001318716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P6953027214001318716

/-! ## A079148.P2277074502850076063

`∩[A079149(n+1), A396478(n+1)]`
-/

namespace A079148.P2277074502850076063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P2277074502850076063

/-! ## A079148.P18307414502364748733

`∩[A039786(n+1), A396480(n+1)]`
-/

namespace A079148.P18307414502364748733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P18307414502364748733

/-! ## A079148.P5865703830689762377

`∩[A079149(n+1), A123101(n+1)]`
-/

namespace A079148.P5865703830689762377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P5865703830689762377

/-! ## A079148.P4867243575286972975

`∩[A079149(n+1), A301590(n+1)]`
-/

namespace A079148.P4867243575286972975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P4867243575286972975

/-! ## A079148.P5690793923981599564

`∩[A075430(n+1), A123101(n+1)]`
-/

namespace A079148.P5690793923981599564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P5690793923981599564

/-! ## A079148.P2903375830085265936

`∩[A075430(n+1), A179401(n+1)]`
-/

namespace A079148.P2903375830085265936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P2903375830085265936

/-! ## A079148.P13558982324746809455

`∩[A075430(n+1), A396478(n+1)]`
-/

namespace A079148.P13558982324746809455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P13558982324746809455

/-! ## A079148.P13996948247942009139

`∩[A075430(n+1), A396480(n+1)]`
-/

namespace A079148.P13996948247942009139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P13996948247942009139

/-! ## A079148.P12034369401369735120

`∩[A079149(n+1), A167135(n+1)]`
-/

namespace A079148.P12034369401369735120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P12034369401369735120

/-! ## A079148.P13371584790978456996

`∩[A210845(n+1), A396480(n+1)]`
-/

namespace A079148.P13371584790978456996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P13371584790978456996

/-! ## A079148.P2845629303816590121

`p?[A007964(n+1)+1]`
-/

namespace A079148.P2845629303816590121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079148.P2845629303816590121

/-! ## A079148.P13410955247779497380

`p?[A037143(n+1)+1]`
-/

namespace A079148.P13410955247779497380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079148.P13410955247779497380

/-! ## A079148.P10742941341054224359

`∩[A079149(n+1), A083028(n+1)]`
-/

namespace A079148.P10742941341054224359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P10742941341054224359

/-! ## A079148.P4915830569837740513

`∩[A079149(n+1), A190785(n+1)]`
-/

namespace A079148.P4915830569837740513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P4915830569837740513

/-! ## A079148.P4563072174549880292

`∩[A079149(n+1), A107912(n+1)]`
-/

namespace A079148.P4563072174549880292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079148.P4563072174549880292

/-!
# A079149: Primes p such that either p-1 or p+1 has at most 2 prime factors, counted with multiplicity; i.e., primes p such that either bigomega(p-1) <= 2 or bigomega(p+1) <= 2, where bigomega(n) = A001222(n).

The programs for A079149, there is no canonical definition to state claims against.
-/

/-! ## A079149.P14841947513417079228

`∪[A005383(n+1), A079148(n+1)]`
-/

namespace A079149.P14841947513417079228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P14841947513417079228

/-! ## A079149.P9833398238575278553

`∪[A005385(n+1), A079147(n+1)]`
-/

namespace A079149.P9833398238575278553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P9833398238575278553

/-! ## A079149.P9434673605475990592

`∪[A079147(n+1), A079148(n+1)]`
-/

namespace A079149.P9434673605475990592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P9434673605475990592

/-! ## A079149.P4788818632832076366

`∪[A005383(n+1), A167609(n+1)]`
-/

namespace A079149.P4788818632832076366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P4788818632832076366

/-! ## A079149.P15501534549730497680

`∪[A005385(n+1), A167609(n+1)]`
-/

namespace A079149.P15501534549730497680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P15501534549730497680

/-! ## A079149.P15953676377033422472

`∪[A037174(n+1), A167609(n+1)]`
-/

namespace A079149.P15953676377033422472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P15953676377033422472

/-! ## A079149.P12668118335038143821

`∪[A059394(n+1), A167609(n+1)]`
-/

namespace A079149.P12668118335038143821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P12668118335038143821

/-! ## A079149.P16955924251216016228

`∪[A059455(n+1), A167609(n+1)]`
-/

namespace A079149.P16955924251216016228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P16955924251216016228

/-! ## A079149.P7145070783617389939

`∪[A075705(n+1), A167609(n+1)]`
-/

namespace A079149.P7145070783617389939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P7145070783617389939

/-! ## A079149.P4300966503378134391

`∪[A075706(n+1), A167609(n+1)]`
-/

namespace A079149.P4300966503378134391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P4300966503378134391

/-! ## A079149.P9423642344485065720

`∪[A075707(n+1), A167609(n+1)]`
-/

namespace A079149.P9423642344485065720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P9423642344485065720

/-! ## A079149.P10053553744124816849

`∪[A079147(n+1), A167609(n+1)]`
-/

namespace A079149.P10053553744124816849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P10053553744124816849

/-! ## A079149.P3452628370511481497

`∪[A079148(n+1), A167609(n+1)]`
-/

namespace A079149.P3452628370511481497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P3452628370511481497

/-! ## A079149.P6021261291307450763

`∪[A082565(n+1), A167609(n+1)]`
-/

namespace A079149.P6021261291307450763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079149.P6021261291307450763

/-! ## A079149.P18170916217013681606

`p?[A078772(n+1)+A004275(n)]`
-/

namespace A079149.P18170916217013681606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (n + 1) + A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079149.P18170916217013681606

/-! ## A079149.P4532772657575186671

`p?[comp[A163602(n+1)]]`
-/

namespace A079149.P4532772657575186671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163602 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079149.P4532772657575186671

/-! ## A079149.P16078232266833620196

`p?[comp[Δ[A018252(n+1)²]]]`
-/

namespace A079149.P16078232266833620196
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079149.P16078232266833620196

/-! ## A079149.P17247438681806148126

`record[A093074(A266645(n+1))]`
-/

namespace A079149.P17247438681806148126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A266645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079149.P17247438681806148126

/-! ## A079149.P15545783456166615808

`p?[A064429(A007964(n+1))]`
-/

namespace A079149.P15545783456166615808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A007964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079149.P15545783456166615808

/-! ## A079149.P7167233099119946634

`p?[n*A121561(A026741(n+1))]`
-/

namespace A079149.P7167233099119946634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A121561 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079149.P7167233099119946634

/-!
# A079150: Primes p such that p+1 has at most 3 prime factors, counted with multiplicity; i.e., primes p such that bigomega(p+1) = A001222(p+1) <= 3.

The programs for A079150, there is no canonical definition to state claims against.
-/

/-! ## A079150.P16993415063094976044

`∪[A063639(n+1), A079147(n+1)]`
-/

namespace A079150.P16993415063094976044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079150.P16993415063094976044

/-! ## A079150.P17181356613846712341

`p?[n*A000196(A001222(n+1))]`
-/

namespace A079150.P17181356613846712341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000196 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079150.P17181356613846712341

/-! ## A079150.P171788457656348902

`p?[n*A340369(n+1)]`
-/

namespace A079150.P171788457656348902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A340369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079150.P171788457656348902

/-! ## A079150.P2550674568591257861

`eq[A302055(n), A340369(n+1)]`
-/

namespace A079150.P2550674568591257861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P2550674568591257861

/-! ## A079150.P2040886801417220679

`eq[A117358(n+1)², A302055(n)]`
-/

namespace A079150.P2040886801417220679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P2040886801417220679

/-! ## A079150.P16398039035072290216

`eq[A328771(n), A340369(n+1)]`
-/

namespace A079150.P16398039035072290216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P16398039035072290216

/-! ## A079150.P5145137170383321336

`eq[A328772(n), A340369(n+1)]`
-/

namespace A079150.P5145137170383321336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P5145137170383321336

/-! ## A079150.P10600649246175428726

`eq[A117358(n+1), A175126(n)]`
-/

namespace A079150.P10600649246175428726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P10600649246175428726

/-! ## A079150.P14608183389403784636

`eq[A175126(n), A340369(n+1)]`
-/

namespace A079150.P14608183389403784636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P14608183389403784636

/-! ## A079150.P6969527494839726147

`p?[n*A052126(A329888(n+1))]`
-/

namespace A079150.P6969527494839726147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052126 (A329888 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079150.P6969527494839726147

/-! ## A079150.P4701301652011071441

`p?[A037144(n+1)-1]`
-/

namespace A079150.P4701301652011071441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079150.P4701301652011071441

/-! ## A079150.P6386407040762737130

`p?[lt[A001222(n+1), A020639(n+1)²]]`
-/

namespace A079150.P6386407040762737130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079150.P6386407040762737130

/-! ## A079150.P7802594465867727439

`p?[lt[∑{e}[n+1, #], 4]]`
-/

namespace A079150.P7802594465867727439
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079150.P7802594465867727439

/-! ## A079150.P5570065987969604601

`eq[A018783(n), A117358(n+1)]`
-/

namespace A079150.P5570065987969604601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P5570065987969604601

/-! ## A079150.P9366312250296606508

`eq[A003415(n), A320267(n+1)]`
-/

namespace A079150.P9366312250296606508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P9366312250296606508

/-! ## A079150.P16668808265510583018

`eq[A018783(n), A320267(n+1)]`
-/

namespace A079150.P16668808265510583018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P16668808265510583018

/-! ## A079150.P12130790003607227248

`eq[A003415(n), A340369(n+1)]`
-/

namespace A079150.P12130790003607227248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P12130790003607227248

/-! ## A079150.P9999550407164951334

`eq[A018783(n), A340369(n+1)]`
-/

namespace A079150.P9999550407164951334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P9999550407164951334

/-! ## A079150.P16162086216240929094

`eq[A032741(n), A340369(n+1)]`
-/

namespace A079150.P16162086216240929094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P16162086216240929094

/-! ## A079150.P6926671249122076344

`eq[A175126(n), A320267(n+1)]`
-/

namespace A079150.P6926671249122076344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079150.P6926671249122076344

/-!
# A079151: Primes p such that p-1 has at most 3 prime factors, counted with multiplicity; i.e., primes p such that bigomega(p-1) = A001222(p-1) <= 3.

The programs for A079151, there is no canonical definition to state claims against.
-/

/-! ## A079151.P254341300830200141

`∪[A063640(n+1), A079148(n+1)]`
-/

namespace A079151.P254341300830200141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079151.P254341300830200141

/-! ## A079151.P6858991682056159654

`p?[A001687(C(3, A001222(n+1)))+n+1]`
-/

namespace A079151.P6858991682056159654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (Nat.choose 3 (A001222 (n + 1)).toNat) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079151.P6858991682056159654

/-! ## A079151.P3490176697281834205

`p?[A072165(C(3, A001222(n+1))+1)+n+1]`
-/

namespace A079151.P3490176697281834205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072165 (Nat.choose 3 (A001222 (n + 1)).toNat + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079151.P3490176697281834205

/-! ## A079151.P17878073936600760708

`p?[A096911(C(3, A001222(n+1))+1)+n+1]`
-/

namespace A079151.P17878073936600760708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (Nat.choose 3 (A001222 (n + 1)).toNat + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079151.P17878073936600760708

/-! ## A079151.P4243067167244536614

`p?[A291759(C(3, A001222(n+1))+1)+n+1]`
-/

namespace A079151.P4243067167244536614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291759 (Nat.choose 3 (A001222 (n + 1)).toNat + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079151.P4243067167244536614

/-! ## A079151.P17766694991241634099

`p?[A117358(n+1)+1+n]`
-/

namespace A079151.P17766694991241634099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079151.P17766694991241634099

/-! ## A079151.P16982731691251362879

`p?[A340369(n+1)+1+n]`
-/

namespace A079151.P16982731691251362879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079151.P16982731691251362879

/-! ## A079151.P3037836475655139190

`p?[A037144(n+1)+1]`
-/

namespace A079151.P3037836475655139190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079151.P3037836475655139190

/-! ## A079151.P14273939355525948300

`p?[lt[A001222(n+1), 4]+2]`
-/

namespace A079151.P14273939355525948300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079151.P14273939355525948300

/-! ## A079151.P7751113651640782970

`p?[lt[∑{e}[1-n, #], 4]]`
-/

namespace A079151.P7751113651640782970
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A079151.P7751113651640782970

/-! ## A079151.P728571278983893079

`record[A014963(lt[A001222(n+1), 4]+2)]`
-/

namespace A079151.P728571278983893079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079151.P728571278983893079

/-! ## A079151.P5333469474879788245

`record[A006530(n+2)/A054576(A054576(2*(n+1)))]`
-/

namespace A079151.P5333469474879788245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℚ) / (A054576 (A054576 (2 * (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079151.P5333469474879788245

/-! ## A079151.P5050870308332012442

`∪[A063640(n+1), A119660(n+1)]`
-/

namespace A079151.P5050870308332012442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079151.P5050870308332012442

/-!
# A079152: Primes p such that either p-1 or p+1 has at most 3 prime factors, counted with multiplicity; i.e., primes p such that either bigomega(p-1) <= 3 or bigomega(p+1) <= 3, where bigomega(n) = A001222(n).

The programs for A079152, there is no canonical definition to state claims against.
-/

/-! ## A079152.P9093412413005531815

`∪[A079150(n+1), A079151(n+1)]`
-/

namespace A079152.P9093412413005531815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079152.P9093412413005531815

/-! ## A079152.P14332453381808918371

`A000040(lt[A357621(2*(n+1)), A274046(n+1)])`
-/

namespace A079152.P14332453381808918371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079152.P14332453381808918371

/-! ## A079152.P17738585719159531665

`A000040(lt[A252493(n+1), A274046(n+1)])`
-/

namespace A079152.P17738585719159531665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079152.P17738585719159531665

/-! ## A079152.P3266556129095780829

`A000040(lt[A339491(2*n+3), A274046(n+1)])`
-/

namespace A079152.P3266556129095780829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339491 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079152.P3266556129095780829

/-! ## A079152.P15930775121254562252

`A000040(lt[A000700(n), A275520(n+1)])`
-/

namespace A079152.P15930775121254562252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079152.P15930775121254562252

/-!
# A079153: Primes p such that both p-1 and p+1 have at most 3 prime factors, counted with multiplicity; i.e., primes p such that bigomega(p-1) <= 3 and bigomega(p+1) <= 3, where bigomega(n) = A001222(n).

The programs for A079153, there is no canonical definition to state claims against.
-/

/-! ## A079153.P17126321433889720946

`∩[A079150(n+1), A079151(n+1)]`
-/

namespace A079153.P17126321433889720946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079153.P17126321433889720946

/-! ## A079153.P13388715908287131810

`∩[p?[A117358(n+1)+1+n], A079150(n+1)]`
-/

namespace A079153.P13388715908287131810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (n + 1) + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A079153.P13388715908287131810

/-! ## A079153.P6094478399566932550

`∩[p?[A340369(n+1)+1+n], A079150(n+1)]`
-/

namespace A079153.P6094478399566932550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (n + 1) + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A079153.P6094478399566932550

/-! ## A079153.P4620698975226464418

`∩[A037144(n+1)+1, A079150(n+1)]`
-/

namespace A079153.P4620698975226464418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079153.P4620698975226464418

/-! ## A079153.P17689394944629535982

`A123318(A081226(n))`
-/

namespace A079153.P17689394944629535982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A081226 n).toNat

end

end A079153.P17689394944629535982

/-!
# A079155: The number of primes less than 10^n whose digital root (A038194) is also prime.

The programs for A079155, there is no canonical definition to state claims against.
-/

/-! ## A079155.P3689990352350921490

`A270059(A229255(n+1))+A262736(n)`
-/

namespace A079155.P3689990352350921490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (A229255 (n + 1)).toNat + A262736 n

end

end A079155.P3689990352350921490

/-!
# A079159: {a(n)} = sequence of smallest positive integers such that sqrt(1 + Sum_{n>=1} a(n)*p_n*x^n) = A079160(x), a power series also having positive integer coefficients, where p_n is the n-th prime.

The programs for A079159, there is no canonical definition to state claims against.
-/

/-! ## A079159.P4885613113462628876

`A079161(n)/A008578(n+1)`
-/

namespace A079159.P4885613113462628876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079161 n : ℚ) / (A008578 (n + 1) : ℚ)

end

end A079159.P4885613113462628876

/-! ## A079159.P925995972171717551

`A079161(n)/A015919(n+1)`
-/

namespace A079159.P925995972171717551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079161 n : ℚ) / (A015919 (n + 1) : ℚ)

end

end A079159.P925995972171717551

/-! ## A079159.P1621919864555078098

`A079161(n)/A064555(n+1)`
-/

namespace A079159.P1621919864555078098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079161 n : ℚ) / (A064555 (n + 1) : ℚ)

end

end A079159.P1621919864555078098

/-! ## A079159.P9933196298522544544

`A079161(n)/A324050(n+1)`
-/

namespace A079159.P9933196298522544544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079161 n : ℚ) / (A324050 (n + 1) : ℚ)

end

end A079159.P9933196298522544544

/-! ## A079159.P17295205439708586157

`A345942(A079161(n))`
-/

namespace A079159.P17295205439708586157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345942 (A079161 n).toNat

end

end A079159.P17295205439708586157

/-!
# A079161: Satisfies a(n)/A079159(n) = p_n, the n-th prime (n>0), a(0)=1.

The programs for A079161, there is no canonical definition to state claims against.
-/

/-! ## A079161.P8145544606432419655

`A008578(n+1)*A079159(n)`
-/

namespace A079161.P8145544606432419655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A079159 n

end

end A079161.P8145544606432419655

/-! ## A079161.P17887792399158312747

`A015919(n+1)*A079159(n)`
-/

namespace A079161.P17887792399158312747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1) * A079159 n

end

end A079161.P17887792399158312747

/-! ## A079161.P3200716222755508711

`A064555(n+1)*A079159(n)`
-/

namespace A079161.P3200716222755508711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (n + 1) * A079159 n

end

end A079161.P3200716222755508711

/-! ## A079161.P11108861799961662765

`A079159(n)*A324050(n+1)`
-/

namespace A079161.P11108861799961662765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079159 n * A324050 (n + 1)

end

end A079161.P11108861799961662765

/-! ## A079161.P15550433848762123945

`record[A020639(n+1)]*A079159(n)`
-/

namespace A079161.P15550433848762123945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A079159 n

end

end A079161.P15550433848762123945

/-!
# A079162: a(n) = 5*a(n-2) - 2*a(n-4), with initial terms 0,1,2,4.

The programs for A079162, the canonical program `A079162.P697791653568111685` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079162 has offset 0).

The definition of A079162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)-2*a(n-4)` (program `A079162.P697791653568111685`, by `A079162.P697791653568111685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079162.P697791653568111685

`5*a(n-2)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079162

/-- `5*a(n-2)-2*a(n-4)` -/
def P697791653568111685.Spec : Prop :=
  ∀ n, P697791653568111685.a n = A079162 n

theorem P697791653568111685.correct : P697791653568111685.Spec := by
  intro n
  simp only [A079162]

end A079162

/-! ## A079162.P14981920227406573217

`ogf((x+2x^2-x^3)/(1-5x^2+2x^4))`
-/

namespace A079162.P14981920227406573217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -1] [1, 0, -5, 0, 2] n

end

end A079162.P14981920227406573217

namespace A079162

/-- `ogf((x+2x^2-x^3)/(1-5x^2+2x^4))` -/
def P14981920227406573217.Spec : Prop :=
  ∀ n, P14981920227406573217.a n = A079162 n

end A079162

/-! ## A079162.P3557018210691299042

`A005824(and(n, -2))+A005824(n)`
-/

namespace A079162.P3557018210691299042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005824 (Int.land (n : ℤ) (-2)).toNat + A005824 n

end

end A079162.P3557018210691299042

namespace A079162

/-- `A005824(and(n, -2))+A005824(n)` -/
def P3557018210691299042.Spec : Prop :=
  ∀ n, P3557018210691299042.a n = A079162 n

end A079162

/-! ## A079162.P125276252640557987

`A249581(2*n+3)/2`
-/

namespace A079162.P125276252640557987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249581 (2 * n + 3) : ℚ) / 2

end

end A079162.P125276252640557987

namespace A079162

/-- `A249581(2*n+3)/2` -/
def P125276252640557987.Spec : Prop :=
  ∀ n, P125276252640557987.a n = (A079162 n : ℚ)

end A079162

/-! ## A079162.P16236483389196185517

`round(A249581(Δ[(n+1)²])/2)`
-/

namespace A079162.P16236483389196185517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A249581 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)

end

end A079162.P16236483389196185517

namespace A079162

/-- `round(A249581(Δ[(n+1)²])/2)` -/
def P16236483389196185517.Spec : Prop :=
  ∀ n, P16236483389196185517.a n = A079162 n

end A079162

/-! ## A079162.P6803027133416540414

`A384611(n)-A005824(n+1)`
-/

namespace A079162.P6803027133416540414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384611 n - A005824 (n + 1)

end

end A079162.P6803027133416540414

namespace A079162

/-- `A384611(n)-A005824(n+1)` -/
def P6803027133416540414.Spec : Prop :=
  ∀ n, P6803027133416540414.a n = A079162 n

end A079162

/-! ## A079162.P17261008175614454162

`Δ[A005824(n+1)]/A000034(n)`
-/

namespace A079162.P17261008175614454162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005824 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 n : ℚ)

end

end A079162.P17261008175614454162

namespace A079162

/-- `Δ[A005824(n+1)]/A000034(n)` -/
def P17261008175614454162.Spec : Prop :=
  ∀ n, P17261008175614454162.a n = (A079162 n : ℚ)

end A079162

/-!
# A079164: Twin-primorial numbers: running products of twin primes.

The programs for A079164, there is no canonical definition to state claims against.
-/

/-! ## A079164.P940551907734116957

`∏[A077800(n+1)]`
-/

namespace A079164.P940551907734116957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079164.P940551907734116957

/-! ## A079164.P7934650070092659112

`∏[A099609(n+3)]`
-/

namespace A079164.P7934650070092659112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079164.P7934650070092659112

/-! ## A079164.P8311429666661413373

`∏[A171821(n+1)+A130706(n)]`
-/

namespace A079164.P8311429666661413373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1) + A130706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079164.P8311429666661413373

/-! ## A079164.P16744606981511821462

`∏[A014574(A004526(n)+1)-(-1)^n]`
-/

namespace A079164.P16744606981511821462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A004526 n + 1).toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079164.P16744606981511821462

/-! ## A079164.P6186902455276690258

`∏[A278972(char[A326243(3*n+1)]+n)/2]`
-/

namespace A079164.P6186902455276690258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326243 (3 * n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278972 ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079164.P6186902455276690258

/-!
# A079165: a(n) = (4n-2)*a(n-1)+a(n-2) with a(0)=1 and a(1)=2.

The programs for A079165, the canonical program `A079165.P4094762974463928945` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079165 has offset 0).

The definition of A079165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n-2)*a(n-1)+a(n-2)` (program `A079165.P4094762974463928945`, by `A079165.P4094762974463928945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079165.P4094762974463928945

`(4*n-2)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079165

/-- `(4*n-2)*a(n-1)+a(n-2)` -/
def P4094762974463928945.Spec : Prop :=
  ∀ n, P4094762974463928945.a n = A079165 n

theorem P4094762974463928945.correct : P4094762974463928945.Spec := by
  intro n
  simp only [A079165]

end A079165

/-! ## A079165.P10442774449047515177

`a(n-2)-(2-4*n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A079165.P10442774449047515177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - (2 - (4 * n : ℤ)) * a (n - 1)

end

end A079165.P10442774449047515177

namespace A079165

/-- `a(n-2)-(2-4*n)*a(n-1)` -/
def P10442774449047515177.Spec : Prop :=
  ∀ n, P10442774449047515177.a n = A079165 n

end A079165

/-! ## A079165.P10379198386422772479

`a(n-2)+a(n-1)*A051755(A004277(n))` with `a(0)=1, a(1)=2`
-/

namespace A079165.P10379198386422772479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A051755 (A004277 n).toNat

end

end A079165.P10379198386422772479

namespace A079165

/-- `a(n-2)+a(n-1)*A051755(A004277(n))` -/
def P10379198386422772479.Spec : Prop :=
  ∀ n, P10379198386422772479.a n = A079165 n

end A079165

/-! ## A079165.P661389946156258802

`A079166(A340266(n+1))`
-/

namespace A079165.P661389946156258802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079166 (A340266 (n + 1)).toNat

end

end A079165.P661389946156258802

namespace A079165

/-- `A079166(A340266(n+1))` -/
def P661389946156258802.Spec : Prop :=
  ∀ n, P661389946156258802.a n = A079165 n

end A079165

/-!
# A079167: Weighted roundness of n. If n = p_1^e_1...p_k^e_k, then a(n) = e_1 + 2*e_2 + ... + k*e_k. Note that p_i < p_j, i < j is assumed.

The programs for A079167, the canonical program `A079167.P10139096328947258355` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079167 has offset 1).

The definition of A079167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079167.P17314938485529613488

`A056239(A071364(n+1))`
-/

namespace A079167.P17314938485529613488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A071364 (n + 1)).toNat

end

end A079167.P17314938485529613488

namespace A079167

/-- `A056239(A071364(n+1))` -/
def P17314938485529613488.Spec : Prop :=
  ∀ n, P17314938485529613488.a n = A079167 (n + 1)

end A079167

/-! ## A079167.P10139096328947258355

`A056239(A329607(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A079167

/-- `A056239(A329607(n+1))` -/
def P10139096328947258355.Spec : Prop :=
  ∀ n, P10139096328947258355.a n = A079167 (n + 1)

theorem P10139096328947258355.correct : P10139096328947258355.Spec := by
  intro n
  simp only [A079167, Nat.add_sub_cancel]

end A079167

/-! ## A079167.P359202769769877609

`A079168(n+1)-A079169(n+1)`
-/

namespace A079167.P359202769769877609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079168 (n + 1) - A079169 (n + 1)

end

end A079167.P359202769769877609

namespace A079167

/-- `A079168(n+1)-A079169(n+1)` -/
def P359202769769877609.Spec : Prop :=
  ∀ n, P359202769769877609.a n = A079167 (n + 1)

end A079167

/-! ## A079167.P58969718135691054

`A064097(A071364(n+1)%(n+2))`
-/

namespace A079167.P58969718135691054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (Int.tmod (A071364 (n + 1)) (n + 2 : ℤ)).toNat

end

end A079167.P58969718135691054

namespace A079167

/-- `A064097(A071364(n+1)%(n+2))` -/
def P58969718135691054.Spec : Prop :=
  ∀ n, P58969718135691054.a n = A079167 (n + 1)

end A079167

/-! ## A079167.P14413430711862585759

`A325223(A071364(n+1))+A001222(n+1)`
-/

namespace A079167.P14413430711862585759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325223 (A071364 (n + 1)).toNat + A001222 (n + 1)

end

end A079167.P14413430711862585759

namespace A079167

/-- `A325223(A071364(n+1))+A001222(n+1)` -/
def P14413430711862585759.Spec : Prop :=
  ∀ n, P14413430711862585759.a n = A079167 (n + 1)

end A079167

/-! ## A079167.P9767331536819371765

`∑{p}[A329607(n+1), A048675(A048675(#²))]`
-/

namespace A079167.P9767331536819371765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 (A048675 (p ^ 2)).toNat

end

end A079167.P9767331536819371765

namespace A079167

/-- `∑{p}[A329607(n+1), A048675(A048675(#²))]` -/
def P9767331536819371765.Spec : Prop :=
  ∀ n, P9767331536819371765.a n = A079167 (n + 1)

end A079167

/-! ## A079167.P629386975149925034

`A001222(A329600(n+1))`
-/

namespace A079167.P629386975149925034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329600 (n + 1)).toNat

end

end A079167.P629386975149925034

namespace A079167

/-- `A001222(A329600(n+1))` -/
def P629386975149925034.Spec : Prop :=
  ∀ n, P629386975149925034.a n = A079167 (n + 1)

end A079167

/-!
# A079168: Weighted quadratic roundness of n. If n=p_1^e_1...p^k_e^k, then a(n) = e_1 + (2^2 * e_2) + ... + (k^2 * e_k). Note that p_i

The programs for A079168, there is no canonical definition to state claims against.
-/

/-! ## A079168.P1660236036212639354

`A289506(A071364(n+1))`
-/

namespace A079168.P1660236036212639354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A071364 (n + 1)).toNat

end

end A079168.P1660236036212639354

/-! ## A079168.P11496507118269129476

`A079169(n+1)+A079167(n+1)`
-/

namespace A079168.P11496507118269129476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079169 (n + 1) + A079167 (n + 1)

end

end A079168.P11496507118269129476

/-! ## A079168.P8098753245114440248

`A079169(n+1)+A001222(A329600(n+1))`
-/

namespace A079168.P8098753245114440248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079169 (n + 1) + A001222 (A329600 (n + 1)).toNat

end

end A079168.P8098753245114440248

/-! ## A079168.P12488396631063116750

`∑{d}[A329600(n+1), A095117(A297109(#))]`
-/

namespace A079168.P12488396631063116750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A095117 (A297109 d).toNat

end

end A079168.P12488396631063116750

/-!
# A079169: Difference between A079168(n) and A079167(n).

The programs for A079169, there is no canonical definition to state claims against.
-/

/-! ## A079169.P4900815340999387306

`A079168(n+1)-A079167(n+1)`
-/

namespace A079169.P4900815340999387306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079168 (n + 1) - A079167 (n + 1)

end

end A079169.P4900815340999387306

/-! ## A079169.P17103738321850188850

`A079168(A000027(n+1))+A001489(A079167(n+1))`
-/

namespace A079169.P17103738321850188850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079168 (A000027 (n + 1)).toNat + A001489 (A079167 (n + 1)).toNat

end

end A079169.P17103738321850188850

/-! ## A079169.P13902031243151140337

`2*A331410(A329600(n+1))`
-/

namespace A079169.P13902031243151140337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331410 (A329600 (n + 1)).toNat

end

end A079169.P13902031243151140337

/-! ## A079169.P17441148389657443307

`A001222((A329600(A329600(n+1))/A329600(n+1))²)`
-/

namespace A079169.P17441148389657443307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((A329600 (A329600 (n + 1)).toNat : ℚ) / (A329600 (n + 1) : ℚ)) ^ 2)).toNat

end

end A079169.P17441148389657443307

/-! ## A079169.P10399095712682866490

`2*(A335449(n+1)-A335449(A335450(n+1)))`
-/

namespace A079169.P10399095712682866490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A335449 (n + 1) - A335449 (A335450 (n + 1)).toNat)

end

end A079169.P10399095712682866490

/-!
# A079170: a(n) is the next available entirely straight or curved number, depending on whether n contains a curved digit or not.

The programs for A079170, there is no canonical definition to state claims against.
-/

/-! ## A079170.P11906319459690915386

`eq[A217657(n), A328712(A000009(n))]`
-/

namespace A079170.P11906319459690915386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (A000009 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079170.P11906319459690915386

/-! ## A079170.P598775797118668640

`A332144(eq[n, A332144(A113218(n))])`
-/

namespace A079170.P598775797118668640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332144 (A113218 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079170.P598775797118668640

/-! ## A079170.P5046281244400044760

`eq[A035930(A235380(n+1)), A035930(n)]`
-/

namespace A079170.P5046281244400044760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A235380 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079170.P5046281244400044760

/-! ## A079170.P353732297011189339

`eq[A069816(A346703(n+1)), A069816(n)]`
-/

namespace A079170.P353732297011189339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069816 (A346703 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079170.P353732297011189339

/-! ## A079170.P94372344566477291

`eq[A000749(A330721(n+1)), A347470(n)]`
-/

namespace A079170.P94372344566477291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (A330721 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079170.P94372344566477291

/-!
# A079171: Number of isomorphism classes of closed binary operations (groupoids) on a set of order n, listed by class size.

The programs for A079171, there is no canonical definition to state claims against.
-/

/-! ## A079171.P4359808200805431449

`A079175(n+1)+A079174(n+1)`
-/

namespace A079171.P4359808200805431449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (n + 1) + A079174 (n + 1)

end

end A079171.P4359808200805431449

/-! ## A079171.P14698337234541105383

`A079185(n+1)+A079184(n+1)`
-/

namespace A079171.P14698337234541105383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079185 (n + 1) + A079184 (n + 1)

end

end A079171.P14698337234541105383

/-! ## A079171.P12464853336759812567

`A079191(n+1)+A079188(n+1)`
-/

namespace A079171.P12464853336759812567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079191 (n + 1) + A079188 (n + 1)

end

end A079171.P12464853336759812567

/-! ## A079171.P15884144250470456773

`A079175(n+1)+A079197(n+1)+A079194(n+1)`
-/

namespace A079171.P15884144250470456773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (n + 1) + (A079197 (n + 1) + A079194 (n + 1))

end

end A079171.P15884144250470456773

/-! ## A079171.P947203534507480180

`A079184(n+1)+A079201(n+1)+A079197(n+1)`
-/

namespace A079171.P947203534507480180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079184 (n + 1) + (A079201 (n + 1) + A079197 (n + 1))

end

end A079171.P947203534507480180

/-!
# A079172: 

The programs for A079172, there is no canonical definition to state claims against.
-/

/-! ## A079172.P15534181539920436881

`A002489(n+1)-A023814(n+1)`
-/

namespace A079172.P15534181539920436881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002489 (n + 1) - A023814 (n + 1)

end

end A079172.P15534181539920436881

/-!
# A079173: Number of isomorphism classes of non-associative closed binary operations on a set of order n.

The programs for A079173, there is no canonical definition to state claims against.
-/

/-! ## A079173.P16051393810940681689

`A001329(n+1)-A027851(n+1)`
-/

namespace A079173.P16051393810940681689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001329 (n + 1) - A027851 (n + 1)

end

end A079173.P16051393810940681689

/-! ## A079173.P7301392935742497750

`Δ[A118542(n)-A118581(n)]`
-/

namespace A079173.P7301392935742497750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118542 n - A118581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079173.P7301392935742497750

/-!
# A079174: Number of isomorphism classes of non-associative closed binary operations on a set of order n, listed by class size.

The programs for A079174, there is no canonical definition to state claims against.
-/

/-! ## A079174.P7383119999541309268

`A079197(n+1)+A079194(n+1)`
-/

namespace A079174.P7383119999541309268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079197 (n + 1) + A079194 (n + 1)

end

end A079174.P7383119999541309268

/-! ## A079174.P9934236613606639862

`A079171(n+1)-A079175(n+1)`
-/

namespace A079174.P9934236613606639862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 1) - A079175 (n + 1)

end

end A079174.P9934236613606639862

/-! ## A079174.P12787614772757906369

`A079184(n+1)+A079185(n+1)-A079175(n+1)`
-/

namespace A079174.P12787614772757906369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079184 (n + 1) + (A079185 (n + 1) - A079175 (n + 1))

end

end A079174.P12787614772757906369

/-! ## A079174.P10064789006247346838

`A079191(n+1)+A079188(n+1)-A079175(n+1)`
-/

namespace A079174.P10064789006247346838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079191 (n + 1) + A079188 (n + 1) - A079175 (n + 1)

end

end A079174.P10064789006247346838

/-!
# A079175: Number of isomorphism classes of associative closed binary operations (semigroups) on a set of order n, listed by class size.

The programs for A079175, there is no canonical definition to state claims against.
-/

/-! ## A079175.P12044916986030235341

`A079201(n)+A079200(n)`
-/

namespace A079175.P12044916986030235341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 n + A079200 n

end

end A079175.P12044916986030235341

/-! ## A079175.P17758682539946301976

`A079201(n)+A079208(n)+A079207(n)`
-/

namespace A079175.P17758682539946301976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 n + (A079208 n + A079207 n)

end

end A079175.P17758682539946301976

/-! ## A079175.P10355579412925061408

`gcd(A016411(n), A079209(A028310(n)))+A079208(n)+A079207(n)`
-/

namespace A079175.P10355579412925061408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A016411 n) (A079209 (A028310 n).toNat) : ℤ) + (A079208 n + A079207 n)

end

end A079175.P10355579412925061408

/-! ## A079175.P2476577111708443529

`A097448(or(A079200(n), A079201(n)))`
-/

namespace A079175.P2476577111708443529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (Int.lor (A079200 n) (A079201 n)).toNat

end

end A079175.P2476577111708443529

/-!
# A079180: Number of isomorphism classes of anti-associative closed binary operations on a set of order n.

The programs for A079180, there is no canonical definition to state claims against.
-/

/-! ## A079180.P6504952418161630189

`A114322(A259792(n))-A344762(n)`
-/

namespace A079180.P6504952418161630189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (A259792 n).toNat - A344762 n

end

end A079180.P6504952418161630189

/-!
# A079181: Number of isomorphism classes of anti-associative closed binary operations on a set of order n, listed by class size.

The programs for A079181, there is no canonical definition to state claims against.
-/

/-! ## A079181.P13036982457894911874

`A056674(A023625(n+2))`
-/

namespace A079181.P13036982457894911874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (A023625 (n + 2)).toNat

end

end A079181.P13036982457894911874

/-! ## A079181.P13487204128903577759

`and(n+1, A128718(A302696(3*n+1)))`
-/

namespace A079181.P13487204128903577759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A128718 (A302696 (3 * n + 1)).toNat)

end

end A079181.P13487204128903577759

/-! ## A079181.P2061230383471898599

`and(A074501(n), A296150(A208453(n)))`
-/

namespace A079181.P2061230383471898599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074501 n) (A296150 (A208453 n).toNat)

end

end A079181.P2061230383471898599

/-! ## A079181.P8219584450769877526

`and(A182306(n), A259582(A221915(n)))`
-/

namespace A079181.P8219584450769877526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182306 n) (A259582 (A221915 n).toNat)

end

end A079181.P8219584450769877526

/-!
# A079182: 

The programs for A079182, there is no canonical definition to state claims against.
-/

/-! ## A079182.P1604671242176418556

`(n+1)^(n+1)²-(n+1)^∑[n+1]`
-/

namespace A079182.P1604671242176418556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) ^ 2 : ℤ) - ((n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A079182.P1604671242176418556

/-!
# A079183: Number of isomorphism classes of non-commutative closed binary operations (groupoids) on a set of order n.

The programs for A079183, there is no canonical definition to state claims against.
-/

/-! ## A079183.P13220742379840182597

`A001329(n+1)-A001425(n+1)`
-/

namespace A079183.P13220742379840182597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001329 (n + 1) - A001425 (n + 1)

end

end A079183.P13220742379840182597

/-!
# A079184: Number of isomorphism classes of non-commutative closed binary operations on a set of order n, listed by class size.

The programs for A079184, there is no canonical definition to state claims against.
-/

/-! ## A079184.P10185558216511626623

`A079200(n+1)+A079194(n+1)`
-/

namespace A079184.P10185558216511626623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079200 (n + 1) + A079194 (n + 1)

end

end A079184.P10185558216511626623

/-! ## A079184.P7509915775034238666

`A079171(n+1)-A079185(n+1)`
-/

namespace A079184.P7509915775034238666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 1) - A079185 (n + 1)

end

end A079184.P7509915775034238666

/-! ## A079184.P4359207531721625595

`A079175(n+1)+A079174(n+1)-A079185(n+1)`
-/

namespace A079184.P4359207531721625595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (n + 1) + A079174 (n + 1) - A079185 (n + 1)

end

end A079184.P4359207531721625595

/-! ## A079184.P7224389194699885530

`A079171(n+1)-(A079201(n+1)+A079197(n+1))`
-/

namespace A079184.P7224389194699885530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 1) - (A079201 (n + 1) + A079197 (n + 1))

end

end A079184.P7224389194699885530

/-! ## A079184.P17074541049902575520

`A079175(n+1)+A079194(n+1)-A079201(n+1)`
-/

namespace A079184.P17074541049902575520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (n + 1) + (A079194 (n + 1) - A079201 (n + 1))

end

end A079184.P17074541049902575520

/-!
# A079185: Number of isomorphism classes of commutative closed binary operations (groupoids) on a set of order n, listed by class size.

The programs for A079185, there is no canonical definition to state claims against.
-/

/-! ## A079185.P1489781864451854369

`A079201(n+1)+A079197(n+1)`
-/

namespace A079185.P1489781864451854369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 (n + 1) + A079197 (n + 1)

end

end A079185.P1489781864451854369

/-! ## A079185.P14378155122522864777

`A079171(n+1)-A079184(n+1)`
-/

namespace A079185.P14378155122522864777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 1) - A079184 (n + 1)

end

end A079185.P14378155122522864777

/-! ## A079185.P1179359705139216405

`A079197(n+1)+A079209(n+1)+A000007(n)`
-/

namespace A079185.P1179359705139216405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079197 (n + 1) + (A079209 (n + 1) + A000007 n)

end

end A079185.P1179359705139216405

/-! ## A079185.P5484837319793509514

`A079197(n+1)+A151933(n)+A079209(n+1)`
-/

namespace A079185.P5484837319793509514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079197 (n + 1) + (A151933 n + A079209 (n + 1))

end

end A079185.P5484837319793509514

/-! ## A079185.P14157218145260158868

`A079175(n+1)+A079174(n+1)-A079184(n+1)`
-/

namespace A079185.P14157218145260158868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (n + 1) + A079174 (n + 1) - A079184 (n + 1)

end

end A079185.P14157218145260158868

/-!
# A079186: Number of non-anti-commutative closed binary operations on a set of order n.

The programs for A079186, the canonical program `A079186.P7237589967870409756` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079186 has offset 0).

The definition of A079186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079186.P7237589967870409756

`n^n²-n^n*(n²-n)^((n²-n)/2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079186

/-- `n^n²-n^n*(n²-n)^((n²-n)/2)` -/
def P7237589967870409756.Spec : Prop :=
  ∀ n, P7237589967870409756.a n = (A079186 n : ℝ)

end A079186

/-!
# A079188: Number of isomorphism classes of non-anti-commutative closed binary operations on a set of order n, listed by class size.

The programs for A079188, there is no canonical definition to state claims against.
-/

/-! ## A079188.P4439363933311645670

`A079171(n+1)-A079191(n+1)`
-/

namespace A079188.P4439363933311645670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 1) - A079191 (n + 1)

end

end A079188.P4439363933311645670

/-! ## A079188.P10557333464454989541

`A079175(n+1)+A079174(n+1)-A079191(n+1)`
-/

namespace A079188.P10557333464454989541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (n + 1) + A079174 (n + 1) - A079191 (n + 1)

end

end A079188.P10557333464454989541

/-! ## A079188.P13132655736274837416

`A079184(n+1)+A079185(n+1)-A079191(n+1)`
-/

namespace A079188.P13132655736274837416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079184 (n + 1) + (A079185 (n + 1) - A079191 (n + 1))

end

end A079188.P13132655736274837416

/-!
# A079189: Number of anti-commutative closed binary operations (groupoids) on a set of order n.

The programs for A079189, the canonical program `A079189.P6498535998166649016` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079189 has offset 0).

The definition of A079189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079189.P6498535998166649016

`n^n*(n²-n)^((n²-n)/2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079189

/-- `n^n*(n²-n)^((n²-n)/2)` -/
def P6498535998166649016.Spec : Prop :=
  ∀ n, P6498535998166649016.a n = (A079189 n : ℝ)

end A079189

/-! ## A079189.P14075942982392423378

`A002489(n)-A079186(n)`
-/

namespace A079189.P14075942982392423378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002489 n - A079186 n

end

end A079189.P14075942982392423378

namespace A079189

/-- `A002489(n)-A079186(n)` -/
def P14075942982392423378.Spec : Prop :=
  ∀ n, P14075942982392423378.a n = A079189 n

end A079189

/-!
# A079191: Number of isomorphism classes of anti-commutative closed binary operations on a set of order n, listed by class size.

The programs for A079191, there is no canonical definition to state claims against.
-/

/-! ## A079191.P8764969025698150069

`A079171(n+1)-A079188(n+1)`
-/

namespace A079191.P8764969025698150069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 1) - A079188 (n + 1)

end

end A079191.P8764969025698150069

/-! ## A079191.P16985288249921644803

`A079174(n+1)+A079175(n+1)-A079188(n+1)`
-/

namespace A079191.P16985288249921644803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079174 (n + 1) + (A079175 (n + 1) - A079188 (n + 1))

end

end A079191.P16985288249921644803

/-! ## A079191.P2595596060098800079

`A079184(n+1)+A079185(n+1)-A079188(n+1)`
-/

namespace A079191.P2595596060098800079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079184 (n + 1) + (A079185 (n + 1) - A079188 (n + 1))

end

end A079191.P2595596060098800079

/-! ## A079191.P9796053134689238862

`A079175(n+1)+A079174(n+1)-A079188(A005496(n))`
-/

namespace A079191.P9796053134689238862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (n + 1) + A079174 (n + 1) - A079188 (A005496 n).toNat

end

end A079191.P9796053134689238862

/-!
# A079192: Number of non-associative non-commutative closed binary operations on a set of order n.

The programs for A079192, there is no canonical definition to state claims against.
-/

/-! ## A079192.P11133943148403083931

`A002489(n)-A023813(n)-A023814(n)+A023815(n)`
-/

namespace A079192.P11133943148403083931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002489 n - A023813 n - A023814 n + A023815 n

end

end A079192.P11133943148403083931

/-! ## A079192.P6634847452226604786

`A002489(n)-(A079195(n)+A023814(n))`
-/

namespace A079192.P6634847452226604786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002489 n - (A079195 n + A023814 n)

end

end A079192.P6634847452226604786

/-!
# A079195: Number of non-associative commutative closed binary operations on a set of order n.

The programs for A079195, there is no canonical definition to state claims against.
-/

/-! ## A079195.P1257701556565804782

`A023813(n)-A023815(n)`
-/

namespace A079195.P1257701556565804782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023813 n - A023815 n

end

end A079195.P1257701556565804782

/-!
# A079196: Number of isomorphism classes of non-associative commutative closed binary operations on a set of order n.

The programs for A079196, there is no canonical definition to state claims against.
-/

/-! ## A079196.P344630348756017766

`A001425(n)-A001426(n)`
-/

namespace A079196.P344630348756017766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001425 n - A001426 n

end

end A079196.P344630348756017766

/-! ## A079196.P12929807857562780326

`A001329(n)-(A079183(A114806(n))+A001426(n))`
-/

namespace A079196.P12929807857562780326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001329 n - (A079183 (A114806 n).toNat + A001426 n)

end

end A079196.P12929807857562780326

/-! ## A079196.P7825297614017216370

`A001425(n)+A079199(A028310(n))-A027851(n)`
-/

namespace A079196.P7825297614017216370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001425 n + (A079199 (A028310 n).toNat - A027851 n)

end

end A079196.P7825297614017216370

/-! ## A079196.P140405751981489028

`A001425(n)+A079199(A051801(n))-A027851(n)`
-/

namespace A079196.P140405751981489028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001425 n + (A079199 (A051801 n).toNat - A027851 n)

end

end A079196.P140405751981489028

/-! ## A079196.P3369294432810745383

`A001425(n)+A079199(A114806(n))-A027851(n)`
-/

namespace A079196.P3369294432810745383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001425 n + (A079199 (A114806 n).toNat - A027851 n)

end

end A079196.P3369294432810745383

/-!
# A079197: Number of isomorphism classes of non-associative commutative closed binary operations on a set of order n, listed by class size.

The programs for A079197, there is no canonical definition to state claims against.
-/

/-! ## A079197.P9012843082254772323

`A079174(n+1)-A079194(n+1)`
-/

namespace A079197.P9012843082254772323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079174 (n + 1) - A079194 (n + 1)

end

end A079197.P9012843082254772323

/-! ## A079197.P4845350268350997438

`A079185(n+1)-A079201(n+1)`
-/

namespace A079197.P4845350268350997438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079185 (n + 1) - A079201 (n + 1)

end

end A079197.P4845350268350997438

/-! ## A079197.P4616566831356675460

`(A079185(n+1)-A079209(n+1))%((1-and(2, n))*n!)`
-/

namespace A079197.P4616566831356675460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079185 (n + 1) - A079209 (n + 1)) ((1 - (Nat.land 2 n : ℤ)) * (Nat.factorial n : ℤ))

end

end A079197.P4616566831356675460

/-! ## A079197.P8466547239023289035

`(A079185(n+1)-A079209(n+1))%A001873(n)`
-/

namespace A079197.P8466547239023289035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079185 (n + 1) - A079209 (n + 1)) (A001873 n)

end

end A079197.P8466547239023289035

/-! ## A079197.P17728469496902449396

`A079171(n+1)-A079175(n+1)-A079194(n+1)`
-/

namespace A079197.P17728469496902449396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 1) - A079175 (n + 1) - A079194 (n + 1)

end

end A079197.P17728469496902449396

/-!
# A079198: Number of associative non-commutative closed binary operations on a set of order n.

The programs for A079198, there is no canonical definition to state claims against.
-/

/-! ## A079198.P591362175431136434

`A079242(n+1)+A079240(n+1)`
-/

namespace A079198.P591362175431136434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079242 (n + 1) + A079240 (n + 1)

end

end A079198.P591362175431136434

/-! ## A079198.P10231130864558215393

`A023814(n+1)-A023815(n+1)`
-/

namespace A079198.P10231130864558215393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023814 (n + 1) - A023815 (n + 1)

end

end A079198.P10231130864558215393

/-!
# A079199: Number of isomorphism classes of associative non-commutative closed binary operations on a set of order n.

The programs for A079199, there is no canonical definition to state claims against.
-/

/-! ## A079199.P763925845188670001

`Δ[A118581(n)-A118100(n)]`
-/

namespace A079199.P763925845188670001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118581 n - A118100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079199.P763925845188670001

/-! ## A079199.P1457630278813293162

`Δ[A118581(n)-∑[A001426(n)]]`
-/

namespace A079199.P1457630278813293162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118581 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079199.P1457630278813293162

/-! ## A079199.P12770782095955479178

`Δ[A118581(n)]-A001426(n+1)`
-/

namespace A079199.P12770782095955479178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001426 (n + 1)

end

end A079199.P12770782095955479178

/-! ## A079199.P6170393246844148436

`A027851(n+1)-A001426(n+1)`
-/

namespace A079199.P6170393246844148436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 (n + 1) - A001426 (n + 1)

end

end A079199.P6170393246844148436

