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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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

/-!
# A243900: Prime p such that p^5 + p^3 + p - 4 and p^5 + p^3 + p + 4 are primes.

The programs for A243900, there is no canonical definition to state claims against.
-/

/-! ## A243900.P13119482110511859419

`∩[A243898(n+1), A243899(n+1)]`
-/

namespace A243900.P13119482110511859419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243900.P13119482110511859419

/-!
# A243902: Number of pairs of terms of the sequence A237929 less than 10^n.

The programs for A243902, there is no canonical definition to state claims against.
-/

/-! ## A243902.P3502779304289493485

`A088275(A008537(n+2))`
-/

namespace A243902.P3502779304289493485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088275 (A008537 (n + 2)).toNat

end

end A243902.P3502779304289493485

/-! ## A243902.P15856002349337967601

`A262689(A284998(2*n+1))+gcd(n, C(2, n))+n`
-/

namespace A243902.P15856002349337967601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A284998 (2 * n + 1)).toNat + (Nat.gcd n (Nat.choose 2 n) + n : ℤ)

end

end A243902.P15856002349337967601

/-! ## A243902.P1708428036403470567

`A081386(A255333(n)+A152809(n))`
-/

namespace A243902.P1708428036403470567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (A255333 n + A152809 n).toNat

end

end A243902.P1708428036403470567

/-!
# A243903: Numbers n such that (number of primes <= n) is greater than or equal to (number of semiprimes <= n).

The programs for A243903, there is no canonical definition to state claims against.
-/

/-! ## A243903.P5639101333405071770

`4^floor(n/25)+n`
-/

namespace A243903.P5639101333405071770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌊(n : ℚ) / 25⌋ : ℤ) + (n : ℚ)

end

end A243903.P5639101333405071770

/-! ## A243903.P620857549111130795

`∑[3*val(n+2, 27)+1]`
-/

namespace A243903.P620857549111130795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.valuation (n + 2) 27 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243903.P620857549111130795

/-! ## A243903.P15618159996277624459

`∑[∏{e}[3-(n+2)², #²]]`
-/

namespace A243903.P15618159996277624459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n + 2) ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243903.P15618159996277624459

/-!
# A243905: Multiplicative order of 2 modulo prime(n)^2 for n >= 2.

The programs for A243905, there is no canonical definition to state claims against.
-/

/-! ## A243905.P6853717143447378280

`A014664(n+2)*A237292(A005097(n+1))`
-/

namespace A243905.P6853717143447378280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2) * A237292 (A005097 (n + 1)).toNat

end

end A243905.P6853717143447378280

/-! ## A243905.P3945972149569013519

`2*A005097(n+1)/A001917(n+2)*A237292(A005097(n+1))`
-/

namespace A243905.P3945972149569013519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A005097 (n + 1) : ℚ) / (A001917 (n + 2) : ℚ)) * (A237292 (A005097 (n + 1)).toNat : ℚ)

end

end A243905.P3945972149569013519

/-! ## A243905.P12209797177541941500

`A237292(A005097(n+1))*A336843(A008578(n+2))`
-/

namespace A243905.P12209797177541941500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 (A005097 (n + 1)).toNat * A336843 (A008578 (n + 2)).toNat

end

end A243905.P12209797177541941500

/-! ## A243905.P6636104449708527111

`A054703(p?[2*n+1])*A237292(A005097(n+1))`
-/

namespace A243905.P6636104449708527111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) * A237292 (A005097 (n + 1)).toNat

end

end A243905.P6636104449708527111

/-! ## A243905.P11013558365114217077

`A007733(A000040(n+2))*A237292(A005097(n+1))`
-/

namespace A243905.P11013558365114217077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A000040 (n + 2)).toNat * A237292 (A005097 (n + 1)).toNat

end

end A243905.P11013558365114217077

/-! ## A243905.P9422339800074627575

`p?[A213724(n)]*A014664(n+2)`
-/

namespace A243905.P9422339800074627575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A014664 (n + 2)

end

end A243905.P9422339800074627575

/-! ## A243905.P13444738644438946861

`A014664(n+2)*A159477(A008864(n+1))`
-/

namespace A243905.P13444738644438946861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2) * A159477 (A008864 (n + 1)).toNat

end

end A243905.P13444738644438946861

/-! ## A243905.P2889051209973841650

`A002326(A005097(n+1))*A159477(A008864(n+1))`
-/

namespace A243905.P2889051209973841650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A005097 (n + 1)).toNat * A159477 (A008864 (n + 1)).toNat

end

end A243905.P2889051209973841650

/-! ## A243905.P2117948491646115980

`p?[A065679(n)]*A014664(n+2)`
-/

namespace A243905.P2117948491646115980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A014664 (n + 2)

end

end A243905.P2117948491646115980

/-! ## A243905.P12435218691087245502

`p?[A116570(n)]*A014664(n+2)`
-/

namespace A243905.P12435218691087245502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A014664 (n + 2)

end

end A243905.P12435218691087245502

/-!
# A243906: (Number of semiprimes <= n) - (number of primes <= n).

The programs for A243906, the canonical program `A243906.P883148336844594842` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243906 has offset 1).

The definition of A243906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A072000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243906.P883148336844594842

`A072000(n+1)-A000720(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A243906

/-- `A072000(n+1)-A000720(n+1)` -/
def P883148336844594842.Spec : Prop :=
  ∀ n, P883148336844594842.a n = A243906 (n + 1)

theorem P883148336844594842.correct : P883148336844594842.Spec := by
  intro n
  simp only [A243906, Nat.add_sub_cancel]

end A243906

/-! ## A243906.P1724416089660847465

`A072613(n+1)-A056812(n+1)`
-/

namespace A243906.P1724416089660847465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (n + 1) - A056812 (n + 1)

end

end A243906.P1724416089660847465

namespace A243906

/-- `A072613(n+1)-A056812(n+1)` -/
def P1724416089660847465.Spec : Prop :=
  ∀ n, P1724416089660847465.a n = A243906 (n + 1)

end A243906

/-! ## A243906.P6489422559119938907

`∑[A194337(A001222(n+1)+1)-1]`
-/

namespace A243906.P6489422559119938907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194337 (A001222 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243906.P6489422559119938907

namespace A243906

/-- `∑[A194337(A001222(n+1)+1)-1]` -/
def P6489422559119938907.Spec : Prop :=
  ∀ n, P6489422559119938907.a n = A243906 (n + 1)

end A243906

/-! ## A243906.P12905669142902852077

`∑[A064911(n+1)]-A000720(n+1)`
-/

namespace A243906.P12905669142902852077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1)

end

end A243906.P12905669142902852077

namespace A243906

/-- `∑[A064911(n+1)]-A000720(n+1)` -/
def P12905669142902852077.Spec : Prop :=
  ∀ n, P12905669142902852077.a n = A243906 (n + 1)

end A243906

/-! ## A243906.P135572992350288330

`∑[A064911(n+1)-A010051(n+1)]`
-/

namespace A243906.P135572992350288330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243906.P135572992350288330

namespace A243906

/-- `∑[A064911(n+1)-A010051(n+1)]` -/
def P135572992350288330.Spec : Prop :=
  ∀ n, P135572992350288330.a n = A243906 (n + 1)

end A243906

/-! ## A243906.P7114742152318826051

`A072000(n+1)-∑[A010051(n+1)]`
-/

namespace A243906.P7114742152318826051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243906.P7114742152318826051

namespace A243906

/-- `A072000(n+1)-∑[A010051(n+1)]` -/
def P7114742152318826051.Spec : Prop :=
  ∀ n, P7114742152318826051.a n = A243906 (n + 1)

end A243906

/-! ## A243906.P5920370606673745389

`A072000(n+1)+1-A036234(n+1)`
-/

namespace A243906.P5920370606673745389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) + (1 - A036234 (n + 1))

end

end A243906.P5920370606673745389

namespace A243906

/-- `A072000(n+1)+1-A036234(n+1)` -/
def P5920370606673745389.Spec : Prop :=
  ∀ n, P5920370606673745389.a n = A243906 (n + 1)

end A243906

/-! ## A243906.P13254931353382934796

`∑[A064911(n+1)-A064911(2*(n+1))]`
-/

namespace A243906.P13254931353382934796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) - A064911 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243906.P13254931353382934796

namespace A243906

/-- `∑[A064911(n+1)-A064911(2*(n+1))]` -/
def P13254931353382934796.Spec : Prop :=
  ∀ n, P13254931353382934796.a n = A243906 (n + 1)

end A243906

/-! ## A243906.P9879813232115396907

`∑[A010051(A032742(n+1))-A010051(n+1)]`
-/

namespace A243906.P9879813232115396907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A032742 (n + 1)).toNat - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243906.P9879813232115396907

namespace A243906

/-- `∑[A010051(A032742(n+1))-A010051(n+1)]` -/
def P9879813232115396907.Spec : Prop :=
  ∀ n, P9879813232115396907.a n = A243906 (n + 1)

end A243906

/-! ## A243906.P8813109570036827935

`A056811(n+1)+A072613(n+1)-A000720(n+1)`
-/

namespace A243906.P8813109570036827935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (n + 1) + (A072613 (n + 1) - A000720 (n + 1))

end

end A243906.P8813109570036827935

namespace A243906

/-- `A056811(n+1)+A072613(n+1)-A000720(n+1)` -/
def P8813109570036827935.Spec : Prop :=
  ∀ n, P8813109570036827935.a n = A243906 (n + 1)

end A243906

/-! ## A243906.P15369472402983023490

`A334940(n+1)-(A072613(n+1)+A000720(n+1))`
-/

namespace A243906.P15369472402983023490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334940 (n + 1) - (A072613 (n + 1) + A000720 (n + 1))

end

end A243906.P15369472402983023490

namespace A243906

/-- `A334940(n+1)-(A072613(n+1)+A000720(n+1))` -/
def P15369472402983023490.Spec : Prop :=
  ∀ n, P15369472402983023490.a n = A243906 (n + 1)

end A243906

/-!
# A243907: Numbers that can be expressed as n*m + (n-1)*(m-1), n = 2, 3, ... , m = n, n+1, n+2, ... in at least two different ways. Ordered increasingly.

The programs for A243907, there is no canonical definition to state claims against.
-/

/-! ## A243907.P9756280325476656659

`lt[2, A193773(n)]+1`
-/

namespace A243907.P9756280325476656659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A243907.P9756280325476656659

/-! ## A243907.P2026418953613980696

`lt[2, A161116(n)]+2`
-/

namespace A243907.P2026418953613980696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A243907.P2026418953613980696

/-! ## A243907.P386507675224943057

`lt[3, A340101(n)]+1`
-/

namespace A243907.P386507675224943057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A243907.P386507675224943057

/-! ## A243907.P9065307554698842223

`lt[4, A352063(n)]+1`
-/

namespace A243907.P9065307554698842223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A243907.P9065307554698842223

/-! ## A243907.P7296799731748224990

`lt[91, A158280(n)]+1`
-/

namespace A243907.P7296799731748224990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  91

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158280 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A243907.P7296799731748224990

/-! ## A243907.P16539394107027366992

`ceil(A333326(n+1)/2)`
-/

namespace A243907.P16539394107027366992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333326 (n + 1) : ℚ) / 2⌉

end

end A243907.P16539394107027366992

/-! ## A243907.P14289111665507976368

`lt[2, A193773(abs(1-n))]`
-/

namespace A243907.P14289111665507976368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243907.P14289111665507976368

/-! ## A243907.P8403085897634760699

`lt[4, A000005(abs(1-2*n))]`
-/

namespace A243907.P8403085897634760699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243907.P8403085897634760699

/-! ## A243907.P17373069980467858411

`lt[4, A000005(2*n+1)]+1`
-/

namespace A243907.P17373069980467858411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A243907.P17373069980467858411

/-! ## A243907.P7973000115106522554

`lt[3, A000005(abs(1-n)+n)-1]`
-/

namespace A243907.P7973000115106522554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + (n : ℤ)).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243907.P7973000115106522554

/-!
# A243910: Least number k>0 such that 3^k contains exactly n different digits.

The programs for A243910, there is no canonical definition to state claims against.
-/

/-! ## A243910.P10721413472992981011

`∑[A291439(∑{d}[n+1, #]-n)]`
-/

namespace A243910.P10721413472992981011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291439 (∑ d ∈ Nat.divisors (f2 n), d - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243910.P10721413472992981011

/-! ## A243910.P1518365878431529853

`A005842(∑[A364350(n)])`
-/

namespace A243910.P1518365878431529853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005842 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243910.P1518365878431529853

/-! ## A243910.P4489221344385150540

`A005842(A008751(n+1))`
-/

namespace A243910.P4489221344385150540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005842 (A008751 (n + 1)).toNat

end

end A243910.P4489221344385150540

/-! ## A243910.P9907195734727328809

`A005842(A029002(n+1))`
-/

namespace A243910.P9907195734727328809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005842 (A029002 (n + 1)).toNat

end

end A243910.P9907195734727328809

/-! ## A243910.P296409893741768410

`A005842(A174090(n+1))`
-/

namespace A243910.P296409893741768410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005842 (A174090 (n + 1)).toNat

end

end A243910.P296409893741768410

/-!
# A243912: Numbers n > 1 such that n^k never ends in 2 or more identical digits for any k.

The programs for A243912, there is no canonical definition to state claims against.
-/

/-! ## A243912.P11526235643228030218

`eq[0, A243911(n+2)]+2`
-/

namespace A243912.P11526235643228030218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243911 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A243912.P11526235643228030218

/-! ## A243912.P7856313293803733088

`record[gcd(n+3, A243911(n+3))]`
-/

namespace A243912.P7856313293803733088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A243911 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243912.P7856313293803733088

/-! ## A243912.P3699363881907923270

`lt[A243911(round(acot(n)+n))+1, 2]`
-/

namespace A243912.P3699363881907923270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243911 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243912.P3699363881907923270

/-! ## A243912.P5489730489726277594

`eq[0, A243911(A233583(n+1))]`
-/

namespace A243912.P5489730489726277594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243911 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243912.P5489730489726277594

/-! ## A243912.P16163817539636857256

`eq[1, A243977(n+2)]+2`
-/

namespace A243912.P16163817539636857256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243977 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A243912.P16163817539636857256

/-!
# A243915: a(n) = sigma(omega(n)).

The programs for A243915, the canonical program `A243915.P1408806068792064357` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243915 has offset 2).

The definition of A243915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243915.P14646394029069908318

`A000203(∑{p}[n+2, A001221(#)])`
-/

namespace A243915.P14646394029069908318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ p ∈ Nat.primeFactors (f1 n), A001221 p).toNat

end

end A243915.P14646394029069908318

namespace A243915

/-- `A000203(∑{p}[n+2, A001221(#)])` -/
def P14646394029069908318.Spec : Prop :=
  ∀ n, P14646394029069908318.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P5695695453847692572

`A000203(∑{p}[n+2, A001222(#)])`
-/

namespace A243915.P5695695453847692572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat

end

end A243915.P5695695453847692572

namespace A243915

/-- `A000203(∑{p}[n+2, A001222(#)])` -/
def P5695695453847692572.Spec : Prop :=
  ∀ n, P5695695453847692572.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P12337281554152742281

`A000203(A001222(∏{p}[n+2, #]))`
-/

namespace A243915.P12337281554152742281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A243915.P12337281554152742281

namespace A243915

/-- `A000203(A001222(∏{p}[n+2, #]))` -/
def P12337281554152742281.Spec : Prop :=
  ∀ n, P12337281554152742281.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P12824717700405630292

`A000203(∑{e}[A007947(n+2), #])`
-/

namespace A243915.P12824717700405630292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A243915.P12824717700405630292

namespace A243915

/-- `A000203(∑{e}[A007947(n+2), #])` -/
def P12824717700405630292.Spec : Prop :=
  ∀ n, P12824717700405630292.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P4263586391513070661

`A000203(∑{p}[n+2, abs(A008683(#))])`
-/

namespace A243915.P4263586391513070661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ p ∈ Nat.primeFactors (f1 n), |A008683 p|).toNat

end

end A243915.P4263586391513070661

namespace A243915

/-- `A000203(∑{p}[n+2, abs(A008683(#))])` -/
def P4263586391513070661.Spec : Prop :=
  ∀ n, P4263586391513070661.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P3890847671884161084

`A000203(∑{p}[n+2, -A008683(#)])`
-/

namespace A243915.P3890847671884161084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ p ∈ Nat.primeFactors (f1 n), (-A008683 p)).toNat

end

end A243915.P3890847671884161084

namespace A243915

/-- `A000203(∑{p}[n+2, -A008683(#)])` -/
def P3890847671884161084.Spec : Prop :=
  ∀ n, P3890847671884161084.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P14521964744500926866

`A088580(∑{p}[n+2, A001222(#)])-1`
-/

namespace A243915.P14521964744500926866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat - 1

end

end A243915.P14521964744500926866

namespace A243915

/-- `A088580(∑{p}[n+2, A001222(#)])-1` -/
def P14521964744500926866.Spec : Prop :=
  ∀ n, P14521964744500926866.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P5592751793429348885

`A000203(A001222(A007947(n+2)))`
-/

namespace A243915.P5592751793429348885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001222 (A007947 (n + 2)).toNat).toNat

end

end A243915.P5592751793429348885

namespace A243915

/-- `A000203(A001222(A007947(n+2)))` -/
def P5592751793429348885.Spec : Prop :=
  ∀ n, P5592751793429348885.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P8327555615450504326

`A000203(Δ[A001221(n+1)]+A001221(n+1))`
-/

namespace A243915.P8327555615450504326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n + A001221 (n + 1)).toNat

end

end A243915.P8327555615450504326

namespace A243915

/-- `A000203(Δ[A001221(n+1)]+A001221(n+1))` -/
def P8327555615450504326.Spec : Prop :=
  ∀ n, P8327555615450504326.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P1869699218608902073

`∑{d}[A158210(n+2), #]`
-/

namespace A243915.P1869699218608902073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A243915.P1869699218608902073

namespace A243915

/-- `∑{d}[A158210(n+2), #]` -/
def P1869699218608902073.Spec : Prop :=
  ∀ n, (P1869699218608902073.a n : ℤ) = A243915 (n + 2)

end A243915

/-! ## A243915.P6681804172752087802

`∑{d}[A392285(n+2), #]`
-/

namespace A243915.P6681804172752087802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392285 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A243915.P6681804172752087802

namespace A243915

/-- `∑{d}[A392285(n+2), #]` -/
def P6681804172752087802.Spec : Prop :=
  ∀ n, (P6681804172752087802.a n : ℤ) = A243915 (n + 2)

end A243915

/-! ## A243915.P13141242429266498196

`A290080(∏{p}[n+2, #])`
-/

namespace A243915.P13141242429266498196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290080 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A243915.P13141242429266498196

namespace A243915

/-- `A290080(∏{p}[n+2, #])` -/
def P13141242429266498196.Spec : Prop :=
  ∀ n, P13141242429266498196.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P6074132403943213293

`A000203(abs(A158210(n+2)))`
-/

namespace A243915.P6074132403943213293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 |A158210 (n + 2)|.toNat

end

end A243915.P6074132403943213293

namespace A243915

/-- `A000203(abs(A158210(n+2)))` -/
def P6074132403943213293.Spec : Prop :=
  ∀ n, P6074132403943213293.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P5065890557626763875

`A000203(log2(A034444(n+2)))`
-/

namespace A243915.P5065890557626763875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.logb 2 (A034444 (n + 2) : ℝ))).toNat

end

end A243915.P5065890557626763875

namespace A243915

/-- `A000203(log2(A034444(n+2)))` -/
def P5065890557626763875.Spec : Prop :=
  ∀ n, P5065890557626763875.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P1408806068792064357

`A000203(Δ[A013939(n+1)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A243915

/-- `A000203(Δ[A013939(n+1)])` -/
def P1408806068792064357.Spec : Prop :=
  ∀ n, P1408806068792064357.a n = A243915 (n + 2)

theorem P1408806068792064357.correct : P1408806068792064357.Spec := by
  intro n
  simp only [A243915, Nat.add_sub_cancel]

end A243915

/-! ## A243915.P11830966770038873940

`∑{d}[A000005(A007875(n+2)), #]`
-/

namespace A243915.P11830966770038873940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007875 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A243915.P11830966770038873940

namespace A243915

/-- `∑{d}[A000005(A007875(n+2)), #]` -/
def P11830966770038873940.Spec : Prop :=
  ∀ n, (P11830966770038873940.a n : ℤ) = A243915 (n + 2)

end A243915

/-! ## A243915.P17710543435085793869

`∑{d}[A001222(A181819(n+2)), #]`
-/

namespace A243915.P17710543435085793869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181819 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A243915.P17710543435085793869

namespace A243915

/-- `∑{d}[A001222(A181819(n+2)), #]` -/
def P17710543435085793869.Spec : Prop :=
  ∀ n, (P17710543435085793869.a n : ℤ) = A243915 (n + 2)

end A243915

/-! ## A243915.P17331277187432674345

`A000203(A229109(n+2)-(n+2))`
-/

namespace A243915.P17331277187432674345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A229109 (n + 2) - (n + 2 : ℤ)).toNat

end

end A243915.P17331277187432674345

namespace A243915

/-- `A000203(A229109(n+2)-(n+2))` -/
def P17331277187432674345.Spec : Prop :=
  ∀ n, P17331277187432674345.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P3415456937109892087

`A000203(A027656(2*n+1)+A001221(n+2))`
-/

namespace A243915.P3415456937109892087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A027656 (2 * n + 1) + A001221 (n + 2)).toNat

end

end A243915.P3415456937109892087

namespace A243915

/-- `A000203(A027656(2*n+1)+A001221(n+2))` -/
def P3415456937109892087.Spec : Prop :=
  ∀ n, P3415456937109892087.a n = A243915 (n + 2)

end A243915

/-! ## A243915.P11091994472781984327

`A001221(A166142(n+2))+1`
-/

namespace A243915.P11091994472781984327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A166142 (n + 2)).toNat + 1

end

end A243915.P11091994472781984327

namespace A243915

/-- `A001221(A166142(n+2))+1` -/
def P11091994472781984327.Spec : Prop :=
  ∀ n, P11091994472781984327.a n = A243915 (n + 2)

end A243915

/-!
# A243916: Largest safe prime less than 2^n.

The programs for A243916, there is no canonical definition to state claims against.
-/

/-! ## A243916.P7703181112108339656

`2^(n+3)-A057821(n+3)`
-/

namespace A243916.P7703181112108339656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A057821 (n + 3)

end

end A243916.P7703181112108339656

/-! ## A243916.P4025736458761936614

`A000051(n+3)-2*A345014(n+2)`
-/

namespace A243916.P4025736458761936614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 3) - 2 * A345014 (n + 2)

end

end A243916.P4025736458761936614

/-! ## A243916.P2886934498485988376

`A171497(n+1)-(2*A345014(n+2)-1)`
-/

namespace A243916.P2886934498485988376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 (n + 1) - (2 * A345014 (n + 2) - 1)

end

end A243916.P2886934498485988376

/-! ## A243916.P14407070898134056635

`A198633(n+2)-(2*A345014(n+2)-1)`
-/

namespace A243916.P14407070898134056635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 2) - (2 * A345014 (n + 2) - 1)

end

end A243916.P14407070898134056635

/-! ## A243916.P17385895201307872376

`A171497(n+1)-A004273(A345014(n+2))`
-/

namespace A243916.P17385895201307872376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 (n + 1) - A004273 (A345014 (n + 2)).toNat

end

end A243916.P17385895201307872376

/-!
# A243917: Number of non-twin divisors of n.

The programs for A243917, there is no canonical definition to state claims against.
-/

/-! ## A243917.P10635925055479037682

`A000005(n+1)-A243865(n+1)`
-/

namespace A243917.P10635925055479037682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A243865 (n + 1)

end

end A243917.P10635925055479037682

/-! ## A243917.P13152122382931852136

`Δ[A006218(n)]-A243865(n+1)`
-/

namespace A243917.P13152122382931852136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A243865 (n + 1)

end

end A243917.P13152122382931852136

/-! ## A243917.P616145912802934021

`A134226(A184389(n+1))-A243865(n+1)`
-/

namespace A243917.P616145912802934021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (A184389 (n + 1)).toNat - A243865 (n + 1)

end

end A243917.P616145912802934021

/-! ## A243917.P11479209283067551912

`A006218(n+1)-(A243865(n+1)+A006218(n))`
-/

namespace A243917.P11479209283067551912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (A243865 (n + 1) + A006218 n)

end

end A243917.P11479209283067551912

/-! ## A243917.P4536425464736210783

`A132747(n+1)+A132881(n+1)-A243865(n+1)`
-/

namespace A243917.P4536425464736210783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1) + (A132881 (n + 1) - A243865 (n + 1))

end

end A243917.P4536425464736210783

/-! ## A243917.P1172365568642730318

`A001227(n+1)*A001511(n+1)-A243865(n+1)`
-/

namespace A243917.P1172365568642730318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A243865 (n + 1)

end

end A243917.P1172365568642730318

/-!
# A243921: G.f.: 1 = Sum_{n>=0} a(n) * x^n*(1-x)^(n+1) / Product_{k=1..n} (1 + 2*(k+1)*x).

The programs for A243921, there is no canonical definition to state claims against.
-/

/-! ## A243921.P2870112502780158338

`∏[A000005(3^∑[n])]-n`
-/

namespace A243921.P2870112502780158338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 ^ (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A243921.P2870112502780158338

/-!
# A243922: G.f.: 1 = Sum_{n>=0} a(n) * x^n*(1-x)^(n+1) / Product_{k=1..n} (1 + 2*(k+2)*x).

The programs for A243922, there is no canonical definition to state claims against.
-/

/-! ## A243922.P12242166969047070068

`A005206(A143823(n²))`
-/

namespace A243922.P12242166969047070068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A143823 (n ^ 2)).toNat

end

end A243922.P12242166969047070068

/-!
# A243923: Row sums of triangle A243920.

The programs for A243923, there is no canonical definition to state claims against.
-/

/-! ## A243923.P3893524588627114511

`A317683(record[A174109(n)])`
-/

namespace A243923.P3893524588627114511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243923.P3893524588627114511

/-! ## A243923.P12772231575323631783

`A002264(A025164(n))+comp[2*(n+1)]`
-/

namespace A243923.P12772231575323631783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A025164 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A243923.P12772231575323631783

/-!
# A243924: Irregular triangular array of taxicab norms of Gaussian integers in array G generated as at Comments.

The programs for A243924, there is no canonical definition to state claims against.
-/

/-! ## A243924.P3080616928351211558

`A000120(lt[A034090(n+1), A263770(n+1)])`
-/

namespace A243924.P3080616928351211558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243924.P3080616928351211558

/-! ## A243924.P57333121392341329

`A000120(lt[A045683(n), A140600(2*n+5)])`
-/

namespace A243924.P57333121392341329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140600 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243924.P57333121392341329

/-! ## A243924.P13573241585714654755

`A000120(lt[A145281(n+1), A239586(3*n+2)])`
-/

namespace A243924.P13573241585714654755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239586 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243924.P13573241585714654755

/-! ## A243924.P6517514618580336087

`A000120(lt[A201142(n+1), A206524(3*n+4)])`
-/

namespace A243924.P6517514618580336087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206524 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243924.P6517514618580336087

/-! ## A243924.P9859478926017324131

`A354582(A079170(n))`
-/

namespace A243924.P9859478926017324131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A079170 n).toNat

end

end A243924.P9859478926017324131

/-!
# A243925: Irregular triangular array of denominators of the positive rational numbers ordered as in Comments.

The programs for A243925, there is no canonical definition to state claims against.
-/

/-! ## A243925.P9761097245088322697

`A014419(A156576(n))%7`
-/

namespace A243925.P9761097245088322697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014419 (A156576 n).toNat) 7

end

end A243925.P9761097245088322697

/-! ## A243925.P17280771107525897613

`∏{p}[A277822(A079474(n+1)), #]`
-/

namespace A243925.P17280771107525897613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A079474 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A243925.P17280771107525897613

/-! ## A243925.P17110220287181310767

`A347430(dr(A347618(n))*A347615(n))`
-/

namespace A243925.P17110220287181310767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347430 ((SequenceMachineLib.digitalRoot (A347618 n) : ℤ) * A347615 n).toNat

end

end A243925.P17110220287181310767

/-!
# A243930: Number of numbers in row n of the array at A243928.

The programs for A243930, there is no canonical definition to state claims against.
-/

/-! ## A243930.P16762669169116979172

`A298895(n+1)+∑[A304887(n)]`
-/

namespace A243930.P16762669169116979172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298895 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243930.P16762669169116979172

/-! ## A243930.P6111506410205733704

`A298930(n+1)+∑[A304887(n)]`
-/

namespace A243930.P6111506410205733704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243930.P6111506410205733704

/-! ## A243930.P13449905584407910451

`A299554(n+1)+∑[A304887(n)]`
-/

namespace A243930.P13449905584407910451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243930.P13449905584407910451

/-! ## A243930.P505931090937348639

`A000720(A293606(n)+A197280(n+1))`
-/

namespace A243930.P505931090937348639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A293606 n + A197280 (n + 1)).toNat

end

end A243930.P505931090937348639

/-!
# A243931: Number of isomorphism classes of 2-reductive involutory abelian/medial quandles.

The programs for A243931, there is no canonical definition to state claims against.
-/

/-! ## A243931.P3696827777298824768

`A003056(A152796(n))`
-/

namespace A243931.P3696827777298824768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A152796 n).toNat

end

end A243931.P3696827777298824768

/-! ## A243931.P12835732996504562603

`A048264(A135346(n))`
-/

namespace A243931.P12835732996504562603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048264 (A135346 n).toNat

end

end A243931.P12835732996504562603

/-! ## A243931.P14341981613937840274

`A048688(A148923(n))`
-/

namespace A243931.P14341981613937840274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048688 (A148923 n).toNat

end

end A243931.P14341981613937840274

/-!
# A243932: Positive integers with the same number of twin divisors as non-twin divisors.

The programs for A243932, there is no canonical definition to state claims against.
-/

/-! ## A243932.P7237424029167432625

`eq[A243865(n+1), A243917(n+1)]+1`
-/

namespace A243932.P7237424029167432625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A243932.P7237424029167432625

/-! ## A243932.P16566011973357829485

`eq[A000005(n+1)/2, A243865(n+1)]+1`
-/

namespace A243932.P16566011973357829485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A243932.P16566011973357829485

/-! ## A243932.P12381688560860732098

`eq[A000005(n+1)/2, A243917(n+1)]+1`
-/

namespace A243932.P12381688560860732098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A243932.P12381688560860732098

/-! ## A243932.P1979960660666442136

`A020725(eq[A243865(n+1), A243917(n+1)])`
-/

namespace A243932.P1979960660666442136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243932.P1979960660666442136

/-! ## A243932.P1679581172801628182

`A065475(eq[A243865(n+1), A243917(n+1)])`
-/

namespace A243932.P1679581172801628182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243932.P1679581172801628182

/-!
# A243933: Rounded down ratio of a minimum intersection area with a unit circle area in n-symmetrical unit circles intersect in a single point.

The programs for A243933, there is no canonical definition to state claims against.
-/

/-! ## A243933.P8854841730538213352

`A120930(A067090(n+1))+A066446(n+1)`
-/

namespace A243933.P8854841730538213352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120930 (A067090 (n + 1)).toNat + A066446 (n + 1)

end

end A243933.P8854841730538213352

/-!
# A243934: Numbers k such that 6^k + k^6 + 1 is prime.

The programs for A243934, there is no canonical definition to state claims against.
-/

/-! ## A243934.P4344042738634068905

`A127480(A060798(n+1)-A127477(n+1))`
-/

namespace A243934.P4344042738634068905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127480 (A060798 (n + 1) - A127477 (n + 1)).toNat

end

end A243934.P4344042738634068905

/-!
# A243935: Numbers m such that 5 divides A000041(m).

The programs for A243935, there is no canonical definition to state claims against.
-/

/-! ## A243935.P1545945368714324260

`eq[0, A068908(n)]`
-/

namespace A243935.P1545945368714324260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243935.P1545945368714324260

/-! ## A243935.P17328904561820026519

`eq[0, A178743(n)%5]`
-/

namespace A243935.P17328904561820026519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178743 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243935.P17328904561820026519

/-! ## A243935.P15400268727852847037

`lt[A068908(n), A057427(n)]`
-/

namespace A243935.P15400268727852847037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243935.P15400268727852847037

/-! ## A243935.P9510733734592810259

`eq[5*A040051(n), A178743(n)]`
-/

namespace A243935.P9510733734592810259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178743 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243935.P9510733734592810259

/-! ## A243935.P11565411590676084705

`lt[A068908(n), A008836(n+1)²]`
-/

namespace A243935.P11565411590676084705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243935.P11565411590676084705

/-! ## A243935.P952370198473412234

`lt[A068908(n), A055642(A092573(n))]`
-/

namespace A243935.P952370198473412234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A092573 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243935.P952370198473412234

/-! ## A243935.P1718742394685033226

`lt[A068908(n), A003557(A007947(n+1))]`
-/

namespace A243935.P1718742394685033226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243935.P1718742394685033226

/-! ## A243935.P15169615549921556190

`lt[A068908(n), A008833(A000040(n+1))]`
-/

namespace A243935.P15169615549921556190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243935.P15169615549921556190

/-! ## A243935.P4843792975635080078

`eq[0, A000041(n)%5]`
-/

namespace A243935.P4843792975635080078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243935.P4843792975635080078

/-! ## A243935.P17470645263661195937

`eq[4, A000065(n)%5]`
-/

namespace A243935.P17470645263661195937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243935.P17470645263661195937

/-! ## A243935.P15137197959462662455

`eq[5, gcd(5, A000041(n+1))]+1`
-/

namespace A243935.P15137197959462662455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A000041 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A243935.P15137197959462662455

/-! ## A243935.P5863918653624545770

`eq[lcm(5, A183011(n)), A183011(n)]`
-/

namespace A243935.P5863918653624545770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A183011 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243935.P5863918653624545770

/-! ## A243935.P10367916696130189160

`lt[A068908(n), (n/A000041(n))²]`
-/

namespace A243935.P10367916696130189160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A000041 n : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A243935.P10367916696130189160

/-! ## A243935.P7756515747146269942

`lt[A000041(n*A068908(n)), n]`
-/

namespace A243935.P7756515747146269942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n : ℤ) * A068908 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243935.P7756515747146269942

/-!
# A243936: Numbers m such that 7 divides A000041(m).

The programs for A243936, there is no canonical definition to state claims against.
-/

/-! ## A243936.P4780422183632080149

`eq[0, A068909(n)]`
-/

namespace A243936.P4780422183632080149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243936.P4780422183632080149

/-! ## A243936.P7366709842355424660

`A000027(lt[A068909(n), 1])`
-/

namespace A243936.P7366709842355424660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068909 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A243936.P7366709842355424660

/-! ## A243936.P16552186777813717856

`lt[A068909(n), A057077(n)²]`
-/

namespace A243936.P16552186777813717856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243936.P16552186777813717856

/-! ## A243936.P3300748682446328899

`lt[A000040(n+1)*A068909(n), 1]`
-/

namespace A243936.P3300748682446328899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A068909 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243936.P3300748682446328899

/-! ## A243936.P9230720501148062420

`lt[A006530(n+1)*A068909(n), 1]`
-/

namespace A243936.P9230720501148062420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A068909 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243936.P9230720501148062420

/-! ## A243936.P1208381806156263950

`lt[A062356(n+1)*A068909(n), 1]`
-/

namespace A243936.P1208381806156263950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062356 (n + 1) * A068909 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243936.P1208381806156263950

/-! ## A243936.P1125174051310821611

`lt[A068909(n)*A281999(n+1), 1]`
-/

namespace A243936.P1125174051310821611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068909 n * A281999 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243936.P1125174051310821611

/-! ## A243936.P16575829431511937872

`lt[A032742(n+1)²*A068909(n), 1]`
-/

namespace A243936.P16575829431511937872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) ^ 2 * A068909 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243936.P16575829431511937872

/-! ## A243936.P18397585893635292564

`eq[0, A000041(n)%7]`
-/

namespace A243936.P18397585893635292564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243936.P18397585893635292564

/-! ## A243936.P4799295484316969013

`eq[6, A000065(n)%7]`
-/

namespace A243936.P4799295484316969013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243936.P4799295484316969013

/-! ## A243936.P13994119036463733824

`eq[7, gcd(7, A000041(n+1))]+1`
-/

namespace A243936.P13994119036463733824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A000041 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A243936.P13994119036463733824

/-! ## A243936.P9751439223652894648

`eq[7, gcd(7, A299473(n))]`
-/

namespace A243936.P9751439223652894648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A299473 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243936.P9751439223652894648

/-! ## A243936.P9259216502736091363

`eq[0, A299474(n)%7]`
-/

namespace A243936.P9259216502736091363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299474 n) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243936.P9259216502736091363

/-! ## A243936.P2618245154803690860

`lt[A068909(n)*A279787(n), 1]`
-/

namespace A243936.P2618245154803690860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068909 n * A279787 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243936.P2618245154803690860

/-!
# A243937: Even numbers n>=6 for which lpf(n-1) > lpf(n-3), where lpf = least prime factor.

The programs for A243937, there is no canonical definition to state claims against.
-/

/-! ## A243937.P8122187375907289824

`lt[A046667(n+2), A175126(n)]+3`
-/

namespace A243937.P8122187375907289824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A243937.P8122187375907289824

/-! ## A243937.P11246777506120079069

`∩[A210939(n+1), A045506(n)]`
-/

namespace A243937.P11246777506120079069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243937.P11246777506120079069

/-! ## A243937.P13799559258633454517

`∩[A210939(n+1), A258575(n+1)]`
-/

namespace A243937.P13799559258633454517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243937.P13799559258633454517

/-! ## A243937.P16743081541023235787

`∩[A101107(n+1), A203444(n+1)]`
-/

namespace A243937.P16743081541023235787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243937.P16743081541023235787

/-!
# A243939: Expansion of f(-q)^10 / f(-q^5)^2 in power of q where f() is a Ramanujan theta function.

The programs for A243939, there is no canonical definition to state claims against.
-/

/-! ## A243939.P2470143494431276947

`A325334(A090450(n))+A010818(n)`
-/

namespace A243939.P2470143494431276947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (A090450 n).toNat + A010818 n

end

end A243939.P2470143494431276947

/-! ## A243939.P9109329253660383765

`A348616(A202059(n))+A010818(n)`
-/

namespace A243939.P9109329253660383765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348616 (A202059 n).toNat + A010818 n

end

end A243939.P9109329253660383765

/-!
# A243940: Number of partitions of n^2 into exactly 4 prime numbers.

The programs for A243940, there is no canonical definition to state claims against.
-/

/-! ## A243940.P11040693824393029844

`A259194((n+1)²)`
-/

namespace A243940.P11040693824393029844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259194 ((n + 1) ^ 2)

end

end A243940.P11040693824393029844

/-! ## A243940.P6516985041755503212

`or(char[2], A259194((n+1)^2))`
-/

namespace A243940.P6516985041755503212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A259194 ((n + 1) ^ 2))

end

end A243940.P6516985041755503212

/-! ## A243940.P15159137761368078365

`and(-1, A259194(A000290(n+1)))`
-/

namespace A243940.P15159137761368078365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A259194 (A000290 (n + 1)).toNat)

end

end A243940.P15159137761368078365

/-! ## A243940.P17499059617774118587

`A259194((n+1)^2)%A046998(n)`
-/

namespace A243940.P17499059617774118587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259194 ((n + 1) ^ 2)) (A046998 n)

end

end A243940.P17499059617774118587

/-! ## A243940.P1967297705847029478

`A007318(C(2, n))*A259194((n+1)^2)`
-/

namespace A243940.P1967297705847029478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A259194 ((n + 1) ^ 2)

end

end A243940.P1967297705847029478

/-! ## A243940.P13743384963884106978

`ceil(1/A007318(n))*A259194((n+1)^2)`
-/

namespace A243940.P13743384963884106978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A259194 ((n + 1) ^ 2)

end

end A243940.P13743384963884106978

/-! ## A243940.P1586305635580462418

`A014963(∑[n+1])*A259194((n+1)^2)`
-/

namespace A243940.P1586305635580462418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A259194 ((n + 1) ^ 2)

end

end A243940.P1586305635580462418

/-! ## A243940.P6369933029772088013

`A259194(∑[2*n+1])%A000032(n+2)`
-/

namespace A243940.P6369933029772088013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259194 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000032 (n + 2))

end

end A243940.P6369933029772088013

/-! ## A243940.P7536295910012291017

`A259194((n+1)^2)^A014963(51*(n+1))`
-/

namespace A243940.P7536295910012291017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259194 ((n + 1) ^ 2) : ℚ) ^ (A014963 (51 * (n + 1)) : ℤ)

end

end A243940.P7536295910012291017

/-! ## A243940.P5590688264810566290

`A007318(∑[(-1)^n])*A259194((n+1)^2)`
-/

namespace A243940.P5590688264810566290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A259194 ((n + 1) ^ 2)

end

end A243940.P5590688264810566290

/-!
# A243941: Number of decompositions of 36*n^2 into the sum of two twin prime pairs.

The programs for A243941, there is no canonical definition to state claims against.
-/

/-! ## A243941.P11467733317788651143

`A187759(3*(n+1)²)`
-/

namespace A243941.P11467733317788651143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187759 (3 * (n + 1) ^ 2)

end

end A243941.P11467733317788651143

/-! ## A243941.P13988921606866630057

`A159700((3*(n+1))²)/2`
-/

namespace A243941.P13988921606866630057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159700 ((3 * (n + 1)) ^ 2) : ℚ) / 2

end

end A243941.P13988921606866630057

/-! ## A243941.P15110634362001528954

`A219157(6*3*(n+1)²)`
-/

namespace A243941.P15110634362001528954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (6 * (3 * (n + 1) ^ 2))

end

end A243941.P15110634362001528954

/-! ## A243941.P10204087574123968305

`A004526(A159700((3*(n+1))²))`
-/

namespace A243941.P10204087574123968305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A159700 ((3 * (n + 1)) ^ 2)).toNat

end

end A243941.P10204087574123968305

/-! ## A243941.P9042954144961470118

`A339625(3*(n+1)²)/2`
-/

namespace A243941.P9042954144961470118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339625 (3 * (n + 1) ^ 2) : ℚ) / 2

end

end A243941.P9042954144961470118

/-!
# A243942: O.g.f.: Sum_{n>=0} n^(2*n) * x^n / (1 - n*x)^n * exp( -n^2*x / (1 - n*x) ) / n!.

The programs for A243942, there is no canonical definition to state claims against.
-/

/-! ## A243942.P4336079113678566544

`A158791(A213644(n))+1`
-/

namespace A243942.P4336079113678566544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158791 (A213644 n).toNat + 1

end

end A243942.P4336079113678566544

/-!
# A243943: a(n) = A006442(n)^2.

The programs for A243943, there is no canonical definition to state claims against.
-/

/-! ## A243943.P15525058243748287780

`A006442(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243943.P15525058243748287780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006442 n ^ 2

end

end A243943.P15525058243748287780

/-! ## A243943.P18137413015716889541

`A335333(∑[n+3])²`
-/

namespace A243943.P18137413015716889541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A243943.P18137413015716889541

/-! ## A243943.P8488264462998091097

`(A098270(n)/2^n)²`
-/

namespace A243943.P8488264462998091097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098270 n : ℚ) / (2 ^ n : ℚ)) ^ 2

end

end A243943.P8488264462998091097

/-! ## A243943.P14572564975542475291

`A121574(2*(n²+n))²`
-/

namespace A243943.P14572564975542475291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121574 (2 * (n ^ 2 + n)) ^ 2

end

end A243943.P14572564975542475291

/-! ## A243943.P3818330864372096720

`ceil(A098270(n)/A000079(n))²`
-/

namespace A243943.P3818330864372096720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098270 n : ℚ) / (A000079 n : ℚ)⌉ ^ 2

end

end A243943.P3818330864372096720

/-! ## A243943.P17721065029372956986

`A006442(n)^A000005(A006450(n+1))`
-/

namespace A243943.P17721065029372956986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006442 n : ℚ) ^ (A000005 (A006450 (n + 1)).toNat : ℤ)

end

end A243943.P17721065029372956986

/-! ## A243943.P232797460272485075

`A006442(n)^A006530(2*A001316(n))`
-/

namespace A243943.P232797460272485075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006442 n : ℚ) ^ (A006530 (2 * A001316 n).toNat : ℤ)

end

end A243943.P232797460272485075

/-! ## A243943.P17224396048599414387

`(A001850(n)/A084773(n)*A098270(n))²`
-/

namespace A243943.P17224396048599414387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001850 n : ℚ) / (A084773 n : ℚ) * (A098270 n : ℚ)) ^ 2

end

end A243943.P17224396048599414387

/-!
# A243944: a(n) = A084768(n)^2.

The programs for A243944, there is no canonical definition to state claims against.
-/

/-! ## A243944.P17131167909719180965

`A084768(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243944.P17131167909719180965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084768 n ^ 2

end

end A243944.P17131167909719180965

/-! ## A243944.P7632472716242783519

`A335333(∑[n+3]+n+3)²`
-/

namespace A243944.P7632472716242783519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)) ^ 2

end

end A243944.P7632472716242783519

/-! ## A243944.P1259303175683196512

`∑[A036453(n+1)*A299507(n)]²`
-/

namespace A243944.P1259303175683196512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A299507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A243944.P1259303175683196512

/-! ## A243944.P2324710181794259512

`A084768(n)^A000005(A007918(n))`
-/

namespace A243944.P2324710181794259512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084768 n : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A243944.P2324710181794259512

/-! ## A243944.P4133307078060818463

`A084768(n)^A020639(A247640(n))`
-/

namespace A243944.P4133307078060818463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084768 n : ℚ) ^ (A020639 (A247640 n).toNat : ℤ)

end

end A243944.P4133307078060818463

/-!
# A243945: a(n) = Sum_{k=0..n} C(2*k, k)^2 * C(n+k, n-k).

The programs for A243945, there is no canonical definition to state claims against.
-/

/-! ## A243945.P16219570515292977283

`A106621(A127922(n+2)²)`
-/

namespace A243945.P16219570515292977283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A127922 (n + 2) ^ 2).toNat

end

end A243945.P16219570515292977283

/-!
# A243946: Expansion of sqrt( (1+x + sqrt(1-18*x+x^2)) / (2*(1-18*x+x^2)) ).

The programs for A243946, there is no canonical definition to state claims against.
-/

/-! ## A243946.P14881061880818745388

`sqrt(A243945(2*n))`
-/

namespace A243946.P14881061880818745388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A243945 (2 * n) : ℝ)

end

end A243946.P14881061880818745388

/-! ## A243946.P633569680992710000

`A337389(eq[5, A025581(n)])`
-/

namespace A243946.P633569680992710000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243946.P633569680992710000

/-! ## A243946.P14681666393281376099

`A337389(eq[5, A129713(n)])`
-/

namespace A243946.P14681666393281376099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243946.P14681666393281376099

/-! ## A243946.P12626528898936077053

`A337389(eq[6, A193739(n)])`
-/

namespace A243946.P12626528898936077053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243946.P12626528898936077053

/-! ## A243946.P15224136427111117750

`A337389(eq[32, A130321(n)])`
-/

namespace A243946.P15224136427111117750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243946.P15224136427111117750

/-! ## A243946.P15142405718467874169

`A337389(Δ[A023551(n+1)])`
-/

namespace A243946.P15142405718467874169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (f1 (n + 1) - f1 n).toNat

end

end A243946.P15142405718467874169

/-! ## A243946.P17408337427690220713

`A337389(eq[6, A004736(n+1)])`
-/

namespace A243946.P17408337427690220713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243946.P17408337427690220713

/-!
# A243947: Expansion of g.f. sqrt( (1+x - sqrt(1-18*x+x^2)) / (10*x*(1-18*x+x^2)) ).

The programs for A243947, there is no canonical definition to state claims against.
-/

/-! ## A243947.P14137156651404328424

`sqrt(A243945(2*n+1)/5)`
-/

namespace A243947.P14137156651404328424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A243945 (2 * n + 1) : ℚ) / 5 : ℝ)

end

end A243947.P14137156651404328424

/-! ## A243947.P6950650126097206072

`A337369(eq[5, A025581(n)])`
-/

namespace A243947.P6950650126097206072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243947.P6950650126097206072

/-! ## A243947.P1412167204097339349

`A337369(eq[5, A129713(n)])`
-/

namespace A243947.P1412167204097339349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243947.P1412167204097339349

/-! ## A243947.P148578762112196086

`A337369(eq[6, A193739(n)])`
-/

namespace A243947.P148578762112196086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243947.P148578762112196086

/-! ## A243947.P7294614157711601659

`A337369(Δ[A023551(n+1)])`
-/

namespace A243947.P7294614157711601659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337369 (f1 (n + 1) - f1 n).toNat

end

end A243947.P7294614157711601659

/-! ## A243947.P18031391901776619045

`A337369(eq[6, A004736(n+1)])`
-/

namespace A243947.P18031391901776619045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243947.P18031391901776619045

/-!
# A243948: G.f.: Sum_{n>=0} x^n / (1-x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^k] * [Sum_{k=0..n} C(n,k)^2 * 2^k * x^k].

The programs for A243948, there is no canonical definition to state claims against.
-/

/-! ## A243948.P9279843366105480002

`A008619(Δ[n*A053617(n)])`
-/

namespace A243948.P9279843366105480002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A243948.P9279843366105480002

/-! ## A243948.P17673944871004938360

`A289122(A007226(n+1)+2)`
-/

namespace A243948.P17673944871004938360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A007226 (n + 1) + 2).toNat

end

end A243948.P17673944871004938360

/-!
# A243949: Squares of the central Delannoy numbers: a(n) = A001850(n)^2.

The programs for A243949, the canonical program `A243949.P3811031201628958168` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243949 has offset 0).

The definition of A243949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243949.P3811031201628958168

`A001850(n)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A243949

/-- `A001850(n)²` -/
def P3811031201628958168.Spec : Prop :=
  ∀ n, P3811031201628958168.a n = A243949 n

theorem P3811031201628958168.correct : P3811031201628958168.Spec := by
  intro n
  simp only [A243949]

end A243949

/-! ## A243949.P17273354488663977855

`∑[A110170(n)]²`
-/

namespace A243949.P17273354488663977855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A243949.P17273354488663977855

namespace A243949

/-- `∑[A110170(n)]²` -/
def P17273354488663977855.Spec : Prop :=
  ∀ n, P17273354488663977855.a n = A243949 n

end A243949

/-! ## A243949.P2261238221719569039

`A118384(∑[n])²`
-/

namespace A243949.P2261238221719569039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A243949.P2261238221719569039

namespace A243949

/-- `A118384(∑[n])²` -/
def P2261238221719569039.Spec : Prop :=
  ∀ n, P2261238221719569039.a n = A243949 n

end A243949

/-! ## A243949.P18423929072529923850

`A376467(∑[n])²`
-/

namespace A243949.P18423929072529923850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376467 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A243949.P18423929072529923850

namespace A243949

/-- `A376467(∑[n])²` -/
def P18423929072529923850.Spec : Prop :=
  ∀ n, P18423929072529923850.a n = A243949 n

end A243949

/-! ## A243949.P7208838035355548321

`record[A118384(n)²]`
-/

namespace A243949.P7208838035355548321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243949.P7208838035355548321

namespace A243949

/-- `record[A118384(n)²]` -/
def P7208838035355548321.Spec : Prop :=
  ∀ n, P7208838035355548321.a n = A243949 n

end A243949

/-! ## A243949.P15067199922551808619

`A026003(2*n)²`
-/

namespace A243949.P15067199922551808619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n) ^ 2

end

end A243949.P15067199922551808619

namespace A243949

/-- `A026003(2*n)²` -/
def P15067199922551808619.Spec : Prop :=
  ∀ n, P15067199922551808619.a n = A243949 n

end A243949

/-! ## A243949.P15128927534705207953

`∑[A110169(∑[n])]²`
-/

namespace A243949.P15128927534705207953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110169 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A243949.P15128927534705207953

namespace A243949

/-- `∑[A110169(∑[n])]²` -/
def P15128927534705207953.Spec : Prop :=
  ∀ n, P15128927534705207953.a n = A243949 n

end A243949

/-! ## A243949.P2981584874238657979

`A307883(∑[n+3])²`
-/

namespace A243949.P2981584874238657979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A243949.P2981584874238657979

namespace A243949

/-- `A307883(∑[n+3])²` -/
def P2981584874238657979.Spec : Prop :=
  ∀ n, P2981584874238657979.a n = A243949 n

end A243949

/-! ## A243949.P4719798159699196892

`∑[A247630(2*n)]²`
-/

namespace A243949.P4719798159699196892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A243949.P4719798159699196892

namespace A243949

/-- `∑[A247630(2*n)]²` -/
def P4719798159699196892.Spec : Prop :=
  ∀ n, P4719798159699196892.a n = A243949 n

end A243949

/-! ## A243949.P5334483636726649219

`A297191(∑[2*n])²`
-/

namespace A243949.P5334483636726649219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A243949.P5334483636726649219

namespace A243949

/-- `A297191(∑[2*n])²` -/
def P5334483636726649219.Spec : Prop :=
  ∀ n, P5334483636726649219.a n = A243949 n

end A243949

/-!
# A243950: Sum of the squares of q-binomial coefficients for q=2 in row n of triangle A022166, for n >= 0.

The programs for A243950, there is no canonical definition to state claims against.
-/

/-! ## A243950.P4264035141359802404

`A031218(A073587(n))-n`
-/

namespace A243950.P4264035141359802404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A073587 n).toNat - (n : ℤ)

end

end A243950.P4264035141359802404

/-!
# A243951: Self-convolution square-root of A243950, which is the sums of the squares of the q-binomial coefficients for q=2 in rows of triangle A022166.

The programs for A243951, there is no canonical definition to state claims against.
-/

/-! ## A243951.P17250816492827738973

`A349536((round((n-1)/2)+2+n)^(n-1))`
-/

namespace A243951.P17250816492827738973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2 + (n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A243951.P17250816492827738973

/-!
# A243952: E.g.f. A(x) satisfies: A'(x) = A(x) - 1/A(x) + A(x)^3.

The programs for A243952, there is no canonical definition to state claims against.
-/

/-! ## A243952.P1776957743674735182

`A129756(A136722(n)*A280417(n))`
-/

namespace A243952.P1776957743674735182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A136722 n * A280417 n).toNat

end

end A243952.P1776957743674735182

/-! ## A243952.P6778668732152480164

`A140960(n)+A004273(A168365(n+1))`
-/

namespace A243952.P6778668732152480164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 n + A004273 (A168365 (n + 1)).toNat

end

end A243952.P6778668732152480164

/-!
# A243953: E.g.f.: exp( Sum_{n>=1} A000108(n-1)*x^n/n ), where A000108(n) = binomial(2*n,n)/(n+1) forms the Catalan numbers.

The programs for A243953, the canonical program `A243953.P9370348306146741874` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243953 has offset 0).

The definition of A243953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243953.P9370348306146741874

`(4*n-10)*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A243953

/-- `(4*n-10)*a(n-1)+4*a(n-2)` -/
def P9370348306146741874.Spec : Prop :=
  ∀ n, P9370348306146741874.a n = A243953 n

theorem P9370348306146741874.correct : P9370348306146741874.Spec := by
  intro n
  simp only [A243953]

end A243953

/-! ## A243953.P10950449712870117677

`A011782(n)*A144502(C(n, 2))`
-/

namespace A243953.P10950449712870117677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A144502 (Nat.choose n 2)

end

end A243953.P10950449712870117677

namespace A243953

/-- `A011782(n)*A144502(C(n, 2))` -/
def P10950449712870117677.Spec : Prop :=
  ∀ n, P10950449712870117677.a n = A243953 n

end A243953

/-! ## A243953.P7531752751507213462

`A011782(n)*A144505(C(n, 2))`
-/

namespace A243953.P7531752751507213462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A144505 (Nat.choose n 2)

end

end A243953.P7531752751507213462

namespace A243953

/-- `A011782(n)*A144505(C(n, 2))` -/
def P7531752751507213462.Spec : Prop :=
  ∀ n, P7531752751507213462.a n = A243953 n

end A243953

/-! ## A243953.P10086489159921189864

`ceil(2^(n-1))*A144505(A161680(n))`
-/

namespace A243953.P10086489159921189864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A144505 (A161680 n).toNat

end

end A243953.P10086489159921189864

namespace A243953

/-- `ceil(2^(n-1))*A144505(A161680(n))` -/
def P10086489159921189864.Spec : Prop :=
  ∀ n, P10086489159921189864.a n = A243953 n

end A243953

/-! ## A243953.P12560006273786075536

`A144505(A161680(n))*A211164(2*n)`
-/

namespace A243953.P12560006273786075536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144505 (A161680 n).toNat * A211164 (2 * n)

end

end A243953.P12560006273786075536

namespace A243953

/-- `A144505(A161680(n))*A211164(2*n)` -/
def P12560006273786075536.Spec : Prop :=
  ∀ n, P12560006273786075536.a n = A243953 n

end A243953

/-!
# A243956: Positive numbers n without a decomposition into a sum n = i+j such that 6i-1, 6i+1, 6j-1, 6j+1 are twin primes.

The programs for A243956, there is no canonical definition to state claims against.
-/

/-! ## A243956.P17516436959911405121

`ceil(A072254(n+1)/3)`
-/

namespace A243956.P17516436959911405121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072254 (n + 1) : ℚ) / 3⌉

end

end A243956.P17516436959911405121

/-! ## A243956.P13482089801032779814

`ceil(A321221(n+1)/6)`
-/

namespace A243956.P13482089801032779814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321221 (n + 1) : ℚ) / 6⌉

end

end A243956.P13482089801032779814

/-! ## A243956.P12225002450772978690

`eq[0, A339625(n+1)]+1`
-/

namespace A243956.P12225002450772978690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243956.P12225002450772978690

/-! ## A243956.P17746123156051544028

`ceil(A007534(3*n+1)/6)`
-/

namespace A243956.P17746123156051544028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007534 (3 * n + 1) : ℚ) / 6⌉

end

end A243956.P17746123156051544028

/-! ## A243956.P15033135913490207087

`round(A007534(3*n+2)/6)`
-/

namespace A243956.P15033135913490207087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007534 (3 * n + 2) : ℚ) / 6)

end

end A243956.P15033135913490207087

/-!
# A243957: Primes of the form 2*n^2+66*n+31.

The programs for A243957, there is no canonical definition to state claims against.
-/

/-! ## A243957.P1736047966210685108

`p?[A033570(n+6)-A033991(n)]`
-/

namespace A243957.P1736047966210685108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 (n + 6) - A033991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243957.P1736047966210685108

/-! ## A243957.P8235261767936606734

`p?[A167534(n+7)+A000124(n)]`
-/

namespace A243957.P8235261767936606734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167534 (n + 7) + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243957.P8235261767936606734

/-! ## A243957.P1009658990039806046

`p?[A167499(n+8)+A156674(n+1)]`
-/

namespace A243957.P1009658990039806046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (n + 8) + A156674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243957.P1009658990039806046

/-! ## A243957.P5732545489620665368

`p?[A152813(n+3)+A008606(2*(n+1))]`
-/

namespace A243957.P5732545489620665368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (n + 3) + A008606 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243957.P5732545489620665368

/-! ## A243957.P12800699033222291625

`p?[A154266(2*(n+1))+A058331(n+4)]`
-/

namespace A243957.P12800699033222291625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (2 * (n + 1)) + A058331 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243957.P12800699033222291625

/-!
# A243958: Primes of the form 2*n^2+86*n+41.

The programs for A243958, the canonical program `A243958.P6396191491054519101` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243958 has offset 1).

The definition of A243958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243958.P6396191491054519101

`p?[∑[a(n-2)+2]]` with `a(0)=12, a(1)=32, a(2)=85, a(3)=5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A243958

/-- `p?[∑[a(n-2)+2]]` -/
def P6396191491054519101.Spec : Prop :=
  ∀ n, (P6396191491054519101.a n : ℤ) = A243958 (n + 1)

theorem P6396191491054519101.correct : P6396191491054519101.Spec := by
  intro n
  simp only [A243958, Nat.add_sub_cancel]

end A243958

/-! ## A243958.P3611752718824575473

`p?[A179805(A179805(n+3))+A046691(2*(n+1))]`
-/

namespace A243958.P3611752718824575473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (A179805 (n + 3)).toNat + A046691 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243958.P3611752718824575473

namespace A243958

/-- `p?[A179805(A179805(n+3))+A046691(2*(n+1))]` -/
def P3611752718824575473.Spec : Prop :=
  ∀ n, P3611752718824575473.a n = A243958 (n + 1)

end A243958

/-!
# A243960: Primes that do not divide the numbers of the form A242719(n)-1.

The programs for A243960, there is no canonical definition to state claims against.
-/

/-! ## A243960.P1186763595732240889

`A118759(p?[∑[A235613(n+1)]])`
-/

namespace A243960.P1186763595732240889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235613 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A243960.P1186763595732240889

/-! ## A243960.P8423796189329405054

`p?[A228944(∑[A002374(n+3)])]`
-/

namespace A243960.P8423796189329405054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228944 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243960.P8423796189329405054

/-! ## A243960.P11229214158613470077

`p?[xor(A185036(n), A253474(n+1))]`
-/

namespace A243960.P11229214158613470077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185036 n) (A253474 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243960.P11229214158613470077

/-!
# A243962: Primes p such that 10p + 1, 100p + 1 and 1000p + 1 are also primes.

The programs for A243962, there is no canonical definition to state claims against.
-/

/-! ## A243962.P15557981726416999033

`A275516(A087124(n))`
-/

namespace A243962.P15557981726416999033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275516 (A087124 n).toNat

end

end A243962.P15557981726416999033

/-!
# A243963: a(n) = n*4^n*(-Z(1-n, 1/4)/2 + Z(1-n, 3/4)/2 - Z(1-n, 1)*(1 - 2^(-n))) for n > 0 and a(0) = 0, where Z(n, c) is the Hurwitz zeta function.

The programs for A243963, there is no canonical definition to state claims against.
-/

/-! ## A243963.P15957166838066871088

`n*A323833(C(n, 2))`
-/

namespace A243963.P15957166838066871088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A323833 (Nat.choose n 2)

end

end A243963.P15957166838066871088

/-! ## A243963.P14734617494067388341

`n*A323833(∑[n]-n)`
-/

namespace A243963.P14734617494067388341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A323833 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A243963.P14734617494067388341

/-! ## A243963.P11606412546189382655

`A109573(n)-A119879(A000124(n))`
-/

namespace A243963.P11606412546189382655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109573 n - A119879 (A000124 n).toNat

end

end A243963.P11606412546189382655

/-! ## A243963.P4433210781747613822

`A001489(n)*A163747(A004273(n)-n)`
-/

namespace A243963.P4433210781747613822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A163747 (A004273 n - (n : ℤ)).toNat

end

end A243963.P4433210781747613822

/-! ## A243963.P7293717240394209248

`(n-A005843(n))*A163747(A004273(n)-n)`
-/

namespace A243963.P7293717240394209248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A005843 n) * A163747 (A004273 n - (n : ℤ)).toNat

end

end A243963.P7293717240394209248

/-!
# A243965: Number of Dyck paths of semilength n such that both consecutive patterns of Dyck paths of semilength 2 occur at least once.

The programs for A243965, there is no canonical definition to state claims against.
-/

/-! ## A243965.P9944438101010820190

`A085861(A150573(n))`
-/

namespace A243965.P9944438101010820190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 (A150573 n).toNat

end

end A243965.P9944438101010820190

/-! ## A243965.P11985030934572851667

`A165190(A112567(n))`
-/

namespace A243965.P11985030934572851667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A112567 n).toNat

end

end A243965.P11985030934572851667

/-! ## A243965.P11366634637476515225

`A393825(A149358(n))`
-/

namespace A243965.P11366634637476515225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393825 (A149358 n).toNat

end

end A243965.P11366634637476515225

/-! ## A243965.P16679587302306887390

`A369808(n+1)+A326966(A382180(n))`
-/

namespace A243965.P16679587302306887390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369808 (n + 1) + A326966 (A382180 n).toNat

end

end A243965.P16679587302306887390

/-!
# A243966: Number of Dyck paths of semilength n such that all five consecutive patterns of Dyck paths of semilength 3 occur at least once.

The programs for A243966, there is no canonical definition to state claims against.
-/

/-! ## A243966.P13412575696516821137

`A057355(C(floor(ϕ*(n+1)), 20))`
-/

namespace A243966.P13412575696516821137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (Nat.choose ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat 20)

end

end A243966.P13412575696516821137

/-! ## A243966.P2181138722034101731

`A004469(3*A185213(n))`
-/

namespace A243966.P2181138722034101731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004469 (3 * A185213 n).toNat

end

end A243966.P2181138722034101731

/-! ## A243966.P16284028604504627052

`∑[A025428(A034520(3*(n+1)))]`
-/

namespace A243966.P16284028604504627052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A034520 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243966.P16284028604504627052

/-! ## A243966.P4464693146848138385

`A032302(n)%A227578(A354010(n))`
-/

namespace A243966.P4464693146848138385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032302 n) (A227578 (A354010 n).toNat)

end

end A243966.P4464693146848138385

/-! ## A243966.P3497312838225500008

`A000010(n+1)*A007091(A185213(n))`
-/

namespace A243966.P3497312838225500008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A007091 (A185213 n).toNat

end

end A243966.P3497312838225500008

/-!
# A243971: Numbers n that cannot be obtained as a partial sum of the divisors (taken in descending order, from m down to 1) of any m < n.

The programs for A243971, there is no canonical definition to state claims against.
-/

/-! ## A243971.P8632512332154966186

`eq[n, A243970(n)]`
-/

namespace A243971.P8632512332154966186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243970 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243971.P8632512332154966186

/-! ## A243971.P12360705666451844918

`record[C(A243970(n+1), n)]`
-/

namespace A243971.P12360705666451844918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A243970 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243971.P12360705666451844918

/-! ## A243971.P11726151870890461794

`record[A243970(record[A243970(n)])]`
-/

namespace A243971.P11726151870890461794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243970 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243970 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243971.P11726151870890461794

/-! ## A243971.P16068007660089236514

`lt[A104621(n), A000079(A243970(n))]`
-/

namespace A243971.P16068007660089236514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104621 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A243970 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243971.P16068007660089236514

/-! ## A243971.P900793071892689079

`A002264(A079425(n+1)+A002145(n+1))`
-/

namespace A243971.P900793071892689079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A079425 (n + 1) + A002145 (n + 1)).toNat

end

end A243971.P900793071892689079

/-!
# A243977: a(n) is the largest run of identical digits that n^k can end with for some k, or 0 if there is no limit to such runs.

The programs for A243977, there is no canonical definition to state claims against.
-/

/-! ## A243977.P5892106492798997099

`A354793(A208132(3*n+4)+A191842(n+1))`
-/

namespace A243977.P5892106492798997099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354793 (A208132 (3 * n + 4) + A191842 (n + 1)).toNat

end

end A243977.P5892106492798997099

/-!
# A243978: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) is the number of partitions of n where the minimal multiplicity of any part is k.

The programs for A243978, there is no canonical definition to state claims against.
-/

/-! ## A243978.P14650862308412195608

`A119803(A242451(n))+A067898(A080155(n+1))`
-/

namespace A243978.P14650862308412195608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119803 (A242451 n).toNat + A067898 (A080155 (n + 1)).toNat

end

end A243978.P14650862308412195608

/-! ## A243978.P13977944122677252577

`A119803(A242451(n))+A011737(A171882(n))`
-/

namespace A243978.P13977944122677252577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119803 (A242451 n).toNat + A011737 (A171882 n).toNat

end

end A243978.P13977944122677252577

/-! ## A243978.P3642042900807154000

`A103298(A242451(n)^A119825(n))`
-/

namespace A243978.P3642042900807154000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (SequenceMachineLib.roundAway ((A242451 n : ℚ) ^ (A119825 n : ℤ))).toNat

end

end A243978.P3642042900807154000

/-! ## A243978.P17617145102186553335

`A119803(A242451(n)^A119825(n))`
-/

namespace A243978.P17617145102186553335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119803 (SequenceMachineLib.roundAway ((A242451 n : ℚ) ^ (A119825 n : ℤ))).toNat

end

end A243978.P17617145102186553335

/-! ## A243978.P16801157386147420501

`A106486(A242451(n)%A328451(3*n+2))`
-/

namespace A243978.P16801157386147420501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (Int.tmod (A242451 n) (A328451 (3 * n + 2))).toNat

end

end A243978.P16801157386147420501

/-!
# A243979: Indices of Wagstaff primes.

The programs for A243979, there is no canonical definition to state claims against.
-/

/-! ## A243979.P16466340773209060514

`A000720(A000979(n+1))`
-/

namespace A243979.P16466340773209060514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000979 (n + 1)).toNat

end

end A243979.P16466340773209060514

/-! ## A243979.P15540187985932010617

`A000720(p?[∑[(-2)^n]])`
-/

namespace A243979.P15540187985932010617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A243979.P15540187985932010617

/-!
# A243980: Four times the sum of all divisors of all positive integers <= n.

The programs for A243980, the canonical program `A243980.P11138556836325931032` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243980 has offset 1).

The definition of A243980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243980.P6045705920141586864

`2*A327329(n+1)`
-/

namespace A243980.P6045705920141586864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327329 (n + 1)

end

end A243980.P6045705920141586864

namespace A243980

/-- `2*A327329(n+1)` -/
def P6045705920141586864.Spec : Prop :=
  ∀ n, P6045705920141586864.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P11138556836325931032

`4*A024916(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A243980

/-- `4*A024916(n+1)` -/
def P11138556836325931032.Spec : Prop :=
  ∀ n, P11138556836325931032.a n = A243980 (n + 1)

theorem P11138556836325931032.correct : P11138556836325931032.Spec := by
  intro n
  simp only [A243980, Nat.add_sub_cancel]

end A243980

/-! ## A243980.P13120903587409650209

`2*(A006218(n+1)+A222548(n+1))`
-/

namespace A243980.P13120903587409650209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006218 (n + 1) + A222548 (n + 1))

end

end A243980.P13120903587409650209

namespace A243980

/-- `2*(A006218(n+1)+A222548(n+1))` -/
def P13120903587409650209.Spec : Prop :=
  ∀ n, P13120903587409650209.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P4103265900115882117

`A016742(n+1)-4*A004125(n+1)`
-/

namespace A243980.P4103265900115882117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (n + 1) - 4 * A004125 (n + 1)

end

end A243980.P4103265900115882117

namespace A243980

/-- `A016742(n+1)-4*A004125(n+1)` -/
def P4103265900115882117.Spec : Prop :=
  ∀ n, P4103265900115882117.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P3788228176174081683

`∑[4*∑{d}[n+1, #]]`
-/

namespace A243980.P3788228176174081683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243980.P3788228176174081683

namespace A243980

/-- `∑[4*∑{d}[n+1, #]]` -/
def P3788228176174081683.Spec : Prop :=
  ∀ n, (P3788228176174081683.a n : ℤ) = A243980 (n + 1)

end A243980

/-! ## A243980.P15895018929405786814

`∑[∑{d}[2*n-(n-1), 4*#]]`
-/

namespace A243980.P15895018929405786814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, 4 * d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243980.P15895018929405786814

namespace A243980

/-- `∑[∑{d}[2*n-(n-1), 4*#]]` -/
def P15895018929405786814.Spec : Prop :=
  ∀ n, (P15895018929405786814.a n : ℤ) = A243980 (n + 1)

end A243980

/-! ## A243980.P12878380149519773631

`4*∑{d}[n+1, #]+a(n-1)` with `a(0)=4`
-/

namespace A243980.P12878380149519773631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  4 * (∑ d ∈ Nat.divisors (f1 n), d) + a (n - 1)

end

end A243980.P12878380149519773631

namespace A243980

/-- `4*∑{d}[n+1, #]+a(n-1)` -/
def P12878380149519773631.Spec : Prop :=
  ∀ n, (P12878380149519773631.a n : ℤ) = A243980 (n + 1)

end A243980

/-! ## A243980.P5460616018820807087

`∑[A239050(n+1)]`
-/

namespace A243980.P5460616018820807087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243980.P5460616018820807087

namespace A243980

/-- `∑[A239050(n+1)]` -/
def P5460616018820807087.Spec : Prop :=
  ∀ n, P5460616018820807087.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P6657544066329588556

`∑[2*A074400(n+1)]`
-/

namespace A243980.P6657544066329588556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243980.P6657544066329588556

namespace A243980

/-- `∑[2*A074400(n+1)]` -/
def P6657544066329588556.Spec : Prop :=
  ∀ n, P6657544066329588556.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P5708376124781629187

`∑[A319528(n+1)/2]`
-/

namespace A243980.P5708376124781629187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319528 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243980.P5708376124781629187

namespace A243980

/-- `∑[A319528(n+1)/2]` -/
def P5708376124781629187.Spec : Prop :=
  ∀ n, P5708376124781629187.a n = (A243980 (n + 1) : ℚ)

end A243980

/-! ## A243980.P4195008004626412454

`∑[4*A000203(n+1)]`
-/

namespace A243980.P4195008004626412454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243980.P4195008004626412454

namespace A243980

/-- `∑[4*A000203(n+1)]` -/
def P4195008004626412454.Spec : Prop :=
  ∀ n, P4195008004626412454.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P2068857995916031500

`∑[2*(A002659(n+1)+1)]`
-/

namespace A243980.P2068857995916031500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002659 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243980.P2068857995916031500

namespace A243980

/-- `∑[2*(A002659(n+1)+1)]` -/
def P2068857995916031500.Spec : Prop :=
  ∀ n, P2068857995916031500.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P3458991189371711621

`∑[2*A326136(2*(n+1))]`
-/

namespace A243980.P3458991189371711621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326136 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243980.P3458991189371711621

namespace A243980

/-- `∑[2*A326136(2*(n+1))]` -/
def P3458991189371711621.Spec : Prop :=
  ∀ n, P3458991189371711621.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P7674003446645077799

`4/(n+1)*A256533(n+1)`
-/

namespace A243980.P7674003446645077799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A256533 (n + 1) : ℚ)

end

end A243980.P7674003446645077799

namespace A243980

/-- `4/(n+1)*A256533(n+1)` -/
def P7674003446645077799.Spec : Prop :=
  ∀ n, P7674003446645077799.a n = (A243980 (n + 1) : ℚ)

end A243980

/-! ## A243980.P12895042594719325022

`∑[4*(A001065(n+1)+1+n)]`
-/

namespace A243980.P12895042594719325022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A001065 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243980.P12895042594719325022

namespace A243980

/-- `∑[4*(A001065(n+1)+1+n)]` -/
def P12895042594719325022.Spec : Prop :=
  ∀ n, P12895042594719325022.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P4483906936168799513

`∑[4*(A155085(n+1)-(n+1))]`
-/

namespace A243980.P4483906936168799513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A155085 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243980.P4483906936168799513

namespace A243980

/-- `∑[4*(A155085(n+1)-(n+1))]` -/
def P4483906936168799513.Spec : Prop :=
  ∀ n, P4483906936168799513.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P2728637112467862673

`4*∑[A000203(2*n-(n-1))]`
-/

namespace A243980.P2728637112467862673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243980.P2728637112467862673

namespace A243980

/-- `4*∑[A000203(2*n-(n-1))]` -/
def P2728637112467862673.Spec : Prop :=
  ∀ n, P2728637112467862673.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P9951176535607292675

`A327329(n+1)²/A024916(n+1)`
-/

namespace A243980.P9951176535607292675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327329 (n + 1) ^ 2 : ℚ) / (A024916 (n + 1) : ℚ)

end

end A243980.P9951176535607292675

namespace A243980

/-- `A327329(n+1)²/A024916(n+1)` -/
def P9951176535607292675.Spec : Prop :=
  ∀ n, P9951176535607292675.a n = (A243980 (n + 1) : ℚ)

end A243980

/-! ## A243980.P3547761934610744241

`A294629(n+1)+2*A067436(n+1)`
-/

namespace A243980.P3547761934610744241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294629 (n + 1) + 2 * A067436 (n + 1)

end

end A243980.P3547761934610744241

namespace A243980

/-- `A294629(n+1)+2*A067436(n+1)` -/
def P3547761934610744241.Spec : Prop :=
  ∀ n, P3547761934610744241.a n = A243980 (n + 1)

end A243980

/-! ## A243980.P13195028788696246211

`2*(A326124(n+1)-A078471(n+1))`
-/

namespace A243980.P13195028788696246211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A326124 (n + 1) - A078471 (n + 1))

end

end A243980.P13195028788696246211

namespace A243980

/-- `2*(A326124(n+1)-A078471(n+1))` -/
def P13195028788696246211.Spec : Prop :=
  ∀ n, P13195028788696246211.a n = A243980 (n + 1)

end A243980

/-!
# A243981: Minimum range of sets of natural numbers with a product of n.

The programs for A243981, there is no canonical definition to state claims against.
-/

/-! ## A243981.P11069349916065573602

`A056737(n+2)%A056737(A056729(2*n+1))`
-/

namespace A243981.P11069349916065573602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056737 (n + 2)) (A056737 (A056729 (2 * n + 1)).toNat)

end

end A243981.P11069349916065573602

/-! ## A243981.P1451986904293466882

`A056737(n+2)%A322026(A077570(n+2))`
-/

namespace A243981.P1451986904293466882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056737 (n + 2)) (A322026 (A077570 (n + 2)).toNat)

end

end A243981.P1451986904293466882

/-! ## A243981.P2104104980386556602

`val(A238745(A259939(n+1)), 2)`
-/

namespace A243981.P2104104980386556602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A238745 (A259939 (n + 1)).toNat).toNat 2

end

end A243981.P2104104980386556602

/-! ## A243981.P6342234329244963057

`A056737(A349542(n)+A187829(n+1))`
-/

namespace A243981.P6342234329244963057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A349542 n + A187829 (n + 1)).toNat

end

end A243981.P6342234329244963057

/-! ## A243981.P10664630735519335781

`A056737(n+2)*A341969(A135233(n))`
-/

namespace A243981.P10664630735519335781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 2) * A341969 (A135233 n).toNat

end

end A243981.P10664630735519335781

/-!
# A243982: Number of divisors of n minus the number of parts in the symmetric representation of sigma(n).

The programs for A243982, there is no canonical definition to state claims against.
-/

/-! ## A243982.P18272588412537020835

`A000005(n+1)-A237271(n+1)`
-/

namespace A243982.P18272588412537020835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A237271 (n + 1)

end

end A243982.P18272588412537020835

/-! ## A243982.P9041538324311604675

`Δ[A006218(n)]-A237271(n+1)`
-/

namespace A243982.P9041538324311604675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237271 (n + 1)

end

end A243982.P9041538324311604675

/-! ## A243982.P11284225722051122716

`Δ[A054519(n)]-A237271(n+1)`
-/

namespace A243982.P11284225722051122716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237271 (n + 1)

end

end A243982.P11284225722051122716

/-! ## A243982.P4535072644835266211

`A239657(n+1)+A183063(n+1)`
-/

namespace A243982.P4535072644835266211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239657 (n + 1) + A183063 (n + 1)

end

end A243982.P4535072644835266211

/-! ## A243982.P10500082699244422918

`A032741(n+1)+1-A237271(n+1)`
-/

namespace A243982.P10500082699244422918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (1 - A237271 (n + 1))

end

end A243982.P10500082699244422918

/-! ## A243982.P2087573333638626237

`A334954(n+1)-(A237271(n+1)+1)`
-/

namespace A243982.P2087573333638626237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A237271 (n + 1) + 1)

end

end A243982.P2087573333638626237

/-! ## A243982.P8068476721761123018

`∑{d}[n+1, ((A001221(#)+1)%2)!]-A237271(n+1)`
-/

namespace A243982.P8068476721761123018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Int.tmod (A001221 d + 1) 2).toNat : ℕ) : ℤ) - A237271 (n + 1)

end

end A243982.P8068476721761123018

/-! ## A243982.P12995888514388598686

`∑{d}[n+1, #+1]-A000203(n+1)-A237271(n+1)`
-/

namespace A243982.P12995888514388598686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A237271 (n + 1)

end

end A243982.P12995888514388598686

/-! ## A243982.P15142700442692601742

`A006218(n+1)-(A237271(n+1)+A006218(n))`
-/

namespace A243982.P15142700442692601742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (A237271 (n + 1) + A006218 n)

end

end A243982.P15142700442692601742

/-! ## A243982.P13492822184098834391

`A067742(n+1)+A067743(n+1)-A237271(n+1)`
-/

namespace A243982.P13492822184098834391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1) + (A067743 (n + 1) - A237271 (n + 1))

end

end A243982.P13492822184098834391

/-! ## A243982.P10507211248200665006

`A000005(n+1)+A237271(n+1)*A286714(gcd(n, n+1))`
-/

namespace A243982.P10507211248200665006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A237271 (n + 1) * A286714 (Nat.gcd n (n + 1))

end

end A243982.P10507211248200665006

/-! ## A243982.P3900062320078136187

`∑{d}[n+1, A057427(#)]-A237271(n+1)`
-/

namespace A243982.P3900062320078136187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A237271 (n + 1)

end

end A243982.P3900062320078136187

/-! ## A243982.P17114852166823512999

`∑{d}[n+1, A304874(#+2)%2]-A237271(n+1)`
-/

namespace A243982.P17114852166823512999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A304874 (d + 2)) 2 - A237271 (n + 1)

end

end A243982.P17114852166823512999

/-! ## A243982.P9894691370714952590

`Δ[eq[1, A275055(n+1)]]-A237271(n+1)`
-/

namespace A243982.P9894691370714952590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A237271 (n + 1)

end

end A243982.P9894691370714952590

/-!
# A243983: Sum of twin divisors of n.

The programs for A243983, there is no canonical definition to state claims against.
-/

/-! ## A243983.P9789723074447815485

`A000203(n+1)-A243984(n+1)`
-/

namespace A243983.P9789723074447815485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A243984 (n + 1)

end

end A243983.P9789723074447815485

/-! ## A243983.P1727941323750579069

`A001065(n+1)+n+1-A243984(n+1)`
-/

namespace A243983.P1727941323750579069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ((n + 1 : ℤ) - A243984 (n + 1))

end

end A243983.P1727941323750579069

/-! ## A243983.P405199288329843751

`A132748(n+1)+A132882(n+1)-A243984(n+1)`
-/

namespace A243983.P405199288329843751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132748 (n + 1) + (A132882 (n + 1) - A243984 (n + 1))

end

end A243983.P405199288329843751

/-! ## A243983.P4116597261490016309

`(A000330(n)+A000203(n+1))%(A243984(n+1)+A000330(n))`
-/

namespace A243983.P4116597261490016309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000330 n + A000203 (n + 1)) (A243984 (n + 1) + A000330 n)

end

end A243983.P4116597261490016309

/-! ## A243983.P3635384888311358120

`(A000203(n+1)+A000040(n+1))%(A243984(n+1)+A000040(n+1))`
-/

namespace A243983.P3635384888311358120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) + A000040 (n + 1)) (A243984 (n + 1) + A000040 (n + 1))

end

end A243983.P3635384888311358120

/-! ## A243983.P3536967514883814780

`(A000716(n)+A000203(n+1))%(A243984(n+1)+A000716(n))`
-/

namespace A243983.P3536967514883814780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000716 n + A000203 (n + 1)) (A243984 (n + 1) + A000716 n)

end

end A243983.P3536967514883814780

/-!
# A243984: Sum of non-twin divisors of n.

The programs for A243984, there is no canonical definition to state claims against.
-/

/-! ## A243984.P8926192114284123292

`A000203(n+1)-A243983(n+1)`
-/

namespace A243984.P8926192114284123292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A243983 (n + 1)

end

end A243984.P8926192114284123292

/-! ## A243984.P13772365685277375792

`Δ[A160664(n)]-A243983(n+1)`
-/

namespace A243984.P13772365685277375792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A243983 (n + 1)

end

end A243984.P13772365685277375792

/-! ## A243984.P16369936012134352406

`A074400(n+1)/2-A243983(n+1)`
-/

namespace A243984.P16369936012134352406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A243983 (n + 1) : ℚ)

end

end A243984.P16369936012134352406

/-! ## A243984.P15981594156186198369

`A001065(n+1)+n+1-A243983(n+1)`
-/

namespace A243984.P15981594156186198369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ((n + 1 : ℤ) - A243983 (n + 1))

end

end A243984.P15981594156186198369

/-! ## A243984.P9098665923954312689

`A132748(n+1)+A132882(n+1)-A243983(n+1)`
-/

namespace A243984.P9098665923954312689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132748 (n + 1) + (A132882 (n + 1) - A243983 (n + 1))

end

end A243984.P9098665923954312689

/-! ## A243984.P15252064484231743349

`A004525(A074400(n+1)-2*A243983(n+1))`
-/

namespace A243984.P15252064484231743349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A074400 (n + 1) - 2 * A243983 (n + 1)).toNat

end

end A243984.P15252064484231743349

/-! ## A243984.P10799985784669618807

`A004525(A074400(n+1)-A243983(n+1)-A243983(n+1))`
-/

namespace A243984.P10799985784669618807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A074400 (n + 1) - A243983 (n + 1) - A243983 (n + 1)).toNat

end

end A243984.P10799985784669618807

/-! ## A243984.P14304593537903460092

`A004525(A074400(n+1))-A243983(n+1)`
-/

namespace A243984.P14304593537903460092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A074400 (n + 1)).toNat - A243983 (n + 1)

end

end A243984.P14304593537903460092

/-!
# A243986: Number of Dyck paths of semilength n avoiding all five consecutive patterns of Dyck paths of semilength 3.

The programs for A243986, there is no canonical definition to state claims against.
-/

/-! ## A243986.P13489270776105068581

`A243998(A022856(n+2))`
-/

namespace A243986.P13489270776105068581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243998 (A022856 (n + 2)).toNat

end

end A243986.P13489270776105068581

/-! ## A243986.P14078124777968554798

`A243998(∑[n+1]-A033627(n+1))`
-/

namespace A243986.P14078124777968554798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243998 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033627 (n + 1)).toNat

end

end A243986.P14078124777968554798

/-! ## A243986.P8058125716447421204

`A243998(A000124(n)-A004275(n))`
-/

namespace A243986.P8058125716447421204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243998 (A000124 n - A004275 n).toNat

end

end A243986.P8058125716447421204

/-! ## A243986.P1270799276027131814

`A243998(A133263(n)-A004280(n+1))`
-/

namespace A243986.P1270799276027131814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243998 (A133263 n - A004280 (n + 1)).toNat

end

end A243986.P1270799276027131814

/-! ## A243986.P3777355205829708965

`A243998(A014206(n)/2-A004275(n))`
-/

namespace A243986.P3777355205829708965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243998 (SequenceMachineLib.roundAway ((A014206 n : ℚ) / 2 - (A004275 n : ℚ))).toNat

end

end A243986.P3777355205829708965

/-!
# A243987: Triangle read by rows: T(n, k) is the number of divisors of n that are less than or equal to k for 1 <= k <= n.

The programs for A243987, the canonical program `A243987.P14044502209302201752` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243987 has offset 1).

The definition of A243987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243987.P14044502209302201752

`A051731(n+1)+a(n-1)%A002260(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A243987

/-- `A051731(n+1)+a(n-1)%A002260(n+1)` -/
def P14044502209302201752.Spec : Prop :=
  ∀ n, P14044502209302201752.a n = A243987 (n + 1)

theorem P14044502209302201752.correct : P14044502209302201752.Spec := by
  intro n
  simp only [A243987, Nat.add_sub_cancel]

end A243987

/-! ## A243987.P6613583809711769331

`∑[A051731(n+1)]-A006218(A003056(n))`
-/

namespace A243987.P6613583809711769331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006218 (A003056 n).toNat

end

end A243987.P6613583809711769331

namespace A243987

/-- `∑[A051731(n+1)]-A006218(A003056(n))` -/
def P6613583809711769331.Spec : Prop :=
  ∀ n, P6613583809711769331.a n = A243987 (n + 1)

end A243987

/-! ## A243987.P16152426341071134773

`∑[A051731(n+1)]-A113215(A003056(n)²)`
-/

namespace A243987.P16152426341071134773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A113215 (A003056 n ^ 2).toNat

end

end A243987.P16152426341071134773

namespace A243987

/-- `∑[A051731(n+1)]-A113215(A003056(n)²)` -/
def P16152426341071134773.Spec : Prop :=
  ∀ n, P16152426341071134773.a n = A243987 (n + 1)

end A243987

/-! ## A243987.P1409634374531536677

`∑[A051731(n+1)]-A113215(A061885(n))`
-/

namespace A243987.P1409634374531536677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A113215 (A061885 n).toNat

end

end A243987.P1409634374531536677

namespace A243987

/-- `∑[A051731(n+1)]-A113215(A061885(n))` -/
def P1409634374531536677.Spec : Prop :=
  ∀ n, P1409634374531536677.a n = A243987 (n + 1)

end A243987

/-! ## A243987.P1549403208815960570

`A002260(1-A340261(n+1)+n)`
-/

namespace A243987.P1549403208815960570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (1 - A340261 (n + 1) + (n : ℤ)).toNat

end

end A243987.P1549403208815960570

namespace A243987

/-- `A002260(1-A340261(n+1)+n)` -/
def P1549403208815960570.Spec : Prop :=
  ∀ n, P1549403208815960570.a n = A243987 (n + 1)

end A243987

/-! ## A243987.P11498669447765156654

`A002262(n-A340261(n+1))+1`
-/

namespace A243987.P11498669447765156654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) - A340261 (n + 1)).toNat + 1

end

end A243987.P11498669447765156654

namespace A243987

/-- `A002262(n-A340261(n+1))+1` -/
def P11498669447765156654.Spec : Prop :=
  ∀ n, P11498669447765156654.a n = A243987 (n + 1)

end A243987

/-! ## A243987.P1706159767922605761

`A000005(A059268(n))-A340261(n+1)`
-/

namespace A243987.P1706159767922605761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat - A340261 (n + 1)

end

end A243987.P1706159767922605761

namespace A243987

/-- `A000005(A059268(n))-A340261(n+1)` -/
def P1706159767922605761.Spec : Prop :=
  ∀ n, P1706159767922605761.a n = A243987 (n + 1)

end A243987

/-! ## A243987.P7932149616887690518

`A077168(A002262(n)-A340261(n+1))`
-/

namespace A243987.P7932149616887690518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A002262 n - A340261 (n + 1)).toNat

end

end A243987.P7932149616887690518

namespace A243987

/-- `A077168(A002262(n)-A340261(n+1))` -/
def P7932149616887690518.Spec : Prop :=
  ∀ n, P7932149616887690518.a n = A243987 (n + 1)

end A243987

/-! ## A243987.P5526281965686723086

`A291769(A002262(n)-A340261(n+1))`
-/

namespace A243987.P5526281965686723086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (A002262 n - A340261 (n + 1)).toNat

end

end A243987.P5526281965686723086

namespace A243987

/-- `A291769(A002262(n)-A340261(n+1))` -/
def P5526281965686723086.Spec : Prop :=
  ∀ n, P5526281965686723086.a n = A243987 (n + 1)

end A243987

/-! ## A243987.P3009814398071795935

`A349520(A005408(n))-A340261(n+1)`
-/

namespace A243987.P3009814398071795935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A005408 n).toNat - A340261 (n + 1)

end

end A243987.P3009814398071795935

namespace A243987

/-- `A349520(A005408(n))-A340261(n+1)` -/
def P3009814398071795935.Spec : Prop :=
  ∀ n, P3009814398071795935.a n = A243987 (n + 1)

end A243987

/-!
# A243988: G.f.: Sum_{n>=0} (1 + x^n)^n * x^n / (1-x)^(n+1).

The programs for A243988, there is no canonical definition to state claims against.
-/

/-! ## A243988.P15410708271545784333

`A001462(A027029(n+3))`
-/

namespace A243988.P15410708271545784333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A027029 (n + 3)).toNat

end

end A243988.P15410708271545784333

/-! ## A243988.P2469324637389551461

`A038567(A000217(n)*A036765(n))`
-/

namespace A243988.P2469324637389551461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A000217 n * A036765 n).toNat

end

end A243988.P2469324637389551461

/-! ## A243988.P7220698298236826130

`A120002(A062167(n+1))+A000975(n+1)`
-/

namespace A243988.P7220698298236826130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 (A062167 (n + 1)).toNat + A000975 (n + 1)

end

end A243988.P7220698298236826130

/-! ## A243988.P17057881128731798892

`A071860(A032443(n))`
-/

namespace A243988.P17057881128731798892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A032443 n).toNat

end

end A243988.P17057881128731798892

/-!
# A243989: Rounded down ratio of a lune area and a unit circle one, the lune is bounded by two unit circles whose centers are separated by a distance 1/n.

The programs for A243989, the canonical program `A243989.P2133614859538952754` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243989 has offset 1).

The definition of A243989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243989.P2133614859538952754

`ceil(∑[atan(cosh(n+1))])`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A243989

/-- `ceil(∑[atan(cosh(n+1))])` -/
def P2133614859538952754.Spec : Prop :=
  ∀ n, P2133614859538952754.a n = A243989 (n + 1)

theorem P2133614859538952754.correct : P2133614859538952754.Spec := by
  intro n
  simp only [A243989, Nat.add_sub_cancel]

end A243989

/-! ## A243989.P16525484280858281194

`ceil(∑[atan(record[cosh(n-1)])])`
-/

namespace A243989.P16525484280858281194
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((n : ℤ) - 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A243989.P16525484280858281194

namespace A243989

/-- `ceil(∑[atan(record[cosh(n-1)])])` -/
def P16525484280858281194.Spec : Prop :=
  ∀ n, P16525484280858281194.a n = A243989 (n + 1)

end A243989

/-! ## A243989.P15526007855865374386

`floor(∑[acos(log(tanh(n+3)))])`
-/

namespace A243989.P15526007855865374386
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.log (Real.tanh (n + 3 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A243989.P15526007855865374386

namespace A243989

/-- `floor(∑[acos(log(tanh(n+3)))])` -/
def P15526007855865374386.Spec : Prop :=
  ∀ n, P15526007855865374386.a n = A243989 (n + 1)

end A243989

/-! ## A243989.P16011388375091809172

`floor(∑[acos(log2(tanh(n+3)))])`
-/

namespace A243989.P16011388375091809172
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.logb 2 (Real.tanh (n + 3 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A243989.P16011388375091809172

namespace A243989

/-- `floor(∑[acos(log2(tanh(n+3)))])` -/
def P16011388375091809172.Spec : Prop :=
  ∀ n, P16011388375091809172.a n = A243989 (n + 1)

end A243989

/-! ## A243989.P14007871550071088978

`A292987(n+1)+A024362(A001935(n+4))`
-/

namespace A243989.P14007871550071088978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292987 (n + 1) + A024362 (A001935 (n + 4)).toNat

end

end A243989.P14007871550071088978

namespace A243989

/-- `A292987(n+1)+A024362(A001935(n+4))` -/
def P14007871550071088978.Spec : Prop :=
  ∀ n, P14007871550071088978.a n = A243989 (n + 1)

end A243989

/-!
# A243990: Primes which do not divide the numbers of the form A242720(n)-3.

The programs for A243990, there is no canonical definition to state claims against.
-/

/-! ## A243990.P12095335948570631124

`A139254(A084278(n+1)-n)`
-/

namespace A243990.P12095335948570631124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139254 (A084278 (n + 1) - (n : ℤ)).toNat

end

end A243990.P12095335948570631124

/-!
# A243994: Consider a decimal number of k>=2 digits x = d_(k)*10^(k-1) + d_(k-1)*10^(k-2) + … + d_(2)*10 + d_(1) and the transform T(x)-> (d_(k)+d_(k-1) mod 10)*10^(k-1) + (d_(k-1)+d_(k-2) mod 10)*10^(k-2) + … + (d_(2)+d_(1) mod 10)*10 + (d_(1)+d(k) mod 10). Sequence lists the numbers x such that T(x)=0.

The programs for A243994, there is no canonical definition to state claims against.
-/

/-! ## A243994.P6030217478517324808

`A098791(A051022(n)+3)`
-/

namespace A243994.P6030217478517324808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098791 (A051022 n + 3).toNat

end

end A243994.P6030217478517324808

/-! ## A243994.P2715493315248432673

`A098791(A056143(n)+3)`
-/

namespace A243994.P2715493315248432673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098791 (A056143 n + 3).toNat

end

end A243994.P2715493315248432673

/-! ## A243994.P65438024928233393

`A098791(A098766(n)+3)`
-/

namespace A243994.P65438024928233393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098791 (A098766 n + 3).toNat

end

end A243994.P65438024928233393

/-! ## A243994.P15083973120587988899

`A098791(A183533(n+1)+2)`
-/

namespace A243994.P15083973120587988899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098791 (A183533 (n + 1) + 2).toNat

end

end A243994.P15083973120587988899

/-! ## A243994.P3012800529878032515

`A098791(A004871(n+1)+3)`
-/

namespace A243994.P3012800529878032515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098791 (A004871 (n + 1) + 3).toNat

end

end A243994.P3012800529878032515

/-!
# A243995: Fixed points of the function a(n) = phi(sigma(n) - phi(n) - d(n)), where phi(n) is the Euler totient function, sigma(n) the sum of divisors of n and d(n) the number of divisors of n.

The programs for A243995, there is no canonical definition to state claims against.
-/

/-! ## A243995.P17802452342577677425

`∑{d}[n+1, #]*A179000(∑{d}[n+1, lcm(#, (n+1)²)])`
-/

namespace A243995.P17802452342577677425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A179000 (∑ d ∈ Nat.divisors (f2 n), Nat.lcm d ((n + 1) ^ 2))

end

end A243995.P17802452342577677425

/-!
# A243996: Numbers n such that phi(sigma*(n)) = sigma*(phi(n)), where sigma*(n) is the sum of anti-divisors of n and phi(n) is the Euler totient function.

The programs for A243996, there is no canonical definition to state claims against.
-/

/-! ## A243996.P1992118657832146901

`A339657(A235136(n))+A282864(n)`
-/

namespace A243996.P1992118657832146901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339657 (A235136 n).toNat + A282864 n

end

end A243996.P1992118657832146901

/-!
# A243997: a(n) = phi(sigma(n) - phi(n) - d(n)), where phi(n) is the Euler totient function, sigma(n) the sum of divisors of n and d(n) the number of divisors of n.

The programs for A243997, the canonical program `A243997.P13681003671720194849` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243997 has offset 1).

The definition of A243997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243997.P13681003671720194849

`∑{d}[A046520(n+1), A007431(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A243997

/-- `∑{d}[A046520(n+1), A007431(#)]` -/
def P13681003671720194849.Spec : Prop :=
  ∀ n, P13681003671720194849.a n = A243997 (n + 1)

theorem P13681003671720194849.correct : P13681003671720194849.Spec := by
  intro n
  simp only [A243997, Nat.add_sub_cancel]

end A243997

/-! ## A243997.P8239755780573754634

`A010783(A011782(n))*A300236(n+1)`
-/

namespace A243997.P8239755780573754634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A011782 n).toNat * A300236 (n + 1)

end

end A243997.P8239755780573754634

namespace A243997

/-- `A010783(A011782(n))*A300236(n+1)` -/
def P8239755780573754634.Spec : Prop :=
  ∀ n, P8239755780573754634.a n = A243997 (n + 1)

end A243997

/-! ## A243997.P5937995934246660795

`A099563(A089830(n))*A300236(n+1)`
-/

namespace A243997.P5937995934246660795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A089830 n).toNat * A300236 (n + 1)

end

end A243997.P5937995934246660795

namespace A243997

/-- `A099563(A089830(n))*A300236(n+1)` -/
def P5937995934246660795.Spec : Prop :=
  ∀ n, P5937995934246660795.a n = A243997 (n + 1)

end A243997

/-! ## A243997.P12052057136934787832

`lcm(A007913(A038330(n)), A300236(n+1))`
-/

namespace A243997.P12052057136934787832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (A038330 n).toNat) (A300236 (n + 1))

end

end A243997.P12052057136934787832

namespace A243997

/-- `lcm(A007913(A038330(n)), A300236(n+1))` -/
def P12052057136934787832.Spec : Prop :=
  ∀ n, (P12052057136934787832.a n : ℤ) = A243997 (n + 1)

end A243997

/-! ## A243997.P5549203814997419592

`A347698(A086568(n+1))+A300236(n+1)`
-/

namespace A243997.P5549203814997419592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347698 (A086568 (n + 1)).toNat + A300236 (n + 1)

end

end A243997.P5549203814997419592

namespace A243997

/-- `A347698(A086568(n+1))+A300236(n+1)` -/
def P5549203814997419592.Spec : Prop :=
  ∀ n, P5549203814997419592.a n = A243997 (n + 1)

end A243997

