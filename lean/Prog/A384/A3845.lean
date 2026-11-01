import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
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
# A384500: Numbers k such that the parity of k and omega(k) are not equal.

The programs for A384500, there is no canonical definition to state claims against.
-/

/-! ## A384500.P345304965653314342

`lt[∏{p}[2*n, -#], 0]`
-/

namespace A384500.P345304965653314342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A384500.P345304965653314342

/-! ## A384500.P8070074912938645519

`lt[∏{e}[2*n, -#], 0]`
-/

namespace A384500.P8070074912938645519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A384500.P8070074912938645519

/-! ## A384500.P7541506715890992869

`lt[1, (-2)^∑{p}[2*n, #]]`
-/

namespace A384500.P7541506715890992869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A384500.P7541506715890992869

/-! ## A384500.P6480360284761545891

`A098904(n+1)/2`
-/

namespace A384500.P6480360284761545891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098904 (n + 1) : ℚ) / 2

end

end A384500.P6480360284761545891

/-! ## A384500.P8387316049037765659

`lt[A023900(2*(n+1)), 0]+1`
-/

namespace A384500.P8387316049037765659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A384500.P8387316049037765659

/-! ## A384500.P10100159155195514586

`lt[A349340(2*(n+1)), 0]+1`
-/

namespace A384500.P10100159155195514586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A384500.P10100159155195514586

/-! ## A384500.P2787161692641400323

`lt[and(1, A001221(n+1)+3*n), 1]+1`
-/

namespace A384500.P2787161692641400323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001221 (n + 1) + (3 * n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A384500.P2787161692641400323

/-! ## A384500.P8688628124349873052

`A001281(A098904(n+1))`
-/

namespace A384500.P8688628124349873052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A098904 (n + 1)).toNat

end

end A384500.P8688628124349873052

/-! ## A384500.P14704231659518288737

`∪[A098904(n+1), A185307(n+1)]`
-/

namespace A384500.P14704231659518288737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384500.P14704231659518288737

/-!
# A384501: a(n) = Sum_{k=0..n} abs(Stirling1(n,k)) * Stirling2(n,n-k).

The programs for A384501, there is no canonical definition to state claims against.
-/

/-! ## A384501.P15262505187807134680

`A046259(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A384501.P15262505187807134680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A046259 (a (n - 1)).toNat

end

end A384501.P15262505187807134680

/-!
# A384504: a(n) = Stirling1(n^2, n).

The programs for A384504, there is no canonical definition to state claims against.
-/

/-! ## A384504.P4885731938698590852

`A048994(C(n²+1, 2)+n)`
-/

namespace A384504.P4885731938698590852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (Nat.choose (n ^ 2 + 1) 2 + n)

end

end A384504.P4885731938698590852

/-! ## A384504.P16276634854013638393

`A132393(∑[2*n]*(∑[n]-n+1))`
-/

namespace A384504.P16276634854013638393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ) + 1)).toNat

end

end A384504.P16276634854013638393

/-! ## A384504.P9107176684261695762

`A048994(2*A006528(n))`
-/

namespace A384504.P9107176684261695762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (2 * A006528 n).toNat

end

end A384504.P9107176684261695762

/-! ## A384504.P14927310988053980757

`A048994(A037270(n)+n)`
-/

namespace A384504.P14927310988053980757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A037270 n + (n : ℤ)).toNat

end

end A384504.P14927310988053980757

/-!
# A384506: a(n) = 2^(n-7)*(n^4 - 6*n^3 + 59*n^2 - 54*n)/3.

The programs for A384506, the canonical program `A384506.P5937823451638168484` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384506 has offset 0).

The definition of A384506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384506.P5937823451638168484

`2^(n-7)*(n^4-6*n^3+59*n²-54*n)/3`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384506

/-- `2^(n-7)*(n^4-6*n^3+59*n²-54*n)/3` -/
def P5937823451638168484.Spec : Prop :=
  ∀ n, P5937823451638168484.a n = (A384506 n : ℚ)

end A384506

/-! ## A384506.P112070325988866612

`ogf((x^2-4x^3+5x^4)/(1-10x+40x^2-80x^3+80x^4-32x^5))`
-/

namespace A384506.P112070325988866612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -4, 5] [1, -10, 40, -80, 80, -32] n

end

end A384506.P112070325988866612

namespace A384506

/-- `ogf((x^2-4x^3+5x^4)/(1-10x+40x^2-80x^3+80x^4-32x^5))` -/
def P112070325988866612.Spec : Prop :=
  ∀ n, P112070325988866612.a n = A384506 n

end A384506

/-! ## A384506.P4514254747022211752

`A000392(n+1)-A056170(A005651(n))`
-/

namespace A384506.P4514254747022211752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) - A056170 (A005651 n).toNat

end

end A384506.P4514254747022211752

namespace A384506

/-- `A000392(n+1)-A056170(A005651(n))` -/
def P4514254747022211752.Spec : Prop :=
  ∀ n, P4514254747022211752.a n = A384506 n

end A384506

/-!
# A384508: Nonnegative integers k such that the digits of k include the digits of the digital sum of k as a (not necessarily contiguous) subsequence.

The programs for A384508, there is no canonical definition to state claims against.
-/

/-! ## A384508.P11706650841249438643

`∪[A052018(n+1), A057508(A002824(2*n+3))]`
-/

namespace A384508.P11706650841249438643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A002824 (2 * n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384508.P11706650841249438643

/-!
# A384511: a(n) is the number of ways to partition n X n X n cube into five distinct cuboids with three full-length axial spanning parts sharing only two cube corners each.

The programs for A384511, there is no canonical definition to state claims against.
-/

/-! ## A384511.P15771134423623458699

`∑[floor(abs(1-n)*xor(1, n)/2)]`
-/

namespace A384511.P15771134423623458699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - (n : ℤ)| * (Nat.xor 1 n : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384511.P15771134423623458699

/-! ## A384511.P15094885200316535079

`or(1, (n-2)*n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A384511.P15094885200316535079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.lor 1 (((n : ℤ) - 2) * (n : ℤ)) + a (n - 2)

end

end A384511.P15094885200316535079

/-! ## A384511.P4301815975404320702

`(n-1)²-n%2+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A384511.P4301815975404320702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((n : ℤ) - 1) ^ 2 - ((n % 2 : ℕ) : ℤ) + a (n - 2)

end

end A384511.P4301815975404320702

/-! ## A384511.P13815296149890621714

`∑[ceil((xor(1, n)*(n-1)-1)/2)]+1`
-/

namespace A384511.P13815296149890621714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.xor 1 n : ℤ) * ((n : ℤ) - 1) - 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A384511.P13815296149890621714

/-! ## A384511.P9007082730033372511

`a(n-2)+n²-record[or(2, n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A384511.P9007082730033372511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + (n ^ 2 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384511.P9007082730033372511

/-!
# A384512: Record terms in A384698.

The programs for A384512, there is no canonical definition to state claims against.
-/

/-! ## A384512.P14499553164064222585

`record[A384698(n+2)]`
-/

namespace A384512.P14499553164064222585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384698 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384512.P14499553164064222585

/-!
# A384513: a(n) = number of iterations of z -> z^2 + c(n) with c(n) = 16/(n^2) + (1/n)*i + 3/8 + (sqrt(3)/8)*i to reach |z| > 2, starting with z = 0.

The programs for A384513, there is no canonical definition to state claims against.
-/

/-! ## A384513.P6019209018839752162

`∑[A088911(3*A384690(n+2))]`
-/

namespace A384513.P6019209018839752162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (3 * A384690 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384513.P6019209018839752162

/-! ## A384513.P15588125033948160324

`∑[A321537(n)^A185415(n+2)]`
-/

namespace A384513.P15588125033948160324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321537 n : ℚ) ^ (A185415 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384513.P15588125033948160324

/-! ## A384513.P11118679169748223732

`A226046(A310111(n+1))`
-/

namespace A384513.P11118679169748223732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A310111 (n + 1)).toNat

end

end A384513.P11118679169748223732

/-! ## A384513.P16519603636194537769

`∑[∑[A005117(A248068(n+2))]%2]`
-/

namespace A384513.P16519603636194537769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A248068 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384513.P16519603636194537769

/-! ## A384513.P9103950917050387663

`A226046(A321895(2*n+1)+A005408(2*n+1))`
-/

namespace A384513.P9103950917050387663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A321895 (2 * n + 1) + A005408 (2 * n + 1)).toNat

end

end A384513.P9103950917050387663

/-!
# A384514: Expansion of e.g.f. 6/(7 - exp(6*x)).

The programs for A384514, there is no canonical definition to state claims against.
-/

/-! ## A384514.P13899150704279772361

`A332700(eq[7, col(n)])`
-/

namespace A384514.P13899150704279772361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A384514.P13899150704279772361

/-! ## A384514.P11536621940978081873

`A326323(eq[15, A099375(n)])`
-/

namespace A384514.P11536621940978081873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A384514.P11536621940978081873

/-! ## A384514.P8590796370056680317

`A326323(eq[7, A144257(n+1)])`
-/

namespace A384514.P8590796370056680317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A384514.P8590796370056680317

/-! ## A384514.P10562068330111947663

`A326323(eq[8, A004736(n+1)])`
-/

namespace A384514.P10562068330111947663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A384514.P10562068330111947663

/-!
# A384517: Nonsquarefree numbers that are squarefree numbers raised to an even power.

The programs for A384517, the canonical program `A384517.P2524242939913956237` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384517 has offset 1).

The definition of A384517 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A384517.P2524242939913956237

`A062770(n+1)²`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A384517

/-- `A062770(n+1)²` -/
def P2524242939913956237.Spec : Prop :=
  ∀ n, P2524242939913956237.a n = A384517 (n + 1)

theorem P2524242939913956237.correct : P2524242939913956237.Spec := by
  intro n
  simp only [A384517, Nat.add_sub_cancel]

end A384517

/-! ## A384517.P6196772063911771247

`A072774(n+2)²`
-/

namespace A384517.P6196772063911771247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 2) ^ 2

end

end A384517.P6196772063911771247

namespace A384517

/-- `A072774(n+2)²` -/
def P6196772063911771247.Spec : Prop :=
  ∀ n, P6196772063911771247.a n = A384517 (n + 1)

end A384517

/-! ## A384517.P13207419293913242780

`∩[A072777(n+1), n²]`
-/

namespace A384517.P13207419293913242780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A384517.P13207419293913242780

namespace A384517

/-- `∩[A072777(n+1), n²]` -/
def P13207419293913242780.Spec : Prop :=
  ∀ n, (P13207419293913242780.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P15796899427445592437

`A072774(2+n)^2`
-/

namespace A384517.P15796899427445592437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (2 + n) ^ 2

end

end A384517.P15796899427445592437

namespace A384517

/-- `A072774(2+n)^2` -/
def P15796899427445592437.Spec : Prop :=
  ∀ n, P15796899427445592437.a n = A384517 (n + 1)

end A384517

/-! ## A384517.P6037250707576138799

`A062770(n+1)*A072774(n+2)`
-/

namespace A384517.P6037250707576138799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1) * A072774 (n + 2)

end

end A384517.P6037250707576138799

namespace A384517

/-- `A062770(n+1)*A072774(n+2)` -/
def P6037250707576138799.Spec : Prop :=
  ∀ n, P6037250707576138799.a n = A384517 (n + 1)

theorem P6037250707576138799.correct : P6037250707576138799.Spec := by
  intro n
  simp only [A384517, Nat.add_sub_cancel, A384517.P6037250707576138799.a, A384517.P2524242939913956237.a, A062770, A062770.P13203404241284622665.a, A072774, A072774.P15867954741118053592.f1, A072774.P15867954741118053592.f2, A072774.P15867954741118053592.a, A062977, A062977.P9824039652820841542.a, A051903, A051903.P11291969349735355414.f1, A051903.P11291969349735355414.a, A051904, A051904.P3503880915053639126.f1, A051904.P3503880915053639126.a, A028310, A028310.P18130301328277559831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384517

/-! ## A384517.P5826791298409757222

`record[A062759(n+2)²]`
-/

namespace A384517.P5826791298409757222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384517.P5826791298409757222

namespace A384517

/-- `record[A062759(n+2)²]` -/
def P5826791298409757222.Spec : Prop :=
  ∀ n, P5826791298409757222.a n = A384517 (n + 1)

end A384517

/-! ## A384517.P13559020203153707193

`record[A327526(n+2)²]`
-/

namespace A384517.P13559020203153707193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384517.P13559020203153707193

namespace A384517

/-- `record[A327526(n+2)²]` -/
def P13559020203153707193.Spec : Prop :=
  ∀ n, P13559020203153707193.a n = A384517 (n + 1)

end A384517

/-! ## A384517.P10825605399217264921

`record[A375931(n+2)²]`
-/

namespace A384517.P10825605399217264921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375931 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384517.P10825605399217264921

namespace A384517

/-- `record[A375931(n+2)²]` -/
def P10825605399217264921.Spec : Prop :=
  ∀ n, P10825605399217264921.a n = A384517 (n + 1)

end A384517

/-! ## A384517.P17940755877805435895

`∩[A000290(n), A072777(n+1)]`
-/

namespace A384517.P17940755877805435895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P17940755877805435895

namespace A384517

/-- `∩[A000290(n), A072777(n+1)]` -/
def P17940755877805435895.Spec : Prop :=
  ∀ n, (P17940755877805435895.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P4032006922344112795

`∩[A034793(n+1), A072777(n+1)]`
-/

namespace A384517.P4032006922344112795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P4032006922344112795

namespace A384517

/-- `∩[A034793(n+1), A072777(n+1)]` -/
def P4032006922344112795.Spec : Prop :=
  ∀ n, (P4032006922344112795.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P5127012950070102128

`∩[A046871(n+1), A072777(n+1)]`
-/

namespace A384517.P5127012950070102128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P5127012950070102128

namespace A384517

/-- `∩[A046871(n+1), A072777(n+1)]` -/
def P5127012950070102128.Spec : Prop :=
  ∀ n, (P5127012950070102128.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P13427022910101102167

`∩[A046870(n+1), A072777(n+1)]`
-/

namespace A384517.P13427022910101102167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P13427022910101102167

namespace A384517

/-- `∩[A046870(n+1), A072777(n+1)]` -/
def P13427022910101102167.Spec : Prop :=
  ∀ n, (P13427022910101102167.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P14363590680370980865

`∩[A020487(n+1), A072777(n+1)]`
-/

namespace A384517.P14363590680370980865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P14363590680370980865

namespace A384517

/-- `∩[A020487(n+1), A072777(n+1)]` -/
def P14363590680370980865.Spec : Prop :=
  ∀ n, (P14363590680370980865.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P10406897275716645697

`∩[A005214(n+1), A072777(n+1)]`
-/

namespace A384517.P10406897275716645697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P10406897275716645697

namespace A384517

/-- `∩[A005214(n+1), A072777(n+1)]` -/
def P10406897275716645697.Spec : Prop :=
  ∀ n, (P10406897275716645697.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P2689812465036604718

`∩[A331221(n+1), A072777(n+1)]`
-/

namespace A384517.P2689812465036604718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P2689812465036604718

namespace A384517

/-- `∩[A331221(n+1), A072777(n+1)]` -/
def P2689812465036604718.Spec : Prop :=
  ∀ n, (P2689812465036604718.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P3997675727365101163

`∩[A330879(n+1), A072777(n+1)]`
-/

namespace A384517.P3997675727365101163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P3997675727365101163

namespace A384517

/-- `∩[A330879(n+1), A072777(n+1)]` -/
def P3997675727365101163.Spec : Prop :=
  ∀ n, (P3997675727365101163.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P12597902974425611219

`∩[A076292(n+1), A195212(n+1)]`
-/

namespace A384517.P12597902974425611219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P12597902974425611219

namespace A384517

/-- `∩[A076292(n+1), A195212(n+1)]` -/
def P12597902974425611219.Spec : Prop :=
  ∀ n, (P12597902974425611219.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P12076793081662851929

`∩[A035121(n+1), A072777(n+1)]`
-/

namespace A384517.P12076793081662851929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P12076793081662851929

namespace A384517

/-- `∩[A035121(n+1), A072777(n+1)]` -/
def P12076793081662851929.Spec : Prop :=
  ∀ n, (P12076793081662851929.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P1295725807787861839

`∩[A076292(n+1), A365869(n+1)]`
-/

namespace A384517.P1295725807787861839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P1295725807787861839

namespace A384517

/-- `∩[A076292(n+1), A365869(n+1)]` -/
def P1295725807787861839.Spec : Prop :=
  ∀ n, (P1295725807787861839.a n : ℤ) = A384517 (n + 1)

end A384517

/-! ## A384517.P11160754039411653425

`∩[A384519(n+1), n²]`
-/

namespace A384517.P11160754039411653425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384519 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A384517.P11160754039411653425

namespace A384517

/-- `∩[A384519(n+1), n²]` -/
def P11160754039411653425.Spec : Prop :=
  ∀ n, (P11160754039411653425.a n : ℤ) = A384517 (n + 1)

end A384517

/-!
# A384518: Nonsquarefree numbers that are squarefree numbers raised to an odd power.

The programs for A384518, there is no canonical definition to state claims against.
-/

/-! ## A384518.P10863317443859639152

`∩[A097054(n+1), A390540(n+1)]`
-/

namespace A384518.P10863317443859639152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P10863317443859639152

/-! ## A384518.P14459765593356563202

`∩[A335988(n+1), A390540(n+1)]`
-/

namespace A384518.P14459765593356563202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P14459765593356563202

/-! ## A384518.P2340185353855727398

`∩[A376173(n+1), A390540(n+1)]`
-/

namespace A384518.P2340185353855727398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P2340185353855727398

/-! ## A384518.P16035617573711259307

`∩[A072777(n+1), A097054(n+1)]`
-/

namespace A384518.P16035617573711259307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P16035617573711259307

/-! ## A384518.P12134820615154233913

`∩[A072777(n+1), A335988(n+1)]`
-/

namespace A384518.P12134820615154233913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P12134820615154233913

/-! ## A384518.P6521159287930651953

`∩[A072777(n+1), A376173(n+1)]`
-/

namespace A384518.P6521159287930651953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P6521159287930651953

/-! ## A384518.P12377381206893991396

`∩[A072777(n+1), A382062(n+1)]`
-/

namespace A384518.P12377381206893991396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P12377381206893991396

/-! ## A384518.P11427803433687795074

`∩[A382062(n+1), A390540(n+1)]`
-/

namespace A384518.P11427803433687795074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P11427803433687795074

/-! ## A384518.P264217335549811793

`∩[A076292(n+1), A097054(n+1)]`
-/

namespace A384518.P264217335549811793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P264217335549811793

/-! ## A384518.P7011745030435281798

`∩[A076292(n+1), A376173(n+1)]`
-/

namespace A384518.P7011745030435281798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P7011745030435281798

/-! ## A384518.P1319536818988006563

`∩[A072777(n+1), A376171(n+1)]`
-/

namespace A384518.P1319536818988006563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P1319536818988006563

/-! ## A384518.P16646106549236284172

`∩[A076292(n+1), A376171(n+1)]`
-/

namespace A384518.P16646106549236284172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P16646106549236284172

/-! ## A384518.P17135019854214666500

`∩[A376171(n+1), A390540(n+1)]`
-/

namespace A384518.P17135019854214666500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P17135019854214666500

/-! ## A384518.P10527173244729654346

`∩[A072777(n+1), A102834(n+1)]`
-/

namespace A384518.P10527173244729654346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P10527173244729654346

/-! ## A384518.P5416973860142794895

`∩[A076292(n+1), A102834(n+1)]`
-/

namespace A384518.P5416973860142794895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P5416973860142794895

/-! ## A384518.P1535738726132690018

`∩[A102834(n+1), A390540(n+1)]`
-/

namespace A384518.P1535738726132690018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P1535738726132690018

/-! ## A384518.P16708122733447690310

`∩[A069236(n+1), A072777(n+1)]`
-/

namespace A384518.P16708122733447690310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P16708122733447690310

/-! ## A384518.P10779468536024011872

`∩[A069236(n+1), A076292(n+1)]`
-/

namespace A384518.P10779468536024011872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P10779468536024011872

/-! ## A384518.P12798357064982748654

`∩[A069236(n+1), A390540(n+1)]`
-/

namespace A384518.P12798357064982748654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384518.P12798357064982748654

/-!
# A384519: Numbers whose powerful part (A057521) is greater than 1 and is equal to a squarefree number raised to an even power (A384517).

The programs for A384519, the canonical program `A384519.P13348821675057678145` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384519 has offset 1).

The definition of A384519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384519.P13348821675057678145

`∩[A072587(n+1), A375142(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A384519

/-- `∩[A072587(n+1), A375142(n+1)]` -/
def P13348821675057678145.Spec : Prop :=
  ∀ n, (P13348821675057678145.a n : ℤ) = A384519 (n + 1)

theorem P13348821675057678145.correct : P13348821675057678145.Spec := by
  intro n
  simp only [A384519, Nat.add_sub_cancel]

end A384519

/-! ## A384519.P11725621485034232427

`∩[A240112(n+1), A375142(n+1)]`
-/

namespace A384519.P11725621485034232427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384519.P11725621485034232427

namespace A384519

/-- `∩[A240112(n+1), A375142(n+1)]` -/
def P11725621485034232427.Spec : Prop :=
  ∀ n, (P11725621485034232427.a n : ℤ) = A384519 (n + 1)

end A384519

/-! ## A384519.P1802954954875560890

`∩[A368714(n+1), A375142(n+1)]`
-/

namespace A384519.P1802954954875560890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384519.P1802954954875560890

namespace A384519

/-- `∩[A368714(n+1), A375142(n+1)]` -/
def P1802954954875560890.Spec : Prop :=
  ∀ n, (P1802954954875560890.a n : ℤ) = A384519 (n + 1)

end A384519

/-! ## A384519.P18153995346308134452

`∩[A375142(n+1), A398820(n+1)]`
-/

namespace A384519.P18153995346308134452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384519.P18153995346308134452

namespace A384519

/-- `∩[A375142(n+1), A398820(n+1)]` -/
def P18153995346308134452.Spec : Prop :=
  ∀ n, (P18153995346308134452.a n : ℤ) = A384519 (n + 1)

end A384519

/-! ## A384519.P13728099604072091098

`∩[A335275(n+1), A375142(n+1)]`
-/

namespace A384519.P13728099604072091098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384519.P13728099604072091098

namespace A384519

/-- `∩[A335275(n+1), A375142(n+1)]` -/
def P13728099604072091098.Spec : Prop :=
  ∀ n, (P13728099604072091098.a n : ℤ) = A384519 (n + 1)

end A384519

/-! ## A384519.P9739273145043984905

`eq[A008683(n+1), A353555(A294875(n+1))]+1`
-/

namespace A384519.P9739273145043984905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (A294875 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A384519.P9739273145043984905

namespace A384519

/-- `eq[A008683(n+1), A353555(A294875(n+1))]+1` -/
def P9739273145043984905.Spec : Prop :=
  ∀ n, (P9739273145043984905.a n : ℤ) = A384519 (n + 1)

end A384519

/-!
# A384520: Numbers whose powerful part (A057521) is greater than 1 and is equal to a squarefree number raised to an odd power (A384518).

The programs for A384520, the canonical program `A384520.P4473728622954603946` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384520 has offset 1).

The definition of A384520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384520.P4473728622954603946

`filter[A375142(n+1), A295316(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A384520

/-- `filter[A375142(n+1), A295316(#)]` -/
def P4473728622954603946.Spec : Prop :=
  ∀ n, P4473728622954603946.a n = A384520 (n + 1)

theorem P4473728622954603946.correct : P4473728622954603946.Spec := by
  intro n
  simp only [A384520, Nat.add_sub_cancel]

end A384520

/-! ## A384520.P17625191993318934022

`∩[A240111(1+n), A375142(n+1)]`
-/

namespace A384520.P17625191993318934022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384520.P17625191993318934022

namespace A384520

/-- `∩[A240111(1+n), A375142(n+1)]` -/
def P17625191993318934022.Spec : Prop :=
  ∀ n, (P17625191993318934022.a n : ℤ) = A384520 (n + 1)

end A384520

/-! ## A384520.P2404345995494613454

`∩[A295661(1+n), A375142(n+1)]`
-/

namespace A384520.P2404345995494613454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384520.P2404345995494613454

namespace A384520

/-- `∩[A295661(1+n), A375142(n+1)]` -/
def P2404345995494613454.Spec : Prop :=
  ∀ n, (P2404345995494613454.a n : ℤ) = A384520 (n + 1)

end A384520

/-! ## A384520.P11424914649851018352

`∩[A375142(n+1), A376142(n+1)]`
-/

namespace A384520.P11424914649851018352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384520.P11424914649851018352

namespace A384520

/-- `∩[A375142(n+1), A376142(n+1)]` -/
def P11424914649851018352.Spec : Prop :=
  ∀ n, (P11424914649851018352.a n : ℤ) = A384520 (n + 1)

end A384520

/-! ## A384520.P8639959195842774638

`∩[A375142(n+1), A365535(n+1)]`
-/

namespace A384520.P8639959195842774638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384520.P8639959195842774638

namespace A384520

/-- `∩[A375142(n+1), A365535(n+1)]` -/
def P8639959195842774638.Spec : Prop :=
  ∀ n, (P8639959195842774638.a n : ℤ) = A384520 (n + 1)

end A384520

/-! ## A384520.P11949415035812755802

`∩[A375142(n+1), A382061(n+1)]`
-/

namespace A384520.P11949415035812755802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384520.P11949415035812755802

namespace A384520

/-- `∩[A375142(n+1), A382061(n+1)]` -/
def P11949415035812755802.Spec : Prop :=
  ∀ n, (P11949415035812755802.a n : ℤ) = A384520 (n + 1)

end A384520

/-! ## A384520.P8143386241857662562

`filter[A375142(n+1), A381955(#)]`
-/

namespace A384520.P8143386241857662562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A384520.P8143386241857662562

namespace A384520

/-- `filter[A375142(n+1), A381955(#)]` -/
def P8143386241857662562.Spec : Prop :=
  ∀ n, P8143386241857662562.a n = A384520 (n + 1)

end A384520

/-!
# A384521: Expansion of e.g.f. 5/(7 - 2*exp(5*x)).

The programs for A384521, there is no canonical definition to state claims against.
-/

/-! ## A384521.P1381361275615376985

`A049980(A000079(n)*A346626(n))`
-/

namespace A384521.P1381361275615376985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (A000079 n * A346626 n).toNat

end

end A384521.P1381361275615376985

/-!
# A384523: Expansion of e.g.f. 3/(7 - 4*exp(3*x)).

The programs for A384523, there is no canonical definition to state claims against.
-/

/-! ## A384523.P6885622225355625786

`4*A243651(a(n-1))` with `a(0)=1`
-/

namespace A384523.P6885622225355625786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A243651 (a (n - 1)).toNat

end

end A384523.P6885622225355625786

/-!
# A384525: Expansion of e.g.f. 5/(6 - exp(5*x)).

The programs for A384525, there is no canonical definition to state claims against.
-/

/-! ## A384525.P11220558780069649231

`A332700(C(n+8, 2)-(n+1))`
-/

namespace A384525.P11220558780069649231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (Nat.choose (n + 8) 2 - (n + 1))

end

end A384525.P11220558780069649231

/-! ## A384525.P12151131701207906691

`A326323(A055999(n+4)-1)`
-/

namespace A384525.P12151131701207906691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (A055999 (n + 4) - 1).toNat

end

end A384525.P12151131701207906691

/-! ## A384525.P9500307597451432434

`A332700(A167499(n+5)+1)`
-/

namespace A384525.P9500307597451432434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332700 (A167499 (n + 5) + 1).toNat

end

end A384525.P9500307597451432434

/-! ## A384525.P11183619252676934270

`A326323(A052905(n+4)-2)`
-/

namespace A384525.P11183619252676934270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (A052905 (n + 4) - 2).toNat

end

end A384525.P11183619252676934270

/-! ## A384525.P6301716536440710058

`A326323(eq[6, A144257(1+n)])`
-/

namespace A384525.P6301716536440710058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A384525.P6301716536440710058

/-! ## A384525.P3770874808926445006

`A326323(eq[7, A004736(n+1)])`
-/

namespace A384525.P3770874808926445006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A384525.P3770874808926445006

/-!
# A384526: Primes p such that p + 6, p + 14 and p + 20 are also primes.

The programs for A384526, the canonical program `A384526.P14913814158777160632` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384526 has offset 1).

The definition of A384526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384526.P16707006213790779905

`∩[A153417(n+1)-6, A153417(n+1)]`
-/

namespace A384526.P16707006213790779905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384526.P16707006213790779905

namespace A384526

/-- `∩[A153417(n+1)-6, A153417(n+1)]` -/
def P16707006213790779905.Spec : Prop :=
  ∀ n, (P16707006213790779905.a n : ℤ) = A384526 (n + 1)

end A384526

/-! ## A384526.P14913814158777160632

`∩[A023201(n+1)-14, A023201(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A384526

/-- `∩[A023201(n+1)-14, A023201(n+1)]` -/
def P14913814158777160632.Spec : Prop :=
  ∀ n, (P14913814158777160632.a n : ℤ) = A384526 (n + 1)

theorem P14913814158777160632.correct : P14913814158777160632.Spec := by
  intro n
  simp only [A384526, Nat.add_sub_cancel]

end A384526

/-!
# A384527: Primes p such that p + 6, p + 12, p + 14, p + 20 and p + 26 are also primes.

The programs for A384527, the canonical program `A384527.P5491213751504575383` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384527 has offset 1).

The definition of A384527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384527.P5491213751504575383

`∩[A384526(n+1)-6, A384526(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A384527

/-- `∩[A384526(n+1)-6, A384526(n+1)]` -/
def P5491213751504575383.Spec : Prop :=
  ∀ n, (P5491213751504575383.a n : ℤ) = A384527 (n + 1)

theorem P5491213751504575383.correct : P5491213751504575383.Spec := by
  intro n
  simp only [A384527, Nat.add_sub_cancel]

end A384527

/-!
# A384530: Intersection of A055932 and A014574.

The programs for A384530, there is no canonical definition to state claims against.
-/

/-! ## A384530.P7618419086945843897

`∩[A055932(n+1), A258838(n+1)]`
-/

namespace A384530.P7618419086945843897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384530.P7618419086945843897

/-! ## A384530.P18158868858866165146

`∩[A014574(n+1), A055932(n+1)]`
-/

namespace A384530.P18158868858866165146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384530.P18158868858866165146

/-! ## A384530.P11335052064975922359

`∩[A055932(n+1), A217259(n+1)]`
-/

namespace A384530.P11335052064975922359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384530.P11335052064975922359

/-! ## A384530.P7418831804340164258

`∩[A055932(n+1), A056853(n+1)]`
-/

namespace A384530.P7418831804340164258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384530.P7418831804340164258

/-! ## A384530.P4653706337625122425

`∩[A055932(n+1), A353073(n+1)]`
-/

namespace A384530.P4653706337625122425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384530.P4653706337625122425

/-! ## A384530.P16512073447587098907

`∩[A055932(n+1), A076083(n+2)]`
-/

namespace A384530.P16512073447587098907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076083 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384530.P16512073447587098907

/-! ## A384530.P14751140404825987428

`∩[A055932(n+1), A114331(n+2)]`
-/

namespace A384530.P14751140404825987428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384530.P14751140404825987428

/-! ## A384530.P10494543239283555997

`∩[A014574(n+1), A066311(n+1)]`
-/

namespace A384530.P10494543239283555997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384530.P10494543239283555997

/-! ## A384530.P12570600789898448558

`∩[A014574(n+1), A073491(n+1)]`
-/

namespace A384530.P12570600789898448558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384530.P12570600789898448558

/-! ## A384530.P6334419515457651898

`∩[A066311(n+1), A217259(n+1)]`
-/

namespace A384530.P6334419515457651898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384530.P6334419515457651898

/-!
# A384531: Multiplicative sequence a(n) with a(p^e) = ((2*e+1) * p - 2*e) * p^(e-1) for prime p and e >= 0.

The programs for A384531, the canonical program `A384531.P15070268753136582785` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384531 has offset 1).

The definition of A384531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384531.P12208129501636465115

`∑{d}[n+1, A000010(#)*A145388((n+1)/#)]`
-/

namespace A384531.P12208129501636465115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A145388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384531.P12208129501636465115

namespace A384531

/-- `∑{d}[n+1, A000010(#)*A145388((n+1)/#)]` -/
def P12208129501636465115.Spec : Prop :=
  ∀ n, P12208129501636465115.a n = A384531 (n + 1)

end A384531

/-! ## A384531.P15070268753136582785

`∑{d}[n+1, A018804(#)*A173557((n+1)/#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A384531

/-- `∑{d}[n+1, A018804(#)*A173557((n+1)/#)]` -/
def P15070268753136582785.Spec : Prop :=
  ∀ n, P15070268753136582785.a n = A384531 (n + 1)

theorem P15070268753136582785.correct : P15070268753136582785.Spec := by
  intro n
  simp only [A384531, Nat.add_sub_cancel]

end A384531

/-! ## A384531.P7816981086614424164

`∑{#}[n, gcd(n+1, #+1)*gcd(n+1, #)]`
-/

namespace A384531.P7816981086614424164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.gcd (n + 1) (k + 1) * Nat.gcd (n + 1) k

end

end A384531.P7816981086614424164

namespace A384531

/-- `∑{#}[n, gcd(n+1, #+1)*gcd(n+1, #)]` -/
def P7816981086614424164.Spec : Prop :=
  ∀ n, (P7816981086614424164.a n : ℤ) = A384531 (n + 1)

end A384531

/-! ## A384531.P10920868868240345726

`A018804((n+1)²)/(n+1)`
-/

namespace A384531.P10920868868240345726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A384531.P10920868868240345726

namespace A384531

/-- `A018804((n+1)²)/(n+1)` -/
def P10920868868240345726.Spec : Prop :=
  ∀ n, P10920868868240345726.a n = (A384531 (n + 1) : ℚ)

end A384531

/-!
# A384533: Inventory sequence starting a(1) = 1 and thereafter recording the number of terms which are the product of 0,1,2,... primes (taken with multiplicity). The count resets following a term = 0.

The programs for A384533, there is no canonical definition to state claims against.
-/

/-! ## A384533.P8437671134148999804

`A101979(A234593(n+2))`
-/

namespace A384533.P8437671134148999804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101979 (A234593 (n + 2)).toNat

end

end A384533.P8437671134148999804

/-! ## A384533.P18318765917845039491

`A357070(n)*A357071(A000217(n+1))`
-/

namespace A384533.P18318765917845039491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n * A357071 (A000217 (n + 1)).toNat

end

end A384533.P18318765917845039491

/-! ## A384533.P3367486585729644703

`A303541(A376785(n))%A219354(n+1)`
-/

namespace A384533.P3367486585729644703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303541 (A376785 n).toNat) (A219354 (n + 1))

end

end A384533.P3367486585729644703

/-!
# A384536: a(n) = 4^n - 2^(n-6)*15*binomial(n,6).

The programs for A384536, the canonical program `A384536.P15435299656690740622` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384536 has offset 0).

The definition of A384536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384536.P15435299656690740622

`4^n-2^(n-6)*15*C(n, 6)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384536

/-- `4^n-2^(n-6)*15*C(n, 6)` -/
def P15435299656690740622.Spec : Prop :=
  ∀ n, P15435299656690740622.a n = (A384536 n : ℚ)

end A384536

/-! ## A384536.P14072993272841165845

`4^n-A328037(A328035(n+1))`
-/

namespace A384536.P14072993272841165845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A328037 (A328035 (n + 1)).toNat

end

end A384536.P14072993272841165845

namespace A384536

/-- `4^n-A328037(A328035(n+1))` -/
def P14072993272841165845.Spec : Prop :=
  ∀ n, P14072993272841165845.a n = A384536 n

end A384536

/-! ## A384536.P16364919665582424422

`A000302(n)-A185044(A034824(n))`
-/

namespace A384536.P16364919665582424422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A185044 (A034824 n).toNat

end

end A384536.P16364919665582424422

namespace A384536

/-- `A000302(n)-A185044(A034824(n))` -/
def P16364919665582424422.Spec : Prop :=
  ∀ n, P16364919665582424422.a n = A384536 n

end A384536

/-!
# A384537: Composite numbers that are equal to the concatenation of the primes and exponents in their prime factorizations in some bases.

The programs for A384537, there is no canonical definition to state claims against.
-/

/-! ## A384537.P17613061492917389349

`A368107((C(n², 59)+1)*(n+1)+1)`
-/

namespace A384537.P17613061492917389349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368107 ((Nat.choose (n ^ 2) 59 + 1) * (n + 1) + 1)

end

end A384537.P17613061492917389349

/-! ## A384537.P7161746423911041484

`A000015(A368107(n+2))`
-/

namespace A384537.P7161746423911041484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A368107 (n + 2)).toNat

end

end A384537.P7161746423911041484

/-! ## A384537.P17728431472156543124

`A368107(A032555(n+2))`
-/

namespace A384537.P17728431472156543124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368107 (A032555 (n + 2)).toNat

end

end A384537.P17728431472156543124

/-! ## A384537.P16981705461665092534

`A368107(A032557(n+2))`
-/

namespace A384537.P16981705461665092534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368107 (A032557 (n + 2)).toNat

end

end A384537.P16981705461665092534

/-!
# A384538: Positive integers k >= 10 for which for every pair of nonempty substrings that concatenate to give k one substring divides the other.

The programs for A384538, there is no canonical definition to state claims against.
-/

/-! ## A384538.P3457019281661048862

`lt[A226036(A133500(n)), A226036(n)]`
-/

namespace A384538.P3457019281661048862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226036 (A133500 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384538.P3457019281661048862

/-! ## A384538.P16352630036826431768

`eq[A160981(n+1), A326307(n)]`
-/

namespace A384538.P16352630036826431768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384538.P16352630036826431768

/-! ## A384538.P8881721555325451825

`eq[A161035(n+1), A326307(n)]`
-/

namespace A384538.P8881721555325451825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384538.P8881721555325451825

/-! ## A384538.P140922399189342502

`eq[A161086(n+1), A326307(n)]`
-/

namespace A384538.P140922399189342502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384538.P140922399189342502

/-! ## A384538.P7958749788147430536

`eq[A161250(n+1), A326307(n)]`
-/

namespace A384538.P7958749788147430536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384538.P7958749788147430536

/-!
# A384539: Zeroless positive integers k for which for every pair of nonempty substrings that concatenate to give k one substring divides the other.

The programs for A384539, there is no canonical definition to state claims against.
-/

/-! ## A384539.P2187779983653872923

`filter[A070255(1+n), A168046(#)]`
-/

namespace A384539.P2187779983653872923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070255 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A384539.P2187779983653872923

/-! ## A384539.P7556310036325166247

`filter[A384538(1+n), A168046(#)]`
-/

namespace A384539.P7556310036325166247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384538 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A384539.P7556310036325166247

/-! ## A384539.P749910452917810776

`∩[A052382(n+1), A070255(n+1)]`
-/

namespace A384539.P749910452917810776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384539.P749910452917810776

/-! ## A384539.P15165731376470025027

`∩[A052382(n+1), A384538(n+1)]`
-/

namespace A384539.P15165731376470025027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384539.P15165731376470025027

/-! ## A384539.P10651586810407839351

`∩[A070255(n+1), A236403(n+1)]`
-/

namespace A384539.P10651586810407839351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384539.P10651586810407839351

/-!
# A384543: Number of distinct values from the bitwise operation i XOR j for all integers i and j in the range [1, n].

The programs for A384543, the canonical program `A384543.P10493386867404407549` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384543 has offset 1).

The definition of A384543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384543.P9114459689960265577

`A352228(A004761(2*(n+2))-A079944(n))`
-/

namespace A384543.P9114459689960265577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 (A004761 (2 * (n + 2)) - A079944 n).toNat

end

end A384543.P9114459689960265577

namespace A384543

/-- `A352228(A004761(2*(n+2))-A079944(n))` -/
def P9114459689960265577.Spec : Prop :=
  ∀ n, P9114459689960265577.a n = A384543 (n + 1)

end A384543

/-! ## A384543.P4164653238398406352

`A352228(n+1-A008966(n+1)+A004755(n+1))`
-/

namespace A384543.P4164653238398406352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 ((n + 1 : ℤ) - A008966 (n + 1) + A004755 (n + 1)).toNat

end

end A384543.P4164653238398406352

namespace A384543

/-- `A352228(n+1-A008966(n+1)+A004755(n+1))` -/
def P4164653238398406352.Spec : Prop :=
  ∀ n, P4164653238398406352.a n = A384543 (n + 1)

end A384543

/-! ## A384543.P10493386867404407549

`A352228(A352228(3*n+1)+A004755(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A384543

/-- `A352228(A352228(3*n+1)+A004755(n+1))` -/
def P10493386867404407549.Spec : Prop :=
  ∀ n, P10493386867404407549.a n = A384543 (n + 1)

theorem P10493386867404407549.correct : P10493386867404407549.Spec := by
  intro n
  simp only [A384543, Nat.add_sub_cancel]

end A384543

/-! ## A384543.P9543490051747422027

`A338623(A076877(n+1)+A004762(2*(n+1)))`
-/

namespace A384543.P9543490051747422027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A076877 (n + 1) + A004762 (2 * (n + 1))).toNat

end

end A384543.P9543490051747422027

namespace A384543

/-- `A338623(A076877(n+1)+A004762(2*(n+1)))` -/
def P9543490051747422027.Spec : Prop :=
  ∀ n, P9543490051747422027.a n = A384543 (n + 1)

end A384543

/-!
# A384544: Numbers k such that A383327(k) = 1.

The programs for A384544, there is no canonical definition to state claims against.
-/

/-! ## A384544.P2602498551849699628

`eq[1, A383327(n+1)]+1`
-/

namespace A384544.P2602498551849699628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A384544.P2602498551849699628

/-! ## A384544.P7852613865622746650

`filter[2*n+1, A383327(#)]`
-/

namespace A384544.P7852613865622746650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383327 (f1 j) = 1) n)

end

end A384544.P7852613865622746650

/-! ## A384544.P2652446719004479155

`A057427(3*n+1)+lt[A383327(n+1), 2]`
-/

namespace A384544.P2652446719004479155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383327 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 1) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A384544.P2652446719004479155

/-! ## A384544.P4031452547533643828

`A381952(2*n+3)+lt[A383327(n+1), 2]`
-/

namespace A384544.P4031452547533643828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383327 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381952 (2 * n + 3) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A384544.P4031452547533643828

/-! ## A384544.P2825455636409669883

`A363329(3*n+4)+lt[A383327(n+1), 2]`
-/

namespace A384544.P2825455636409669883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383327 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363329 (3 * n + 4) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A384544.P2825455636409669883

/-!
# A384545: Smallest prime(n)-smooth multiplier, m, such that both m*(prime(n)#)-1 and m*(prime(n)#)+1 are prime.

The programs for A384545, there is no canonical definition to state claims against.
-/

/-! ## A384545.P567499160420820046

`A382785(n+1)/A002110(n+1)`
-/

namespace A384545.P567499160420820046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382785 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ)

end

end A384545.P567499160420820046

/-!
# A384554: The sum of the infinitary divisors of n that are cubefree.

The programs for A384554, there is no canonical definition to state claims against.
-/

/-! ## A384554.P9761465374732818076

`A394255(A053165(1+n))`
-/

namespace A384554.P9761465374732818076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394255 (A053165 (1 + n)).toNat

end

end A384554.P9761465374732818076

/-! ## A384554.P1438022702016377307

`gcd(A340580(n+1), A394255(n+1))`
-/

namespace A384554.P1438022702016377307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A340580 (n + 1)) (A394255 (n + 1))

end

end A384554.P1438022702016377307

/-! ## A384554.P7482582989321982516

`gcd(A145313(n+1), A394255(n+1))`
-/

namespace A384554.P7482582989321982516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145313 (n + 1)) (A394255 (n + 1))

end

end A384554.P7482582989321982516

/-! ## A384554.P12440239771078969053

`A049417(n+1)%A131547(A006257(n+1))`
-/

namespace A384554.P12440239771078969053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049417 (n + 1)) (A131547 (A006257 (n + 1)).toNat)

end

end A384554.P12440239771078969053

/-! ## A384554.P12297493650767818939

`A049417(n+1)%A008590(A124795(n+1))`
-/

namespace A384554.P12297493650767818939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049417 (n + 1)) (A008590 (A124795 (n + 1)).toNat)

end

end A384554.P12297493650767818939

/-!
# A384555: The largest infinitary divisor of n that is cubefree.

The programs for A384555, the canonical program `A384555.P15004222589011881551` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384555 has offset 1).

The definition of A384555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384555.P4924433446487312848

`A007948(A053165(1+n))`
-/

namespace A384555.P4924433446487312848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A053165 (1 + n)).toNat

end

end A384555.P4924433446487312848

namespace A384555

/-- `A007948(A053165(1+n))` -/
def P4924433446487312848.Spec : Prop :=
  ∀ n, P4924433446487312848.a n = A384555 (n + 1)

end A384555

/-! ## A384555.P16251844262070500903

`A007948((n+1)/A008835(n+1))`
-/

namespace A384555.P16251844262070500903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat

end

end A384555.P16251844262070500903

namespace A384555

/-- `A007948((n+1)/A008835(n+1))` -/
def P16251844262070500903.Spec : Prop :=
  ∀ n, P16251844262070500903.a n = A384555 (n + 1)

end A384555

/-! ## A384555.P965163859285449919

`A355261((n+1)/A008835(n+1))`
-/

namespace A384555.P965163859285449919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat

end

end A384555.P965163859285449919

namespace A384555

/-- `A355261((n+1)/A008835(n+1))` -/
def P965163859285449919.Spec : Prop :=
  ∀ n, P965163859285449919.a n = A384555 (n + 1)

end A384555

/-! ## A384555.P14276231293083521114

`lcm(A007913(n+1), A335324(n+1))`
-/

namespace A384555.P14276231293083521114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A335324 (n + 1))

end

end A384555.P14276231293083521114

namespace A384555

/-- `lcm(A007913(n+1), A335324(n+1))` -/
def P14276231293083521114.Spec : Prop :=
  ∀ n, (P14276231293083521114.a n : ℤ) = A384555 (n + 1)

end A384555

/-! ## A384555.P3551996872040020811

`A000188(A053165(n+1))*A056554(n+1)`
-/

namespace A384555.P3551996872040020811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A053165 (n + 1)).toNat * A056554 (n + 1)

end

end A384555.P3551996872040020811

namespace A384555

/-- `A000188(A053165(n+1))*A056554(n+1)` -/
def P3551996872040020811.Spec : Prop :=
  ∀ n, P3551996872040020811.a n = A384555 (n + 1)

end A384555

/-! ## A384555.P15004222589011881551

`A053165((n+1)/A062378(A053165(n+1)))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A384555

/-- `A053165((n+1)/A062378(A053165(n+1)))` -/
def P15004222589011881551.Spec : Prop :=
  ∀ n, P15004222589011881551.a n = A384555 (n + 1)

theorem P15004222589011881551.correct : P15004222589011881551.Spec := by
  intro n
  simp only [A384555, Nat.add_sub_cancel]

end A384555

/-! ## A384555.P268731442288006113

`gcd(A053165(n+1), A164853(n+1))`
-/

namespace A384555.P268731442288006113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053165 (n + 1)) (A164853 (n + 1))

end

end A384555.P268731442288006113

namespace A384555

/-- `gcd(A053165(n+1), A164853(n+1))` -/
def P268731442288006113.Spec : Prop :=
  ∀ n, (P268731442288006113.a n : ℤ) = A384555 (n + 1)

end A384555

/-!
# A384556: The sum of the exponential divisors of n that are cubefree.

The programs for A384556, the canonical program `A384556.P4300059835760640918` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384556 has offset 1).

The definition of A384556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384556.P11151291977606492912

`A051377((∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])²/(n+1))`
-/

namespace A384556.P11151291977606492912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (SequenceMachineLib.roundAway (((((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p)) ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A384556.P11151291977606492912

namespace A384556

/-- `A051377((∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])²/(n+1))` -/
def P11151291977606492912.Spec : Prop :=
  ∀ n, P11151291977606492912.a n = A384556 (n + 1)

end A384556

/-! ## A384556.P17970408554444371025

`A322857((∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])²/(n+1))`
-/

namespace A384556.P17970408554444371025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322857 (SequenceMachineLib.roundAway (((((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p)) ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A384556.P17970408554444371025

namespace A384556

/-- `A322857((∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])²/(n+1))` -/
def P17970408554444371025.Spec : Prop :=
  ∀ n, P17970408554444371025.a n = A384556 (n + 1)

end A384556

/-! ## A384556.P14088332229164648442

`A003968(A066990(1+n))`
-/

namespace A384556.P14088332229164648442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (A066990 (1 + n)).toNat

end

end A384556.P14088332229164648442

namespace A384556

/-- `A003968(A066990(1+n))` -/
def P14088332229164648442.Spec : Prop :=
  ∀ n, P14088332229164648442.a n = A384556 (n + 1)

end A384556

/-! ## A384556.P15792454696727670851

`A051377(A066990(n+1))`
-/

namespace A384556.P15792454696727670851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (A066990 (n + 1)).toNat

end

end A384556.P15792454696727670851

namespace A384556

/-- `A051377(A066990(n+1))` -/
def P15792454696727670851.Spec : Prop :=
  ∀ n, P15792454696727670851.a n = A384556 (n + 1)

end A384556

/-! ## A384556.P13689320971515219399

`A361174(A365296(1+n))`
-/

namespace A384556.P13689320971515219399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361174 (A365296 (1 + n)).toNat

end

end A384556.P13689320971515219399

namespace A384556

/-- `A361174(A365296(1+n))` -/
def P13689320971515219399.Spec : Prop :=
  ∀ n, P13689320971515219399.a n = A384556 (n + 1)

end A384556

/-! ## A384556.P336983486580954504

`A392448(A338782(n+1))`
-/

namespace A384556.P336983486580954504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392448 (A338782 (n + 1)).toNat

end

end A384556.P336983486580954504

namespace A384556

/-- `A392448(A338782(n+1))` -/
def P336983486580954504.Spec : Prop :=
  ∀ n, P336983486580954504.a n = A384556 (n + 1)

end A384556

/-! ## A384556.P4300059835760640918

`A007947(n+1)*A367990(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A384556

/-- `A007947(n+1)*A367990(n+1)` -/
def P4300059835760640918.Spec : Prop :=
  ∀ n, P4300059835760640918.a n = A384556 (n + 1)

theorem P4300059835760640918.correct : P4300059835760640918.Spec := by
  intro n
  simp only [A384556, Nat.add_sub_cancel]

end A384556

/-! ## A384556.P235672897234545325

`∏{p}[n+1, #]*A000203(A336643(n+1))`
-/

namespace A384556.P235672897234545325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A000203 (A336643 (n + 1)).toNat

end

end A384556.P235672897234545325

namespace A384556

/-- `∏{p}[n+1, #]*A000203(A336643(n+1))` -/
def P235672897234545325.Spec : Prop :=
  ∀ n, P235672897234545325.a n = A384556 (n + 1)

end A384556

/-! ## A384556.P4951178511389244520

`A007947(n+1)*A048250(A336643(n+1))`
-/

namespace A384556.P4951178511389244520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A048250 (A336643 (n + 1)).toNat

end

end A384556.P4951178511389244520

namespace A384556

/-- `A007947(n+1)*A048250(A336643(n+1))` -/
def P4951178511389244520.Spec : Prop :=
  ∀ n, P4951178511389244520.a n = A384556 (n + 1)

end A384556

/-!
# A384558: The sum of the exponential divisors of n that are exponentially odd numbers (A268335).

The programs for A384558, there is no canonical definition to state claims against.
-/

/-! ## A384558.P815401554835710807

`A051377(A331737(n+1))`
-/

namespace A384558.P815401554835710807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (A331737 (n + 1)).toNat

end

end A384558.P815401554835710807

/-! ## A384558.P11032656814873253444

`A051377((n+1)/A331738(n+1))`
-/

namespace A384558.P11032656814873253444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A331738 (n + 1) : ℚ))).toNat

end

end A384558.P11032656814873253444

/-! ## A384558.P3780767787720428228

`and(A375155(n+1), A384559(n+1))`
-/

namespace A384558.P3780767787720428228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A375155 (n + 1)) (A384559 (n + 1))

end

end A384558.P3780767787720428228

/-! ## A384558.P1915465156954770865

`A384559(n+1)%A004733(n)`
-/

namespace A384558.P1915465156954770865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384559 (n + 1)) (A004733 n)

end

end A384558.P1915465156954770865

/-! ## A384558.P6061956775636264711

`and(A003261(n+1), A384559(n+1))`
-/

namespace A384558.P6061956775636264711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A384559 (n + 1))

end

end A384558.P6061956775636264711

/-! ## A384558.P2329132684323336138

`and(A163383(n+1), A384559(n+1))`
-/

namespace A384558.P2329132684323336138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163383 (n + 1)) (A384559 (n + 1))

end

end A384558.P2329132684323336138

/-! ## A384558.P15401960725076468099

`and(A063396(n), A384559(n+1))`
-/

namespace A384558.P15401960725076468099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063396 n) (A384559 (n + 1))

end

end A384558.P15401960725076468099

/-! ## A384558.P12853431540595797754

`and(A055580(n), A384559(n+1))`
-/

namespace A384558.P12853431540595797754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A384559 (n + 1))

end

end A384558.P12853431540595797754

/-! ## A384558.P15953821966880459960

`and(A107392(n), A384559(n+1))`
-/

namespace A384558.P15953821966880459960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 n) (A384559 (n + 1))

end

end A384558.P15953821966880459960

/-! ## A384558.P1489923923224132878

`and(A107464(n), A384559(n+1))`
-/

namespace A384558.P1489923923224132878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A384559 (n + 1))

end

end A384558.P1489923923224132878

/-! ## A384558.P8890921188352588295

`and(A107953(n), A384559(n+1))`
-/

namespace A384558.P8890921188352588295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A384559 (n + 1))

end

end A384558.P8890921188352588295

/-! ## A384558.P11687090679715391754

`and(A211386(n), A384559(n+1))`
-/

namespace A384558.P11687090679715391754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211386 n) (A384559 (n + 1))

end

end A384558.P11687090679715391754

/-! ## A384558.P275071719167796434

`and(A107954(n), A384559(n+1))`
-/

namespace A384558.P275071719167796434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A384559 (n + 1))

end

end A384558.P275071719167796434

/-! ## A384558.P7218318271623830445

`and(A107955(n), A384559(n+1))`
-/

namespace A384558.P7218318271623830445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A384559 (n + 1))

end

end A384558.P7218318271623830445

/-! ## A384558.P8026309792582252565

`gcd(A345022(n+2), A384559(n+1))`
-/

namespace A384558.P8026309792582252565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345022 (n + 2)) (A384559 (n + 1))

end

end A384558.P8026309792582252565

/-! ## A384558.P6528780269979624748

`gcd(A384559(n+1), A387027(n))`
-/

namespace A384558.P6528780269979624748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A384559 (n + 1)) (A387027 n)

end

end A384558.P6528780269979624748

/-! ## A384558.P9365306558564807897

`A384559(n+1)%A001550(n)`
-/

namespace A384558.P9365306558564807897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384559 (n + 1)) (A001550 n)

end

end A384558.P9365306558564807897

/-! ## A384558.P14322918581491398119

`and(A018886(n+1), A384559(n+1))`
-/

namespace A384558.P14322918581491398119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A384559 (n + 1))

end

end A384558.P14322918581491398119

/-! ## A384558.P13424109221919924098

`and(A164291(n+2), A384559(n+1))`
-/

namespace A384558.P13424109221919924098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164291 (n + 2)) (A384559 (n + 1))

end

end A384558.P13424109221919924098

/-! ## A384558.P3788744340791643241

`and(A060160(n+1), A384559(n+1))`
-/

namespace A384558.P3788744340791643241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A384559 (n + 1))

end

end A384558.P3788744340791643241

/-!
# A384559: The sum of the exponential unitary (or e-unitary) divisors of n that are exponentially odd numbers (A268335).

The programs for A384559, there is no canonical definition to state claims against.
-/

/-! ## A384559.P10459507271704120209

`A361810(A331737(n+1)+A000007(3*(n+1)))`
-/

namespace A384559.P10459507271704120209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361810 (A331737 (n + 1) + A000007 (3 * (n + 1))).toNat

end

end A384559.P10459507271704120209

/-!
# A384561: One fourth of the number of permutations of [n] with |p(i+1) - p(i)| >= 2, for i = 1..(n-1) and n appears at position i = 1 or i = n.

The programs for A384561, the canonical program `A384561.P5420392690080599210` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384561 has offset 5).

The definition of A384561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384561.P5420392690080599210

`A382644(n+4)/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A384561

/-- `A382644(n+4)/2` -/
def P5420392690080599210.Spec : Prop :=
  ∀ n, P5420392690080599210.a n = (A384561 (n + 5) : ℚ)

end A384561

/-! ## A384561.P3344682377168178046

`a(n-1)+A242522(n+5)` with `a(0)=1`
-/

namespace A384561.P3344682377168178046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A242522 (n + 5)

end

end A384561.P3344682377168178046

namespace A384561

/-- `a(n-1)+A242522(n+5)` -/
def P3344682377168178046.Spec : Prop :=
  ∀ n, P3344682377168178046.a n = A384561 (n + 5)

end A384561

/-! ## A384561.P18427997388449621317

`(A001266(n+5)-A242522(n+6))/2`
-/

namespace A384561.P18427997388449621317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001266 (n + 5) - A242522 (n + 6) : ℚ) / 2

end

end A384561.P18427997388449621317

namespace A384561

/-- `(A001266(n+5)-A242522(n+6))/2` -/
def P18427997388449621317.Spec : Prop :=
  ∀ n, P18427997388449621317.a n = (A384561 (n + 5) : ℚ)

end A384561

/-! ## A384561.P14956144500038104679

`∑[A242522(n+5)]`
-/

namespace A384561.P14956144500038104679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242522 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384561.P14956144500038104679

namespace A384561

/-- `∑[A242522(n+5)]` -/
def P14956144500038104679.Spec : Prop :=
  ∀ n, P14956144500038104679.a n = A384561 (n + 5)

end A384561

/-! ## A384561.P11873149902838040012

`A001266(n+4)-a(n-1)` with `a(0)=1`
-/

namespace A384561.P11873149902838040012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001266 (n + 4) - a (n - 1)

end

end A384561.P11873149902838040012

namespace A384561

/-- `A001266(n+4)-a(n-1)` -/
def P11873149902838040012.Spec : Prop :=
  ∀ n, P11873149902838040012.a n = A384561 (n + 5)

end A384561

/-!
# A384562: Number of integer partitions of n with origin-to-boundary graph-distance equal to 4.

The programs for A384562, there is no canonical definition to state claims against.
-/

/-! ## A384562.P7414334699536963684

`A389539(row(row(A035041(n))))`
-/

namespace A384562.P7414334699536963684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389539 (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A035041 n).toNat))

end

end A384562.P7414334699536963684

/-!
# A384565: Consecutive states of the linear congruential pseudo-random number generator 5*s mod 2^35 when started at s=1.

The programs for A384565, there is no canonical definition to state claims against.
-/

/-! ## A384565.P13472869363860332980

`A000351(n)%A000079(A351041(2*n+3))`
-/

namespace A384565.P13472869363860332980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n) (A000079 (A351041 (2 * n + 3)).toNat)

end

end A384565.P13472869363860332980

/-!
# A384566: Area of the unique primitive Pythagorean triple whose inradius is A002378(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A384566, the canonical program `A384566.P10693336845248242478` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384566 has offset 0).

The definition of A384566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384566.P6217054698303665281

`ogf((30x+336x^2+708x^3+336x^4+30x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A384566.P6217054698303665281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 30, 336, 708, 336, 30] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A384566.P6217054698303665281

namespace A384566

/-- `ogf((30x+336x^2+708x^3+336x^4+30x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P6217054698303665281.Spec : Prop :=
  ∀ n, P6217054698303665281.a n = A384566 n

end A384566

/-! ## A384566.P10693336845248242478

`n*(n+1)*(n²+n+1)*(2*n²+2*n+1)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384566

/-- `n*(n+1)*(n²+n+1)*(2*n²+2*n+1)` -/
def P10693336845248242478.Spec : Prop :=
  ∀ n, (P10693336845248242478.a n : ℤ) = A384566 n

theorem P10693336845248242478.correct : P10693336845248242478.Spec := by
  intro n
  simp only [A384566]

end A384566

/-! ## A384566.P12846712786040919481

`3*C(n*2*(n+1)+2, 3)/2`
-/

namespace A384566.P12846712786040919481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n * (2 * (n + 1)) + 2) 3 : ℚ) / 2

end

end A384566.P12846712786040919481

namespace A384566

/-- `3*C(n*2*(n+1)+2, 3)/2` -/
def P12846712786040919481.Spec : Prop :=
  ∀ n, P12846712786040919481.a n = (A384566 n : ℚ)

theorem P12846712786040919481.correct : P12846712786040919481.Spec := by
  intro n
  simp only [A384566, Nat.add_sub_cancel, A384566.P12846712786040919481.a, A384566.P10693336845248242478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384566

/-! ## A384566.P12867470323714489657

`C(2*n*(n+1)+2, 2)*n*(n+1)`
-/

namespace A384566.P12867470323714489657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n * (n + 1) + 2) 2 * n * (n + 1)

end

end A384566.P12867470323714489657

namespace A384566

/-- `C(2*n*(n+1)+2, 2)*n*(n+1)` -/
def P12867470323714489657.Spec : Prop :=
  ∀ n, (P12867470323714489657.a n : ℤ) = A384566 n

theorem P12867470323714489657.correct : P12867470323714489657.Spec := by
  intro n
  simp only [A384566, Nat.add_sub_cancel, A384566.P12867470323714489657.a, A384566.P10693336845248242478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384566

/-! ## A384566.P2226375618924462259

`lcm(∑[2*n], A237516(n+1))`
-/

namespace A384566.P2226375618924462259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A237516 (n + 1))

end

end A384566.P2226375618924462259

namespace A384566

/-- `lcm(∑[2*n], A237516(n+1))` -/
def P2226375618924462259.Spec : Prop :=
  ∀ n, (P2226375618924462259.a n : ℤ) = A384566 n

end A384566

/-! ## A384566.P7514350769674245575

`A008516(n)-lcm((n+1)²+n², Δ[n^3])`
-/

namespace A384566.P7514350769674245575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008516 n - (Int.lcm ((n + 1) ^ 2 + n ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ)

end

end A384566.P7514350769674245575

namespace A384566

/-- `A008516(n)-lcm((n+1)²+n², Δ[n^3])` -/
def P7514350769674245575.Spec : Prop :=
  ∀ n, P7514350769674245575.a n = A384566 n

end A384566

/-! ## A384566.P7852114577809142188

`A008516(n)-A068722(n)`
-/

namespace A384566.P7852114577809142188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008516 n - A068722 n

end

end A384566.P7852114577809142188

namespace A384566

/-- `A008516(n)-A068722(n)` -/
def P7852114577809142188.Spec : Prop :=
  ∀ n, P7852114577809142188.a n = A384566 n

theorem P7852114577809142188.correct : P7852114577809142188.Spec := by
  intro n
  simp only [A384566, Nat.add_sub_cancel, A384566.P7852114577809142188.a, A384566.P10693336845248242478.a, A008516, A008516.P6330670612051404828.a, A068722, A068722.P15004994183655715878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384566

/-! ## A384566.P6542535869977533372

`lcm(A048395(n), A069778(n))`
-/

namespace A384566.P6542535869977533372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048395 n) (A069778 n)

end

end A384566.P6542535869977533372

namespace A384566

/-- `lcm(A048395(n), A069778(n))` -/
def P6542535869977533372.Spec : Prop :=
  ∀ n, (P6542535869977533372.a n : ℤ) = A384566 n

end A384566

/-! ## A384566.P173072584118504274

`lcm(A000217(A001844(n)), A002620(2*n+1))`
-/

namespace A384566.P173072584118504274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000217 (A001844 n).toNat) (A002620 (2 * n + 1))

end

end A384566.P173072584118504274

namespace A384566

/-- `lcm(A000217(A001844(n)), A002620(2*n+1))` -/
def P173072584118504274.Spec : Prop :=
  ∀ n, (P173072584118504274.a n : ℤ) = A384566 n

end A384566

/-! ## A384566.P1075336450620896690

`A055112(∑[2*n])`
-/

namespace A384566.P1075336450620896690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384566.P1075336450620896690

namespace A384566

/-- `A055112(∑[2*n])` -/
def P1075336450620896690.Spec : Prop :=
  ∀ n, P1075336450620896690.a n = A384566 n

end A384566

/-! ## A384566.P8973965868851960879

`A300758(n²+n)/2`
-/

namespace A384566.P8973965868851960879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300758 (n ^ 2 + n) : ℚ) / 2

end

end A384566.P8973965868851960879

namespace A384566

/-- `A300758(n²+n)/2` -/
def P8973965868851960879.Spec : Prop :=
  ∀ n, P8973965868851960879.a n = (A384566 n : ℚ)

theorem P8973965868851960879.correct : P8973965868851960879.Spec := by
  intro n
  simp only [A384566, Nat.add_sub_cancel, A384566.P8973965868851960879.a, A384566.P10693336845248242478.a, A300758, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384566

/-!
# A384574: G.f. A(x) satisfies A(x) = 1 + x * A(x*A(x)^4).

The programs for A384574, there is no canonical definition to state claims against.
-/

/-! ## A384574.P13385226267175221252

`A384582(∑[n+2]-1)`
-/

namespace A384574.P13385226267175221252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384582 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384574.P13385226267175221252

/-! ## A384574.P11460620901133210119

`A137285(A050262(n))`
-/

namespace A384574.P11460620901133210119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137285 (A050262 n).toNat

end

end A384574.P11460620901133210119

/-!
# A384575: G.f. A(x) satisfies A(x) = 1 + x * A(x*A(x)^5).

The programs for A384575, there is no canonical definition to state claims against.
-/

/-! ## A384575.P18003355137587376092

`A384583(∑[n+2]-1)`
-/

namespace A384575.P18003355137587376092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384583 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384575.P18003355137587376092

/-! ## A384575.P9563976808229760718

`A245326(A343884(n))`
-/

namespace A384575.P9563976808229760718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A343884 n).toNat

end

end A384575.P9563976808229760718

/-!
# A384576: G.f. A(x) satisfies A(x) = ( 1 + x * A(x*A(x))^(1/2) )^2.

The programs for A384576, there is no canonical definition to state claims against.
-/

/-! ## A384576.P15766139277503646058

`∑{#}[n, A143500(#)*A143500(n-#)]`
-/

namespace A384576.P15766139277503646058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A143500 k * A143500 (n - k)

end

end A384576.P15766139277503646058

/-! ## A384576.P13324934254327902296

`A384580(∑[3+n])`
-/

namespace A384576.P13324934254327902296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384576.P13324934254327902296

/-! ## A384576.P3845179113436192377

`A384580(A141214(n))+char[12]`
-/

namespace A384576.P3845179113436192377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384580 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A384576.P3845179113436192377

/-! ## A384576.P2711777482894992926

`record[A384580(eq[1, A120730(n+2)])]`
-/

namespace A384576.P2711777482894992926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120730 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384580 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384576.P2711777482894992926

/-! ## A384576.P16128892652533418905

`record[A384580(eq[1, A291652(n+3)])]`
-/

namespace A384576.P16128892652533418905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384580 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384576.P16128892652533418905

/-!
# A384577: G.f. A(x) satisfies A(x) = ( 1 + x * A(x*A(x))^(1/3) )^3.

The programs for A384577, there is no canonical definition to state claims against.
-/

/-! ## A384577.P673893764222981623

`A384581(A155212(n)+4)`
-/

namespace A384577.P673893764222981623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384581 (A155212 n + 4).toNat

end

end A384577.P673893764222981623

/-! ## A384577.P13186584056484259394

`A384581(A141214(n+1)-1)`
-/

namespace A384577.P13186584056484259394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384581 (A141214 (n + 1) - 1).toNat

end

end A384577.P13186584056484259394

/-! ## A384577.P15406279218084183765

`A384581(A000217(n+3)+n)`
-/

namespace A384577.P15406279218084183765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384581 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A384577.P15406279218084183765

/-! ## A384577.P17054868111824202169

`A384581(A161680(n+4)+n)`
-/

namespace A384577.P17054868111824202169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384581 (A161680 (n + 4) + (n : ℤ)).toNat

end

end A384577.P17054868111824202169

/-!
# A384578: G.f. A(x) satisfies A(x) = ( 1 + x * A(x*A(x))^(1/4) )^4.

The programs for A384578, there is no canonical definition to state claims against.
-/

/-! ## A384578.P14990247449161874918

`record[A384582(A141214(n)-2)]`
-/

namespace A384578.P14990247449161874918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384582 (A141214 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384578.P14990247449161874918

/-! ## A384578.P2640992548383474848

`A384582(A141214(n+2)-2)`
-/

namespace A384578.P2640992548383474848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384582 (A141214 (n + 2) - 2).toNat

end

end A384578.P2640992548383474848

/-! ## A384578.P14045051017456310784

`A384582(eq[4, A181187(n+3)])`
-/

namespace A384578.P14045051017456310784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A384578.P14045051017456310784

/-!
# A384579: G.f. A(x) satisfies A(x) = ( 1 + x * A(x*A(x))^(1/5) )^5.

The programs for A384579, there is no canonical definition to state claims against.
-/

/-! ## A384579.P3160850996742261041

`record[A384583(A055999(n))]`
-/

namespace A384579.P3160850996742261041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384583 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384579.P3160850996742261041

/-! ## A384579.P8172217503080867765

`record[A384583(A141214(n)-3)]`
-/

namespace A384579.P8172217503080867765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384583 (A141214 n - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384579.P8172217503080867765

/-!
# A384580: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A143500.

The programs for A384580, there is no canonical definition to state claims against.
-/

/-! ## A384580.P6657689153171755254

`(A384581(n)+A291652(n)+A125005(A326323(n)))/2`
-/

namespace A384580.P6657689153171755254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384581 n + (A291652 n + A125005 (A326323 n).toNat) : ℚ) / 2

end

end A384580.P6657689153171755254

/-! ## A384580.P14715936265372423466

`(A384581(n)+A381566(n)-A125005(A326323(n)))/2`
-/

namespace A384580.P14715936265372423466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384581 n + (A381566 n - A125005 (A326323 n).toNat) : ℚ) / 2

end

end A384580.P14715936265372423466

/-! ## A384580.P11330078046308660938

`(A384581(n)+A291652(n)+A089311(A094544(n)))/2`
-/

namespace A384580.P11330078046308660938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384581 n + (A291652 n + A089311 (A094544 n).toNat) : ℚ) / 2

end

end A384580.P11330078046308660938

/-! ## A384580.P4234118297364153774

`(A384581(n)+A291652(n)+A025469(A163661(n)))/2`
-/

namespace A384580.P4234118297364153774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384581 n + (A291652 n + A025469 (A163661 n).toNat) : ℚ) / 2

end

end A384580.P4234118297364153774

/-! ## A384580.P10619566755392698482

`(A384581(n)+A291652(n)+A277160(A156953(n)))/2`
-/

namespace A384580.P10619566755392698482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384581 n + (A291652 n + A277160 (A156953 n).toNat) : ℚ) / 2

end

end A384580.P10619566755392698482

/-!
# A384581: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A143501.

The programs for A384581, there is no canonical definition to state claims against.
-/

/-! ## A384581.P18008576631966637114

`2*A384580(n)-(A291652(n)+A125005(A326323(n)))`
-/

namespace A384581.P18008576631966637114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384580 n - (A291652 n + A125005 (A326323 n).toNat)

end

end A384581.P18008576631966637114

/-! ## A384581.P13289317373367246789

`2*A384580(n)-(A291652(n)+A089311(A094544(n)))`
-/

namespace A384581.P13289317373367246789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384580 n - (A291652 n + A089311 (A094544 n).toNat)

end

end A384581.P13289317373367246789

/-! ## A384581.P3869494316362751340

`2*A384580(n)-(A291652(n)+A277160(A156953(n)))`
-/

namespace A384581.P3869494316362751340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384580 n - (A291652 n + A277160 (A156953 n).toNat)

end

end A384581.P3869494316362751340

/-! ## A384581.P7955479308429216290

`2*A384580(n)-(A378320(n)+A277160(A156953(n)))`
-/

namespace A384581.P7955479308429216290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384580 n - (A378320 n + A277160 (A156953 n).toNat)

end

end A384581.P7955479308429216290

/-! ## A384581.P18289520148458103455

`2*A384580(n)-(A381566(n)-A277160(A156953(n)))`
-/

namespace A384581.P18289520148458103455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384580 n - (A381566 n - A277160 (A156953 n).toNat)

end

end A384581.P18289520148458103455

/-!
# A384582: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384574.

The programs for A384582, there is no canonical definition to state claims against.
-/

/-! ## A384582.P12205982885930922542

`2*A384581(n)-A000523(2^A392378(n))`
-/

namespace A384582.P12205982885930922542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384581 n - A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A392378 n : ℤ))).toNat

end

end A384582.P12205982885930922542

/-! ## A384582.P6789475030237326757

`2*A384581(n)-A001222(3^A392378(n))`
-/

namespace A384582.P6789475030237326757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A384581 n - A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A392378 n : ℤ))).toNat

end

end A384582.P6789475030237326757

/-! ## A384582.P11313263869442919223

`A341935(A091063(n))+A291652(n)-A385017(n)`
-/

namespace A384582.P11313263869442919223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A091063 n).toNat + A291652 n - A385017 n

end

end A384582.P11313263869442919223

/-! ## A384582.P13151281025526755925

`A378320(n)+A341935(A091063(n))-A385017(n)`
-/

namespace A384582.P13151281025526755925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378320 n + A341935 (A091063 n).toNat - A385017 n

end

end A384582.P13151281025526755925

/-! ## A384582.P3791854531880392521

`A381566(n)+A341935(A091063(n))-A385017(n)`
-/

namespace A384582.P3791854531880392521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381566 n + A341935 (A091063 n).toNat - A385017 n

end

end A384582.P3791854531880392521

/-!
# A384583: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384575.

The programs for A384583, there is no canonical definition to state claims against.
-/

/-! ## A384583.P15439956196115693468

`or(A291652(n), A384581(n))%A339657(3*n+4)`
-/

namespace A384583.P15439956196115693468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A291652 n) (A384581 n)) (A339657 (3 * n + 4))

end

end A384583.P15439956196115693468

/-! ## A384583.P6461031396597932020

`or(A378320(n)%A339657(3*n+4), A384581(n))`
-/

namespace A384583.P6461031396597932020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A378320 n) (A339657 (3 * n + 4))) (A384581 n)

end

end A384583.P6461031396597932020

/-! ## A384583.P12751949426879383817

`or(A381566(n)%A339657(3*n+4), A384581(n))`
-/

namespace A384583.P12751949426879383817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A381566 n) (A339657 (3 * n + 4))) (A384581 n)

end

end A384583.P12751949426879383817

/-! ## A384583.P10417190616311563018

`A341935(A091063(n))+A291652(n)-A144064(n)`
-/

namespace A384583.P10417190616311563018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A091063 n).toNat + A291652 n - A144064 n

end

end A384583.P10417190616311563018

/-! ## A384583.P7260930736623559578

`A378320(n)+A341935(A091063(n))-A144064(n)`
-/

namespace A384583.P7260930736623559578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378320 n + A341935 (A091063 n).toNat - A144064 n

end

end A384583.P7260930736623559578

/-!
# A384585: a(n) = 6 * (4*n)! / ((n+1)! * (3*n+1)!).

The programs for A384585, the canonical program `A384585.P13734651877486543019` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384585 has offset 0).

The definition of A384585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384585.P13734651877486543019

`6*(4*n)!/((n+1)!*(3*n+1)!)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384585

/-- `6*(4*n)!/((n+1)!*(3*n+1)!)` -/
def P13734651877486543019.Spec : Prop :=
  ∀ n, P13734651877486543019.a n = (A384585 n : ℚ)

end A384585

/-! ## A384585.P15199147612285666119

`A197271(n)+A000260(n)`
-/

namespace A384585.P15199147612285666119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197271 n + A000260 n

end

end A384585.P15199147612285666119

namespace A384585

/-- `A197271(n)+A000260(n)` -/
def P15199147612285666119.Spec : Prop :=
  ∀ n, P15199147612285666119.a n = A384585 n

end A384585

/-! ## A384585.P12231854240674536788

`A197271(n)+A146305(∑[n])`
-/

namespace A384585.P12231854240674536788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197271 n + A146305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384585.P12231854240674536788

namespace A384585

/-- `A197271(n)+A146305(∑[n])` -/
def P12231854240674536788.Spec : Prop :=
  ∀ n, P12231854240674536788.a n = A384585 n

end A384585

/-! ## A384585.P11785691265764856554

`6/(n+1)*A002293(n)`
-/

namespace A384585.P11785691265764856554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (n + 1 : ℚ) * (A002293 n : ℚ)

end

end A384585.P11785691265764856554

namespace A384585

/-- `6/(n+1)*A002293(n)` -/
def P11785691265764856554.Spec : Prop :=
  ∀ n, P11785691265764856554.a n = (A384585 n : ℚ)

end A384585

/-! ## A384585.P8627239733481521942

`6*A369082(2*n)/(n+1)`
-/

namespace A384585.P8627239733481521942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A369082 (2 * n) : ℚ) / (n + 1 : ℚ))

end

end A384585.P8627239733481521942

namespace A384585

/-- `6*A369082(2*n)/(n+1)` -/
def P8627239733481521942.Spec : Prop :=
  ∀ n, P8627239733481521942.a n = (A384585 n : ℚ)

end A384585

/-! ## A384585.P13383441282579696187

`A395797(n+1)/(2*n+1)`
-/

namespace A384585.P13383441282579696187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395797 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A384585.P13383441282579696187

namespace A384585

/-- `A395797(n+1)/(2*n+1)` -/
def P13383441282579696187.Spec : Prop :=
  ∀ n, P13383441282579696187.a n = (A384585 n : ℚ)

end A384585

/-! ## A384585.P13808466138273425688

`A197271(n)+A006632(n+1)/Δ[n²]`
-/

namespace A384585.P13808466138273425688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197271 n : ℚ) + (A006632 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A384585.P13808466138273425688

namespace A384585

/-- `A197271(n)+A006632(n+1)/Δ[n²]` -/
def P13808466138273425688.Spec : Prop :=
  ∀ n, P13808466138273425688.a n = (A384585 n : ℚ)

end A384585

/-! ## A384585.P17624094709247595840

`A197271(n)+A369472(Δ[n²])/(n+1)`
-/

namespace A384585.P17624094709247595840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197271 n : ℚ) + (A369472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A384585.P17624094709247595840

namespace A384585

/-- `A197271(n)+A369472(Δ[n²])/(n+1)` -/
def P17624094709247595840.Spec : Prop :=
  ∀ n, P17624094709247595840.a n = (A384585 n : ℚ)

end A384585

/-!
# A384590: a(n) = floor(X(n,n)), where X(n,n) is the largest zero of the Laguerre polynomial of degree n.

The programs for A384590, there is no canonical definition to state claims against.
-/

/-! ## A384590.P15325064544338550458

`∑[A055642(A101858(3*n+1)²)]`
-/

namespace A384590.P15325064544338550458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A101858 (3 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384590.P15325064544338550458

/-! ## A384590.P11359079255931771871

`A263846(A226451(n+1))`
-/

namespace A384590.P11359079255931771871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A226451 (n + 1)).toNat

end

end A384590.P11359079255931771871

/-! ## A384590.P7993021559158546020

`A001462(A350426(n+2)+A005449(n))`
-/

namespace A384590.P7993021559158546020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A350426 (n + 2) + A005449 n).toNat

end

end A384590.P7993021559158546020

/-! ## A384590.P1470320913385015414

`∑[A010553(∑[n+1]²)]`
-/

namespace A384590.P1470320913385015414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384590.P1470320913385015414

/-! ## A384590.P18163440327231157478

`∑[A369163(∑[n+1]²)]`
-/

namespace A384590.P18163440327231157478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369163 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384590.P18163440327231157478

/-!
# A384591: a(n) = permanent of the n X n circulant matrix with (row 1) = (F(1), F(2), ..., F(n)), where F = A000045 (Fibonacci numbers).

The programs for A384591, there is no canonical definition to state claims against.
-/

/-! ## A384591.P17866713496027693024

`A338365(n!²+1)`
-/

namespace A384591.P17866713496027693024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338365 (Nat.factorial n ^ 2 + 1)

end

end A384591.P17866713496027693024

/-!
# A384592: a(n) = neg(M(n)), where M(n) is the n X n circulant matrix with (row 1) = (F(1), F(2), ..., F(n)), where F = A000045 (Fibonacci numbers), and neg(M(n)) is the negative part of the determinant of M(n); see A380661.

The programs for A384592, there is no canonical definition to state claims against.
-/

/-! ## A384592.P10969860373649843221

`A384593(n+1)-A384591(1+n)`
-/

namespace A384592.P10969860373649843221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384593 (n + 1) - A384591 (1 + n)

end

end A384592.P10969860373649843221

/-!
# A384593: a(n) = pos(M(n)), where M(n) is the n X n circulant matrix with (row 1) = (F(1), F(2), ..., F(n)), where F = A000045 (Fibonacci numbers), and neg(M(n)) is the negative part of the determinant of M(n); see A380661.

The programs for A384593, there is no canonical definition to state claims against.
-/

/-! ## A384593.P7384356790082801521

`A384592(n+1)+A384591(1+n)`
-/

namespace A384593.P7384356790082801521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384592 (n + 1) + A384591 (1 + n)

end

end A384593.P7384356790082801521

/-!
# A384594: a(n) = permanent of the n X n circulant matrix with (row 1) = (F(2), F(3), ..., F(n+1)), where F = A000045 (Fibonacci numbers).

The programs for A384594, there is no canonical definition to state claims against.
-/

/-! ## A384594.P14908028435759669638

`A323372(A102896(n))-n`
-/

namespace A384594.P14908028435759669638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323372 (A102896 n).toNat - (n : ℤ)

end

end A384594.P14908028435759669638

/-!
# A384595: a(n) = neg(M(n)), where M(n) is the n X n circulant matrix with (row 1) = (F(2), F(3), ..., F(n+1)), where F = A000045 (Fibonacci numbers), and neg(M(n)) is the negative part of the determinant of M(n); see A380661.

The programs for A384595, there is no canonical definition to state claims against.
-/

/-! ## A384595.P16630382295589708191

`1/2*(A118704(n+1)-A384594(n+1))`
-/

namespace A384595.P16630382295589708191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A118704 (n + 1) - A384594 (n + 1) : ℚ)

end

end A384595.P16630382295589708191

/-! ## A384595.P11629694211808053567

`A384596(n+1)-A384594(1+n)`
-/

namespace A384595.P11629694211808053567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384596 (n + 1) - A384594 (1 + n)

end

end A384595.P11629694211808053567

/-!
# A384596: a(n) = pos(M(n)), where M(n) is the n X n circulant matrix with (row 1) = (F(2), F(3), ..., F(n+1)), where F = A000045 (Fibonacci numbers), and pos(M(n)) is the positive part of the determinant of M(n); see A380661.

The programs for A384596, there is no canonical definition to state claims against.
-/

/-! ## A384596.P8752027237128117755

`1/2*(A118704(n+1)+A384594(n+1))`
-/

namespace A384596.P8752027237128117755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A118704 (n + 1) + A384594 (n + 1) : ℚ)

end

end A384596.P8752027237128117755

/-! ## A384596.P9050084929825696701

`A384595(n+1)+A384594(1+n)`
-/

namespace A384596.P9050084929825696701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384595 (n + 1) + A384594 (1 + n)

end

end A384596.P9050084929825696701

/-!
# A384598: Expansion of (1-3*x^2) / (1-x-4*x^2+2*x^3+2*x^4).

The programs for A384598, the canonical program `A384598.P18088159735085619859` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384598 has offset 0).

The definition of A384598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2)/(1-x-4x^2+2x^3+2x^4))` (program `A384598.P18088159735085619859`, by `A384598.P18088159735085619859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384598.P18088159735085619859

`ogf((1-3x^2)/(1-x-4x^2+2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384598

/-- `ogf((1-3x^2)/(1-x-4x^2+2x^3+2x^4))` -/
def P18088159735085619859.Spec : Prop :=
  ∀ n, P18088159735085619859.a n = A384598 n

theorem P18088159735085619859.correct : P18088159735085619859.Spec := by
  intro n
  simp only [A384598]

end A384598

/-! ## A384598.P14255349316807661682

`∑[ogf((-1+3x^2)/(-1+4x^2+2x^3))]`
-/

namespace A384598.P14255349316807661682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, 0, -4, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384598.P14255349316807661682

namespace A384598

/-- `∑[ogf((-1+3x^2)/(-1+4x^2+2x^3))]` -/
def P14255349316807661682.Spec : Prop :=
  ∀ n, P14255349316807661682.a n = A384598 n

end A384598

/-! ## A384598.P9967200936240238898

`2*(2*a(n-2)+a(n-3)-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A384598.P9967200936240238898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * (2 * a (n - 2) + (a (n - 3) - 1))

end

end A384598.P9967200936240238898

namespace A384598

/-- `2*(2*a(n-2)+a(n-3)-1)` -/
def P9967200936240238898.Spec : Prop :=
  ∀ n, P9967200936240238898.a n = A384598 n

end A384598

/-! ## A384598.P10739732177404353246

`2*(2*a(n-2)-(1-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A384598.P10739732177404353246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * (2 * a (n - 2) - (1 - a (n - 3)))

end

end A384598.P10739732177404353246

namespace A384598

/-- `2*(2*a(n-2)-(1-a(n-3)))` -/
def P10739732177404353246.Spec : Prop :=
  ∀ n, P10739732177404353246.a n = A384598 n

end A384598

/-! ## A384598.P6392976421700206453

`A115981(A032563(n+1))+A061255(n)`
-/

namespace A384598.P6392976421700206453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115981 (A032563 (n + 1)).toNat + A061255 n

end

end A384598.P6392976421700206453

namespace A384598

/-- `A115981(A032563(n+1))+A061255(n)` -/
def P6392976421700206453.Spec : Prop :=
  ∀ n, P6392976421700206453.a n = A384598 n

end A384598

/-!
# A384599: Expansion of (1+3*x+2*x^2) / (1-4*x^2-2*x^3).

The programs for A384599, the canonical program `A384599.P5405995634609708607` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384599 has offset 0).

The definition of A384599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-4x^2-2x^3))` (program `A384599.P5405995634609708607`, by `A384599.P5405995634609708607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384599.P5405995634609708607

`ogf((1+3x+2x^2)/(1-4x^2-2x^3))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384599

/-- `ogf((1+3x+2x^2)/(1-4x^2-2x^3))` -/
def P5405995634609708607.Spec : Prop :=
  ∀ n, P5405995634609708607.a n = A384599 n

theorem P5405995634609708607.correct : P5405995634609708607.Spec := by
  intro n
  simp only [A384599]

end A384599

/-! ## A384599.P14493828821580002975

`4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A384599.P14493828821580002975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  4 * a (n - 2) + 2 * a (n - 3)

end

end A384599.P14493828821580002975

namespace A384599

/-- `4*a(n-2)+2*a(n-3)` -/
def P14493828821580002975.Spec : Prop :=
  ∀ n, (P14493828821580002975.a n : ℤ) = A384599 n

end A384599

/-! ## A384599.P1124031400062542558

`A384598(2+n)-A384598(n)`
-/

namespace A384599.P1124031400062542558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384598 (2 + n) - A384598 n

end

end A384599.P1124031400062542558

namespace A384599

/-- `A384598(2+n)-A384598(n)` -/
def P1124031400062542558.Spec : Prop :=
  ∀ n, P1124031400062542558.a n = A384599 n

end A384599

/-! ## A384599.P10891784532950822551

`Δ[A384600(n)]`
-/

namespace A384599.P10891784532950822551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384599.P10891784532950822551

namespace A384599

/-- `Δ[A384600(n)]` -/
def P10891784532950822551.Spec : Prop :=
  ∀ n, P10891784532950822551.a n = A384599 n

end A384599

/-! ## A384599.P3320855589829170409

`A384600(n+1)-A384600(n)`
-/

namespace A384599.P3320855589829170409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384600 (n + 1) - A384600 n

end

end A384599.P3320855589829170409

namespace A384599

/-- `A384600(n+1)-A384600(n)` -/
def P3320855589829170409.Spec : Prop :=
  ∀ n, P3320855589829170409.a n = A384599 n

end A384599

/-! ## A384599.P5339277498338434280

`Δ[A384598(n+1)+A384598(n)]`
-/

namespace A384599.P5339277498338434280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384598 (n + 1) + A384598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384599.P5339277498338434280

namespace A384599

/-- `Δ[A384598(n+1)+A384598(n)]` -/
def P5339277498338434280.Spec : Prop :=
  ∀ n, P5339277498338434280.a n = A384599 n

end A384599

