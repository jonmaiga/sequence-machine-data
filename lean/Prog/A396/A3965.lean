import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A396500: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = n! * [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G(x) with G(x) = exp(x*G(x)^3).

The programs for A396500, there is no canonical definition to state claims against.
-/

/-! ## A396500.P5337125872578293233

`A118766(A384690(n))`
-/

namespace A396500.P5337125872578293233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A384690 n).toNat

end

end A396500.P5337125872578293233

/-! ## A396500.P3889840289059419215

`A118766(A384692(n))`
-/

namespace A396500.P3889840289059419215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A384692 n).toNat

end

end A396500.P3889840289059419215

/-! ## A396500.P5512097185995950487

`A118766(A384722(n))`
-/

namespace A396500.P5512097185995950487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A384722 n).toNat

end

end A396500.P5512097185995950487

/-! ## A396500.P8304022414977893878

`A118766(A384752(n))`
-/

namespace A396500.P8304022414977893878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A384752 n).toNat

end

end A396500.P8304022414977893878

/-! ## A396500.P14222189435292036880

`A118766(A384788(n))`
-/

namespace A396500.P14222189435292036880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A384788 n).toNat

end

end A396500.P14222189435292036880

/-!
# A396501: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = n! * [x^n] (F_k(x)/x)^(1/2) and F_k(x) is the k-th iteration of x*G(x)^2 with G(x) = exp(x*G(x)^3).

The programs for A396501, there is no canonical definition to state claims against.
-/

/-! ## A396501.P16636802975234975610

`A089843(A384690(n))`
-/

namespace A396501.P16636802975234975610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A384690 n).toNat

end

end A396501.P16636802975234975610

/-! ## A396501.P3228014475590649428

`A089843(A384692(n))`
-/

namespace A396501.P3228014475590649428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A384692 n).toNat

end

end A396501.P3228014475590649428

/-! ## A396501.P12712202430152009015

`A089843(A384722(n))`
-/

namespace A396501.P12712202430152009015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A384722 n).toNat

end

end A396501.P12712202430152009015

/-! ## A396501.P13417186232447641839

`A089843(A384752(n))`
-/

namespace A396501.P13417186232447641839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A384752 n).toNat

end

end A396501.P13417186232447641839

/-! ## A396501.P12626141881209069981

`A089843(A384788(n))`
-/

namespace A396501.P12626141881209069981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A384788 n).toNat

end

end A396501.P12626141881209069981

/-!
# A396503: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = n! * [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G(x)^2 with G(x) = exp(x*G(x)^3).

The programs for A396503, there is no canonical definition to state claims against.
-/

/-! ## A396503.P959435606975788783

`A396504(n)+A118766(A384751(n))-A396588(n)`
-/

namespace A396503.P959435606975788783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396504 n + A118766 (A384751 n).toNat - A396588 n

end

end A396503.P959435606975788783

/-! ## A396503.P3747532314964246073

`A172309(A362787(n))`
-/

namespace A396503.P3747532314964246073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172309 (A362787 n).toNat

end

end A396503.P3747532314964246073

/-! ## A396503.P12441066122439621976

`A182839(A396504(n))`
-/

namespace A396503.P12441066122439621976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182839 (A396504 n).toNat

end

end A396503.P12441066122439621976

/-! ## A396503.P2277727275721214843

`A361397(n)^A118914(A052548(n))`
-/

namespace A396503.P2277727275721214843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361397 n : ℚ) ^ (A118914 (A052548 n).toNat : ℤ)

end

end A396503.P2277727275721214843

/-! ## A396503.P18390067323417080122

`A361397(n)^A118914(A133140(n))`
-/

namespace A396503.P18390067323417080122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361397 n : ℚ) ^ (A118914 (A133140 n).toNat : ℤ)

end

end A396503.P18390067323417080122

/-!
# A396504: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = n! * [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G(x)^2 with G(x) = exp(x*G(x)^4).

The programs for A396504, there is no canonical definition to state claims against.
-/

/-! ## A396504.P17646178470661854412

`A059268(n)*A396499(n)`
-/

namespace A396504.P17646178470661854412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A396499 n

end

end A396504.P17646178470661854412

/-! ## A396504.P14316090465922887241

`A175585(A378238(n))`
-/

namespace A396504.P14316090465922887241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175585 (A378238 n).toNat

end

end A396504.P14316090465922887241

/-! ## A396504.P3067887146991968619

`A059268(n)*A106452(A341268(n))`
-/

namespace A396504.P3067887146991968619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A106452 (A341268 n).toNat

end

end A396504.P3067887146991968619

/-! ## A396504.P2519295892562184560

`A059268(n)*A118766(A384751(n))`
-/

namespace A396504.P2519295892562184560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A118766 (A384751 n).toNat

end

end A396504.P2519295892562184560

/-! ## A396504.P10498784617985484939

`C(A287318(n), A135303(A173505(n)))`
-/

namespace A396504.P10498784617985484939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287318 n).toNat (A135303 (A173505 n).toNat).toNat

end

end A396504.P10498784617985484939

/-!
# A396505: A sequence constructed by greedily sampling the probability distribution given by log_2(1+1/i)^2 - log_2(1+1/(i+1))^2 to minimize discrepancy.

The programs for A396505, there is no canonical definition to state claims against.
-/

/-! ## A396505.P6290697367594639447

`A001511(lcm(A081984(n+1), A283441(n)))`
-/

namespace A396505.P6290697367594639447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lcm (A081984 (n + 1)) (A283441 n))

end

end A396505.P6290697367594639447

/-! ## A396505.P6426873495132623724

`A324904(A023652(n+2))`
-/

namespace A396505.P6426873495132623724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (A023652 (n + 2)).toNat

end

end A396505.P6426873495132623724

/-! ## A396505.P17193163960847019804

`A067513(A132418(n))`
-/

namespace A396505.P17193163960847019804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A132418 n).toNat

end

end A396505.P17193163960847019804

/-! ## A396505.P16820292316084229277

`A322871(A130625(n))`
-/

namespace A396505.P16820292316084229277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322871 (A130625 n).toNat

end

end A396505.P16820292316084229277

/-! ## A396505.P4667019089184739032

`A050603(A125497(n+1))`
-/

namespace A396505.P4667019089184739032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A125497 (n + 1)).toNat

end

end A396505.P4667019089184739032

/-!
# A396506: A sequence constructed by greedily sampling the probability distribution given by 1/log_2(i+1)^2 - 1/log_2(i+2)^2 to minimize discrepancy.

The programs for A396506, there is no canonical definition to state claims against.
-/

/-! ## A396506.P14232685179524365159

`gcd(A002024(n+1), A156253(A046528(n+1)))`
-/

namespace A396506.P14232685179524365159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 1)) (A156253 (A046528 (n + 1)).toNat)

end

end A396506.P14232685179524365159

/-! ## A396506.P3463856541881212190

`A257005(A381238(n))`
-/

namespace A396506.P3463856541881212190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257005 (A381238 n).toNat

end

end A396506.P3463856541881212190

/-! ## A396506.P773809444021785216

`A375571(A058299(n+1))`
-/

namespace A396506.P773809444021785216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375571 (A058299 (n + 1)).toNat

end

end A396506.P773809444021785216

/-! ## A396506.P1485986588763279521

`A389616(A243167(n+2))`
-/

namespace A396506.P1485986588763279521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389616 (A243167 (n + 2)).toNat

end

end A396506.P1485986588763279521

/-! ## A396506.P17616058470859219620

`A051135(A279824(n)+A033949(n+1))`
-/

namespace A396506.P17616058470859219620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (A279824 n + A033949 (n + 1)).toNat

end

end A396506.P17616058470859219620

/-!
# A396509: a(n) = 2 * (4*n+2)^(n-1).

The programs for A396509, the canonical program `A396509.P9110258302490296449` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396509 has offset 0).

The definition of A396509 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A396509.anchor (n : ℕ) : (A396509 n : ℚ) = 2 * (4 * n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A396.A396509`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396509.P9110258302490296449

`2*(4*n+2)^(n-1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396509

/-- `2*(4*n+2)^(n-1)` -/
def P9110258302490296449.Spec : Prop :=
  ∀ n, P9110258302490296449.a n = (A396509 n : ℚ)

end A396509

/-! ## A396509.P2081018550198275302

`A152556(2*n)`
-/

namespace A396509.P2081018550198275302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152556 (2 * n)

end

end A396509.P2081018550198275302

namespace A396509

/-- `A152556(2*n)` -/
def P2081018550198275302.Spec : Prop :=
  ∀ n, P2081018550198275302.a n = A396509 n

end A396509

/-! ## A396509.P11636807838732365510

`record[lcm(2, n+1)]^n/(2*n+1)`
-/

namespace A396509.P11636807838732365510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n : ℚ) / (2 * n + 1 : ℚ)

end

end A396509.P11636807838732365510

namespace A396509

/-- `record[lcm(2, n+1)]^n/(2*n+1)` -/
def P11636807838732365510.Spec : Prop :=
  ∀ n, P11636807838732365510.a n = (A396509 n : ℚ)

end A396509

/-! ## A396509.P11875239587274676947

`record[2*xor(1, n)]^n/(2*n+1)`
-/

namespace A396509.P11875239587274676947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n : ℚ) / (2 * n + 1 : ℚ)

end

end A396509.P11875239587274676947

namespace A396509

/-- `record[2*xor(1, n)]^n/(2*n+1)` -/
def P11875239587274676947.Spec : Prop :=
  ∀ n, P11875239587274676947.a n = (A396509 n : ℚ)

end A396509

/-! ## A396509.P576892500782866652

`sqrt(abs(A317403(2*n+1)))`
-/

namespace A396509.P576892500782866652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|A317403 (2 * n + 1)| : ℝ)

end

end A396509.P576892500782866652

namespace A396509

/-- `sqrt(abs(A317403(2*n+1)))` -/
def P576892500782866652.Spec : Prop :=
  ∀ n, P576892500782866652.a n = (A396509 n : ℝ)

end A396509

/-!
# A396512: Number of labeled histories for rooted at-most-5-furcating trees with n leaves, if simultaneous branching events are allowed.

The programs for A396512, there is no canonical definition to state claims against.
-/

/-! ## A396512.P5963929302655179101

`A005121(n+1)-A124762(A062161(n))`
-/

namespace A396512.P5963929302655179101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005121 (n + 1) - A124762 (A062161 n).toNat

end

end A396512.P5963929302655179101

/-! ## A396512.P15237226233500642736

`A005121(n+1)-A343380(A000108(n))`
-/

namespace A396512.P15237226233500642736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005121 (n + 1) - A343380 (A000108 n).toNat

end

end A396512.P15237226233500642736

/-!
# A396514: a(n) = Sum_{k=1..n, k does not divide n} gcd(k,n).

The programs for A396514, the canonical program `A396514.P190034944072554770` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396514 has offset 1).

The definition of A396514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396514.P10815585297560925689

`∑{d}[n+1, #*(A000010((n+1)/#)-1)]`
-/

namespace A396514.P10815585297560925689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - 1)

end

end A396514.P10815585297560925689

namespace A396514

/-- `∑{d}[n+1, #*(A000010((n+1)/#)-1)]` -/
def P10815585297560925689.Spec : Prop :=
  ∀ n, P10815585297560925689.a n = A396514 (n + 1)

end A396514

/-! ## A396514.P190034944072554770

`A018804(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396514

/-- `A018804(n+1)-A000203(n+1)` -/
def P190034944072554770.Spec : Prop :=
  ∀ n, P190034944072554770.a n = A396514 (n + 1)

theorem P190034944072554770.correct : P190034944072554770.Spec := by
  intro n
  simp only [A396514, Nat.add_sub_cancel]

end A396514

/-! ## A396514.P7133239253975317852

`∑{#}[n, gcd(#+1, n+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]`
-/

namespace A396514.P7133239253975317852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.gcd (k + 1) (n + 1) : ℤ) * (⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉ - ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋)

end

end A396514.P7133239253975317852

namespace A396514

/-- `∑{#}[n, gcd(#+1, n+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` -/
def P7133239253975317852.Spec : Prop :=
  ∀ n, P7133239253975317852.a n = A396514 (n + 1)

end A396514

/-! ## A396514.P138459084826169700

`A018804(n+1)-∑{d}[n+1, #]`
-/

namespace A396514.P138459084826169700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A396514.P138459084826169700

namespace A396514

/-- `A018804(n+1)-∑{d}[n+1, #]` -/
def P138459084826169700.Spec : Prop :=
  ∀ n, P138459084826169700.a n = A396514 (n + 1)

end A396514

/-! ## A396514.P16624808849974174939

`∑{d}[n+1, #*A109606((n+1)/#)]`
-/

namespace A396514.P16624808849974174939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A109606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396514.P16624808849974174939

namespace A396514

/-- `∑{d}[n+1, #*A109606((n+1)/#)]` -/
def P16624808849974174939.Spec : Prop :=
  ∀ n, P16624808849974174939.a n = A396514 (n + 1)

end A396514

/-! ## A396514.P14281408945800754899

`A268631(n+1)+A235796(n+1)`
-/

namespace A396514.P14281408945800754899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) + A235796 (n + 1)

end

end A396514.P14281408945800754899

namespace A396514

/-- `A268631(n+1)+A235796(n+1)` -/
def P14281408945800754899.Spec : Prop :=
  ∀ n, P14281408945800754899.a n = A396514 (n + 1)

end A396514

/-! ## A396514.P11898182356412073535

`A006579(n+1)-A001065(n+1)`
-/

namespace A396514.P11898182356412073535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) - A001065 (n + 1)

end

end A396514.P11898182356412073535

namespace A396514

/-- `A006579(n+1)-A001065(n+1)` -/
def P11898182356412073535.Spec : Prop :=
  ∀ n, P11898182356412073535.a n = A396514 (n + 1)

end A396514

/-! ## A396514.P13955920854317612777

`A396515(n+1)-A000005(n+1)`
-/

namespace A396514.P13955920854317612777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396515 (n + 1) - A000005 (n + 1)

end

end A396514.P13955920854317612777

namespace A396514

/-- `A396515(n+1)-A000005(n+1)` -/
def P13955920854317612777.Spec : Prop :=
  ∀ n, P13955920854317612777.a n = A396514 (n + 1)

theorem P13955920854317612777.correct : P13955920854317612777.Spec := by
  intro n
  simp only [A396514, Nat.add_sub_cancel, A396514.P13955920854317612777.a, A396514.P190034944072554770.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A018804, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A396515, A396515.P9540040117226872358.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396514

/-! ## A396514.P6377241583336015391

`A268631(n+1)-A237588(n+1)`
-/

namespace A396514.P6377241583336015391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) - A237588 (n + 1)

end

end A396514.P6377241583336015391

namespace A396514

/-- `A268631(n+1)-A237588(n+1)` -/
def P6377241583336015391.Spec : Prop :=
  ∀ n, P6377241583336015391.a n = A396514 (n + 1)

end A396514

/-! ## A396514.P14599091930966038940

`A235799(n+1)-A344485(n+1)`
-/

namespace A396514.P14599091930966038940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) - A344485 (n + 1)

end

end A396514.P14599091930966038940

namespace A396514

/-- `A235799(n+1)-A344485(n+1)` -/
def P14599091930966038940.Spec : Prop :=
  ∀ n, P14599091930966038940.a n = A396514 (n + 1)

end A396514

/-! ## A396514.P6530510627832624371

`A333465(n+1)-A333463(n+1)`
-/

namespace A396514.P6530510627832624371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333465 (n + 1) - A333463 (n + 1)

end

end A396514.P6530510627832624371

namespace A396514

/-- `A333465(n+1)-A333463(n+1)` -/
def P6530510627832624371.Spec : Prop :=
  ∀ n, P6530510627832624371.a n = A396514 (n + 1)

end A396514

/-! ## A396514.P561477209273398840

`∑{d}[n+1, A000010(#)*A049820((n+1)/#)]`
-/

namespace A396514.P561477209273398840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A049820 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396514.P561477209273398840

namespace A396514

/-- `∑{d}[n+1, A000010(#)*A049820((n+1)/#)]` -/
def P561477209273398840.Spec : Prop :=
  ∀ n, P561477209273398840.a n = A396514 (n + 1)

end A396514

/-! ## A396514.P8478826310857973475

`A400361(n+1)+A384628(n+1)-A000203(n+1)`
-/

namespace A396514.P8478826310857973475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400361 (n + 1) + A384628 (n + 1) - A000203 (n + 1)

end

end A396514.P8478826310857973475

namespace A396514

/-- `A400361(n+1)+A384628(n+1)-A000203(n+1)` -/
def P8478826310857973475.Spec : Prop :=
  ∀ n, P8478826310857973475.a n = A396514 (n + 1)

theorem P8478826310857973475.correct : P8478826310857973475.Spec := by
  intro n
  simp only [A396514, Nat.add_sub_cancel, A396514.P8478826310857973475.a, A396514.P190034944072554770.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A018804, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A384628, A384628.P13926361255697979705.f1, A384628.P13926361255697979705.a, A400361, A400361.P1889396071312864242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396514

/-! ## A396514.P4821105225667631910

`∑{#}[n, gcd(#+1, n+1)]-∑{d}[n+1, #]`
-/

namespace A396514.P4821105225667631910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.gcd (k + 1) (n + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A396514.P4821105225667631910

namespace A396514

/-- `∑{#}[n, gcd(#+1, n+1)]-∑{d}[n+1, #]` -/
def P4821105225667631910.Spec : Prop :=
  ∀ n, P4821105225667631910.a n = A396514 (n + 1)

end A396514

/-!
# A396515: a(n) = Sum_{k=1..n} gcd(k,n)^(ceiling(n/k) - floor(n/k)).

The programs for A396515, the canonical program `A396515.P9540040117226872358` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396515 has offset 1).

The definition of A396515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396515.P16712332484032746483

`∑{d}[n+1, #*A000010((n+1)/#)-#+1]`
-/

namespace A396515.P16712332484032746483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - (d : ℤ) + 1)

end

end A396515.P16712332484032746483

namespace A396515

/-- `∑{d}[n+1, #*A000010((n+1)/#)-#+1]` -/
def P16712332484032746483.Spec : Prop :=
  ∀ n, P16712332484032746483.a n = A396515 (n + 1)

end A396515

/-! ## A396515.P9540040117226872358

`A000005(n+1)+A396514(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A396515

/-- `A000005(n+1)+A396514(n+1)` -/
def P9540040117226872358.Spec : Prop :=
  ∀ n, P9540040117226872358.a n = A396515 (n + 1)

theorem P9540040117226872358.correct : P9540040117226872358.Spec := by
  intro n
  simp only [A396515, Nat.add_sub_cancel]

end A396515

/-! ## A396515.P896545996709920416

`∑{#}[n, gcd(#+1, n+1)^(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396515.P896545996709920416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.gcd (k + 1) (n + 1) : ℚ) ^ (⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉ - ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ : ℤ)

end

end A396515.P896545996709920416

namespace A396515

/-- `∑{#}[n, gcd(#+1, n+1)^(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` -/
def P896545996709920416.Spec : Prop :=
  ∀ n, P896545996709920416.a n = (A396515 (n + 1) : ℚ)

end A396515

/-! ## A396515.P10892511978533881396

`A268631(n+1)+A152864(n+1)`
-/

namespace A396515.P10892511978533881396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) + A152864 (n + 1)

end

end A396515.P10892511978533881396

namespace A396515

/-- `A268631(n+1)+A152864(n+1)` -/
def P10892511978533881396.Spec : Prop :=
  ∀ n, P10892511978533881396.a n = A396515 (n + 1)

end A396515

/-! ## A396515.P8515274156293969189

`A018804(n+1)-A065608(n+1)`
-/

namespace A396515.P8515274156293969189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A065608 (n + 1)

end

end A396515.P8515274156293969189

namespace A396515

/-- `A018804(n+1)-A065608(n+1)` -/
def P8515274156293969189.Spec : Prop :=
  ∀ n, P8515274156293969189.a n = A396515 (n + 1)

theorem P8515274156293969189.correct : P8515274156293969189.Spec := by
  intro n
  simp only [A396515, Nat.add_sub_cancel, A396515.P8515274156293969189.a, A396515.P9540040117226872358.a, A000005, A000005.P16091521709108585461.a, A018804, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A065608, A065608.P12445239359989980431.a, A396514, A396514.P190034944072554770.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396515

/-! ## A396515.P9386219285631733171

`A000005(n+1)+A018804(n+1)-A000203(n+1)`
-/

namespace A396515.P9386219285631733171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A018804 (n + 1) - A000203 (n + 1))

end

end A396515.P9386219285631733171

namespace A396515

/-- `A000005(n+1)+A018804(n+1)-A000203(n+1)` -/
def P9386219285631733171.Spec : Prop :=
  ∀ n, P9386219285631733171.a n = A396515 (n + 1)

end A396515

/-! ## A396515.P17756306240329266296

`A000005(n+1)+A333465(n+1)-A333463(n+1)`
-/

namespace A396515.P17756306240329266296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A333465 (n + 1) - A333463 (n + 1))

end

end A396515.P17756306240329266296

namespace A396515

/-- `A000005(n+1)+A333465(n+1)-A333463(n+1)` -/
def P17756306240329266296.Spec : Prop :=
  ∀ n, P17756306240329266296.a n = A396515 (n + 1)

end A396515

/-! ## A396515.P12449160193165401892

`∑{#}[n, gcd(#+1, n+1)]-∑{d}[n+1, #-1]`
-/

namespace A396515.P12449160193165401892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.gcd (k + 1) (n + 1) : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)

end

end A396515.P12449160193165401892

namespace A396515

/-- `∑{#}[n, gcd(#+1, n+1)]-∑{d}[n+1, #-1]` -/
def P12449160193165401892.Spec : Prop :=
  ∀ n, P12449160193165401892.a n = A396515 (n + 1)

end A396515

/-! ## A396515.P16627762719762917824

`∑{#}[n, gcd(#+1, n+1)]-A065608(n+1)`
-/

namespace A396515.P16627762719762917824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.gcd (k + 1) (n + 1) : ℕ) : ℤ) - A065608 (n + 1)

end

end A396515.P16627762719762917824

namespace A396515

/-- `∑{#}[n, gcd(#+1, n+1)]-A065608(n+1)` -/
def P16627762719762917824.Spec : Prop :=
  ∀ n, P16627762719762917824.a n = A396515 (n + 1)

theorem P16627762719762917824.correct : P16627762719762917824.Spec := by
  intro n
  simp only [A396515, Nat.add_sub_cancel, A396515.P16627762719762917824.f1, A396515.P16627762719762917824.a, A396515.P9540040117226872358.a, A000005, A000005.P16091521709108585461.a, A065608, A065608.P12445239359989980431.a, A396514, A396514.P190034944072554770.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A018804, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396515

/-!
# A396516: Expansion of g.f. (1 - 17*x^2 - 88*x^4 - 4*x^6)/(1 - 2*x - 17*x^2 - 28*x^3 - 88*x^4 + 26*x^5 - 4*x^6 + 4*x^7).

The programs for A396516, the canonical program `A396516.P16118586046832880944` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396516 has offset 0).

The definition of A396516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-17x^2-88x^4-4x^6)/(1-2x-17x^2-28x^3-88x^4+26x^5-4x^6+4x^7))` (program `A396516.P16118586046832880944`, by `A396516.P16118586046832880944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396516.P16118586046832880944

`ogf((1-17x^2-88x^4-4x^6)/(1-2x-17x^2-28x^3-88x^4+26x^5-4x^6+4x^7))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396516

/-- `ogf((1-17x^2-88x^4-4x^6)/(1-2x-17x^2-28x^3-88x^4+26x^5-4x^6+4x^7))` -/
def P16118586046832880944.Spec : Prop :=
  ∀ n, P16118586046832880944.a n = A396516 n

theorem P16118586046832880944.correct : P16118586046832880944.Spec := by
  intro n
  simp only [A396516]

end A396516

/-!
# A396527: a(n) is the least number that is the sum of two distinct upper twin primes in exactly n ways, or -1 if there is no such number.

The programs for A396527, there is no canonical definition to state claims against.
-/

/-! ## A396527.P9277973346798441533

`A376287(2*(n+1))+2`
-/

namespace A396527.P9277973346798441533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376287 (2 * (n + 1)) + 2

end

end A396527.P9277973346798441533

/-!
# A396529: Number of compositions of n such that the set of parts of each composition covers an interval and parts appear in order.

The programs for A396529, there is no canonical definition to state claims against.
-/

/-! ## A396529.P1883856527110113154

`floor(sqrt(∑[A293993(n)]))`
-/

namespace A396529.P1883856527110113154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396529.P1883856527110113154

/-! ## A396529.P1061709934723934066

`A098745(3*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A396529.P1061709934723934066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A098745 (3 * a (n - 1)).toNat

end

end A396529.P1061709934723934066

/-! ## A396529.P3944076576397493870

`A083023(A017928(n))`
-/

namespace A396529.P3944076576397493870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A017928 n).toNat

end

end A396529.P3944076576397493870

/-! ## A396529.P5261989690250726680

`A140473(A018155(n))`
-/

namespace A396529.P5261989690250726680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (A018155 n).toNat

end

end A396529.P5261989690250726680

/-! ## A396529.P852784897634630776

`A139338(A024501(n))`
-/

namespace A396529.P852784897634630776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A024501 n).toNat

end

end A396529.P852784897634630776

/-!
# A396530: First column of the triangular array with T(0, m) = binomial(2*m, m) and T(n, m) = T(n - 1, m + 3) - 2*T(n - 1, m + 2) + T(n - 1, m + 1).

The programs for A396530, the canonical program `A396530.P3366522132557851823` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396530 has offset 0).

The definition of A396530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396530.P3366522132557851823

`∑{#}[2*n, (-1)^#*C(2*n, #)*C(2*(n+#), n+#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396530

/-- `∑{#}[2*n, (-1)^#*C(2*n, #)*C(2*(n+#), n+#)]` -/
def P3366522132557851823.Spec : Prop :=
  ∀ n, P3366522132557851823.a n = A396530 n

theorem P3366522132557851823.correct : P3366522132557851823.Spec := by
  intro n
  simp only [A396530]

end A396530

/-! ## A396530.P15528895945008634210

`A398992(A139277(n))`
-/

namespace A396530.P15528895945008634210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398992 (A139277 n).toNat

end

end A396530.P15528895945008634210

namespace A396530

/-- `A398992(A139277(n))` -/
def P15528895945008634210.Spec : Prop :=
  ∀ n, P15528895945008634210.a n = A396530 n

end A396530

/-! ## A396530.P12585403719110395310

`A163771(A062725(n))`
-/

namespace A396530.P12585403719110395310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163771 (A062725 n).toNat

end

end A396530.P12585403719110395310

namespace A396530

/-- `A163771(A062725(n))` -/
def P12585403719110395310.Spec : Prop :=
  ∀ n, P12585403719110395310.a n = A396530 n

end A396530

/-! ## A396530.P14895466975761610381

`A163771(A000217(3*n)+n)`
-/

namespace A396530.P14895466975761610381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163771 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A396530.P14895466975761610381

namespace A396530

/-- `A163771(A000217(3*n)+n)` -/
def P14895466975761610381.Spec : Prop :=
  ∀ n, P14895466975761610381.a n = A396530 n

end A396530

/-!
# A396531: First column of the triangular array with T(0, m) = binomial(2*m, m)/(m + 1) = A000108(m) and T(n, m) = T(n - 1, m + 3) - 2*T(n - 1, m + 2) + T(n - 1, m + 1).

The programs for A396531, the canonical program `A396531.P11472029456509007010` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396531 has offset 0).

The definition of A396531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396531.P11472029456509007010

`∑{#}[2*n, (-1)^#*C(2*n, #)*A000108(3*n-#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396531

/-- `∑{#}[2*n, (-1)^#*C(2*n, #)*A000108(3*n-#)]` -/
def P11472029456509007010.Spec : Prop :=
  ∀ n, P11472029456509007010.a n = A396531 n

theorem P11472029456509007010.correct : P11472029456509007010.Spec := by
  intro n
  simp only [A396531]

end A396531

/-! ## A396531.P6803278213276857321

`A059346(C(3*(n+1)-1, 2)-(2*n+1))`
-/

namespace A396531.P6803278213276857321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (Nat.choose ((3 * (n + 1) : ℤ) - 1).toNat 2 - (2 * n + 1))

end

end A396531.P6803278213276857321

namespace A396531

/-- `A059346(C(3*(n+1)-1, 2)-(2*n+1))` -/
def P6803278213276857321.Spec : Prop :=
  ∀ n, P6803278213276857321.a n = A396531 n

end A396531

/-! ## A396531.P8584308816125933953

`A059346(A062725(n))`
-/

namespace A396531.P8584308816125933953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A062725 n).toNat

end

end A396531.P8584308816125933953

namespace A396531

/-- `A059346(A062725(n))` -/
def P8584308816125933953.Spec : Prop :=
  ∀ n, P8584308816125933953.a n = A396531 n

end A396531

/-! ## A396531.P2455189464999878091

`A399000(A139277(n))`
-/

namespace A396531.P2455189464999878091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399000 (A139277 n).toNat

end

end A396531.P2455189464999878091

namespace A396531

/-- `A399000(A139277(n))` -/
def P2455189464999878091.Spec : Prop :=
  ∀ n, P2455189464999878091.a n = A396531 n

end A396531

/-! ## A396531.P5542908493406991775

`A398996(A022282(n))`
-/

namespace A396531.P5542908493406991775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398996 (A022282 n).toNat

end

end A396531.P5542908493406991775

namespace A396531

/-- `A398996(A022282(n))` -/
def P5542908493406991775.Spec : Prop :=
  ∀ n, P5542908493406991775.a n = A396531 n

end A396531

/-!
# A396532: First column of the triangular array with T(0, m) = binomial(2*m, m) and T(n, m) = T(n - 1, m + 3) - T(n - 1, m + 2).

The programs for A396532, the canonical program `A396532.P14538523442861767212` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396532 has offset 0).

The definition of A396532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396532.P14538523442861767212

`∑{#}[n, (-1)^(n-#)*C(n, #)*C(2*(2*n+#), 2*n+#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396532

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*C(2*(2*n+#), 2*n+#)]` -/
def P14538523442861767212.Spec : Prop :=
  ∀ n, P14538523442861767212.a n = (A396532 n : ℚ)

end A396532

/-! ## A396532.P6225731257141326826

`A163771(A062728(n))`
-/

namespace A396532.P6225731257141326826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163771 (A062728 n).toNat

end

end A396532.P6225731257141326826

namespace A396532

/-- `A163771(A062728(n))` -/
def P6225731257141326826.Spec : Prop :=
  ∀ n, P6225731257141326826.a n = A396532 n

end A396532

/-!
# A396535: Number of labeled histories for rooted at-most-6-furcating trees with n leaves, if simultaneous branching events are allowed.

The programs for A396535, there is no canonical definition to state claims against.
-/

/-! ## A396535.P17431699439558817497

`A000027(A005121(n+1)-A124760(n))`
-/

namespace A396535.P17431699439558817497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005121 (n + 1) - A124760 n).toNat

end

end A396535.P17431699439558817497

/-! ## A396535.P7100493470802065019

`A005121(n+1)-A124762(A028566(n))`
-/

namespace A396535.P7100493470802065019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005121 (n + 1) - A124762 (A028566 n).toNat

end

end A396535.P7100493470802065019

/-! ## A396535.P12339002787317242939

`A000027(A005121(n+1)-A307835(n))`
-/

namespace A396535.P12339002787317242939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005121 (n + 1) - A307835 n).toNat

end

end A396535.P12339002787317242939

/-!
# A396537: Number of inequivalent strict closure operators on a set of n elements such that all pairs of distinct points can be separated by clopen sets.

The programs for A396537, there is no canonical definition to state claims against.
-/

/-! ## A396537.P6127165985412060446

`A029240(A054885(n))`
-/

namespace A396537.P6127165985412060446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (A054885 n).toNat

end

end A396537.P6127165985412060446

/-!
# A396538: Number of inequivalent strict closure operators on a set of n elements such that every point and every closed set not containing that point can be separated by clopen sets.

The programs for A396538, there is no canonical definition to state claims against.
-/

/-! ## A396538.P1981518088581472555

`row(row(A329766(2^n)))`
-/

namespace A396538.P1981518088581472555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (A329766 (2 ^ n)).toNat)

end

end A396538.P1981518088581472555

/-!
# A396539: Number of bracelets (turnover necklaces) of length 4 using exactly 4 colors, where the colors are chosen from a palette of size N = A000081(n) (the number of unlabeled rooted trees with n nodes), and each color corresponds to a distinct tree shape.

The programs for A396539, there is no canonical definition to state claims against.
-/

/-! ## A396539.P8387589838495308060

`3*C(A000081(n+4), 4)`
-/

namespace A396539.P8387589838495308060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A000081 (n + 4)).toNat 4

end

end A396539.P8387589838495308060

/-! ## A396539.P665091711042945026

`3*A000332(A000081(n+4))`
-/

namespace A396539.P665091711042945026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (A000081 (n + 4)).toNat

end

end A396539.P665091711042945026

/-!
# A396540: a(1) = 1; for n > 1, a(n) is the smallest number > 5^(n-1) with exactly n divisors.

The programs for A396540, there is no canonical definition to state claims against.
-/

/-! ## A396540.P207871501335742821

`A079427(5^n)`
-/

namespace A396540.P207871501335742821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (5 ^ n)

end

end A396540.P207871501335742821

/-! ## A396540.P16248105094722585293

`A079428(5^n)`
-/

namespace A396540.P16248105094722585293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079428 (5 ^ n)

end

end A396540.P16248105094722585293

/-!
# A396541: a(1) = 1; for n > 1, a(n) is the smallest number > 7^(n-1) with exactly n divisors.

The programs for A396541, there is no canonical definition to state claims against.
-/

/-! ## A396541.P15259419447371511524

`A079427(7^n)`
-/

namespace A396541.P15259419447371511524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (7 ^ n)

end

end A396541.P15259419447371511524

/-!
# A396542: Smallest powerful k (in A001694) that exceeds A332785(n) and has the same squarefree kernel as A332785(n).

The programs for A396542, there is no canonical definition to state claims against.
-/

/-! ## A396542.P17008560680723164857

`A007947(A392564(n+1))^2`
-/

namespace A396542.P17008560680723164857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A392564 (n + 1)).toNat ^ 2

end

end A396542.P17008560680723164857

/-!
# A396543: The number of coreful divisors of n that are not exponential divisors of n.

The programs for A396543, the canonical program `A396543.P10005515851274933396` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396543 has offset 1).

The definition of A396543 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A396543.P10005515851274933396

`A005361(n+1)-A049419(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A396543

/-- `A005361(n+1)-A049419(n+1)` -/
def P10005515851274933396.Spec : Prop :=
  ∀ n, P10005515851274933396.a n = A396543 (n + 1)

theorem P10005515851274933396.correct : P10005515851274933396.Spec := by
  intro n
  simp only [A396543, Nat.add_sub_cancel]

end A396543

/-! ## A396543.P13175237901352380037

`∏{e}[1+n, #]-A049419(n+1)`
-/

namespace A396543.P13175237901352380037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A049419 (n + 1)

end

end A396543.P13175237901352380037

namespace A396543

/-- `∏{e}[1+n, #]-A049419(n+1)` -/
def P13175237901352380037.Spec : Prop :=
  ∀ n, P13175237901352380037.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P193409867492306759

`A005361(n+1)-∏{e}[1+n, A000005(#)]`
-/

namespace A396543.P193409867492306759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p)

end

end A396543.P193409867492306759

namespace A396543

/-- `A005361(n+1)-∏{e}[1+n, A000005(#)]` -/
def P193409867492306759.Spec : Prop :=
  ∀ n, P193409867492306759.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P6781021709394804738

`A005361(n+1)-∏{e}[n+1, A074848(#)]`
-/

namespace A396543.P6781021709394804738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A074848 (Nat.factorization (f1 n) p)

end

end A396543.P6781021709394804738

namespace A396543

/-- `A005361(n+1)-∏{e}[n+1, A074848(#)]` -/
def P6781021709394804738.Spec : Prop :=
  ∀ n, P6781021709394804738.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P16663979069057029022

`A005361(n+1)-∏{e}[n+1, A122667(#)]`
-/

namespace A396543.P16663979069057029022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A122667 (Nat.factorization (f1 n) p)

end

end A396543.P16663979069057029022

namespace A396543

/-- `A005361(n+1)-∏{e}[n+1, A122667(#)]` -/
def P16663979069057029022.Spec : Prop :=
  ∀ n, P16663979069057029022.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P11433994574826607472

`A005361(n+1)-∏{e}[n+1, A167447(#)]`
-/

namespace A396543.P11433994574826607472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A167447 (Nat.factorization (f1 n) p)

end

end A396543.P11433994574826607472

namespace A396543

/-- `A005361(n+1)-∏{e}[n+1, A167447(#)]` -/
def P11433994574826607472.Spec : Prop :=
  ∀ n, P11433994574826607472.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P12880277237956296872

`A005361(n+1)-∏{e}[n+1, A184395(#)]`
-/

namespace A396543.P12880277237956296872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A184395 (Nat.factorization (f1 n) p)

end

end A396543.P12880277237956296872

namespace A396543

/-- `A005361(n+1)-∏{e}[n+1, A184395(#)]` -/
def P12880277237956296872.Spec : Prop :=
  ∀ n, P12880277237956296872.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P238086169018807053

`A005361(n+1)-∏{e}[n+1, A302051(#)]`
-/

namespace A396543.P238086169018807053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A302051 (Nat.factorization (f1 n) p)

end

end A396543.P238086169018807053

namespace A396543

/-- `A005361(n+1)-∏{e}[n+1, A302051(#)]` -/
def P238086169018807053.Spec : Prop :=
  ∀ n, P238086169018807053.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P15112146443697078266

`A183094(n+1)+1-∏{e}[n+1, A122667(#)]`
-/

namespace A396543.P15112146443697078266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1) + 1 - ∏ p ∈ Nat.primeFactors (f1 n), A122667 (Nat.factorization (f1 n) p)

end

end A396543.P15112146443697078266

namespace A396543

/-- `A183094(n+1)+1-∏{e}[n+1, A122667(#)]` -/
def P15112146443697078266.Spec : Prop :=
  ∀ n, P15112146443697078266.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P1805253642736664498

`A183094(n+1)+1-∏{e}[n+1, A325560(#)]`
-/

namespace A396543.P1805253642736664498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1) + 1 - ∏ p ∈ Nat.primeFactors (f1 n), A325560 (Nat.factorization (f1 n) p)

end

end A396543.P1805253642736664498

namespace A396543

/-- `A183094(n+1)+1-∏{e}[n+1, A325560(#)]` -/
def P1805253642736664498.Spec : Prop :=
  ∀ n, P1805253642736664498.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P5828905634648017253

`∑{d}[n+1, A112526(#)]-∏{e}[n+1, A122667(#)]`
-/

namespace A396543.P5828905634648017253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112526 d - ∏ p ∈ Nat.primeFactors (f2 n), A122667 (Nat.factorization (f2 n) p)

end

end A396543.P5828905634648017253

namespace A396543

/-- `∑{d}[n+1, A112526(#)]-∏{e}[n+1, A122667(#)]` -/
def P5828905634648017253.Spec : Prop :=
  ∀ n, P5828905634648017253.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P16108549777714045291

`∑{d}[n+1, A112526(#)]-∏{e}[n+1, A325560(#)]`
-/

namespace A396543.P16108549777714045291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112526 d - ∏ p ∈ Nat.primeFactors (f2 n), A325560 (Nat.factorization (f2 n) p)

end

end A396543.P16108549777714045291

namespace A396543

/-- `∑{d}[n+1, A112526(#)]-∏{e}[n+1, A325560(#)]` -/
def P16108549777714045291.Spec : Prop :=
  ∀ n, P16108549777714045291.a n = A396543 (n + 1)

end A396543

/-! ## A396543.P8834329115913932300

`sqrt(A398463(n+1)/(n+1))-∏{e}[n+1, A122667(#)]`
-/

namespace A396543.P8834329115913932300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A398463 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ) - ((∏ p ∈ Nat.primeFactors (f1 n), A122667 (Nat.factorization (f1 n) p) : ℤ) : ℝ)

end

end A396543.P8834329115913932300

namespace A396543

/-- `sqrt(A398463(n+1)/(n+1))-∏{e}[n+1, A122667(#)]` -/
def P8834329115913932300.Spec : Prop :=
  ∀ n, P8834329115913932300.a n = (A396543 (n + 1) : ℝ)

end A396543

/-! ## A396543.P11182574977490071959

`sqrt(A398463(n+1)/(n+1))-∏{e}[n+1, A325560(#)]`
-/

namespace A396543.P11182574977490071959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A398463 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ) - ((∏ p ∈ Nat.primeFactors (f1 n), A325560 (Nat.factorization (f1 n) p) : ℤ) : ℝ)

end

end A396543.P11182574977490071959

namespace A396543

/-- `sqrt(A398463(n+1)/(n+1))-∏{e}[n+1, A325560(#)]` -/
def P11182574977490071959.Spec : Prop :=
  ∀ n, P11182574977490071959.a n = (A396543 (n + 1) : ℝ)

end A396543

/-! ## A396543.P12574053170772421845

`A049820(A072411(n+1))*A325509(n)`
-/

namespace A396543.P12574053170772421845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A072411 (n + 1)).toNat * A325509 n

end

end A396543.P12574053170772421845

namespace A396543

/-- `A049820(A072411(n+1))*A325509(n)` -/
def P12574053170772421845.Spec : Prop :=
  ∀ n, P12574053170772421845.a n = A396543 (n + 1)

end A396543

/-!
# A396544: The sum of the coreful divisors of n that are not exponential divisors of n.

The programs for A396544, there is no canonical definition to state claims against.
-/

/-! ## A396544.P9330549692010009776

`A057723(n+1)-A051377(n+1)`
-/

namespace A396544.P9330549692010009776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A051377 (n + 1)

end

end A396544.P9330549692010009776

/-! ## A396544.P2838984171800550324

`A336563(n+1)-A126164(n+1)`
-/

namespace A396544.P2838984171800550324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) - A126164 (n + 1)

end

end A396544.P2838984171800550324

/-! ## A396544.P3653168541183300025

`A057723(n+1)-(A126164(n+1)+n+1)`
-/

namespace A396544.P3653168541183300025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - (A126164 (n + 1) + (n + 1 : ℤ))

end

end A396544.P3653168541183300025

/-! ## A396544.P17134871008298134059

`A057723(n+1)-∏{p}[n+1, #]*A241405((n+1)/∏{p}[n+1, #])`
-/

namespace A396544.P17134871008298134059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A241405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A396544.P17134871008298134059

/-! ## A396544.P17482131679147624148

`A057723(n+1)-A007947(n+1)*A241405(A003557(n+1))`
-/

namespace A396544.P17482131679147624148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A007947 (n + 1) * A241405 (A003557 (n + 1)).toNat

end

end A396544.P17482131679147624148

/-!
# A396545: Numbers that are equal to the sum of their coreful divisors that are not exponential divisors.

The programs for A396545, there is no canonical definition to state claims against.
-/

/-! ## A396545.P13408756732029785044

`∩[A396550(n+1), A174312(n)]`
-/

namespace A396545.P13408756732029785044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396545.P13408756732029785044

/-! ## A396545.P1268338761863344026

`∩[A396550(n+1), A398225(n+1)]`
-/

namespace A396545.P1268338761863344026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396545.P1268338761863344026

/-! ## A396545.P8547053384387156806

`filter[A396550(n+1), A085002(#)]`
-/

namespace A396545.P8547053384387156806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085002 (f1 j).toNat = 1) n)

end

end A396545.P8547053384387156806

/-! ## A396545.P18244754660341551013

`filter[A396550(n+1), A370598(#)]`
-/

namespace A396545.P18244754660341551013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A396545.P18244754660341551013

/-! ## A396545.P3126556659755999149

`filter[A396550(n+2), A190938(#)]`
-/

namespace A396545.P3126556659755999149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190938 (f1 j).toNat = 1) n)

end

end A396545.P3126556659755999149

/-!
# A396547: Primes p such that the sum of the distinct prime factors of p-1 is prime.

The programs for A396547, the canonical program `A396547.P18267465078634067206` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396547 has offset 1).

The definition of A396547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396547.P18267465078634067206

`record[A006530(A114522(n+1)+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A396547

/-- `record[A006530(A114522(n+1)+1)]` -/
def P18267465078634067206.Spec : Prop :=
  ∀ n, P18267465078634067206.a n = A396547 (n + 1)

theorem P18267465078634067206.correct : P18267465078634067206.Spec := by
  intro n
  simp only [A396547, Nat.add_sub_cancel]

end A396547

/-! ## A396547.P15224196648768873463

`A129621(A128870(n+2))`
-/

namespace A396547.P15224196648768873463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129621 (A128870 (n + 2)).toNat

end

end A396547.P15224196648768873463

namespace A396547

/-- `A129621(A128870(n+2))` -/
def P15224196648768873463.Spec : Prop :=
  ∀ n, P15224196648768873463.a n = A396547 (n + 1)

end A396547

/-! ## A396547.P14266493191610380047

`A008578(lt[A303040(2*n+1), A014092(n+1)])`
-/

namespace A396547.P14266493191610380047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396547.P14266493191610380047

namespace A396547

/-- `A008578(lt[A303040(2*n+1), A014092(n+1)])` -/
def P14266493191610380047.Spec : Prop :=
  ∀ n, P14266493191610380047.a n = A396547 (n + 1)

end A396547

/-! ## A396547.P6209932006671936741

`A154363(lt[A263757(n+4), A190247(n+1)])`
-/

namespace A396547.P6209932006671936741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263757 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396547.P6209932006671936741

namespace A396547

/-- `A154363(lt[A263757(n+4), A190247(n+1)])` -/
def P6209932006671936741.Spec : Prop :=
  ∀ n, P6209932006671936741.a n = A396547 (n + 1)

end A396547

/-! ## A396547.P17284627084305911566

`∩[A000040(n+1), A346132(A134407(n+1))]`
-/

namespace A396547.P17284627084305911566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A134407 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396547.P17284627084305911566

namespace A396547

/-- `∩[A000040(n+1), A346132(A134407(n+1))]` -/
def P17284627084305911566.Spec : Prop :=
  ∀ n, (P17284627084305911566.a n : ℤ) = A396547 (n + 1)

end A396547

/-!
# A396548: The number of coreful divisors of n that are not exponential unitary divisors of n.

The programs for A396548, the canonical program `A396548.P9291011898899936861` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396548 has offset 1).

The definition of A396548 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A396548.P9291011898899936861

`A005361(n+1)-A278908(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A396548

/-- `A005361(n+1)-A278908(n+1)` -/
def P9291011898899936861.Spec : Prop :=
  ∀ n, P9291011898899936861.a n = A396548 (n + 1)

theorem P9291011898899936861.correct : P9291011898899936861.Spec := by
  intro n
  simp only [A396548, Nat.add_sub_cancel]

end A396548

/-! ## A396548.P14078752978560068680

`A007528(A291149(n))%∏{e}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A396548.P14078752978560068680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007528 (A291149 n).toNat) ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p : ℕ) : ℤ)

end

end A396548.P14078752978560068680

namespace A396548

/-- `A007528(A291149(n))%∏{e}[(n+1)/∏{p}[n+1, #], #]` -/
def P14078752978560068680.Spec : Prop :=
  ∀ n, P14078752978560068680.a n = A396548 (n + 1)

end A396548

/-!
# A396549: The sum of the coreful divisors of n that are not exponential unitary divisors of n.

The programs for A396549, there is no canonical definition to state claims against.
-/

/-! ## A396549.P6165585223867328780

`A057723(n+1)-A322857(n+1)`
-/

namespace A396549.P6165585223867328780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A322857 (n + 1)

end

end A396549.P6165585223867328780

/-! ## A396549.P6557117766113615329

`A057723(n+1)-A323309(n+1)%A391536(val(n+1, 2)+1)`
-/

namespace A396549.P6557117766113615329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - Int.tmod (A323309 (n + 1)) (A391536 (SequenceMachineLib.valuation (n + 1) 2 + 1))

end

end A396549.P6557117766113615329

/-! ## A396549.P3189286678277822995

`A057723(n+1)-A323309(n+1)%A240620(n+1)`
-/

namespace A396549.P3189286678277822995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - Int.tmod (A323309 (n + 1)) (A240620 (n + 1))

end

end A396549.P3189286678277822995

/-! ## A396549.P14024099846342129051

`A057723(n+1)-(A396544(A052333(n+1))+A323309(n+1))`
-/

namespace A396549.P14024099846342129051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - (A396544 (A052333 (n + 1)).toNat + A323309 (n + 1))

end

end A396549.P14024099846342129051

/-! ## A396549.P9846142073899416389

`A007948(A121714(2*(n+2))*(n+1))%(n+1)`
-/

namespace A396549.P9846142073899416389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007948 (A121714 (2 * (n + 2)) * (n + 1 : ℤ)).toNat) (n + 1 : ℤ)

end

end A396549.P9846142073899416389

/-!
# A396553: Numbers k such that EulerPhi(psi(k)) is a power of 2, where psi = A002322 is the reduced totient function.

The programs for A396553, there is no canonical definition to state claims against.
-/

/-! ## A396553.P8178552454968788401

`lt[A374820(A077197(n+1))-2, 2]+1`
-/

namespace A396553.P8178552454968788401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374820 (A077197 (n + 1)).toNat - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A396553.P8178552454968788401

/-! ## A396553.P15058316507087648816

`lt[A079194(A046144(n+1))-4, A003056(n)]+1`
-/

namespace A396553.P15058316507087648816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079194 (A046144 (n + 1)).toNat - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A396553.P15058316507087648816

/-! ## A396553.P9112042932179893135

`lt[A352525(n), A015910(A001082(3*n+5))]`
-/

namespace A396553.P9112042932179893135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (A001082 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396553.P9112042932179893135

/-! ## A396553.P15396961573862199552

`lt[A301736(A281116(3*(n+1))), A301744(n+1)]`
-/

namespace A396553.P15396961573862199552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301736 (A281116 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301744 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396553.P15396961573862199552

/-! ## A396553.P2090959902428693490

`lt[A038575(A293221(n+1)), n]`
-/

namespace A396553.P2090959902428693490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (A293221 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396553.P2090959902428693490

/-!
# A396555: Primes p such that EulerPhi(p-1) is not a power of 2.

The programs for A396555, there is no canonical definition to state claims against.
-/

/-! ## A396555.P6398503883092137161

`p?[A396554(n+1)]`
-/

namespace A396555.P6398503883092137161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A396555.P6398503883092137161

/-! ## A396555.P1683028076301372783

`filter[A396554(n+1), A010051(#)]`
-/

namespace A396555.P1683028076301372783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A396555.P1683028076301372783

/-! ## A396555.P5228674063567095874

`∩[A000040(n+1), A396554(n+1)]`
-/

namespace A396555.P5228674063567095874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P5228674063567095874

/-! ## A396555.P2225569983152410524

`∩[A004139(n+1), A396554(n+1)]`
-/

namespace A396555.P2225569983152410524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P2225569983152410524

/-! ## A396555.P11956412607913391375

`∩[A006005(n+1), A396554(n+1)]`
-/

namespace A396555.P11956412607913391375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P11956412607913391375

/-! ## A396555.P7172666940243282921

`∩[A008578(n+1), A396554(n+1)]`
-/

namespace A396555.P7172666940243282921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P7172666940243282921

/-! ## A396555.P3260082764838671450

`∩[A045319(n+1), A396554(n+1)]`
-/

namespace A396555.P3260082764838671450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P3260082764838671450

/-! ## A396555.P4181910161693933681

`∩[A045344(n+1), A396554(n+1)]`
-/

namespace A396555.P4181910161693933681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P4181910161693933681

/-! ## A396555.P1723308773109049009

`∩[A046022(n+1), A396554(n+1)]`
-/

namespace A396555.P1723308773109049009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P1723308773109049009

/-! ## A396555.P10260720800705429438

`∩[A051948(n+1), A396554(n+1)]`
-/

namespace A396555.P10260720800705429438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P10260720800705429438

/-! ## A396555.P13754689236754220977

`∩[A065091(n+1), A396554(n+1)]`
-/

namespace A396555.P13754689236754220977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P13754689236754220977

/-! ## A396555.P13428664946197599457

`∩[A066050(n+1), A396554(n+1)]`
-/

namespace A396555.P13428664946197599457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P13428664946197599457

/-! ## A396555.P11199366553396070501

`∩[A066542(n+1), A396554(n+1)]`
-/

namespace A396555.P11199366553396070501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396555.P11199366553396070501

/-! ## A396555.P7433645709816182352

`filter[A396554(n+1), A080339(#)]`
-/

namespace A396555.P7433645709816182352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A396555.P7433645709816182352

/-! ## A396555.P16516515094750038305

`filter[A396554(n+1), A080545(#)]`
-/

namespace A396555.P16516515094750038305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A396555.P16516515094750038305

/-! ## A396555.P2837228021837904261

`filter[A396554(n+1), A171387(#)]`
-/

namespace A396555.P2837228021837904261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A396555.P2837228021837904261

/-!
# A396557: Expansion of e.g.f. -LambertW(-LambertW(-LambertW(-x))).

The programs for A396557, there is no canonical definition to state claims against.
-/

/-! ## A396557.P18183899710269360188

`n*A233970(A052709(n))`
-/

namespace A396557.P18183899710269360188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A233970 (A052709 n).toNat

end

end A396557.P18183899710269360188

/-!
# A396558: Expansion of e.g.f. LambertW(-LambertW(LambertW(-x))).

The programs for A396558, there is no canonical definition to state claims against.
-/

/-! ## A396558.P13175841068577291165

`lcm(n, A122344(n!))`
-/

namespace A396558.P13175841068577291165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A122344 (Nat.factorial n))

end

end A396558.P13175841068577291165

/-!
# A396560: Which blocks in A280864 end in a prime.

The programs for A396560, there is no canonical definition to state claims against.
-/

/-! ## A396560.P17382226797483057667

`lt[1, A397172(n+1)]+1`
-/

namespace A396560.P17382226797483057667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A396560.P17382226797483057667

/-! ## A396560.P257834866022073339

`eq[2, 2%(A396302(n+1)+1)]+1`
-/

namespace A396560.P257834866022073339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A396302 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A396560.P257834866022073339

/-! ## A396560.P2722872589761819718

`A020725(eq[3, 1+A397172(n+1)])`
-/

namespace A396560.P2722872589761819718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A397172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A396560.P2722872589761819718

/-! ## A396560.P5342151338975722580

`eq[1, A003415(A396300(n+1))]+1`
-/

namespace A396560.P5342151338975722580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A396300 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A396560.P5342151338975722580

/-!
# A396561: a(n) = A008479(A280864(n)).

The programs for A396561, there is no canonical definition to state claims against.
-/

/-! ## A396561.P3092745831072166205

`A008479(A280864(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396561.P3092745831072166205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A280864 (n + 1)).toNat

end

end A396561.P3092745831072166205

/-! ## A396561.P7287281701482857937

`A374757(A373951(2*n+n+2))`
-/

namespace A396561.P7287281701482857937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374757 (A373951 (2 * n + (n + 2))).toNat

end

end A396561.P7287281701482857937

/-! ## A396561.P5693803246427967047

`A007336(A167286(A283940(A167288(A022778(n+1)))))`
-/

namespace A396561.P5693803246427967047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (A167286 (A283940 (A167288 (A022778 (n + 1)).toNat).toNat).toNat).toNat

end

end A396561.P5693803246427967047

/-!
# A396566: Number of bracelets (turnover necklaces) of length 4 using exactly 3 colors, where the colors are chosen from a palette of size N = A000081(n) (the number of unlabeled rooted trees with n nodes), and each color corresponds to a distinct tree shape.

The programs for A396566, there is no canonical definition to state claims against.
-/

/-! ## A396566.P11174761337623929387

`6*C(A000081(n+4), 3)`
-/

namespace A396566.P11174761337623929387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (A000081 (n + 4)).toNat 3

end

end A396566.P11174761337623929387

/-! ## A396566.P13700527957546729673

`A007531(A000081(n+4))`
-/

namespace A396566.P13700527957546729673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A000081 (n + 4)).toNat

end

end A396566.P13700527957546729673

/-!
# A396567: Main diagonal of A396498.

The programs for A396567, there is no canonical definition to state claims against.
-/

/-! ## A396567.P6825341339153968309

`A396498(C(n+n+1, 2)+n)`
-/

namespace A396567.P6825341339153968309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396498 (Nat.choose (n + n + 1) 2 + n)

end

end A396567.P6825341339153968309

/-! ## A396567.P15531024468686661487

`A274389(n)/(n+1)`
-/

namespace A396567.P15531024468686661487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274389 n : ℚ) / (n + 1 : ℚ)

end

end A396567.P15531024468686661487

/-!
# A396568: Number of bracelets (turnover necklaces) of length 4 using exactly 2 colors, where the colors are chosen from a palette of size N = A000081(n) (the number of unlabeled rooted trees with n nodes), and each color corresponds to a distinct tree shape.

The programs for A396568, there is no canonical definition to state claims against.
-/

/-! ## A396568.P8505341835332894644

`4*C(A000081(n+3), 2)`
-/

namespace A396568.P8505341835332894644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (A000081 (n + 3)).toNat 2

end

end A396568.P8505341835332894644

/-! ## A396568.P2334319986751934239

`A106232(A123467(n+2))`
-/

namespace A396568.P2334319986751934239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106232 (A123467 (n + 2)).toNat

end

end A396568.P2334319986751934239

/-! ## A396568.P642493473459258471

`A046092(A000081(n+3)-1)`
-/

namespace A396568.P642493473459258471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (A000081 (n + 3) - 1).toNat

end

end A396568.P642493473459258471

/-!
# A396569: Number of ways to tile a rectangular strip of length n, ending in a triangle, with three types of tiles.

The programs for A396569, the canonical program `A396569.P3375430248005412269` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396569 has offset 0).

The definition of A396569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396569.P7330439927743451965

`ogf((x+x^2)/(1-3x-4x^2-2x^3))`
-/

namespace A396569.P7330439927743451965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -3, -4, -2] n

end

end A396569.P7330439927743451965

namespace A396569

/-- `ogf((x+x^2)/(1-3x-4x^2-2x^3))` -/
def P7330439927743451965.Spec : Prop :=
  ∀ n, P7330439927743451965.a n = A396569 n

end A396569

/-! ## A396569.P3375430248005412269

`3*a(n-1)+4*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396569

/-- `3*a(n-1)+4*a(n-2)+2*a(n-3)` -/
def P3375430248005412269.Spec : Prop :=
  ∀ n, (P3375430248005412269.a n : ℤ) = A396569 n

theorem P3375430248005412269.correct : P3375430248005412269.Spec := by
  intro n
  simp only [A396569]

end A396569

/-! ## A396569.P10224892047622583586

`A397302(n-1)+a(n-1)+A397302(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A396569.P10224892047622583586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A397302 (n - 1) + a (n - 1) + A397302 (n - 2)

end

end A396569.P10224892047622583586

namespace A396569

/-- `A397302(n-1)+a(n-1)+A397302(n-2)` -/
def P10224892047622583586.Spec : Prop :=
  ∀ n, P10224892047622583586.a n = A396569 n

end A396569

/-!
# A396570: Numbers == 2 (mod 6) that are not the sum of two distinct upper twin primes.

The programs for A396570, there is no canonical definition to state claims against.
-/

/-! ## A396570.P6793825846559100456

`A171715(A349292(n)+A099267(n+1))`
-/

namespace A396570.P6793825846559100456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171715 (A349292 n + A099267 (n + 1)).toNat

end

end A396570.P6793825846559100456

/-!
# A396571: Averages of adjacent odd composite numbers.

The programs for A396571, the canonical program `A396571.P6988239857056960462` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396571 has offset 1).

The definition of A396571 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A396571.P6988239857056960462

`(A071904(n+1)+A071904(n+2))/2`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A396571

/-- `(A071904(n+1)+A071904(n+2))/2` -/
def P6988239857056960462.Spec : Prop :=
  ∀ n, P6988239857056960462.a n = (A396571 (n + 1) : ℚ)

end A396571

/-! ## A396571.P8124175173924820680

`A153083(n+1)+A153045(n+1)`
-/

namespace A396571.P8124175173924820680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153083 (n + 1) + A153045 (n + 1)

end

end A396571.P8124175173924820680

namespace A396571

/-- `A153083(n+1)+A153045(n+1)` -/
def P8124175173924820680.Spec : Prop :=
  ∀ n, P8124175173924820680.a n = A396571 (n + 1)

end A396571

/-! ## A396571.P17370969634778103336

`A241571(n+1)+A153047(n+1)`
-/

namespace A396571.P17370969634778103336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241571 (n + 1) + A153047 (n + 1)

end

end A396571.P17370969634778103336

namespace A396571

/-- `A241571(n+1)+A153047(n+1)` -/
def P17370969634778103336.Spec : Prop :=
  ∀ n, P17370969634778103336.a n = A396571 (n + 1)

end A396571

/-! ## A396571.P549212642909448536

`A196274(n+2)+A071904(n+1)`
-/

namespace A396571.P549212642909448536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 2) + A071904 (n + 1)

end

end A396571.P549212642909448536

namespace A396571

/-- `A196274(n+2)+A071904(n+1)` -/
def P549212642909448536.Spec : Prop :=
  ∀ n, P549212642909448536.a n = A396571 (n + 1)

end A396571

/-! ## A396571.P13351833447308333968

`A153053(n+1)+A153039(n+2)`
-/

namespace A396571.P13351833447308333968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + A153039 (n + 2)

end

end A396571.P13351833447308333968

namespace A396571

/-- `A153053(n+1)+A153039(n+2)` -/
def P13351833447308333968.Spec : Prop :=
  ∀ n, P13351833447308333968.a n = A396571 (n + 1)

end A396571

/-! ## A396571.P9938968041475197370

`A196274(n+2)+A014076(n+2)`
-/

namespace A396571.P9938968041475197370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 2) + A014076 (n + 2)

end

end A396571.P9938968041475197370

namespace A396571

/-- `A196274(n+2)+A014076(n+2)` -/
def P9938968041475197370.Spec : Prop :=
  ∀ n, P9938968041475197370.a n = A396571 (n + 1)

end A396571

/-! ## A396571.P10629558418628335675

`A071904(n+1)+A053726(n+2)-A053726(n+1)`
-/

namespace A396571.P10629558418628335675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) + (A053726 (n + 2) - A053726 (n + 1))

end

end A396571.P10629558418628335675

namespace A396571

/-- `A071904(n+1)+A053726(n+2)-A053726(n+1)` -/
def P10629558418628335675.Spec : Prop :=
  ∀ n, P10629558418628335675.a n = A396571 (n + 1)

end A396571

/-! ## A396571.P11156975567156490586

`A008508(n+1)+A163300(n+2)+A008508(n+2)`
-/

namespace A396571.P11156975567156490586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1) + (A163300 (n + 2) + A008508 (n + 2))

end

end A396571.P11156975567156490586

namespace A396571

/-- `A008508(n+1)+A163300(n+2)+A008508(n+2)` -/
def P11156975567156490586.Spec : Prop :=
  ∀ n, P11156975567156490586.a n = A396571 (n + 1)

end A396571

/-! ## A396571.P83876614924668295

`A014076(n+2)+A053726(n+2)-A053726(n+1)`
-/

namespace A396571.P83876614924668295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2) + (A053726 (n + 2) - A053726 (n + 1))

end

end A396571.P83876614924668295

namespace A396571

/-- `A014076(n+2)+A053726(n+2)-A053726(n+1)` -/
def P83876614924668295.Spec : Prop :=
  ∀ n, P83876614924668295.a n = A396571 (n + 1)

end A396571

/-! ## A396571.P4042361440497417235

`A053726(n+1)+A047845(n+3)`
-/

namespace A396571.P4042361440497417235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + A047845 (n + 3)

end

end A396571.P4042361440497417235

namespace A396571

/-- `A053726(n+1)+A047845(n+3)` -/
def P4042361440497417235.Spec : Prop :=
  ∀ n, P4042361440497417235.a n = A396571 (n + 1)

end A396571

/-! ## A396571.P9814239501605118992

`A104275(n+2)+A047845(n+3)`
-/

namespace A396571.P9814239501605118992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) + A047845 (n + 3)

end

end A396571.P9814239501605118992

namespace A396571

/-- `A104275(n+2)+A047845(n+3)` -/
def P9814239501605118992.Spec : Prop :=
  ∀ n, P9814239501605118992.a n = A396571 (n + 1)

end A396571

/-! ## A396571.P12766473432340697803

`A186193(n+1)-A306863(n+1)`
-/

namespace A396571.P12766473432340697803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186193 (n + 1) - A306863 (n + 1)

end

end A396571.P12766473432340697803

namespace A396571

/-- `A186193(n+1)-A306863(n+1)` -/
def P12766473432340697803.Spec : Prop :=
  ∀ n, P12766473432340697803.a n = A396571 (n + 1)

end A396571

/-!
# A396572: Number of distinct states before repetition for a circular array of n distinct elements under repeated adjacent XOR operations.

The programs for A396572, there is no canonical definition to state claims against.
-/

/-! ## A396572.P5830610281916573403

`A006519(n+1)+A085587(n+1)`
-/

namespace A396572.P5830610281916573403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + A085587 (n + 1)

end

end A396572.P5830610281916573403

/-! ## A396572.P8380294317169063829

`A085587(n+1)+2^val(n+1, 2)`
-/

namespace A396572.P8380294317169063829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085587 (n + 1) + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A396572.P8380294317169063829

/-! ## A396572.P16429667283271335495

`A006519(n+1)+ceil(A334507(Δ[n²])/2)`
-/

namespace A396572.P16429667283271335495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + ⌈(A334507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A396572.P16429667283271335495

/-! ## A396572.P11033674003145746239

`A006519(n+1)+round(A334504(2*(n+1))/2)`
-/

namespace A396572.P11033674003145746239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + SequenceMachineLib.roundAway ((A334504 (2 * (n + 1)) : ℚ) / 2)

end

end A396572.P11033674003145746239

/-! ## A396572.P15965777921528391537

`A355255(2^(n+1))`
-/

namespace A396572.P15965777921528391537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355255 (2 ^ (n + 1))

end

end A396572.P15965777921528391537

/-!
# A396573: Primes p such that the gap to the next prime is strictly less than floor(log_2(p)).

The programs for A396573, there is no canonical definition to state claims against.
-/

/-! ## A396573.P9100079345836066152

`filter[A253969(n+3), A103842(#)]`
-/

namespace A396573.P9100079345836066152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A396573.P9100079345836066152

/-! ## A396573.P766173814886822569

`A049481(lt[A141056(n+2), A308968(3*n+2)]+1)`
-/

namespace A396573.P766173814886822569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308968 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049481 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A396573.P766173814886822569

/-! ## A396573.P2296045133507711062

`eq[A220132(n), A354841(n+1)]`
-/

namespace A396573.P2296045133507711062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396573.P2296045133507711062

/-! ## A396573.P2453024542591998981

`eq[A220133(n), A354841(n+1)]`
-/

namespace A396573.P2453024542591998981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220133 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396573.P2453024542591998981

/-! ## A396573.P9564846708989636165

`eq[A220134(n), A354841(n+1)]`
-/

namespace A396573.P9564846708989636165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396573.P9564846708989636165

/-!
# A396574: a(n) is the smallest number k such that n divides binomial(k,m) for 1 <= m <= n-1.

The programs for A396574, the canonical program `A396574.P15412358032605073405` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396574 has offset 1).

The definition of A396574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396574.P5414080129666091538

`A133900(n+1)/ceil((n+1)*∏{p}[n+1, #/(n+1)])`
-/

namespace A396574.P5414080129666091538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133900 (n + 1) : ℚ) / (⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 1 : ℚ))⌉ : ℚ)

end

end A396574.P5414080129666091538

namespace A396574

/-- `A133900(n+1)/ceil((n+1)*∏{p}[n+1, #/(n+1)])` -/
def P5414080129666091538.Spec : Prop :=
  ∀ n, P5414080129666091538.a n = (A396574 (n + 1) : ℚ)

end A396574

/-! ## A396574.P15412358032605073405

`A048671(n+1)*A064446(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A396574

/-- `A048671(n+1)*A064446(n+1)` -/
def P15412358032605073405.Spec : Prop :=
  ∀ n, P15412358032605073405.a n = A396574 (n + 1)

theorem P15412358032605073405.correct : P15412358032605073405.Spec := by
  intro n
  simp only [A396574, Nat.add_sub_cancel]

end A396574

/-! ## A396574.P11542423227800836120

`A133910(n+1)*A140651(n+1)`
-/

namespace A396574.P11542423227800836120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133910 (n + 1) * A140651 (n + 1)

end

end A396574.P11542423227800836120

namespace A396574

/-- `A133910(n+1)*A140651(n+1)` -/
def P11542423227800836120.Spec : Prop :=
  ∀ n, P11542423227800836120.a n = A396574 (n + 1)

end A396574

/-! ## A396574.P17603621816884977747

`A133900(n+1)/A014963(n+1)`
-/

namespace A396574.P17603621816884977747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133900 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A396574.P17603621816884977747

namespace A396574

/-- `A133900(n+1)/A014963(n+1)` -/
def P17603621816884977747.Spec : Prop :=
  ∀ n, P17603621816884977747.a n = (A396574 (n + 1) : ℚ)

end A396574

/-! ## A396574.P4785143896282056184

`gcd(A067911(n+1), A387027(n))`
-/

namespace A396574.P4785143896282056184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067911 (n + 1)) (A387027 n)

end

end A396574.P4785143896282056184

namespace A396574

/-- `gcd(A067911(n+1), A387027(n))` -/
def P4785143896282056184.Spec : Prop :=
  ∀ n, (P4785143896282056184.a n : ℤ) = A396574 (n + 1)

end A396574

/-! ## A396574.P17874507344739519661

`gcd(A051696(n+1), A387027(n))`
-/

namespace A396574.P17874507344739519661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051696 (n + 1)) (A387027 n)

end

end A396574.P17874507344739519661

namespace A396574

/-- `gcd(A051696(n+1), A387027(n))` -/
def P17874507344739519661.Spec : Prop :=
  ∀ n, (P17874507344739519661.a n : ℤ) = A396574 (n + 1)

end A396574

/-! ## A396574.P12549603026756417763

`A349593(∑[4*n])`
-/

namespace A396574.P12549603026756417763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396574.P12549603026756417763

namespace A396574

/-- `A349593(∑[4*n])` -/
def P12549603026756417763.Spec : Prop :=
  ∀ n, P12549603026756417763.a n = A396574 (n + 1)

end A396574

/-!
# A396577: a(n) = Sum_{k=0..n} (binomial(3*n+2*k-3,k) - binomial(3*n+2*k-3,k-1)).

The programs for A396577, there is no canonical definition to state claims against.
-/

/-! ## A396577.P11345848556383525138

`A397511(n)-A397514(n)`
-/

namespace A396577.P11345848556383525138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397511 n - A397514 n

end

end A396577.P11345848556383525138

/-! ## A396577.P11172926573468283747

`A096465(A383464(n))`
-/

namespace A396577.P11172926573468283747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A383464 n).toNat

end

end A396577.P11172926573468283747

/-! ## A396577.P11012574290988253092

`A283054(A360416(n))`
-/

namespace A396577.P11012574290988253092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A360416 n).toNat

end

end A396577.P11012574290988253092

/-!
# A396578: a(n) is the number of labeled directed acyclic graphs on [n] with no isolated points.

The programs for A396578, there is no canonical definition to state claims against.
-/

/-! ## A396578.P11878791954395263616

`A399479(∑[n])`
-/

namespace A396578.P11878791954395263616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399479 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396578.P11878791954395263616

/-! ## A396578.P8305285763674076545

`A399479(A000217(n))+A067168(n)`
-/

namespace A396578.P8305285763674076545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399479 (A000217 n).toNat + A067168 (n + 10)

end

end A396578.P8305285763674076545

/-! ## A396578.P2177602247804552948

`and(A134824(2*(n+1)), A399479(A000217(n)))`
-/

namespace A396578.P2177602247804552948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 (2 * (n + 1))) (A399479 (A000217 n).toNat)

end

end A396578.P2177602247804552948

/-!
# A396580: a(n) is the number of n-digit terms in A396579.

The programs for A396580, there is no canonical definition to state claims against.
-/

/-! ## A396580.P14925183065924412656

`A396618(n+1)+9*∑{#}[n-1, 10^#*A396618(n+1-#-1)]`
-/

namespace A396580.P14925183065924412656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396618 (n + 1) + 9 * (∑ k ∈ Finset.range (f1 n + 1).toNat, (10 ^ k : ℤ) * A396618 ((n + 1 : ℤ) - (k : ℤ) - 1).toNat)

end

end A396580.P14925183065924412656

/-!
# A396582: a(n) = 4*a(n - 2) - 2*a(n - 1) for n >= 2, a(0) = 1, a(1) = 6.

The programs for A396582, the canonical program `A396582.P14642037863999829688` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396582 has offset 0).

The definition of A396582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)-2*a(n-1)` (program `A396582.P14642037863999829688`, by `A396582.P14642037863999829688.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396582.P14642037863999829688

`4*a(n-2)-2*a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396582

/-- `4*a(n-2)-2*a(n-1)` -/
def P14642037863999829688.Spec : Prop :=
  ∀ n, P14642037863999829688.a n = A396582 n

theorem P14642037863999829688.correct : P14642037863999829688.Spec := by
  intro n
  simp only [A396582]

end A396582

/-! ## A396582.P7519236165720780104

`ogf((1+8x)/(1+2x-4x^2))`
-/

namespace A396582.P7519236165720780104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, 2, -4] n

end

end A396582.P7519236165720780104

namespace A396582

/-- `ogf((1+8x)/(1+2x-4x^2))` -/
def P7519236165720780104.Spec : Prop :=
  ∀ n, P7519236165720780104.a n = A396582 n

end A396582

/-! ## A396582.P2928984502001175067

`2*(2*a(n-2)-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A396582.P2928984502001175067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * (2 * a (n - 2) - a (n - 1))

end

end A396582.P2928984502001175067

namespace A396582

/-- `2*(2*a(n-2)-a(n-1))` -/
def P2928984502001175067.Spec : Prop :=
  ∀ n, P2928984502001175067.a n = A396582 n

theorem P2928984502001175067.correct : P2928984502001175067.Spec := by
  intro n
  simp only [A396582, Nat.add_sub_cancel, A396582.P2928984502001175067.a, A396582.P14642037863999829688.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A396582

/-! ## A396582.P149343118277756018

`2^n*A396201(n)`
-/

namespace A396582.P149343118277756018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A396201 n

end

end A396582.P149343118277756018

namespace A396582

/-- `2^n*A396201(n)` -/
def P149343118277756018.Spec : Prop :=
  ∀ n, P149343118277756018.a n = A396582 n

end A396582

/-! ## A396582.P16940032589820296014

`∑{#}[n, (-1)^(n-#)*C(n, #)*A396584(#)]`
-/

namespace A396582.P16940032589820296014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A396584 k : ℚ)

end

end A396582.P16940032589820296014

namespace A396582

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A396584(#)]` -/
def P16940032589820296014.Spec : Prop :=
  ∀ n, P16940032589820296014.a n = (A396582 n : ℚ)

end A396582

/-! ## A396582.P14376730044042301530

`A087205(n+2)+Δ[A087205(n)]`
-/

namespace A396582.P14376730044042301530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087205 (n + 2) + (f1 (n + 1) - f1 n)

end

end A396582.P14376730044042301530

namespace A396582

/-- `A087205(n+2)+Δ[A087205(n)]` -/
def P14376730044042301530.Spec : Prop :=
  ∀ n, P14376730044042301530.a n = A396582 n

end A396582

/-!
# A396583: Triangle read by rows: T(n, k) = binomial(n, k) * A396201(k).

The programs for A396583, the canonical program `A396583.P10507654169071020260` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396583 has offset 0).

The definition of A396583 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396201, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A396583.P10507654169071020260

`C(row(n), col(n))*A396201(col(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396583

/-- `C(row(n), col(n))*A396201(col(n))` -/
def P10507654169071020260.Spec : Prop :=
  ∀ n, P10507654169071020260.a n = A396583 n

theorem P10507654169071020260.correct : P10507654169071020260.Spec := by
  intro n
  simp only [A396583]

end A396583

/-! ## A396583.P2803983371133617062

`A124844(n)+A113020(n)`
-/

namespace A396583.P2803983371133617062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124844 n + A113020 n

end

end A396583.P2803983371133617062

namespace A396583

/-- `A124844(n)+A113020(n)` -/
def P2803983371133617062.Spec : Prop :=
  ∀ n, P2803983371133617062.a n = A396583 n

theorem P2803983371133617062.correct : P2803983371133617062.Spec := by
  intro n
  simp only [A396583, Nat.add_sub_cancel, A396583.P2803983371133617062.a, A396583.P10507654169071020260.a, A113020, A113020.P10791682209444824867.a, A124844, A124844.P3311347840255162933.a, A396201, A396201.P2362147857527105902.a, A061084, A061084.P3983370791363787033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396583

/-!
# A396584: a(n) = (4 - 3*(-1)^n) * 5^floor(n/2).

The programs for A396584, the canonical program `A396584.P5182168981487178385` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396584 has offset 0).

The definition of A396584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396584.P5182168981487178385

`(4-3*(-1)^n)*5^floor(n/2)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396584

/-- `(4-3*(-1)^n)*5^floor(n/2)` -/
def P5182168981487178385.Spec : Prop :=
  ∀ n, P5182168981487178385.a n = (A396584 n : ℚ)

end A396584

/-! ## A396584.P6312532573556217973

`ogf((1+7x)/(1-5x^2))`
-/

namespace A396584.P6312532573556217973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, 0, -5] n

end

end A396584.P6312532573556217973

namespace A396584

/-- `ogf((1+7x)/(1-5x^2))` -/
def P6312532573556217973.Spec : Prop :=
  ∀ n, P6312532573556217973.a n = A396584 n

end A396584

/-! ## A396584.P13327008344554931182

`5*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A396584.P13327008344554931182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  5 * a (n - 2)

end

end A396584.P13327008344554931182

namespace A396584

/-- `5*a(n-2)` -/
def P13327008344554931182.Spec : Prop :=
  ∀ n, (P13327008344554931182.a n : ℤ) = A396584 n

end A396584

/-! ## A396584.P12400604041103853968

`∏[5/a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A396584.P12400604041103853968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A396584.P12400604041103853968

namespace A396584

/-- `∏[5/a(n-1)]` -/
def P12400604041103853968.Spec : Prop :=
  ∀ n, P12400604041103853968.a n = (A396584 n : ℚ)

end A396584

/-! ## A396584.P10445278988214432894

`lcm(A010688(n), A074872(n+1))`
-/

namespace A396584.P10445278988214432894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010688 n) (A074872 (n + 1))

end

end A396584.P10445278988214432894

namespace A396584

/-- `lcm(A010688(n), A074872(n+1))` -/
def P10445278988214432894.Spec : Prop :=
  ∀ n, (P10445278988214432894.a n : ℤ) = A396584 n

end A396584

/-! ## A396584.P6462640178855560507

`A056451(n)+A056451(n)-A056487(n)`
-/

namespace A396584.P6462640178855560507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 n + (A056451 n - A056487 n)

end

end A396584.P6462640178855560507

namespace A396584

/-- `A056451(n)+A056451(n)-A056487(n)` -/
def P6462640178855560507.Spec : Prop :=
  ∀ n, P6462640178855560507.a n = A396584 n

end A396584

/-! ## A396584.P17842441619183543659

`A163114(n+2)-(A056487(n+1)+A056487(n))`
-/

namespace A396584.P17842441619183543659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163114 (n + 2) - (A056487 (n + 1) + A056487 n)

end

end A396584.P17842441619183543659

namespace A396584

/-- `A163114(n+2)-(A056487(n+1)+A056487(n))` -/
def P17842441619183543659.Spec : Prop :=
  ∀ n, P17842441619183543659.a n = A396584 n

end A396584

/-! ## A396584.P16171667984747087776

`∑{#}[n, C(n, #)*A396582(#)]`
-/

namespace A396584.P16171667984747087776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A396582 k

end

end A396584.P16171667984747087776

namespace A396584

/-- `∑{#}[n, C(n, #)*A396582(#)]` -/
def P16171667984747087776.Spec : Prop :=
  ∀ n, P16171667984747087776.a n = A396584 n

end A396584

/-!
# A396588: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = n! * [x^n] F_k(x)/x and F_k(x) is the k-th iteration of x*G(x) with G(x) = exp(x*G(x)^4).

The programs for A396588, there is no canonical definition to state claims against.
-/

/-! ## A396588.P10448786256437661360

`A055572(A384987(n))`
-/

namespace A396588.P10448786256437661360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A384987 n).toNat

end

end A396588.P10448786256437661360

/-! ## A396588.P15713762003489721833

`A109380(A378238(n))`
-/

namespace A396588.P15713762003489721833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109380 (A378238 n).toNat

end

end A396588.P15713762003489721833

/-! ## A396588.P13036969700632826413

`A113220(A395148(n))`
-/

namespace A396588.P13036969700632826413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (A395148 n).toNat

end

end A396588.P13036969700632826413

/-! ## A396588.P15139546306110347328

`A113220(A396502(n))`
-/

namespace A396588.P15139546306110347328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (A396502 n).toNat

end

end A396588.P15139546306110347328

/-! ## A396588.P14150922175041130055

`A305928(A396501(n))`
-/

namespace A396588.P14150922175041130055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305928 (A396501 n).toNat

end

end A396588.P14150922175041130055

/-!
# A396589: Expansion of e.g.f. F_2(x)/x and F_k(x) is the k-th iteration of x*G(x) with G(x) = exp(x*G(x)^2).

The programs for A396589, there is no canonical definition to state claims against.
-/

/-! ## A396589.P4448851949527826526

`A396499(∑[n+3])`
-/

namespace A396589.P4448851949527826526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396499 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396589.P4448851949527826526

/-!
# A396590: Expansion of e.g.f. F_2(x)/x and F_k(x) is the k-th iteration of x*G(x) with G(x) = exp(x*G(x)^3).

The programs for A396590, there is no canonical definition to state claims against.
-/

/-! ## A396590.P17604159200459439857

`A396500(∑[n+3])`
-/

namespace A396590.P17604159200459439857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396500 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396590.P17604159200459439857

/-!
# A396592: Expansion of e.g.f. F_2(x)/x and F_k(x) is the k-th iteration of x*G(x) with G(x) = exp(x*G(x)^4).

The programs for A396592, there is no canonical definition to state claims against.
-/

/-! ## A396592.P10864806382520289561

`A396588(∑[n+3])`
-/

namespace A396592.P10864806382520289561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396588 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A396592.P10864806382520289561

/-!
# A396593: Run length transform of A089582.

The programs for A396593, there is no canonical definition to state claims against.
-/

/-! ## A396593.P1200639447251048402

`runs[A089582(n+1)]`
-/

namespace A396593.P1200639447251048402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A396593.P1200639447251048402

/-!
# A396594: Numbers m such that rad(m) * bigomega(m) = m.

The programs for A396594, there is no canonical definition to state claims against.
-/

/-! ## A396594.P8134839166922582352

`∪[A175787(n+1), A397933(n+1)]`
-/

namespace A396594.P8134839166922582352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396594.P8134839166922582352

/-! ## A396594.P9532055298580304646

`eq[(n+1)/∏{p}[n+1, #], ∑{e}[n+1, #]]+1`
-/

namespace A396594.P9532055298580304646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n + 1

end

end A396594.P9532055298580304646

/-! ## A396594.P9333231585938323592

`eq[Δ[A022559(n)], A003557(n+1)]+1`
-/

namespace A396594.P9333231585938323592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A396594.P9333231585938323592

/-! ## A396594.P9730740259094849257

`eq[A001222(n+1), A003557(n+1)]+1`
-/

namespace A396594.P9730740259094849257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A396594.P9730740259094849257

/-! ## A396594.P7963584201540189091

`eq[A003557(n+1), A318322(n+1)]+1`
-/

namespace A396594.P7963584201540189091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A396594.P7963584201540189091

/-! ## A396594.P7957166982111970690

`A020725(eq[A001222(n+1), A003557(n+1)])`
-/

namespace A396594.P7957166982111970690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A396594.P7957166982111970690

/-!
# A396596: Natural numbers k such that the sum of the x-th powers of the divisors of k achieves a record, for some x <= 0.

The programs for A396596, there is no canonical definition to state claims against.
-/

/-! ## A396596.P5608382113172709532

`∪[A002182(n+1), A095848(n+1)]`
-/

namespace A396596.P5608382113172709532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396596.P5608382113172709532

/-! ## A396596.P8789298454764610874

`∪[A004778(n+1), A095848(n+1)]`
-/

namespace A396596.P8789298454764610874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396596.P8789298454764610874

/-! ## A396596.P11817588715225760371

`∪[A095848(n+1), A340840(n+1)]`
-/

namespace A396596.P11817588715225760371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396596.P11817588715225760371

/-! ## A396596.P5935566692111741360

`∪[record[A365901(n+1)], A095848(n+1)]`
-/

namespace A396596.P5935566692111741360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365901 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A396596.P5935566692111741360

/-! ## A396596.P3369645062310012514

`∪[A135372(n+1)-1, A095848(n+1)]`
-/

namespace A396596.P3369645062310012514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396596.P3369645062310012514

/-! ## A396596.P5073439022214738009

`∪[A063072(n+1)-A072824(n+1), A095848(n+1)]`
-/

namespace A396596.P5073439022214738009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) - A072824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396596.P5073439022214738009

/-! ## A396596.P17253942521954340267

`∪[A301413(n+1)*A319865(n+1), A095848(n+1)]`
-/

namespace A396596.P17253942521954340267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1) * A319865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396596.P17253942521954340267

/-! ## A396596.P69161493467171172

`∪[A054481(n+2)*A054482(n+2), A095848(n+1)]`
-/

namespace A396596.P69161493467171172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054481 (n + 2) * A054482 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396596.P69161493467171172

/-!
# A396597: Numbers m with exactly two distinct prime factors q and p such that m = q^k * p^j and p > q^k with k, j >= 1.

The programs for A396597, the canonical program `A396597.P7652329124065219865` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396597 has offset 1).

The definition of A396597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396597.P7652329124065219865

`∩[A007774(n+1), A132982(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A396597

/-- `∩[A007774(n+1), A132982(n+1)]` -/
def P7652329124065219865.Spec : Prop :=
  ∀ n, (P7652329124065219865.a n : ℤ) = A396597 (n + 1)

theorem P7652329124065219865.correct : P7652329124065219865.Spec := by
  intro n
  simp only [A396597, Nat.add_sub_cancel]

end A396597

/-! ## A396597.P15393083624932196359

`∩[A070915(n+1), A132982(n+1)]`
-/

namespace A396597.P15393083624932196359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396597.P15393083624932196359

namespace A396597

/-- `∩[A070915(n+1), A132982(n+1)]` -/
def P15393083624932196359.Spec : Prop :=
  ∀ n, (P15393083624932196359.a n : ℤ) = A396597 (n + 1)

end A396597

/-! ## A396597.P6303839525558464629

`∩[A132982(n+1), A267114(n+1)]`
-/

namespace A396597.P6303839525558464629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396597.P6303839525558464629

namespace A396597

/-- `∩[A132982(n+1), A267114(n+1)]` -/
def P6303839525558464629.Spec : Prop :=
  ∀ n, (P6303839525558464629.a n : ℤ) = A396597 (n + 1)

end A396597

/-! ## A396597.P5709741505596182283

`∩[A007774(n+1), A132858(n+1)]`
-/

namespace A396597.P5709741505596182283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396597.P5709741505596182283

namespace A396597

/-- `∩[A007774(n+1), A132858(n+1)]` -/
def P5709741505596182283.Spec : Prop :=
  ∀ n, (P5709741505596182283.a n : ℤ) = A396597 (n + 1)

end A396597

/-! ## A396597.P9989762089088043629

`∩[A132858(n+1), A267114(n+1)]`
-/

namespace A396597.P9989762089088043629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396597.P9989762089088043629

namespace A396597

/-- `∩[A132858(n+1), A267114(n+1)]` -/
def P9989762089088043629.Spec : Prop :=
  ∀ n, (P9989762089088043629.a n : ℤ) = A396597 (n + 1)

end A396597

/-! ## A396597.P11340683738420396117

`∩[A007774(n+1), A361232(n+1)]`
-/

namespace A396597.P11340683738420396117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396597.P11340683738420396117

namespace A396597

/-- `∩[A007774(n+1), A361232(n+1)]` -/
def P11340683738420396117.Spec : Prop :=
  ∀ n, (P11340683738420396117.a n : ℤ) = A396597 (n + 1)

end A396597

/-! ## A396597.P5747148423935791385

`∩[A007774(n+1), A027855(n+1)]`
-/

namespace A396597.P5747148423935791385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396597.P5747148423935791385

namespace A396597

/-- `∩[A007774(n+1), A027855(n+1)]` -/
def P5747148423935791385.Spec : Prop :=
  ∀ n, (P5747148423935791385.a n : ℤ) = A396597 (n + 1)

end A396597

/-! ## A396597.P9778968587785322078

`∩[A027855(n+1), A267114(n+1)]`
-/

namespace A396597.P9778968587785322078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396597.P9778968587785322078

namespace A396597

/-- `∩[A027855(n+1), A267114(n+1)]` -/
def P9778968587785322078.Spec : Prop :=
  ∀ n, (P9778968587785322078.a n : ℤ) = A396597 (n + 1)

end A396597

/-! ## A396597.P699036106540775152

`filter[A027855(n+1), A215480(#)]`
-/

namespace A396597.P699036106540775152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A396597.P699036106540775152

namespace A396597

/-- `filter[A027855(n+1), A215480(#)]` -/
def P699036106540775152.Spec : Prop :=
  ∀ n, P699036106540775152.a n = A396597 (n + 1)

end A396597

/-! ## A396597.P9564325929719376427

`filter[A132858(n+1), A215480(#)]`
-/

namespace A396597.P9564325929719376427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A396597.P9564325929719376427

namespace A396597

/-- `filter[A132858(n+1), A215480(#)]` -/
def P9564325929719376427.Spec : Prop :=
  ∀ n, P9564325929719376427.a n = A396597 (n + 1)

end A396597

/-! ## A396597.P5115108897395627163

`filter[A132982(n+1), A215480(#)]`
-/

namespace A396597.P5115108897395627163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A396597.P5115108897395627163

namespace A396597

/-- `filter[A132982(n+1), A215480(#)]` -/
def P5115108897395627163.Spec : Prop :=
  ∀ n, P5115108897395627163.a n = A396597 (n + 1)

end A396597

/-! ## A396597.P2518216055174424224

`filter[A361232(n+1), A215480(#)]`
-/

namespace A396597.P2518216055174424224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A396597.P2518216055174424224

namespace A396597

/-- `filter[A361232(n+1), A215480(#)]` -/
def P2518216055174424224.Spec : Prop :=
  ∀ n, P2518216055174424224.a n = A396597 (n + 1)

end A396597

/-!
# A396598: a(n) = least prime p such that Mordell's equation y^2 = x^3 - p has exactly n integral solutions with y >= 0.

The programs for A396598, there is no canonical definition to state claims against.
-/

/-! ## A396598.P5383638493741827490

`A291746(a(n-1))+1` with `a(0)=3, a(1)=2`
-/

namespace A396598.P5383638493741827490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A291746 (a (n - 1)).toNat + 1

end

end A396598.P5383638493741827490

/-!
# A396599: Odd numbers k where sigma_2(k)/k is an integer.

The programs for A396599, there is no canonical definition to state claims against.
-/

/-! ## A396599.P5959339961035294776

`filter[A046762(n+1), A379952(#)]`
-/

namespace A396599.P5959339961035294776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A396599.P5959339961035294776

/-! ## A396599.P12855636006934187392

`filter[A355543(n+1), A379952(#)]`
-/

namespace A396599.P12855636006934187392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A396599.P12855636006934187392

/-! ## A396599.P6890868635794883385

`filter[A355543(n+1), A347871(#)]`
-/

namespace A396599.P6890868635794883385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A396599.P6890868635794883385

