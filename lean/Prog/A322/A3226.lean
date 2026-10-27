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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A322600: a(n) is the number of unlabeled rank-3 graded lattices with 5 coatoms and n atoms.

The programs for A322600, there is no canonical definition to state claims against.
-/

/-! ## A322600.P1122502363547459546

`A300260(Δ[A264443(n)])`
-/

namespace A322600.P1122502363547459546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300260 (f1 (n + 1) - f1 n).toNat

end

end A322600.P1122502363547459546

/-! ## A322600.P10005080838724887868

`A300260(A374005(n+1))`
-/

namespace A322600.P10005080838724887868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300260 (A374005 (n + 1)).toNat

end

end A322600.P10005080838724887868

/-! ## A322600.P4908789093793565434

`A300260(A046691(n+3))`
-/

namespace A322600.P4908789093793565434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300260 (A046691 (n + 3)).toNat

end

end A322600.P4908789093793565434

/-! ## A322600.P17087937096274605451

`A300260(A056115(n)+11)`
-/

namespace A322600.P17087937096274605451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300260 (A056115 n + 11).toNat

end

end A322600.P17087937096274605451

/-! ## A322600.P1333773083803025483

`A300260(A155212(n)+13)`
-/

namespace A322600.P1333773083803025483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300260 (A155212 n + 13).toNat

end

end A322600.P1333773083803025483

/-!
# A322605: Numbers k such that all k - u are Ulam numbers (A002858) where u is an Ulam number in the range k/2 <= u < k.

The programs for A322605, there is no canonical definition to state claims against.
-/

/-! ## A322605.P12579983405999538173

`∑[∏{p}[A077641(n+2)-n, #]]`
-/

namespace A322605.P12579983405999538173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077641 (n + 2) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322605.P12579983405999538173

/-! ## A322605.P18375074805146213274

`comp[lt[3, A335392(7*n+1)]]+2`
-/

namespace A322605.P18375074805146213274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335392 (7 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A322605.P18375074805146213274

/-! ## A322605.P2545197232336404138

`A096868(n+1)+A029134(n)`
-/

namespace A322605.P2545197232336404138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096868 (n + 1) + A029134 n

end

end A322605.P2545197232336404138

/-! ## A322605.P9926909542584399782

`A140823(∑[A052302(A055679(n+1))])`
-/

namespace A322605.P9926909542584399782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052302 (A055679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140823 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322605.P9926909542584399782

/-! ## A322605.P6099560656829188915

`lt[A236865(n+7), A259043(A131000(n))]`
-/

namespace A322605.P6099560656829188915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236865 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259043 (A131000 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322605.P6099560656829188915

/-!
# A322608: Values of k such that (product of squarefree numbers <= k) / (sum of squarefree numbers <= k) is an integer.

The programs for A322608, there is no canonical definition to state claims against.
-/

/-! ## A322608.P8580289279299155254

`A005117(A347690(n+1))`
-/

namespace A322608.P8580289279299155254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A347690 (n + 1)).toNat

end

end A322608.P8580289279299155254

/-! ## A322608.P745694688954572013

`A367801(A347690(n+1)%A348831(n+4))`
-/

namespace A322608.P745694688954572013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367801 (Int.tmod (A347690 (n + 1)) (A348831 (n + 4))).toNat

end

end A322608.P745694688954572013

/-!
# A322609: Numbers k such that s(k) = 2*k, where s(k) is the sum of divisors of k that have a square factor (A162296).

The programs for A322609, there is no canonical definition to state claims against.
-/

/-! ## A322609.P7864954944602248474

`A103517(eq[4*(n+1), A162296(2*(n+1))])`
-/

namespace A322609.P7864954944602248474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322609.P7864954944602248474

/-! ## A322609.P2942856384998302267

`∩[A319745(n+1), A335143(n+1)]`
-/

namespace A322609.P2942856384998302267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322609.P2942856384998302267

/-! ## A322609.P7165653077563810680

`∩[A329879(n+1), A335143(n+1)]`
-/

namespace A322609.P7165653077563810680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322609.P7165653077563810680

/-! ## A322609.P2988760761015328725

`∩[A335143(n+1), A344754(n+1)]`
-/

namespace A322609.P2988760761015328725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322609.P2988760761015328725

/-! ## A322609.P11616381175444055552

`eq[A004277(n), A162296(A028310(n))]`
-/

namespace A322609.P11616381175444055552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322609.P11616381175444055552

/-!
# A322611: Numbers that are sums (of a nonempty sequence) of consecutive centered square numbers.

The programs for A322611, there is no canonical definition to state claims against.
-/

/-! ## A322611.P11293454958574056390

`A382019(A152043(n+2))`
-/

namespace A322611.P11293454958574056390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A152043 (n + 2)).toNat

end

end A322611.P11293454958574056390

/-!
# A322612: Expansion of e.g.f. Product_{k>=1} 1/(1 + log(1 - x)*x^k).

The programs for A322612, there is no canonical definition to state claims against.
-/

/-! ## A322612.P6053564666044899254

`A117910(A229003(n))-n`
-/

namespace A322612.P6053564666044899254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A229003 n).toNat - (n : ℤ)

end

end A322612.P6053564666044899254

/-! ## A322612.P15480682251964861473

`A247911(A354458(n))-gcd(n, ∑[n])`
-/

namespace A322612.P15480682251964861473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A354458 n).toNat - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A322612.P15480682251964861473

/-!
# A322613: Expansion of e.g.f. Product_{k>=1} (1 - log(1 - x)*x^k).

The programs for A322613, there is no canonical definition to state claims against.
-/

/-! ## A322613.P8750825639352282422

`A194523(A193367(n+1))`
-/

namespace A322613.P8750825639352282422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (A193367 (n + 1)).toNat

end

end A322613.P8750825639352282422

/-! ## A322613.P7145475412844072368

`A075232(n+1)%(A317075(n)+1)`
-/

namespace A322613.P7145475412844072368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075232 (n + 1)) (A317075 n + 1)

end

end A322613.P7145475412844072368

/-!
# A322614: Smallest k such that A305445(k) = n, i.e., smallest k > 1 such that the minimum number of bit inversions required to convert k into a prime equals n.

The programs for A322614, there is no canonical definition to state claims against.
-/

/-! ## A322614.P12957104549367376807

`lcm(A000975(A375799(n)), A080476(n+2))`
-/

namespace A322614.P12957104549367376807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000975 (A375799 n).toNat) (A080476 (n + 2))

end

end A322614.P12957104549367376807

/-!
# A322615: Nearest integer to 4*Pi*n^2.

The programs for A322615, the canonical program `A322615.P14760492869766082080` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322615 has offset 0).

The definition of A322615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322615.P14760492869766082080

`round(4*π*n²)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322615

/-- `round(4*π*n²)` -/
def P14760492869766082080.Spec : Prop :=
  ∀ n, P14760492869766082080.a n = A322615 n

theorem P14760492869766082080.correct : P14760492869766082080.Spec := by
  intro n
  simp only [A322615]

end A322615

/-! ## A322615.P13569268280025052558

`ceil(atan((4*n)²)*8*n²)`
-/

namespace A322615.P13569268280025052558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((4 * n) ^ 2 : ℝ) * (8 * n ^ 2 : ℝ)⌉

end

end A322615.P13569268280025052558

namespace A322615

/-- `ceil(atan((4*n)²)*8*n²)` -/
def P13569268280025052558.Spec : Prop :=
  ∀ n, P13569268280025052558.a n = A322615 n

end A322615

/-! ## A322615.P4279434488154321900

`A075726(2*n)`
-/

namespace A322615.P4279434488154321900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075726 (2 * n)

end

end A322615.P4279434488154321900

namespace A322615

/-- `A075726(2*n)` -/
def P4279434488154321900.Spec : Prop :=
  ∀ n, P4279434488154321900.a n = A322615 n

theorem P4279434488154321900.correct : P4279434488154321900.Spec := by
  intro n
  simp only [A322615, Nat.add_sub_cancel, A322615.P4279434488154321900.a, A322615.P14760492869766082080.a, A075726, A075726.P17851996568599737352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322615

/-! ## A322615.P3215757639001528304

`2-4/2+A075726(n+n)`
-/

namespace A322615.P3215757639001528304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (A075726 (n + n) : ℚ)

end

end A322615.P3215757639001528304

namespace A322615

/-- `2-4/2+A075726(n+n)` -/
def P3215757639001528304.Spec : Prop :=
  ∀ n, P3215757639001528304.a n = (A322615 n : ℚ)

theorem P3215757639001528304.correct : P3215757639001528304.Spec := by
  intro n
  simp only [A322615, Nat.add_sub_cancel, A322615.P3215757639001528304.a, A322615.P14760492869766082080.a, A075726, A075726.P17851996568599737352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322615

/-! ## A322615.P16349147093809004502

`record[A000035(n)*A033551(2*(n+1))]`
-/

namespace A322615.P16349147093809004502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A033551 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322615.P16349147093809004502

namespace A322615

/-- `record[A000035(n)*A033551(2*(n+1))]` -/
def P16349147093809004502.Spec : Prop :=
  ∀ n, P16349147093809004502.a n = A322615 n

end A322615

/-! ## A322615.P10083091179960568054

`record[A033551(2*(n+1))*A088705(n)]`
-/

namespace A322615.P10083091179960568054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033551 (2 * (n + 1)) * A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322615.P10083091179960568054

namespace A322615

/-- `record[A033551(2*(n+1))*A088705(n)]` -/
def P10083091179960568054.Spec : Prop :=
  ∀ n, P10083091179960568054.a n = A322615 n

end A322615

/-! ## A322615.P10288988107714403656

`A075726(n+n)%A058943(A047522(n+1))`
-/

namespace A322615.P10288988107714403656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075726 (n + n)) (A058943 (A047522 (n + 1)).toNat)

end

end A322615.P10288988107714403656

namespace A322615

/-- `A075726(n+n)%A058943(A047522(n+1))` -/
def P10288988107714403656.Spec : Prop :=
  ∀ n, P10288988107714403656.a n = A322615 n

end A322615

/-! ## A322615.P722876973113817607

`A075726(n+n)+A010052(A000040(n+1))`
-/

namespace A322615.P722876973113817607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075726 (n + n) + A010052 (A000040 (n + 1)).toNat

end

end A322615.P722876973113817607

namespace A322615

/-- `A075726(n+n)+A010052(A000040(n+1))` -/
def P722876973113817607.Spec : Prop :=
  ∀ n, P722876973113817607.a n = A322615 n

end A322615

/-! ## A322615.P15504356785111696039

`A075727(A058331(n))`
-/

namespace A322615.P15504356785111696039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075727 (A058331 n).toNat

end

end A322615.P15504356785111696039

namespace A322615

/-- `A075727(A058331(n))` -/
def P15504356785111696039.Spec : Prop :=
  ∀ n, P15504356785111696039.a n = A322615 n

end A322615

/-! ## A322615.P13635838025947779933

`∩[A075727(n+1), A075726(n)]`
-/

namespace A322615.P13635838025947779933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075726 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322615.P13635838025947779933

namespace A322615

/-- `∩[A075727(n+1), A075726(n)]` -/
def P13635838025947779933.Spec : Prop :=
  ∀ n, (P13635838025947779933.a n : ℤ) = A322615 n

end A322615

/-!
# A322616: Self-convolution square root of A322197.

The programs for A322616, there is no canonical definition to state claims against.
-/

/-! ## A322616.P17573367378098216486

`A000111(n)-A081162(A000930(n))`
-/

namespace A322616.P17573367378098216486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n - A081162 (A000930 n).toNat

end

end A322616.P17573367378098216486

/-! ## A322616.P16169027134764822848

`A113520(A000111(n))+1`
-/

namespace A322616.P16169027134764822848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A000111 n).toNat + 1

end

end A322616.P16169027134764822848

/-! ## A322616.P10592172490223830288

`A255350(∑[A124575(∑[n])])`
-/

namespace A322616.P10592172490223830288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124575 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322616.P10592172490223830288

/-! ## A322616.P14958900149229858036

`A000111(n)-A184955(2*n+1)`
-/

namespace A322616.P14958900149229858036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n - A184955 (2 * n + 1)

end

end A322616.P14958900149229858036

/-!
# A322617: Number of solutions to |dft(a)^2 + dft(d)^2| + |dft(b)^2 + dft(c)^2| = 4n, where a,b,c,d are +1,-1 sequences of length n and dft(x) denotes the discrete Fourier transform of x.

The programs for A322617, there is no canonical definition to state claims against.
-/

/-! ## A322617.P4802697651135691835

`A098003(A168267(3*(n+1))*A179460(2*(n+1)))`
-/

namespace A322617.P4802697651135691835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098003 (A168267 (3 * (n + 1)) * A179460 (2 * (n + 1))).toNat

end

end A322617.P4802697651135691835

/-!
# A322620: E.g.f.: A(x,y) = (cosh(x)*cosh(y) + sinh(x) + sinh(y)) / (1 - sinh(x)*sinh(y)), where A(x,y) = Sum_{n>=0} Sum_{k>=0} T(n,k) * x^n*y^k/(n+k)!, as a square table of coefficients T(n,k) read by antidiagonals.

The programs for A322620, there is no canonical definition to state claims against.
-/

/-! ## A322620.P518842477153419993

`A007318(n)*A322190(n)`
-/

namespace A322620.P518842477153419993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A322190 n

end

end A322620.P518842477153419993

/-! ## A322620.P889572981316818321

`abs(A130595(n)*A322190(n))`
-/

namespace A322620.P889572981316818321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A322190 n|

end

end A322620.P889572981316818321

/-! ## A322620.P10716070961723959456

`sqrt(A008459(n))*A322190(n)`
-/

namespace A322620.P10716070961723959456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A322190 n : ℝ)

end

end A322620.P10716070961723959456

/-! ## A322620.P1940780171612126157

`Δ[A102363(n)]*A322190(n)`
-/

namespace A322620.P1940780171612126157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A322190 n

end

end A322620.P1940780171612126157

/-! ## A322620.P9074902161151517396

`A028326(n)/2*A322190(n)`
-/

namespace A322620.P9074902161151517396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A322190 n : ℚ)

end

end A322620.P9074902161151517396

/-! ## A322620.P9666920860727942885

`A097805(A014132(n+1))*A322190(n)`
-/

namespace A322620.P9666920860727942885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A014132 (n + 1)).toNat * A322190 n

end

end A322620.P9666920860727942885

/-! ## A322620.P10100237957352335105

`A025480(A028326(n))*A322190(n)`
-/

namespace A322620.P10100237957352335105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A028326 n).toNat * A322190 n

end

end A322620.P10100237957352335105

/-! ## A322620.P14951421732518288383

`A110654(A124927(n))*A322190(n)`
-/

namespace A322620.P14951421732518288383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A124927 n).toNat * A322190 n

end

end A322620.P14951421732518288383

/-!
# A322621: E.g.f.: C(x,y) = cosh(x)*cosh(y) / (1 - sinh(x)*sinh(y)), where C(x,y) = Sum_{n>=0} Sum_{k=0..2*n} T(n,k) * x^(2*n-k)*y^k/(2*n)!, as a triangle of coefficients T(n,k) read by rows.

The programs for A322621, there is no canonical definition to state claims against.
-/

/-! ## A322621.P12595207987285101195

`A034870(n)*A322193(n)`
-/

namespace A322621.P12595207987285101195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 n * A322193 n

end

end A322621.P12595207987285101195

/-! ## A322621.P1961147874082636710

`A007318(A161983(n))*A322193(n)`
-/

namespace A322621.P1961147874082636710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A161983 n).toNat * A322193 n

end

end A322621.P1961147874082636710

/-! ## A322621.P13854557975885325033

`A322620(A161983(n))`
-/

namespace A322621.P13854557975885325033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (A161983 n).toNat

end

end A322621.P13854557975885325033

/-! ## A322621.P16276625366381233672

`A322620(A007606(n+1)-1)`
-/

namespace A322621.P16276625366381233672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (A007606 (n + 1) - 1).toNat

end

end A322621.P16276625366381233672

/-! ## A322621.P11513424638207608572

`A322620(eq[1, A057211(n+1)])`
-/

namespace A322621.P11513424638207608572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322621.P11513424638207608572

/-! ## A322621.P7474935390980067762

`A322620(A316670(n+1))`
-/

namespace A322621.P7474935390980067762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (A316670 (n + 1)).toNat

end

end A322621.P7474935390980067762

/-! ## A322621.P9630855739012691137

`A322620(A316965(n)+1)`
-/

namespace A322621.P9630855739012691137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (A316965 n + 1).toNat

end

end A322621.P9630855739012691137

/-!
# A322622: E.g.f.: S(x,y) = (sinh(x) + sinh(y)) / (1 - sinh(x)*sinh(y)), where S(x,y) = Sum_{n>=0} Sum_{k=0..2*n+1} T(n,k) * x^(2*n+1-k)*y^k/(2*n+1)!, as a triangle of coefficients T(n,k) read by rows.

The programs for A322622, there is no canonical definition to state claims against.
-/

/-! ## A322622.P2861950841460667407

`A034871(n)*A322194(n+1)`
-/

namespace A322622.P2861950841460667407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034871 n * A322194 (n + 1)

end

end A322622.P2861950841460667407

/-! ## A322622.P1480942570636950996

`A007318(A162917(n+1))*A322194(n+1)`
-/

namespace A322622.P1480942570636950996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A162917 (n + 1)).toNat * A322194 (n + 1)

end

end A322622.P1480942570636950996

/-! ## A322622.P6046390912974961322

`A322620(A053187(n)+n)`
-/

namespace A322622.P6046390912974961322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (A053187 n + (n : ℤ)).toNat

end

end A322622.P6046390912974961322

/-! ## A322622.P7295672817545738033

`A322620(A000194(n)²+n)`
-/

namespace A322622.P7295672817545738033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (A000194 n ^ 2 + (n : ℤ)).toNat

end

end A322622.P7295672817545738033

/-! ## A322622.P9161163361058303609

`A322620(A162917(n+1))`
-/

namespace A322622.P9161163361058303609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (A162917 (n + 1)).toNat

end

end A322622.P9161163361058303609

/-! ## A322622.P13872012862933472879

`A322620(eq[0, A057211(n+1)])`
-/

namespace A322622.P13872012862933472879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322622.P13872012862933472879

/-! ## A322622.P1356226547225161328

`A322620(eq[A007318(n), A155997(n)])`
-/

namespace A322622.P1356226547225161328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322622.P1356226547225161328

/-! ## A322622.P5634602552482214958

`A322620(eq[A007318(n), A155998(n)])`
-/

namespace A322622.P5634602552482214958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322622.P5634602552482214958

/-! ## A322622.P4048287231185677875

`A322620(eq[A155997(n), A155998(n)])`
-/

namespace A322622.P4048287231185677875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322622.P4048287231185677875

/-!
# A322623: E.g.f.: (1 + sinh(x)) / (1 - sinh(x)).

The programs for A322623, there is no canonical definition to state claims against.
-/

/-! ## A322623.P10880304822274815895

`A006154(n)*A059268(A000124(n))`
-/

namespace A322623.P10880304822274815895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006154 n * A059268 (A000124 n).toNat

end

end A322623.P10880304822274815895

/-! ## A322623.P2618524677918812458

`A006154(n)*A020639(A103517(n))`
-/

namespace A322623.P2618524677918812458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006154 n * A020639 (A103517 n).toNat

end

end A322623.P2618524677918812458

/-! ## A322623.P10660795065841047743

`A000005(A006530(n+1))*A006154(n)`
-/

namespace A322623.P10660795065841047743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006530 (n + 1)).toNat * A006154 n

end

end A322623.P10660795065841047743

/-! ## A322623.P3133674634451352433

`A000005(A008578(n+1))*A006154(n)`
-/

namespace A322623.P3133674634451352433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A006154 n

end

end A322623.P3133674634451352433

/-! ## A322623.P3519089487733380684

`A020639(A006093(n+1))*A006154(n)`
-/

namespace A322623.P3519089487733380684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (n + 1)).toNat * A006154 n

end

end A322623.P3519089487733380684

/-! ## A322623.P18315211201751872455

`A020639(A025487(n+1))*A006154(n)`
-/

namespace A322623.P18315211201751872455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025487 (n + 1)).toNat * A006154 n

end

end A322623.P18315211201751872455

/-! ## A322623.P4777259878354220722

`A046523(A020639(n+1))*A006154(n)`
-/

namespace A322623.P4777259878354220722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A020639 (n + 1)).toNat * A006154 n

end

end A322623.P4777259878354220722

/-! ## A322623.P2118211696384544221

`A020639(A053196(n+1))*A006154(n)`
-/

namespace A322623.P2118211696384544221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053196 (n + 1)).toNat * A006154 n

end

end A322623.P2118211696384544221

/-! ## A322623.P8599365965513407920

`A006154(n)/A011782(n)*∑[A011782(n)]`
-/

namespace A322623.P8599365965513407920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006154 n : ℚ) / (A011782 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A322623.P8599365965513407920

/-!
# A322624: a(n) = [x^n*y^n/(2*n)!] = (cosh(x)*cosh(y) + sinh(x) + sinh(y)) / (1 - sinh(x)*sinh(y)), for n >= 0.

The programs for A322624, there is no canonical definition to state claims against.
-/

/-! ## A322624.P14711166946571762892

`A322621(∑[2*n])`
-/

namespace A322624.P14711166946571762892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322624.P14711166946571762892

/-! ## A322624.P7866882980136739842

`record[A322621(floor((n/2)²))]`
-/

namespace A322624.P7866882980136739842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322621 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322624.P7866882980136739842

/-! ## A322624.P3539205041522377079

`A094527(∑[n])*A322195(n)`
-/

namespace A322624.P3539205041522377079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (∑ j ∈ Finset.range (n + 1), f1 j) * A322195 n

end

end A322624.P3539205041522377079

/-! ## A322624.P13254918204028030580

`record[A094527(n)]*A322195(n)`
-/

namespace A322624.P13254918204028030580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A322195 n

end

end A322624.P13254918204028030580

/-! ## A322624.P11428819854871851001

`A007318(A046092(n))*A322195(n)`
-/

namespace A322624.P11428819854871851001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046092 n).toNat * A322195 n

end

end A322624.P11428819854871851001

/-!
# A322625: a(n) = [x^(n+1)*y^n/(2*n+1)!] (cosh(x)*cosh(y) + sinh(x) + sinh(y)) / (1 - sinh(x)*sinh(y)), for n >= 0.

The programs for A322625, there is no canonical definition to state claims against.
-/

/-! ## A322625.P5192347543669478811

`A322622((n+1)²)`
-/

namespace A322625.P5192347543669478811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322622 ((n + 1) ^ 2)

end

end A322625.P5192347543669478811

/-! ## A322625.P15019772819161505750

`A322620(2*(n+1)²)`
-/

namespace A322625.P15019772819161505750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322620 (2 * (n + 1) ^ 2)

end

end A322625.P15019772819161505750

/-! ## A322625.P7354921690609619865

`record[A322622(A137735(n)²)]`
-/

namespace A322625.P7354921690609619865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322622 (A137735 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322625.P7354921690609619865

/-! ## A322625.P6764071828792641882

`record[A322622(A318274(n)²)]`
-/

namespace A322625.P6764071828792641882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322622 (A318274 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322625.P6764071828792641882

/-! ## A322625.P8932929653115616680

`record[A322622(∑[A008619(n)])]`
-/

namespace A322625.P8932929653115616680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322622 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322625.P8932929653115616680

/-!
# A322626: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * (n - A(x)^n)^n.

The programs for A322626, there is no canonical definition to state claims against.
-/

/-! ## A322626.P7028550677945134319

`A306351(n)+A006368(A143415(n))`
-/

namespace A322626.P7028550677945134319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306351 n + A006368 (A143415 n).toNat

end

end A322626.P7028550677945134319

/-! ## A322626.P14202683461901620545

`A006368(or(A143415(n), A287981(n)))`
-/

namespace A322626.P14202683461901620545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (A143415 n) (A287981 n)).toNat

end

end A322626.P14202683461901620545

/-!
# A322627: a(n) = [y^(n+1)] (n + y) * Product_{k=1..2*n} (k + y), for n >= 0.

The programs for A322627, there is no canonical definition to state claims against.
-/

/-! ## A322627.P1439377222792464675

`A268647((n+1)²)`
-/

namespace A322627.P1439377222792464675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268647 ((n + 1) ^ 2)

end

end A322627.P1439377222792464675

/-! ## A322627.P10963336588116380157

`record[A268647((1-n)²)]`
-/

namespace A322627.P10963336588116380157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268647 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322627.P10963336588116380157

/-! ## A322627.P251013467057714481

`A268647(A066308(n+1))%A212414(n+1)`
-/

namespace A322627.P251013467057714481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268647 (A066308 (n + 1)).toNat) (A212414 (n + 1))

end

end A322627.P251013467057714481

/-!
# A322628: Number of n-digit decimal numbers containing a fixed 2-digit integer with distinct digits as a substring.

The programs for A322628, the canonical program `A322628.P6629214576355813689` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322628 has offset 0).

The definition of A322628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322628.P8069224147021426690

`10*a(n-1)-a(n-2)+9*10^(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A322628.P8069224147021426690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  10 * a (n - 1) - a (n - 2) + 9 * (10 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A322628.P8069224147021426690

namespace A322628

/-- `10*a(n-1)-a(n-2)+9*10^(n-3)` -/
def P8069224147021426690.Spec : Prop :=
  ∀ n, P8069224147021426690.a n = (A322628 n : ℚ)

end A322628

/-! ## A322628.P6629214576355813689

`20*a(n-1)-101*a(n-2)+10*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=19`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322628

/-- `20*a(n-1)-101*a(n-2)+10*a(n-3)` -/
def P6629214576355813689.Spec : Prop :=
  ∀ n, P6629214576355813689.a n = A322628 n

theorem P6629214576355813689.correct : P6629214576355813689.Spec := by
  intro n
  simp only [A322628]

end A322628

/-! ## A322628.P5246104075852467828

`Δ[A178501(n)-A004189(n)]`
-/

namespace A322628.P5246104075852467828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n - A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322628.P5246104075852467828

namespace A322628

/-- `Δ[A178501(n)-A004189(n)]` -/
def P5246104075852467828.Spec : Prop :=
  ∀ n, P5246104075852467828.a n = A322628 n

end A322628

/-! ## A322628.P153480022492292576

`Δ[A178501(n)]-A138288(n)`
-/

namespace A322628.P153480022492292576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A138288 n

end

end A322628.P153480022492292576

namespace A322628

/-- `Δ[A178501(n)]-A138288(n)` -/
def P153480022492292576.Spec : Prop :=
  ∀ n, P153480022492292576.a n = A322628 n

end A322628

/-! ## A322628.P13827983794308241865

`Δ[A322052(A028310(abs(1-n)))]`
-/

namespace A322628.P13827983794308241865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322052 (A028310 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322628.P13827983794308241865

namespace A322628

/-- `Δ[A322052(A028310(abs(1-n)))]` -/
def P13827983794308241865.Spec : Prop :=
  ∀ n, P13827983794308241865.a n = A322628 n

end A322628

/-! ## A322628.P4317671464052595900

`Δ[A178501(n)]-A142239(2*n)`
-/

namespace A322628.P4317671464052595900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A142239 (2 * n)

end

end A322628.P4317671464052595900

namespace A322628

/-- `Δ[A178501(n)]-A142239(2*n)` -/
def P4317671464052595900.Spec : Prop :=
  ∀ n, P4317671464052595900.a n = A322628 n

end A322628

/-!
# A322629: For a nonnegative number m with decimal digits (d_1, ..., d_k), let s(m) be the area of the convex hull of the set of points { (i, d_i), i = 1..k }; a(n) = 2 * s(n).

The programs for A322629, the canonical program `A322629.P6289319328343823706` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322629 has offset 100).

The definition of A322629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322629.P6289319328343823706

`abs(n+1-A054899(A056143(n)))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A322629

/-- `abs(n+1-A054899(A056143(n)))` -/
def P6289319328343823706.Spec : Prop :=
  ∀ n, P6289319328343823706.a n = A322629 (n + 100)

theorem P6289319328343823706.correct : P6289319328343823706.Spec := by
  intro n
  simp only [A322629, Nat.add_sub_cancel]

end A322629

/-! ## A322629.P17896528110682928560

`abs(A054899(A056143(n))-A008611(3*n))`
-/

namespace A322629.P17896528110682928560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054899 (A056143 n).toNat - A008611 (3 * n)|

end

end A322629.P17896528110682928560

namespace A322629

/-- `abs(A054899(A056143(n))-A008611(3*n))` -/
def P17896528110682928560.Spec : Prop :=
  ∀ n, P17896528110682928560.a n = A322629 (n + 100)

end A322629

/-! ## A322629.P4136647153972657433

`∑{d}[n+1-A054899(A056143(n)), A000010(#)]`
-/

namespace A322629.P4136647153972657433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A054899 (A056143 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A322629.P4136647153972657433

namespace A322629

/-- `∑{d}[n+1-A054899(A056143(n)), A000010(#)]` -/
def P4136647153972657433.Spec : Prop :=
  ∀ n, P4136647153972657433.a n = A322629 (n + 100)

end A322629

/-! ## A322629.P4097858502108290712

`gcd(n+1-A054899(A056143(n)), A056594(2*n+3))`
-/

namespace A322629.P4097858502108290712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A054899 (A056143 n).toNat) (A056594 (2 * n + 3))

end

end A322629.P4097858502108290712

namespace A322629

/-- `gcd(n+1-A054899(A056143(n)), A056594(2*n+3))` -/
def P4097858502108290712.Spec : Prop :=
  ∀ n, (P4097858502108290712.a n : ℤ) = A322629 (n + 100)

end A322629

/-!
# A322630: Arithmetic table similar to multiplication with different rules for odd and even products, read by antidiagonals. T(n,k) = (n*k + A319929(n,k))/2.

The programs for A322630, there is no canonical definition to state claims against.
-/

/-! ## A322630.P978180563816694860

`(A319929(n+1)+A003991(n+1))/2`
-/

namespace A322630.P978180563816694860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319929 (n + 1) + A003991 (n + 1) : ℚ) / 2

end

end A322630.P978180563816694860

/-! ## A322630.P10365134443266770059

`A001281(A319929(n+1)+A003991(n+1))`
-/

namespace A322630.P10365134443266770059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319929 (n + 1) + A003991 (n + 1)).toNat

end

end A322630.P10365134443266770059

/-! ## A322630.P9929735542344415155

`A004525(A319929(n+1)+A003991(n+1))`
-/

namespace A322630.P9929735542344415155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A319929 (n + 1) + A003991 (n + 1)).toNat

end

end A322630.P9929735542344415155

/-! ## A322630.P14887046170871351872

`A004526(A319929(n+1)+A003991(n+1))`
-/

namespace A322630.P14887046170871351872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319929 (n + 1) + A003991 (n + 1)).toNat

end

end A322630.P14887046170871351872

/-! ## A322630.P5504228475776014284

`A006370(A319929(n+1)+A003991(n+1))`
-/

namespace A322630.P5504228475776014284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A319929 (n + 1) + A003991 (n + 1)).toNat

end

end A322630.P5504228475776014284

/-! ## A322630.P8193178642146957685

`A014682(A319929(n+1)+A003991(n+1))`
-/

namespace A322630.P8193178642146957685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A319929 (n + 1) + A003991 (n + 1)).toNat

end

end A322630.P8193178642146957685

/-! ## A322630.P15943051234748535567

`A026741(A319929(n+1)+A003991(n+1))`
-/

namespace A322630.P15943051234748535567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A319929 (n + 1) + A003991 (n + 1)).toNat

end

end A322630.P15943051234748535567

/-! ## A322630.P17022517242047176954

`A029578(A319929(n+1)+A003991(n+1))`
-/

namespace A322630.P17022517242047176954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A319929 (n + 1) + A003991 (n + 1)).toNat

end

end A322630.P17022517242047176954

/-! ## A322630.P5026454119431436542

`2*A003991(n+1)-A322744(n+1)`
-/

namespace A322630.P5026454119431436542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003991 (n + 1) - A322744 (n + 1)

end

end A322630.P5026454119431436542

/-! ## A322630.P15092750831913645141

`A098352(n+1)/2-A322744(n+1)`
-/

namespace A322630.P15092750831913645141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098352 (n + 1) : ℚ) / 2 - (A322744 (n + 1) : ℚ)

end

end A322630.P15092750831913645141

/-! ## A322630.P5419026431530123471

`A004277(A003991(n+1))-A322744(n+1)`
-/

namespace A322630.P5419026431530123471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003991 (n + 1)).toNat - A322744 (n + 1)

end

end A322630.P5419026431530123471

/-! ## A322630.P12096982418830713810

`2*A334922(n+1)-A003991(n+1)`
-/

namespace A322630.P12096982418830713810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334922 (n + 1) - A003991 (n + 1)

end

end A322630.P12096982418830713810

/-! ## A322630.P18425464700533025875

`2*A334923(n+1)-A327259(n+1)`
-/

namespace A322630.P18425464700533025875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334923 (n + 1) - A327259 (n + 1)

end

end A322630.P18425464700533025875

/-! ## A322630.P13962771350941696082

`A005843(A334922(n+1))-A003991(n+1)`
-/

namespace A322630.P13962771350941696082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A334922 (n + 1)).toNat - A003991 (n + 1)

end

end A322630.P13962771350941696082

/-! ## A322630.P15081545940944104628

`A003991(n+1)+A334922(n+1)-A334923(n+1)`
-/

namespace A322630.P15081545940944104628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A334922 (n + 1) - A334923 (n + 1))

end

end A322630.P15081545940944104628

/-! ## A322630.P2991873812198988254

`A319929(n+1)+A327259(n+1)-A322744(n+1)`
-/

namespace A322630.P2991873812198988254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319929 (n + 1) + (A327259 (n + 1) - A322744 (n + 1))

end

end A322630.P2991873812198988254

/-! ## A322630.P4311010350899896606

`A319929(n+1)+A334923(n+1)-A334922(n+1)`
-/

namespace A322630.P4311010350899896606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319929 (n + 1) + (A334923 (n + 1) - A334922 (n + 1))

end

end A322630.P4311010350899896606

/-! ## A322630.P6628748582854638633

`A334922(n+1)+A334923(n+1)-A322744(n+1)`
-/

namespace A322630.P6628748582854638633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334922 (n + 1) + (A334923 (n + 1) - A322744 (n + 1))

end

end A322630.P6628748582854638633

/-! ## A322630.P4792764259867572938

`A003991(n+1)-A004525(A327259(n+1)-A003991(n+1))`
-/

namespace A322630.P4792764259867572938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A004525 (A327259 (n + 1) - A003991 (n + 1)).toNat

end

end A322630.P4792764259867572938

/-! ## A322630.P12752163522599853112

`A003991(n+1)-A004526(A327259(n+1)-A003991(n+1))`
-/

namespace A322630.P12752163522599853112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A004526 (A327259 (n + 1) - A003991 (n + 1)).toNat

end

end A322630.P12752163522599853112

/-!
# A322631: a(n) = 2*binomial(7*n-1,2*n)/(7*n-1).

The programs for A322631, the canonical program `A322631.P8955526985929745105` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322631 has offset 1).

The definition of A322631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322631.P8955526985929745105

`2*C(7*(n+1)-1, 2*(n+1))/(7*(n+1)-1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322631

/-- `2*C(7*(n+1)-1, 2*(n+1))/(7*(n+1)-1)` -/
def P8955526985929745105.Spec : Prop :=
  ∀ n, P8955526985929745105.a n = (A322631 (n + 1) : ℚ)

end A322631

/-! ## A322631.P8355762219885644895

`C(Δ[(2*n)²]-(n-1), 2*n+1)/(n+1)`
-/

namespace A322631.P8355762219885644895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - 1)).toNat (2 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A322631.P8355762219885644895

namespace A322631

/-- `C(Δ[(2*n)²]-(n-1), 2*n+1)/(n+1)` -/
def P8355762219885644895.Spec : Prop :=
  ∀ n, P8355762219885644895.a n = (A322631 (n + 1) : ℚ)

end A322631

/-! ## A322631.P3575191456008270791

`A099557(A194268(Δ[n²]))/(n+1)`
-/

namespace A322631.P3575191456008270791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099557 (A194268 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / (n + 1 : ℚ)

end

end A322631.P3575191456008270791

namespace A322631

/-- `A099557(A194268(Δ[n²]))/(n+1)` -/
def P3575191456008270791.Spec : Prop :=
  ∀ n, P3575191456008270791.a n = (A322631 (n + 1) : ℚ)

end A322631

/-!
# A322636: Numbers that are sums of consecutive heptagonal numbers (A000566).

The programs for A322636, there is no canonical definition to state claims against.
-/

/-! ## A322636.P13837384207821996256

`A034856(n+1)-A265754(A265900(n+1))`
-/

namespace A322636.P13837384207821996256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - A265754 (A265900 (n + 1)).toNat

end

end A322636.P13837384207821996256

/-! ## A322636.P16913053556039339525

`lt[A171243(n+1), A097195(A076485(n+1))]`
-/

namespace A322636.P16913053556039339525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 (A076485 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322636.P16913053556039339525

/-! ## A322636.P17566367708979027855

`eq[A046802(n+2), A225743(A317160(n+1))]`
-/

namespace A322636.P17566367708979027855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225743 (A317160 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322636.P17566367708979027855

/-! ## A322636.P9346924945615817763

`2*A319185(n+1)-(A340553(2*(n+1))-A267592(A118417(n)))`
-/

namespace A322636.P9346924945615817763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319185 (n + 1) - (A340553 (2 * (n + 1)) - A267592 (A118417 n).toNat)

end

end A322636.P9346924945615817763

/-!
# A322638: Numbers that are sums of consecutive centered pentagonal numbers (A005891).

The programs for A322638, there is no canonical definition to state claims against.
-/

/-! ## A322638.P8652276163398127461

`eq[A066099(A008277(n+1)), A281083(n)]`
-/

namespace A322638.P8652276163398127461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A008277 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322638.P8652276163398127461

/-!
# A322639: Number of solutions to |dft(a)^2 + dft(b)^2 + dft(c)^2 + dft(d)^2| = 4n, where a,b,c,d are +1,-1 sequences of length n and dft(x) denotes the discrete Fourier transform of x.

The programs for A322639, there is no canonical definition to state claims against.
-/

/-! ## A322639.P3068268516540945334

`A054526(A000079(2*n+3)+1)*A283078(n+1)`
-/

namespace A322639.P3068268516540945334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (A000079 (2 * n + 3) + 1).toNat * A283078 (n + 1)

end

end A322639.P3068268516540945334

/-!
# A322646: Number of times the digit 5 appears in the first 10^n decimal digits of sqrt(2), sometimes called Pythagoras's constant, counting after the decimal point.

The programs for A322646, there is no canonical definition to state claims against.
-/

/-! ## A322646.P17102622929708258383

`A190886(xor(3, a(n-1)))+10^n` with `a(0)=1, a(1)=7`
-/

namespace A322646.P17102622929708258383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A190886 (Int.xor 3 (a (n - 1))).toNat + (10 ^ n : ℤ)

end

end A322646.P17102622929708258383

/-!
# A322655: Numerator of (Sum_{d|n} sigma(d)) / sigma(n).

The programs for A322655, the canonical program `A322655.P5096016706217459484` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322655 has offset 1).

The definition of A322655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322655.P5096016706217459484

`A007429(n+1)/gcd(A000203(n+1), A007429(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A322655

/-- `A007429(n+1)/gcd(A000203(n+1), A007429(n+1))` -/
def P5096016706217459484.Spec : Prop :=
  ∀ n, P5096016706217459484.a n = (A322655 (n + 1) : ℚ)

end A322655

/-! ## A322655.P16757457039229936714

`A007429(n+1)/A000203(n+1)*A322656(n+1)`
-/

namespace A322655.P16757457039229936714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A322656 (n + 1) : ℚ)

end

end A322655.P16757457039229936714

namespace A322655

/-- `A007429(n+1)/A000203(n+1)*A322656(n+1)` -/
def P16757457039229936714.Spec : Prop :=
  ∀ n, P16757457039229936714.a n = (A322655 (n + 1) : ℚ)

end A322655

/-! ## A322655.P16830046234091951923

`A007429(n+1)/gcd(A211779(n+1), A296075(n+1))`
-/

namespace A322655.P16830046234091951923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) : ℚ) / (Int.gcd (A211779 (n + 1)) (A296075 (n + 1)) : ℚ)

end

end A322655.P16830046234091951923

namespace A322655

/-- `A007429(n+1)/gcd(A211779(n+1), A296075(n+1))` -/
def P16830046234091951923.Spec : Prop :=
  ∀ n, P16830046234091951923.a n = (A322655 (n + 1) : ℚ)

end A322655

/-!
# A322656: Denominator of (Sum_{d|n} sigma(d)) / sigma(n).

The programs for A322656, the canonical program `A322656.P17788882958945356723` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322656 has offset 1).

The definition of A322656 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322656.P17788882958945356723

`A000203(n+1)/gcd(A000203(n+1), A007429(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A322656

/-- `A000203(n+1)/gcd(A000203(n+1), A007429(n+1))` -/
def P17788882958945356723.Spec : Prop :=
  ∀ n, P17788882958945356723.a n = (A322656 (n + 1) : ℚ)

end A322656

/-! ## A322656.P11382002683707604827

`A000203(n+1)/A007429(n+1)*A322655(n+1)`
-/

namespace A322656.P11382002683707604827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A007429 (n + 1) : ℚ) * (A322655 (n + 1) : ℚ)

end

end A322656.P11382002683707604827

namespace A322656

/-- `A000203(n+1)/A007429(n+1)*A322655(n+1)` -/
def P11382002683707604827.Spec : Prop :=
  ∀ n, P11382002683707604827.a n = (A322656 (n + 1) : ℚ)

end A322656

/-! ## A322656.P18325807075342207386

`lcm(A007429(n+1), A143348(n+1))/A007429(n+1)`
-/

namespace A322656.P18325807075342207386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007429 (n + 1)) (A143348 (n + 1)) : ℚ) / (A007429 (n + 1) : ℚ)

end

end A322656.P18325807075342207386

namespace A322656

/-- `lcm(A007429(n+1), A143348(n+1))/A007429(n+1)` -/
def P18325807075342207386.Spec : Prop :=
  ∀ n, P18325807075342207386.a n = (A322656 (n + 1) : ℚ)

end A322656

/-! ## A322656.P6848680720117032487

`gcd(∑{d}[n+1, #], A265710(A054496(n+1)))`
-/

namespace A322656.P6848680720117032487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A265710 (A054496 (n + 1)).toNat)

end

end A322656.P6848680720117032487

namespace A322656

/-- `gcd(∑{d}[n+1, #], A265710(A054496(n+1)))` -/
def P6848680720117032487.Spec : Prop :=
  ∀ n, (P6848680720117032487.a n : ℤ) = A322656 (n + 1)

end A322656

/-! ## A322656.P11254359362123001489

`gcd(A000203(n+1), A265710(A054496(n+1)))`
-/

namespace A322656.P11254359362123001489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A265710 (A054496 (n + 1)).toNat)

end

end A322656.P11254359362123001489

namespace A322656

/-- `gcd(A000203(n+1), A265710(A054496(n+1)))` -/
def P11254359362123001489.Spec : Prop :=
  ∀ n, (P11254359362123001489.a n : ℤ) = A322656 (n + 1)

end A322656

/-!
# A322657: Integers whose set of divisors, excluding 1, can be partitioned into two nonempty subsets having equal sum.

The programs for A322657, there is no canonical definition to state claims against.
-/

/-! ## A322657.P1613573319223937101

`filter[A322658(n+1), A093709(#)]`
-/

namespace A322657.P1613573319223937101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093709 (f1 j).toNat = 1) n)

end

end A322657.P1613573319223937101

/-! ## A322657.P13804885882713422463

`filter[A322658(n+1), A135528(#)]`
-/

namespace A322657.P13804885882713422463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A322657.P13804885882713422463

/-! ## A322657.P16894290917479254976

`record[A038608(A322658(n+1))]`
-/

namespace A322657.P16894290917479254976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A322658 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322657.P16894290917479254976

/-! ## A322657.P3256534964746056206

`filter[A322658(n+1), A059841(#)]`
-/

namespace A322657.P3256534964746056206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A322657.P3256534964746056206

/-! ## A322657.P2244003920702998719

`filter[A322658(n+1), A108357(#)]`
-/

namespace A322657.P2244003920702998719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A322657.P2244003920702998719

/-! ## A322657.P10654171322554146086

`filter[A322658(n+1), A266591(#)]`
-/

namespace A322657.P10654171322554146086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A322657.P10654171322554146086

/-! ## A322657.P1675470545295769499

`filter[A322658(n+1), A267043(#)]`
-/

namespace A322657.P1675470545295769499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A322657.P1675470545295769499

/-!
# A322658: Integers whose set of proper divisors, excluding 1, can be partitioned into two nonempty subsets having equal sum.

The programs for A322658, there is no canonical definition to state claims against.
-/

/-! ## A322658.P7427825714670211587

`A316438(A017221(n)+A008861(n))`
-/

namespace A322658.P7427825714670211587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316438 (A017221 n + A008861 n).toNat

end

end A322658.P7427825714670211587

/-!
# A322659: Number of connected regular simple graphs on n labeled vertices.

The programs for A322659, there is no canonical definition to state claims against.
-/

/-! ## A322659.P2340697149370050722

`A004396(A146735(3*n+4)-A057354(n))`
-/

namespace A322659.P2340697149370050722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A146735 (3 * n + 4) - A057354 n).toNat

end

end A322659.P2340697149370050722

/-! ## A322659.P11753456514958126121

`A076476(A149804(n))`
-/

namespace A322659.P11753456514958126121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076476 (A149804 n).toNat

end

end A322659.P11753456514958126121

/-!
# A322660: Numbers k > 1 for which the number of representations as an m-gonal number P(m,r) = r*((m-2)*r-(m-4))/2, with m>1, r>1, equals the number of divisors of k.

The programs for A322660, there is no canonical definition to state claims against.
-/

/-! ## A322660.P11717776847306378635

`eq[A000005(n+2), A129654(n+2)]+2`
-/

namespace A322660.P11717776847306378635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A322660.P11717776847306378635

/-! ## A322660.P3543478116491639989

`lt[A019428(A359897(n)), A019428(n)]`
-/

namespace A322660.P3543478116491639989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A359897 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322660.P3543478116491639989

/-! ## A322660.P17938050530798708524

`lt[A243978(A243980(n+1)), A243982(3*n+1)]`
-/

namespace A322660.P17938050530798708524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A243980 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243982 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322660.P17938050530798708524

/-! ## A322660.P3065779112650795233

`record[A209302(A299760(n+1))]`
-/

namespace A322660.P3065779112650795233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (A299760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322660.P3065779112650795233

/-! ## A322660.P1960043668365412534

`2*A058226(A077342(n+1))+1`
-/

namespace A322660.P1960043668365412534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058226 (A077342 (n + 1)).toNat + 1

end

end A322660.P1960043668365412534

/-!
# A322661: Number of graphs with loops spanning n labeled vertices.

The programs for A322661, there is no canonical definition to state claims against.
-/

/-! ## A322661.P12436847978349380931

`A369142(n)+A369140(n)`
-/

namespace A322661.P12436847978349380931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369142 n + A369140 n

end

end A322661.P12436847978349380931

/-! ## A322661.P4978861532897915032

`A006129(n+1)+A006129(n)`
-/

namespace A322661.P4978861532897915032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 (n + 1) + A006129 n

end

end A322661.P4978861532897915032

/-!
# A322662: a(n) is to A151723(n+1) as A319018(n+1) is to A147562(n+1), n >= 0.

The programs for A322662, there is no canonical definition to state claims against.
-/

/-! ## A322662.P7450838326611804687

`A004741(∑[A125510(n)]²)`
-/

namespace A322662.P7450838326611804687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A322662.P7450838326611804687

/-! ## A322662.P2896257909481773921

`A280026(∑[A125510(n)]²)`
-/

namespace A322662.P2896257909481773921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280026 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A322662.P2896257909481773921

/-!
# A322663: First differences of A322662 divided by 12.

The programs for A322663, there is no canonical definition to state claims against.
-/

/-! ## A322663.P10481526374621504477

`(A322662(n+1)-A322662(n))/12`
-/

namespace A322663.P10481526374621504477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322662 (n + 1) - A322662 n : ℚ) / 12

end

end A322663.P10481526374621504477

/-! ## A322663.P16435544056386840019

`Δ[A322662(n)/12]`
-/

namespace A322663.P16435544056386840019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322662 n : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322663.P16435544056386840019

/-! ## A322663.P12198072609605942309

`A002265(A002264(Δ[A322662(n)]))`
-/

namespace A322663.P12198072609605942309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002264 (f1 (n + 1) - f1 n).toNat).toNat

end

end A322663.P12198072609605942309

/-! ## A322663.P8813831377666714050

`A002265(A008620(Δ[A322662(n)]))`
-/

namespace A322663.P8813831377666714050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A008620 (f1 (n + 1) - f1 n).toNat).toNat

end

end A322663.P8813831377666714050

/-! ## A322663.P3481870154061499486

`A002264(A008624(Δ[A322662(n)]))`
-/

namespace A322663.P3481870154061499486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008624 (f1 (n + 1) - f1 n).toNat).toNat

end

end A322663.P3481870154061499486

/-!
# A322664: a(n) = n^2 * Sum_{p^k|n} Sum_{j=1..k} 1/p^(2*j), where p are primes dividing n with multiplicity k.

The programs for A322664, the canonical program `A322664.P17586322298630474412` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322664 has offset 1).

The definition of A322664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322664.P17579317307532689581

`∑{d}[n+1, A001222(#)*A007434((n+1)/#)]`
-/

namespace A322664.P17579317307532689581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322664.P17579317307532689581

namespace A322664

/-- `∑{d}[n+1, A001222(#)*A007434((n+1)/#)]` -/
def P17579317307532689581.Spec : Prop :=
  ∀ n, P17579317307532689581.a n = A322664 (n + 1)

end A322664

/-! ## A322664.P17586322298630474412

`∑{d}[n+1, A000290(#)*A069513((n+1)/#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A322664

/-- `∑{d}[n+1, A000290(#)*A069513((n+1)/#)]` -/
def P17586322298630474412.Spec : Prop :=
  ∀ n, P17586322298630474412.a n = A322664 (n + 1)

theorem P17586322298630474412.correct : P17586322298630474412.Spec := by
  intro n
  simp only [A322664, Nat.add_sub_cancel]

end A322664

/-! ## A322664.P7444713237542282660

`∑{d}[n+1, A002618(#)*A095112((n+1)/#)]`
-/

namespace A322664.P7444713237542282660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A095112 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322664.P7444713237542282660

namespace A322664

/-- `∑{d}[n+1, A002618(#)*A095112((n+1)/#)]` -/
def P7444713237542282660.Spec : Prop :=
  ∀ n, P7444713237542282660.a n = A322664 (n + 1)

end A322664

/-! ## A322664.P12929502608993608069

`∑{d}[n+1, A057660(#)*A116512((n+1)/#)]`
-/

namespace A322664.P12929502608993608069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A116512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322664.P12929502608993608069

namespace A322664

/-- `∑{d}[n+1, A057660(#)*A116512((n+1)/#)]` -/
def P12929502608993608069.Spec : Prop :=
  ∀ n, P12929502608993608069.a n = A322664 (n + 1)

end A322664

/-! ## A322664.P14424741629123060946

`∑{d}[n+1, A069264(#)*A321322((n+1)/#)]`
-/

namespace A322664.P14424741629123060946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069264 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322664.P14424741629123060946

namespace A322664

/-- `∑{d}[n+1, A069264(#)*A321322((n+1)/#)]` -/
def P14424741629123060946.Spec : Prop :=
  ∀ n, P14424741629123060946.a n = A322664 (n + 1)

end A322664

/-! ## A322664.P12038836012950403635

`∑{d}[n+1, A063445(#)*A329347((n+1)/#)]`
-/

namespace A322664.P12038836012950403635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A329347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322664.P12038836012950403635

namespace A322664

/-- `∑{d}[n+1, A063445(#)*A329347((n+1)/#)]` -/
def P12038836012950403635.Spec : Prop :=
  ∀ n, P12038836012950403635.a n = A322664 (n + 1)

end A322664

/-!
# A322665: Partial sums of A089451.

The programs for A322665, the canonical program `A322665.P12760393597532971619` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322665 has offset 1).

The definition of A322665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322665.P12760393597532971619

`∑[A089451(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A322665

/-- `∑[A089451(n+1)]` -/
def P12760393597532971619.Spec : Prop :=
  ∀ n, P12760393597532971619.a n = A322665 (n + 1)

theorem P12760393597532971619.correct : P12760393597532971619.Spec := by
  intro n
  simp only [A322665, Nat.add_sub_cancel]

end A322665

/-! ## A322665.P7826431438806878746

`∑[A067460(n+1)-1]`
-/

namespace A322665.P7826431438806878746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067460 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P7826431438806878746

namespace A322665

/-- `∑[A067460(n+1)-1]` -/
def P7826431438806878746.Spec : Prop :=
  ∀ n, P7826431438806878746.a n = A322665 (n + 1)

theorem P7826431438806878746.correct : P7826431438806878746.Spec := by
  intro n
  simp only [A322665, Nat.add_sub_cancel, A322665.P7826431438806878746.f1, A322665.P7826431438806878746.a, A322665.P12760393597532971619.f1, A322665.P12760393597532971619.a, A067460, A067460.P7460291602574700690.a, A089451, A089451.P7196534336753683133.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322665

/-! ## A322665.P15716930709995511318

`∑[A008683(p?[xor(1, n)+1]-1)]`
-/

namespace A322665.P15716930709995511318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P15716930709995511318

namespace A322665

/-- `∑[A008683(p?[xor(1, n)+1]-1)]` -/
def P15716930709995511318.Spec : Prop :=
  ∀ n, P15716930709995511318.a n = A322665 (n + 1)

end A322665

/-! ## A322665.P2880714010656809889

`∑[A008683(p?[n%3+n]-1)]`
-/

namespace A322665.P2880714010656809889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P2880714010656809889

namespace A322665

/-- `∑[A008683(p?[n%3+n]-1)]` -/
def P2880714010656809889.Spec : Prop :=
  ∀ n, P2880714010656809889.a n = A322665 (n + 1)

end A322665

/-! ## A322665.P1144133391466246323

`∑[A008683(A006093(n+1))]`
-/

namespace A322665.P1144133391466246323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P1144133391466246323

namespace A322665

/-- `∑[A008683(A006093(n+1))]` -/
def P1144133391466246323.Spec : Prop :=
  ∀ n, P1144133391466246323.a n = A322665 (n + 1)

end A322665

/-! ## A322665.P14446911588017567504

`∑[A008683(sqrt(A005722(n+1)))]`
-/

namespace A322665.P14446911588017567504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P14446911588017567504

namespace A322665

/-- `∑[A008683(sqrt(A005722(n+1)))]` -/
def P14446911588017567504.Spec : Prop :=
  ∀ n, P14446911588017567504.a n = A322665 (n + 1)

end A322665

/-! ## A322665.P11559081112114052476

`∑[A008683(Δ[A007504(n)]-1)]`
-/

namespace A322665.P11559081112114052476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (n + 1) - f2 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P11559081112114052476

namespace A322665

/-- `∑[A008683(Δ[A007504(n)]-1)]` -/
def P11559081112114052476.Spec : Prop :=
  ∀ n, P11559081112114052476.a n = A322665 (n + 1)

end A322665

/-! ## A322665.P4843759008171373490

`∑[A008683(record[A000010(n+1)])]`
-/

namespace A322665.P4843759008171373490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P4843759008171373490

namespace A322665

/-- `∑[A008683(record[A000010(n+1)])]` -/
def P4843759008171373490.Spec : Prop :=
  ∀ n, P4843759008171373490.a n = A322665 (n + 1)

end A322665

/-! ## A322665.P17666042868251249586

`∑[A008683(A040976(n+1)+1)]`
-/

namespace A322665.P17666042868251249586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A040976 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P17666042868251249586

namespace A322665

/-- `∑[A008683(A040976(n+1)+1)]` -/
def P17666042868251249586.Spec : Prop :=
  ∀ n, P17666042868251249586.a n = A322665 (n + 1)

theorem P17666042868251249586.correct : P17666042868251249586.Spec := by
  intro n
  simp only [A322665, Nat.add_sub_cancel, A322665.P17666042868251249586.f1, A322665.P17666042868251249586.a, A322665.P12760393597532971619.f1, A322665.P12760393597532971619.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A040976, A040976.P11599754272797435513.a, A089451, A089451.P7196534336753683133.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322665

/-! ## A322665.P462363901146325136

`∑[A008683(A000040(n+1)-1)]`
-/

namespace A322665.P462363901146325136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P462363901146325136

namespace A322665

/-- `∑[A008683(A000040(n+1)-1)]` -/
def P462363901146325136.Spec : Prop :=
  ∀ n, P462363901146325136.a n = A322665 (n + 1)

end A322665

/-! ## A322665.P3855226615017516748

`∑[A008683(eq[2, A000005(n+1)])]`
-/

namespace A322665.P3855226615017516748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P3855226615017516748

namespace A322665

/-- `∑[A008683(eq[2, A000005(n+1)])]` -/
def P3855226615017516748.Spec : Prop :=
  ∀ n, P3855226615017516748.a n = A322665 (n + 1)

end A322665

/-! ## A322665.P6973094265537594423

`∑[A098018(p?[xor(1, n)+1])]`
-/

namespace A322665.P6973094265537594423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098018 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P6973094265537594423

namespace A322665

/-- `∑[A098018(p?[xor(1, n)+1])]` -/
def P6973094265537594423.Spec : Prop :=
  ∀ n, P6973094265537594423.a n = A322665 (n + 1)

end A322665

/-! ## A322665.P6981859509796274443

`∑[A098018(A000040(n+1))]`
-/

namespace A322665.P6981859509796274443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098018 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322665.P6981859509796274443

namespace A322665

/-- `∑[A098018(A000040(n+1))]` -/
def P6981859509796274443.Spec : Prop :=
  ∀ n, P6981859509796274443.a n = A322665 (n + 1)

end A322665

/-!
# A322667: a(n) is the smallest positive integer k such that floor((k + 1)^2/10^n) - floor(k^2/10^n) = 2.

The programs for A322667, there is no canonical definition to state claims against.
-/

/-! ## A322667.P13713421662506645969

`A317774(n+1)-1`
-/

namespace A322667.P13713421662506645969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317774 (n + 1) - 1

end

end A322667.P13713421662506645969

/-! ## A322667.P11024448255734714908

`ceil(A198971(n)+sqrt(A099150(n+1)))`
-/

namespace A322667.P11024448255734714908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198971 n : ℝ) + Real.sqrt (A099150 (n + 1) : ℝ)⌉

end

end A322667.P11024448255734714908

/-! ## A322667.P18023517692416587789

`A325142(A112316(n))+A317774(n+1)`
-/

namespace A322667.P18023517692416587789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A112316 n).toNat + A317774 (n + 1)

end

end A322667.P18023517692416587789

/-! ## A322667.P16089255577424510065

`A325970(A079304(n+1))+A317774(n+1)`
-/

namespace A322667.P16089255577424510065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A079304 (n + 1)).toNat + A317774 (n + 1)

end

end A322667.P16089255577424510065

/-! ## A322667.P4072088314804572167

`3*A034505(n+1)+A317774(n+1)+A008683(A002148(n))`
-/

namespace A322667.P4072088314804572167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034505 (n + 1) + (A317774 (n + 1) + A008683 (A002148 n).toNat)

end

end A322667.P4072088314804572167

/-!
# A322669: a(n) is the least prime(k+n-1) satisfying k > 0 and prime(k+n-1) < prime(k) + prime(k+1).

The programs for A322669, there is no canonical definition to state claims against.
-/

/-! ## A322669.P2381197314048785277

`∩[A029743(2*(n+1)), A028803(n+5)]`
-/

namespace A322669.P2381197314048785277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028803 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322669.P2381197314048785277

/-! ## A322669.P7205626262825513680

`A079879(A031368(n+4)*A115591(n+1))`
-/

namespace A322669.P7205626262825513680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A031368 (n + 4) * A115591 (n + 1)).toNat

end

end A322669.P7205626262825513680

/-!
# A322670: Number T(n,k) of colored set partitions of [n] where colors of the elements of subsets are distinct and in increasing order and exactly k colors are used; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A322670, there is no canonical definition to state claims against.
-/

/-! ## A322670.P1998612630706057117

`A126316(A270882(n)%A063236(n+1))`
-/

namespace A322670.P1998612630706057117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126316 (Int.tmod (A270882 n) (A063236 (n + 1))).toNat

end

end A322670.P1998612630706057117

/-! ## A322670.P11017986540799825759

`A278073(n)%A324701(A036012(3*(n+1)))`
-/

namespace A322670.P11017986540799825759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278073 n) (A324701 (A036012 (3 * (n + 1))).toNat)

end

end A322670.P11017986540799825759

/-! ## A322670.P2284207004911460256

`A130685(A135313(n))`
-/

namespace A322670.P2284207004911460256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130685 (A135313 n).toNat

end

end A322670.P2284207004911460256

/-! ## A322670.P15774525820845770970

`A126316(A270882(n))`
-/

namespace A322670.P15774525820845770970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126316 (A270882 n).toNat

end

end A322670.P15774525820845770970

/-! ## A322670.P6250194263402247647

`A326441(A291451(n))`
-/

namespace A322670.P6250194263402247647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 (A291451 n).toNat

end

end A322670.P6250194263402247647

/-!
# A322671: a(n) = Sum_{d|n} (pod(d)/d), where pod(k) is the product of the divisors of k (A007955).

The programs for A322671, the canonical program `A322671.P6670530733806521760` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322671 has offset 1).

The definition of A322671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322671.P6670530733806521760

`∑{d}[n+1, A007956(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A322671

/-- `∑{d}[n+1, A007956(#)]` -/
def P6670530733806521760.Spec : Prop :=
  ∀ n, P6670530733806521760.a n = A322671 (n + 1)

theorem P6670530733806521760.correct : P6670530733806521760.Spec := by
  intro n
  simp only [A322671, Nat.add_sub_cancel]

end A322671

/-! ## A322671.P1688631114825586718

`A174932(n+1)/(n+1)`
-/

namespace A322671.P1688631114825586718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174932 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A322671.P1688631114825586718

namespace A322671

/-- `A174932(n+1)/(n+1)` -/
def P1688631114825586718.Spec : Prop :=
  ∀ n, P1688631114825586718.a n = (A322671 (n + 1) : ℚ)

end A322671

/-! ## A322671.P12857042223649839170

`∑{d}[n+1, A007955(#)/#]`
-/

namespace A322671.P12857042223649839170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007955 d : ℚ) / (d : ℚ)

end

end A322671.P12857042223649839170

namespace A322671

/-- `∑{d}[n+1, A007955(#)/#]` -/
def P12857042223649839170.Spec : Prop :=
  ∀ n, P12857042223649839170.a n = (A322671 (n + 1) : ℚ)

end A322671

/-! ## A322671.P1004112801701410546

`∑{d}[n+1, #^(A000005(#)/2)/#]`
-/

namespace A322671.P1004112801701410546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((A000005 d : ℚ) / 2 : ℝ) / (d : ℝ)

end

end A322671.P1004112801701410546

namespace A322671

/-- `∑{d}[n+1, #^(A000005(#)/2)/#]` -/
def P1004112801701410546.Spec : Prop :=
  ∀ n, P1004112801701410546.a n = (A322671 (n + 1) : ℝ)

end A322671

/-! ## A322671.P7274627461290052301

`∑{d}[n+1, sqrt(A277169(#))]`
-/

namespace A322671.P7274627461290052301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A277169 d : ℝ)

end

end A322671.P7274627461290052301

namespace A322671

/-- `∑{d}[n+1, sqrt(A277169(#))]` -/
def P7274627461290052301.Spec : Prop :=
  ∀ n, P7274627461290052301.a n = (A322671 (n + 1) : ℝ)

end A322671

/-!
# A322672: a(n) = Product_{d|n} (pod(d)/d) where pod(k) is the product of the divisors of k (A007955).

The programs for A322672, the canonical program `A322672.P7673391804805302006` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322672 has offset 1).

The definition of A322672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322672.P7673391804805302006

`∏{d}[n+1, A007956(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A322672

/-- `∏{d}[n+1, A007956(#)]` -/
def P7673391804805302006.Spec : Prop :=
  ∀ n, P7673391804805302006.a n = A322672 (n + 1)

theorem P7673391804805302006.correct : P7673391804805302006.Spec := by
  intro n
  simp only [A322672, Nat.add_sub_cancel]

end A322672

/-! ## A322672.P12350478380340716578

`∏{d}[n+1, sqrt(A277169(#))]`
-/

namespace A322672.P12350478380340716578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Real.sqrt (A277169 d : ℝ)

end

end A322672.P12350478380340716578

namespace A322672

/-- `∏{d}[n+1, sqrt(A277169(#))]` -/
def P12350478380340716578.Spec : Prop :=
  ∀ n, P12350478380340716578.a n = (A322672 (n + 1) : ℝ)

end A322672

/-! ## A322672.P12209429219793472641

`∏{d}[n+1, A007955(#)/#]`
-/

namespace A322672.P12209429219793472641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A007955 d : ℚ) / (d : ℚ)

end

end A322672.P12209429219793472641

namespace A322672

/-- `∏{d}[n+1, A007955(#)/#]` -/
def P12209429219793472641.Spec : Prop :=
  ∀ n, P12209429219793472641.a n = (A322672 (n + 1) : ℚ)

end A322672

/-! ## A322672.P15490988346881613971

`∏{d}[n+1, ((n+1)/#)^A032741(#)]`
-/

namespace A322672.P15490988346881613971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ (A032741 d : ℤ)

end

end A322672.P15490988346881613971

namespace A322672

/-- `∏{d}[n+1, ((n+1)/#)^A032741(#)]` -/
def P15490988346881613971.Spec : Prop :=
  ∀ n, P15490988346881613971.a n = (A322672 (n + 1) : ℚ)

end A322672

/-! ## A322672.P3966002222307029887

`A266265(n+1)/A007955(n+1)`
-/

namespace A322672.P3966002222307029887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A322672.P3966002222307029887

namespace A322672

/-- `A266265(n+1)/A007955(n+1)` -/
def P3966002222307029887.Spec : Prop :=
  ∀ n, P3966002222307029887.a n = (A322672 (n + 1) : ℚ)

end A322672

/-! ## A322672.P4491529671530469140

`A307101(n+1)/A306705(n+1)`
-/

namespace A322672.P4491529671530469140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307101 (n + 1) : ℚ) / (A306705 (n + 1) : ℚ)

end

end A322672.P4491529671530469140

namespace A322672

/-- `A307101(n+1)/A306705(n+1)` -/
def P4491529671530469140.Spec : Prop :=
  ∀ n, P4491529671530469140.a n = (A322672 (n + 1) : ℚ)

end A322672

/-! ## A322672.P13438953394871395489

`A266265(n+1)/sqrt(A062758(n+1))`
-/

namespace A322672.P13438953394871395489
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) : ℝ) / Real.sqrt (A062758 (n + 1) : ℝ)

end

end A322672.P13438953394871395489

namespace A322672

/-- `A266265(n+1)/sqrt(A062758(n+1))` -/
def P13438953394871395489.Spec : Prop :=
  ∀ n, P13438953394871395489.a n = (A322672 (n + 1) : ℝ)

end A322672

/-! ## A322672.P7912424179796254566

`A266265(n+1)/(A056925(n+1)*A056926(n+1))`
-/

namespace A322672.P7912424179796254566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) : ℚ) / (A056925 (n + 1) * A056926 (n + 1) : ℚ)

end

end A322672.P7912424179796254566

namespace A322672

/-- `A266265(n+1)/(A056925(n+1)*A056926(n+1))` -/
def P7912424179796254566.Spec : Prop :=
  ∀ n, P7912424179796254566.a n = (A322672 (n + 1) : ℚ)

end A322672

/-! ## A322672.P4692982067892498353

`A325030(n+1)/A324980(n+1)`
-/

namespace A322672.P4692982067892498353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (A324980 (n + 1) : ℚ)

end

end A322672.P4692982067892498353

namespace A322672

/-- `A325030(n+1)/A324980(n+1)` -/
def P4692982067892498353.Spec : Prop :=
  ∀ n, P4692982067892498353.a n = (A322672 (n + 1) : ℚ)

end A322672

/-! ## A322672.P14281449015962947359

`A324981(n+1)/A007955(n+1)²`
-/

namespace A322672.P14281449015962947359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324981 (n + 1) : ℚ) / (A007955 (n + 1) ^ 2 : ℚ)

end

end A322672.P14281449015962947359

namespace A322672

/-- `A324981(n+1)/A007955(n+1)²` -/
def P14281449015962947359.Spec : Prop :=
  ∀ n, P14281449015962947359.a n = (A322672 (n + 1) : ℚ)

end A322672

/-! ## A322672.P14441547889907161390

`A266265(n+1)/A324981(n+1)*A266265(n+1)`
-/

namespace A322672.P14441547889907161390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) : ℚ) / (A324981 (n + 1) : ℚ) * (A266265 (n + 1) : ℚ)

end

end A322672.P14441547889907161390

namespace A322672

/-- `A266265(n+1)/A324981(n+1)*A266265(n+1)` -/
def P14441547889907161390.Spec : Prop :=
  ∀ n, P14441547889907161390.a n = (A322672 (n + 1) : ℚ)

end A322672

/-! ## A322672.P11752665781791757975

`A266265(n+1)²/A324981(n+1)`
-/

namespace A322672.P11752665781791757975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) ^ 2 : ℚ) / (A324981 (n + 1) : ℚ)

end

end A322672.P11752665781791757975

namespace A322672

/-- `A266265(n+1)²/A324981(n+1)` -/
def P11752665781791757975.Spec : Prop :=
  ∀ n, P11752665781791757975.a n = (A322672 (n + 1) : ℚ)

end A322672

/-!
# A322673: a(n) = numerator of Product_{d|n} (sigma(d)/d) where sigma(k) = the sum of the divisors of k (A000203).

The programs for A322673, the canonical program `A322673.P9006485126655051311` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322673 has offset 1).

The definition of A322673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322673.P9006485126655051311

`A206032(n+1)/gcd(A007955(n+1), A206032(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A322673

/-- `A206032(n+1)/gcd(A007955(n+1), A206032(n+1))` -/
def P9006485126655051311.Spec : Prop :=
  ∀ n, P9006485126655051311.a n = (A322673 (n + 1) : ℚ)

end A322673

/-! ## A322673.P9381233843396059696

`A324987(n+1)/gcd(A306705(n+1), A324987(n+1))`
-/

namespace A322673.P9381233843396059696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324987 (n + 1) : ℚ) / (Int.gcd (A306705 (n + 1)) (A324987 (n + 1)) : ℚ)

end

end A322673.P9381233843396059696

namespace A322673

/-- `A324987(n+1)/gcd(A306705(n+1), A324987(n+1))` -/
def P9381233843396059696.Spec : Prop :=
  ∀ n, P9381233843396059696.a n = (A322673 (n + 1) : ℚ)

end A322673

/-! ## A322673.P7636618310361069115

`A324980(n+1)/gcd(∏{d}[n+1, #²], A324980(n+1))`
-/

namespace A322673.P7636618310361069115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / (Int.gcd ((∏ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) (A324980 (n + 1)) : ℚ)

end

end A322673.P7636618310361069115

namespace A322673

/-- `A324980(n+1)/gcd(∏{d}[n+1, #²], A324980(n+1))` -/
def P7636618310361069115.Spec : Prop :=
  ∀ n, P7636618310361069115.a n = (A322673 (n + 1) : ℚ)

end A322673

/-! ## A322673.P13210353688905595953

`A324980(n+1)/gcd(A062758(n+1), A324980(n+1))`
-/

namespace A322673.P13210353688905595953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / (Int.gcd (A062758 (n + 1)) (A324980 (n + 1)) : ℚ)

end

end A322673.P13210353688905595953

namespace A322673

/-- `A324980(n+1)/gcd(A062758(n+1), A324980(n+1))` -/
def P13210353688905595953.Spec : Prop :=
  ∀ n, P13210353688905595953.a n = (A322673 (n + 1) : ℚ)

end A322673

/-! ## A322673.P17598786849766872935

`A206032((n+1)/A266227(A334489(n+1)))`
-/

namespace A322673.P17598786849766872935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206032 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A266227 (A334489 (n + 1)).toNat : ℚ))).toNat

end

end A322673.P17598786849766872935

namespace A322673

/-- `A206032((n+1)/A266227(A334489(n+1)))` -/
def P17598786849766872935.Spec : Prop :=
  ∀ n, P17598786849766872935.a n = A322673 (n + 1)

end A322673

/-!
# A322674: Square array read by antidiagonals: T(n, k) = 1 if the digits of p = n*k in base 2 are exactly the same as the digits of p when considering the base-2 representations of n, k and p as base-10 numbers, otherwise T(n, k) = 0.

The programs for A322674, there is no canonical definition to state claims against.
-/

/-! ## A322674.P12552512775448481405

`C(2, A061858(n))`
-/

namespace A322674.P12552512775448481405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A061858 n).toNat

end

end A322674.P12552512775448481405

/-! ## A322674.P8260008115759997240

`C(2, A362367(n))`
-/

namespace A322674.P8260008115759997240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A362367 n).toNat

end

end A322674.P8260008115759997240

/-! ## A322674.P79479440988288264

`A000007(A061858(n))`
-/

namespace A322674.P79479440988288264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A061858 n).toNat

end

end A322674.P79479440988288264

/-! ## A322674.P18160162091874140834

`A010051(A061858(n)+2)`
-/

namespace A322674.P18160162091874140834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A061858 n + 2).toNat

end

end A322674.P18160162091874140834

/-! ## A322674.P3809205266564902623

`A302777(A061858(n)+2)`
-/

namespace A322674.P3809205266564902623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (A061858 n + 2).toNat

end

end A322674.P3809205266564902623

/-! ## A322674.P12891150376826254756

`A010051(xor(2, A061858(n)))`
-/

namespace A322674.P12891150376826254756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.xor 2 (A061858 n)).toNat

end

end A322674.P12891150376826254756

/-! ## A322674.P272213727464798627

`A000038(n)^A061858(n)`
-/

namespace A322674.P272213727464798627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A061858 n : ℤ)

end

end A322674.P272213727464798627

/-! ## A322674.P18039055658545132913

`C(A048720(n), A004247(n))`
-/

namespace A322674.P18039055658545132913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048720 n).toNat (A004247 n).toNat

end

end A322674.P18039055658545132913

/-! ## A322674.P14434390732040299396

`C(A067138(n), A004247(n))`
-/

namespace A322674.P14434390732040299396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067138 n).toNat (A004247 n).toNat

end

end A322674.P14434390732040299396

/-! ## A322674.P6681520191236664725

`∏{d}[A061858(n), A001221(#)]`
-/

namespace A322674.P6681520191236664725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A322674.P6681520191236664725

/-! ## A322674.P2113875422859478704

`∏{d}[A061858(n), A001222(#)]`
-/

namespace A322674.P2113875422859478704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A322674.P2113875422859478704

/-! ## A322674.P12648548951275629188

`∏{d}[A061858(n), A008683(#)]`
-/

namespace A322674.P12648548951275629188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A322674.P12648548951275629188

/-! ## A322674.P17912279780697390417

`A000035(∏{p}[A061858(n), #])`
-/

namespace A322674.P17912279780697390417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A322674.P17912279780697390417

/-! ## A322674.P10544725745038930014

`∏{p}[A061858(n), A002264(#)]`
-/

namespace A322674.P10544725745038930014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002264 p

end

end A322674.P10544725745038930014

/-! ## A322674.P16783160861246234351

`A000007(A004247(n)-A067138(n))`
-/

namespace A322674.P16783160861246234351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004247 n - A067138 n).toNat

end

end A322674.P16783160861246234351

/-! ## A322674.P1737888154982283195

`A000007(xor(A004247(n), A067138(n)))`
-/

namespace A322674.P1737888154982283195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A004247 n) (A067138 n)).toNat

end

end A322674.P1737888154982283195

/-! ## A322674.P15745658866568603087

`A000038(A004247(n)-A067138(n))/2`
-/

namespace A322674.P15745658866568603087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A004247 n - A067138 n).toNat : ℚ) / 2

end

end A322674.P15745658866568603087

/-! ## A322674.P963620035501505546

`∏{p}[A004247(n)-A067138(n), A000038(#)]`
-/

namespace A322674.P963620035501505546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n - A067138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000038 p

end

end A322674.P963620035501505546

/-! ## A322674.P9300223273216254858

`A000079(A004247(n)-A067138(n))%2`
-/

namespace A322674.P9300223273216254858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A004247 n - A067138 n).toNat) 2

end

end A322674.P9300223273216254858

/-! ## A322674.P6001661621152954698

`and(1, A000400(A004247(n)-A067138(n)))`
-/

namespace A322674.P6001661621152954698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000400 (A004247 n - A067138 n).toNat)

end

end A322674.P6001661621152954698

/-!
# A322675: a(n) = n * (4*n + 3)^2.

The programs for A322675, the canonical program `A322675.P1473965758112648766` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322675 has offset 0).

The definition of A322675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n+3)²` (program `A322675.P1473965758112648766`, by `A322675.P1473965758112648766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322675.P1473965758112648766

`n*(4*n+3)²`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322675

/-- `n*(4*n+3)²` -/
def P1473965758112648766.Spec : Prop :=
  ∀ n, (P1473965758112648766.a n : ℤ) = A322675 n

theorem P1473965758112648766.correct : P1473965758112648766.Spec := by
  intro n
  simp only [A322675]

end A322675

/-! ## A322675.P6837120364467536984

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=49, a(2)=242, a(3)=675`
-/

namespace A322675.P6837120364467536984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 49, 242, 675] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A322675.P6837120364467536984

namespace A322675

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6837120364467536984.Spec : Prop :=
  ∀ n, P6837120364467536984.a n = A322675 n

theorem P6837120364467536984.correct : P6837120364467536984.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A322675, Nat.add_sub_cancel, A322675.P6837120364467536984.a, A322675.P1473965758112648766.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A322675, Nat.add_sub_cancel, A322675.P6837120364467536984.a, A322675.P1473965758112648766.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A322675

/-! ## A322675.P7884793796897016357

`floor(A322830(n)/2)`
-/

namespace A322675.P7884793796897016357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322830 n : ℚ) / 2⌋

end

end A322675.P7884793796897016357

namespace A322675

/-- `floor(A322830(n)/2)` -/
def P7884793796897016357.Spec : Prop :=
  ∀ n, P7884793796897016357.a n = A322675 n

end A322675

/-! ## A322675.P10229300278457938365

`∑[A158638(n)]-1`
-/

namespace A322675.P10229300278457938365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A322675.P10229300278457938365

namespace A322675

/-- `∑[A158638(n)]-1` -/
def P10229300278457938365.Spec : Prop :=
  ∀ n, P10229300278457938365.a n = A322675 n

end A322675

/-! ## A322675.P15145644007995819102

`A181773(n+1)+n`
-/

namespace A322675.P15145644007995819102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181773 (n + 1) + (n : ℤ)

end

end A322675.P15145644007995819102

namespace A322675

/-- `A181773(n+1)+n` -/
def P15145644007995819102.Spec : Prop :=
  ∀ n, P15145644007995819102.a n = A322675 n

theorem P15145644007995819102.correct : P15145644007995819102.Spec := by
  intro n
  simp only [A322675, Nat.add_sub_cancel, A322675.P15145644007995819102.a, A322675.P1473965758112648766.a, A181773, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322675

/-! ## A322675.P18236931080266655979

`4*A300758(n)+n`
-/

namespace A322675.P18236931080266655979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A300758 n + (n : ℤ)

end

end A322675.P18236931080266655979

namespace A322675

/-- `4*A300758(n)+n` -/
def P18236931080266655979.Spec : Prop :=
  ∀ n, P18236931080266655979.a n = A322675 n

theorem P18236931080266655979.correct : P18236931080266655979.Spec := by
  intro n
  simp only [A322675, Nat.add_sub_cancel, A322675.P18236931080266655979.a, A322675.P1473965758112648766.a, A300758, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322675

/-! ## A322675.P4715098899046980077

`Δ[A056220(n)²]+n`
-/

namespace A322675.P4715098899046980077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A322675.P4715098899046980077

namespace A322675

/-- `Δ[A056220(n)²]+n` -/
def P4715098899046980077.Spec : Prop :=
  ∀ n, P4715098899046980077.a n = A322675 n

theorem P4715098899046980077.correct : P4715098899046980077.Spec := by
  intro n
  simp only [A322675, Nat.add_sub_cancel, A322675.P4715098899046980077.f1, A322675.P4715098899046980077.a, A322675.P1473965758112648766.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322675

/-! ## A322675.P13406368991658405881

`A193250(n+1)-(n+1)`
-/

namespace A322675.P13406368991658405881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193250 (n + 1) - (n + 1 : ℤ)

end

end A322675.P13406368991658405881

namespace A322675

/-- `A193250(n+1)-(n+1)` -/
def P13406368991658405881.Spec : Prop :=
  ∀ n, P13406368991658405881.a n = A322675 n

theorem P13406368991658405881.correct : P13406368991658405881.Spec := by
  intro n
  simp only [A322675, Nat.add_sub_cancel, A322675.P13406368991658405881.a, A322675.P1473965758112648766.a, A193250, A193250.P11851534502741015744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322675

/-! ## A322675.P14927866133453603411

`A280059(n)+A182868(n)`
-/

namespace A322675.P14927866133453603411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280059 n + A182868 n

end

end A322675.P14927866133453603411

namespace A322675

/-- `A280059(n)+A182868(n)` -/
def P14927866133453603411.Spec : Prop :=
  ∀ n, P14927866133453603411.a n = A322675 n

theorem P14927866133453603411.correct : P14927866133453603411.Spec := by
  intro n
  simp only [A322675, Nat.add_sub_cancel, A322675.P14927866133453603411.a, A322675.P1473965758112648766.a, A182868, A182868.P7978343847695056203.a, A280059, A280059.P842335069521915048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322675

/-! ## A322675.P1491111481408638975

`A160674(n)-A050492(n+1)`
-/

namespace A322675.P1491111481408638975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n - A050492 (n + 1)

end

end A322675.P1491111481408638975

namespace A322675

/-- `A160674(n)-A050492(n+1)` -/
def P1491111481408638975.Spec : Prop :=
  ∀ n, P1491111481408638975.a n = A322675 n

theorem P1491111481408638975.correct : P1491111481408638975.Spec := by
  intro n
  simp only [A322675, Nat.add_sub_cancel, A322675.P1491111481408638975.a, A322675.P1473965758112648766.a, A050492, A050492.P6544951122689102902.a, A160674, A160674.P9701766189526379957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322675

/-! ## A322675.P722757217224174168

`A322745(n)%A193250(n+1)`
-/

namespace A322675.P722757217224174168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322745 n) (A193250 (n + 1))

end

end A322675.P722757217224174168

namespace A322675

/-- `A322745(n)%A193250(n+1)` -/
def P722757217224174168.Spec : Prop :=
  ∀ n, P722757217224174168.a n = A322675 n

end A322675

/-! ## A322675.P16210614924515871369

`Δ[A173121(n)]+n`
-/

namespace A322675.P16210614924515871369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A322675.P16210614924515871369

namespace A322675

/-- `Δ[A173121(n)]+n` -/
def P16210614924515871369.Spec : Prop :=
  ∀ n, P16210614924515871369.a n = A322675 n

theorem P16210614924515871369.correct : P16210614924515871369.Spec := by
  intro n
  simp only [A322675, Nat.add_sub_cancel, A322675.P16210614924515871369.f1, A322675.P16210614924515871369.a, A322675.P1473965758112648766.a, A173121, A173121.P5048505696504643898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322675

/-! ## A322675.P9491934057068075840

`Δ[A239607(n)]+n`
-/

namespace A322675.P9491934057068075840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A322675.P9491934057068075840

namespace A322675

/-- `Δ[A239607(n)]+n` -/
def P9491934057068075840.Spec : Prop :=
  ∀ n, P9491934057068075840.a n = A322675 n

theorem P9491934057068075840.correct : P9491934057068075840.Spec := by
  intro n
  simp only [A322675, Nat.add_sub_cancel, A322675.P9491934057068075840.f1, A322675.P9491934057068075840.a, A322675.P1473965758112648766.a, A239607, A239607.P10195960424083872381.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322675

/-! ## A322675.P2076852535957152833

`A007588(2*n+1)-(n+1)`
-/

namespace A322675.P2076852535957152833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (2 * n + 1) - (n + 1 : ℤ)

end

end A322675.P2076852535957152833

namespace A322675

/-- `A007588(2*n+1)-(n+1)` -/
def P2076852535957152833.Spec : Prop :=
  ∀ n, P2076852535957152833.a n = A322675 n

theorem P2076852535957152833.correct : P2076852535957152833.Spec := by
  intro n
  simp only [A322675, Nat.add_sub_cancel, A322675.P2076852535957152833.a, A322675.P1473965758112648766.a, A007588, A007588.P13302891266756921093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322675

/-! ## A322675.P2653872994475114390

`A281381(2*n)+A202804(n)`
-/

namespace A322675.P2653872994475114390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281381 (2 * n) + A202804 n

end

end A322675.P2653872994475114390

namespace A322675

/-- `A281381(2*n)+A202804(n)` -/
def P2653872994475114390.Spec : Prop :=
  ∀ n, P2653872994475114390.a n = A322675 n

end A322675

/-! ## A322675.P3759708566013411872

`A139277(n)+A035006(2*n+1)`
-/

namespace A322675.P3759708566013411872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139277 n + A035006 (2 * n + 1)

end

end A322675.P3759708566013411872

namespace A322675

/-- `A139277(n)+A035006(2*n+1)` -/
def P3759708566013411872.Spec : Prop :=
  ∀ n, P3759708566013411872.a n = A322675 n

theorem P3759708566013411872.correct : P3759708566013411872.Spec := by
  intro n
  simp only [A322675, Nat.add_sub_cancel, A322675.P3759708566013411872.a, A322675.P1473965758112648766.a, A035006, A035006.P8233523708171598530.a, A139277, A139277.P7712727305449482595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322675

/-! ## A322675.P10945680123946808121

`A280058(A005843(n+1))+n`
-/

namespace A322675.P10945680123946808121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 (A005843 (n + 1)).toNat + (n : ℤ)

end

end A322675.P10945680123946808121

namespace A322675

/-- `A280058(A005843(n+1))+n` -/
def P10945680123946808121.Spec : Prop :=
  ∀ n, P10945680123946808121.a n = A322675 n

end A322675

/-!
# A322676: Numbers k > 0 such that k has more divisors d, such that d-1 is prime, than any other smaller positive number, with a(1) = 1.

The programs for A322676, there is no canonical definition to state claims against.
-/

/-! ## A322676.P2401965453355897865

`A341119(A322678(n+1))`
-/

namespace A322676.P2401965453355897865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341119 (A322678 (n + 1)).toNat

end

end A322676.P2401965453355897865

/-! ## A322676.P12462110061312119126

`A341119(record[A072627(n+1)])`
-/

namespace A322676.P12462110061312119126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341119 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322676.P12462110061312119126

/-! ## A322676.P177110414315331115

`A263098(∑[(2^n-2)^floor(atan(n))])`
-/

namespace A322676.P177110414315331115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 2 : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263098 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A322676.P177110414315331115

/-! ## A322676.P16358658343818759206

`A263098(A132732(n))`
-/

namespace A322676.P16358658343818759206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263098 (A132732 n).toNat

end

end A322676.P16358658343818759206

/-! ## A322676.P5837434951894162634

`A263098(∑[A296965(n)]+1)`
-/

namespace A322676.P5837434951894162634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263098 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A322676.P5837434951894162634

/-!
# A322677: a(n) = 16*n*(n+1)*(2*n+1)^2.

The programs for A322677, the canonical program `A322677.P15951521492401261500` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322677 has offset 0).

The definition of A322677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n*(n+1)*(2*n+1)²` (program `A322677.P15951521492401261500`, by `A322677.P15951521492401261500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322677.P15951521492401261500

`16*n*(n+1)*(2*n+1)²`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322677

/-- `16*n*(n+1)*(2*n+1)²` -/
def P15951521492401261500.Spec : Prop :=
  ∀ n, (P15951521492401261500.a n : ℤ) = A322677 n

theorem P15951521492401261500.correct : P15951521492401261500.Spec := by
  intro n
  simp only [A322677]

end A322677

/-! ## A322677.P18138982890981318623

`A033996(A033996(n))`
-/

namespace A322677.P18138982890981318623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (A033996 n).toNat

end

end A322677.P18138982890981318623

namespace A322677

/-- `A033996(A033996(n))` -/
def P18138982890981318623.Spec : Prop :=
  ∀ n, P18138982890981318623.a n = A322677 n

end A322677

/-! ## A322677.P14439761856185963678

`xor(1, (∑[16*n]+1)²)`
-/

namespace A322677.P14439761856185963678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2)

end

end A322677.P14439761856185963678

namespace A322677

/-- `xor(1, (∑[16*n]+1)²)` -/
def P14439761856185963678.Spec : Prop :=
  ∀ n, (P14439761856185963678.a n : ℤ) = A322677 n

end A322677

/-! ## A322677.P8535239107167515353

`lcm(2, 8*C((2*n+1)², 2))`
-/

namespace A322677.P8535239107167515353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (8 * Nat.choose ((2 * n + 1) ^ 2) 2)

end

end A322677.P8535239107167515353

namespace A322677

/-- `lcm(2, 8*C((2*n+1)², 2))` -/
def P8535239107167515353.Spec : Prop :=
  ∀ n, (P8535239107167515353.a n : ℤ) = A322677 n

end A322677

/-! ## A322677.P2398690948944717011

`A069129(n+1)²-1`
-/

namespace A322677.P2398690948944717011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1) ^ 2 - 1

end

end A322677.P2398690948944717011

namespace A322677

/-- `A069129(n+1)²-1` -/
def P2398690948944717011.Spec : Prop :=
  ∀ n, P2398690948944717011.a n = A322677 n

end A322677

/-! ## A322677.P3377484679342622944

`Δ[A063523(n)]²-1`
-/

namespace A322677.P3377484679342622944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A322677.P3377484679342622944

namespace A322677

/-- `Δ[A063523(n)]²-1` -/
def P3377484679342622944.Spec : Prop :=
  ∀ n, P3377484679342622944.a n = A322677 n

end A322677

/-! ## A322677.P328103576030993909

`A173121(Δ[n²])`
-/

namespace A322677.P328103576030993909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173121 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A322677.P328103576030993909

namespace A322677

/-- `A173121(Δ[n²])` -/
def P328103576030993909.Spec : Prop :=
  ∀ n, P328103576030993909.a n = A322677 n

end A322677

/-! ## A322677.P162634870533105274

`A239607(Δ[n²])-1`
-/

namespace A322677.P162634870533105274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A322677.P162634870533105274

namespace A322677

/-- `A239607(Δ[n²])-1` -/
def P162634870533105274.Spec : Prop :=
  ∀ n, P162634870533105274.a n = A322677 n

end A322677

/-! ## A322677.P17381544383975065203

`lcm(2, A173121(2*n+1))`
-/

namespace A322677.P17381544383975065203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A173121 (2 * n + 1))

end

end A322677.P17381544383975065203

namespace A322677

/-- `lcm(2, A173121(2*n+1))` -/
def P17381544383975065203.Spec : Prop :=
  ∀ n, (P17381544383975065203.a n : ℤ) = A322677 n

end A322677

/-! ## A322677.P1757603694517419382

`A288486(2*n+1)-A069074(2*n)`
-/

namespace A322677.P1757603694517419382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288486 (2 * n + 1) - A069074 (2 * n)

end

end A322677.P1757603694517419382

namespace A322677

/-- `A288486(2*n+1)-A069074(2*n)` -/
def P1757603694517419382.Spec : Prop :=
  ∀ n, P1757603694517419382.a n = A322677 n

theorem P1757603694517419382.correct : P1757603694517419382.Spec := by
  intro n
  simp only [A322677, Nat.add_sub_cancel, A322677.P1757603694517419382.a, A322677.P15951521492401261500.a, A069074, A069074.P4700341989723259479.a, A288486, A288486.P17561168282274558050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322677

/-! ## A322677.P1282911048096120891

`A141046(2*n+1)-A016742(2*n+1)`
-/

namespace A322677.P1282911048096120891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141046 (2 * n + 1) - A016742 (2 * n + 1)

end

end A322677.P1282911048096120891

namespace A322677

/-- `A141046(2*n+1)-A016742(2*n+1)` -/
def P1282911048096120891.Spec : Prop :=
  ∀ n, P1282911048096120891.a n = A322677 n

theorem P1282911048096120891.correct : P1282911048096120891.Spec := by
  intro n
  simp only [A322677, Nat.add_sub_cancel, A322677.P1282911048096120891.a, A322677.P15951521492401261500.a, A016742, A016742.P17821809754172938154.a, A141046, A141046.P17031355750207900223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322677

/-! ## A322677.P7591904915432280257

`A211412(2*n+1)-A053755(2*n+1)`
-/

namespace A322677.P7591904915432280257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211412 (2 * n + 1) - A053755 (2 * n + 1)

end

end A322677.P7591904915432280257

namespace A322677

/-- `A211412(2*n+1)-A053755(2*n+1)` -/
def P7591904915432280257.Spec : Prop :=
  ∀ n, P7591904915432280257.a n = A322677 n

theorem P7591904915432280257.correct : P7591904915432280257.Spec := by
  intro n
  simp only [A322677, Nat.add_sub_cancel, A322677.P7591904915432280257.a, A322677.P15951521492401261500.a, A053755, A053755.P11748163540145338459.a, A211412, A211412.P16318477645808081843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322677

/-! ## A322677.P4889536698466718654

`A144130(2*n+1)-A239607(2*n+1)`
-/

namespace A322677.P4889536698466718654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 (2 * n + 1) - A239607 (2 * n + 1)

end

end A322677.P4889536698466718654

namespace A322677

/-- `A144130(2*n+1)-A239607(2*n+1)` -/
def P4889536698466718654.Spec : Prop :=
  ∀ n, P4889536698466718654.a n = A322677 n

theorem P4889536698466718654.correct : P4889536698466718654.Spec := by
  intro n
  simp only [A322677, Nat.add_sub_cancel, A322677.P4889536698466718654.a, A322677.P15951521492401261500.a, A144130, A144130.P7760986985961990642.a, A239607, A239607.P10195960424083872381.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322677

/-! ## A322677.P14292863521059277690

`A121671(2*n+1)-A272870(2*n+1)`
-/

namespace A322677.P14292863521059277690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121671 (2 * n + 1) - A272870 (2 * n + 1)

end

end A322677.P14292863521059277690

namespace A322677

/-- `A121671(2*n+1)-A272870(2*n+1)` -/
def P14292863521059277690.Spec : Prop :=
  ∀ n, P14292863521059277690.a n = A322677 n

theorem P14292863521059277690.correct : P14292863521059277690.Spec := by
  intro n
  simp only [A322677, Nat.add_sub_cancel, A322677.P14292863521059277690.a, A322677.P15951521492401261500.a, A121671, A121671.P11352218429020484864.a, A272870, A272870.P17182819688272473876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322677

/-! ## A322677.P15457758687918355038

`A158057(∑[n])²-1`
-/

namespace A322677.P15457758687918355038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A322677.P15457758687918355038

namespace A322677

/-- `A158057(∑[n])²-1` -/
def P15457758687918355038.Spec : Prop :=
  ∀ n, P15457758687918355038.a n = A322677 n

end A322677

/-! ## A322677.P7752008574826159476

`A017078(n²+n)-1`
-/

namespace A322677.P7752008574826159476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 (n ^ 2 + n) - 1

end

end A322677.P7752008574826159476

namespace A322677

/-- `A017078(n²+n)-1` -/
def P7752008574826159476.Spec : Prop :=
  ∀ n, P7752008574826159476.a n = A322677 n

theorem P7752008574826159476.correct : P7752008574826159476.Spec := by
  intro n
  simp only [A322677, Nat.add_sub_cancel, A322677.P7752008574826159476.a, A322677.P15951521492401261500.a, A017078, A017078.P592742087923068107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322677

/-!
# A322678: Records in A072627.

The programs for A322678, there is no canonical definition to state claims against.
-/

/-! ## A322678.P4458777753136280379

`A072627(A322676(n+1))`
-/

namespace A322678.P4458777753136280379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A322676 (n + 1)).toNat

end

end A322678.P4458777753136280379

/-! ## A322678.P5728141528738416276

`A322977(A322676(n+1))-A057428(n)`
-/

namespace A322678.P5728141528738416276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (A322676 (n + 1)).toNat - A057428 n

end

end A322678.P5728141528738416276

/-! ## A322678.P9245595798939196541

`A322977(A322676(n+1))+abs(A062157(n))`
-/

namespace A322678.P9245595798939196541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (A322676 (n + 1)).toNat + |A062157 n|

end

end A322678.P9245595798939196541

/-! ## A322678.P5228545946785147689

`A322977(A322676(n+1))+char[A007318(n)]`
-/

namespace A322678.P5228545946785147689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (A322676 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322678.P5228545946785147689

/-! ## A322678.P15280541218407377766

`A322977(A322676(n+1))+A001221(A001316(n))`
-/

namespace A322678.P15280541218407377766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (A322676 (n + 1)).toNat + A001221 (A001316 n).toNat

end

end A322678.P15280541218407377766

/-!
# A322680: Four-column table read by rows: Quadruples that have the same value of phi, sigma, and tau.

The programs for A322680, there is no canonical definition to state claims against.
-/

/-! ## A322680.P3221644724558513831

`lcm(2, A322690(n+1))`
-/

namespace A322680.P3221644724558513831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A322690 (n + 1))

end

end A322680.P3221644724558513831

/-! ## A322680.P8376145586263675757

`A322690(A387051(n))`
-/

namespace A322680.P8376145586263675757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322690 (A387051 n).toNat

end

end A322680.P8376145586263675757

/-! ## A322680.P10048360636829265948

`A322690(∑[A063435(n)])`
-/

namespace A322680.P10048360636829265948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322690 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322680.P10048360636829265948

/-! ## A322680.P5669424798109766236

`A322690(A044922(n+1))`
-/

namespace A322680.P5669424798109766236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322690 (A044922 (n + 1)).toNat

end

end A322680.P5669424798109766236

/-! ## A322680.P11243502624538839269

`A322690(A044923(n+1))`
-/

namespace A322680.P11243502624538839269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322690 (A044923 (n + 1)).toNat

end

end A322680.P11243502624538839269

/-!
# A322681: Five-column table read by rows: Quintuples that have the same value of phi, sigma, and tau.

The programs for A322681, there is no canonical definition to state claims against.
-/

/-! ## A322681.P7005365757694919235

`lcm(2, A322691(n+1))`
-/

namespace A322681.P7005365757694919235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A322691 (n + 1))

end

end A322681.P7005365757694919235

/-! ## A322681.P5550883601847817055

`A322691(comp[(n-5)*n²])`
-/

namespace A322681.P5550883601847817055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 5) * (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322691 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A322681.P5550883601847817055

/-! ## A322681.P14089214207068898514

`A322691(n+1)+A011744(n)`
-/

namespace A322681.P14089214207068898514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322691 (n + 1) + A011744 n

end

end A322681.P14089214207068898514

/-! ## A322681.P1547224904765498865

`A322691(n+1)+A011745(n)`
-/

namespace A322681.P1547224904765498865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322691 (n + 1) + A011745 n

end

end A322681.P1547224904765498865

/-! ## A322681.P4757264982468878587

`A322691(n+1)+A025438(n)`
-/

namespace A322681.P4757264982468878587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322691 (n + 1) + A025438 n

end

end A322681.P4757264982468878587

/-!
# A322682: Six-column table read by rows: Sextuples that have the same value of phi, sigma, and tau.

The programs for A322682, there is no canonical definition to state claims against.
-/

/-! ## A322682.P5325285760229656435

`lcm(2, A322692(n+1))`
-/

namespace A322682.P5325285760229656435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A322692 (n + 1))

end

end A322682.P5325285760229656435

/-! ## A322682.P8649509693405505703

`A322692(comp[5*∑[n-4]])`
-/

namespace A322682.P8649509693405505703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322692 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A322682.P8649509693405505703

/-! ## A322682.P9882757537976704363

`A322692(n+1)+A011738(n)`
-/

namespace A322682.P9882757537976704363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322692 (n + 1) + A011738 n

end

end A322682.P9882757537976704363

/-! ## A322682.P4248987727575950857

`A322692(n+1)+A011739(n)`
-/

namespace A322682.P4248987727575950857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322692 (n + 1) + A011739 n

end

end A322682.P4248987727575950857

/-! ## A322682.P5042690404908853493

`A322692(n+1)+A011740(n)`
-/

namespace A322682.P5042690404908853493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322692 (n + 1) + A011740 n

end

end A322682.P5042690404908853493

/-!
# A322683: Seven-column table read by rows: Septuples that have the same value of phi, sigma, and tau.

The programs for A322683, there is no canonical definition to state claims against.
-/

/-! ## A322683.P1268249628894203508

`record[A322693(n+1)]`
-/

namespace A322683.P1268249628894203508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322683.P1268249628894203508

/-! ## A322683.P7415147718378319156

`lcm(2, A322693(A000027(n+1)))`
-/

namespace A322683.P7415147718378319156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A322693 (A000027 (n + 1)).toNat)

end

end A322683.P7415147718378319156

/-! ## A322683.P3047754960358401585

`A322693(n+1)+A011742(n)`
-/

namespace A322683.P3047754960358401585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322693 (n + 1) + A011742 n

end

end A322683.P3047754960358401585

/-! ## A322683.P14740488017025220005

`A322693(n+1)+A011743(n)`
-/

namespace A322683.P14740488017025220005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322693 (n + 1) + A011743 n

end

end A322683.P14740488017025220005

/-!
# A322684: Eight-column table read by rows: Octuples that have the same value of phi, sigma, and tau.

The programs for A322684, there is no canonical definition to state claims against.
-/

/-! ## A322684.P10710558726469014950

`A322694(n+1)+char[24]`
-/

namespace A322684.P10710558726469014950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322694 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A322684.P10710558726469014950

/-! ## A322684.P11492927370703572739

`A322694(A348553(n))`
-/

namespace A322684.P11492927370703572739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322694 (A348553 n).toNat

end

end A322684.P11492927370703572739

/-! ## A322684.P680290086777118765

`A322694(A387051(n))`
-/

namespace A322684.P680290086777118765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322694 (A387051 n).toNat

end

end A322684.P680290086777118765

/-! ## A322684.P14972592474917002003

`A322694(A387108(n))`
-/

namespace A322684.P14972592474917002003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322694 (A387108 n).toNat

end

end A322684.P14972592474917002003

/-! ## A322684.P1510973943320438123

`A322694(A387109(n))`
-/

namespace A322684.P1510973943320438123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322694 (A387109 n).toNat

end

end A322684.P1510973943320438123

/-!
# A322685: Nine-column table read by rows: 9-tuples that have the same value of phi, sigma, and tau.

The programs for A322685, there is no canonical definition to state claims against.
-/

/-! ## A322685.P12334962369415939627

`lcm(2, A322695(n+1))`
-/

namespace A322685.P12334962369415939627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A322695 (n + 1))

end

end A322685.P12334962369415939627

/-! ## A322685.P2902645304294944345

`A322695(comp[or(13*n, n*(-1)^n)])`
-/

namespace A322685.P2902645304294944345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (13 * n : ℤ) ((n : ℤ) * (-1) ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322695 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A322685.P2902645304294944345

/-! ## A322685.P16440952298781184476

`A322695(comp[or(2, 22*(n+2))-n]+1)`
-/

namespace A322685.P16440952298781184476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (22 * (n + 2)) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322695 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A322685.P16440952298781184476

/-! ## A322685.P12133788605968119021

`A322695((n+1)*ceil(floor(sqrt(n+1))/7))`
-/

namespace A322685.P12133788605968119021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322695 ((n + 1 : ℤ) * ⌈(Nat.sqrt (n + 1) : ℚ) / 7⌉).toNat

end

end A322685.P12133788605968119021

/-! ## A322685.P10736202724009639778

`A322695(n+1)+A011732(n)`
-/

namespace A322685.P10736202724009639778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322695 (n + 1) + A011732 n

end

end A322685.P10736202724009639778

/-!
# A322686: Ten-column table read by rows: 10-tuples that have the same value of phi, sigma, and tau.

The programs for A322686, there is no canonical definition to state claims against.
-/

/-! ## A322686.P9203232692742072491

`lcm(2, A322696(n+1))`
-/

namespace A322686.P9203232692742072491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A322696 (n + 1))

end

end A322686.P9203232692742072491

/-! ## A322686.P15961012386071837423

`A322697(∑{digits}[n, #]+1)`
-/

namespace A322686.P15961012386071837423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322697 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1)

end

end A322686.P15961012386071837423

/-! ## A322686.P13323299412554257370

`A322696(A348553(n))`
-/

namespace A322686.P13323299412554257370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322696 (A348553 n).toNat

end

end A322686.P13323299412554257370

/-! ## A322686.P8604791370184261960

`A322696(A387051(n))`
-/

namespace A322686.P8604791370184261960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322696 (A387051 n).toNat

end

end A322686.P8604791370184261960

/-! ## A322686.P5939853854716364684

`A322696(A387108(n))`
-/

namespace A322686.P5939853854716364684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322696 (A387108 n).toNat

end

end A322686.P5939853854716364684

/-!
# A322687: Eleven-column table read by rows: 11-tuples that have the same value of phi, sigma, and tau.

The programs for A322687, there is no canonical definition to state claims against.
-/

/-! ## A322687.P10317057217979023740

`record[A322697(n+1)]`
-/

namespace A322687.P10317057217979023740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322687.P10317057217979023740

/-! ## A322687.P582142209785280107

`A322697(comp[C(2*n, 2)^n-1])`
-/

namespace A322687.P582142209785280107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322697 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A322687.P582142209785280107

/-! ## A322687.P456078296736043901

`A322697(n+1-C(∑[char[19*n+9]], 2))`
-/

namespace A322687.P456078296736043901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n + 9

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322697 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A322687.P456078296736043901

/-! ## A322687.P16078478394839695132

`A322697(A348553(n))`
-/

namespace A322687.P16078478394839695132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322697 (A348553 n).toNat

end

end A322687.P16078478394839695132

/-! ## A322687.P8357526836125139459

`A322697(A387051(n))`
-/

namespace A322687.P8357526836125139459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322697 (A387051 n).toNat

end

end A322687.P8357526836125139459

/-!
# A322688: Two-column table read by rows: Primitive distinct pairs that have the same value of phi, sigma, and tau.

The programs for A322688, there is no canonical definition to state claims against.
-/

/-! ## A322688.P1968129798795576738

`A134922(eq[A136480(n), A213002(n)])`
-/

namespace A322688.P1968129798795576738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134922 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322688.P1968129798795576738

/-! ## A322688.P14034957647440609903

`A134922(lt[A308709(n+1), A341497(n+3)])`
-/

namespace A322688.P14034957647440609903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341497 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134922 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322688.P14034957647440609903

/-!
# A322689: Three-column table read by rows: Primitive distinct triples that have the same value of phi, sigma, and tau.

The programs for A322689, there is no canonical definition to state claims against.
-/

/-! ## A322689.P10954772849594463056

`A322679(A071669(n+1))`
-/

namespace A322689.P10954772849594463056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322679 (A071669 (n + 1)).toNat

end

end A322689.P10954772849594463056

/-! ## A322689.P4236020509089810720

`A322679(A071670(n+1))`
-/

namespace A322689.P4236020509089810720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322679 (A071670 (n + 1)).toNat

end

end A322689.P4236020509089810720

/-! ## A322689.P13788624517032423871

`A322679(A090111(n+1))`
-/

namespace A322689.P13788624517032423871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322679 (A090111 (n + 1)).toNat

end

end A322689.P13788624517032423871

/-! ## A322689.P11361117704420025096

`A322679(n+1)%A126657(n+3)²`
-/

namespace A322689.P11361117704420025096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322679 (n + 1)) (A126657 (n + 3) ^ 2)

end

end A322689.P11361117704420025096

/-! ## A322689.P6184204246101281357

`A358777(A000230(n))+A322679(n+1)`
-/

namespace A322689.P6184204246101281357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A000230 n).toNat + A322679 (n + 1)

end

end A322689.P6184204246101281357

/-!
# A322690: Four-column table read by rows: Primitive distinct quadruples that have the same value of phi, sigma, and tau.

The programs for A322690, there is no canonical definition to state claims against.
-/

/-! ## A322690.P13364616704786594978

`A322680(n+1)`
-/

namespace A322690.P13364616704786594978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322680 (n + 1)

end

end A322690.P13364616704786594978

/-!
# A322691: Five-column table read by rows: Primitive distinct quintuples that have the same value of phi, sigma, and tau.

The programs for A322691, there is no canonical definition to state claims against.
-/

/-! ## A322691.P860356850316860333

`A322681(n+1)`
-/

namespace A322691.P860356850316860333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322681 (n + 1)

end

end A322691.P860356850316860333

/-!
# A322692: Six-column table read by rows: Primitive distinct sextuples that have the same value of phi, sigma, and tau.

The programs for A322692, there is no canonical definition to state claims against.
-/

/-! ## A322692.P8364953295219881105

`A322682(n+1)`
-/

namespace A322692.P8364953295219881105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322682 (n + 1)

end

end A322692.P8364953295219881105

/-! ## A322692.P7307828051422614818

`lcm(3, A322682(A348553(n)))`
-/

namespace A322692.P7307828051422614818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A322682 (A348553 n).toNat)

end

end A322692.P7307828051422614818

/-! ## A322692.P9934159831270767454

`A322682(A348553(n))/A063435(n)`
-/

namespace A322692.P9934159831270767454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322682 (A348553 n).toNat : ℚ) / (A063435 n : ℚ)

end

end A322692.P9934159831270767454

/-!
# A322693: Seven-column table read by rows: Primitive distinct septuples that have the same value of phi, sigma, and tau.

The programs for A322693, there is no canonical definition to state claims against.
-/

/-! ## A322693.P5411144197045878369

`A322683(n+1)`
-/

namespace A322693.P5411144197045878369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322683 (n + 1)

end

end A322693.P5411144197045878369

/-! ## A322693.P17144102904972851173

`A322692(∑[A045912(n)!])`
-/

namespace A322693.P17144102904972851173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A045912 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322693.P17144102904972851173

/-! ## A322693.P15064525969106373698

`record[A322682(A244580(n+1))]`
-/

namespace A322693.P15064525969106373698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322682 (A244580 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322693.P15064525969106373698

/-!
# A322694: Eight-column table read by rows: Primitive distinct octuples that have the same value of phi, sigma, and tau.

The programs for A322694, there is no canonical definition to state claims against.
-/

/-! ## A322694.P4190933932749869115

`A322684(n+1)`
-/

namespace A322694.P4190933932749869115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322684 (n + 1)

end

end A322694.P4190933932749869115

/-!
# A322695: Nine-column table read by rows: Primitive distinct 9-tuples that have the same value of phi, sigma, and tau.

The programs for A322695, there is no canonical definition to state claims against.
-/

/-! ## A322695.P7309926477519088707

`A322685(n+1)`
-/

namespace A322695.P7309926477519088707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322685 (n + 1)

end

end A322695.P7309926477519088707

/-! ## A322695.P10455304816463531441

`record[A322685(∑[A186727(2*n)])]`
-/

namespace A322695.P10455304816463531441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322685 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322695.P10455304816463531441

/-!
# A322696: Ten-column table read by rows: Primitive distinct 10-tuples that have the same value of phi, sigma, and tau.

The programs for A322696, there is no canonical definition to state claims against.
-/

/-! ## A322696.P14260422880554184823

`A322686(n+1)`
-/

namespace A322696.P14260422880554184823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322686 (n + 1)

end

end A322696.P14260422880554184823

/-!
# A322698: Number of regular graphs with half-edges on n labeled vertices.

The programs for A322698, there is no canonical definition to state claims against.
-/

/-! ## A322698.P6639789821718092555

`record[gcd(2, n+1)*A140879(n+1)]`
-/

namespace A322698.P6639789821718092555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A140879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322698.P6639789821718092555

/-! ## A322698.P4653012854932491721

`record[A000034(n)*A140879(n+1)]`
-/

namespace A322698.P4653012854932491721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A140879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322698.P4653012854932491721

/-! ## A322698.P15880518181564489367

`record[A061393(n)*A140879(n+1)]`
-/

namespace A322698.P15880518181564489367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n * A140879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322698.P15880518181564489367

/-! ## A322698.P4570556148518033435

`record[A000032(C(2, n+2))*A140879(n+1)]`
-/

namespace A322698.P4570556148518033435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A140879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322698.P4570556148518033435

/-!
# A322699: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where A(n,k) is 1/2 * (-1 + Sum_{j=0..k} binomial(2*k,2*j)*(n+1)^(k-j)*n^j).

The programs for A322699, there is no canonical definition to state claims against.
-/

/-! ## A322699.P10333380446177212344

`floor(A322790(n)/2)`
-/

namespace A322699.P10333380446177212344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322790 n : ℚ) / 2⌋

end

end A322699.P10333380446177212344

/-! ## A322699.P232193871656107333

`ceil((A347706(2*n+5)+A322790(n))/2)-1`
-/

namespace A322699.P232193871656107333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347706 (2 * n + 5) + A322790 n : ℚ) / 2⌉ - 1

end

end A322699.P232193871656107333

/-! ## A322699.P2073169348048745530

`A014682(A322790(n)-1)`
-/

namespace A322699.P2073169348048745530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A322790 n - 1).toNat

end

end A322699.P2073169348048745530

/-! ## A322699.P3902622269463103472

`A318516(A322790(n)+1)-1`
-/

namespace A322699.P3902622269463103472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A322790 n + 1).toNat - 1

end

end A322699.P3902622269463103472

/-! ## A322699.P8877360630344229423

`A249122(A322790(n))`
-/

namespace A322699.P8877360630344229423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A322790 n).toNat

end

end A322699.P8877360630344229423

