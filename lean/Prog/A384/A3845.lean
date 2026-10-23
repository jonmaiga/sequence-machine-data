import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-! ## A384500.P13921594544572903634

`lt[A023900(2*(n+1)), 1]+1`
-/

namespace A384500.P13921594544572903634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A384500.P13921594544572903634

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

/-! ## A384504.P14927310988053980757

`A048994(A037270(n)+n)`
-/

namespace A384504.P14927310988053980757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A037270 n + (n : ℤ)).toNat

end

end A384504.P14927310988053980757

/-! ## A384504.P12740323807682642222

`A132393(A037270(n)+n)`
-/

namespace A384504.P12740323807682642222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A037270 n + (n : ℤ)).toNat

end

end A384504.P12740323807682642222

/-!
# A384506: a(n) = 2^(n-7)*(n^4 - 6*n^3 + 59*n^2 - 54*n)/3.

The programs for A384506, the canonical program `A384506.P5937823451638168484` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384506 has offset 0).

The definition of A384506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384506.P5937823451638168484

`2^(n-7)*(n^4-6*n^3+59*n²-54*n)/3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384506

/-- `2^(n-7)*(n^4-6*n^3+59*n²-54*n)/3` -/
def P5937823451638168484.Spec : Prop :=
  ∀ n, P5937823451638168484.a n = (A384506 n : ℚ)

end A384506

/-! ## A384506.P1689503323723577462

`A000392(n+1)-A050605(A214814(n))`
-/

namespace A384506.P1689503323723577462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) - A050605 (A214814 n).toNat

end

end A384506.P1689503323723577462

namespace A384506

/-- `A000392(n+1)-A050605(A214814(n))` -/
def P1689503323723577462.Spec : Prop :=
  ∀ n, P1689503323723577462.a n = A384506 n

end A384506

/-!
# A384511: a(n) is the number of ways to partition n X n X n cube into five distinct cuboids with three full-length axial spanning parts sharing only two cube corners each.

The programs for A384511, there is no canonical definition to state claims against.
-/

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

/-! ## A384511.P11966700663924464420

`∑[A247375(n)]-n`
-/

namespace A384511.P11966700663924464420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A384511.P11966700663924464420

/-! ## A384511.P843275262815847328

`A213037(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A384511.P843275262815847328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A213037 (n - 1) + a (n - 1)

end

end A384511.P843275262815847328

/-! ## A384511.P11030159751528913696

`A168582(n)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A384511.P11030159751528913696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A168582 n - (a (n - 1) + (n : ℤ))

end

end A384511.P11030159751528913696

/-! ## A384511.P8341673187726328861

`A212964(n)+A008794(n)`
-/

namespace A384511.P8341673187726328861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 n + A008794 n

end

end A384511.P8341673187726328861

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

/-! ## A384513.P11118679169748223732

`A226046(A310111(n+1))`
-/

namespace A384513.P11118679169748223732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A310111 (n + 1)).toNat

end

end A384513.P11118679169748223732

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

/-! ## A384514.P12488073540439354346

`A028310(n*A115416(n))`
-/

namespace A384514.P12488073540439354346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A115416 n).toNat

end

end A384514.P12488073540439354346

/-!
# A384517: Nonsquarefree numbers that are squarefree numbers raised to an even power.

The programs for A384517, the canonical program `A384517.P2524242939913956237` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384517 has offset 1).

The definition of A384517 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A384517.P2524242939913956237

`A062770(n+1)²`

The canonical program, it is in `Seq.B004.C003`.
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

/-! ## A384517.P14635924976867069121

`∩[A000290(n), A384519(n+1)]`
-/

namespace A384517.P14635924976867069121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384517.P14635924976867069121

namespace A384517

/-- `∩[A000290(n), A384519(n+1)]` -/
def P14635924976867069121.Spec : Prop :=
  ∀ n, (P14635924976867069121.a n : ℤ) = A384517 (n + 1)

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

The programs for A384519, the canonical program `A384519.P13348821675057678145` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384519 has offset 1).

The definition of A384519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384519.P13348821675057678145

`∩[A072587(n+1), A375142(n+1)]`

The canonical program, it is in `Seq.B011.C001`.
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

The programs for A384520, the canonical program `A384520.P4473728622954603946` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384520 has offset 1).

The definition of A384520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384520.P4473728622954603946

`filter[A375142(n+1), A295316(#)]`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A384520

/-- `filter[A375142(n+1), A295316(#)]` -/
def P4473728622954603946.Spec : Prop :=
  ∀ n, P4473728622954603946.a n = A384520 (n + 1)

theorem P4473728622954603946.correct : P4473728622954603946.Spec := by
  intro n
  simp only [A384520, Nat.add_sub_cancel]

end A384520

/-! ## A384520.P14908974839837119902

`∩[A240111(n+1), A375142(n+1)]`
-/

namespace A384520.P14908974839837119902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384520.P14908974839837119902

namespace A384520

/-- `∩[A240111(n+1), A375142(n+1)]` -/
def P14908974839837119902.Spec : Prop :=
  ∀ n, (P14908974839837119902.a n : ℤ) = A384520 (n + 1)

end A384520

/-! ## A384520.P12030043689287123196

`∩[A295661(n+1), A375142(n+1)]`
-/

namespace A384520.P12030043689287123196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384520.P12030043689287123196

namespace A384520

/-- `∩[A295661(n+1), A375142(n+1)]` -/
def P12030043689287123196.Spec : Prop :=
  ∀ n, (P12030043689287123196.a n : ℤ) = A384520 (n + 1)

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

/-! ## A384521.P2862316834015214911

`A285423(A354241(n)-A285139(n+1))`
-/

namespace A384521.P2862316834015214911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 (A354241 n - A285139 (n + 1)).toNat

end

end A384521.P2862316834015214911

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

/-! ## A384525.P17920814565706129734

`A062490(A150758(n))`
-/

namespace A384525.P17920814565706129734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062490 (A150758 n).toNat

end

end A384525.P17920814565706129734

/-!
# A384527: Primes p such that p + 6, p + 12, p + 14, p + 20 and p + 26 are also primes.

The programs for A384527, there is no canonical definition to state claims against.
-/

/-! ## A384527.P11207496543549454579

`A140568(A246335(n+1))`
-/

namespace A384527.P11207496543549454579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140568 (A246335 (n + 1)).toNat

end

end A384527.P11207496543549454579

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

The programs for A384531, the canonical program `A384531.P15070268753136582785` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384531 has offset 1).

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

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A384531

/-- `∑{d}[n+1, A018804(#)*A173557((n+1)/#)]` -/
def P15070268753136582785.Spec : Prop :=
  ∀ n, P15070268753136582785.a n = A384531 (n + 1)

theorem P15070268753136582785.correct : P15070268753136582785.Spec := by
  intro n
  simp only [A384531, Nat.add_sub_cancel]

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

/-!
# A384536: a(n) = 4^n - 2^(n-6)*15*binomial(n,6).

The programs for A384536, the canonical program `A384536.P15435299656690740622` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384536 has offset 0).

The definition of A384536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384536.P15435299656690740622

`4^n-2^(n-6)*15*C(n, 6)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384536

/-- `4^n-2^(n-6)*15*C(n, 6)` -/
def P15435299656690740622.Spec : Prop :=
  ∀ n, P15435299656690740622.a n = (A384536 n : ℚ)

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

/-! ## A384536.P13219658789155305254

`A052539(n)-A141021(A296122(n))`
-/

namespace A384536.P13219658789155305254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 n - A141021 (A296122 n).toNat

end

end A384536.P13219658789155305254

namespace A384536

/-- `A052539(n)-A141021(A296122(n))` -/
def P13219658789155305254.Spec : Prop :=
  ∀ n, P13219658789155305254.a n = A384536 n

end A384536

/-!
# A384537: Composite numbers that are equal to the concatenation of the primes and exponents in their prime factorizations in some bases.

The programs for A384537, there is no canonical definition to state claims against.
-/

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

/-! ## A384537.P10020306878015392115

`A368107(A032559(n+2))`
-/

namespace A384537.P10020306878015392115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368107 (A032559 (n + 2)).toNat

end

end A384537.P10020306878015392115

/-!
# A384538: Positive integers k >= 10 for which for every pair of nonempty substrings that concatenate to give k one substring divides the other.

The programs for A384538, there is no canonical definition to state claims against.
-/

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

/-! ## A384538.P14542631789267098340

`eq[A161302(n+1), A326307(n)]`
-/

namespace A384538.P14542631789267098340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384538.P14542631789267098340

/-!
# A384539: Zeroless positive integers k for which for every pair of nonempty substrings that concatenate to give k one substring divides the other.

The programs for A384539, there is no canonical definition to state claims against.
-/

/-! ## A384539.P9241661531956691431

`filter[A070255(n+1), A168046(#)]`
-/

namespace A384539.P9241661531956691431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A384539.P9241661531956691431

/-! ## A384539.P17248943198902821693

`filter[A384538(n+1), A168046(#)]`
-/

namespace A384539.P17248943198902821693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A384539.P17248943198902821693

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

The programs for A384543, the canonical program `A384543.P10493386867404407549` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384543 has offset 1).

The definition of A384543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384543.P10834564902477767384

`A352228(A004761(2*n+4)-A079944(n))`
-/

namespace A384543.P10834564902477767384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 (A004761 (2 * n + 4) - A079944 n).toNat

end

end A384543.P10834564902477767384

namespace A384543

/-- `A352228(A004761(2*n+4)-A079944(n))` -/
def P10834564902477767384.Spec : Prop :=
  ∀ n, P10834564902477767384.a n = A384543 (n + 1)

end A384543

/-! ## A384543.P10493386867404407549

`A352228(A352228(3*n+1)+A004755(n+1))`

The canonical program, it is in `Seq.B001.C010`.
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

/-! ## A384554.P1705032563707695695

`A394255(A053165(n+1))`
-/

namespace A384554.P1705032563707695695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394255 (A053165 (n + 1)).toNat

end

end A384554.P1705032563707695695

/-! ## A384554.P1438022702016377307

`gcd(A340580(n+1), A394255(n+1))`
-/

namespace A384554.P1438022702016377307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A340580 (n + 1)) (A394255 (n + 1))

end

end A384554.P1438022702016377307

/-! ## A384554.P12297493650767818939

`A049417(n+1)%A008590(A124795(n+1))`
-/

namespace A384554.P12297493650767818939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049417 (n + 1)) (A008590 (A124795 (n + 1)).toNat)

end

end A384554.P12297493650767818939

/-! ## A384554.P6458026765492987522

`A383763(n+1)-A000122(A383768(n+5))`
-/

namespace A384554.P6458026765492987522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383763 (n + 1) - A000122 (A383768 (n + 5)).toNat

end

end A384554.P6458026765492987522

/-! ## A384554.P8153309357269738141

`A394255(A187829(n+1))`
-/

namespace A384554.P8153309357269738141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394255 (A187829 (n + 1)).toNat

end

end A384554.P8153309357269738141

/-!
# A384555: The largest infinitary divisor of n that is cubefree.

The programs for A384555, the canonical program `A384555.P15004222589011881551` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384555 has offset 1).

The definition of A384555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384555.P13238917863262547075

`A007948(A053165(n+1))`
-/

namespace A384555.P13238917863262547075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A053165 (n + 1)).toNat

end

end A384555.P13238917863262547075

namespace A384555

/-- `A007948(A053165(n+1))` -/
def P13238917863262547075.Spec : Prop :=
  ∀ n, P13238917863262547075.a n = A384555 (n + 1)

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

The canonical program, it is in `Seq.B008.C001`.
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

The programs for A384556, the canonical program `A384556.P16064934496788693992` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384556 has offset 1).

The definition of A384556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384556.P16064934496788693992

`A003968(A066990(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A384556

/-- `A003968(A066990(n+1))` -/
def P16064934496788693992.Spec : Prop :=
  ∀ n, P16064934496788693992.a n = A384556 (n + 1)

theorem P16064934496788693992.correct : P16064934496788693992.Spec := by
  intro n
  simp only [A384556, Nat.add_sub_cancel]

end A384556

/-! ## A384556.P9339453548590566422

`A361174(A365296(n+1))`
-/

namespace A384556.P9339453548590566422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361174 (A365296 (n + 1)).toNat

end

end A384556.P9339453548590566422

namespace A384556

/-- `A361174(A365296(n+1))` -/
def P9339453548590566422.Spec : Prop :=
  ∀ n, P9339453548590566422.a n = A384556 (n + 1)

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
-/

namespace A384556.P4300059835760640918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A367990 (n + 1)

end

end A384556.P4300059835760640918

namespace A384556

/-- `A007947(n+1)*A367990(n+1)` -/
def P4300059835760640918.Spec : Prop :=
  ∀ n, P4300059835760640918.a n = A384556 (n + 1)

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

/-!
# A384561: One fourth of the number of permutations of [n] with |p(i+1) - p(i)| >= 2, for i = 1..(n-1) and n appears at position i = 1 or i = n.

The programs for A384561, the canonical program `A384561.P5420392690080599210` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384561 has offset 5).

The definition of A384561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384561.P5420392690080599210

`A382644(n+4)/2`

The canonical program, it is in `Seq.B001.C010`.
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
# A384566: Area of the unique primitive Pythagorean triple whose inradius is A002378(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A384566, the canonical program `A384566.P10693336845248242478` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384566 has offset 0).

The definition of A384566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384566.P10693336845248242478

`n*(n+1)*(n²+n+1)*(2*n²+2*n+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384566

/-- `n*(n+1)*(n²+n+1)*(2*n²+2*n+1)` -/
def P10693336845248242478.Spec : Prop :=
  ∀ n, (P10693336845248242478.a n : ℤ) = A384566 n

theorem P10693336845248242478.correct : P10693336845248242478.Spec := by
  intro n
  simp only [A384566]

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

/-! ## A384566.P7207222747097116125

`lcm(A002378(n), A237516(n+1))`
-/

namespace A384566.P7207222747097116125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002378 n) (A237516 (n + 1))

end

end A384566.P7207222747097116125

namespace A384566

/-- `lcm(A002378(n), A237516(n+1))` -/
def P7207222747097116125.Spec : Prop :=
  ∀ n, (P7207222747097116125.a n : ℤ) = A384566 n

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

end A384566

/-! ## A384566.P10421852630503169768

`A276670((n+1)²+n²)`
-/

namespace A384566.P10421852630503169768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276670 ((n + 1) ^ 2 + n ^ 2)

end

end A384566.P10421852630503169768

namespace A384566

/-- `A276670((n+1)²+n²)` -/
def P10421852630503169768.Spec : Prop :=
  ∀ n, P10421852630503169768.a n = A384566 n

end A384566

/-! ## A384566.P9041843732435668704

`A390343((n+1)²+n²)`
-/

namespace A384566.P9041843732435668704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390343 ((n + 1) ^ 2 + n ^ 2)

end

end A384566.P9041843732435668704

namespace A384566

/-- `A390343((n+1)²+n²)` -/
def P9041843732435668704.Spec : Prop :=
  ∀ n, P9041843732435668704.a n = A384566 n

end A384566

/-! ## A384566.P7125238613086506781

`A011886(A051890(n+1))`
-/

namespace A384566.P7125238613086506781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (A051890 (n + 1)).toNat

end

end A384566.P7125238613086506781

namespace A384566

/-- `A011886(A051890(n+1))` -/
def P7125238613086506781.Spec : Prop :=
  ∀ n, P7125238613086506781.a n = A384566 n

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

/-! ## A384575.P8409688097190584670

`A347713(∑[A236559(n)])`
-/

namespace A384575.P8409688097190584670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347713 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A384575.P8409688097190584670

/-!
# A384576: G.f. A(x) satisfies A(x) = ( 1 + x * A(x*A(x))^(1/2) )^2.

The programs for A384576, there is no canonical definition to state claims against.
-/

/-! ## A384576.P8532238858867985458

`A384580(∑[n+3])`
-/

namespace A384576.P8532238858867985458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384576.P8532238858867985458

/-! ## A384576.P9890686831693000013

`A340019(a(n-1)+1)-n` with `a(0)=1`
-/

namespace A384576.P9890686831693000013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A340019 (a (n - 1) + 1).toNat - (n : ℤ)

end

end A384576.P9890686831693000013

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

/-! ## A384578.P1087316742434321878

`A379842(A304782(n))`
-/

namespace A384578.P1087316742434321878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379842 (A304782 n).toNat

end

end A384578.P1087316742434321878

/-!
# A384579: G.f. A(x) satisfies A(x) = ( 1 + x * A(x*A(x))^(1/5) )^5.

The programs for A384579, there is no canonical definition to state claims against.
-/

/-! ## A384579.P11795627977434987736

`A119792(A298803(n))`
-/

namespace A384579.P11795627977434987736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119792 (A298803 n).toNat

end

end A384579.P11795627977434987736

/-!
# A384580: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A143500.

The programs for A384580, there is no canonical definition to state claims against.
-/

/-! ## A384580.P4193994657743278286

`A384865(n)%A384920(n+2)`
-/

namespace A384580.P4193994657743278286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384865 n) (A384920 (n + 2))

end

end A384580.P4193994657743278286

/-! ## A384580.P2468194443327729172

`A392378(n)%A392394(n+2)`
-/

namespace A384580.P2468194443327729172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392378 n) (A392394 (n + 2))

end

end A384580.P2468194443327729172

/-! ## A384580.P15463439346276054656

`A378321(n)%A318612(3*n+4)`
-/

namespace A384580.P15463439346276054656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378321 n) (A318612 (3 * n + 4))

end

end A384580.P15463439346276054656

/-! ## A384580.P12734989139253855095

`A384865(n)+A000122(A005718(n))`
-/

namespace A384580.P12734989139253855095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384865 n + A000122 (A005718 n).toNat

end

end A384580.P12734989139253855095

/-! ## A384580.P4295797251429004590

`A384865(n)%A003331(A030034(n))`
-/

namespace A384580.P4295797251429004590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384865 n) (A003331 (A030034 n).toNat)

end

end A384580.P4295797251429004590

/-!
# A384581: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A143501.

The programs for A384581, there is no canonical definition to state claims against.
-/

/-! ## A384581.P17162348444768824460

`A384866(n)%A384920(n+2)`
-/

namespace A384581.P17162348444768824460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384866 n) (A384920 (n + 2))

end

end A384581.P17162348444768824460

/-! ## A384581.P3164602504135437591

`A384866(n)%A003331(A030034(n))`
-/

namespace A384581.P3164602504135437591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384866 n) (A003331 (A030034 n).toNat)

end

end A384581.P3164602504135437591

/-! ## A384581.P10382121203713567442

`A165018(A351601(n+1))*A384866(n)`
-/

namespace A384581.P10382121203713567442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165018 (A351601 (n + 1)).toNat * A384866 n

end

end A384581.P10382121203713567442

/-! ## A384581.P702316805124595695

`A052409(A384869(3*n+2))*A384866(n)`
-/

namespace A384581.P702316805124595695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A384869 (3 * n + 2)).toNat * A384866 n

end

end A384581.P702316805124595695

/-! ## A384581.P3401338556454115450

`A286335(n)+A249421(A306343(n))`
-/

namespace A384581.P3401338556454115450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 n + A249421 (A306343 n).toNat

end

end A384581.P3401338556454115450

/-!
# A384582: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384574.

The programs for A384582, there is no canonical definition to state claims against.
-/

/-! ## A384582.P6780179353340074109

`A277504(n)+A174612(A269129(n))`
-/

namespace A384582.P6780179353340074109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277504 n + A174612 (A269129 n).toNat

end

end A384582.P6780179353340074109

/-! ## A384582.P1338610717610920570

`A297328(n)-A089311(A294609(n))`
-/

namespace A384582.P1338610717610920570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 n - A089311 (A294609 n).toNat

end

end A384582.P1338610717610920570

/-! ## A384582.P8505784160684259508

`A105658(A320606(n+1))*A277504(n)`
-/

namespace A384582.P8505784160684259508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 (A320606 (n + 1)).toNat * A277504 n

end

end A384582.P8505784160684259508

/-! ## A384582.P3071431563044126918

`A381423(A384620(n))-char[A368134(3*(n+1))]`
-/

namespace A384582.P3071431563044126918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368134 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381423 (A384620 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A384582.P3071431563044126918

/-! ## A384582.P593416762159925364

`A381423(A384620(n))-A124762(A248641(n))`
-/

namespace A384582.P593416762159925364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381423 (A384620 n).toNat - A124762 (A248641 n).toNat

end

end A384582.P593416762159925364

/-!
# A384583: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A384575.

The programs for A384583, there is no canonical definition to state claims against.
-/

/-! ## A384583.P15537879749844186819

`A381423(A384620(n))`
-/

namespace A384583.P15537879749844186819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381423 (A384620 n).toNat

end

end A384583.P15537879749844186819

/-! ## A384583.P15119574512081633067

`A384865(n)*A384877(A384861(n))`
-/

namespace A384583.P15119574512081633067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384865 n * A384877 (A384861 n).toNat

end

end A384583.P15119574512081633067

/-! ## A384583.P11517574165468902740

`C(A384581(n), A008480(A156882(n)))`
-/

namespace A384583.P11517574165468902740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A384581 n).toNat (A008480 (A156882 n).toNat).toNat

end

end A384583.P11517574165468902740

/-! ## A384583.P4559676208656252115

`gcd(A005928(A056851(n+1)), A082601(n))`
-/

namespace A384583.P4559676208656252115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005928 (A056851 (n + 1)).toNat) (A082601 n)

end

end A384583.P4559676208656252115

/-! ## A384583.P1709973645982659195

`and(A384903(n), A384918(A384920(n+4)))`
-/

namespace A384583.P1709973645982659195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A384903 n) (A384918 (A384920 (n + 4)).toNat)

end

end A384583.P1709973645982659195

/-!
# A384585: a(n) = 6 * (4*n)! / ((n+1)! * (3*n+1)!).

The programs for A384585, the canonical program `A384585.P13734651877486543019` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384585 has offset 0).

The definition of A384585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384585.P13734651877486543019

`6*(4*n)!/((n+1)!*(3*n+1)!)`

The canonical program, it is in `Seq.B000.C039`.
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

/-! ## A384590.P11359079255931771871

`A263846(A226451(n+1))`
-/

namespace A384590.P11359079255931771871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A226451 (n + 1)).toNat

end

end A384590.P11359079255931771871

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

/-! ## A384590.P12328326410309158500

`A056556(A024389(n+1))`
-/

namespace A384590.P12328326410309158500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A024389 (n + 1)).toNat

end

end A384590.P12328326410309158500

/-! ## A384590.P7458589146978517792

`A300305(A397741(n+1))`
-/

namespace A384590.P7458589146978517792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300305 (A397741 (n + 1)).toNat

end

end A384590.P7458589146978517792

/-! ## A384590.P5786888694127890777

`A326835(n+1)+A056239(A282193(n+1))`
-/

namespace A384590.P5786888694127890777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (n + 1) + A056239 (A282193 (n + 1)).toNat

end

end A384590.P5786888694127890777

/-!
# A384591: a(n) = permanent of the n X n circulant matrix with (row 1) = (F(1), F(2), ..., F(n)), where F = A000045 (Fibonacci numbers).

The programs for A384591, there is no canonical definition to state claims against.
-/

/-! ## A384591.P15601757774714860633

`A050584(A033321(n))`
-/

namespace A384591.P15601757774714860633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050584 (A033321 n).toNat

end

end A384591.P15601757774714860633

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

/-!
# A384598: Expansion of (1-3*x^2) / (1-x-4*x^2+2*x^3+2*x^4).

The programs for A384598, the canonical program `A384598.P18088159735085619859` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384598 has offset 0).

The definition of A384598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2)/(1-x-4x^2+2x^3+2x^4))` (program `A384598.P18088159735085619859`, by `A384598.P18088159735085619859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384598.P18088159735085619859

`ogf((1-3x^2)/(1-x-4x^2+2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384598

/-- `ogf((1-3x^2)/(1-x-4x^2+2x^3+2x^4))` -/
def P18088159735085619859.Spec : Prop :=
  ∀ n, P18088159735085619859.a n = A384598 n

theorem P18088159735085619859.correct : P18088159735085619859.Spec := by
  intro n
  simp only [A384598]

end A384598

/-!
# A384599: Expansion of (1+3*x+2*x^2) / (1-4*x^2-2*x^3).

The programs for A384599, the canonical program `A384599.P5405995634609708607` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384599 has offset 0).

The definition of A384599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-4x^2-2x^3))` (program `A384599.P5405995634609708607`, by `A384599.P5405995634609708607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384599.P5405995634609708607

`ogf((1+3x+2x^2)/(1-4x^2-2x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A384599

/-- `ogf((1+3x+2x^2)/(1-4x^2-2x^3))` -/
def P5405995634609708607.Spec : Prop :=
  ∀ n, P5405995634609708607.a n = A384599 n

theorem P5405995634609708607.correct : P5405995634609708607.Spec := by
  intro n
  simp only [A384599]

end A384599

/-! ## A384599.P6245413821744720967

`A384598(n+2)-A384598(n)`
-/

namespace A384599.P6245413821744720967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384598 (n + 2) - A384598 n

end

end A384599.P6245413821744720967

namespace A384599

/-- `A384598(n+2)-A384598(n)` -/
def P6245413821744720967.Spec : Prop :=
  ∀ n, P6245413821744720967.a n = A384599 n

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

