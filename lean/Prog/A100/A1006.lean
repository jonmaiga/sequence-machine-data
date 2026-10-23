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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A100600: Numbers k such that (prime(k)-1)! + prime(k)^6 is prime.

The programs for A100600, there is no canonical definition to state claims against.
-/

/-! ## A100600.P16402815439694298433

`a(n-2)%2+4*(a(n-2)+4)` with `a(0)=3, a(1)=4`
-/

namespace A100600.P16402815439694298433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) % 2 + 4 * (a (n - 2) + 4)

end

end A100600.P16402815439694298433

/-!
# A100602: Numbers k such that (prime(k)-1)! + prime(k)^5 is prime.

The programs for A100602, there is no canonical definition to state claims against.
-/

/-! ## A100602.P18023343169950372202

`A337377(A177594(n))+A151800(n+4)`
-/

namespace A100602.P18023343169950372202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 (A177594 n).toNat + A151800 (n + 4)

end

end A100602.P18023343169950372202

/-!
# A100603: Numbers k such that (prime(k)-1)! + prime(k)^4 is prime.

The programs for A100603, there is no canonical definition to state claims against.
-/

/-! ## A100603.P986228419951537769

`record[A294933(A000165(n))]`
-/

namespace A100603.P986228419951537769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294933 (A000165 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100603.P986228419951537769

/-!
# A100604: Numbers k such that (prime(k)-1)! + prime(k)^3 is prime.

The programs for A100604, there is no canonical definition to state claims against.
-/

/-! ## A100604.P14765360248598045495

`A360059(A230127(n))-1`
-/

namespace A100604.P14765360248598045495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360059 (A230127 n).toNat - 1

end

end A100604.P14765360248598045495

/-!
# A100606: a(n) = n^4 + n^3 + n.

The programs for A100606, the canonical program `A100606.P3720319704037152132` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100606 has offset 0).

The definition of A100606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+n^3+n` (program `A100606.P3720319704037152132`, by `A100606.P3720319704037152132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100606.P3720319704037152132

`n^4+n^3+n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100606

/-- `n^4+n^3+n` -/
def P3720319704037152132.Spec : Prop :=
  ∀ n, (P3720319704037152132.a n : ℤ) = A100606 n

theorem P3720319704037152132.correct : P3720319704037152132.Spec := by
  intro n
  simp only [A100606]

end A100606

/-! ## A100606.P5496289462616702940

`lcm(n, (n+1)*n²+1)`
-/

namespace A100606.P5496289462616702940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) * n ^ 2 + 1)

end

end A100606.P5496289462616702940

namespace A100606

/-- `lcm(n, (n+1)*n²+1)` -/
def P5496289462616702940.Spec : Prop :=
  ∀ n, (P5496289462616702940.a n : ℤ) = A100606 n

end A100606

/-! ## A100606.P2714731336885876638

`n*or(1, (n+1)*n²)`
-/

namespace A100606.P2714731336885876638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 ((n + 1) * n ^ 2)

end

end A100606.P2714731336885876638

namespace A100606

/-- `n*or(1, (n+1)*n²)` -/
def P2714731336885876638.Spec : Prop :=
  ∀ n, (P2714731336885876638.a n : ℤ) = A100606 n

end A100606

/-! ## A100606.P9492518269499528996

`n*xor(1, (n+1)*n²)`
-/

namespace A100606.P9492518269499528996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 ((n + 1) * n ^ 2)

end

end A100606.P9492518269499528996

namespace A100606

/-- `n*xor(1, (n+1)*n²)` -/
def P9492518269499528996.Spec : Prop :=
  ∀ n, (P9492518269499528996.a n : ℤ) = A100606 n

end A100606

/-! ## A100606.P8964106105800540300

`n*ceil((n+1)/acot(n²))`
-/

namespace A100606.P8964106105800540300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ)⌉

end

end A100606.P8964106105800540300

namespace A100606

/-- `n*ceil((n+1)/acot(n²))` -/
def P8964106105800540300.Spec : Prop :=
  ∀ n, P8964106105800540300.a n = A100606 n

end A100606

/-! ## A100606.P7581701333042302959

`n*(2*n*C(n+1, 2)+1)`
-/

namespace A100606.P7581701333042302959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n * Nat.choose (n + 1) 2 + 1)

end

end A100606.P7581701333042302959

namespace A100606

/-- `n*(2*n*C(n+1, 2)+1)` -/
def P7581701333042302959.Spec : Prop :=
  ∀ n, (P7581701333042302959.a n : ℤ) = A100606 n

end A100606

/-! ## A100606.P10449795432720290434

`((n+1)*n²+1)*n%(n+1)`
-/

namespace A100606.P10449795432720290434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n ^ 2 + 1) * (n % (n + 1))

end

end A100606.P10449795432720290434

namespace A100606

/-- `((n+1)*n²+1)*n%(n+1)` -/
def P10449795432720290434.Spec : Prop :=
  ∀ n, (P10449795432720290434.a n : ℤ) = A100606 n

theorem P10449795432720290434.correct : P10449795432720290434.Spec := by
  intro n
  simp only [A100606, Nat.add_sub_cancel, A100606.P10449795432720290434.a, A100606.P3720319704037152132.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A100606

/-! ## A100606.P14745367389575719024

`n*(∑[∑[ogf((2x+4x^2)/(1-2x+x^2))]]+1)`
-/

namespace A100606.P14745367389575719024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100606.P14745367389575719024

namespace A100606

/-- `n*(∑[∑[ogf((2x+4x^2)/(1-2x+x^2))]]+1)` -/
def P14745367389575719024.Spec : Prop :=
  ∀ n, P14745367389575719024.a n = A100606 n

end A100606

/-! ## A100606.P17613352644619394349

`n*A098547(n)`
-/

namespace A100606.P17613352644619394349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A098547 n

end

end A100606.P17613352644619394349

namespace A100606

/-- `n*A098547(n)` -/
def P17613352644619394349.Spec : Prop :=
  ∀ n, P17613352644619394349.a n = A100606 n

end A100606

/-! ## A100606.P6452625445886823697

`n*(A011379(n)+1)`
-/

namespace A100606.P6452625445886823697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011379 n + 1)

end

end A100606.P6452625445886823697

namespace A100606

/-- `n*(A011379(n)+1)` -/
def P6452625445886823697.Spec : Prop :=
  ∀ n, P6452625445886823697.a n = A100606 n

end A100606

/-! ## A100606.P16812787466215654984

`n*(A053698(n)-n)`
-/

namespace A100606.P16812787466215654984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A053698 n - (n : ℤ))

end

end A100606.P16812787466215654984

namespace A100606

/-- `n*(A053698(n)-n)` -/
def P16812787466215654984.Spec : Prop :=
  ∀ n, P16812787466215654984.a n = A100606 n

end A100606

/-! ## A100606.P17923274645977697171

`n*(∑[A049450(n)]+1)`
-/

namespace A100606.P17923274645977697171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100606.P17923274645977697171

namespace A100606

/-- `n*(∑[A049450(n)]+1)` -/
def P17923274645977697171.Spec : Prop :=
  ∀ n, P17923274645977697171.a n = A100606 n

end A100606

/-! ## A100606.P17596825039523723074

`n*(∑[A056106(n)]-n)`
-/

namespace A100606.P17596825039523723074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A100606.P17596825039523723074

namespace A100606

/-- `n*(∑[A056106(n)]-n)` -/
def P17596825039523723074.Spec : Prop :=
  ∀ n, P17596825039523723074.a n = A100606 n

end A100606

/-! ## A100606.P17173037805950902670

`n*(A085490(n)+1+n)`
-/

namespace A100606.P17173037805950902670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A085490 n + 1 + (n : ℤ))

end

end A100606.P17173037805950902670

namespace A100606

/-- `n*(A085490(n)+1+n)` -/
def P17173037805950902670.Spec : Prop :=
  ∀ n, P17173037805950902670.a n = A100606 n

end A100606

/-! ## A100606.P12894459192611247831

`n*(A100109(n+1)+n)`
-/

namespace A100606.P12894459192611247831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A100109 (n + 1) + (n : ℤ))

end

end A100606.P12894459192611247831

namespace A100606

/-- `n*(A100109(n+1)+n)` -/
def P12894459192611247831.Spec : Prop :=
  ∀ n, P12894459192611247831.a n = A100606 n

end A100606

/-! ## A100606.P4900073448068332413

`n*(A027444(n)+1-n)`
-/

namespace A100606.P4900073448068332413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A027444 n + (1 - (n : ℤ)))

end

end A100606.P4900073448068332413

namespace A100606

/-- `n*(A027444(n)+1-n)` -/
def P4900073448068332413.Spec : Prop :=
  ∀ n, P4900073448068332413.a n = A100606 n

end A100606

/-! ## A100606.P6646682278773737762

`n*(A188947(n+1)-(n+1))`
-/

namespace A100606.P6646682278773737762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A188947 (n + 1) - (n + 1 : ℤ))

end

end A100606.P6646682278773737762

namespace A100606

/-- `n*(A188947(n+1)-(n+1))` -/
def P6646682278773737762.Spec : Prop :=
  ∀ n, P6646682278773737762.a n = A100606 n

end A100606

/-! ## A100606.P3056717137458680630

`n*(A214731(n+1)+n+3)`
-/

namespace A100606.P3056717137458680630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A214731 (n + 1) + (n + 3 : ℤ))

end

end A100606.P3056717137458680630

namespace A100606

/-- `n*(A214731(n+1)+n+3)` -/
def P3056717137458680630.Spec : Prop :=
  ∀ n, P3056717137458680630.a n = A100606 n

end A100606

/-! ## A100606.P14026898354499304849

`n*(2*n*A000217(n)+1)`
-/

namespace A100606.P14026898354499304849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 * ((n : ℤ) * A000217 n) + 1)

end

end A100606.P14026898354499304849

namespace A100606

/-- `n*(2*n*A000217(n)+1)` -/
def P14026898354499304849.Spec : Prop :=
  ∀ n, P14026898354499304849.a n = A100606 n

end A100606

/-! ## A100606.P7344127019444861802

`n*A361273(Δ[n²])`
-/

namespace A100606.P7344127019444861802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A361273 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100606.P7344127019444861802

namespace A100606

/-- `n*A361273(Δ[n²])` -/
def P7344127019444861802.Spec : Prop :=
  ∀ n, P7344127019444861802.a n = A100606 n

end A100606

/-!
# A100607: Concatenated primes of order 3.

The programs for A100607, there is no canonical definition to state claims against.
-/

/-! ## A100607.P612928129600313625

`∪[A100633(n+1), A383195(n+1)]`
-/

namespace A100607.P612928129600313625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100607.P612928129600313625

/-! ## A100607.P2780958132526763672

`∑{p}[A092623(n+1)², #]`
-/

namespace A100607.P2780958132526763672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092623 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A100607.P2780958132526763672

/-! ## A100607.P16338449816799703867

`∑{p}[A378081(n+1)², #]`
-/

namespace A100607.P16338449816799703867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378081 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A100607.P16338449816799703867

/-! ## A100607.P11107195138920911684

`∏{p}[A124888(n+5)², #]`
-/

namespace A100607.P11107195138920911684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124888 (n + 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A100607.P11107195138920911684

/-! ## A100607.P17605988397639068594

`A060653(A092623(n+1))`
-/

namespace A100607.P17605988397639068594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A092623 (n + 1)).toNat

end

end A100607.P17605988397639068594

/-!
# A100612: a(n) = (0! + 1! + ... + (p-1)!) mod p, where p = prime(n).

The programs for A100612, there is no canonical definition to state claims against.
-/

/-! ## A100612.P436795624507919900

`A216369(p?[comp[n²]])`
-/

namespace A100612.P436795624507919900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216369 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A100612.P436795624507919900

/-! ## A100612.P4523410804941101029

`A049782(eq[1, ∏{e}[n, #+1]-1])`
-/

namespace A100612.P4523410804941101029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100612.P4523410804941101029

/-! ## A100612.P4776376718520675987

`A049782(A000040(n+1))`
-/

namespace A100612.P4776376718520675987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (A000040 (n + 1)).toNat

end

end A100612.P4776376718520675987

/-! ## A100612.P12140172199585092622

`A049782(A006005(n+1))`
-/

namespace A100612.P12140172199585092622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (A006005 (n + 1)).toNat

end

end A100612.P12140172199585092622

/-! ## A100612.P3376475021419201154

`A049782(A008578(n+2))`
-/

namespace A100612.P3376475021419201154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (A008578 (n + 2)).toNat

end

end A100612.P3376475021419201154

/-! ## A100612.P1855485322736908743

`A049782(A075643(n+2))`
-/

namespace A100612.P1855485322736908743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (A075643 (n + 2)).toNat

end

end A100612.P1855485322736908743

/-! ## A100612.P482516722630108817

`A049782(A182986(n+2))`
-/

namespace A100612.P482516722630108817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (A182986 (n + 2)).toNat

end

end A100612.P482516722630108817

/-! ## A100612.P11991475395783400508

`A049782(record[A006530(n+2)])`
-/

namespace A100612.P11991475395783400508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100612.P11991475395783400508

/-! ## A100612.P10769741196637443734

`A049782(record[A014963(n+2)])`
-/

namespace A100612.P10769741196637443734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100612.P10769741196637443734

/-! ## A100612.P5825398548796005115

`A049782(record[A020639(n+2)])`
-/

namespace A100612.P5825398548796005115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100612.P5825398548796005115

/-! ## A100612.P1106725143530208778

`A216369(record[A006530(n+2)])`
-/

namespace A100612.P1106725143530208778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216369 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100612.P1106725143530208778

/-! ## A100612.P412295877164795641

`A216369(record[A014963(n+2)])`
-/

namespace A100612.P412295877164795641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216369 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100612.P412295877164795641

/-! ## A100612.P9824133046404960909

`A216369(record[A020639(n+2)])`
-/

namespace A100612.P9824133046404960909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216369 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100612.P9824133046404960909

/-! ## A100612.P12634226251027801572

`A049782(A040976(n+1)+2)`
-/

namespace A100612.P12634226251027801572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (A040976 (n + 1) + 2).toNat

end

end A100612.P12634226251027801572

/-! ## A100612.P4171103446252397010

`A049782(eq[2, A000005(n+1)]+1)`
-/

namespace A100612.P4171103446252397010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A100612.P4171103446252397010

/-!
# A100613: Number of elements in the set {(x,y): 1 <= x,y <= n, gcd(x,y) > 1}.

The programs for A100613, the canonical program `A100613.P7468063633472476903` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100613 has offset 1).

The definition of A100613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100613.P10529957084609629472

`A185670(n+1)+A063985(n+1)`
-/

namespace A100613.P10529957084609629472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185670 (n + 1) + A063985 (n + 1)

end

end A100613.P10529957084609629472

namespace A100613

/-- `A185670(n+1)+A063985(n+1)` -/
def P10529957084609629472.Spec : Prop :=
  ∀ n, P10529957084609629472.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P4598960150926658455

`A000290(n+1)-A018805(n+1)`
-/

namespace A100613.P4598960150926658455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - A018805 (n + 1)

end

end A100613.P4598960150926658455

namespace A100613

/-- `A000290(n+1)-A018805(n+1)` -/
def P4598960150926658455.Spec : Prop :=
  ∀ n, P4598960150926658455.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P18052327431566670899

`2*A185670(n+1)+n`
-/

namespace A100613.P18052327431566670899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185670 (n + 1) + (n : ℤ)

end

end A100613.P18052327431566670899

namespace A100613

/-- `2*A185670(n+1)+n` -/
def P18052327431566670899.Spec : Prop :=
  ∀ n, P18052327431566670899.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P7468063633472476903

`2*A063985(n+1)-n`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A100613

/-- `2*A063985(n+1)-n` -/
def P7468063633472476903.Spec : Prop :=
  ∀ n, P7468063633472476903.a n = A100613 (n + 1)

theorem P7468063633472476903.correct : P7468063633472476903.Spec := by
  intro n
  simp only [A100613, Nat.add_sub_cancel]

end A100613

/-! ## A100613.P17219036846092796548

`A216453(n+1)/3-n`
-/

namespace A100613.P17219036846092796548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216453 (n + 1) : ℚ) / 3 - (n : ℚ)

end

end A100613.P17219036846092796548

namespace A100613

/-- `A216453(n+1)/3-n` -/
def P17219036846092796548.Spec : Prop :=
  ∀ n, P17219036846092796548.a n = (A100613 (n + 1) : ℚ)

end A100613

/-! ## A100613.P675855792223903044

`n²-2*A015613(n+1)`
-/

namespace A100613.P675855792223903044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2 * A015613 (n + 1)

end

end A100613.P675855792223903044

namespace A100613

/-- `n²-2*A015613(n+1)` -/
def P675855792223903044.Spec : Prop :=
  ∀ n, P675855792223903044.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P12098952586847723204

`∑[n-A083254(n+1)]+1`
-/

namespace A100613.P12098952586847723204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A083254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A100613.P12098952586847723204

namespace A100613

/-- `∑[n-A083254(n+1)]+1` -/
def P12098952586847723204.Spec : Prop :=
  ∀ n, P12098952586847723204.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P1335953900376692473

`∑[2*A016035(n+1)]+n`
-/

namespace A100613.P1335953900376692473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A100613.P1335953900376692473

namespace A100613

/-- `∑[2*A016035(n+1)]+n` -/
def P1335953900376692473.Spec : Prop :=
  ∀ n, P1335953900376692473.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P4115002774361150311

`∑[2*A051953(n+1)]-n`
-/

namespace A100613.P4115002774361150311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A100613.P4115002774361150311

namespace A100613

/-- `∑[2*A051953(n+1)]-n` -/
def P4115002774361150311.Spec : Prop :=
  ∀ n, P4115002774361150311.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P2630308510977391201

`∑[Δ[n²]-A140434(n+1)]`
-/

namespace A100613.P2630308510977391201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100613.P2630308510977391201

namespace A100613

/-- `∑[Δ[n²]-A140434(n+1)]` -/
def P2630308510977391201.Spec : Prop :=
  ∀ n, P2630308510977391201.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P3704942981853965794

`∑[2*(n-A000010(n+1))+1]+1`
-/

namespace A100613.P3704942981853965794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A000010 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A100613.P3704942981853965794

namespace A100613

/-- `∑[2*(n-A000010(n+1))+1]+1` -/
def P3704942981853965794.Spec : Prop :=
  ∀ n, P3704942981853965794.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P9498111299385608888

`∑[A004273(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)]`
-/

namespace A100613.P9498111299385608888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100613.P9498111299385608888

namespace A100613

/-- `∑[A004273(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)]` -/
def P9498111299385608888.Spec : Prop :=
  ∀ n, P9498111299385608888.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P7552639766189574130

`∑[A004273(A051953(n+1))]`
-/

namespace A100613.P7552639766189574130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A051953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100613.P7552639766189574130

namespace A100613

/-- `∑[A004273(A051953(n+1))]` -/
def P7552639766189574130.Spec : Prop :=
  ∀ n, P7552639766189574130.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P5291270920620198533

`A001489(n)+2*A063985(n+1)`
-/

namespace A100613.P5291270920620198533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + 2 * A063985 (n + 1)

end

end A100613.P5291270920620198533

namespace A100613

/-- `A001489(n)+2*A063985(n+1)` -/
def P5291270920620198533.Spec : Prop :=
  ∀ n, P5291270920620198533.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P14260425919775323426

`A005563(n)-2*A015614(n+1)`
-/

namespace A100613.P14260425919775323426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - 2 * A015614 (n + 1)

end

end A100613.P14260425919775323426

namespace A100613

/-- `A005563(n)-2*A015614(n+1)` -/
def P14260425919775323426.Spec : Prop :=
  ∀ n, P14260425919775323426.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P15809565574105561993

`∑[A005408(n)]-∑[A140434(n+1)]`
-/

namespace A100613.P15809565574105561993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100613.P15809565574105561993

namespace A100613

/-- `∑[A005408(n)]-∑[A140434(n+1)]` -/
def P15809565574105561993.Spec : Prop :=
  ∀ n, P15809565574105561993.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P12620158668817368094

`(n+1)²-(A015614(n+1)+A002088(n+1))`
-/

namespace A100613.P12620158668817368094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A015614 (n + 1) + A002088 (n + 1))

end

end A100613.P12620158668817368094

namespace A100613

/-- `(n+1)²-(A015614(n+1)+A002088(n+1))` -/
def P12620158668817368094.Spec : Prop :=
  ∀ n, P12620158668817368094.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P3715366399268710992

`A000217(n+1)+A000217(n)-A018805(n+1)`
-/

namespace A100613.P3715366399268710992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A018805 (n + 1))

end

end A100613.P3715366399268710992

namespace A100613

/-- `A000217(n+1)+A000217(n)-A018805(n+1)` -/
def P3715366399268710992.Spec : Prop :=
  ∀ n, P3715366399268710992.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P15192690241740751668

`A185670(n+1)+A000217(n)-A015613(n+1)`
-/

namespace A100613.P15192690241740751668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185670 (n + 1) + (A000217 n - A015613 (n + 1))

end

end A100613.P15192690241740751668

namespace A100613

/-- `A185670(n+1)+A000217(n)-A015613(n+1)` -/
def P15192690241740751668.Spec : Prop :=
  ∀ n, P15192690241740751668.a n = A100613 (n + 1)

end A100613

/-! ## A100613.P17647406946022419793

`A063985(n+1)+A091369(n+1)-A018805(n+1)`
-/

namespace A100613.P17647406946022419793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063985 (n + 1) + (A091369 (n + 1) - A018805 (n + 1))

end

end A100613.P17647406946022419793

namespace A100613

/-- `A063985(n+1)+A091369(n+1)-A018805(n+1)` -/
def P17647406946022419793.Spec : Prop :=
  ∀ n, P17647406946022419793.a n = A100613 (n + 1)

end A100613

/-!
# A100614: Numbers n such that (!n)/2 is prime, where !n = Sum_{k=0..n-1} k!.

The programs for A100614, there is no canonical definition to state claims against.
-/

/-! ## A100614.P3239986995836843280

`A124375(n+1)+1`
-/

namespace A100614.P3239986995836843280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124375 (n + 1) + 1

end

end A100614.P3239986995836843280

/-! ## A100614.P15542144815419586621

`A020725(A124375(n+1))`
-/

namespace A100614.P15542144815419586621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A124375 (n + 1)).toNat

end

end A100614.P15542144815419586621

/-!
# A100615: Let N(n)(x) be the Nørlund polynomials as defined in A001898, with N(n)(1) equal to the usual Bernoulli numbers A027641/A027642. Sequence gives numerators of N(n)(2).

The programs for A100615, there is no canonical definition to state claims against.
-/

/-! ## A100615.P6855915252521065377

`A197419(∑[n])`
-/

namespace A100615.P6855915252521065377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197419 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100615.P6855915252521065377

/-! ## A100615.P8342470004701783676

`or(1, A197419(A000217(n)))`
-/

namespace A100615.P8342470004701783676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197419 (A000217 n).toNat)

end

end A100615.P8342470004701783676

/-! ## A100615.P4645577787861770234

`or(1, A197419(A069696(n+1)))`
-/

namespace A100615.P4645577787861770234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197419 (A069696 (n + 1)).toNat)

end

end A100615.P4645577787861770234

/-! ## A100615.P2009339804475765234

`A197419(A000217(n))+A011734(n)`
-/

namespace A100615.P2009339804475765234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197419 (A000217 n).toNat + A011734 n

end

end A100615.P2009339804475765234

/-! ## A100615.P14983697709136521848

`A197419(A000217(n))%A001550(n)`
-/

namespace A100615.P14983697709136521848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197419 (A000217 n).toNat) (A001550 n)

end

end A100615.P14983697709136521848

/-!
# A100616: Let B(n)(x) be the Bernoulli polynomials as defined in A001898, with B(n)(1) equal to the usual Bernoulli numbers A027641/A027642. Sequence gives denominators of B(n)(2).

The programs for A100616, there is no canonical definition to state claims against.
-/

/-! ## A100616.P17085486244390168760

`A197420(∑[n])`
-/

namespace A100616.P17085486244390168760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197420 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100616.P17085486244390168760

/-! ## A100616.P5583392216340686038

`∏{p}[A197420(A000217(n)), #]`
-/

namespace A100616.P5583392216340686038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197420 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A100616.P5583392216340686038

/-! ## A100616.P18305234401177891105

`∏{p}[A197420(A069696(n+1)), #]`
-/

namespace A100616.P18305234401177891105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197420 (A069696 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A100616.P18305234401177891105

/-! ## A100616.P12014638872497710152

`∏{p}[A197420(A179865(n+1)), #]`
-/

namespace A100616.P12014638872497710152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197420 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A100616.P12014638872497710152

/-! ## A100616.P9374078587970795174

`A197420(n*(n+1)/2)+A010054(3*n+2)`
-/

namespace A100616.P9374078587970795174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197420 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat + A010054 (3 * n + 2)

end

end A100616.P9374078587970795174

/-!
# A100617: There are n people in a room. The first half (i.e., floor(n/2)) of them leave, then 1/3 (i.e., floor of 1/3) of those remaining leave, then 1/4, then 1/5, etc.; sequence gives number who remain at the end.

The programs for A100617, there is no canonical definition to state claims against.
-/

/-! ## A100617.P7943465002526391832

`∑[char[A278484(n)]]`
-/

namespace A100617.P7943465002526391832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100617.P7943465002526391832

/-! ## A100617.P13182070897988209808

`∑[A278169(n+1)]`
-/

namespace A100617.P13182070897988209808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100617.P13182070897988209808

/-! ## A100617.P1785851582582758341

`∑[floor(1/A278539(n+1))]`
-/

namespace A100617.P1785851582582758341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A278539 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100617.P1785851582582758341

/-! ## A100617.P14235446331573367947

`∑[char[A000960(n+1)-1]]`
-/

namespace A100617.P14235446331573367947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100617.P14235446331573367947

/-! ## A100617.P1567853360761144068

`∑[A000007(A278529(n+1))]`
-/

namespace A100617.P1567853360761144068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A278529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100617.P1567853360761144068

/-! ## A100617.P17332637629144396037

`∑[A008683(A100002(n+1)²)]`
-/

namespace A100617.P17332637629144396037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A100002 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100617.P17332637629144396037

/-! ## A100617.P1077968958043661647

`∑[char[A004442(A000960(n+1))]]`
-/

namespace A100617.P1077968958043661647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A000960 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100617.P1077968958043661647

/-! ## A100617.P16545816900493841731

`∑[A008683(A272777(2*(n+2)))^A272800(n+1)]`
-/

namespace A100617.P16545816900493841731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A272777 (2 * (n + 2))).toNat : ℚ) ^ (A272800 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100617.P16545816900493841731

/-! ## A100617.P5451091365889552070

`∑[A010054(A278506(n+1))]`
-/

namespace A100617.P5451091365889552070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A278506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100617.P5451091365889552070

/-!
# A100618: Initially there are n people in a room. At each step, if there are currently M people in the room, [M/k^2] of them leave, for k = 2, 3, ... Sequence gives number who are left at the end.

The programs for A100618, there is no canonical definition to state claims against.
-/

/-! ## A100618.P4368495716268004794

`∑[A168185(A349134(n+1)²²)]`
-/

namespace A100618.P4368495716268004794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 ((A349134 (n + 1) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100618.P4368495716268004794

/-! ## A100618.P1806696802726784973

`a(n-1)+A057427(n)*A168185(A349134(n+1)²²)` with `a(0)=1`
-/

namespace A100618.P1806696802726784973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A168185 ((A349134 (n + 1) ^ 2) ^ 2).toNat

end

end A100618.P1806696802726784973

/-! ## A100618.P4603514086908069849

`∑[A328308(A031285(n+4))]`
-/

namespace A100618.P4603514086908069849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A031285 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100618.P4603514086908069849

/-! ## A100618.P17604451662817382430

`∑[A328308(record[A031285(n)])]`
-/

namespace A100618.P17604451662817382430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100618.P17604451662817382430

/-! ## A100618.P326636396428678014

`A001222(A000043(n+1))*∑[A328308(n+5)]`
-/

namespace A100618.P326636396428678014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100618.P326636396428678014

/-!
# A100619: Fixed point of the morphism 1 -> 12, 2 -> 31, 3 -> 1, starting from a(1) = 1.

The programs for A100619, there is no canonical definition to state claims against.
-/

/-! ## A100619.P3786763222627443951

`A277735(n+1)+1`
-/

namespace A100619.P3786763222627443951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (n + 1) + 1

end

end A100619.P3786763222627443951

/-! ## A100619.P13671233463288664915

`A001511(record[A131098(n+1)-A006068(n)])`
-/

namespace A100619.P13671233463288664915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) - A006068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100619.P13671233463288664915

/-! ## A100619.P2982223358292974650

`A004736(gcd(A071283(n), A307617(n+1)))`
-/

namespace A100619.P2982223358292974650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Int.gcd (A071283 n) (A307617 (n + 1)))

end

end A100619.P2982223358292974650

/-! ## A100619.P768531324284565454

`A125072(A007210(3*n+5)-A189233(n))`
-/

namespace A100619.P768531324284565454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125072 (A007210 (3 * n + 5) - A189233 n).toNat

end

end A100619.P768531324284565454

/-! ## A100619.P8522122172864738614

`A385731(A357776(n+1))`
-/

namespace A100619.P8522122172864738614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385731 (A357776 (n + 1)).toNat

end

end A100619.P8522122172864738614

/-!
# A100620: Numerator of Cotesian number C(n,0).

The programs for A100620, there is no canonical definition to state claims against.
-/

/-! ## A100620.P13630455525370496143

`A100640(∑[n])`
-/

namespace A100620.P13630455525370496143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100620.P13630455525370496143

/-! ## A100620.P14833175763341974449

`abs(A100640(A000217(n)))`
-/

namespace A100620.P14833175763341974449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100640 (A000217 n).toNat|

end

end A100620.P14833175763341974449

/-! ## A100620.P2446064952104718412

`abs(A100640(A000124(n)-1))`
-/

namespace A100620.P2446064952104718412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100640 (A000124 n - 1).toNat|

end

end A100620.P2446064952104718412

/-! ## A100620.P16364025329661176478

`or(A000035(n), A100640(A000217(n)))`
-/

namespace A100620.P16364025329661176478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A100640 (A000217 n).toNat)

end

end A100620.P16364025329661176478

/-! ## A100620.P8214680943862504452

`A100640(A000217(n))+A000035(2*n)`
-/

namespace A100620.P8214680943862504452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100640 (A000217 n).toNat + A000035 (2 * n)

end

end A100620.P8214680943862504452

/-!
# A100621: Denominator of Cotesian number C(n,0).

The programs for A100621, there is no canonical definition to state claims against.
-/

/-! ## A100621.P16602569433122554551

`A100641(∑[n])`
-/

namespace A100621.P16602569433122554551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100641 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100621.P16602569433122554551

/-! ## A100621.P8974529105560074538

`and(-1, A100641(A000217(n)))`
-/

namespace A100621.P8974529105560074538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A100641 (A000217 n).toNat)

end

end A100621.P8974529105560074538

/-! ## A100621.P4840518952499047614

`A100641(A000217(n))+A000007(2*(n+1))`
-/

namespace A100621.P4840518952499047614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100641 (A000217 n).toNat + A000007 (2 * (n + 1))

end

end A100621.P4840518952499047614

/-! ## A100621.P13681699216119795349

`A100641(A000217(n))+A007949(3*n+2)`
-/

namespace A100621.P13681699216119795349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100641 (A000217 n).toNat + A007949 (3 * n + 2)

end

end A100621.P13681699216119795349

/-! ## A100621.P7149307224298136315

`A285480(2*n+3)+A100641(A000217(n))`
-/

namespace A100621.P7149307224298136315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285480 (2 * n + 3) + A100641 (A000217 n).toNat

end

end A100621.P7149307224298136315

/-! ## A100621.P8432725173991277484

`A353480(A000120(n)+1)+A100641(A000217(n))`
-/

namespace A100621.P8432725173991277484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A000120 n + 1).toNat + A100641 (A000217 n).toNat

end

end A100621.P8432725173991277484

/-! ## A100621.P12140215839023489145

`A353480(A004016(n)+1)+A100641(A000217(n))`
-/

namespace A100621.P12140215839023489145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A004016 n + 1).toNat + A100641 (A000217 n).toNat

end

end A100621.P12140215839023489145

/-! ## A100621.P1822657679351282359

`A353480(A006567(3*n+1)+1)+A100641(A000217(n))`
-/

namespace A100621.P1822657679351282359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A006567 (3 * n + 1) + 1).toNat + A100641 (A000217 n).toNat

end

end A100621.P1822657679351282359

/-!
# A100622: Expansion of e.g.f. exp( (1+2*x-sqrt(1-4*x))/4).

The programs for A100622, the canonical program `A100622.P748980302766977774` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100622 has offset 0).

The definition of A100622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100622.P748980302766977774

`(4*n-5)*a(n-1)-(4*n-7)*a(n-2)+(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100622

/-- `(4*n-5)*a(n-1)-(4*n-7)*a(n-2)+(n-2)*a(n-3)` -/
def P748980302766977774.Spec : Prop :=
  ∀ n, P748980302766977774.a n = A100622 n

theorem P748980302766977774.correct : P748980302766977774.Spec := by
  intro n
  simp only [A100622]

end A100622

/-! ## A100622.P2314044787584886869

`A216369(n*(C(n, 2)+n*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A100622.P2314044787584886869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A216369 ((n : ℤ) * ((Nat.choose n 2 : ℤ) + (n : ℤ) * a (n - 1))).toNat

end

end A100622.P2314044787584886869

namespace A100622

/-- `A216369(n*(C(n, 2)+n*a(n-1)))` -/
def P2314044787584886869.Spec : Prop :=
  ∀ n, P2314044787584886869.a n = A100622 n

end A100622

/-!
# A100624: Cost of traversing complete tree of height n through splaying.

The programs for A100624, there is no canonical definition to state claims against.
-/

/-! ## A100624.P13632558635697727046

`∑[A202305(A054145(n))]`
-/

namespace A100624.P13632558635697727046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A054145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100624.P13632558635697727046

/-! ## A100624.P13747965696074726164

`∑[A047342(record[A318307(n+1)])]`
-/

namespace A100624.P13747965696074726164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047342 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100624.P13747965696074726164

/-!
# A100625: Cost of traversing leftmost tree of height n through splaying.

The programs for A100625, there is no canonical definition to state claims against.
-/

/-! ## A100625.P2289875552500628760

`ceil(atan(n))*A175088(A175104(n+1))`
-/

namespace A100625.P2289875552500628760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ * A175088 (A175104 (n + 1)).toNat

end

end A100625.P2289875552500628760

/-! ## A100625.P15700388982482364754

`A077462(A036292(n))-A008615(n)`
-/

namespace A100625.P15700388982482364754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A036292 n).toNat - A008615 n

end

end A100625.P15700388982482364754

/-!
# A100626: Numbers of the form 2^(2p+1) where p is prime.

The programs for A100626, there is no canonical definition to state claims against.
-/

/-! ## A100626.P10517129466895799595

`2*(2^p?[comp[n²]])²`
-/

namespace A100626.P10517129466895799595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2

end

end A100626.P10517129466895799595

/-! ## A100626.P12436071544568058905

`2*4^p?[abs(xor(n, -2))]`
-/

namespace A100626.P12436071544568058905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (4 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A100626.P12436071544568058905

/-! ## A100626.P6732131262148018835

`2*4^p?[xor(1, n)+1]`
-/

namespace A100626.P6732131262148018835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A100626.P6732131262148018835

/-! ## A100626.P2896344112617082619

`record[2*4^∑{p}[n+2, #]]`
-/

namespace A100626.P2896344112617082619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100626.P2896344112617082619

/-! ## A100626.P10047556083327996260

`record[2*∏{p}[n+2, 4^#]]`
-/

namespace A100626.P10047556083327996260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f2 n), 4 ^ p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100626.P10047556083327996260

/-!
# A100627: a(n) = 3^(2*prime(n) + 1).

The programs for A100627, the canonical program `A100627.P1235859993925810470` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100627 has offset 1).

The definition of A100627 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072055, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100627.P1235859993925810470

`A000244(A072055(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100627

/-- `A000244(A072055(n+1))` -/
def P1235859993925810470.Spec : Prop :=
  ∀ n, P1235859993925810470.a n = A100627 (n + 1)

theorem P1235859993925810470.correct : P1235859993925810470.Spec := by
  intro n
  simp only [A100627, Nat.add_sub_cancel]

end A100627

/-! ## A100627.P8421781123726077309

`3*9^A000040(n+1)`
-/

namespace A100627.P8421781123726077309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (9 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A100627.P8421781123726077309

namespace A100627

/-- `3*9^A000040(n+1)` -/
def P8421781123726077309.Spec : Prop :=
  ∀ n, P8421781123726077309.a n = (A100627 (n + 1) : ℚ)

end A100627

/-! ## A100627.P5882704348454039291

`9*3^A076274(n+2)`
-/

namespace A100627.P5882704348454039291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * (3 : ℚ) ^ (A076274 (n + 2) : ℤ)

end

end A100627.P5882704348454039291

namespace A100627

/-- `9*3^A076274(n+2)` -/
def P5882704348454039291.Spec : Prop :=
  ∀ n, P5882704348454039291.a n = (A100627 (n + 1) : ℚ)

end A100627

/-! ## A100627.P5311938406431744100

`record[3*9^A006530(n+2)]`
-/

namespace A100627.P5311938406431744100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (9 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100627.P5311938406431744100

namespace A100627

/-- `record[3*9^A006530(n+2)]` -/
def P5311938406431744100.Spec : Prop :=
  ∀ n, P5311938406431744100.a n = (A100627 (n + 1) : ℚ)

end A100627

/-! ## A100627.P11144059046836605416

`record[3*9^A020639(n+2)]`
-/

namespace A100627.P11144059046836605416
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (9 : ℚ) ^ (A020639 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100627.P11144059046836605416

namespace A100627

/-- `record[3*9^A020639(n+2)]` -/
def P11144059046836605416.Spec : Prop :=
  ∀ n, P11144059046836605416.a n = (A100627 (n + 1) : ℚ)

end A100627

/-!
# A100628: a(n) = 2^(3*prime(n) + 1).

The programs for A100628, there is no canonical definition to state claims against.
-/

/-! ## A100628.P1568883702474762512

`2*8^p?[comp[n²]]`
-/

namespace A100628.P1568883702474762512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 8 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A100628.P1568883702474762512

/-! ## A100628.P430220201593328080

`2^(3*p?[xor(1, n)+1]+1)`
-/

namespace A100628.P430220201593328080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A100628.P430220201593328080

/-! ## A100628.P3494021922574026259

`2^(3*p?[round(8*n/7)]+1)`
-/

namespace A100628.P3494021922574026259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℤ)

end

end A100628.P3494021922574026259

/-! ## A100628.P12080855220175233355

`2*2^(3*p?[round(8*n/7)])`
-/

namespace A100628.P12080855220175233355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A100628.P12080855220175233355

/-! ## A100628.P7776397828159731068

`2^(A001748(n+1)+1)`
-/

namespace A100628.P7776397828159731068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001748 (n + 1) + 1 : ℤ)

end

end A100628.P7776397828159731068

/-!
# A100629: 

The programs for A100629, there is no canonical definition to state claims against.
-/

/-! ## A100629.P6401258976167760127

`2^(A001750(n+1)+1)`
-/

namespace A100629.P6401258976167760127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001750 (n + 1) + 1 : ℤ)

end

end A100629.P6401258976167760127

/-! ## A100629.P17976863457394879351

`2*32^A000040(n+1)`
-/

namespace A100629.P17976863457394879351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (32 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A100629.P17976863457394879351

/-! ## A100629.P3606276765556509979

`A013822(A000040(n+1))`
-/

namespace A100629.P3606276765556509979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013822 (A000040 (n + 1)).toNat

end

end A100629.P3606276765556509979

/-! ## A100629.P6731906544578916016

`A013822(record[A006530(n+2)])`
-/

namespace A100629.P6731906544578916016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013822 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100629.P6731906544578916016

/-! ## A100629.P9576096762489182262

`A013822(record[A020639(n+2)])`
-/

namespace A100629.P9576096762489182262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013822 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100629.P9576096762489182262

/-!
# A100630: Array read by antidiagonals: T(m,n) = Sum_{i=1..m} i*(n-1+i)!.

The programs for A100630, the canonical program `A100630.P502029142886304984` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100630 has offset 1).

The definition of A100630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100630.P8246868061286346213

`∑[A054115(comp[∑[n+1]]+1)]`
-/

namespace A100630.P8246868061286346213
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054115 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100630.P8246868061286346213

namespace A100630

/-- `∑[A054115(comp[∑[n+1]]+1)]` -/
def P8246868061286346213.Spec : Prop :=
  ∀ n, P8246868061286346213.a n = A100630 (n + 1)

end A100630

/-! ## A100630.P502029142886304984

`∑[gcd(A106459(n), A211370(n+1))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A100630

/-- `∑[gcd(A106459(n), A211370(n+1))]` -/
def P502029142886304984.Spec : Prop :=
  ∀ n, (P502029142886304984.a n : ℤ) = A100630 (n + 1)

theorem P502029142886304984.correct : P502029142886304984.Spec := by
  intro n
  simp only [A100630, Nat.add_sub_cancel]

end A100630

/-! ## A100630.P5585460795399304448

`A276082(A089633(n)+1)`
-/

namespace A100630.P5585460795399304448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 (A089633 n + 1).toNat

end

end A100630.P5585460795399304448

namespace A100630

/-- `A276082(A089633(n)+1)` -/
def P5585460795399304448.Spec : Prop :=
  ∀ n, P5585460795399304448.a n = A100630 (n + 1)

end A100630

/-! ## A100630.P8367398303505830315

`A276082(A023758(n+2))`
-/

namespace A100630.P8367398303505830315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 (A023758 (n + 2)).toNat

end

end A100630.P8367398303505830315

namespace A100630

/-- `A276082(A023758(n+2))` -/
def P8367398303505830315.Spec : Prop :=
  ∀ n, P8367398303505830315.a n = A100630 (n + 1)

end A100630

/-! ## A100630.P9418655582075185442

`A276082(eq[1, A069010(n)])`
-/

namespace A100630.P9418655582075185442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100630.P9418655582075185442

namespace A100630

/-- `A276082(eq[1, A069010(n)])` -/
def P9418655582075185442.Spec : Prop :=
  ∀ n, P9418655582075185442.a n = A100630 (n + 1)

end A100630

/-! ## A100630.P10214201728010591628

`A276082(∑[A057728(n+1)])`
-/

namespace A100630.P10214201728010591628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100630.P10214201728010591628

namespace A100630

/-- `A276082(∑[A057728(n+1)])` -/
def P10214201728010591628.Spec : Prop :=
  ∀ n, P10214201728010591628.a n = A100630 (n + 1)

end A100630

/-! ## A100630.P3215747926215845730

`A276082(record[A059893(n+1)])`
-/

namespace A100630.P3215747926215845730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100630.P3215747926215845730

namespace A100630

/-- `A276082(record[A059893(n+1)])` -/
def P3215747926215845730.Spec : Prop :=
  ∀ n, P3215747926215845730.a n = A100630 (n + 1)

end A100630

/-! ## A100630.P5206210635837566748

`A276082(record[A073138(n+1)])`
-/

namespace A100630.P5206210635837566748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100630.P5206210635837566748

namespace A100630

/-- `A276082(record[A073138(n+1)])` -/
def P5206210635837566748.Spec : Prop :=
  ∀ n, P5206210635837566748.a n = A100630 (n + 1)

end A100630

/-! ## A100630.P2009705275460383560

`A276001(A288349(n+1))`
-/

namespace A100630.P2009705275460383560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276001 (A288349 (n + 1)).toNat

end

end A100630.P2009705275460383560

namespace A100630

/-- `A276001(A288349(n+1))` -/
def P2009705275460383560.Spec : Prop :=
  ∀ n, P2009705275460383560.a n = A100630 (n + 1)

end A100630

/-!
# A100631: Triangle read by rows: T(n,k) = 2*(T(n-1,k-1) - T(n-2,k-1) + T(n-1,k)) for 0 < k < n, T(n,0) = T(n,n) = 1.

The programs for A100631, there is no canonical definition to state claims against.
-/

/-! ## A100631.P3107879082990854420

`A055587(A083920(n))*A232089(n+1)`
-/

namespace A100631.P3107879082990854420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A083920 n).toNat * A232089 (n + 1)

end

end A100631.P3107879082990854420

/-! ## A100631.P17641139080729636434

`A055587(A271439(n))*A232089(n+1)`
-/

namespace A100631.P17641139080729636434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A271439 n).toNat * A232089 (n + 1)

end

end A100631.P17641139080729636434

/-! ## A100631.P14637303480734059588

`A055587(A056943(n))*A059268(A056943(n))`
-/

namespace A100631.P14637303480734059588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A056943 n).toNat * A059268 (A056943 n).toNat

end

end A100631.P14637303480734059588

/-! ## A100631.P14522461652951560427

`A055587(A083920(n))*A059268(A083920(n))`
-/

namespace A100631.P14522461652951560427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A083920 n).toNat * A059268 (A083920 n).toNat

end

end A100631.P14522461652951560427

/-! ## A100631.P10907011589879358303

`A138768(A099594(n))`
-/

namespace A100631.P10907011589879358303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138768 (A099594 n).toNat

end

end A100631.P10907011589879358303

/-!
# A100632: Number of Shapes(n, d) for a given number of polyhypercubes / polytopominoes n in a given dimensional space d.

The programs for A100632, there is no canonical definition to state claims against.
-/

/-! ## A100632.P10824435605256314866

`A330891(n+1)+A195738(n+2)`
-/

namespace A100632.P10824435605256314866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330891 (n + 1) + A195738 (n + 2)

end

end A100632.P10824435605256314866

/-!
# A100634: a(n) is the decimal equivalent of the binary number whose k-th least significant bit is 1 iff k is a prime number and k <= n.

The programs for A100634, the canonical program `A100634.P13152122209848196161` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100634 has offset 1).

The definition of A100634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100634.P17703643327061389821

`∑[floor(2^(A061397(n+1)-1))]`
-/

namespace A100634.P17703643327061389821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A061397 (n + 1) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P17703643327061389821

namespace A100634

/-- `∑[floor(2^(A061397(n+1)-1))]` -/
def P17703643327061389821.Spec : Prop :=
  ∀ n, P17703643327061389821.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P13152122209848196161

`∑[a(Δ[A095117(n)]-1)^n]` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100634

/-- `∑[a(Δ[A095117(n)]-1)^n]` -/
def P13152122209848196161.Spec : Prop :=
  ∀ n, (P13152122209848196161.a n : ℤ) = A100634 (n + 1)

theorem P13152122209848196161.correct : P13152122209848196161.Spec := by
  intro n
  simp only [A100634, Nat.add_sub_cancel]

end A100634

/-! ## A100634.P17308123110748481089

`A080355(A036234(n+1))-1`
-/

namespace A100634.P17308123110748481089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080355 (A036234 (n + 1)).toNat - 1

end

end A100634.P17308123110748481089

namespace A100634

/-- `A080355(A036234(n+1))-1` -/
def P17308123110748481089.Spec : Prop :=
  ∀ n, P17308123110748481089.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P7619231214673496056

`A076793(A000720(n+1))/2`
-/

namespace A100634.P7619231214673496056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076793 (A000720 (n + 1)).toNat : ℚ) / 2

end

end A100634.P7619231214673496056

namespace A100634

/-- `A076793(A000720(n+1))/2` -/
def P7619231214673496056.Spec : Prop :=
  ∀ n, P7619231214673496056.a n = (A100634 (n + 1) : ℚ)

end A100634

/-! ## A100634.P70570803634237250

`2*A135482(∑[A010051(n+1)])`
-/

namespace A100634.P70570803634237250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135482 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100634.P70570803634237250

namespace A100634

/-- `2*A135482(∑[A010051(n+1)])` -/
def P70570803634237250.Spec : Prop :=
  ∀ n, P70570803634237250.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P9276215556331034531

`∑[2*A166444(A061397(n+1))]`
-/

namespace A100634.P9276215556331034531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166444 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P9276215556331034531

namespace A100634

/-- `∑[2*A166444(A061397(n+1))]` -/
def P9276215556331034531.Spec : Prop :=
  ∀ n, P9276215556331034531.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P2291239866478917495

`A080355(A000720(n+1)+1)-1`
-/

namespace A100634.P2291239866478917495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080355 (A000720 (n + 1) + 1).toNat - 1

end

end A100634.P2291239866478917495

namespace A100634

/-- `A080355(A000720(n+1)+1)-1` -/
def P2291239866478917495.Spec : Prop :=
  ∀ n, P2291239866478917495.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P6542212546187416671

`2*A135482(∑[char[A020639(n+2)-1]])`
-/

namespace A100634.P6542212546187416671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135482 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100634.P6542212546187416671

namespace A100634

/-- `2*A135482(∑[char[A020639(n+2)-1]])` -/
def P6542212546187416671.Spec : Prop :=
  ∀ n, P6542212546187416671.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P10773770614155573347

`∑[2^n*char[p?[∏{p}[n, #]]-1]]`
-/

namespace A100634.P10773770614155573347
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P10773770614155573347

namespace A100634

/-- `∑[2^n*char[p?[∏{p}[n, #]]-1]]` -/
def P10773770614155573347.Spec : Prop :=
  ∀ n, (P10773770614155573347.a n : ℤ) = A100634 (n + 1)

end A100634

/-! ## A100634.P3976499744620335937

`∑[2^n*char[record[A000010(n+1)]]]`
-/

namespace A100634.P3976499744620335937
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P3976499744620335937

namespace A100634

/-- `∑[2^n*char[record[A000010(n+1)]]]` -/
def P3976499744620335937.Spec : Prop :=
  ∀ n, (P3976499744620335937.a n : ℤ) = A100634 (n + 1)

end A100634

/-! ## A100634.P514775969488367173

`∑[2^n*char[A020639(n+1)-1]]-1`
-/

namespace A100634.P514775969488367173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A100634.P514775969488367173

namespace A100634

/-- `∑[2^n*char[A020639(n+1)-1]]-1` -/
def P514775969488367173.Spec : Prop :=
  ∀ n, P514775969488367173.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P4926742948264926880

`∑[Δ[A230980(n)]*A000079(n)]`
-/

namespace A100634.P4926742948264926880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P4926742948264926880

namespace A100634

/-- `∑[Δ[A230980(n)]*A000079(n)]` -/
def P4926742948264926880.Spec : Prop :=
  ∀ n, P4926742948264926880.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P13314730337788660099

`∑[2^n*A001065(Δ[A095117(n)])]`
-/

namespace A100634.P13314730337788660099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001065 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P13314730337788660099

namespace A100634

/-- `∑[2^n*A001065(Δ[A095117(n)])]` -/
def P13314730337788660099.Spec : Prop :=
  ∀ n, P13314730337788660099.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P5252410153875181302

`∑[A010051(n+1)*A011782(n+1)]`
-/

namespace A100634.P5252410153875181302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P5252410153875181302

namespace A100634

/-- `∑[A010051(n+1)*A011782(n+1)]` -/
def P5252410153875181302.Spec : Prop :=
  ∀ n, P5252410153875181302.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P1764952229251363730

`∑[A000079(n)*A080339(n+1)]-1`
-/

namespace A100634.P1764952229251363730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100634.P1764952229251363730

namespace A100634

/-- `∑[A000079(n)*A080339(n+1)]-1` -/
def P1764952229251363730.Spec : Prop :=
  ∀ n, P1764952229251363730.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P14950528252783669262

`∑[and(A336647(n+1)-2, A000079(n))]`
-/

namespace A100634.P14950528252783669262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A336647 (n + 1) - 2) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P14950528252783669262

namespace A100634

/-- `∑[and(A336647(n+1)-2, A000079(n))]` -/
def P14950528252783669262.Spec : Prop :=
  ∀ n, P14950528252783669262.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P1837054417368783693

`∑[char[A000040(n+1)-1]*A000079(n)]`
-/

namespace A100634.P1837054417368783693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P1837054417368783693

namespace A100634

/-- `∑[char[A000040(n+1)-1]*A000079(n)]` -/
def P1837054417368783693.Spec : Prop :=
  ∀ n, P1837054417368783693.a n = A100634 (n + 1)

end A100634

/-! ## A100634.P16620649338959109578

`∑[A010051(n+1)*A036561(∑[n])]`
-/

namespace A100634.P16620649338959109578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A036561 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P16620649338959109578

namespace A100634

/-- `∑[A010051(n+1)*A036561(∑[n])]` -/
def P16620649338959109578.Spec : Prop :=
  ∀ n, P16620649338959109578.a n = A100634 (n + 1)

end A100634

/-!
# A100635: Number of 2 X 2 matrices with elements in {1,2,...,n} such that LCMs of rows and columns are n.

The programs for A100635, the canonical program `A100635.P7386032928192710046` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100635 has offset 1).

The definition of A100635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100635.P7386032928192710046

`∏{e}[n+1, A056220(#+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100635

/-- `∏{e}[n+1, A056220(#+1)]` -/
def P7386032928192710046.Spec : Prop :=
  ∀ n, P7386032928192710046.a n = A100635 (n + 1)

theorem P7386032928192710046.correct : P7386032928192710046.Spec := by
  intro n
  simp only [A100635, Nat.add_sub_cancel]

end A100635

/-! ## A100635.P4709674831183609393

`∏{e}[n+1, A047838(2*#+2)]`
-/

namespace A100635.P4709674831183609393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A047838 (2 * Nat.factorization (f1 n) p + 2)

end

end A100635.P4709674831183609393

namespace A100635

/-- `∏{e}[n+1, A047838(2*#+2)]` -/
def P4709674831183609393.Spec : Prop :=
  ∀ n, P4709674831183609393.a n = A100635 (n + 1)

end A100635

/-! ## A100635.P16467459668352849956

`∏{e}[n+1, A079326(2*#+2)]`
-/

namespace A100635.P16467459668352849956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A079326 (2 * Nat.factorization (f1 n) p + 2)

end

end A100635.P16467459668352849956

namespace A100635

/-- `∏{e}[n+1, A079326(2*#+2)]` -/
def P16467459668352849956.Spec : Prop :=
  ∀ n, P16467459668352849956.a n = A100635 (n + 1)

end A100635

/-! ## A100635.P15173035877191280162

`∏{e}[n+1, A074148(#+#+1)]`
-/

namespace A100635.P15173035877191280162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A074148 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p + 1)

end

end A100635.P15173035877191280162

namespace A100635

/-- `∏{e}[n+1, A074148(#+#+1)]` -/
def P15173035877191280162.Spec : Prop :=
  ∀ n, P15173035877191280162.a n = A100635 (n + 1)

end A100635

/-! ## A100635.P805295822019727032

`∏{e}[(n+1)², A326658(#)]`
-/

namespace A100635.P805295822019727032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A326658 (Nat.factorization (f1 n) p)

end

end A100635.P805295822019727032

namespace A100635

/-- `∏{e}[(n+1)², A326658(#)]` -/
def P805295822019727032.Spec : Prop :=
  ∀ n, P805295822019727032.a n = A100635 (n + 1)

end A100635

/-!
# A100636: 

The programs for A100636, there is no canonical definition to state claims against.
-/

/-! ## A100636.P3635705544721451910

`(2^A001248(n+1))²`
-/

namespace A100636.P3635705544721451910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A001248 (n + 1) : ℤ)) ^ 2

end

end A100636.P3635705544721451910

/-!
# A100637: Trisection of A000720.

The programs for A100637, the canonical program `A100637.P13819822131188342482` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100637 has offset 0).

The definition of A100637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100637.P15335786764559850788

`A000720(3*(n+1))`
-/

namespace A100637.P15335786764559850788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * (n + 1))

end

end A100637.P15335786764559850788

namespace A100637

/-- `A000720(3*(n+1))` -/
def P15335786764559850788.Spec : Prop :=
  ∀ n, P15335786764559850788.a n = A100637 n

end A100637

/-! ## A100637.P13819822131188342482

`A075743(n)+a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100637

/-- `A075743(n)+a(n-1)` -/
def P13819822131188342482.Spec : Prop :=
  ∀ n, P13819822131188342482.a n = A100637 n

theorem P13819822131188342482.correct : P13819822131188342482.Spec := by
  intro n
  simp only [A100637]

end A100637

/-! ## A100637.P14306971589452158383

`a(n-1)+A156706(n)²` with `a(0)=2`
-/

namespace A100637.P14306971589452158383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A156706 n ^ 2

end

end A100637.P14306971589452158383

namespace A100637

/-- `a(n-1)+A156706(n)²` -/
def P14306971589452158383.Spec : Prop :=
  ∀ n, P14306971589452158383.a n = A100637 n

end A100637

/-! ## A100637.P12069362447728381105

`∑[A075743(abs(1-n)+1)]+1`
-/

namespace A100637.P12069362447728381105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A100637.P12069362447728381105

namespace A100637

/-- `∑[A075743(abs(1-n)+1)]+1` -/
def P12069362447728381105.Spec : Prop :=
  ∀ n, P12069362447728381105.a n = A100637 n

end A100637

/-! ## A100637.P11803352371194654257

`∑[char[ceil(A000040(n+1)/3)-1]]+1`
-/

namespace A100637.P11803352371194654257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℚ) / 3⌉ - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A100637.P11803352371194654257

namespace A100637

/-- `∑[char[ceil(A000040(n+1)/3)-1]]+1` -/
def P11803352371194654257.Spec : Prop :=
  ∀ n, (P11803352371194654257.a n : ℤ) = A100637 n

end A100637

/-! ## A100637.P13102698289572701683

`∑[char[ceil(A008578(n+1)/3)-1]]+1`
-/

namespace A100637.P13102698289572701683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008578 (n + 1) : ℚ) / 3⌉ - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A100637.P13102698289572701683

namespace A100637

/-- `∑[char[ceil(A008578(n+1)/3)-1]]+1` -/
def P13102698289572701683.Spec : Prop :=
  ∀ n, (P13102698289572701683.a n : ℤ) = A100637 n

end A100637

/-! ## A100637.P14305859657039179466

`∑[char[ceil(A158611(n+2)/3)-1]]+1`
-/

namespace A100637.P14305859657039179466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158611 (n + 2) : ℚ) / 3⌉ - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A100637.P14305859657039179466

namespace A100637

/-- `∑[char[ceil(A158611(n+2)/3)-1]]+1` -/
def P14305859657039179466.Spec : Prop :=
  ∀ n, (P14305859657039179466.a n : ℤ) = A100637 n

end A100637

/-! ## A100637.P153917267520041743

`A099801(A001651(n+1))`
-/

namespace A100637.P153917267520041743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A001651 (n + 1)).toNat

end

end A100637.P153917267520041743

namespace A100637

/-- `A099801(A001651(n+1))` -/
def P153917267520041743.Spec : Prop :=
  ∀ n, P153917267520041743.a n = A100637 n

end A100637

/-! ## A100637.P4247626703286393724

`A099801(A047255(n+1))`
-/

namespace A100637.P4247626703286393724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A047255 (n + 1)).toNat

end

end A100637.P4247626703286393724

namespace A100637

/-- `A099801(A047255(n+1))` -/
def P4247626703286393724.Spec : Prop :=
  ∀ n, P4247626703286393724.a n = A100637 n

end A100637

/-! ## A100637.P18111282192102697323

`A099801(A294732(n+2))`
-/

namespace A100637.P18111282192102697323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A294732 (n + 2)).toNat

end

end A100637.P18111282192102697323

namespace A100637

/-- `A099801(A294732(n+2))` -/
def P18111282192102697323.Spec : Prop :=
  ∀ n, P18111282192102697323.a n = A100637 n

end A100637

/-! ## A100637.P13542966614181957911

`A099801(A065033(n)+n)`
-/

namespace A100637.P13542966614181957911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A065033 n + (n : ℤ)).toNat

end

end A100637.P13542966614181957911

namespace A100637

/-- `A099801(A065033(n)+n)` -/
def P13542966614181957911.Spec : Prop :=
  ∀ n, P13542966614181957911.a n = A100637 n

end A100637

/-! ## A100637.P11130488147240999367

`A230980(n)+A037037(n+1)`
-/

namespace A100637.P11130488147240999367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A037037 (n + 1)

end

end A100637.P11130488147240999367

namespace A100637

/-- `A230980(n)+A037037(n+1)` -/
def P11130488147240999367.Spec : Prop :=
  ∀ n, P11130488147240999367.a n = A100637 n

end A100637

/-! ## A100637.P10988669492723545226

`A289493(n+1)+A099801(n)`
-/

namespace A100637.P10988669492723545226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (n + 1) + A099801 n

end

end A100637.P10988669492723545226

namespace A100637

/-- `A289493(n+1)+A099801(n)` -/
def P10988669492723545226.Spec : Prop :=
  ∀ n, P10988669492723545226.a n = A100637 n

end A100637

/-! ## A100637.P3267546876311667168

`A074990(n+1)+A000720(n+1)`
-/

namespace A100637.P3267546876311667168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (n + 1) + A000720 (n + 1)

end

end A100637.P3267546876311667168

namespace A100637

/-- `A074990(n+1)+A000720(n+1)` -/
def P3267546876311667168.Spec : Prop :=
  ∀ n, P3267546876311667168.a n = A100637 n

end A100637

/-! ## A100637.P4352223977801338354

`A099801(A026741(n+1)+A026741(n))`
-/

namespace A100637.P4352223977801338354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A026741 (n + 1) + A026741 n).toNat

end

end A100637.P4352223977801338354

namespace A100637

/-- `A099801(A026741(n+1)+A026741(n))` -/
def P4352223977801338354.Spec : Prop :=
  ∀ n, P4352223977801338354.a n = A100637 n

end A100637

/-! ## A100637.P6891211777937848999

`A099802(A294732(n+2)+1)`
-/

namespace A100637.P6891211777937848999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A294732 (n + 2) + 1).toNat

end

end A100637.P6891211777937848999

namespace A100637

/-- `A099802(A294732(n+2)+1)` -/
def P6891211777937848999.Spec : Prop :=
  ∀ n, P6891211777937848999.a n = A100637 n

end A100637

/-! ## A100637.P15198043471523057652

`A099802(A055562(n))`
-/

namespace A100637.P15198043471523057652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A055562 n).toNat

end

end A100637.P15198043471523057652

namespace A100637

/-- `A099802(A055562(n))` -/
def P15198043471523057652.Spec : Prop :=
  ∀ n, P15198043471523057652.a n = A100637 n

end A100637

/-! ## A100637.P12935665590803369079

`A099802(A007494(n+1))`
-/

namespace A100637.P12935665590803369079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A007494 (n + 1)).toNat

end

end A100637.P12935665590803369079

namespace A100637

/-- `A099802(A007494(n+1))` -/
def P12935665590803369079.Spec : Prop :=
  ∀ n, P12935665590803369079.a n = A100637 n

end A100637

/-! ## A100637.P3179126636900361843

`A099802(A294732(n+3))`
-/

namespace A100637.P3179126636900361843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A294732 (n + 3)).toNat

end

end A100637.P3179126636900361843

namespace A100637

/-- `A099802(A294732(n+3))` -/
def P3179126636900361843.Spec : Prop :=
  ∀ n, P3179126636900361843.a n = A100637 n

end A100637

/-! ## A100637.P4851879130454975979

`A099802(A080513(n+1)+n)`
-/

namespace A100637.P4851879130454975979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A080513 (n + 1) + (n : ℤ)).toNat

end

end A100637.P4851879130454975979

namespace A100637

/-- `A099802(A080513(n+1)+n)` -/
def P4851879130454975979.Spec : Prop :=
  ∀ n, P4851879130454975979.a n = A100637 n

end A100637

/-!
# A100638: Successive powers of the matrix A=[1,2;3,4] written by rows in groups of 4.

The programs for A100638, the canonical program `A100638.P14553309256473864981` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100638 has offset 1).

The definition of A100638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100638.P14553309256473864981

`5*a(n-4)+2*a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=7, a(5)=10, a(6)=15, a(7)=22`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100638

/-- `5*a(n-4)+2*a(n-8)` -/
def P14553309256473864981.Spec : Prop :=
  ∀ n, (P14553309256473864981.a n : ℤ) = A100638 (n + 1)

theorem P14553309256473864981.correct : P14553309256473864981.Spec := by
  intro n
  simp only [A100638, Nat.add_sub_cancel]

end A100638

/-! ## A100638.P15385218386425643265

`A111439(A087051(n)+A026733(n))`
-/

namespace A100638.P15385218386425643265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A087051 n + A026733 n).toNat

end

end A100638.P15385218386425643265

namespace A100638

/-- `A111439(A087051(n)+A026733(n))` -/
def P15385218386425643265.Spec : Prop :=
  ∀ n, P15385218386425643265.a n = A100638 (n + 1)

end A100638

/-! ## A100638.P10061954942601725598

`A257212(A173380(n)-A081276(n))`
-/

namespace A100638.P10061954942601725598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A173380 n - A081276 n).toNat

end

end A100638.P10061954942601725598

namespace A100638

/-- `A257212(A173380(n)-A081276(n))` -/
def P10061954942601725598.Spec : Prop :=
  ∀ n, P10061954942601725598.a n = A100638 (n + 1)

end A100638

/-! ## A100638.P4266338629626385406

`A001462(or(A164216(n), A241469(n+1)))`
-/

namespace A100638.P4266338629626385406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor (A164216 n) (A241469 (n + 1))).toNat

end

end A100638.P4266338629626385406

namespace A100638

/-- `A001462(or(A164216(n), A241469(n+1)))` -/
def P4266338629626385406.Spec : Prop :=
  ∀ n, P4266338629626385406.a n = A100638 (n + 1)

end A100638

/-! ## A100638.P10670417167761719329

`A238457(A116556(n+1))`
-/

namespace A100638.P10670417167761719329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238457 (A116556 (n + 1)).toNat

end

end A100638.P10670417167761719329

namespace A100638

/-- `A238457(A116556(n+1))` -/
def P10670417167761719329.Spec : Prop :=
  ∀ n, P10670417167761719329.a n = A100638 (n + 1)

end A100638

/-!
# A100639: Residues modulo 10 of the irregular primes (A000928).

The programs for A100639, there is no canonical definition to state claims against.
-/

/-! ## A100639.P5755096258121580334

`A010879(A000928(n+1))`
-/

namespace A100639.P5755096258121580334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000928 (n + 1)).toNat

end

end A100639.P5755096258121580334

/-! ## A100639.P2798684267873671033

`A007652(A105018(n+1))`
-/

namespace A100639.P2798684267873671033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (A105018 (n + 1)).toNat

end

end A100639.P2798684267873671033

/-! ## A100639.P15963671627811813503

`or(1, A000040(A105018(Δ[n²]-n)))%10`
-/

namespace A100639.P15963671627811813503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (A000040 (A105018 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat)) 10

end

end A100639.P15963671627811813503

/-! ## A100639.P11117395847873586795

`record[A090798(A328399(n))]%10`
-/

namespace A100639.P11117395847873586795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A100639.P11117395847873586795

/-! ## A100639.P9914335016639686989

`A010889(A000928(n+1)-1)`
-/

namespace A100639.P9914335016639686989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (A000928 (n + 1) - 1).toNat

end

end A100639.P9914335016639686989

/-! ## A100639.P5497599233296117945

`A014963(A000928(-xor(n, -1)))%10`
-/

namespace A100639.P5497599233296117945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A000928 (-Int.xor (n : ℤ) (-1)).toNat).toNat) 10

end

end A100639.P5497599233296117945

/-! ## A100639.P7406670111732739406

`A014963(A000928(Δ[n²]-n))%10`
-/

namespace A100639.P7406670111732739406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A000928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat) 10

end

end A100639.P7406670111732739406

/-! ## A100639.P15872975692673706216

`A033307(A261334(p?[A000928(n+1)]))`
-/

namespace A100639.P15872975692673706216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A261334 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A100639.P15872975692673706216

/-! ## A100639.P5481966410301471213

`A003893(2*A000928(n+1))`
-/

namespace A100639.P5481966410301471213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 (2 * A000928 (n + 1)).toNat

end

end A100639.P5481966410301471213

/-!
# A100642: Triangle read by rows: numerators of Cotesian numbers C(n,k) (0 <= k <= n) if the denominators are set to the lcm's of the rows (A002176).

The programs for A100642, there is no canonical definition to state claims against.
-/

/-! ## A100642.P2455633713262107923

`A100640(n)*A112104(A201981(n+1))`
-/

namespace A100642.P2455633713262107923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100640 n * A112104 (A201981 (n + 1)).toNat

end

end A100642.P2455633713262107923

/-!
# A100643: Numerator of Cotesian number C(n,1).

The programs for A100643, there is no canonical definition to state claims against.
-/

/-! ## A100643.P9047625420229031642

`A002178(n+1)/gcd(A002176(n+1), A002178(n+1))`
-/

namespace A100643.P9047625420229031642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002178 (n + 1) : ℚ) / (Int.gcd (A002176 (n + 1)) (A002178 (n + 1)) : ℚ)

end

end A100643.P9047625420229031642

/-! ## A100643.P18315840657294523400

`A100640(∑[n+1]+1)`
-/

namespace A100643.P18315840657294523400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100640 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100643.P18315840657294523400

/-! ## A100643.P17681406021779545771

`abs(A100640(A000124(n+1)))`
-/

namespace A100643.P17681406021779545771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100640 (A000124 (n + 1)).toNat|

end

end A100643.P17681406021779545771

/-! ## A100643.P18134443556066966417

`A100640(A000124(n+1))%A002176(n+1)`
-/

namespace A100643.P18134443556066966417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100640 (A000124 (n + 1)).toNat) (A002176 (n + 1))

end

end A100643.P18134443556066966417

/-! ## A100643.P868199165264693279

`abs(A100640(A034856(n+1)))`
-/

namespace A100643.P868199165264693279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100640 (A034856 (n + 1)).toNat|

end

end A100643.P868199165264693279

/-!
# A100644: Denominator of Cotesian number C(n,1).

The programs for A100644, there is no canonical definition to state claims against.
-/

/-! ## A100644.P17106135849923714625

`A100641(∑[n+1]+1)`
-/

namespace A100644.P17106135849923714625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100641 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100644.P17106135849923714625

/-! ## A100644.P7602992978561341263

`A002176(n+1)/A002178(n+1)*A100643(n+1)`
-/

namespace A100644.P7602992978561341263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002176 (n + 1) : ℚ) / (A002178 (n + 1) : ℚ) * (A100643 (n + 1) : ℚ)

end

end A100644.P7602992978561341263

/-! ## A100644.P13591852486855704663

`A093736(∑[n+1]+1)`
-/

namespace A100644.P13591852486855704663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100644.P13591852486855704663

/-! ## A100644.P2313617221881915783

`A093736(A134869(n+1))+A011740(n)`
-/

namespace A100644.P2313617221881915783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093736 (A134869 (n + 1)).toNat + A011740 n

end

end A100644.P2313617221881915783

/-!
# A100645: Numerator of Cotesian number C(n,2).

The programs for A100645, there is no canonical definition to state claims against.
-/

/-! ## A100645.P5143131314239553088

`A100646(n+2)/A002176(n+2)*A002179(n+3)`
-/

namespace A100645.P5143131314239553088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100646 (n + 2) : ℚ) / (A002176 (n + 2) : ℚ) * (A002179 (n + 3) : ℚ)

end

end A100645.P5143131314239553088

/-! ## A100645.P2719599261946454252

`A100640(A133263(n+2))`
-/

namespace A100645.P2719599261946454252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100640 (A133263 (n + 2)).toNat

end

end A100645.P2719599261946454252

/-! ## A100645.P13780363716874787253

`A100640(A167614(n+1)-1)`
-/

namespace A100645.P13780363716874787253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100640 (A167614 (n + 1) - 1).toNat

end

end A100645.P13780363716874787253

/-! ## A100645.P10365576792695305012

`A100640(∑[n+3])`
-/

namespace A100645.P10365576792695305012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100645.P10365576792695305012

/-! ## A100645.P9240477669376350378

`A100640(A055998(n+1))%A100624(2*n+3)`
-/

namespace A100645.P9240477669376350378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100640 (A055998 (n + 1)).toNat) (A100624 (2 * n + 3))

end

end A100645.P9240477669376350378

/-!
# A100646: Denominator of Cotesian number C(n,2).

The programs for A100646, there is no canonical definition to state claims against.
-/

/-! ## A100646.P11781576879021387815

`A100641(∑[n+3])`
-/

namespace A100646.P11781576879021387815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100641 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100646.P11781576879021387815

/-! ## A100646.P4839836999970396508

`A002176(n+2)*A100645(n+2)/A002179(n+3)`
-/

namespace A100646.P4839836999970396508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002176 (n + 2) * A100645 (n + 2) : ℚ) / (A002179 (n + 3) : ℚ)

end

end A100646.P4839836999970396508

/-!
# A100647: Numerator of Cotesian number C(n,3).

The programs for A100647, there is no canonical definition to state claims against.
-/

/-! ## A100647.P1684336461648549545

`A100640(A167614(n+2))`
-/

namespace A100647.P1684336461648549545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100640 (A167614 (n + 2)).toNat

end

end A100647.P1684336461648549545

/-! ## A100647.P16804074041606028905

`A100640(A055999(n)+9)`
-/

namespace A100647.P16804074041606028905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100640 (A055999 n + 9).toNat

end

end A100647.P16804074041606028905

/-! ## A100647.P275657547362220442

`A100640(∑[n+3]+n+3)`
-/

namespace A100647.P275657547362220442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100640 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A100647.P275657547362220442

/-! ## A100647.P15580003625209212907

`abs(A100640(A046691(n+2)))`
-/

namespace A100647.P15580003625209212907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100640 (A046691 (n + 2)).toNat|

end

end A100647.P15580003625209212907

/-! ## A100647.P1864696714313354942

`A000041(C(2, n+2))*A100640(A046691(n+2))`
-/

namespace A100647.P1864696714313354942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A100640 (A046691 (n + 2)).toNat

end

end A100647.P1864696714313354942

/-!
# A100648: Denominator of Cotesian number C(n,3).

The programs for A100648, there is no canonical definition to state claims against.
-/

/-! ## A100648.P5949611223157367827

`A100641(∑[n+4]+2)`
-/

namespace A100648.P5949611223157367827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100641 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A100648.P5949611223157367827

/-!
# A100649: a(n) is the numerator of 1 - Sum_{i=1..n} Bernoulli(i).

The programs for A100649, there is no canonical definition to state claims against.
-/

/-! ## A100649.P11697487679754397741

`A100650(n)+A100650(n)-A172194(n+1)`
-/

namespace A100649.P11697487679754397741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100650 n + (A100650 n - A172194 (n + 1))

end

end A100649.P11697487679754397741

/-!
# A100650: Denominator of 1 - Sum_{i=1..n} Bernoulli(i).

The programs for A100650, there is no canonical definition to state claims against.
-/

/-! ## A100650.P14735439122211510838

`A007947(A001902(n)*A266977(n))`
-/

namespace A100650.P14735439122211510838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001902 n * A266977 n).toNat

end

end A100650.P14735439122211510838

/-!
# A100652: Denominator of 1 - Sum_{i=1..n} |Bernoulli(i)|.

The programs for A100652, there is no canonical definition to state claims against.
-/

/-! ## A100652.P15233616795816490226

`A007947(A248772(n+1))/A340327(n+1)`
-/

namespace A100652.P15233616795816490226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (A248772 (n + 1)).toNat : ℚ) / (A340327 (n + 1) : ℚ)

end

end A100652.P15233616795816490226

/-! ## A100652.P5748438993569920322

`A056606(A080339(n+1)+A004892(n+1))`
-/

namespace A100652.P5748438993569920322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056606 (A080339 (n + 1) + A004892 (n + 1)).toNat

end

end A100652.P5748438993569920322

/-! ## A100652.P13177766919697671531

`A245676(a(n-2)²+1)` with `a(0)=1, a(1)=2`
-/

namespace A100652.P13177766919697671531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A245676 (a (n - 2) ^ 2 + 1).toNat

end

end A100652.P13177766919697671531

/-! ## A100652.P14035536927116227627

`A007913(∏[A027642(n)])`
-/

namespace A100652.P14035536927116227627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100652.P14035536927116227627

/-!
# A100656: a(n)=1 if a hexagonal number is a prime, otherwise 0.

The programs for A100656, there is no canonical definition to state claims against.
-/

/-! ## A100656.P9913100899173157131

`char[eq[1, ∏{e}[Δ[n^3], #+1]-1]]`
-/

namespace A100656.P9913100899173157131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f5 (n + 1) : ℤ) - (f5 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f4 n).natAbs, (Nat.factorization (f4 n).natAbs p + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A100656.P9913100899173157131

/-! ## A100656.P12478714609689532679

`A101264(∑[3*n])`
-/

namespace A100656.P12478714609689532679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100656.P12478714609689532679

/-! ## A100656.P17719802900469760229

`char[A111251(n+1)]`
-/

namespace A100656.P17719802900469760229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100656.P17719802900469760229

/-! ## A100656.P10835609124905688755

`A010051(Δ[n^3])`
-/

namespace A100656.P10835609124905688755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100656.P10835609124905688755

/-!
# A100657: Composite numbers whose prime factors all have the same digital root.

The programs for A100657, there is no canonical definition to state claims against.
-/

/-! ## A100657.P17068071400085186205

`A372280(n+1)-A322437(A005425(n))`
-/

namespace A100657.P17068071400085186205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372280 (n + 1) - A322437 (A005425 n).toNat

end

end A100657.P17068071400085186205

/-! ## A100657.P17045972652369767527

`A372280(n+1)-A083919(A051300(n+1))`
-/

namespace A100657.P17045972652369767527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372280 (n + 1) - A083919 (A051300 (n + 1)).toNat

end

end A100657.P17045972652369767527

/-! ## A100657.P1202901679932019171

`A372280(n+1)-A143078(A372299(n+1))`
-/

namespace A100657.P1202901679932019171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372280 (n + 1) - A143078 (A372299 (n + 1)).toNat

end

end A100657.P1202901679932019171

/-! ## A100657.P2427404127095449480

`A372280(n+1)+A121373(A069133(3*n+5))`
-/

namespace A100657.P2427404127095449480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372280 (n + 1) + A121373 (A069133 (3 * n + 5)).toNat

end

end A100657.P2427404127095449480

/-! ## A100657.P15920705775793430951

`A372280(n+1)-A133010(n²+4)`
-/

namespace A100657.P15920705775793430951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372280 (n + 1) - A133010 (n ^ 2 + 4)

end

end A100657.P15920705775793430951

/-!
# A100658: Composite numbers with at least 2 factors that have different digital roots.

The programs for A100658, there is no canonical definition to state claims against.
-/

/-! ## A100658.P7502680144921349966

`∩[A002808(n+1), comp[A100657(n+1)]]`
-/

namespace A100658.P7502680144921349966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100657 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A100658.P7502680144921349966

/-! ## A100658.P11943405516196996446

`∩[comp[A100657(n+1)], A018252(n+2)]`
-/

namespace A100658.P11943405516196996446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100657 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A100658.P11943405516196996446

/-! ## A100658.P1717338208528790624

`∩[comp[A100657(n+1)], A065090(n+3)]`
-/

namespace A100658.P1717338208528790624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100657 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A100658.P1717338208528790624

/-! ## A100658.P10692293619242533464

`∩[comp[A100657(n+1)], A141468(n+3)]`
-/

namespace A100658.P10692293619242533464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100657 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A100658.P10692293619242533464

/-! ## A100658.P11456911514400994235

`eq[char[∑[n]], A199970(n+1)]+1`
-/

namespace A100658.P11456911514400994235
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f4 j) n + 1

end

end A100658.P11456911514400994235

/-!
# A100659: Floor of measure (in degrees) of the internal angles of a regular polygon with n sides.

The programs for A100659, the canonical program `A100659.P13785962730430562396` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100659 has offset 3).

The definition of A100659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100659.P13785962730430562396

`floor((n+1)*180/(n+3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100659

/-- `floor((n+1)*180/(n+3))` -/
def P13785962730430562396.Spec : Prop :=
  ∀ n, P13785962730430562396.a n = A100659 (n + 3)

theorem P13785962730430562396.correct : P13785962730430562396.Spec := by
  intro n
  simp only [A100659, Nat.add_sub_cancel]

end A100659

/-!
# A100660: Composite numbers whose prime factors have different digital roots.

The programs for A100660, there is no canonical definition to state claims against.
-/

/-! ## A100660.P8257936956010225549

`record[∏{p}[A100658(n+1), #]]%A236242(3*n+4)`
-/

namespace A100660.P8257936956010225549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100658 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (A236242 (3 * n + 4))

end

end A100660.P8257936956010225549

/-! ## A100660.P17583991786627121277

`A344585(∑[A325509(A001318(n))])`
-/

namespace A100660.P17583991786627121277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 (A001318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100660.P17583991786627121277

/-! ## A100660.P12846276286537419812

`A120944(record[A329314(n)+A082375(n)])`
-/

namespace A100660.P12846276286537419812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 n + A082375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100660.P12846276286537419812

/-! ## A100660.P8182090757869662030

`A120944(A129487(n+1)%A334788(3*n+2))`
-/

namespace A100660.P8182090757869662030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (Int.tmod (A129487 (n + 1)) (A334788 (3 * n + 2))).toNat

end

end A100660.P8182090757869662030

/-! ## A100660.P9675467138611814907

`A120944(A080907(n+1)%A337666(3*n+4))`
-/

namespace A100660.P9675467138611814907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (Int.tmod (A080907 (n + 1)) (A337666 (3 * n + 4))).toNat

end

end A100660.P9675467138611814907

/-!
# A100661: Quet transform of A006519 (see A101387 for definition). Also, least k such that n+k has at most k ones in its binary representation.

The programs for A100661, the canonical program `A100661.P2879437187524638000` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100661 has offset 1).

The definition of A100661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100661.P3505972158073083402

`comp[a(floor(n/2))+n]-2*n` with `a(0)=-1`
-/

namespace A100661.P3505972158073083402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (2 * n : ℤ)

end

end A100661.P3505972158073083402

namespace A100661

/-- `comp[a(floor(n/2))+n]-2*n` -/
def P3505972158073083402.Spec : Prop :=
  ∀ n, P3505972158073083402.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P17802542750687906088

`comp[a(n-1)+val(n, 2)]-n-n` with `a(0)=-1`
-/

namespace A100661.P17802542750687906088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) - (n : ℤ)

end

end A100661.P17802542750687906088

namespace A100661

/-- `comp[a(n-1)+val(n, 2)]-n-n` -/
def P17802542750687906088.Spec : Prop :=
  ∀ n, P17802542750687906088.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P6674547010246593626

`comp[a(floor(n/2))+n]%(n+1)+1` with `a(0)=0`
-/

namespace A100661.P6674547010246593626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1) + 1

end

end A100661.P6674547010246593626

namespace A100661

/-- `comp[a(floor(n/2))+n]%(n+1)+1` -/
def P6674547010246593626.Spec : Prop :=
  ∀ n, (P6674547010246593626.a n : ℤ) = A100661 (n + 1)

end A100661

/-! ## A100661.P2879437187524638000

`A080468(n+2)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100661

/-- `A080468(n+2)+1` -/
def P2879437187524638000.Spec : Prop :=
  ∀ n, P2879437187524638000.a n = A100661 (n + 1)

theorem P2879437187524638000.correct : P2879437187524638000.Spec := by
  intro n
  simp only [A100661, Nat.add_sub_cancel]

end A100661

/-! ## A100661.P1615330775582173469

`∑{digits}[A169683(n+1), #]`
-/

namespace A100661.P1615330775582173469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A100661.P1615330775582173469

namespace A100661

/-- `∑{digits}[A169683(n+1), #]` -/
def P1615330775582173469.Spec : Prop :=
  ∀ n, (P1615330775582173469.a n : ℤ) = A100661 (n + 1)

end A100661

/-! ## A100661.P13533780693869291511

`∑[2*A079559(n)-1]`
-/

namespace A100661.P13533780693869291511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079559 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100661.P13533780693869291511

namespace A100661

/-- `∑[2*A079559(n)-1]` -/
def P13533780693869291511.Spec : Prop :=
  ∀ n, P13533780693869291511.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P10190702856167930217

`Δ[A029715(n)]-(n+1)`
-/

namespace A100661.P10190702856167930217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A100661.P10190702856167930217

namespace A100661

/-- `Δ[A029715(n)]-(n+1)` -/
def P10190702856167930217.Spec : Prop :=
  ∀ n, P10190702856167930217.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P8124397869420464295

`comp[A005187(n)]-Δ[n²]`
-/

namespace A100661.P8124397869420464295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A100661.P8124397869420464295

namespace A100661

/-- `comp[A005187(n)]-Δ[n²]` -/
def P8124397869420464295.Spec : Prop :=
  ∀ n, P8124397869420464295.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P10931324855972656059

`n+1-2*A234016(n)`
-/

namespace A100661.P10931324855972656059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A234016 n

end

end A100661.P10931324855972656059

namespace A100661

/-- `n+1-2*A234016(n)` -/
def P10931324855972656059.Spec : Prop :=
  ∀ n, P10931324855972656059.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P4177278369548950133

`A055938(n+1)-Δ[n²]`
-/

namespace A100661.P4177278369548950133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A100661.P4177278369548950133

namespace A100661

/-- `A055938(n+1)-Δ[n²]` -/
def P4177278369548950133.Spec : Prop :=
  ∀ n, P4177278369548950133.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P1070572019720128627

`∑[1-2*A308187(n+1)]`
-/

namespace A100661.P1070572019720128627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A308187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100661.P1070572019720128627

namespace A100661

/-- `∑[1-2*A308187(n+1)]` -/
def P1070572019720128627.Spec : Prop :=
  ∀ n, P1070572019720128627.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P10287572343390546231

`∑[1-log2(A308188(n+1)²)]`
-/

namespace A100661.P10287572343390546231
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.logb 2 (A308188 (n + 1) ^ 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100661.P10287572343390546231

namespace A100661

/-- `∑[1-log2(A308188(n+1)²)]` -/
def P10287572343390546231.Spec : Prop :=
  ∀ n, P10287572343390546231.a n = (A100661 (n + 1) : ℝ)

end A100661

/-! ## A100661.P3919037117589526777

`A045412(n+1)-2*(n+1)`
-/

namespace A100661.P3919037117589526777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045412 (n + 1) - (2 * (n + 1) : ℤ)

end

end A100661.P3919037117589526777

namespace A100661

/-- `A045412(n+1)-2*(n+1)` -/
def P3919037117589526777.Spec : Prop :=
  ∀ n, P3919037117589526777.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P14498776070212706404

`2*A046699(n+2)-(n+1)`
-/

namespace A100661.P14498776070212706404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046699 (n + 2) - (n + 1 : ℤ)

end

end A100661.P14498776070212706404

namespace A100661

/-- `2*A046699(n+2)-(n+1)` -/
def P14498776070212706404.Spec : Prop :=
  ∀ n, P14498776070212706404.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P17756377787482551178

`A063787(A123390(n+1))`
-/

namespace A100661.P17756377787482551178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A123390 (n + 1)).toNat

end

end A100661.P17756377787482551178

namespace A100661

/-- `A063787(A123390(n+1))` -/
def P17756377787482551178.Spec : Prop :=
  ∀ n, P17756377787482551178.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P11284549516137553787

`A000120(A339451(n))+1`
-/

namespace A100661.P11284549516137553787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A339451 n).toNat + 1

end

end A100661.P11284549516137553787

namespace A100661

/-- `A000120(A339451(n))+1` -/
def P11284549516137553787.Spec : Prop :=
  ∀ n, P11284549516137553787.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P13069488707772606849

`A257126(n+1)-A048881(n)`
-/

namespace A100661.P13069488707772606849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257126 (n + 1) - A048881 n

end

end A100661.P13069488707772606849

namespace A100661

/-- `A257126(n+1)-A048881(n)` -/
def P13069488707772606849.Spec : Prop :=
  ∀ n, P13069488707772606849.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P8922987511249204657

`A004273(A046699(n+2))-n`
-/

namespace A100661.P8922987511249204657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A046699 (n + 2)).toNat - (n : ℤ)

end

end A100661.P8922987511249204657

namespace A100661

/-- `A004273(A046699(n+2))-n` -/
def P8922987511249204657.Spec : Prop :=
  ∀ n, P8922987511249204657.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P6486048714755695195

`A046699(n+2)-A234016(n)`
-/

namespace A100661.P6486048714755695195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 2) - A234016 n

end

end A100661.P6486048714755695195

namespace A100661

/-- `A046699(n+2)-A234016(n)` -/
def P6486048714755695195.Spec : Prop :=
  ∀ n, P6486048714755695195.a n = A100661 (n + 1)

end A100661

/-! ## A100661.P6639665956703877916

`A000120(A123390(n+1)-1)+1`
-/

namespace A100661.P6639665956703877916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A123390 (n + 1) - 1).toNat + 1

end

end A100661.P6639665956703877916

namespace A100661

/-- `A000120(A123390(n+1)-1)+1` -/
def P6639665956703877916.Spec : Prop :=
  ∀ n, P6639665956703877916.a n = A100661 (n + 1)

end A100661

/-!
# A100662: Primes of the form k^3 + (k+1)^2.

The programs for A100662, there is no canonical definition to state claims against.
-/

/-! ## A100662.P12129589981418017413

`A100705(A127483(n+1))`
-/

namespace A100662.P12129589981418017413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 (A127483 (n + 1)).toNat

end

end A100662.P12129589981418017413

/-! ## A100662.P6478148688036110173

`∩[A066649(n+1), A100705(n)]`
-/

namespace A100662.P6478148688036110173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100662.P6478148688036110173

/-! ## A100662.P1469976475927948962

`p?[n^3+(n+1)²]`
-/

namespace A100662.P1469976475927948962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A100662.P1469976475927948962

/-! ## A100662.P17699338256278437845

`or(1, p?[(n+1)²+n*n²])`
-/

namespace A100662.P17699338256278437845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A100662.P17699338256278437845

/-! ## A100662.P5422375506182288824

`∏{p}[p?[(n+1)*(n²+1)+n], #]`
-/

namespace A100662.P5422375506182288824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n ^ 2 + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A100662.P5422375506182288824

/-!
# A100663: Composite q such that 4^q + q is prime.

The programs for A100663, there is no canonical definition to state claims against.
-/

/-! ## A100663.P2657724883975355271

`record[A057909(A057853(n))]`
-/

namespace A100663.P2657724883975355271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057909 (A057853 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100663.P2657724883975355271

/-! ## A100663.P9551846448378608038

`A057909(comp[Δ[A001006(n)]])`
-/

namespace A100663.P9551846448378608038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A100663.P9551846448378608038

/-! ## A100663.P15862138983502997724

`A057909(record[A057935(n+3)])`
-/

namespace A100663.P15862138983502997724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057935 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100663.P15862138983502997724

/-! ## A100663.P9219164430731809142

`A057909(A057904(n+1)+2)`
-/

namespace A100663.P9219164430731809142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057909 (A057904 (n + 1) + 2).toNat

end

end A100663.P9219164430731809142

/-!
# A100664: Number of inequivalent ways to dissect a square into n rectangles of equal perimeter.

The programs for A100664, there is no canonical definition to state claims against.
-/

/-! ## A100664.P5991846488654351332

`3*A213509(a(n-1))+n` with `a(0)=1`
-/

namespace A100664.P5991846488654351332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A213509 (a (n - 1)).toNat + (n : ℤ)

end

end A100664.P5991846488654351332

/-! ## A100664.P11711827450256320887

`char[3]+ceil(sqrt(A000010(2*n^n)))`
-/

namespace A100664.P11711827450256320887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈Real.sqrt (A000010 (2 * n ^ n) : ℝ)⌉

end

end A100664.P11711827450256320887

/-! ## A100664.P4834380921414995233

`A205720(A275557(n))-5`
-/

namespace A100664.P4834380921414995233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205720 (A275557 n).toNat - 5

end

end A100664.P4834380921414995233

/-!
# A100665: a(n) = round(sqrt(Fibonacci(n))).

The programs for A100665, the canonical program `A100665.P11688048755445767426` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100665 has offset 0).

The definition of A100665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100665.P11688048755445767426

`round(sqrt(A000045(n)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100665

/-- `round(sqrt(A000045(n)))` -/
def P11688048755445767426.Spec : Prop :=
  ∀ n, P11688048755445767426.a n = A100665 n

theorem P11688048755445767426.correct : P11688048755445767426.Spec := by
  intro n
  simp only [A100665]

end A100665

/-! ## A100665.P12687243411065060479

`round(sqrt(A212804(n+1)))`
-/

namespace A100665.P12687243411065060479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A212804 (n + 1) : ℝ))

end

end A100665.P12687243411065060479

namespace A100665

/-- `round(sqrt(A212804(n+1)))` -/
def P12687243411065060479.Spec : Prop :=
  ∀ n, P12687243411065060479.a n = A100665 n

end A100665

/-! ## A100665.P2821014059146757365

`round(sqrt(A103609(2*n)))`
-/

namespace A100665.P2821014059146757365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A103609 (2 * n) : ℝ))

end

end A100665.P2821014059146757365

namespace A100665

/-- `round(sqrt(A103609(2*n)))` -/
def P2821014059146757365.Spec : Prop :=
  ∀ n, P2821014059146757365.a n = A100665 n

end A100665

/-! ## A100665.P15875158149632117986

`round(sqrt(A129982(2*n+1)))`
-/

namespace A100665.P15875158149632117986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A129982 (2 * n + 1) : ℝ))

end

end A100665.P15875158149632117986

namespace A100665

/-- `round(sqrt(A129982(2*n+1)))` -/
def P15875158149632117986.Spec : Prop :=
  ∀ n, P15875158149632117986.a n = A100665 n

end A100665

/-! ## A100665.P12997501634280858938

`and(round(sqrt(A001611(n)-1)), -1)`
-/

namespace A100665.P12997501634280858938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.sqrt (A001611 n - 1 : ℝ))) (-1)

end

end A100665.P12997501634280858938

namespace A100665

/-- `and(round(sqrt(A001611(n)-1)), -1)` -/
def P12997501634280858938.Spec : Prop :=
  ∀ n, P12997501634280858938.a n = A100665 n

end A100665

/-! ## A100665.P12773424731120006460

`round(sqrt(A053602(2*n)))`
-/

namespace A100665.P12773424731120006460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A053602 (2 * n) : ℝ))

end

end A100665.P12773424731120006460

namespace A100665

/-- `round(sqrt(A053602(2*n)))` -/
def P12773424731120006460.Spec : Prop :=
  ∀ n, P12773424731120006460.a n = A100665 n

end A100665

/-! ## A100665.P9310293302025523390

`round(sqrt(A302126(2*n)))`
-/

namespace A100665.P9310293302025523390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A302126 (2 * n) : ℝ))

end

end A100665.P9310293302025523390

namespace A100665

/-- `round(sqrt(A302126(2*n)))` -/
def P9310293302025523390.Spec : Prop :=
  ∀ n, P9310293302025523390.a n = A100665 n

end A100665

/-! ## A100665.P16168682825396817768

`round(sqrt(round(ϕ^n/sqrt(5))))`
-/

namespace A100665.P16168682825396817768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℝ))

end

end A100665.P16168682825396817768

namespace A100665

/-- `round(sqrt(round(ϕ^n/sqrt(5))))` -/
def P16168682825396817768.Spec : Prop :=
  ∀ n, P16168682825396817768.a n = A100665 n

end A100665

/-! ## A100665.P2532531150961812315

`floor(ceil(sqrt(A022087(n)))/2)`
-/

namespace A100665.P2532531150961812315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈Real.sqrt (A022087 n : ℝ)⌉ : ℚ) / 2⌋

end

end A100665.P2532531150961812315

namespace A100665

/-- `floor(ceil(sqrt(A022087(n)))/2)` -/
def P2532531150961812315.Spec : Prop :=
  ∀ n, P2532531150961812315.a n = A100665 n

end A100665

/-! ## A100665.P12705573311269193213

`round(sqrt(A157725(n)-2))%(2^n)`
-/

namespace A100665.P12705573311269193213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A157725 n - 2 : ℝ))) (2 ^ n : ℤ)

end

end A100665.P12705573311269193213

namespace A100665

/-- `round(sqrt(A157725(n)-2))%(2^n)` -/
def P12705573311269193213.Spec : Prop :=
  ∀ n, P12705573311269193213.a n = A100665 n

end A100665

/-!
# A100666: a(n) = Sum_{k>=0} k^n/Catalan(k) rounded to nearest integer.

The programs for A100666, there is no canonical definition to state claims against.
-/

/-! ## A100666.P10563952583386185416

`A156562((n+1)*a(n-1))` with `a(0)=3, a(1)=3`
-/

namespace A100666.P10563952583386185416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  A156562 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A100666.P10563952583386185416

/-!
# A100669: Zeros of the Mertens function that are also prime.

The programs for A100669, there is no canonical definition to state claims against.
-/

/-! ## A100669.P11530146880340328035

`p?[A028442(n+1)]`
-/

namespace A100669.P11530146880340328035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100669.P11530146880340328035

/-! ## A100669.P4221826213016094316

`p?[A062982(n+1)]`
-/

namespace A100669.P4221826213016094316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100669.P4221826213016094316

/-! ## A100669.P4479283780307380811

`p?[A118684(n+1)+1]`
-/

namespace A100669.P4479283780307380811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118684 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100669.P4479283780307380811

/-! ## A100669.P13609497834647119686

`p?[A100306(n+1)-1]`
-/

namespace A100669.P13609497834647119686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100669.P13609497834647119686

/-! ## A100669.P6041606650645021331

`p?[(n+2)*A002321(n+1)]`
-/

namespace A100669.P6041606650645021331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100669.P6041606650645021331

/-!
# A100670: Number of two-card Baccarat hands of point n.

The programs for A100670, there is no canonical definition to state claims against.
-/

/-! ## A100670.P9948037784026633504

`a(n-2)` with `a(0)=210, a(1)=128, a(2)=132`
-/

namespace A100670.P9948037784026633504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [210, 128, 132] fun n a =>
  a (n - 2)

end

end A100670.P9948037784026633504

/-!
# A100671: A Graham-Pollak-like sequence with multiplier 3 instead of 2.

The programs for A100671, the canonical program `A100671.P15935101874776157340` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100671 has offset 0).

The definition of A100671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100671.P15935101874776157340

`floor(sqrt(3*a(n-1)*(a(n-1)+1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100671

/-- `floor(sqrt(3*a(n-1)*(a(n-1)+1)))` -/
def P15935101874776157340.Spec : Prop :=
  ∀ n, (P15935101874776157340.a n : ℤ) = A100671 n

theorem P15935101874776157340.correct : P15935101874776157340.Spec := by
  intro n
  simp only [A100671]

end A100671

/-! ## A100671.P14128970569578524972

`floor((a(n-1)+1/2)*sqrt(3))` with `a(0)=1`
-/

namespace A100671.P14128970569578524972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((a (n - 1) : ℚ) + (1 : ℚ) / 2 : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A100671.P14128970569578524972

namespace A100671

/-- `floor((a(n-1)+1/2)*sqrt(3))` -/
def P14128970569578524972.Spec : Prop :=
  ∀ n, P14128970569578524972.a n = A100671 n

end A100671

/-! ## A100671.P3179277557990901061

`floor(3/sqrt(3/(a(n-1)+a(n-1)²)))` with `a(0)=1`
-/

namespace A100671.P3179277557990901061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊3 / Real.sqrt (3 / (a (n - 1) + a (n - 1) ^ 2 : ℚ) : ℝ)⌋

end

end A100671.P3179277557990901061

namespace A100671

/-- `floor(3/sqrt(3/(a(n-1)+a(n-1)²)))` -/
def P3179277557990901061.Spec : Prop :=
  ∀ n, P3179277557990901061.a n = A100671 n

end A100671

/-! ## A100671.P496469439270387698

`floor(sqrt(3*(a(n-1)+a(n-1)²)))` with `a(0)=1`
-/

namespace A100671.P496469439270387698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.sqrt (3 * (a (n - 1) + a (n - 1) ^ 2))

end

end A100671.P496469439270387698

namespace A100671

/-- `floor(sqrt(3*(a(n-1)+a(n-1)²)))` -/
def P496469439270387698.Spec : Prop :=
  ∀ n, (P496469439270387698.a n : ℤ) = A100671 n

theorem P496469439270387698.correct : P496469439270387698.Spec := by
  intro n
  simp only [A100671, Nat.add_sub_cancel, A100671.P496469439270387698.a, A100671.P15935101874776157340.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100671

/-! ## A100671.P17046432406292064723

`ceil(sqrt(3*(a(n-1)+a(n-1)²)))-1` with `a(0)=1`
-/

namespace A100671.P17046432406292064723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (3 * (a (n - 1) + a (n - 1) ^ 2) : ℝ)⌉ - 1

end

end A100671.P17046432406292064723

namespace A100671

/-- `ceil(sqrt(3*(a(n-1)+a(n-1)²)))-1` -/
def P17046432406292064723.Spec : Prop :=
  ∀ n, P17046432406292064723.a n = A100671 n

end A100671

/-!
# A100672: a(1) = 1; thereafter, a(n) = 1 if n-th prime is 3 mod 4, 0 if n-th prime is 1 mod 4.

The programs for A100672, the canonical program `A100672.P7497242759628255371` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100672 has offset 1).

The definition of A100672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100672.P7268356350274947389

`A007546(n+1)%2`
-/

namespace A100672.P7268356350274947389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007546 (n + 1)) 2

end

end A100672.P7268356350274947389

namespace A100672

/-- `A007546(n+1)%2` -/
def P7268356350274947389.Spec : Prop :=
  ∀ n, P7268356350274947389.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P7497242759628255371

`A008837(n+1)%2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100672

/-- `A008837(n+1)%2` -/
def P7497242759628255371.Spec : Prop :=
  ∀ n, P7497242759628255371.a n = A100672 (n + 1)

theorem P7497242759628255371.correct : P7497242759628255371.Spec := by
  intro n
  simp only [A100672, Nat.add_sub_cancel]

end A100672

/-! ## A100672.P1976909712284410127

`A088146(n+1)%2`
-/

namespace A100672.P1976909712284410127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088146 (n + 1)) 2

end

end A100672.P1976909712284410127

namespace A100672

/-- `A088146(n+1)%2` -/
def P1976909712284410127.Spec : Prop :=
  ∀ n, P1976909712284410127.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P1850436224924220106

`A116579(n+1)%2`
-/

namespace A100672.P1850436224924220106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116579 (n + 1)) 2

end

end A100672.P1850436224924220106

namespace A100672

/-- `A116579(n+1)%2` -/
def P1850436224924220106.Spec : Prop :=
  ∀ n, P1850436224924220106.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P16974197301732678054

`A130290(n+1)%2`
-/

namespace A100672.P16974197301732678054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130290 (n + 1)) 2

end

end A100672.P16974197301732678054

namespace A100672

/-- `A130290(n+1)%2` -/
def P16974197301732678054.Spec : Prop :=
  ∀ n, P16974197301732678054.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P11476360206474834400

`A138417(n+1)%2`
-/

namespace A100672.P11476360206474834400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138417 (n + 1)) 2

end

end A100672.P11476360206474834400

namespace A100672

/-- `A138417(n+1)%2` -/
def P11476360206474834400.Spec : Prop :=
  ∀ n, P11476360206474834400.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P2050178765059292638

`A138440(n+1)%2`
-/

namespace A100672.P2050178765059292638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138440 (n + 1)) 2

end

end A100672.P2050178765059292638

namespace A100672

/-- `A138440(n+1)%2` -/
def P2050178765059292638.Spec : Prop :=
  ∀ n, P2050178765059292638.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P11811564003016181424

`A163366(n+1)%2`
-/

namespace A100672.P11811564003016181424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163366 (n + 1)) 2

end

end A100672.P11811564003016181424

namespace A100672

/-- `A163366(n+1)%2` -/
def P11811564003016181424.Spec : Prop :=
  ∀ n, P11811564003016181424.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P9208965331709715604

`A179545(n+1)%2`
-/

namespace A100672.P9208965331709715604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179545 (n + 1)) 2

end

end A100672.P9208965331709715604

namespace A100672

/-- `A179545(n+1)%2` -/
def P9208965331709715604.Spec : Prop :=
  ∀ n, P9208965331709715604.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P4241681725900057510

`A356093(n+1)%2`
-/

namespace A100672.P4241681725900057510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356093 (n + 1)) 2

end

end A100672.P4241681725900057510

namespace A100672

/-- `A356093(n+1)%2` -/
def P4241681725900057510.Spec : Prop :=
  ∀ n, P4241681725900057510.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P8080915833102643179

`7%A039702(n+1)`
-/

namespace A100672.P8080915833102643179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A039702 (n + 1))

end

end A100672.P8080915833102643179

namespace A100672

/-- `7%A039702(n+1)` -/
def P8080915833102643179.Spec : Prop :=
  ∀ n, P8080915833102643179.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P642279644565389941

`val(A072900(n+1), 4)`
-/

namespace A100672.P642279644565389941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072900 (n + 1)).toNat 4

end

end A100672.P642279644565389941

namespace A100672

/-- `val(A072900(n+1), 4)` -/
def P642279644565389941.Spec : Prop :=
  ∀ n, (P642279644565389941.a n : ℤ) = A100672 (n + 1)

end A100672

/-! ## A100672.P15719190702550089170

`C(2, A080089(n+1))`
-/

namespace A100672.P15719190702550089170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A080089 (n + 1)).toNat

end

end A100672.P15719190702550089170

namespace A100672

/-- `C(2, A080089(n+1))` -/
def P15719190702550089170.Spec : Prop :=
  ∀ n, (P15719190702550089170.a n : ℤ) = A100672 (n + 1)

end A100672

/-! ## A100672.P13177791789681162614

`and(1, A282038(n+1))`
-/

namespace A100672.P13177791789681162614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A282038 (n + 1))

end

end A100672.P13177791789681162614

namespace A100672

/-- `and(1, A282038(n+1))` -/
def P13177791789681162614.Spec : Prop :=
  ∀ n, P13177791789681162614.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P3532454678959805699

`1-char[A138970(n+1)]`
-/

namespace A100672.P3532454678959805699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A100672.P3532454678959805699

namespace A100672

/-- `1-char[A138970(n+1)]` -/
def P3532454678959805699.Spec : Prop :=
  ∀ n, P3532454678959805699.a n = A100672 (n + 1)

end A100672

/-! ## A100672.P10006791786582653315

`and(2, A000040(n+1))/2`
-/

namespace A100672.P10006791786582653315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A000040 (n + 1)) : ℚ) / 2

end

end A100672.P10006791786582653315

namespace A100672

/-- `and(2, A000040(n+1))/2` -/
def P10006791786582653315.Spec : Prop :=
  ∀ n, P10006791786582653315.a n = (A100672 (n + 1) : ℚ)

end A100672

/-! ## A100672.P11877499900008258665

`and(2, A037167(n+1))/2`
-/

namespace A100672.P11877499900008258665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A037167 (n + 1)) : ℚ) / 2

end

end A100672.P11877499900008258665

namespace A100672

/-- `and(2, A037167(n+1))/2` -/
def P11877499900008258665.Spec : Prop :=
  ∀ n, P11877499900008258665.a n = (A100672 (n + 1) : ℚ)

end A100672

/-! ## A100672.P5537072276161124504

`and(2, A039706(n+1))/2`
-/

namespace A100672.P5537072276161124504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A039706 (n + 1)) : ℚ) / 2

end

end A100672.P5537072276161124504

namespace A100672

/-- `and(2, A039706(n+1))/2` -/
def P5537072276161124504.Spec : Prop :=
  ∀ n, P5537072276161124504.a n = (A100672 (n + 1) : ℚ)

end A100672

/-! ## A100672.P2412250984943366638

`and(2, A039710(n+1))/2`
-/

namespace A100672.P2412250984943366638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A039710 (n + 1)) : ℚ) / 2

end

end A100672.P2412250984943366638

namespace A100672

/-- `and(2, A039710(n+1))/2` -/
def P2412250984943366638.Spec : Prop :=
  ∀ n, P2412250984943366638.a n = (A100672 (n + 1) : ℚ)

end A100672

/-! ## A100672.P8197625088386247984

`(1-A098033(n+1))^n`
-/

namespace A100672.P8197625088386247984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A098033 (n + 1)) ^ n

end

end A100672.P8197625088386247984

namespace A100672

/-- `(1-A098033(n+1))^n` -/
def P8197625088386247984.Spec : Prop :=
  ∀ n, P8197625088386247984.a n = A100672 (n + 1)

end A100672

/-!
# A100673: A Graham-Pollak-like sequence with cube root instead of square root.

The programs for A100673, the canonical program `A100673.P4493342107939623690` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100673 has offset 0).

The definition of A100673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100673.P4493342107939623690

`floor((2*a(n-1)*(a(n-1)+1)*(a(n-1)+2))^(1/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100673

/-- `floor((2*a(n-1)*(a(n-1)+1)*(a(n-1)+2))^(1/3))` -/
def P4493342107939623690.Spec : Prop :=
  ∀ n, P4493342107939623690.a n = A100673 n

theorem P4493342107939623690.correct : P4493342107939623690.Spec := by
  intro n
  simp only [A100673]

end A100673

/-! ## A100673.P3653541917072535913

`∑[A000194(Δ[round(10^(n/5))])]`
-/

namespace A100673.P3653541917072535913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100673.P3653541917072535913

namespace A100673

/-- `∑[A000194(Δ[round(10^(n/5))])]` -/
def P3653541917072535913.Spec : Prop :=
  ∀ n, P3653541917072535913.a n = A100673 n

end A100673

/-! ## A100673.P9188154821196366998

`∑[A008619(A067086(A017910(n)))]`
-/

namespace A100673.P9188154821196366998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A067086 (A017910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100673.P9188154821196366998

namespace A100673

/-- `∑[A008619(A067086(A017910(n)))]` -/
def P9188154821196366998.Spec : Prop :=
  ∀ n, P9188154821196366998.a n = A100673 n

end A100673

/-! ## A100673.P10606918165514640221

`∑[A000196(A025048(A249818(n+1)))]`
-/

namespace A100673.P10606918165514640221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A025048 (A249818 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100673.P10606918165514640221

namespace A100673

/-- `∑[A000196(A025048(A249818(n+1)))]` -/
def P10606918165514640221.Spec : Prop :=
  ∀ n, P10606918165514640221.a n = A100673 n

end A100673

/-! ## A100673.P6234906742218121729

`∑[A220104(A000288(n))]`
-/

namespace A100673.P6234906742218121729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (A000288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100673.P6234906742218121729

namespace A100673

/-- `∑[A220104(A000288(n))]` -/
def P6234906742218121729.Spec : Prop :=
  ∀ n, P6234906742218121729.a n = A100673 n

end A100673

/-!
# A100677: a(1) = 1; a(n) = sum{1<=k<=n/2, GCD(k,n)=1} a(k).

The programs for A100677, there is no canonical definition to state claims against.
-/

/-! ## A100677.P2785462019044383470

`A008619(A275314(A124441(n+1)))`
-/

namespace A100677.P2785462019044383470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A275314 (A124441 (n + 1)).toNat).toNat

end

end A100677.P2785462019044383470

/-! ## A100677.P7683604343209563937

`A300584(A187829(n+1))+A055642(n)`
-/

namespace A100677.P7683604343209563937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300584 (A187829 (n + 1)).toNat + A055642 n

end

end A100677.P7683604343209563937

/-! ## A100677.P16454499204339127785

`A300584(A187829(n+1))+A132272(n)`
-/

namespace A100677.P16454499204339127785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300584 (A187829 (n + 1)).toNat + A132272 n

end

end A100677.P16454499204339127785

/-! ## A100677.P7495794080664568432

`A238781(n+1)+A102679(A128041(n+3))`
-/

namespace A100677.P7495794080664568432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238781 (n + 1) + A102679 (A128041 (n + 3)).toNat

end

end A100677.P7495794080664568432

/-! ## A100677.P9488978725053331872

`floor(A000010(n+1)/root(A097217(3*n+4), n+1))+1`
-/

namespace A100677.P9488978725053331872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℝ) / (A097217 (3 * n + 4) : ℝ) ^ (1 / (n + 1 : ℝ))⌋ + 1

end

end A100677.P9488978725053331872

/-!
# A100678: Number of Egyptian fractions in the representation of n/(n+1) via the greedy algorithm.

The programs for A100678, there is no canonical definition to state claims against.
-/

/-! ## A100678.P5809647661407556239

`Δ[eq[2, A247765(n+1)]]`
-/

namespace A100678.P5809647661407556239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247765 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100678.P5809647661407556239

/-! ## A100678.P1755807248392830871

`Δ[record[A154955(2*(n+2))+1-A247765(n+1)+n]]`
-/

namespace A100678.P1755807248392830871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (2 * (n + 2)) + 1 - A247765 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100678.P1755807248392830871

/-! ## A100678.P2105226345169343477

`A050205(∑[n+1]+1)`
-/

namespace A100678.P2105226345169343477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100678.P2105226345169343477

/-! ## A100678.P6903681331285197205

`and(-9, A050205(eq[2, A002260(n+1)]))`
-/

namespace A100678.P6903681331285197205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-9) (A050205 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A100678.P6903681331285197205

/-! ## A100678.P944889305368431930

`dr(A050205(A000217(2*n+3)))`
-/

namespace A100678.P944889305368431930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A050205 (A000217 (2 * n + 3)).toNat)

end

end A100678.P944889305368431930

/-!
# A100679: Floor of cube root of tetrahedral numbers.

The programs for A100679, the canonical program `A100679.P12240568989944614560` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100679 has offset 0).

The definition of A100679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100679.P12240568989944614560

`floor(C(n+2, 3)^(1/3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100679

/-- `floor(C(n+2, 3)^(1/3))` -/
def P12240568989944614560.Spec : Prop :=
  ∀ n, P12240568989944614560.a n = A100679 n

theorem P12240568989944614560.correct : P12240568989944614560.Spec := by
  intro n
  simp only [A100679]

end A100679

/-! ## A100679.P2001819191230736231

`floor((n*(n+1)*(n+2)/6)^(1/3))`
-/

namespace A100679.P2001819191230736231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n * (n + 1) * (n + 2) : ℚ) / 6 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A100679.P2001819191230736231

namespace A100679

/-- `floor((n*(n+1)*(n+2)/6)^(1/3))` -/
def P2001819191230736231.Spec : Prop :=
  ∀ n, P2001819191230736231.a n = A100679 n

end A100679

/-! ## A100679.P5670669520825857895

`A121902(A008245(n+1))`
-/

namespace A100679.P5670669520825857895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A008245 (n + 1)).toNat

end

end A100679.P5670669520825857895

namespace A100679

/-- `A121902(A008245(n+1))` -/
def P5670669520825857895.Spec : Prop :=
  ∀ n, P5670669520825857895.a n = A100679 n

end A100679

/-! ## A100679.P16576880991875220230

`A195174(A133280(2*n)%A152021(n+1))`
-/

namespace A100679.P16576880991875220230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (Int.tmod (A133280 (2 * n)) (A152021 (n + 1))).toNat

end

end A100679.P16576880991875220230

namespace A100679

/-- `A195174(A133280(2*n)%A152021(n+1))` -/
def P16576880991875220230.Spec : Prop :=
  ∀ n, P16576880991875220230.a n = A100679 n

end A100679

/-! ## A100679.P17501860869785171379

`A195174(A133280(2*n))%A308834(n+2)`
-/

namespace A100679.P17501860869785171379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195174 (A133280 (2 * n)).toNat) (A308834 (n + 2))

end

end A100679.P17501860869785171379

namespace A100679

/-- `A195174(A133280(2*n))%A308834(n+2)` -/
def P17501860869785171379.Spec : Prop :=
  ∀ n, P17501860869785171379.a n = A100679 n

end A100679

/-!
# A100680: 

The programs for A100680, there is no canonical definition to state claims against.
-/

/-! ## A100680.P14778752099006149629

`2^n^n`
-/

namespace A100680.P14778752099006149629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n ^ n

end

end A100680.P14778752099006149629

/-!
# A100681: Inverse modulo 2 binomial transform of 10^n.

The programs for A100681, there is no canonical definition to state claims against.
-/

/-! ## A100681.P7027976067666665515

`∏{p}[A001317(n), A007088(#)-2]`
-/

namespace A100681.P7027976067666665515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A007088 p - 2)

end

end A100681.P7027976067666665515

/-! ## A100681.P2711823494976810553

`∏{p}[A004729(n), A007088(#)-2]`
-/

namespace A100681.P2711823494976810553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A007088 p - 2)

end

end A100681.P2711823494976810553

/-! ## A100681.P14937420684749357448

`A161147(A219751(n)+A103257(n))`
-/

namespace A100681.P14937420684749357448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161147 (A219751 n + A103257 n).toNat

end

end A100681.P14937420684749357448

/-!
# A100682: Floor of 4th root of pentatope numbers.

The programs for A100682, the canonical program `A100682.P9371819539211820881` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100682 has offset 0).

The definition of A100682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100682.P14046439325267926472

`floor(C(n+3, 4)^(1/4))`
-/

namespace A100682.P14046439325267926472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 4 : ℝ) ^ ((1 : ℚ) / 4 : ℝ)⌋

end

end A100682.P14046439325267926472

namespace A100682

/-- `floor(C(n+3, 4)^(1/4))` -/
def P14046439325267926472.Spec : Prop :=
  ∀ n, P14046439325267926472.a n = A100682 n

end A100682

/-! ## A100682.P9371819539211820881

`floor(A000332(n+3)^(1/4))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100682

/-- `floor(A000332(n+3)^(1/4))` -/
def P9371819539211820881.Spec : Prop :=
  ∀ n, P9371819539211820881.a n = A100682 n

theorem P9371819539211820881.correct : P9371819539211820881.Spec := by
  intro n
  simp only [A100682]

end A100682

/-! ## A100682.P15285518966073890958

`floor(sqrt(sqrt(∑[∑[∑[n]]])))`
-/

namespace A100682.P15285518966073890958
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌋

end

end A100682.P15285518966073890958

namespace A100682

/-- `floor(sqrt(sqrt(∑[∑[∑[n]]])))` -/
def P15285518966073890958.Spec : Prop :=
  ∀ n, P15285518966073890958.a n = A100682 n

end A100682

/-! ## A100682.P5387464516409013917

`A000196(floor(sqrt(C(n+3, 4))))`
-/

namespace A100682.P5387464516409013917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.sqrt (Nat.choose (n + 3) 4))

end

end A100682.P5387464516409013917

namespace A100682

/-- `A000196(floor(sqrt(C(n+3, 4))))` -/
def P5387464516409013917.Spec : Prop :=
  ∀ n, P5387464516409013917.a n = A100682 n

end A100682

/-! ## A100682.P3345651546169236467

`A000196(floor(sqrt(A000332(n+3))))`
-/

namespace A100682.P3345651546169236467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.sqrt (A000332 (n + 3))).toNat

end

end A100682.P3345651546169236467

namespace A100682

/-- `A000196(floor(sqrt(A000332(n+3))))` -/
def P3345651546169236467.Spec : Prop :=
  ∀ n, P3345651546169236467.a n = A100682 n

end A100682

/-! ## A100682.P14477099481458450567

`A343609(A276873(n+2))`
-/

namespace A100682.P14477099481458450567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A276873 (n + 2)).toNat

end

end A100682.P14477099481458450567

namespace A100682

/-- `A343609(A276873(n+2))` -/
def P14477099481458450567.Spec : Prop :=
  ∀ n, P14477099481458450567.a n = A100682 n

end A100682

/-! ## A100682.P10390785348085787158

`n-A057356(A038124(n+1))`
-/

namespace A100682.P10390785348085787158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057356 (A038124 (n + 1)).toNat

end

end A100682.P10390785348085787158

namespace A100682

/-- `n-A057356(A038124(n+1))` -/
def P10390785348085787158.Spec : Prop :=
  ∀ n, P10390785348085787158.a n = A100682 n

end A100682

/-!
# A100683: a(n) = a(n-1) + a(n-2) + a(n-3); a(0) = -1, a(1) = 2, a(2) = 2.

The programs for A100683, the canonical program `A100683.P2455971649858928017` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100683 has offset 0).

The definition of A100683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A100683.P2455971649858928017`, by `A100683.P2455971649858928017.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100683.P2455971649858928017

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=-1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100683

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P2455971649858928017.Spec : Prop :=
  ∀ n, P2455971649858928017.a n = A100683 n

theorem P2455971649858928017.correct : P2455971649858928017.Spec := by
  intro n
  simp only [A100683]

end A100683

/-! ## A100683.P16967199609378617706

`ogf((1-3x-x^2)/(-1+x+x^2+x^3))`
-/

namespace A100683.P16967199609378617706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, 1] [1, -1, -1, -1] n

end

end A100683.P16967199609378617706

namespace A100683

/-- `ogf((1-3x-x^2)/(-1+x+x^2+x^3))` -/
def P16967199609378617706.Spec : Prop :=
  ∀ n, P16967199609378617706.a n = A100683 n

end A100683

/-! ## A100683.P16994938977783615976

`2*a(n-1)-a(n-4)` with `a(0)=-1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A100683.P16994938977783615976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 2, 3] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A100683.P16994938977783615976

namespace A100683

/-- `2*a(n-1)-a(n-4)` -/
def P16994938977783615976.Spec : Prop :=
  ∀ n, P16994938977783615976.a n = A100683 n

end A100683

/-! ## A100683.P4596689265189483930

`a(n-1)-(a(n-4)-a(n-1))` with `a(0)=-1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A100683.P4596689265189483930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 2, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A100683.P4596689265189483930

namespace A100683

/-- `a(n-1)-(a(n-4)-a(n-1))` -/
def P4596689265189483930.Spec : Prop :=
  ∀ n, P4596689265189483930.a n = A100683 n

end A100683

/-! ## A100683.P18271989907172817973

`A000073(n)+Δ[A081172(n+1)]`
-/

namespace A100683.P18271989907172817973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (f1 (n + 1) - f1 n)

end

end A100683.P18271989907172817973

namespace A100683

/-- `A000073(n)+Δ[A081172(n+1)]` -/
def P18271989907172817973.Spec : Prop :=
  ∀ n, P18271989907172817973.a n = A100683 n

end A100683

/-! ## A100683.P7214033187575871275

`A081172(n+2)-A001590(n+1)`
-/

namespace A100683.P7214033187575871275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 2) - A001590 (n + 1)

end

end A100683.P7214033187575871275

namespace A100683

/-- `A081172(n+2)-A001590(n+1)` -/
def P7214033187575871275.Spec : Prop :=
  ∀ n, P7214033187575871275.a n = A100683 n

end A100683

/-! ## A100683.P13342727721533181715

`A000073(n+1)+Δ[A001590(n+1)]`
-/

namespace A100683.P13342727721533181715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (f1 (n + 1) - f1 n)

end

end A100683.P13342727721533181715

namespace A100683

/-- `A000073(n+1)+Δ[A001590(n+1)]` -/
def P13342727721533181715.Spec : Prop :=
  ∀ n, P13342727721533181715.a n = A100683 n

end A100683

/-! ## A100683.P9168403277523477926

`Δ[A001590(n+1)]+Δ[A192804(n+1)]`
-/

namespace A100683.P9168403277523477926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A100683.P9168403277523477926

namespace A100683

/-- `Δ[A001590(n+1)]+Δ[A192804(n+1)]` -/
def P9168403277523477926.Spec : Prop :=
  ∀ n, P9168403277523477926.a n = A100683 n

end A100683

/-! ## A100683.P7656926762546576106

`A020992(n)+A214899(n)-A141523(n)`
-/

namespace A100683.P7656926762546576106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + (A214899 n - A141523 n)

end

end A100683.P7656926762546576106

namespace A100683

/-- `A020992(n)+A214899(n)-A141523(n)` -/
def P7656926762546576106.Spec : Prop :=
  ∀ n, P7656926762546576106.a n = A100683 n

end A100683

/-! ## A100683.P1776099434038568302

`A000073(n+1)+A020992(n)-A081172(n)`
-/

namespace A100683.P1776099434038568302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A020992 n - A081172 n)

end

end A100683.P1776099434038568302

namespace A100683

/-- `A000073(n+1)+A020992(n)-A081172(n)` -/
def P1776099434038568302.Spec : Prop :=
  ∀ n, P1776099434038568302.a n = A100683 n

end A100683

/-! ## A100683.P17841479655431459764

`A000073(n+1)+A354784(n+1)-A000213(n)`
-/

namespace A100683.P17841479655431459764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A354784 (n + 1) - A000213 n)

end

end A100683.P17841479655431459764

namespace A100683

/-- `A000073(n+1)+A354784(n+1)-A000213(n)` -/
def P17841479655431459764.Spec : Prop :=
  ∀ n, P17841479655431459764.a n = A100683 n

end A100683

/-! ## A100683.P3925533609768266192

`A214825(n)-A141036(n)`
-/

namespace A100683.P3925533609768266192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n - A141036 n

end

end A100683.P3925533609768266192

namespace A100683

/-- `A214825(n)-A141036(n)` -/
def P3925533609768266192.Spec : Prop :=
  ∀ n, P3925533609768266192.a n = A100683 n

end A100683

/-! ## A100683.P12963146089651148546

`∑[A214899(n)]-A001644(n)`
-/

namespace A100683.P12963146089651148546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001644 n

end

end A100683.P12963146089651148546

namespace A100683

/-- `∑[A214899(n)]-A001644(n)` -/
def P12963146089651148546.Spec : Prop :=
  ∀ n, P12963146089651148546.a n = A100683 n

end A100683

/-! ## A100683.P4720109634748630454

`A007486(n+1)-A214899(n)`
-/

namespace A100683.P4720109634748630454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (n + 1) - A214899 n

end

end A100683.P4720109634748630454

namespace A100683

/-- `A007486(n+1)-A214899(n)` -/
def P4720109634748630454.Spec : Prop :=
  ∀ n, P4720109634748630454.a n = A100683 n

end A100683

/-! ## A100683.P7013734228642174226

`A081172(n+3)-A001644(n)`
-/

namespace A100683.P7013734228642174226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 3) - A001644 n

end

end A100683.P7013734228642174226

namespace A100683

/-- `A081172(n+3)-A001644(n)` -/
def P7013734228642174226.Spec : Prop :=
  ∀ n, P7013734228642174226.a n = A100683 n

end A100683

/-! ## A100683.P1900872004996784639

`A214826(n)-2*A000213(n)`
-/

namespace A100683.P1900872004996784639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n - 2 * A000213 n

end

end A100683.P1900872004996784639

namespace A100683

/-- `A214826(n)-2*A000213(n)` -/
def P1900872004996784639.Spec : Prop :=
  ∀ n, P1900872004996784639.a n = A100683 n

end A100683

/-! ## A100683.P3435861031666378591

`A214899(n+1)-A276658(n+1)`
-/

namespace A100683.P3435861031666378591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 (n + 1) - A276658 (n + 1)

end

end A100683.P3435861031666378591

namespace A100683

/-- `A214899(n+1)-A276658(n+1)` -/
def P3435861031666378591.Spec : Prop :=
  ∀ n, P3435861031666378591.a n = A100683 n

end A100683

/-! ## A100683.P7680036397551658420

`A000213(n+2)-A020992(n+1)`
-/

namespace A100683.P7680036397551658420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2) - A020992 (n + 1)

end

end A100683.P7680036397551658420

namespace A100683

/-- `A000213(n+2)-A020992(n+1)` -/
def P7680036397551658420.Spec : Prop :=
  ∀ n, P7680036397551658420.a n = A100683 n

end A100683

/-! ## A100683.P11072661486432459235

`A276658(n+2)-A000213(n+1)`
-/

namespace A100683.P11072661486432459235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 2) - A000213 (n + 1)

end

end A100683.P11072661486432459235

namespace A100683

/-- `A276658(n+2)-A000213(n+1)` -/
def P11072661486432459235.Spec : Prop :=
  ∀ n, P11072661486432459235.a n = A100683 n

end A100683

/-! ## A100683.P16993461103470497683

`Δ[A192804(n+1)+A001590(n+1)]`
-/

namespace A100683.P16993461103470497683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1) + A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100683.P16993461103470497683

namespace A100683

/-- `Δ[A192804(n+1)+A001590(n+1)]` -/
def P16993461103470497683.Spec : Prop :=
  ∀ n, P16993461103470497683.a n = A100683 n

end A100683

/-!
# A100684: Number of partitions of 2n free of multiples of 8 such that 4 occurs at most once. All odd parts occur with even multiplicities. There is no restriction on the other even parts.

The programs for A100684, there is no canonical definition to state claims against.
-/

/-! ## A100684.P6124818088010125018

`A118246(2*n+1)%A118213(n+1)`
-/

namespace A100684.P6124818088010125018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118246 (2 * n + 1)) (A118213 (n + 1))

end

end A100684.P6124818088010125018

/-! ## A100684.P17814954080741460999

`A118246(A005408(n))%p?[A015745(n)]`
-/

namespace A100684.P17814954080741460999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118246 (A005408 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A100684.P17814954080741460999

/-! ## A100684.P1572386121090803474

`A118246(A005408(n))*A247073(∑[n+1])`
-/

namespace A100684.P1572386121090803474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118246 (A005408 n).toNat * A247073 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100684.P1572386121090803474

/-! ## A100684.P13910858368575022888

`A118246(2*n+1)+A000038(A000045(n+1))`
-/

namespace A100684.P13910858368575022888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118246 (2 * n + 1) + A000038 (A000045 (n + 1)).toNat

end

end A100684.P13910858368575022888

/-!
# A100685: Powers of factorials A000142.

The programs for A100685, there is no canonical definition to state claims against.
-/

/-! ## A100685.P12081920018249150054

`record[(n+1)*A012245(A052410(n+1))]`
-/

namespace A100685.P12081920018249150054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A012245 (A052410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100685.P12081920018249150054

/-! ## A100685.P3009700181169785456

`record[and(A025487(n+1), A336733(2*n+1))]`
-/

namespace A100685.P3009700181169785456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025487 (n + 1)) (A336733 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100685.P3009700181169785456

/-! ## A100685.P4517055192518364724

`eq[A005361(A029635(n)), A093411(n)]`
-/

namespace A100685.P4517055192518364724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A029635 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100685.P4517055192518364724

/-! ## A100685.P11549326836887196254

`eq[A059268(A072233(n)), A093411(n)]`
-/

namespace A100685.P11549326836887196254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A072233 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100685.P11549326836887196254

/-! ## A100685.P1665996443505500671

`eq[A093411(n), A214268(A154097(n))]`
-/

namespace A100685.P1665996443505500671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214268 (A154097 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100685.P1665996443505500671

/-!
# A100686: a(1) = 1, a(2) = 2; thereafter a(2n+1) = |a(2n)^2-a(2n-1)^2|, a(2n+2) = 2*a(2n-1)*a(2n).

The programs for A100686, there is no canonical definition to state claims against.
-/

/-! ## A100686.P10635277350171816532

`∑[A002092(A006966(n))]`
-/

namespace A100686.P10635277350171816532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002092 (A006966 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100686.P10635277350171816532

/-! ## A100686.P2731963399627916852

`A007085(A185601(n+5))+∏{e}[n+1, #+1]`
-/

namespace A100686.P2731963399627916852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007085 (A185601 (n + 5)).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A100686.P2731963399627916852

/-! ## A100686.P18403579436376618974

`A330025(n)+A008621(A059731(n))`
-/

namespace A100686.P18403579436376618974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A008621 (A059731 n).toNat

end

end A100686.P18403579436376618974

/-!
# A100688: a(n) = prime(n) * 3^prime(n) - 1.

The programs for A100688, there is no canonical definition to state claims against.
-/

/-! ## A100688.P9406908150484277928

`A050914(p?[xor(1, n)+1])-2`
-/

namespace A100688.P9406908150484277928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050914 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 2

end

end A100688.P9406908150484277928

/-! ## A100688.P12127146161235510128

`A050914(p?[abs(xor(1, -n))])-2`
-/

namespace A100688.P12127146161235510128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050914 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A100688.P12127146161235510128

/-! ## A100688.P16468039940047898501

`3^record[A014963(n+2)]*p?[comp[n²]]-1`
-/

namespace A100688.P16468039940047898501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) - 1

end

end A100688.P16468039940047898501

/-! ## A100688.P15525350025661602086

`p?[n%3+n]*A000244(p?[n%3+n])-1`
-/

namespace A100688.P15525350025661602086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A000244 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) - 1

end

end A100688.P15525350025661602086

/-! ## A100688.P7175181073134787802

`A060352(A000040(n+1))`
-/

namespace A100688.P7175181073134787802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060352 (A000040 (n + 1)).toNat

end

end A100688.P7175181073134787802

/-!
# A100689: a(n) = prime(n) * 4^prime(n) - 1.

The programs for A100689, the canonical program `A100689.P5204241397294549211` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100689 has offset 1).

The definition of A100689 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100689.P5204241397294549211

`A060416(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100689

/-- `A060416(A000040(n+1))` -/
def P5204241397294549211.Spec : Prop :=
  ∀ n, P5204241397294549211.a n = A100689 (n + 1)

theorem P5204241397294549211.correct : P5204241397294549211.Spec := by
  intro n
  simp only [A100689, Nat.add_sub_cancel]

end A100689

/-! ## A100689.P4477612719331915644

`A060416(p?[comp[n²]])`
-/

namespace A100689.P4477612719331915644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060416 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A100689.P4477612719331915644

namespace A100689

/-- `A060416(p?[comp[n²]])` -/
def P4477612719331915644.Spec : Prop :=
  ∀ n, P4477612719331915644.a n = A100689 (n + 1)

end A100689

/-! ## A100689.P14272437969886734216

`A060416(record[A006530(n+2)])`
-/

namespace A100689.P14272437969886734216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100689.P14272437969886734216

namespace A100689

/-- `A060416(record[A006530(n+2)])` -/
def P14272437969886734216.Spec : Prop :=
  ∀ n, P14272437969886734216.a n = A100689 (n + 1)

end A100689

/-! ## A100689.P4169189521534917260

`A060416(record[A020639(n+2)])`
-/

namespace A100689.P4169189521534917260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100689.P4169189521534917260

namespace A100689

/-- `A060416(record[A020639(n+2)])` -/
def P4169189521534917260.Spec : Prop :=
  ∀ n, P4169189521534917260.a n = A100689 (n + 1)

end A100689

/-! ## A100689.P7947754787668594288

`A001787(A100484(n+1))-1`
-/

namespace A100689.P7947754787668594288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A100484 (n + 1)).toNat - 1

end

end A100689.P7947754787668594288

namespace A100689

/-- `A001787(A100484(n+1))-1` -/
def P7947754787668594288.Spec : Prop :=
  ∀ n, P7947754787668594288.a n = A100689 (n + 1)

end A100689

/-!
# A100690: a(n) = p * 5^p - 1 where p=prime(n).

The programs for A100690, the canonical program `A100690.P16361137644823079850` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100690 has offset 1).

The definition of A100690 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100690.P16361137644823079850

`A064751(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100690

/-- `A064751(A000040(n+1))` -/
def P16361137644823079850.Spec : Prop :=
  ∀ n, P16361137644823079850.a n = A100690 (n + 1)

theorem P16361137644823079850.correct : P16361137644823079850.Spec := by
  intro n
  simp only [A100690, Nat.add_sub_cancel]

end A100690

/-! ## A100690.P8390027961277465039

`A064751(p?[xor(1, n)+1])`
-/

namespace A100690.P8390027961277465039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064751 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A100690.P8390027961277465039

namespace A100690

/-- `A064751(p?[xor(1, n)+1])` -/
def P8390027961277465039.Spec : Prop :=
  ∀ n, P8390027961277465039.a n = A100690 (n + 1)

end A100690

/-! ## A100690.P5020633237244019717

`A064751(Δ[A007504(n)])`
-/

namespace A100690.P5020633237244019717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064751 (f1 (n + 1) - f1 n).toNat

end

end A100690.P5020633237244019717

namespace A100690

/-- `A064751(Δ[A007504(n)])` -/
def P5020633237244019717.Spec : Prop :=
  ∀ n, P5020633237244019717.a n = A100690 (n + 1)

end A100690

/-! ## A100690.P8003351321267721126

`A064751(eq[1, A003415(n)])`
-/

namespace A100690.P8003351321267721126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100690.P8003351321267721126

namespace A100690

/-- `A064751(eq[1, A003415(n)])` -/
def P8003351321267721126.Spec : Prop :=
  ∀ n, P8003351321267721126.a n = A100690 (n + 1)

end A100690

/-! ## A100690.P16242026199214390237

`A064751(record[A006530(n+2)])`
-/

namespace A100690.P16242026199214390237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064751 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100690.P16242026199214390237

namespace A100690

/-- `A064751(record[A006530(n+2)])` -/
def P16242026199214390237.Spec : Prop :=
  ∀ n, P16242026199214390237.a n = A100690 (n + 1)

end A100690

/-!
# A100691: Number of self-avoiding paths with n steps on a triangular lattice in the strip Z x {0,1}.

The programs for A100691, the canonical program `A100691.P8689663065140830740` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100691 has offset 0).

The definition of A100691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100691.P8689663065140830740

`2*a(n-1)+a(n-3)+6` with `a(0)=1, a(1)=4, a(2)=12, a(3)=30`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100691

/-- `2*a(n-1)+a(n-3)+6` -/
def P8689663065140830740.Spec : Prop :=
  ∀ n, (P8689663065140830740.a n : ℤ) = A100691 n

theorem P8689663065140830740.correct : P8689663065140830740.Spec := by
  intro n
  simp only [A100691]

end A100691

/-! ## A100691.P990138444637016910

`ogf((1+x+2x^2+x^3+x^4)/(1-3x+2x^2-x^3+x^4))`
-/

namespace A100691.P990138444637016910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 1, 1] [1, -3, 2, -1, 1] n

end

end A100691.P990138444637016910

namespace A100691

/-- `ogf((1+x+2x^2+x^3+x^4)/(1-3x+2x^2-x^3+x^4))` -/
def P990138444637016910.Spec : Prop :=
  ∀ n, P990138444637016910.a n = A100691 n

end A100691

/-! ## A100691.P4596443374561549867

`record[abs(2-A232230(n))]`
-/

namespace A100691.P4596443374561549867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A232230 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100691.P4596443374561549867

namespace A100691

/-- `record[abs(2-A232230(n))]` -/
def P4596443374561549867.Spec : Prop :=
  ∀ n, P4596443374561549867.a n = A100691 n

end A100691

/-! ## A100691.P14585734782059132550

`record[xor(1, A232230(n+1)-1)]`
-/

namespace A100691.P14585734782059132550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A232230 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100691.P14585734782059132550

namespace A100691

/-- `record[xor(1, A232230(n+1)-1)]` -/
def P14585734782059132550.Spec : Prop :=
  ∀ n, P14585734782059132550.a n = A100691 n

end A100691

/-! ## A100691.P17077949029561476465

`A193641(n+2)-(A057427(n)+2)`
-/

namespace A100691.P17077949029561476465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 2) - (A057427 n + 2)

end

end A100691.P17077949029561476465

namespace A100691

/-- `A193641(n+2)-(A057427(n)+2)` -/
def P17077949029561476465.Spec : Prop :=
  ∀ n, P17077949029561476465.a n = A100691 n

end A100691

/-! ## A100691.P10207962151418482543

`∑[A052910(n+1)]-A036453(n+1)`
-/

namespace A100691.P10207962151418482543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036453 (n + 1)

end

end A100691.P10207962151418482543

namespace A100691

/-- `∑[A052910(n+1)]-A036453(n+1)` -/
def P10207962151418482543.Spec : Prop :=
  ∀ n, P10207962151418482543.a n = A100691 n

end A100691

/-! ## A100691.P10478359875387870016

`A193641(n+2)-(A157928(n+1)+2)`
-/

namespace A100691.P10478359875387870016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 2) - (A157928 (n + 1) + 2)

end

end A100691.P10478359875387870016

namespace A100691

/-- `A193641(n+2)-(A157928(n+1)+2)` -/
def P10478359875387870016.Spec : Prop :=
  ∀ n, P10478359875387870016.a n = A100691 n

end A100691

/-! ## A100691.P7617728168803361614

`xor(1, A232230(2-A000038(n)+n)-1)`
-/

namespace A100691.P7617728168803361614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A232230 (2 - A000038 n + (n : ℤ)).toNat - 1)

end

end A100691.P7617728168803361614

namespace A100691

/-- `xor(1, A232230(2-A000038(n)+n)-1)` -/
def P7617728168803361614.Spec : Prop :=
  ∀ n, P7617728168803361614.a n = A100691 n

end A100691

/-! ## A100691.P18430148056408132328

`xor(1, A232230(2-(A000038(n)-n))-1)`
-/

namespace A100691.P18430148056408132328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A232230 (2 - (A000038 n - (n : ℤ))).toNat - 1)

end

end A100691.P18430148056408132328

namespace A100691

/-- `xor(1, A232230(2-(A000038(n)-n))-1)` -/
def P18430148056408132328.Spec : Prop :=
  ∀ n, P18430148056408132328.a n = A100691 n

end A100691

/-! ## A100691.P7768104582317250986

`A232230(n+2)-A020639(A008458(n))`
-/

namespace A100691.P7768104582317250986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232230 (n + 2) - A020639 (A008458 n).toNat

end

end A100691.P7768104582317250986

namespace A100691

/-- `A232230(n+2)-A020639(A008458(n))` -/
def P7768104582317250986.Spec : Prop :=
  ∀ n, P7768104582317250986.a n = A100691 n

end A100691

/-!
# A100692: Number of self-avoiding paths with n steps on a hexagonal lattice in the strip Z X {-1,0,1}.

The programs for A100692, the canonical program `A100692.P14390472903493360749` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100692 has offset 0).

The definition of A100692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100692.P14390472903493360749

`2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=4, a(4)=6, a(5)=10, a(6)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100692

/-- `2*a(n-4)` -/
def P14390472903493360749.Spec : Prop :=
  ∀ n, (P14390472903493360749.a n : ℤ) = A100692 n

theorem P14390472903493360749.correct : P14390472903493360749.Spec := by
  intro n
  simp only [A100692]

end A100692

/-! ## A100692.P815663373239333479

`A053644(n)+A000005(A176502(n+1))`
-/

namespace A100692.P815663373239333479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + A000005 (A176502 (n + 1)).toNat

end

end A100692.P815663373239333479

namespace A100692

/-- `A053644(n)+A000005(A176502(n+1))` -/
def P815663373239333479.Spec : Prop :=
  ∀ n, P815663373239333479.a n = A100692 n

end A100692

/-!
# A100694: Smallest prime equal to the sum of exactly 2n+1 distinct odd primes.

The programs for A100694, there is no canonical definition to state claims against.
-/

/-! ## A100694.P1796828227739568303

`or(1, A068873(Δ[n²]))`
-/

namespace A100694.P1796828227739568303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A068873 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A100694.P1796828227739568303

/-! ## A100694.P17648793354326597785

`A068873(2*n+1)+floor(1/(n+1))`
-/

namespace A100694.P17648793354326597785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068873 (2 * n + 1) + ⌊1 / (n + 1 : ℚ)⌋

end

end A100694.P17648793354326597785

/-! ## A100694.P366796304986043960

`A006530(3*A068873(Δ[n²]))`
-/

namespace A100694.P366796304986043960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * A068873 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A100694.P366796304986043960

/-! ## A100694.P799505829725063254

`A006530(lcm(3, A068873(Δ[n²])))`
-/

namespace A100694.P799505829725063254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 3 (A068873 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat))

end

end A100694.P799505829725063254

/-! ## A100694.P3809878111620487351

`A000027(or(1, A068873(2*n+1)))`
-/

namespace A100694.P3809878111620487351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor 1 (A068873 (2 * n + 1))).toNat

end

end A100694.P3809878111620487351

/-!
# A100695: Largest denominator used in the Egyptian fraction representation of n/(n + 1) by the greedy algorithm.

The programs for A100695, there is no canonical definition to state claims against.
-/

/-! ## A100695.P15384585451620441078

`A247765(∑[A100678(n+1)])`
-/

namespace A100695.P15384585451620441078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100695.P15384585451620441078

/-! ## A100695.P6374273528657065636

`A247765(eq[2, A247765(n+2)]+1)`
-/

namespace A100695.P6374273528657065636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247765 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A100695.P6374273528657065636

/-! ## A100695.P6639753380035217022

`A247765(record[2-A247765(n+2)+n]+1)`
-/

namespace A100695.P6639753380035217022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A247765 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247765 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A100695.P6639753380035217022

/-! ## A100695.P14207612208992615153

`A247765(∑[A050205(∑[n+1]+1)])`
-/

namespace A100695.P14207612208992615153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100695.P14207612208992615153

/-! ## A100695.P2303642237305387429

`A050210(∑[n+1]+1)`
-/

namespace A100695.P2303642237305387429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050210 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100695.P2303642237305387429

/-!
# A100697: Smallest prime equal to the sum of exactly 2n+1 distinct odd primes in at least n ways.

The programs for A100697, there is no canonical definition to state claims against.
-/

/-! ## A100697.P4602049181750649064

`A063905(lcm(A063914(2*(n+2)), A063916(2*n)))`
-/

namespace A100697.P4602049181750649064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (Int.lcm (A063914 (2 * (n + 2))) (A063916 (2 * n)))

end

end A100697.P4602049181750649064

/-! ## A100697.P520873769836202500

`A051697(A348800(2*n+1)+A322598(3*n+2)+1)`
-/

namespace A100697.P520873769836202500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A348800 (2 * n + 1) + A322598 (3 * n + 2) + 1).toNat

end

end A100697.P520873769836202500

/-!
# A100698: Primes of the form k^3 - k + 1.

The programs for A100698, there is no canonical definition to state claims against.
-/

/-! ## A100698.P11566842454354985043

`A061600(A236477(n+1))`
-/

namespace A100698.P11566842454354985043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 (A236477 (n + 1)).toNat

end

end A100698.P11566842454354985043

/-! ## A100698.P1047204971675241917

`∩[A061600(n+1), A293861(n+1)]`
-/

namespace A100698.P1047204971675241917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100698.P1047204971675241917

/-! ## A100698.P11392683325876664954

`∩[A126420(n+1)+2, A293861(n+1)]`
-/

namespace A100698.P11392683325876664954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126420 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100698.P11392683325876664954

/-! ## A100698.P18149694946675876418

`p?[Δ[∑[n]²]-n]`
-/

namespace A100698.P18149694946675876418
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100698.P18149694946675876418

/-! ## A100698.P9767548325275241873

`or(1, p?[(n+1)^3-n])`
-/

namespace A100698.P9767548325275241873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A100698.P9767548325275241873

/-!
# A100699: Number of ways to partition n into two squarefree numbers that are not prime.

The programs for A100699, there is no canonical definition to state claims against.
-/

/-! ## A100699.P3961358905637158820

`abs(A001057(A285796(n+1)))%A285785(n+1)`
-/

namespace A100699.P3961358905637158820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A001057 (A285796 (n + 1)).toNat| (A285785 (n + 1))

end

end A100699.P3961358905637158820

/-! ## A100699.P17078511547786407670

`A286935(A213431(3*(n+2))+A001222(3*n+2))`
-/

namespace A100699.P17078511547786407670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286935 (A213431 (3 * (n + 2)) + A001222 (3 * n + 2)).toNat

end

end A100699.P17078511547786407670

/-! ## A100699.P18006342036263057749

`A224447(A078382(n+2))`
-/

namespace A100699.P18006342036263057749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224447 (A078382 (n + 2)).toNat

end

end A100699.P18006342036263057749

/-! ## A100699.P12049089301242615425

`record[A193387(n+1)]%A107338(n)`
-/

namespace A100699.P12049089301242615425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A107338 n)

end

end A100699.P12049089301242615425

/-! ## A100699.P5300144791310733539

`A006161(A001611(n+1))%A107338(n)`
-/

namespace A100699.P5300144791310733539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006161 (A001611 (n + 1)).toNat) (A107338 n)

end

end A100699.P5300144791310733539

